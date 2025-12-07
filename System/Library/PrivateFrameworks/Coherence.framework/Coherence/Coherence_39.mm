uint64_t sub_1AE1BC45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1BC6C0(v5, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  if (*(*v5 + 16))
  {
    sub_1ADEDC8DC(result, v14, v15);
    sub_1AE23C65C();
  }

  if (*(v5[1] + 16))
  {
    sub_1AE23C56C();
  }

  v16 = v5[2];
  v17 = v5[3];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_15;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 != v20)
  {
LABEL_14:
    sub_1AE23C5CC();
  }

LABEL_15:
  v21 = v5[4];
  if (*(v21 + 16))
  {
    v21 = sub_1AE23C56C();
  }

  if (*(v5[5] + 16))
  {
    sub_1ADEDC8DC(v21, v17, v15);
    sub_1AE23C65C();
  }

  if (*(v5[6] + 16))
  {
    sub_1AE23C56C();
  }

  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AE1BC6C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 72))
  {
    sub_1ADEDC930(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

double sub_1AE1BC740@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1AE241910;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void (*sub_1AE1BC78C(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BC8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0220(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BC914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADE73D18(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BC950(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BC9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADE73D18(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BCA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BCA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AE1CBE0C(v7, v9) & 1;
}

uint64_t sub_1AE1BCAFC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79B8);
  __swift_project_value_buffer(v0, qword_1EB5D79B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuids";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strings";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "datas";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BCD10(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a5;
  v11 = sub_1AE23C32C();
  v19 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v14)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v15 = a2;
    v16 = a2 >> 32;
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1AE23C5CC();
    if (v7)
    {
      return result;
    }

LABEL_10:
    if (!*(a4 + 16))
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_1AE23C5FC();
    if (v7)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v14 == 2)
  {
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    goto LABEL_8;
  }

  if (*(a4 + 16))
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!*(v20 + 16) || (result = sub_1AE23C5BC(), !v7))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v19 + 8))(v13, v11);
  }

  return result;
}

double sub_1AE1BCEE8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v2;
  return result;
}

void (*sub_1AE1BCF28(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BD004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0274(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BD074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEDC930(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BD0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEDC930(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BD114()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79D0);
  __swift_project_value_buffer(v0, qword_1EB5D79D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "components";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BD2DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1AE23C32C();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (sub_1AE1CB7C4(v11, v12, v13), result = sub_1AE23C65C(), !v6))
  {
    v17 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_12;
      }

      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
    }

    else
    {
      if (!v17)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_1AE23C5CC();
        if (v6)
        {
          return result;
        }

        goto LABEL_12;
      }

      v18 = a3;
      v19 = a3 >> 32;
    }

    if (v18 != v19)
    {
      goto LABEL_11;
    }

LABEL_12:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v21 + 8))(v15, v10);
  }

  return result;
}

void (*sub_1AE1BD4B0(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BD58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D02C8(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BD5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1ADEDC8DC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BD638(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BD6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADEDC8DC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BD6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BD770()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D79E8);
  __swift_project_value_buffer(v0, qword_1EB5D79E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BD938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    result = sub_1AE23C64C();
    if (v5)
    {
      return result;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1AE23C5EC();
    if (v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v9 + 8))(v11, v8);
}

void (*sub_1AE1BDAB8(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BDB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D031C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BDC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CB1F0(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BDC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CB1F0(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C56C(), !v4))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void (*sub_1AE1BDE00(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BDED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0370(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BDF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CB094(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BDF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CB094(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BDFE8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A18);
  __swift_project_value_buffer(v0, qword_1EB5D7A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuids";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "indexSets";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

void (*sub_1AE1BE204(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BE2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D03C4(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BE368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CAF38(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BE3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CAF38(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BE404()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A30);
  __swift_project_value_buffer(v0, qword_1EB5D7A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "digest";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BE618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1AE23C40C();
    }

    else if (result == 1)
    {
      sub_1AE23C4DC();
    }
  }

  return result;
}

uint64_t sub_1AE1BE6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE23C32C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v3 || (result = sub_1AE23C64C(), !v4))
  {
    v10 = v3[1];
    v11 = v3[2];
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_12;
      }

      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
    }

    else
    {
      if (!v12)
      {
        if ((v11 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v13 = v10;
      v14 = v10 >> 32;
    }

    if (v13 == v14)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_1AE23C5CC();
    if (v4)
    {
      return result;
    }

LABEL_12:
    v15 = v3[3];
    v16 = v3[4];
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_21;
      }

      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
    }

    else
    {
      if (!v17)
      {
        if ((v16 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = sub_1AE23C5CC();
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      v18 = v15;
      v19 = v15 >> 32;
    }

    if (v18 != v19)
    {
      goto LABEL_20;
    }

LABEL_21:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_1AE1BE890@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = -2.0;
  *(a1 + 16) = xmmword_1AE2547B0;
  *(a1 + 32) = 0xC000000000000000;
  return result;
}

void (*sub_1AE1BE8CC(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BE9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0418(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BEA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CADD8(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BEA5C(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BEAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CADD8(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BEB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1BEB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CF778(v5, v7) & 1;
}

uint64_t sub_1AE1BEBC8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A48);
  __swift_project_value_buffer(v0, qword_1EB5D7A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "crdt";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "partialCRDT";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BEE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1AE1CB668(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1BEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE1BEF2C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1AE1BEFC8(a1, a2, a3, a4);
    sub_1AE1BF060(a1, a2, a3, a4);
    return sub_1AE1C1938(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AE1BEF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1AE1CB1F0(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1BEFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_1AE1CB7C4(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1BF060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    sub_1AE1CB668(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

BOOL sub_1AE1BF0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  swift_beginAccess();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  if (v13)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    swift_beginAccess();
    v17 = *(a1 + 40);
    swift_beginAccess();
    v18 = *(a2 + 40);
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v20 = sub_1AE1CF8DC(v19, v18, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

      if ((v20 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v18)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v21 = *(a1 + 48);
    swift_beginAccess();
    v22 = *(a2 + 48);
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_22;
      }

      v24 = sub_1AE1CF8DC(v23, v22, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v22)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v25 = *(a1 + 56);
    swift_beginAccess();
    v26 = *(a2 + 56);
    if (!v25)
    {

      if (v26)
      {
        goto LABEL_23;
      }

      return 1;
    }

    if (v26)
    {

      v28 = sub_1AE1CF8DC(v27, v26, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

      return (v28 & 1) != 0;
    }

LABEL_22:

LABEL_23:

    return 0;
  }

  result = 0;
  if ((*(a2 + 32) & 1) == 0 && v12 == *(a2 + 16) && v11 == *(a2 + 24))
  {

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v15 = sub_1AE23CCBC();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  return result;
}

void (*sub_1AE1BF52C(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BF618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D046C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BF688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CAC7C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1BF6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CAC7C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BF748()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A60);
  __swift_project_value_buffer(v0, qword_1EB5D7A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "positive";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negative";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1BF958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        sub_1AE1CAF38(2, v5, v6);
LABEL_12:
        sub_1AE23C4FC();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1AE23C4DC();
      }

LABEL_4:
      result = sub_1AE23C38C();
    }

    sub_1AE1CAF38(3, v5, v6);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AE1BFA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v5 || (result = sub_1AE23C64C(), !v4))
  {
    result = sub_1AE1D0830(v5[1], v5[2], a1, a2, a3, 2);
    if (!v4)
    {
      sub_1AE1D0830(v5[3], v5[4], a1, a2, a3, 3);
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

void (*sub_1AE1BFBC4(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1BFCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D04C0(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1BFD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1AE1CAB1C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v6);
}

uint64_t sub_1AE1BFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE1CAB1C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1BFDA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CE254(v5, v7) & 1;
}

uint64_t sub_1AE1BFDEC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7A78);
  __swift_project_value_buffer(v0, qword_1EB5D7A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AE252420;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1AE23C67C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "version";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "insertions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "minVersion";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "removed";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C00AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v5 || (result = sub_1AE23C64C(), !v4))
  {
    result = sub_1AE1C02A8(v5, a1, a2, a3);
    if (!v4)
    {
      v14 = sub_1AE1C0320(v5, a1, a2, a3);
      if (*(v5[1] + 16))
      {
        sub_1AE1CA864(v14, v15, v16);
        sub_1AE23C65C();
      }

      v17 = sub_1AE1B8578(v5, a1, a2, a3);
      if (*(v5[2] + 16))
      {
        sub_1AE1CA864(v17, v18, v19);
        sub_1AE23C65C();
      }

      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_1AE1C02A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 24))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C0320(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 56) & 1) == 0)
  {
    sub_1AE1CB1F0(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C03B8(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C04B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0788(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C0520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA9C0(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C055C(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C05D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA9C0(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C06E8()
{
  result = MEMORY[0x1B26FB670](0x746E656D656C452ELL, 0xE800000000000000);
  qword_1EB5D7A90 = 0x65532E6F746F7250;
  *algn_1EB5D7A98 = 0xE900000000000074;
  return result;
}

uint64_t sub_1AE1C0754()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AA0);
  __swift_project_value_buffer(v0, qword_1EB5D7AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "addedBy";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "partialValue";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1D0D48(*v3, a1, a2, a3, sub_1AE1CB7C4, 1, &type metadata for Proto_Value);
  if (!v4)
  {
    sub_1AE1D0D48(v3[1], a1, a2, a3, sub_1AE1CB668, 2, &type metadata for Proto_CRDT);
    sub_1AE1D0830(v3[2], v3[3], a1, a2, a3, 3);
    sub_1AE1D0D48(v3[4], a1, a2, a3, sub_1AE1CB668, 4, &type metadata for Proto_CRDT);
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void (*sub_1AE1C0B94(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C0C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D07DC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C0CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA864(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C0D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA864(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C0D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CBA20(v5, v7) & 1;
}

uint64_t sub_1AE1C0DA4()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AB8);
  __swift_project_value_buffer(v0, qword_1EB5D7AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "keys";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "intKeys";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1AE23C32C();
  v19 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    result = sub_1AE23C58C();
    if (v6)
    {
      return result;
    }

    v7 = 0;
  }

  if (*(a3 + 16))
  {
    sub_1AE1CB668(result, v13, v14);
    v17 = v7;
    result = sub_1AE23C65C();
    if (v7)
    {
      return result;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1AE23C58C();
    if (v17)
    {
      return result;
    }

    goto LABEL_10;
  }

  v17 = v7;
  if (*(a4 + 16))
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v19 + 8))(v16, v11);
}

void (*sub_1AE1C1180(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D08B0(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C12CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA708(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C1308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA708(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C1390()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AD0);
  __swift_project_value_buffer(v0, qword_1EB5D7AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "version";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "crdt";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "keyPath";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C1620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = swift_beginAccess();
  a5(v7);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1C16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1AE1CB668(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1C1758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    result = sub_1AE23C64C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v11 = swift_beginAccess();
  if (*(a1 + 24))
  {
    sub_1AE1D0958(v11, v12, v13);
    v14 = v5;
    result = sub_1AE23C5AC();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v14 = v5;
  }

  result = sub_1AE1C1878(a1, a2, a3, a4);
  if (!v14)
  {
    sub_1AE1C1938(a1, a2, a3, a4);
    return sub_1AE1C19D0(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AE1C1878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_1AE1CAF38(result, v6, v7);

    sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    sub_1AE1CB668(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C19D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {
    sub_1ADEDC8DC(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C1AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  v14 = *(a2 + 24);
  v15 = v12 != 0;
  if (!v13)
  {
    v15 = v12;
  }

  if (*(a2 + 32) == 1)
  {
    if (v14)
    {
      if (v15 != 1)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }
  }

  else if (v15 != v14)
  {
    return 0;
  }

  swift_beginAccess();
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  swift_beginAccess();
  v18 = *(a2 + 40);
  if (v17)
  {
    if (v18)
    {
      v19 = *(a2 + 48);
      if (sub_1ADE522B8())
      {

        sub_1ADE42C78(v18, v19);
        sub_1ADE42C78(v17, v16);
        sub_1ADE4E544(v16, v19);
        if (v20)
        {
          sub_1AE23C31C();
          sub_1AE23C31C();
          sub_1ADE51EAC();
          LODWORD(v64) = sub_1AE23CCBC();

          sub_1ADE42CB8(v17, v16);
          v21 = *(v5 + 8);
          v21(v7, v4);
          v21(v10, v4);
          if ((v64 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_19:
          swift_beginAccess();
          v22 = *(a1 + 56);
          swift_beginAccess();
          v23 = *(a2 + 56);
          if (v22)
          {
            if (!v23)
            {
              goto LABEL_32;
            }

            v25 = sub_1AE1CF8DC(v24, v23, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

            if ((v25 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else if (v23)
          {
LABEL_32:

            return 0;
          }

          swift_beginAccess();
          v26 = *(a1 + 64);
          v63 = *(a1 + 72);
          v27 = *(a1 + 80);
          swift_beginAccess();
          v29 = *(a2 + 64);
          v28 = *(a2 + 72);
          v30 = *(a2 + 80);
          v64 = v26;
          if (v26)
          {
            v61 = v28;
            v60 = v30;
            v31 = v63;
            if (v29)
            {
              v32 = v29;
              v62 = v27;
              sub_1ADE56F74(v64, v63, v27);
              v33 = v29;
              v34 = v61;
              v35 = v60;
              sub_1ADE56F74(v33, v61, v60);
              sub_1ADE56F74(v64, v31, v62);
              v36 = v35;
              sub_1ADE56F74(v32, v34, v35);
              v59 = v32;
              sub_1ADE49D64(v64, v32);
              if ((v37 & 1) == 0 || !sub_1ADDD6F8C(v63, v62, v34, v35))
              {
                v53 = v59;
                sub_1ADE73D6C(v59, v34, v35);

                sub_1ADE73D6C(v53, v34, v35);
                v54 = v64;
                v55 = v63;
                v56 = v62;
                sub_1ADE73D6C(v64, v63, v62);
                v48 = v54;
                v47 = v55;
                v46 = v56;
                goto LABEL_38;
              }

              sub_1AE23C31C();
              sub_1AE23C31C();
              sub_1ADE51EAC();
              v38 = sub_1AE23CCBC();
              v39 = v59;
              sub_1ADE73D6C(v59, v34, v36);

              sub_1ADE73D6C(v39, v34, v36);
              v40 = v64;
              v41 = v63;
              v42 = v62;
              sub_1ADE73D6C(v64, v63, v62);
              v43 = *(v5 + 8);
              v43(v7, v4);
              v44 = v4;
              v45 = v40;
              v43(v10, v44);
              v46 = v42;
              v47 = v41;
              if ((v38 & 1) == 0)
              {
                v48 = v40;
LABEL_38:
                sub_1ADE73D6C(v48, v47, v46);
                return 0;
              }

LABEL_34:
              sub_1ADE73D6C(v45, v47, v46);
              return 1;
            }

            v45 = v64;
            v57 = v63;
            sub_1ADE56F74(v64, v63, v27);
            v28 = v61;
            v51 = v60;
            sub_1ADE56F74(0, v61, v60);

            v46 = v27;
            v47 = v57;
          }

          else
          {
            v49 = v63;
            v50 = v30;
            sub_1ADE56F74(0, v63, v27);
            v51 = v50;
            sub_1ADE56F74(v29, v28, v50);

            v46 = v27;
            v47 = v49;
            v45 = v64;
            if (!v29)
            {
              goto LABEL_34;
            }
          }

          sub_1ADE73D6C(v45, v47, v46);
          v48 = v29;
          v47 = v28;
          v46 = v51;
          goto LABEL_38;
        }
      }

      else
      {
        sub_1ADE42C78(v18, v19);
        sub_1ADE42C78(v17, v16);
      }

      sub_1ADE42CB8(v17, v16);
    }
  }

  else if (!v18)
  {

    goto LABEL_19;
  }

  return 0;
}

void (*sub_1AE1C21B0(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0904(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA5AC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA5AC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C23A0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7AE8);
  __swift_project_value_buffer(v0, qword_1EB5D7AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "shared";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "weak";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C25A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    sub_1AE1CB7C4(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C2664(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C2750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D09AC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C27C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA450(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C27FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA450(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C2854()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7B18);
  __swift_project_value_buffer(v0, qword_1EB5D7B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wrapped";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C2A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_beginAccess();
  v14 = a5(v13);
  a7(a2 + 24, a6, v14, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1AE1C2AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    return sub_1AE1C2B60(a1, a2, a3, a4);
  }

  result = sub_1AE23C5EC();
  if (!v4)
  {
    return sub_1AE1C2B60(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AE1C2B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    sub_1AE1CB7C4(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C2C14(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C2D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0A00(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C2D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA2F4(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C2DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA2F4(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C2E04()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7B30);
  __swift_project_value_buffer(v0, qword_1EB5D7B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__n128), uint64_t a7)
{
  v18 = a7;
  v17 = a6;
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C58C(), !v7))
  {
    if (!*(a3 + 16) || (v17(v12), result = sub_1AE23C65C(), !v7))
    {
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void (*sub_1AE1C3168(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0A54(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C32CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA198(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C3308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA198(a1, a2, a3);

  return sub_1AE23C54C();
}

void (*sub_1AE1C33CC(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C34F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0AA8(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C3564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1CA038(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C35A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1CA038(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C3604()
{
  result = MEMORY[0x1B26FB670](0x676E696C6269532ELL, 0xE800000000000000);
  qword_1EB5D7B60 = 0xD000000000000010;
  *algn_1EB5D7B68 = 0x80000001AE263A70;
  return result;
}

uint64_t sub_1AE1C3670()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7B70);
  __swift_project_value_buffer(v0, qword_1EB5D7B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C3838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE1CAF38(1, v5, v6);
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1C38F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1AE23C32C();
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v28;
  result = sub_1AE1C3AA0(a2, a3, a4, a5, a1, a6, a7);
  if (!v17)
  {
    v19 = a2;
    v20 = v27;
    v21 = a3 >> 62;
    v22 = a3;
    if ((a3 >> 62) > 1)
    {
      v23 = v16;
      if (v21 != 2)
      {
        goto LABEL_11;
      }

      v24 = *(v19 + 16);
      v25 = *(v19 + 24);
    }

    else
    {
      v23 = v16;
      if (!v21)
      {
        if ((v22 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v24 = v19;
      v25 = v19 >> 32;
    }

    if (v24 != v25)
    {
LABEL_10:
      sub_1AE23C5CC();
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v20 + 8))(v23, v14);
  }

  return result;
}

uint64_t sub_1AE1C3AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C3B38(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0AFC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C3C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C9ED8(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C3CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C9ED8(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C3D7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AE2418F0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1AE23C67C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C3EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1AE23C4EC();
    }
  }

  return result;
}

uint64_t sub_1AE1C3F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double), uint64_t a6)
{
  v15[1] = a6;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (a5(v11), result = sub_1AE23C65C(), !v6))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void (*sub_1AE1C40F8(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C4220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0B50(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C4290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C9D78(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C42CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C9D78(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C4330(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, double))
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  if (a5(*a1, *a2, v13))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v16 = sub_1AE23CCBC();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v17(v15, v8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1AE1C4484()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BA0);
  __swift_project_value_buffer(v0, qword_1EB5D7BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE242560;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "set";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequence";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timestamps";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C46F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1C4744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AE1C47CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x70 && *(a1 + 8))
  {
    return (*a1 + 112);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6F)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1C4828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AE1C48D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1AE1C491C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE1C4970(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AE1C49CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1C4A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1C4A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1AE1C4AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1AE1C4B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1AE1C4BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B92B8;
  if (!qword_1EB5B92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92B8);
  }

  return result;
}

unint64_t sub_1AE1C4C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B92C0;
  if (!qword_1EB5B92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92C0);
  }

  return result;
}

unint64_t sub_1AE1C4CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B92B0;
  if (!qword_1EB5B92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B92B0);
  }

  return result;
}

unint64_t sub_1AE1C4D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B91E8;
  if (!qword_1EB5B91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91E8);
  }

  return result;
}

unint64_t sub_1AE1C4DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B91F0;
  if (!qword_1EB5B91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91F0);
  }

  return result;
}

unint64_t sub_1AE1C4E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B91E0;
  if (!qword_1EB5B91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91E0);
  }

  return result;
}

uint64_t sub_1AE1C4E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *v3;
    type metadata accessor for Proto_OrderedSet._StorageClass();
    swift_allocObject();
    v11 = sub_1AE1D0514(v10);

    *v4 = v11;
    v9 = v11;
  }

  return sub_1ADDE6740(v9, a1, a2, a3);
}

uint64_t sub_1AE1C4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = swift_beginAccess();
  a5(v7);
  sub_1AE23C4FC();
  return swift_endAccess();
}

uint64_t sub_1AE1C4FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1AE1D0BF8(v4, v5, v6);
  sub_1AE23C3CC();
  return swift_endAccess();
}

uint64_t sub_1AE1C5038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, double))
{
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a5(a2, a1, a3, a4, v13);
  if (!v5)
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_1AE1C516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE1C5298(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1AE1C534C(a1, a2, a3, a4);
    v10 = swift_beginAccess();
    if (*(*(a1 + 200) + 16))
    {
      sub_1AE1CB1F0(v10, v11, v12);

      sub_1AE23C65C();
    }

    result = swift_beginAccess();
    if (*(a1 + 208))
    {
      sub_1AE1D0BF8(result, v13, v14);
      return sub_1AE23C5AC();
    }
  }

  return result;
}

uint64_t sub_1AE1C5298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    sub_1AE1CA9C0(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 104))
  {
    sub_1AE1C9AC0(result, v6, v7);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C5408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  v101 = *(a1 + 48);
  v102 = v4;
  v103 = *(a1 + 80);
  v5 = *(a1 + 32);
  v99 = *(a1 + 16);
  v100 = v5;
  swift_beginAccess();
  v6 = *(a2 + 32);
  v7 = *(a2 + 64);
  v105 = *(a2 + 48);
  v106 = v7;
  v8 = *(a2 + 64);
  v107 = *(a2 + 80);
  v9 = *(a2 + 32);
  v104[0] = *(a2 + 16);
  v104[1] = v9;
  v10 = v99;
  v77 = v100;
  v78 = v101;
  v79 = v102;
  v80 = v103;
  v11 = v104[0];
  v12 = *(a2 + 80);
  v50 = v8;
  v51 = v12;
  v48 = v6;
  v49 = v105;
  if (*(&v99 + 1))
  {
    if (*(&v104[0] + 1))
    {
      v90 = v104[0];
      v13 = *(a2 + 48);
      v91 = *(a2 + 32);
      v92 = v13;
      v14 = *(a2 + 80);
      v93 = *(a2 + 64);
      v94 = v14;
      v98[4] = v14;
      v98[3] = v93;
      v98[2] = v13;
      v98[1] = v91;
      v98[0] = v104[0];
      v97[4] = v103;
      v97[3] = v102;
      v97[2] = v101;
      v97[1] = v100;
      v97[0] = v99;
      sub_1ADDCEE40(&v99, v84, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEE40(v104, v84, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEE40(&v99, v84, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEE40(v104, v84, &qword_1EB5BCC30, &qword_1AE2580D0);

      v15 = sub_1AE1CC624(v97, v98);
      sub_1ADDCEDE0(v104, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEDE0(&v99, &qword_1EB5BCC30, &qword_1AE2580D0);
      sub_1ADDCEDE0(&v90, &qword_1EB5BCC30, &qword_1AE2580D0);
      v55 = v10;
      v56 = v77;
      v57 = v78;
      v58 = v79;
      v59 = v80;
      sub_1ADDCEDE0(&v55, &qword_1EB5BCC30, &qword_1AE2580D0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

LABEL_6:
    sub_1ADDCEE40(&v99, &v55, &qword_1EB5BCC30, &qword_1AE2580D0);
    sub_1ADDCEE40(v104, &v55, &qword_1EB5BCC30, &qword_1AE2580D0);
    v55 = v10;
    v56 = v77;
    v57 = v78;
    v58 = v79;
    v59 = v80;
    v60 = v11;
    *v61 = v48;
    *&v61[16] = v49;
    *&v61[32] = v50;
    *&v61[48] = v51;
    v16 = &unk_1EB5BDF78;
    v17 = &unk_1AE2580D8;
    goto LABEL_16;
  }

  if (*(&v104[0] + 1))
  {
    goto LABEL_6;
  }

  v55 = v99;
  v56 = v100;
  v57 = v101;
  v58 = v102;
  v59 = v103;
  sub_1ADDCEE40(&v99, &v90, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1ADDCEE40(v104, &v90, &qword_1EB5BCC30, &qword_1AE2580D0);

  sub_1ADDCEDE0(&v55, &qword_1EB5BCC30, &qword_1AE2580D0);
LABEL_8:
  swift_beginAccess();
  v18 = *(a1 + 176);
  v81 = *(a1 + 160);
  v82 = v18;
  v83 = *(a1 + 192);
  v19 = *(a1 + 112);
  v77 = *(a1 + 96);
  v78 = v19;
  v20 = *(a1 + 144);
  v79 = *(a1 + 128);
  v80 = v20;
  swift_beginAccess();
  v21 = *(a2 + 144);
  v22 = *(a2 + 176);
  v87 = *(a2 + 160);
  v88 = v22;
  v23 = *(a2 + 112);
  v84[0] = *(a2 + 96);
  v84[1] = v23;
  v24 = *(a2 + 112);
  v25 = *(a2 + 144);
  v85 = *(a2 + 128);
  v86 = v25;
  v73 = v80;
  v74 = v81;
  v75 = v82;
  v71 = v78;
  v72 = v79;
  v89 = *(a2 + 192);
  v26 = v77;
  v76 = v83;
  v27 = v84[0];
  v65 = v24;
  v66 = v85;
  v28 = *(a2 + 176);
  v70 = *(a2 + 192);
  v68 = v87;
  v69 = v28;
  v67 = v21;
  if (*(&v77 + 1))
  {
    if (*(&v84[0] + 1))
    {
      v41 = v84[0];
      v29 = *(a2 + 144);
      v30 = *(a2 + 176);
      v45 = *(a2 + 160);
      v46 = v30;
      v47 = *(a2 + 192);
      v31 = *(a2 + 128);
      v42 = *(a2 + 112);
      v43 = v31;
      v44 = v29;
      v57 = v31;
      v58 = v29;
      v59 = v45;
      v60 = v30;
      *v61 = v47;
      v55 = v84[0];
      v56 = v42;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v96 = v83;
      v91 = v78;
      v92 = v79;
      v90 = v77;
      sub_1ADDCEE40(&v77, v40, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(v84, v40, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(&v77, v40, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(v84, v40, &qword_1EB5BCC28, &unk_1AE251820);
      v32 = sub_1AE1CD228(&v90, &v55);
      sub_1ADDCEDE0(v84, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEDE0(&v77, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEDE0(&v41, &qword_1EB5BCC28, &unk_1AE251820);
      v48 = v26;
      v51 = v73;
      v52 = v74;
      v53 = v75;
      v54 = v76;
      v49 = v71;
      v50 = v72;
      sub_1ADDCEDE0(&v48, &qword_1EB5BCC28, &unk_1AE251820);
      if ((v32 & 1) == 0)
      {
LABEL_25:

        return 0;
      }

LABEL_18:
      swift_beginAccess();
      swift_beginAccess();

      v33 = sub_1ADE522BC();

      if (v33)
      {
        swift_beginAccess();
        v34 = *(a1 + 208);
        v35 = *(a1 + 216);

        swift_beginAccess();
        v36 = *(a2 + 208);
        v37 = *(a2 + 216);

        v38 = v34 != 0;
        if (!v35)
        {
          v38 = v34;
        }

        if (v37 == 1)
        {
          if (v36)
          {
            if (v38 != 1)
            {
              return 0;
            }
          }

          else if (v38)
          {
            return 0;
          }
        }

        else if (v38 != v36)
        {
          return 0;
        }

        return 1;
      }

      goto LABEL_25;
    }

    sub_1ADDCEE40(&v77, &v55, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(v84, &v55, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(&v77, &v55, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(v84, &v55, &qword_1EB5BCC28, &unk_1AE251820);

    sub_1ADDCEDE0(v84, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEDE0(&v77, &qword_1EB5BCC28, &unk_1AE251820);
  }

  else
  {
    if (!*(&v84[0] + 1))
    {
      v55 = v77;
      v58 = v80;
      v59 = v81;
      v60 = v82;
      *v61 = v83;
      v56 = v78;
      v57 = v79;
      sub_1ADDCEE40(&v77, &v90, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEE40(v84, &v90, &qword_1EB5BCC28, &unk_1AE251820);
      sub_1ADDCEDE0(&v55, &qword_1EB5BCC28, &unk_1AE251820);
      goto LABEL_18;
    }

    sub_1ADDCEE40(&v77, &v55, &qword_1EB5BCC28, &unk_1AE251820);
    sub_1ADDCEE40(v84, &v55, &qword_1EB5BCC28, &unk_1AE251820);
  }

  v55 = v26;
  v58 = v73;
  v59 = v74;
  v60 = v75;
  v56 = v71;
  v57 = v72;
  *v61 = v76;
  *&v61[8] = v27;
  *&v61[40] = v66;
  *&v61[24] = v65;
  v64 = v70;
  v63 = v69;
  v62 = v68;
  *&v61[56] = v67;
  v16 = &unk_1EB5BDF80;
  v17 = &unk_1AE2580E8;
LABEL_16:
  sub_1ADDCEDE0(&v55, v16, v17);
  return 0;
}

void (*sub_1AE1C5BD0(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0BA4(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C5D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C9C1C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C5D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C9C1C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C5DEC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BB8);
  __swift_project_value_buffer(v0, qword_1EB5D7BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "orderedSet";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "orderedDictionary";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C5FD8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BD0);
  __swift_project_value_buffer(v0, qword_1EB5D7BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "string";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elements";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subsequence";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "version";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "addedByVersion";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "attributeRuns";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "fromVersion";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "fromAddedByVersion";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C6328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v6;
  v16 = v6[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    result = sub_1AE23C62C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v6[2] + 16))
  {
    sub_1AE1CB7C4(result, v16, v12);
    v18 = v5;
    result = sub_1AE23C65C();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v18 = v5;
  }

  if (!*(v6[3] + 16) || (sub_1AE1C96AC(result, v16, v12), result = sub_1AE23C65C(), !v18))
  {
    result = sub_1AE1C6588(v6, a1, a2, a3);
    if (!v18)
    {
      v19 = sub_1AE1C6600(v6, a1, a2, a3);
      if (*(v6[4] + 16))
      {
        sub_1AE1C9964(v19, v20, v21);
        sub_1AE23C65C();
      }

      sub_1AE1C6678(v6, a1, a2, a3);
      sub_1AE1C66F0(v6, a1, a2, a3);
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_1AE1C6588(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C6600(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C6678(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 72))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1C66F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 88))
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C678C(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0C4C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C68FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C9AC0(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C6938(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C69B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C9AC0(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C6A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C6A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AE1CD228(v11, v13) & 1;
}

uint64_t sub_1AE1C6AEC()
{
  strcpy(v1, "Proto.Sequence");
  HIBYTE(v1[1]) = -18;
  result = MEMORY[0x1B26FB670](0x756269727474412ELL, 0xED00006E75526574);
  qword_1EB5D7BE8 = v1[0];
  qword_1EB5D7BF0 = v1[1];
  return result;
}

uint64_t sub_1AE1C6B6C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7BF8);
  __swift_project_value_buffer(v0, qword_1EB5D7BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "length";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributes";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "timestamp";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C6D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v5;
  if (!result || (result = sub_1AE23C63C(), !v4))
  {
    if (!*(*(v5 + 1) + 16) || (sub_1AE1C9808(result, v11, v12), result = sub_1AE23C65C(), !v4))
    {
      result = sub_1AE1D0F70(*(v5 + 2), *(v5 + 3), *(v5 + 32), a1, a2, a3, 3);
      if (!v4)
      {
        sub_1AE23C31C();
        sub_1AE23C30C();
        return (*(v10 + 8))(v14, v9);
      }
    }
  }

  return result;
}

void (*sub_1AE1C6F3C(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C7008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0CA0(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C7078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C9964(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C70B4(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C7130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C9964(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C717C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C71F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AE1CD7AC(v5, v7) & 1;
}

uint64_t sub_1AE1C7240(__n128 a1)
{
  if (qword_1EB5B9BB0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB5D7BE8;
  v3 = qword_1EB5D7BF0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B26FB670](0x756269727474412ELL, 0xEA00000000006574);

  qword_1EB5D7C10 = v2;
  *algn_1EB5D7C18 = v3;
  return result;
}

uint64_t sub_1AE1C72E8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C20);
  __swift_project_value_buffer(v0, qword_1EB5D7C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v11 = sub_1AE23C32C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9 || (result = sub_1AE23C63C(), !v5))
  {
    result = sub_1AE1D0D48(a3, a1, a4, a5, sub_1AE1CB7C4, 2, &type metadata for Proto_Value);
    if (!v5)
    {
      sub_1AE23C31C();
      sub_1AE23C30C();
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

void (*sub_1AE1C764C(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C7728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0CF4(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C7798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C9808(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C77D4(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C7840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C9808(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C7910()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C38);
  __swift_project_value_buffer(v0, qword_1EB5D7C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AE252420;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "sequenceStartID";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "length";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "addedBy";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "child";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "removedAddedBy";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "contentOptions";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C7BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1C7E0C(v5, a1, a2, a3);
  if (!v4)
  {
    v16 = *v5;
    if (v16)
    {
      v16 = sub_1AE23C63C();
    }

    if (*(*(v5 + 1) + 16))
    {
      sub_1AE1CB1F0(v16, v14, v15);
      sub_1AE23C65C();
    }

    v17 = *(v5 + 2);
    if (*(v17 + 16))
    {
      v17 = sub_1AE23C57C();
    }

    if (*(*(v5 + 3) + 16))
    {
      sub_1AE1CB1F0(v17, v14, v15);
      v17 = sub_1AE23C65C();
    }

    if (*(v5 + 4))
    {
      v18 = *(v5 + 40);
      v19 = *(v5 + 4);
      v20 = v18;
      sub_1AE1D0E20(v17, v14, v15);
      sub_1AE23C5AC();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1AE1C7E0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 64) & 1) == 0)
  {
    sub_1AE1CB1F0(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1AE1C7EA0(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C7F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0DCC(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C96AC(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C8044(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C80B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C96AC(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C8104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE1C8174(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AE1CC3D0(v7, v9) & 1;
}

uint64_t sub_1AE1C81D0()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C50);
  __swift_project_value_buffer(v0, qword_1EB5D7C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Default";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HasContent";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NoContent";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8404()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C68);
  __swift_project_value_buffer(v0, qword_1EB5D7C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "replicaUUID";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "affinity";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1AE1D0EC8(3, v5, v6);
          sub_1AE23C3CC();
          break;
        case 2:
          sub_1AE1C93EC(2, v5, v6);
          sub_1AE23C4EC();
          break;
        case 1:
          sub_1AE23C3DC();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1AE1C8720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v11 = sub_1AE23C32C();
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (result = sub_1AE23C5BC(), !v7))
  {
    if (!*(a3 + 16) || (sub_1AE1C93EC(result, v13, v14), result = sub_1AE23C65C(), !v7))
    {
      if (!a4 || (v19 = a4, v20 = v21 & 1, sub_1AE1D0EC8(result, v13, v14), result = sub_1AE23C5AC(), !v7))
      {
        sub_1AE23C31C();
        sub_1AE23C30C();
        return (*(v18 + 8))(v16, v11);
      }
    }
  }

  return result;
}

void (*sub_1AE1C8908(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C8A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0E74(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C8A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1C954C(a1, a2, a3);

  return MEMORY[0x1EEE15928](a1, v4);
}

uint64_t sub_1AE1C8AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE1C954C(a1, a2, a3);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C8B1C()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7C80);
  __swift_project_value_buffer(v0, qword_1EB5D7C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Backward";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Forward";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8D08()
{
  result = MEMORY[0x1B26FB670](0x65676E61522ELL, 0xE600000000000000);
  qword_1EB5D7C98 = 0x65532E6F746F7250;
  qword_1EB5D7CA0 = 0xEF6E6F697463656CLL;
  return result;
}

uint64_t sub_1AE1C8D78()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7CA8);
  __swift_project_value_buffer(v0, qword_1EB5D7CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fromChar";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "toChar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1AE1C8F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v7 = v3;
        sub_1AE1CB1F0(2, v5, v6);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1AE23C38C();
    }

    v7 = v3;
    sub_1AE1CB1F0(1, v5, v6);
LABEL_5:
    v3 = v7;
    sub_1AE23C4FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1AE1C8FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AE1D0F70(*v3, *(v3 + 8), *(v3 + 16), a1, a2, a3, 1);
  if (!v4)
  {
    sub_1AE1D0F70(*(v3 + 24), *(v3 + 32), *(v3 + 40), a1, a2, a3, 2);
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void (*sub_1AE1C9168(uint64_t *a1))(void *a1)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1AE1C924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE1D0F1C(a1, a2, a3);

  return MEMORY[0x1EEE15708](a1, a2, v5);
}

uint64_t sub_1AE1C92BC(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AE1C93EC(a1, a3, a4);

  return MEMORY[0x1EEE15928](a1, v5);
}

uint64_t sub_1AE1C92F8(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4)
{
  sub_1AE1C93EC(a1, a2, a4);

  return sub_1AE23C54C();
}

uint64_t sub_1AE1C9344(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1AE1CCFBC(&v5, &v7) & 1;
}

unint64_t sub_1AE1C9394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD70;
  if (!qword_1EB5BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD70);
  }

  return result;
}

unint64_t sub_1AE1C93EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD78;
  if (!qword_1EB5BDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD78);
  }

  return result;
}

unint64_t sub_1AE1C9444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD80;
  if (!qword_1EB5BDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD80);
  }

  return result;
}

unint64_t sub_1AE1C949C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD88;
  if (!qword_1EB5BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD88);
  }

  return result;
}

unint64_t sub_1AE1C94F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD90;
  if (!qword_1EB5BDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD90);
  }

  return result;
}

unint64_t sub_1AE1C954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD98;
  if (!qword_1EB5BDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD98);
  }

  return result;
}

unint64_t sub_1AE1C95A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDA0;
  if (!qword_1EB5BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDA0);
  }

  return result;
}

unint64_t sub_1AE1C95FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDA8;
  if (!qword_1EB5BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDA8);
  }

  return result;
}

unint64_t sub_1AE1C9654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDB0;
  if (!qword_1EB5BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDB0);
  }

  return result;
}

unint64_t sub_1AE1C96AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED967EF8;
  if (!qword_1ED967EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967EF8);
  }

  return result;
}

unint64_t sub_1AE1C9704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDB8;
  if (!qword_1EB5BDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDB8);
  }

  return result;
}

unint64_t sub_1AE1C9758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED967EF0;
  if (!qword_1ED967EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967EF0);
  }

  return result;
}

unint64_t sub_1AE1C97B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDC0;
  if (!qword_1EB5BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDC0);
  }

  return result;
}

unint64_t sub_1AE1C9808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9468[0];
  if (!qword_1EB5B9468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B9468);
  }

  return result;
}

unint64_t sub_1AE1C9860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDC8;
  if (!qword_1EB5BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDC8);
  }

  return result;
}

unint64_t sub_1AE1C98B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9460;
  if (!qword_1EB5B9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9460);
  }

  return result;
}

unint64_t sub_1AE1C990C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDD0;
  if (!qword_1EB5BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDD0);
  }

  return result;
}

unint64_t sub_1AE1C9964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9458;
  if (!qword_1EB5B9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9458);
  }

  return result;
}

unint64_t sub_1AE1C99BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDD8;
  if (!qword_1EB5BDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDD8);
  }

  return result;
}

unint64_t sub_1AE1C9A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9450;
  if (!qword_1EB5B9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9450);
  }

  return result;
}

unint64_t sub_1AE1C9A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDE0;
  if (!qword_1EB5BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDE0);
  }

  return result;
}

unint64_t sub_1AE1C9AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED968370;
  if (!qword_1ED968370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED968370);
  }

  return result;
}

unint64_t sub_1AE1C9B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDE8;
  if (!qword_1EB5BDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDE8);
  }

  return result;
}

unint64_t sub_1AE1C9B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED968368;
  if (!qword_1ED968368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED968368);
  }

  return result;
}

unint64_t sub_1AE1C9BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDF0;
  if (!qword_1EB5BDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDF0);
  }

  return result;
}

unint64_t sub_1AE1C9C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED967F90;
  if (!qword_1ED967F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967F90);
  }

  return result;
}

unint64_t sub_1AE1C9C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDDF8;
  if (!qword_1EB5BDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDDF8);
  }

  return result;
}

unint64_t sub_1AE1C9CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED967F88;
  if (!qword_1ED967F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967F88);
  }

  return result;
}

unint64_t sub_1AE1C9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE00;
  if (!qword_1EB5BDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE00);
  }

  return result;
}

unint64_t sub_1AE1C9D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8F00;
  if (!qword_1EB5B8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8F00);
  }

  return result;
}

unint64_t sub_1AE1C9DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE08;
  if (!qword_1EB5BDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE08);
  }

  return result;
}

unint64_t sub_1AE1C9E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8EF8;
  if (!qword_1EB5B8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8EF8);
  }

  return result;
}

unint64_t sub_1AE1C9E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE10;
  if (!qword_1EB5BDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE10);
  }

  return result;
}

unint64_t sub_1AE1C9ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9218[0];
  if (!qword_1EB5B9218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B9218);
  }

  return result;
}

unint64_t sub_1AE1C9F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE18;
  if (!qword_1EB5BDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE18);
  }

  return result;
}

unint64_t sub_1AE1C9F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9210;
  if (!qword_1EB5B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9210);
  }

  return result;
}

unint64_t sub_1AE1C9FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE20;
  if (!qword_1EB5BDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE20);
  }

  return result;
}

unint64_t sub_1AE1CA038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9208;
  if (!qword_1EB5B9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9208);
  }

  return result;
}

unint64_t sub_1AE1CA090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE28;
  if (!qword_1EB5BDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE28);
  }

  return result;
}

unint64_t sub_1AE1CA0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9200;
  if (!qword_1EB5B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9200);
  }

  return result;
}

unint64_t sub_1AE1CA140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE30;
  if (!qword_1EB5BDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE30);
  }

  return result;
}

unint64_t sub_1AE1CA198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969080;
  if (!qword_1ED969080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969080);
  }

  return result;
}

unint64_t sub_1AE1CA1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE38;
  if (!qword_1EB5BDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE38);
  }

  return result;
}

unint64_t sub_1AE1CA244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969078;
  if (!qword_1ED969078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969078);
  }

  return result;
}

unint64_t sub_1AE1CA29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE40;
  if (!qword_1EB5BDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE40);
  }

  return result;
}

unint64_t sub_1AE1CA2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B96E8;
  if (!qword_1EB5B96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B96E8);
  }

  return result;
}

unint64_t sub_1AE1CA34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE48;
  if (!qword_1EB5BDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE48);
  }

  return result;
}

unint64_t sub_1AE1CA3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B96E0;
  if (!qword_1EB5B96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B96E0);
  }

  return result;
}

unint64_t sub_1AE1CA3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE50;
  if (!qword_1EB5BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE50);
  }

  return result;
}

unint64_t sub_1AE1CA450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED966FA8[0];
  if (!qword_1ED966FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED966FA8);
  }

  return result;
}

unint64_t sub_1AE1CA4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE58;
  if (!qword_1EB5BDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE58);
  }

  return result;
}

unint64_t sub_1AE1CA4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED966FA0;
  if (!qword_1ED966FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED966FA0);
  }

  return result;
}

unint64_t sub_1AE1CA554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE60;
  if (!qword_1EB5BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE60);
  }

  return result;
}

unint64_t sub_1AE1CA5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969298;
  if (!qword_1ED969298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969298);
  }

  return result;
}

unint64_t sub_1AE1CA604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE68;
  if (!qword_1EB5BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE68);
  }

  return result;
}

unint64_t sub_1AE1CA658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969290;
  if (!qword_1ED969290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969290);
  }

  return result;
}

unint64_t sub_1AE1CA6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE70;
  if (!qword_1EB5BDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE70);
  }

  return result;
}

unint64_t sub_1AE1CA708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A608;
  if (!qword_1ED96A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A608);
  }

  return result;
}

unint64_t sub_1AE1CA760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE78;
  if (!qword_1EB5BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE78);
  }

  return result;
}

unint64_t sub_1AE1CA7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A600;
  if (!qword_1ED96A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A600);
  }

  return result;
}

unint64_t sub_1AE1CA80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE80;
  if (!qword_1EB5BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE80);
  }

  return result;
}

unint64_t sub_1AE1CA864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969680[0];
  if (!qword_1ED969680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED969680);
  }

  return result;
}

unint64_t sub_1AE1CA8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE88;
  if (!qword_1EB5BDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE88);
  }

  return result;
}

unint64_t sub_1AE1CA910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969678;
  if (!qword_1ED969678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969678);
  }

  return result;
}

unint64_t sub_1AE1CA968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE90;
  if (!qword_1EB5BDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE90);
  }

  return result;
}

unint64_t sub_1AE1CA9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A300;
  if (!qword_1ED96A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A300);
  }

  return result;
}

unint64_t sub_1AE1CAA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDE98;
  if (!qword_1EB5BDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDE98);
  }

  return result;
}

unint64_t sub_1AE1CAA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A2F8;
  if (!qword_1ED96A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A2F8);
  }

  return result;
}

unint64_t sub_1AE1CAAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEA0;
  if (!qword_1EB5BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEA0);
  }

  return result;
}

unint64_t sub_1AE1CAB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEA8;
  if (!qword_1EB5BDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEA8);
  }

  return result;
}

unint64_t sub_1AE1CAB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEB0;
  if (!qword_1EB5BDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEB0);
  }

  return result;
}

unint64_t sub_1AE1CABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEB8;
  if (!qword_1EB5BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEB8);
  }

  return result;
}

unint64_t sub_1AE1CAC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEC0;
  if (!qword_1EB5BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEC0);
  }

  return result;
}

unint64_t sub_1AE1CAC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969B58;
  if (!qword_1ED969B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969B58);
  }

  return result;
}

unint64_t sub_1AE1CACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEC8;
  if (!qword_1EB5BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEC8);
  }

  return result;
}

unint64_t sub_1AE1CAD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED969B50;
  if (!qword_1ED969B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED969B50);
  }

  return result;
}

unint64_t sub_1AE1CAD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDED0;
  if (!qword_1EB5BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDED0);
  }

  return result;
}

unint64_t sub_1AE1CADD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9518;
  if (!qword_1EB5B9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9518);
  }

  return result;
}

unint64_t sub_1AE1CAE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDED8;
  if (!qword_1EB5BDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDED8);
  }

  return result;
}

unint64_t sub_1AE1CAE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9510;
  if (!qword_1EB5B9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9510);
  }

  return result;
}

unint64_t sub_1AE1CAEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEE0;
  if (!qword_1EB5BDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEE0);
  }

  return result;
}

unint64_t sub_1AE1CAF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A578;
  if (!qword_1ED96A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A578);
  }

  return result;
}

unint64_t sub_1AE1CAF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEE8;
  if (!qword_1EB5BDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEE8);
  }

  return result;
}

unint64_t sub_1AE1CAFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A570;
  if (!qword_1ED96A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A570);
  }

  return result;
}

unint64_t sub_1AE1CB03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEF0;
  if (!qword_1EB5BDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEF0);
  }

  return result;
}

unint64_t sub_1AE1CB094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A310[0];
  if (!qword_1ED96A310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED96A310);
  }

  return result;
}

unint64_t sub_1AE1CB0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDEF8;
  if (!qword_1EB5BDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDEF8);
  }

  return result;
}

unint64_t sub_1AE1CB140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A308;
  if (!qword_1ED96A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A308);
  }

  return result;
}

unint64_t sub_1AE1CB198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF00;
  if (!qword_1EB5BDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF00);
  }

  return result;
}

unint64_t sub_1AE1CB1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A7D0;
  if (!qword_1ED96A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A7D0);
  }

  return result;
}

unint64_t sub_1AE1CB248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF08;
  if (!qword_1EB5BDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF08);
  }

  return result;
}

unint64_t sub_1AE1CB29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A7C8;
  if (!qword_1ED96A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A7C8);
  }

  return result;
}

unint64_t sub_1AE1CB2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF10;
  if (!qword_1EB5BDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF10);
  }

  return result;
}

unint64_t sub_1AE1CB350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF18;
  if (!qword_1EB5BDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF18);
  }

  return result;
}

unint64_t sub_1AE1CB3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9694A0;
  if (!qword_1ED9694A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9694A0);
  }

  return result;
}

unint64_t sub_1AE1CB3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF20;
  if (!qword_1EB5BDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF20);
  }

  return result;
}

unint64_t sub_1AE1CB458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF28;
  if (!qword_1EB5BDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF28);
  }

  return result;
}

unint64_t sub_1AE1CB4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A800;
  if (!qword_1ED96A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A800);
  }

  return result;
}

unint64_t sub_1AE1CB504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF30;
  if (!qword_1EB5BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF30);
  }

  return result;
}

unint64_t sub_1AE1CB560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF38;
  if (!qword_1EB5BDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF38);
  }

  return result;
}

unint64_t sub_1AE1CB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8F08;
  if (!qword_1EB5B8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8F08);
  }

  return result;
}

unint64_t sub_1AE1CB610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF40;
  if (!qword_1EB5BDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF40);
  }

  return result;
}

unint64_t sub_1AE1CB668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96AA10;
  if (!qword_1ED96AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA10);
  }

  return result;
}

unint64_t sub_1AE1CB6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF48;
  if (!qword_1EB5BDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF48);
  }

  return result;
}

unint64_t sub_1AE1CB714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96AA08;
  if (!qword_1ED96AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA08);
  }

  return result;
}

unint64_t sub_1AE1CB76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF50;
  if (!qword_1EB5BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF50);
  }

  return result;
}

unint64_t sub_1AE1CB7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A268;
  if (!qword_1ED96A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A268);
  }

  return result;
}

unint64_t sub_1AE1CB81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF58;
  if (!qword_1EB5BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF58);
  }

  return result;
}

unint64_t sub_1AE1CB870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A260;
  if (!qword_1ED96A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A260);
  }

  return result;
}

unint64_t sub_1AE1CB8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF60;
  if (!qword_1EB5BDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF60);
  }

  return result;
}

unint64_t sub_1AE1CB924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF68;
  if (!qword_1EB5BDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF68);
  }

  return result;
}

unint64_t sub_1AE1CB978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96A8E0;
  if (!qword_1ED96A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A8E0);
  }

  return result;
}

unint64_t sub_1AE1CB9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF70;
  if (!qword_1EB5BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF70);
  }

  return result;
}

uint64_t sub_1AE1CBA20(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = *a2;
  if (*a1)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    v13 = sub_1AE1CF8DC(v12, v11, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

    if ((v13 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v11)
  {
    goto LABEL_24;
  }

  v14 = a2[1];
  if (a1[1])
  {
    if (!v14)
    {
      goto LABEL_24;
    }

    v16 = sub_1AE1CF8DC(v15, v14, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v14)
  {
    goto LABEL_24;
  }

  v17 = a1[2];
  v18 = a2[2];
  if (!v17)
  {
    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = a1[3];
  v20 = a2[3];
  if ((sub_1ADE522B8() & 1) == 0)
  {
    sub_1ADE42C78(v18, v20);
    sub_1ADE42C78(v17, v19);
    goto LABEL_23;
  }

  sub_1ADE42C78(v18, v20);
  sub_1ADE42C78(v17, v19);
  sub_1ADE4E544(v19, v20);
  if ((v21 & 1) == 0)
  {
LABEL_23:

    sub_1ADE42CB8(v17, v19);
    goto LABEL_24;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v29 = sub_1AE23CCBC();
  v28 = v19;
  v30 = *(v5 + 8);
  v30(v7, v4);
  v30(v10, v4);

  sub_1ADE42CB8(v17, v28);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v22 = a2[4];
  if (!a1[4])
  {
    if (!v22)
    {
LABEL_27:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      LOBYTE(v22) = sub_1AE23CCBC();
      v26 = *(v5 + 8);
      v26(v7, v4);
      v26(v10, v4);
      return v22 & 1;
    }

LABEL_24:
    LOBYTE(v22) = 0;
    return v22 & 1;
  }

  if (v22)
  {

    v24 = sub_1AE1CF8DC(v23, v22, sub_1ADE5215C, sub_1AE1CFAF0, sub_1ADE52174);

    if (v24)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  return v22 & 1;
}

uint64_t sub_1AE1CBE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v10 = *(a1 + 72);
  v34 = *(a1 + 56);
  v35 = v10;
  v11 = *(a2 + 72);
  v33[0] = *(a2 + 56);
  v33[1] = v11;
  v12 = v34;
  v13 = v35;
  v14 = v33[0];
  v15 = v11;
  if (v35)
  {
    if (v11)
    {
      v30 = v6;
      v31 = a2;
      v27 = &v26 - v7;
      v28 = v9;
      v29 = v8;
      sub_1ADDCEE40(&v34, v32, &qword_1EB5BABA0, &unk_1AE2580C0);
      sub_1ADDCEE40(v33, v32, &qword_1EB5BABA0, &unk_1AE2580C0);
      v16 = sub_1AE1CE4B8(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1));
      sub_1ADE73B5C(v14, *(&v14 + 1), v15);
      sub_1ADE73B5C(v12, *(&v12 + 1), v13);
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_15:
      v23 = 0;
      return v23 & 1;
    }

LABEL_6:
    sub_1ADDCEE40(&v34, v32, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADDCEE40(v33, v32, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADE73B5C(v12, *(&v12 + 1), v13);
    sub_1ADE73B5C(v14, *(&v14 + 1), v15);
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_6;
  }

  v30 = v6;
  v31 = a2;
  v27 = &v26 - v7;
  v28 = v9;
  v29 = v8;
  sub_1ADDCEE40(&v34, v32, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADDCEE40(v33, v32, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADE73B5C(v12, *(&v12 + 1), 0);
LABEL_8:
  v17 = v31;
  sub_1ADE49E00(*a1, *v31);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_1ADE522B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!sub_1ADDD6F8C(*(a1 + 16), *(a1 + 24), v17[2], v17[3]))
  {
    goto LABEL_15;
  }

  if ((sub_1ADE522B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1ADE49E00(*(a1 + 40), v17[5]);
  if ((v19 & 1) == 0 || (sub_1ADE522B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v20 = v27;
  sub_1AE23C31C();
  v21 = v28;
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v22 = v30;
  v23 = sub_1AE23CCBC();
  v24 = *(v29 + 8);
  v24(v21, v22);
  v24(v20, v22);
  return v23 & 1;
}

uint64_t sub_1AE1CC154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-v9];
  if (a1 == a2)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  swift_beginAccess();
  v12 = *(a1 + 24);
  swift_beginAccess();
  v13 = *(a2 + 24);
  if (v12)
  {
    if (v13)
    {

      v15 = sub_1AE1CF8DC(v14, v13, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_8:

LABEL_9:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v16 = sub_1AE23CCBC();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  return v16 & 1;
}

uint64_t sub_1AE1CC3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_11:
    if (*a1 != *a2 || (sub_1ADE522BC() & 1) == 0 || (sub_1ADE4A3AC(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1ADE522BC() & 1) == 0)
    {
      goto LABEL_23;
    }

    v15 = *(a1 + 32);
    v16 = *(a2 + 32);
    if (*(a2 + 40))
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        if (v15 == 2)
        {
LABEL_21:
          sub_1AE23C31C();
          sub_1AE23C31C();
          sub_1ADE51EAC();
          v11 = sub_1AE23CCBC();
          v17 = *(v5 + 8);
          v17(v7, v4);
          v17(v10, v4);
          return v11 & 1;
        }
      }

      else if (!v15)
      {
        goto LABEL_21;
      }
    }

    else if (v15 == v16)
    {
      goto LABEL_21;
    }

LABEL_23:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 0;
  if ((*(a2 + 64) & 1) == 0 && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v13 = sub_1AE23CCBC();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  return v11 & 1;
}

uint64_t sub_1AE1CC624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = *(a1 + 32);
    v14 = *(a2 + 32);
    if ((sub_1ADE522B8() & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_1ADE42C78(v12, v14);
    sub_1ADE42C78(v11, v13);
    sub_1ADE4E544(v13, v14);
    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v25 = sub_1AE23CCBC();
    v27 = v5;
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v10, v4);
    v5 = v27;

    sub_1ADE42CB8(v11, v13);
    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v12)
  {
    goto LABEL_25;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v16 = 0;
  if ((*(a2 + 56) & 1) == 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v17 = sub_1AE23CCBC();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_16:
    sub_1ADE49B64(*(a1 + 8), *(a2 + 8));
    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }

    v11 = *(a1 + 64);
    v12 = *(a2 + 64);
    if (!v11)
    {
      if (!v12)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = *(a1 + 72);
    v14 = *(a2 + 72);
    if (sub_1ADE522B8())
    {
      sub_1ADE42C78(v12, v14);
      sub_1ADE42C78(v11, v13);
      sub_1ADE4E544(v13, v14);
      if (v20)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v25 = sub_1AE23CCBC();
        v27 = v5;
        v26 = *(v5 + 8);
        v26(v7, v4);
        v26(v10, v4);
        v5 = v27;

        sub_1ADE42CB8(v11, v13);
        if (v25)
        {
LABEL_28:
          sub_1ADE49B64(*(a1 + 16), *(a2 + 16));
          if (v22)
          {
            sub_1AE23C31C();
            sub_1AE23C31C();
            sub_1ADE51EAC();
            v16 = sub_1AE23CCBC();
            v23 = *(v5 + 8);
            v23(v7, v4);
            v23(v10, v4);
            return v16 & 1;
          }
        }

LABEL_25:
        v16 = 0;
        return v16 & 1;
      }

LABEL_24:

      sub_1ADE42CB8(v11, v13);
      goto LABEL_25;
    }

LABEL_23:
    sub_1ADE42C78(v12, v14);
    sub_1ADE42C78(v11, v13);
    goto LABEL_24;
  }

  return v16 & 1;
}

uint64_t sub_1AE1CCA34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v31 = a2;
  v14 = sub_1AE23C32C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26[-v19];
  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_8;
    }

LABEL_12:
    v23 = 0;
    return v23 & 1;
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  if ((sub_1ADE522B8() & 1) == 0)
  {
    sub_1ADE42C78(a7, a8);
    sub_1ADE42C78(a3, a4);
    goto LABEL_11;
  }

  sub_1ADE42C78(a7, a8);
  sub_1ADE42C78(a3, a4);
  sub_1ADE4E544(a4, a8);
  if ((v21 & 1) == 0)
  {
LABEL_11:

    sub_1ADE42CB8(a3, a4);
    goto LABEL_12;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v27 = sub_1AE23CCBC();
  v28 = a5;
  v29 = a6;
  v22 = *(v15 + 8);
  v22(v17, v14);
  v22(v20, v14);
  a5 = v28;
  a6 = v29;

  sub_1ADE42CB8(a3, a4);
  if ((v27 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (!sub_1ADDD6F8C(v30, v31, a5, a6))
  {
    goto LABEL_12;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v23 = sub_1AE23CCBC();
  v24 = *(v15 + 8);
  v24(v17, v14);
  v24(v20, v14);
  return v23 & 1;
}

uint64_t sub_1AE1CCCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = 0;
  if (a1 == a3 && a2 == a4)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v15 = sub_1AE23CCBC();
    v16 = *(v9 + 8);
    v16(v11, v8);
    v16(v14, v8);
  }

  return v15 & 1;
}

uint64_t sub_1AE1CCE00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v24 = a7;
  v13 = sub_1AE23C32C();
  v23 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  if ((sub_1ADE4AF74(a1, a5) & 1) == 0 || (sub_1ADE522C0() & 1) == 0)
  {
    goto LABEL_8;
  }

  v19 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v19 = a3;
  }

  if ((a8 & 1) == 0)
  {
    if (v19 != v24)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v20 = sub_1AE23CCBC();
    v22 = *(v23 + 8);
    v22(v15, v13);
    v22(v18, v13);
    return v20 & 1;
  }

  if (!v24)
  {
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v19 == 1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1AE1CCFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 0;
    if (*(a2 + 16))
    {
      return v11 & 1;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return v11 & 1;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v13 = sub_1AE23CCBC();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
LABEL_13:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v11 = sub_1AE23CCBC();
      v15 = *(v5 + 8);
      v15(v7, v4);
      v15(v10, v4);
      return v11 & 1;
    }

LABEL_18:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 0;
  if ((*(a2 + 40) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v16 = sub_1AE23CCBC();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if (v16)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  return v11 & 1;
}

uint64_t sub_1AE1CD228(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (!v11 && (sub_1AE23E00C() & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_1ADE49D64(a1[2], a2[2]);
  if ((v12 & 1) == 0 || (sub_1ADE4C130(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v13 = a1[5];
  v14 = a2[5];
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_32;
    }

    v15 = a1[6];
    v16 = a2[6];
    if ((sub_1ADE522B8() & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_1ADE42C78(v14, v16);
    sub_1ADE42C78(v13, v15);
    sub_1ADE4E544(v15, v16);
    if ((v17 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v34 = sub_1AE23CCBC();
    v33 = v15;
    v35 = *(v5 + 8);
    v35(v7, v4);
    v35(v10, v4);

    sub_1ADE42CB8(v13, v33);
    if ((v34 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v14)
  {
    goto LABEL_32;
  }

  v13 = a1[7];
  v14 = a2[7];
  if (v13)
  {
    if (!v14)
    {
      goto LABEL_32;
    }

    v15 = a1[8];
    v16 = a2[8];
    if (sub_1ADE522B8())
    {
      sub_1ADE42C78(v14, v16);
      sub_1ADE42C78(v13, v15);
      sub_1ADE4E544(v15, v16);
      if (v18)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v34 = sub_1AE23CCBC();
        v33 = v15;
        v35 = *(v5 + 8);
        v35(v7, v4);
        v35(v10, v4);

        sub_1ADE42CB8(v13, v33);
        if ((v34 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

LABEL_30:

      v21 = v13;
      v22 = v15;
      goto LABEL_31;
    }

LABEL_29:
    sub_1ADE42C78(v14, v16);
    sub_1ADE42C78(v13, v15);
    goto LABEL_30;
  }

  if (v14)
  {
    goto LABEL_32;
  }

LABEL_22:
  sub_1ADE4C634(a1[4], a2[4]);
  if ((v19 & 1) == 0)
  {
    goto LABEL_32;
  }

  v13 = a1[9];
  v14 = a2[9];
  if (!v13)
  {
    if (v14)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = a1[10];
  v16 = a2[10];
  if ((sub_1ADE522B8() & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_1ADE42C78(v14, v16);
  sub_1ADE42C78(v13, v15);
  sub_1ADE4E544(v15, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v34 = sub_1AE23CCBC();
  v33 = v15;
  v35 = *(v5 + 8);
  v35(v7, v4);
  v35(v10, v4);

  sub_1ADE42CB8(v13, v33);
  if ((v34 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v25 = a1[11];
  v26 = a2[11];
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_32;
    }

    v27 = a1[12];
    v28 = a2[12];
    if (sub_1ADE522B8())
    {
      sub_1ADE42C78(v26, v28);
      sub_1ADE42C78(v25, v27);
      sub_1ADE4E544(v27, v28);
      if (v29)
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        LODWORD(v35) = sub_1AE23CCBC();
        v30 = *(v5 + 8);
        v30(v7, v4);
        v30(v10, v4);

        sub_1ADE42CB8(v25, v27);
        if (v35)
        {
          goto LABEL_42;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_1ADE42C78(v26, v28);
      sub_1ADE42C78(v25, v27);
    }

    v21 = v25;
    v22 = v27;
LABEL_31:
    sub_1ADE42CB8(v21, v22);
    goto LABEL_32;
  }

  if (!v26)
  {
LABEL_42:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v23 = sub_1AE23CCBC();
    v31 = *(v5 + 8);
    v31(v7, v4);
    v31(v10, v4);
    return v23 & 1;
  }

LABEL_32:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1AE1CD7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (*a1 != *a2 || (sub_1ADE4C8D8(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
LABEL_5:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v11 = sub_1AE23CCBC();
      v12 = *(v5 + 8);
      v12(v7, v4);
      v12(v10, v4);
      return v11 & 1;
    }

LABEL_10:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 0;
  if ((*(a2 + 32) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v13 = sub_1AE23CCBC();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v10, v4);
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  return v11 & 1;
}

uint64_t sub_1AE1CD9A0(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  if (a1 != a3)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (a4)
  {

    v16 = sub_1AE1CF8DC(v15, a4, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

    if (v16)
    {
LABEL_5:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      LOBYTE(a4) = sub_1AE23CCBC();
      v17 = *(v9 + 8);
      v17(v11, v8);
      v17(v14, v8);
      return a4 & 1;
    }

LABEL_7:
    LOBYTE(a4) = 0;
  }

  return a4 & 1;
}

uint64_t sub_1AE1CDB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  if (a1 == a2)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  v12 = *(a2 + 16);
  if (v11)
  {
    if (v12)
    {

      v14 = sub_1AE1CF8DC(v13, v12, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_10:

    v15 = 0;
    return v15 & 1;
  }

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_7:

LABEL_8:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v15 = sub_1AE23CCBC();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  return v15 & 1;
}

uint64_t sub_1AE1CDDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (a1 == a2 || (, , v13 = a3(a1, a2), , , (v13 & 1) != 0))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v14 = sub_1AE23CCBC();
    v15 = *(v7 + 8);
    v15(v9, v6);
    v15(v12, v6);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1AE1CDF28(uint64_t a1, _BOOL8 a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_1ADE49D64(a1, a4);
  if ((v19 & 1) != 0 && sub_1ADDD6F8C(a2, a3, a5, a6))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v20 = sub_1AE23CCBC();
    v21 = *(v13 + 8);
    v21(v15, v12);
    v21(v18, v12);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void sub_1AE1CE0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a3 + 16))
  {
    if (!v18 || a1 == a3)
    {
LABEL_7:
      if (a5(a2, a4, v15))
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v21 = *(v11 + 8);
        v21(v13, v10);
        v21(v17, v10);
      }
    }

    else
    {
      v19 = (a1 + 32);
      v20 = (a3 + 32);
      while (*v19 == *v20)
      {
        ++v19;
        ++v20;
        if (!--v18)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

uint64_t sub_1AE1CE254(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v11 = a1[1];
  v12 = a2[1];
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = a1[2];
    v27 = v5;
    v14 = a2[2];
    sub_1ADE42C78(v12, v14);
    sub_1ADE42C78(v11, v13);
    sub_1AE1CE0A4(v11, v13, v12, v14, sub_1ADE4E544);
    v16 = v15;
    v5 = v27;

    sub_1ADE42CB8(v11, v13);
    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v12)
  {
    goto LABEL_12;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (v18)
    {
      v19 = a1[4];
      v20 = a2[4];
      sub_1ADE42C78(v18, v20);
      sub_1ADE42C78(v17, v19);
      sub_1AE1CE0A4(v17, v19, v18, v20, sub_1ADE4E544);
      v22 = v21;

      sub_1ADE42CB8(v17, v19);
      if (v22)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v23 = 0;
    return v23 & 1;
  }

  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v23 = sub_1AE23CCBC();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  return v23 & 1;
}

uint64_t sub_1AE1CE4B8(_BOOL8 a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v15 = sub_1AE23C32C();
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  if (sub_1ADDD6F8C(a1, a2, a5, a6) && (sub_1ADE4DC50(a3, a7) & 1) != 0 && (sub_1ADE4AF74(a4, v25) & 1) != 0)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v21 = sub_1AE23CCBC();
    v22 = *(v24 + 8);
    v22(v17, v15);
    v22(v20, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void sub_1AE1CE654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AE23C32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a4 + 16))
  {
    if (!v16 || a1 == a4)
    {
LABEL_7:
      sub_1ADE4DCE0(a2, a5);
      if (v19 & 1) != 0 && (sub_1ADE522B8())
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v20 = *(v10 + 8);
        v20(v12, v9);
        v20(v15, v9);
      }
    }

    else
    {
      v17 = (a1 + 32);
      v18 = (a4 + 32);
      while (*v17 == *v18)
      {
        ++v17;
        ++v18;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

uint64_t sub_1AE1CE814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v13 == 0xF000000000000007)
    {
      goto LABEL_9;
    }

    if (v11 >> 62)
    {
      if (v11 >> 62 != 1)
      {
        if (v12 >> 62 != 2)
        {
          goto LABEL_9;
        }

        v29 = *a2;
        if ((v11 & 0x3FFFFFFFFFFFFFFFLL) == (v12 & 0x3FFFFFFFFFFFFFFFLL))
        {
          sub_1ADE73AB0(v29);
          sub_1ADE73AB0(v11);
        }

        else
        {
          sub_1ADE73AB0(v29);
          sub_1ADE73AB0(v11);
          if ((sub_1AE1C1AA0(v11 & 0x3FFFFFFFFFFFFFFFLL, v12 & 0x3FFFFFFFFFFFFFFFLL) & 1) == 0)
          {
            sub_1ADE73AC8(v12);
            sub_1ADE73AC8(v11);
            goto LABEL_9;
          }
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        LODWORD(v57) = sub_1AE23CCBC();
        v38 = v5;
        v39 = *(v5 + 8);
        v39(v7, v4);
        v39(v10, v4);
        v5 = v38;
        sub_1ADE73AC8(v12);
        sub_1ADE73AC8(v11);
        if ((v57 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }

      if (v12 >> 62 != 1)
      {
        goto LABEL_9;
      }

      sub_1ADE73AB0(*a2);
      sub_1ADE73AB0(v11);
      v23 = sub_1ADE51B2C;
      v24 = sub_1AE1CEE20;
      v25 = sub_1ADE51B48;
      v26 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v12 >> 62)
      {
        goto LABEL_9;
      }

      sub_1ADE73AB0(*a2);
      sub_1ADE73AB0(v11);
      v23 = sub_1ADE5215C;
      v24 = sub_1AE1CFAF0;
      v25 = sub_1ADE52174;
      v26 = v11;
      v27 = v12;
    }

    v28 = sub_1AE1CF8DC(v26, v27, v23, v24, v25);
    sub_1ADE73AC8(v12);
    sub_1ADE73AC8(v11);
    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  if (v13 != 0xF000000000000007)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1ADE4E01C(*(a1 + 24), *(a2 + 24));
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_9;
    }

    v55 = v5;
    v17 = *(a1 + 72);
    v18 = *(a2 + 72);
    sub_1ADE42C78(v16, v18);
    sub_1ADE42C78(v15, v17);
    sub_1AE1CE0A4(v15, v17, v16, v18, sub_1ADE4E544);
    v20 = v19;

    sub_1ADE42CB8(v15, v17);
    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v55 = v5;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  v30 = *(a1 + 96);
  v60 = *(a1 + 80);
  v61 = v30;
  v31 = *(a2 + 96);
  v59[0] = *(a2 + 80);
  v59[1] = v31;
  v32 = *(&v60 + 1);
  v33 = v61;
  v56 = v60;
  v57 = *(&v61 + 1);
  v34 = *&v59[0];
  v35 = v31;
  if (v61)
  {
    if (v31)
    {
      v54 = *(&v59[0] + 1);
      sub_1ADDCEE40(&v60, v58, &qword_1EB5BABA0, &unk_1AE2580C0);
      sub_1ADDCEE40(v59, v58, &qword_1EB5BABA0, &unk_1AE2580C0);
      v36 = v32;
      v53 = v32;
      v37 = v54;
      v52 = sub_1AE1CE4B8(v56, v36, v33, v57, v34, v54, v35, *(&v35 + 1));
      sub_1ADE73B5C(v34, v37, v35);
      sub_1ADE73B5C(v56, v53, v33);
      if ((v52 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_31:
    v40 = *(&v59[0] + 1);
    sub_1ADDCEE40(&v60, v58, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADDCEE40(v59, v58, &qword_1EB5BABA0, &unk_1AE2580C0);
    sub_1ADE73B5C(v56, v32, v33);
    sub_1ADE73B5C(v34, v40, v35);
    goto LABEL_9;
  }

  if (v31)
  {
    goto LABEL_31;
  }

  sub_1ADDCEE40(&v60, v58, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADDCEE40(v59, v58, &qword_1EB5BABA0, &unk_1AE2580C0);
  sub_1ADE73B5C(v56, v32, 0);
LABEL_34:
  sub_1ADE4E034(*(a1 + 32), *(a2 + 32));
  if ((v41 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!sub_1ADDD6F8C(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)))
  {
    goto LABEL_9;
  }

  sub_1ADE4E01C(*(a1 + 56), *(a2 + 56));
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  v43 = *(a1 + 112);
  v44 = *(a2 + 112);
  if (v43)
  {
    v45 = v55;
    if (!v44)
    {
      goto LABEL_9;
    }

    v46 = *(a1 + 120);
    v47 = *(a2 + 120);
    sub_1ADE42C78(v44, v47);
    sub_1ADE42C78(v43, v46);
    sub_1AE1CE0A4(v43, v46, v44, v47, sub_1ADE4E544);
    v49 = v48;

    sub_1ADE42CB8(v43, v46);
    if ((v49 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_42:
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v21 = sub_1AE23CCBC();
    v50 = *(v45 + 8);
    v50(v7, v4);
    v50(v10, v4);
    return v21 & 1;
  }

  v45 = v55;
  if (!v44)
  {
    goto LABEL_42;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

void sub_1AE1CEE20(unint64_t a1, unint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 3uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 3)
      {
        v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v31 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v32 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1ADDD86D8(v31, v32);
        sub_1ADDD6F8C(v30, v29, v31, v32);
        sub_1ADDCC35C(v31, v32);
      }

      return;
    case 6uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 6)
      {
        return;
      }

      v48 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v49 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v50 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v51 = *(v48 + 16);
      if (v51 != *(v50 + 16))
      {
        return;
      }

      v52 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v53 = *(v49 + 24);
      if (v51)
      {
        v54 = v48 == v50;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        goto LABEL_49;
      }

      v55 = (v48 + 32);
      v56 = (v50 + 32);
      while (1)
      {
        if (!v51)
        {
          goto LABEL_66;
        }

        if (*v55 != *v56)
        {
          return;
        }

        ++v55;
        ++v56;
        if (!--v51)
        {
LABEL_49:

          sub_1ADE4E544(v52, v53);
          if (v57)
          {
            goto LABEL_38;
          }

          goto LABEL_50;
        }
      }

    case 7uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 7)
      {
        return;
      }

      v33 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      if (v33 == v34)
      {
        goto LABEL_61;
      }

      v36 = sub_1AE1C1AA0(v35, v34);

      if (v36)
      {
        goto LABEL_61;
      }

      return;
    case 8uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 8)
      {
        v62 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v63 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1AE1CDB64(v62, v63);
      }

      return;
    case 9uLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 9 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v28 = *(v5 + 8);
        v28(v7, v4);
        v28(v10, v4);
      }

      return;
    case 0xAuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xA)
      {
        return;
      }

      v58 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v59 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1ADE49D64(v58, v59);
      if ((v60 & 1) == 0)
      {
        goto LABEL_56;
      }

      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      sub_1AE23CCBC();

      v61 = *(v5 + 8);
      v61(v7, v4);
      v61(v10, v4);
      return;
    case 0xBuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xB)
      {
        return;
      }

      v11 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v12 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (v11 == v12)
      {

LABEL_61:
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();
        v64 = *(v5 + 8);
        v64(v7, v4);
        v64(v10, v4);

        return;
      }

      swift_beginAccess();
      v13 = *(v11 + 16);
      swift_beginAccess();
      if (v13 != *(v12 + 16))
      {
        return;
      }

      swift_beginAccess();
      v14 = *(v11 + 24);
      swift_beginAccess();
      v15 = *(v12 + 24);
      if (v14)
      {
        if (v15)
        {

          v17 = sub_1AE1CF8DC(v16, v15, sub_1ADE51B2C, sub_1AE1CEE20, sub_1ADE51B48);

          if ((v17 & 1) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_60;
        }
      }

      else
      {

        if (!v15)
        {
LABEL_60:

          goto LABEL_61;
        }
      }

LABEL_63:

      return;
    case 0xCuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xC)
      {
        v18 = (a2 & 0xFFFFFFFFFFFFFFBLL);
        if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
        {
          v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v21 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v65 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          v66 = v21;
          v22 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v23 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v24 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v25 = v18[6];
          sub_1ADDD86D8(v18[3], v18[4]);
          sub_1ADDD86D8(v24, v25);
          if (sub_1ADDD6F8C(v20, v19, v22, v23) && sub_1ADDD6F8C(v66, v65, v24, v25))
          {
            sub_1AE23C31C();
            sub_1AE23C31C();
            sub_1ADE51EAC();
            sub_1AE23CCBC();
            v26 = *(v5 + 8);
            v26(v7, v4);
            v26(v10, v4);
            sub_1ADDCC35C(v22, v23);
            sub_1ADDCC35C(v24, v25);
          }

          else
          {
            sub_1ADDCC35C(v22, v23);
            sub_1ADDCC35C(v24, v25);
          }
        }
      }

      return;
    case 0xDuLL:
      if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) != 0xD)
      {
        return;
      }

      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v38 = a2 & 0xFFFFFFFFFFFFFFBLL;
      v39 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v40 = *(v37 + 16);
      if (v40 != *(v39 + 16))
      {
        return;
      }

      v41 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v42 = *(v38 + 24);
      if (v40)
      {
        v43 = v37 == v39;
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        goto LABEL_37;
      }

      v44 = (v37 + 32);
      v45 = (v39 + 32);
      do
      {
        if (!v40)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          return;
        }

        if (*v44 != *v45)
        {
          return;
        }

        ++v44;
        ++v45;
        --v40;
      }

      while (v40);
LABEL_37:

      sub_1ADE49D64(v41, v42);
      if (v46)
      {
LABEL_38:
        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        sub_1AE23CCBC();

        v47 = *(v5 + 8);
        v47(v7, v4);
        v47(v10, v4);
      }

      else
      {
LABEL_50:

LABEL_56:
      }

      return;
    default:
      return;
  }
}

uint64_t sub_1AE1CF778(void *a1, void *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  if (*a1 == *a2 && sub_1ADDD6F8C(a1[1], a1[2], a2[1], a2[2]) && sub_1ADDD6F8C(a1[3], a1[4], a2[3], a2[4]))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v11 = sub_1AE23CCBC();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1AE1CF8DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t))
{
  v10 = sub_1AE23C32C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  if (a1 != a2)
  {
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v17 = *(a1 + 16);
    v18 = *(a2 + 16);
    v19 = v18 & 0xF000000000000007;

    if ((~v17 & 0xF000000000000007) != 0)
    {
      if (v19 == 0xF000000000000007)
      {
        goto LABEL_9;
      }

      v20 = v27;
      v27(v18);
      v20(v17);
      v21 = v28(v17, v18);
      v22 = v29;
      v29(v18);
      v22(v17);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v19 != 0xF000000000000007)
    {
LABEL_9:

      v23 = 0;
      return v23 & 1;
    }
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v23 = sub_1AE23CCBC();
  v24 = *(v11 + 8);
  v24(v13, v10);
  v24(v16, v10);
  return v23 & 1;
}

uint64_t sub_1AE1CFAF0(unint64_t a1, unint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - v9;
  v11 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if (v11 <= 6)
    {
      if (v11 == 5)
      {
        v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v59 = v24;
        v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = v25;
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v57 = v26;
        if (a2 >> 60 != 5)
        {
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (a2 >> 60 != 6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v11 == 7)
      {
        v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = v29;
        *&v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        if (a2 >> 60 == 7)
        {
          v30 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v61 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v62 = v30;
          *&v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v68 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v52[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          sub_1ADDCEE40(&v68, v53, &qword_1EB5BDA20, &qword_1AE253910);
          sub_1ADDCEE40(v52, v53, &qword_1EB5BDA20, &qword_1AE253910);
          v19 = sub_1AE1CE254(&v54, &v61);
          sub_1ADDCEDE0(&v68, &qword_1EB5BDA20, &qword_1AE253910);
          sub_1ADDCEDE0(v52, &qword_1EB5BDA20, &qword_1AE253910);
          return v19 & 1;
        }

LABEL_39:
        v19 = 0;
        return v19 & 1;
      }

      if (v11 != 8)
      {
        if (a2 >> 60 != 9)
        {
          goto LABEL_39;
        }

        v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v37 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        sub_1ADE4AA04(v36, v37);
        if ((v38 & 1) == 0)
        {

          goto LABEL_39;
        }

        sub_1AE23C31C();
        sub_1AE23C31C();
        sub_1ADE51EAC();
        v39 = sub_1AE23CCBC();

        v40 = *(v5 + 8);
        v40(v7, v4);
        v40(v10, v4);
        if ((v39 & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        v19 = 1;
        return v19 & 1;
      }

      if (a2 >> 60 != 8)
      {
        goto LABEL_39;
      }
    }

    v45 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    if (v45 == v46)
    {
LABEL_35:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v49 = sub_1AE23CCBC();
      v50 = *(v5 + 8);
      v50(v7, v4);
      v50(v10, v4);

      if ((v49 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v23 = sub_1AE1C5408(v47, v46);
LABEL_34:
    v48 = v23;

    if ((v48 & 1) == 0)
    {

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v57 = v41;
      v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v42 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v55 = v42;
      if (a2 >> 60 != 1)
      {
        goto LABEL_39;
      }

LABEL_30:
      v43 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v62 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v63 = v43;
      v44 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v64 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v65 = v44;
      v61 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1ADFAEE10(&v61, v52);
      v19 = sub_1AE1CC624(&v54, &v61);
      sub_1ADFAECE8(&v61);
      return v19 & 1;
    }

    if (a2 >> 60)
    {
      goto LABEL_39;
    }

    v20 = *(a1 + 16);
    v21 = *(a2 + 16);

    if (v20 == v21)
    {
      goto LABEL_35;
    }

    v23 = sub_1AE1BF0F8(v22, v21);
    goto LABEL_34;
  }

  if (v11 == 2)
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v57 = v27;
    v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v55 = v28;
    if (a2 >> 60 != 2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (v11 != 3)
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v59 = v31;
    v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v55 = v32;
    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v57 = v33;
    if (a2 >> 60 != 4)
    {
      goto LABEL_39;
    }

LABEL_24:
    v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v64 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v65 = v34;
    v66 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v67 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v61 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v62 = v35;
    v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_1ADE51B64(&v61, v52);
    v19 = sub_1AE1CD228(&v54, &v61);
    sub_1AE030800(&v61);
    return v19 & 1;
  }

  if (a2 >> 60 != 3)
  {
    goto LABEL_39;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v15 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *(v15 + 24);

  sub_1AE1CE654(v14, v13, v12, v16, v17);
  v19 = v18;

  return v19 & 1;
}

unint64_t sub_1AE1D004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF88;
  if (!qword_1EB5BDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF88);
  }

  return result;
}

void sub_1AE1D00A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 != 15)
  {
    sub_1ADDCC35C(a2, a3);

    sub_1ADDCC35C(a4, a5);
  }
}

uint64_t objectdestroy_183Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AE1D0138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF90;
  if (!qword_1EB5BDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF90);
  }

  return result;
}

uint64_t sub_1AE1D018C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1D01D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
    sub_1ADE42CB8(a2, a3);
    return sub_1ADE42CB8(a4, a5);
  }

  return result;
}

unint64_t sub_1AE1D0220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDF98;
  if (!qword_1EB5BDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDF98);
  }

  return result;
}

unint64_t sub_1AE1D0274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFA0;
  if (!qword_1EB5BDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFA0);
  }

  return result;
}

unint64_t sub_1AE1D02C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFA8;
  if (!qword_1EB5BDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFA8);
  }

  return result;
}

unint64_t sub_1AE1D031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFB0;
  if (!qword_1EB5BDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFB0);
  }

  return result;
}

unint64_t sub_1AE1D0370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFB8;
  if (!qword_1EB5BDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFB8);
  }

  return result;
}

unint64_t sub_1AE1D03C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFC0;
  if (!qword_1EB5BDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFC0);
  }

  return result;
}

unint64_t sub_1AE1D0418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFC8;
  if (!qword_1EB5BDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFC8);
  }

  return result;
}

unint64_t sub_1AE1D046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFD0;
  if (!qword_1EB5BDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFD0);
  }

  return result;
}

unint64_t sub_1AE1D04C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFD8;
  if (!qword_1EB5BDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFD8);
  }

  return result;
}

uint64_t sub_1AE1D0514(uint64_t a1)
{
  *(v1 + 192) = 0;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 200) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  swift_beginAccess();
  v3 = *(a1 + 64);
  v29 = *(a1 + 48);
  v30 = v3;
  v31 = *(a1 + 80);
  v4 = *(a1 + 32);
  v27 = *(a1 + 16);
  v28 = v4;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v32[2] = *(v1 + 48);
  v32[3] = v6;
  v32[4] = v7;
  v32[0] = *(v1 + 16);
  v32[1] = v5;
  v8 = v29;
  v9 = v30;
  v10 = v27;
  *(v1 + 32) = v28;
  *(v1 + 48) = v8;
  v11 = v31;
  *(v1 + 64) = v9;
  *(v1 + 80) = v11;
  *(v1 + 16) = v10;
  sub_1ADDCEE40(&v27, v40, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1ADDCEDE0(v32, &qword_1EB5BCC30, &qword_1AE2580D0);
  swift_beginAccess();
  v12 = *(a1 + 176);
  v37 = *(a1 + 160);
  v38 = v12;
  v39 = *(a1 + 192);
  v13 = *(a1 + 112);
  v33 = *(a1 + 96);
  v34 = v13;
  v14 = *(a1 + 144);
  v35 = *(a1 + 128);
  v36 = v14;
  swift_beginAccess();
  v15 = *(v1 + 144);
  v16 = *(v1 + 176);
  v40[4] = *(v1 + 160);
  v40[5] = v16;
  v17 = *(v1 + 112);
  v18 = *(v1 + 128);
  v40[0] = *(v1 + 96);
  v40[1] = v17;
  v40[2] = v18;
  v40[3] = v15;
  v19 = v33;
  v20 = v35;
  v21 = v36;
  *(v1 + 112) = v34;
  *(v1 + 128) = v20;
  *(v1 + 96) = v19;
  v22 = v38;
  *(v1 + 160) = v37;
  *(v1 + 176) = v22;
  v41 = *(v1 + 192);
  *(v1 + 144) = v21;
  *(v1 + 192) = v39;
  sub_1ADDCEE40(&v33, v26, &qword_1EB5BCC28, &unk_1AE251820);
  sub_1ADDCEDE0(v40, &qword_1EB5BCC28, &unk_1AE251820);
  swift_beginAccess();
  v23 = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 200) = v23;

  swift_beginAccess();
  v24 = *(a1 + 208);
  LOBYTE(a1) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v24;
  *(v1 + 216) = a1;
  return v1;
}

unint64_t sub_1AE1D0788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFE0;
  if (!qword_1EB5BDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFE0);
  }

  return result;
}

unint64_t sub_1AE1D07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFE8;
  if (!qword_1EB5BDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFE8);
  }

  return result;
}

uint64_t sub_1AE1D0830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    sub_1AE1CAF38(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1AE1D08B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFF0;
  if (!qword_1EB5BDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFF0);
  }

  return result;
}

unint64_t sub_1AE1D0904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDFF8;
  if (!qword_1EB5BDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDFF8);
  }

  return result;
}

unint64_t sub_1AE1D0958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B92C8[0];
  if (!qword_1EB5B92C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B92C8);
  }

  return result;
}

unint64_t sub_1AE1D09AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE000;
  if (!qword_1EB5BE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE000);
  }

  return result;
}

unint64_t sub_1AE1D0A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE008;
  if (!qword_1EB5BE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE008);
  }

  return result;
}

unint64_t sub_1AE1D0A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE010;
  if (!qword_1EB5BE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE010);
  }

  return result;
}

unint64_t sub_1AE1D0AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE018;
  if (!qword_1EB5BE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE018);
  }

  return result;
}

unint64_t sub_1AE1D0AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE020;
  if (!qword_1EB5BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE020);
  }

  return result;
}

unint64_t sub_1AE1D0B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE028;
  if (!qword_1EB5BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE028);
  }

  return result;
}

unint64_t sub_1AE1D0BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE030;
  if (!qword_1EB5BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE030);
  }

  return result;
}

unint64_t sub_1AE1D0BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B91F8;
  if (!qword_1EB5B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B91F8);
  }

  return result;
}

unint64_t sub_1AE1D0C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE038;
  if (!qword_1EB5BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE038);
  }

  return result;
}

unint64_t sub_1AE1D0CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE040;
  if (!qword_1EB5BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE040);
  }

  return result;
}

unint64_t sub_1AE1D0CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE048;
  if (!qword_1EB5BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE048);
  }

  return result;
}

uint64_t sub_1AE1D0D48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  if (result)
  {
    a5();
    return sub_1AE23C66C();
  }

  return result;
}

unint64_t sub_1AE1D0DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE050;
  if (!qword_1EB5BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE050);
  }

  return result;
}

unint64_t sub_1AE1D0E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE058;
  if (!qword_1EB5BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE058);
  }

  return result;
}

unint64_t sub_1AE1D0E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE060;
  if (!qword_1EB5BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE060);
  }

  return result;
}

unint64_t sub_1AE1D0EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE068;
  if (!qword_1EB5BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE068);
  }

  return result;
}

unint64_t sub_1AE1D0F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE070;
  if (!qword_1EB5BE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE070);
  }

  return result;
}

uint64_t sub_1AE1D0F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 1) == 0)
  {
    sub_1AE1CB1F0(result, a2, a3);
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1AE1D0FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {

    sub_1ADE42CB8(a4, a5);
    return sub_1ADE42CB8(a9, a10);
  }

  return result;
}

uint64_t sub_1AE1D1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {

    sub_1ADE42CB8(a6, a7);
    sub_1ADE42CB8(a8, a9);
    sub_1ADE42CB8(a10, a11);
    return sub_1ADE42CB8(a12, a13);
  }

  return result;
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

uint64_t sub_1AE1D1140(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1AE1D1188(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1AE1D11EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AE1D1248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1D12C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AE1D1324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1D1390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AE1D13EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AE1D1474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AE1D14BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AE1D1504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE078;
  if (!qword_1EB5BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE078);
  }

  return result;
}

unint64_t sub_1AE1D158C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE090;
  if (!qword_1EB5BE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE090);
  }

  return result;
}

uint64_t sub_1AE1D1610(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1AE1D1668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE0A8;
  if (!qword_1EB5BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0A8);
  }

  return result;
}

unint64_t sub_1AE1D16C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE0B0;
  if (!qword_1EB5BE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0B0);
  }

  return result;
}

unint64_t sub_1AE1D1718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE0B8;
  if (!qword_1EB5BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0B8);
  }

  return result;
}

unint64_t sub_1AE1D1770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BE0C0;
  if (!qword_1EB5BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE0C0);
  }

  return result;
}

uint64_t sub_1AE1D17FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    sub_1ADDCEDE0(a1, &qword_1EB5B9E90, &qword_1AE240ED0);
    sub_1ADEBEDCC(a2, v9);
    v4 = sub_1AE23BDDC();
    (*(*(v4 - 8) + 8))(a2, v4);
    return sub_1ADDCEDE0(v9, &qword_1EB5B9E90, &qword_1AE240ED0);
  }

  else
  {
    sub_1ADE42D60(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1ADEBF0A4(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1AE23BDDC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

void sub_1AE1D1918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1ADEBF3A0(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(a4, a5);
    *v5 = v18;
  }

  else
  {
    v13 = sub_1ADDDE7CC(a4, a5);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        sub_1ADF6F47C();
        v17 = v19;
      }

      sub_1ADDCC35C(*(*(v17 + 48) + 16 * v15), *(*(v17 + 48) + 16 * v15 + 8));

      sub_1ADF6D4DC(v15, v17);
      sub_1ADDCC35C(a4, a5);
      *v6 = v17;
    }

    else
    {

      sub_1ADDCC35C(a4, a5);
    }
  }
}

void sub_1AE1D1A7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1ADDEE390(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1ADEBFD44(v8, a2, a3, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(a2, a3);
    *v3 = v7;
  }

  else
  {
    sub_1ADDCEDE0(a1, &qword_1EB5BAA00, &qword_1AE2587A0);
    sub_1ADEBF000(a2, a3, v8);
    sub_1ADDCC35C(a2, a3);
    sub_1ADDCEDE0(v8, &qword_1EB5BAA00, &qword_1AE2587A0);
  }
}

uint64_t sub_1AE1D1B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1ADEC0170(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1AE23BFEC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1ADDDF300(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1ADF71354();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1AE23BFEC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);
      sub_1ADF6DF54(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1AE23BFEC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_1AE1D1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1ADEC01B0(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(a4, a5);
    *v5 = v18;
  }

  else
  {
    v13 = sub_1ADDDE7CC(a4, a5);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        sub_1ADF715D8();
        v17 = v19;
      }

      sub_1ADDCC35C(*(*(v17 + 48) + 16 * v15), *(*(v17 + 48) + 16 * v15 + 8));
      swift_unknownObjectRelease();
      sub_1ADF6D4DC(v15, v17);
      sub_1ADDCC35C(a4, a5);
      *v6 = v17;
    }

    else
    {

      sub_1ADDCC35C(a4, a5);
    }
  }
}

uint64_t sub_1AE1D1E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1ADEC0320(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1AE23BDDC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1ADDFF050(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1ADF71784();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1AE23BDDC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1ADF6E274(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1AE23BDDC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1AE1D2018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1ADEC0360(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1AE23BDDC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1ADDFF050(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1ADF71A10();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1AE23BDDC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1ADF6E594(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1AE23BDDC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}