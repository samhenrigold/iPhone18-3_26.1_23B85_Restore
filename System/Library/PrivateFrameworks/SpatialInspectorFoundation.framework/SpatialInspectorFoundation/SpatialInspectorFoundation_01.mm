__n128 __swift_memcpy128_16(uint64_t a1, __int128 *a2)
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

uint64_t sub_26B2A36E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B2A3704(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B2A3764(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B2A3784(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26B2A37DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B2A37FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26B2A3854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B2A3874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B2A38B8(uint64_t a1, int a2)
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

uint64_t sub_26B2A38D8(uint64_t result, int a2, int a3)
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

uint64_t storeEnumTagSinglePayload for SpatialInspectorVersioningError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialInspectorVersioningError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26B2A39A4()
{
  result = qword_2803F7690[0];
  if (!qword_2803F7690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F7690);
  }

  return result;
}

unint64_t sub_26B2A39FC()
{
  result = qword_2803F77A0;
  if (!qword_2803F77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F77A0);
  }

  return result;
}

unint64_t sub_26B2A3A54()
{
  result = qword_2803F77A8[0];
  if (!qword_2803F77A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F77A8);
  }

  return result;
}

unint64_t sub_26B2A3AF0()
{
  result = qword_2803F42D8;
  if (!qword_2803F42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F42D8);
  }

  return result;
}

unint64_t sub_26B2A3B44()
{
  result = qword_2803F42E0;
  if (!qword_2803F42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F42E0);
  }

  return result;
}

unint64_t sub_26B2A3B98()
{
  result = qword_2803F42E8;
  if (!qword_2803F42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F42E8);
  }

  return result;
}

unint64_t sub_26B2A3BEC()
{
  result = qword_2803F42F0;
  if (!qword_2803F42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F42F0);
  }

  return result;
}

unint64_t sub_26B2A3C40()
{
  result = qword_2803F42F8;
  if (!qword_2803F42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F42F8);
  }

  return result;
}

unint64_t sub_26B2A3C94()
{
  result = qword_2803F4300;
  if (!qword_2803F4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4300);
  }

  return result;
}

unint64_t sub_26B2A3CE8()
{
  result = qword_2803F4308;
  if (!qword_2803F4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4308);
  }

  return result;
}

unint64_t sub_26B2A3D3C()
{
  result = qword_2803F4310;
  if (!qword_2803F4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4310);
  }

  return result;
}

unint64_t sub_26B2A3D90()
{
  result = qword_2803F4318;
  if (!qword_2803F4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4318);
  }

  return result;
}

unint64_t sub_26B2A3DE4()
{
  result = qword_2803F4320;
  if (!qword_2803F4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4320);
  }

  return result;
}

unint64_t sub_26B2A3E38()
{
  result = qword_2803F4328;
  if (!qword_2803F4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4328);
  }

  return result;
}

uint64_t sub_26B2A3E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4330, &qword_26B2BE908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B2A3EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4330, &qword_26B2BE908);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B2A3F6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t EntityID.init(extractedFrom:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4360, &qword_26B2BE920);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v30 - v8;
  v30[4] = a1;
  v30[5] = a2;
  v30[2] = 0x3D44495026;
  v30[3] = 0xE500000000000000;
  v10 = sub_26B2BB778();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_26B2A4268();
  sub_26B2BBD68();
  v12 = v11;
  v14 = v13;
  sub_26B2A42BC(v9);
  if ((v14 & 1) != 0 || (v15 = sub_26B2A57C8(v12, a1, a2), v17 = v16, v19 = v18, v21 = v20, , sub_26B2BBD58() < 1) || (v15 ^ v17) < 0x4000)
  {
  }

  else
  {
    v22 = sub_26B2A56FC(v15, v17, v19, v21, 10);
    if ((v23 & 0x100) != 0)
    {
      v24 = sub_26B2A4C84(v15, v17, v19, v21, 10);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
LABEL_11:
        v27 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v24 = v22;
      v25 = v23;

      if ((v25 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v24 = 0;
  v27 = 1;
LABEL_9:
  *a3 = v24;
  *(a3 + 8) = v27;
  return result;
}

unint64_t sub_26B2A4268()
{
  result = qword_2803F4368;
  if (!qword_2803F4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4368);
  }

  return result;
}

uint64_t sub_26B2A42BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4360, &qword_26B2BE920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static EntityID.appendID(to:id:)(uint64_t a1, uint64_t a2)
{

  MEMORY[0x26D673B30](0x3D44495026, 0xE500000000000000);
  v2 = sub_26B2BC108();
  v4 = v3;

  MEMORY[0x26D673B30](v2, v4);

  return a1;
}

uint64_t static EntityID.removeID(from:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4360, &qword_26B2BE920);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - v6;
  v14[2] = a1;
  v14[3] = a2;
  v14[0] = 0x3D44495026;
  v14[1] = 0xE500000000000000;
  v8 = sub_26B2BB778();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26B2A4268();
  sub_26B2BBD68();
  v10 = v9;
  sub_26B2A42BC(v7);
  result = 0;
  if ((v10 & 1) == 0)
  {
    v12 = sub_26B2BBB08();
    v13 = MEMORY[0x26D673A60](v12);

    return v13;
  }

  return result;
}

uint64_t sub_26B2A455C()
{
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](0);
  return sub_26B2BC238();
}

uint64_t sub_26B2A45C8(uint64_t a1)
{
  sub_26B2BC1E8();
  MEMORY[0x26D6742C0](0);
  return sub_26B2BC238();
}

uint64_t sub_26B2A4614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26B2BC138();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26B2A46A0(uint64_t a1)
{
  v2 = sub_26B2A5814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2A46DC(uint64_t a1)
{
  v2 = sub_26B2A5814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EntityID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4370, &qword_26B2BE928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A5814();
  sub_26B2BC258();
  sub_26B2BC0E8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t EntityID.hashValue.getter()
{
  v1 = *v0;
  sub_26B2BC1E8();
  MEMORY[0x26D6742F0](v1);
  return sub_26B2BC238();
}

uint64_t EntityID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4378, &qword_26B2BE930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A5814();
  sub_26B2BC248();
  if (!v2)
  {
    v10 = sub_26B2BBFF8();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2A4A74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4370, &qword_26B2BE928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A5814();
  sub_26B2BC258();
  sub_26B2BC0E8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26B2A4BC0()
{
  v1 = *v0;
  sub_26B2BC1E8();
  MEMORY[0x26D6742F0](v1);
  return sub_26B2BC238();
}

uint64_t sub_26B2A4C34(uint64_t a1)
{
  v2 = *v1;
  sub_26B2BC1E8();
  MEMORY[0x26D6742F0](v2);
  return sub_26B2BC238();
}

unsigned __int8 *sub_26B2A4C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_26B2A5B30();

  result = sub_26B2BBAF8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26B2A5214(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26B2BBE98();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
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

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_26B2A5214(uint64_t a1, unint64_t a2)
{
  v2 = sub_26B2BBB08();
  v6 = sub_26B2A5294(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26B2A5294(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26B2BBD48();
    if (!v9 || (v10 = v9, v11 = sub_26B2A53EC(v9, 0), v12 = sub_26B2A5460(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26B2BB9D8();

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
      return sub_26B2BB9D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26B2BBE98();
LABEL_4:

  return sub_26B2BB9D8();
}

void *sub_26B2A53EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43A0, &qword_26B2BEBC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26B2A5460(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_26B2A5680(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26B2BBAC8();
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
          result = sub_26B2BBE98();
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

    result = sub_26B2A5680(v12, a6, a7);
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

    result = sub_26B2BBA98();
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

unint64_t sub_26B2A5680(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B2BBAD8();
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
    v5 = MEMORY[0x26D673B70](15, a1 >> 16);
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

uint64_t sub_26B2A56FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_26B2BBE98();
  }

  result = sub_26B2A5B88(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_26B2A57C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_26B2BBB08();
  }

  __break(1u);
  return result;
}

unint64_t sub_26B2A5814()
{
  result = qword_2803F78B0[0];
  if (!qword_2803F78B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F78B0);
  }

  return result;
}

unint64_t sub_26B2A5868(void *a1)
{
  a1[1] = sub_26B2944A8();
  a1[2] = sub_26B293E3C();
  a1[3] = sub_26B2A58A8();
  result = sub_26B2A58FC();
  a1[4] = result;
  return result;
}

unint64_t sub_26B2A58A8()
{
  result = qword_2803F4380;
  if (!qword_2803F4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4380);
  }

  return result;
}

unint64_t sub_26B2A58FC()
{
  result = qword_2803F4388;
  if (!qword_2803F4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4388);
  }

  return result;
}

unint64_t sub_26B2A5954()
{
  result = qword_2803F4390;
  if (!qword_2803F4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EntityID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_26B2A5A2C()
{
  result = qword_2803F7D40[0];
  if (!qword_2803F7D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F7D40);
  }

  return result;
}

unint64_t sub_26B2A5A84()
{
  result = qword_2803F7E50;
  if (!qword_2803F7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F7E50);
  }

  return result;
}

unint64_t sub_26B2A5ADC()
{
  result = qword_2803F7E58[0];
  if (!qword_2803F7E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F7E58);
  }

  return result;
}

unint64_t sub_26B2A5B30()
{
  result = qword_2803F4398;
  if (!qword_2803F4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4398);
  }

  return result;
}

uint64_t sub_26B2A5B88(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_26B2A5680(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_26B2BBAB8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_26B2A5680(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_26B2A5680(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_26B2BBAB8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
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

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

__int128 *sub_26B2A6008()
{
  if (qword_2803F7EE0 != -1)
  {
    swift_once();
  }

  return &xmmword_2803FC2B0;
}

double sub_26B2A6058@<D0>(_OWORD *a1@<X8>)
{
  if (qword_2803F7EE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&xmmword_2803FC2B0;
  *a1 = xmmword_2803FC2B0;
  return result;
}

uint64_t sub_26B2A60D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_2803F7EE0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_2803FC2B0 = v1;
  *(&xmmword_2803FC2B0 + 1) = v2;
  return result;
}

uint64_t (*sub_26B2A6154(uint64_t a1))()
{
  if (qword_2803F7EE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B2A61DC()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV2(0) + 20);
  v2 = *v1;
  sub_26B28E8AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for SpatialInspectorDataV2(uint64_t a1)
{
  result = qword_2803F8070;
  if (!qword_2803F8070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B2A626C()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV2(0) + 24);
  v2 = *v1;
  sub_26B28E8AC(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26B2A62B0()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV2(0) + 28);
  v2 = *v1;
  sub_26B28E988(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_26B2A62F4()
{
  v1 = v0 + *(type metadata accessor for SpatialInspectorDataV2(0) + 32);
  v2 = *v1;
  sub_26B28E988(*v1, *(v1 + 8));
  return v2;
}

int *sub_26B2A6338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_26B2BB768();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for SpatialInspectorDataV2(0);
  v21 = (a9 + result[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + result[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + result[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + result[8]);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

unint64_t sub_26B2A6410()
{
  v1 = *v0;
  v2 = 0x536465646F636E65;
  v3 = 0xD000000000000012;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26B2A64C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B2A73BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B2A64F8(uint64_t a1)
{
  v2 = sub_26B2A6854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2A6534(uint64_t a1)
{
  v2 = sub_26B2A6854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B2A6570(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43A8, &qword_26B2BEBD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A6854();
  sub_26B2BC258();
  LOBYTE(v22) = 0;
  sub_26B2BB768();
  sub_26B2A6E98(&qword_2803F3D78, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26B2BC0B8();
  if (!v2)
  {
    v10 = type metadata accessor for SpatialInspectorDataV2(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v22 = *v11;
    v23 = v12;
    v21 = 1;
    sub_26B28E8AC(v22, v12);
    sub_26B28F1C4();
    sub_26B2BC0B8();
    sub_26B28F218(v22, v23);
    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v22 = *v13;
    v23 = v14;
    v21 = 2;
    sub_26B28E8AC(v22, v14);
    sub_26B2BC0B8();
    sub_26B28F218(v22, v23);
    v15 = (v3 + v10[7]);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v21 = 3;
    sub_26B28E988(v22, v16);
    sub_26B2BC048();
    sub_26B28F26C(v22, v23);
    v17 = (v3 + v10[8]);
    v18 = v17[1];
    v22 = *v17;
    v23 = v18;
    v21 = 4;
    sub_26B28E988(v22, v18);
    sub_26B2BC048();
    sub_26B28F26C(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B2A6854()
{
  result = qword_2803F7EE8[0];
  if (!qword_2803F7EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F7EE8);
  }

  return result;
}

void sub_26B2A68A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26B2BB768();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43B0, &qword_26B2BEBD8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SpatialInspectorDataV2(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A6854();
  v25 = v10;
  sub_26B2BC248();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = a1;
    v15 = v21;
    LOBYTE(v26) = 0;
    sub_26B2A6E98(&qword_2803F3DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v16 = v22;
    v17 = v24;
    sub_26B2BBFC8();
    (*(v15 + 32))(v14, v16, v4);
    v27 = 1;
    sub_26B28F880();
    sub_26B2BBFC8();
    *&v14[v11[5]] = v26;
    v27 = 2;
    v22 = 0;
    sub_26B2BBFC8();
    *&v14[v11[6]] = v26;
    v27 = 3;
    sub_26B2BBF58();
    *&v14[v11[7]] = v26;
    v27 = 4;
    sub_26B2BBF58();
    (*(v23 + 8))(v25, v17);
    *&v14[v11[8]] = v26;
    sub_26B2A6DB0(v14, v20);
    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_26B2918E0(v14);
  }
}

uint64_t sub_26B2A6DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialInspectorDataV2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B2A6E14(uint64_t a1)
{
  *(a1 + 8) = sub_26B2A6E98(&qword_2803F3E18, type metadata accessor for SpatialInspectorDataV2, &unk_26B2BEBFC);
  result = sub_26B2A6E98(&qword_2803F43B8, type metadata accessor for SpatialInspectorDataV2, &unk_26B2BEC24);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26B2A6E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B2A6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B2BB768();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26B2A7008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26B2BB768();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

void sub_26B2A70D0(uint64_t a1)
{
  sub_26B2BB768();
  if (v1 <= 0x3F)
  {
    sub_26B28FD4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for SpatialInspectorDataV2.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpatialInspectorDataV2.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B2A72B8()
{
  result = qword_2803F8180[0];
  if (!qword_2803F8180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8180);
  }

  return result;
}

unint64_t sub_26B2A7310()
{
  result = qword_2803F8290;
  if (!qword_2803F8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F8290);
  }

  return result;
}

unint64_t sub_26B2A7368()
{
  result = qword_2803F8298[0];
  if (!qword_2803F8298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8298);
  }

  return result;
}

uint64_t sub_26B2A73BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026B2C3E20 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536465646F636E65 && a2 == 0xEC000000656E6563 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026B2C3E40 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000026B2C3E60 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026B2C4290 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_26B2BC138();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26B2A7578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746169636F737361;
  }

  else
  {
    v3 = 0x696D697263736964;
  }

  if (v2)
  {
    v4 = 0xEC0000006574616ELL;
  }

  else
  {
    v4 = 0xEF65756C61566465;
  }

  if (*a2)
  {
    v5 = 0x746169636F737361;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (*a2)
  {
    v6 = 0xEF65756C61566465;
  }

  else
  {
    v6 = 0xEC0000006574616ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B2BC138();
  }

  return v8 & 1;
}

uint64_t sub_26B2A7634()
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

uint64_t sub_26B2A76CC(uint64_t a1)
{
  sub_26B2BB9E8();
}

uint64_t sub_26B2A7750(uint64_t a1)
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

uint64_t sub_26B2A77E4@<X0>(char *a2@<X8>)
{
  v3 = sub_26B2BBF18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26B2A7844(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x746169636F737361;
  }

  v3 = 0xEC0000006574616ELL;
  if (*v1)
  {
    v3 = 0xEF65756C61566465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26B2A7898()
{
  if (*v0)
  {
    return 0x746169636F737361;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_26B2A78E8@<X0>(char *a3@<X8>)
{
  v4 = sub_26B2BBF18();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_26B2A794C(uint64_t a1)
{
  v2 = sub_26B2A9144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2A7988(uint64_t a1)
{
  v2 = sub_26B2A9144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B2A79C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F44D0, &qword_26B2BF028);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 24);
  v12 = *(v1 + 16);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AB7E0();
  sub_26B2BC258();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_26B2BC078();
  if (!v9)
  {
    v15 = v12;
    v16 = v13;
    v17 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    sub_26B2A3128(&qword_2803F44D8, &qword_2803F41D0, &unk_26B2BFF80, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BC0B8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26B2A7BB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F44E0, &qword_26B2BF030);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AB7E0();
  sub_26B2BC248();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v10 = sub_26B2BBF88();
  v12 = v11;
  v17 = a2;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
  v21 = 1;
  sub_26B2A3128(&qword_2803F44E8, &qword_2803F41D0, &unk_26B2BFF80, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BBFC8();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  v14 = v20;
  v15 = v17;
  *v17 = v18;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2A7E14()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_26B2A7E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B2BC138();

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

uint64_t sub_26B2A7F14(uint64_t a1)
{
  v2 = sub_26B2AB7E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2A7F50(uint64_t a1)
{
  v2 = sub_26B2AB7E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorPropertyValue.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = sub_26B2BB7C8();
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43C0, &qword_26B2BEDB0);
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v9);
  v11 = &v58 - v10;
  v13 = *v1;
  v12 = *(v1 + 8);
  v14 = *(v1 + 24);
  v65 = *(v1 + 16);
  v62 = v14;
  v63 = v12;
  v15 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A9144();
  sub_26B2BC258();
  v16 = v13;
  switch(v15)
  {
    case 1:
      LOBYTE(v70) = 0;
      goto LABEL_46;
    case 2:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      LOBYTE(v70) = 1;
      sub_26B2BC098();
      goto LABEL_63;
    case 3:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      LOBYTE(v70) = 1;
      sub_26B2BC088();
      goto LABEL_63;
    case 4:
      LOBYTE(v70) = 0;
      goto LABEL_37;
    case 5:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      LOBYTE(v75) = 1;
      v23 = &qword_2803F4078;
      v24 = &qword_26B2BDE60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4078, &qword_26B2BDE60);
      v25 = &qword_2803F4468;
      v26 = MEMORY[0x277D84AD0];
      goto LABEL_44;
    case 6:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      v71 = v63;
      LOBYTE(v75) = 1;
      v23 = &qword_2803F3D88;
      v24 = &qword_26B2BDEC0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
      v25 = &qword_2803F3D90;
      v26 = MEMORY[0x277D84AF0];
      goto LABEL_44;
    case 7:
      LOBYTE(v70) = 0;
      goto LABEL_42;
    case 8:
      LOBYTE(v70) = 0;
LABEL_42:
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      v71 = v63;
      LOBYTE(v75) = 1;
      v23 = &qword_2803F4130;
      v24 = &qword_26B2BDF20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
      v25 = &qword_2803F4440;
      v26 = MEMORY[0x277D84B18];
LABEL_44:
      sub_26B2A3128(v25, v23, v24, v26);
      sub_26B2BC0B8();
      goto LABEL_63;
    case 9:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      LOBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4458, &qword_26B2BEDE8);
      sub_26B2AB11C();
      goto LABEL_62;
    case 10:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      LOBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4448, &qword_26B2BEDE0);
      sub_26B2AB06C();
      goto LABEL_62;
    case 11:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      LOBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4430, &qword_26B2BEDD8);
      sub_26B2AAFBC();
      goto LABEL_62;
    case 12:
      LOBYTE(v70) = 0;
      goto LABEL_37;
    case 13:
      LOBYTE(v70) = 0;
      goto LABEL_37;
    case 14:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v19 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      if (!v19)
      {
        return (*(v64 + 8))(v11, v69);
      }

      v20 = v19;
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v19, kCGRenderingIntentDefault, v13, 0);
      if (CopyByMatchingToColorSpace)
      {
        v22 = CopyByMatchingToColorSpace;
        v70 = sub_26B2BBCB8();
        LOBYTE(v75) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4408, &qword_26B2BEDC8);
        sub_26B2AAE60();
        sub_26B2BC0B8();

        (*(v64 + 8))(v11, v69);
      }

      else
      {

        return (*(v64 + 8))(v11, v69);
      }

    case 15:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      v71 = v63;
      LOBYTE(v75) = 1;
      sub_26B28F1C4();
      sub_26B2BC0B8();
      goto LABEL_63;
    case 16:
      LOBYTE(v70) = 0;
      goto LABEL_37;
    case 17:
      LOBYTE(v70) = 0;
      goto LABEL_37;
    case 18:
      LOBYTE(v70) = 0;
      goto LABEL_37;
    case 19:
      LOBYTE(v70) = 0;
      goto LABEL_46;
    case 20:
      LOBYTE(v70) = 0;
LABEL_46:
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      LOBYTE(v70) = 1;
      sub_26B2BC0E8();
      goto LABEL_63;
    case 21:
      LOBYTE(v70) = 0;
LABEL_37:
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      LOBYTE(v70) = 1;
      sub_26B2BC078();
      goto LABEL_63;
    case 22:
    case 23:
    case 24:
      v27 = v13;
      LOBYTE(v70) = 0;
      v28 = v63;

      v29 = v65;

      v30 = v62;

      sub_26B2BC078();
      v18 = v66;
      if (v2)
      {
        v61 = v11;

        v60 = 0;
        v16 = v27;
        v31 = v28;
        v17 = v29;
        v32 = v68;
        goto LABEL_53;
      }

      v70 = v27;
      v71 = v28;
      v72 = v29;
      v73 = v30;
      LOBYTE(v75) = 1;
      sub_26B2AAE0C();
      sub_26B2BC0B8();

      return (*(v64 + 8))(v11, v69);
    case 25:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      LOBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43F8, &qword_26B2BEDC0);
      sub_26B2AB304(&qword_2803F4400, sub_26B2AADB8, MEMORY[0x277D83948]);
      goto LABEL_62;
    case 26:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      LOBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43D8, &qword_26B2BEDB8);
      sub_26B2AB1CC(&qword_2803F43E0, sub_26B2AAD64, sub_26B2AADB8, MEMORY[0x277D83508]);
LABEL_62:
      sub_26B2BC0B8();
      goto LABEL_63;
    case 27:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (v2)
      {
        goto LABEL_52;
      }

      v70 = v13;
      v71 = v63;
      LOBYTE(v75) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41E8, &qword_26B2BDFB0);
      sub_26B2AACE8();
      sub_26B2BC0B8();
      goto LABEL_63;
    default:
      LOBYTE(v70) = 0;
      sub_26B2BC078();
      v17 = v65;
      v18 = v66;
      if (!v2)
      {
        LOBYTE(v70) = 1;
        sub_26B2BC0D8();
LABEL_63:
        v54 = *(v64 + 8);
        v55 = v11;
        goto LABEL_58;
      }

LABEL_52:
      v3 = v2;
      v60 = 0;
      v61 = v11;
      v32 = v68;
      v31 = v63;
LABEL_53:
      v33 = sub_26B29A444();
      (*(v32 + 16))(v18, v33, v67);
      v34 = v16;
      v35 = v31;
      v36 = v31;
      v37 = v16;
      v38 = v62;
      sub_26B29B834(v34, v35, v17, v62, v15);
      v39 = v3;
      v40 = sub_26B2BB7B8();
      v41 = sub_26B2BBCF8();
      sub_26B2A2FB0(v37, v36, v17, v38, v15);

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v75 = v65;
        *v42 = 136315394;
        v70 = v37;
        v71 = v36;
        v72 = v17;
        v73 = v38;
        v74 = v15;
        sub_26B29B834(v37, v36, v17, v38, v15);
        sub_26B2AAC94();
        v43 = sub_26B2BC108();
        v44 = v68;
        v46 = v45;
        sub_26B2A2FB0(v70, v71, v72, v73, v74);
        v47 = sub_26B2AA760(v43, v46, &v75);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2112;
        v48 = v3;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 14) = v49;
        v50 = v59;
        *v59 = v49;
        _os_log_impl(&dword_26B28D000, v40, v41, "Failed to encode InspectorPropertyValue: %s, because: %@", v42, 0x16u);
        sub_26B29821C(v50);
        MEMORY[0x26D6748E0](v50, -1, -1);
        v51 = v65;
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x26D6748E0](v51, -1, -1);
        MEMORY[0x26D6748E0](v42, -1, -1);

        (*(v44 + 8))(v66, v67);
      }

      else
      {

        (*(v68 + 8))(v18, v67);
      }

      LOBYTE(v70) = 0;
      v53 = v60;
      v52 = v61;
      sub_26B2BC078();
      if (v53)
      {
        v54 = *(v64 + 8);
        v55 = v52;
LABEL_58:
        v56 = v69;
        return v54(v55, v56);
      }

      LOBYTE(v70) = 1;
      sub_26B2BC078();
      v54 = *(v64 + 8);
      v55 = v52;
      v56 = v69;
      return v54(v55, v56);
  }
}

unint64_t sub_26B2A9144()
{
  result = qword_2803F8330;
  if (!qword_2803F8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F8330);
  }

  return result;
}

uint64_t InspectorPropertyValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_26B2BB7C8();
  v61 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4470, &qword_26B2BEDF0);
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v57 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2A9144();
  v15 = v64;
  sub_26B2BC248();
  if (v15)
  {
    v17 = a1;
  }

  else
  {
    v60 = v7;
    v64 = a1;
    LOBYTE(v65) = 0;
    v16 = v11;
    v19 = sub_26B2BBF88();
    v21 = v20;

    v22 = sub_26B2BC168();

    switch(v22)
    {
      case 0:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBFE8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        v25 = 0;
        v26 = 0uLL;
        goto LABEL_43;
      case 1:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBFF8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        v26 = 0uLL;
        v25 = 1;
        goto LABEL_43;
      case 2:
        LOBYTE(v65) = 1;
        sub_26B2BBFA8();
        v32 = v31;
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v32;
        v26 = 0uLL;
        v25 = 2;
        goto LABEL_43;
      case 3:
        LOBYTE(v65) = 1;
        v34 = sub_26B2BBF98();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v34 & 1;
        v26 = 0uLL;
        v25 = 3;
        goto LABEL_42;
      case 4:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v29;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 4;
        goto LABEL_43;
      case 5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4078, &qword_26B2BDE60);
        v68 = 1;
        sub_26B2A3128(&qword_2803F44C8, &qword_2803F4078, &qword_26B2BDE60, MEMORY[0x277D84AD8]);
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        v17 = v64;
        SRGB = v65;
        v26 = 0uLL;
        v25 = 5;
        goto LABEL_44;
      case 6:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F3D88, &qword_26B2BDEC0);
        v68 = 1;
        sub_26B2A3128(&qword_2803F3DB0, &qword_2803F3D88, &qword_26B2BDEC0, MEMORY[0x277D84AF8]);
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v26 = 0uLL;
        v25 = 6;
        v17 = v64;
        goto LABEL_44;
      case 7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
        v68 = 1;
        sub_26B2A3128(&qword_2803F44B0, &qword_2803F4130, &qword_26B2BDF20, MEMORY[0x277D84B20]);
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v26 = 0uLL;
        v25 = 7;
        v17 = v64;
        goto LABEL_44;
      case 8:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4130, &qword_26B2BDF20);
        v68 = 1;
        sub_26B2A3128(&qword_2803F44B0, &qword_2803F4130, &qword_26B2BDF20, MEMORY[0x277D84B20]);
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v26 = 0uLL;
        v25 = 8;
        v17 = v64;
        goto LABEL_44;
      case 9:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4458, &qword_26B2BEDE8);
        v68 = 1;
        sub_26B2AB608();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v65;
        v26 = 0uLL;
        v25 = 9;
        goto LABEL_43;
      case 10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4448, &qword_26B2BEDE0);
        v68 = 1;
        sub_26B2AB558();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v65;
        v26 = 0uLL;
        v25 = 10;
        goto LABEL_42;
      case 11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4430, &qword_26B2BEDD8);
        v68 = 1;
        sub_26B2AB4A8();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v65;
        v26 = 0uLL;
        v25 = 11;
        goto LABEL_42;
      case 12:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v30;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 17;
        goto LABEL_43;
      case 13:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v37;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 16;
        goto LABEL_43;
      case 14:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v28;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 18;
        goto LABEL_43;
      case 15:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v33;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 12;
        goto LABEL_43;
      case 16:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v27;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 13;
        goto LABEL_42;
      case 17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4420, &qword_26B2BEDD0);
        v68 = 1;
        sub_26B2AB3D0();
        sub_26B2BBFC8();

        v35 = *(v65 + 2);
        if (v35 == 1)
        {
          (*(v63 + 8))(v14, v11);

LABEL_41:
          SRGB = 0;
          v24 = 0;
          v26 = 0uLL;
          v25 = 27;
LABEL_43:
          v17 = v64;
        }

        else
        {
          v36 = v64;
          if (v35 <= 2)
          {
            (*(v63 + 8))(v14, v11);

            v17 = v36;
            SRGB = 0;
            v24 = 0;
            v26 = 0uLL;
            v25 = 27;
          }

          else
          {
            if (v35 == 3)
            {
              (*(v63 + 8))(v14, v11);

              SRGB = 0;
              v24 = 0;
              v26 = 0uLL;
              v25 = 27;
            }

            else
            {
              v53 = v65[4];
              v54 = v65[5];
              v55 = v65[6];
              v56 = v65[7];

              SRGB = CGColorCreateSRGB(v53, v54, v55, v56);
              (*(v63 + 8))(v14, v11);
              v24 = 0;
              v26 = 0uLL;
              v25 = 14;
            }

            v17 = v36;
          }
        }

LABEL_44:
        v52 = v62;
        *v62 = SRGB;
        v52[1] = v24;
        *(v52 + 1) = v26;
        *(v52 + 32) = v25;
        break;
      case 18:
        v68 = 1;
        sub_26B28F880();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v26 = 0uLL;
        v25 = 15;
        goto LABEL_43;
      case 19:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v38;
        (*(v63 + 8))(v14, v11);

        v26 = 0uLL;
        v25 = 21;
        goto LABEL_43;
      case 20:
        v68 = 1;
        sub_26B2AB37C();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v25 = 22;
        goto LABEL_28;
      case 21:
        v68 = 1;
        sub_26B2AB37C();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v25 = 23;
LABEL_28:
        v26 = v67;
        goto LABEL_43;
      case 22:
        v68 = 1;
        sub_26B2AB37C();
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        SRGB = v65;
        v24 = v66;
        v25 = 24;
        v26 = v67;
        goto LABEL_42;
      case 23:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBFF8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        v26 = 0uLL;
        v25 = 19;
LABEL_42:
        v17 = v64;
        goto LABEL_44;
      case 24:
        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBFF8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        v26 = 0uLL;
        v25 = 20;
        goto LABEL_43;
      case 25:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43F8, &qword_26B2BEDC0);
        v68 = 1;
        sub_26B2AB304(&qword_2803F4490, sub_26B2AB2B0, MEMORY[0x277D83978]);
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v65;
        v26 = 0uLL;
        v25 = 25;
        goto LABEL_43;
      case 26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43D8, &qword_26B2BEDB8);
        v68 = 1;
        sub_26B2AB1CC(&qword_2803F4478, sub_26B2AB25C, sub_26B2AB2B0, MEMORY[0x277D83528]);
        sub_26B2BBFC8();
        (*(v63 + 8))(v14, v11);

        v24 = 0;
        SRGB = v65;
        v26 = 0uLL;
        v25 = 26;
        goto LABEL_43;
      case 27:

        LOBYTE(v65) = 1;
        SRGB = sub_26B2BBF88();
        v24 = v50;
        v51 = v64;
        (*(v63 + 8))(v14, v11);
        v26 = 0uLL;
        v25 = 27;
        v17 = v51;
        goto LABEL_44;
      default:
        v39 = sub_26B29A444();
        v40 = v3;
        (*(v61 + 16))(v10, v39, v3);

        v41 = sub_26B2BB7B8();
        v42 = sub_26B2BBCF8();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v59 = v16;
          v44 = v43;
          v45 = swift_slowAlloc();
          v58 = v40;
          v46 = v45;
          v65 = v45;
          *v44 = 136315138;
          v47 = sub_26B2AA760(v19, v21, &v65);
          v48 = v41;
          v49 = v47;

          *(v44 + 4) = v49;
          _os_log_impl(&dword_26B28D000, v48, v42, "Failed to identify discriminate of: %s when decoding InspectorPropertyValue", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x26D6748E0](v46, -1, -1);
          MEMORY[0x26D6748E0](v44, -1, -1);

          (*(v61 + 8))(v10, v58);
          (*(v63 + 8))(v14, v59);
        }

        else
        {

          (*(v61 + 8))(v10, v40);
          (*(v63 + 8))(v14, v16);
        }

        goto LABEL_41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_26B2AA760(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B2AA82C(v11, 0, 0, 1, a1, a2);
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
    sub_26B29EFCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B2AA82C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26B2AA938(a5, a6);
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
    result = sub_26B2BBE98();
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

void *sub_26B2AA938(uint64_t a1, unint64_t a2)
{
  v3 = sub_26B2AA984(a1, a2);
  sub_26B2AAAB4(&unk_287BCF2E8);
  return v3;
}

void *sub_26B2AA984(uint64_t a1, unint64_t a2)
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

  v6 = sub_26B2A53EC(v5, 0);
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

  result = sub_26B2BBE98();
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
        v10 = sub_26B2BBA88();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B2A53EC(v10, 0);
        result = sub_26B2BBDF8();
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

void sub_26B2AAAB4(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_26B2AABA0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_26B2AABA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F43A0, &qword_26B2BEBC8);
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

unint64_t sub_26B2AAC94()
{
  result = qword_2803F43C8;
  if (!qword_2803F43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F43C8);
  }

  return result;
}

unint64_t sub_26B2AACE8()
{
  result = qword_2803F43D0;
  if (!qword_2803F43D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F41E8, &qword_26B2BDFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F43D0);
  }

  return result;
}

unint64_t sub_26B2AAD64()
{
  result = qword_2803F43E8;
  if (!qword_2803F43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F43E8);
  }

  return result;
}

unint64_t sub_26B2AADB8()
{
  result = qword_2803F43F0;
  if (!qword_2803F43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F43F0);
  }

  return result;
}

unint64_t sub_26B2AAE0C()
{
  result = qword_2803F8338;
  if (!qword_2803F8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F8338);
  }

  return result;
}

unint64_t sub_26B2AAE60()
{
  result = qword_2803F4410;
  if (!qword_2803F4410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4408, &qword_26B2BEDC8);
    sub_26B2AAEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4410);
  }

  return result;
}

unint64_t sub_26B2AAEE4()
{
  result = qword_2803F4418;
  if (!qword_2803F4418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4420, &qword_26B2BEDD0);
    sub_26B2AAF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4418);
  }

  return result;
}

unint64_t sub_26B2AAF68()
{
  result = qword_2803F4428;
  if (!qword_2803F4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4428);
  }

  return result;
}

unint64_t sub_26B2AAFBC()
{
  result = qword_2803F4438;
  if (!qword_2803F4438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4430, &qword_26B2BEDD8);
    sub_26B2A3128(&qword_2803F4440, &qword_2803F4130, &qword_26B2BDF20, MEMORY[0x277D84B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4438);
  }

  return result;
}

unint64_t sub_26B2AB06C()
{
  result = qword_2803F4450;
  if (!qword_2803F4450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4448, &qword_26B2BEDE0);
    sub_26B2A3128(&qword_2803F3D90, &qword_2803F3D88, &qword_26B2BDEC0, MEMORY[0x277D84AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4450);
  }

  return result;
}

unint64_t sub_26B2AB11C()
{
  result = qword_2803F4460;
  if (!qword_2803F4460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4458, &qword_26B2BEDE8);
    sub_26B2A3128(&qword_2803F4468, &qword_2803F4078, &qword_26B2BDE60, MEMORY[0x277D84AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4460);
  }

  return result;
}

uint64_t sub_26B2AB1CC(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F43D8, &qword_26B2BEDB8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2AB25C()
{
  result = qword_2803F4480;
  if (!qword_2803F4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4480);
  }

  return result;
}

unint64_t sub_26B2AB2B0()
{
  result = qword_2803F4488;
  if (!qword_2803F4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4488);
  }

  return result;
}

uint64_t sub_26B2AB304(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F43F8, &qword_26B2BEDC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B2AB37C()
{
  result = qword_2803F8340[0];
  if (!qword_2803F8340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8340);
  }

  return result;
}

unint64_t sub_26B2AB3D0()
{
  result = qword_2803F4498;
  if (!qword_2803F4498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4420, &qword_26B2BEDD0);
    sub_26B2AB454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4498);
  }

  return result;
}

unint64_t sub_26B2AB454()
{
  result = qword_2803F44A0;
  if (!qword_2803F44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F44A0);
  }

  return result;
}

unint64_t sub_26B2AB4A8()
{
  result = qword_2803F44A8;
  if (!qword_2803F44A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4430, &qword_26B2BEDD8);
    sub_26B2A3128(&qword_2803F44B0, &qword_2803F4130, &qword_26B2BDF20, MEMORY[0x277D84B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F44A8);
  }

  return result;
}

unint64_t sub_26B2AB558()
{
  result = qword_2803F44B8;
  if (!qword_2803F44B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4448, &qword_26B2BEDE0);
    sub_26B2A3128(&qword_2803F3DB0, &qword_2803F3D88, &qword_26B2BDEC0, MEMORY[0x277D84AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F44B8);
  }

  return result;
}

unint64_t sub_26B2AB608()
{
  result = qword_2803F44C0;
  if (!qword_2803F44C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4458, &qword_26B2BEDE8);
    sub_26B2A3128(&qword_2803F44C8, &qword_2803F4078, &qword_26B2BDE60, MEMORY[0x277D84AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F44C0);
  }

  return result;
}

unint64_t sub_26B2AB6DC()
{
  result = qword_2803F85D0[0];
  if (!qword_2803F85D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F85D0);
  }

  return result;
}

unint64_t sub_26B2AB734()
{
  result = qword_2803F87E0;
  if (!qword_2803F87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F87E0);
  }

  return result;
}

unint64_t sub_26B2AB78C()
{
  result = qword_2803F87E8[0];
  if (!qword_2803F87E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F87E8);
  }

  return result;
}

unint64_t sub_26B2AB7E0()
{
  result = qword_2803F8870[0];
  if (!qword_2803F8870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8870);
  }

  return result;
}

unint64_t sub_26B2AB848()
{
  result = qword_2803F8980[0];
  if (!qword_2803F8980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8980);
  }

  return result;
}

unint64_t sub_26B2AB8A0()
{
  result = qword_2803F8A90;
  if (!qword_2803F8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F8A90);
  }

  return result;
}

unint64_t sub_26B2AB8F8()
{
  result = qword_2803F8A98[0];
  if (!qword_2803F8A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8A98);
  }

  return result;
}

void sub_26B2AB954(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InspectorEntityRepresentation();
  sub_26B2AB9A0();

  InspectorCollection.init()(v2, a1);
}

unint64_t sub_26B2AB9A0()
{
  result = qword_2803F44F0;
  if (!qword_2803F44F0)
  {
    type metadata accessor for InspectorEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F44F0);
  }

  return result;
}

uint64_t InspectorHierarchyRepresentation.entities.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 InspectorHierarchyRepresentation.entities.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

void InspectorHierarchyRepresentation.init()(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InspectorEntityRepresentation();
  sub_26B2AB9A0();

  InspectorCollection.init()(v2, a1);
}

void sub_26B2ABAF8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26B2BC138();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26B2ABB80(uint64_t a1)
{
  v2 = sub_26B2ABDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2ABBBC(uint64_t a1)
{
  v2 = sub_26B2ABDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorHierarchyRepresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F44F8, &qword_26B2BF140);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2ABDA0();

  sub_26B2BC258();
  v11[0] = v8;
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
  sub_26B2ABFFC(&qword_2803F4508, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BC0B8();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26B2ABDA0()
{
  result = qword_2803F8B20[0];
  if (!qword_2803F8B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8B20);
  }

  return result;
}

void InspectorHierarchyRepresentation.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4510, &qword_26B2BF150);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  v10 = type metadata accessor for InspectorEntityRepresentation();
  sub_26B2AB9A0();
  InspectorCollection.init()(v10, &v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2ABDA0();
  sub_26B2BC248();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
    sub_26B2ABFFC(&qword_2803F4518, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BBFC8();
    (*(v6 + 8))(v9, v5);
    v11 = v13[0];
    v12 = v13[1];

    *a2 = v11;
    a2[1] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_26B2ABFFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4500, &qword_26B2BF148);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B2AC07C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B2AC0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B2AC124()
{
  result = qword_2803F8D30[0];
  if (!qword_2803F8D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8D30);
  }

  return result;
}

unint64_t sub_26B2AC17C()
{
  result = qword_2803F8E40;
  if (!qword_2803F8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F8E40);
  }

  return result;
}

unint64_t sub_26B2AC1D4()
{
  result = qword_2803F8E48[0];
  if (!qword_2803F8E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8E48);
  }

  return result;
}

uint64_t sub_26B2AC228(uint64_t a1, unint64_t a2)
{

  sub_26B2ADA8C(1, a1, a2, v4);

  v5 = sub_26B2BBD38();

  sub_26B2ADB28(1uLL, a1, a2, v6);

  sub_26B2A5B30();
  sub_26B2BBA48();

  return v5;
}

double sub_26B2AC324()
{
  v1 = *(v0 + 8);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_26B2AC418(*v0, *(v0 + 8));
    if (v4)
    {
      if (sub_26B2BB8C8())
      {
        sub_26B2BBA08();
        sub_26B2BB8B8();

        sub_26B2ADBD8();
        sub_26B2BB9A8();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_26B2AC418(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26B2BBAE8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B2AC460(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B2BC298();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30[0] = a1;
  v30[1] = a2;
  v30[2] = 0;
  v30[3] = v9;

  result = sub_26B2BBA78();
  if (!v11)
  {
    v29 = 0;
LABEL_42:

    return v29;
  }

  v12 = result;
  v13 = v11;
  v14 = 0;
  v15 = (v5 + 8);
  while (!__OFADD__(v14, 1))
  {
    if ((v13 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v20 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_44;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v25 = sub_26B2BB9B8();
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v22 = v12;
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v21 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_26B2BBE98();
        }

        v22 = *v21;
      }

      v23 = v22;
      v24 = (__clz(~v22) - 24) << 16;
      if (v23 < 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 65541;
      }
    }

    v26 = 4 * v20;
    if (4 * v20 != v25 >> 14)
    {
      goto LABEL_24;
    }

    result = sub_26B2AD4FC(v12, v13);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_45;
    }

    sub_26B2BC2A8();
    v27 = sub_26B2BC278();
    (*v15)(v8, v4);
    if ((v27 & 1) == 0)
    {
LABEL_24:
      if ((sub_26B2BB8E8() & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v13 & 0x1000000000000000) != 0)
      {
        if (v26 != sub_26B2BB9B8() >> 14)
        {
          goto LABEL_31;
        }
      }

      else if (v26 != ((4 * sub_26B2BBE18()) & 0x3FFFFFFFFFFFFLL))
      {
        goto LABEL_31;
      }

      result = sub_26B2AD4FC(v12, v13);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_46;
      }

      sub_26B2BC2A8();
      v28 = sub_26B2BC288();
      (*v15)(v8, v4);
      if ((v28 & 1) == 0)
      {
LABEL_31:
        if (sub_26B2BB8E8() & 1) != 0 && (sub_26B2BB8D8())
        {
          goto LABEL_36;
        }
      }
    }

    if (v14 != sub_26B2BB9F8())
    {
      if (!v14)
      {
        goto LABEL_5;
      }

      MEMORY[0x26D673B30](32, 0xE100000000000000);
    }

LABEL_36:
    if (v14)
    {
      MEMORY[0x26D673B20](v12, v13);
      goto LABEL_6;
    }

LABEL_5:
    v16 = sub_26B2BB8B8();
    v18 = v17;

    MEMORY[0x26D673B30](v16, v18);
LABEL_6:

    result = sub_26B2BBA78();
    v12 = result;
    v13 = v19;
    ++v14;
    if (!v19)
    {
      v29 = v31;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_26B2AC7AC(unint64_t a1, unint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v63 = sub_26B2BC298();
  v4 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26B2BB9F8() < 1)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = v9 | (v8 << 16);
  v61 = sub_26B2BBA18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4528, &qword_26B2BF338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2BDD20;
  v65 = a1;
  v66 = inited;
  *(inited + 32) = 15;
  v67[0] = a1;
  v67[1] = a2;
  v67[2] = 0;
  v67[3] = v8;

  v12 = v67;
  v13 = sub_26B2BBA78();
  v64 = a2;
  if (!v14)
  {
LABEL_104:

    v4 = v66;
    v8 = *(v66 + 2);
    v17 = *(v66 + 3);
    v12 = v8 + 1;
    if (v8 >= v17 >> 1)
    {
      goto LABEL_122;
    }

    while (1)
    {
      *(v4 + 16) = v12;
      *(v4 + 8 * v8 + 32) = v10;
      if (!v8)
      {
        break;
      }

      v46 = *(v4 + 32);

      v47 = v46;
      v12 = MEMORY[0x277D84F90];
      v48 = 40;
      v66 = v4;
      while (1)
      {
        v10 = *(v4 + v48);
        v17 = v10 >> 14;
        if (v10 >> 14 < v47 >> 14)
        {
          break;
        }

        v49 = sub_26B2BBB08();
        v51 = v50;
        v53 = v52;
        v55 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_26B2AD87C(0, *(v12 + 16) + 1, 1, v12);
        }

        v57 = *(v12 + 16);
        v56 = *(v12 + 24);
        if (v57 >= v56 >> 1)
        {
          v12 = sub_26B2AD87C((v56 > 1), v57 + 1, 1, v12);
        }

        *(v12 + 16) = v57 + 1;
        v58 = (v12 + 32 * v57);
        v58[4] = v49;
        v58[5] = v51;
        v58[6] = v53;
        v58[7] = v55;
        v48 += 8;
        v47 = v10;
        --v8;
        v4 = v66;
        if (!v8)
        {

          goto LABEL_115;
        }
      }

LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      v4 = sub_26B2AD988((v17 > 1), v12, 1, v4);
    }

    v12 = MEMORY[0x277D84F90];
LABEL_115:

    return v12;
  }

  v60 = v10;
  v15 = 0;
  v16 = 0;
  v10 = 0;
  v17 = v4 + 8;
  v62 = (v4 + 8);
  while (1)
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v18 = v16;
    v16 = v14;
    v17 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v8 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_118;
    }

    v4 = v10;
    v10 = v13;
    if ((v14 & 0x1000000000000000) != 0)
    {
      v23 = sub_26B2BB9B8();
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v20 = v13;
      }

      else
      {
        v19 = ((v13 & 0x1000000000000000) != 0 ? (v14 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_26B2BBE98());
        v20 = *v19;
      }

      v21 = v20;
      v22 = (__clz(~v20) - 24) << 16;
      v23 = v21 < 0 ? v22 : 65541;
    }

    v8 *= 4;
    if (v8 == v23 >> 14)
    {
      if ((sub_26B2AD4FC(v10, v16) & 0x100000000) != 0)
      {
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
      }

      sub_26B2BC2A8();
      v12 = sub_26B2BC278();
      (*v62)(v7, v63);
      if (v12)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    if ((sub_26B2BB8E8() & 1) == 0)
    {
      goto LABEL_9;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      if (v8 == sub_26B2BB9B8() >> 14)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = v10;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v24 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v24 = sub_26B2BBE98();
        }

        v25 = *v24;
      }

      v26 = v25;
      v27 = (__clz(~v25) - 24) << 16;
      if (v26 < 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 65541;
      }

      if (v8 == v28 >> 14)
      {
LABEL_44:
        if ((sub_26B2AD4FC(v10, v16) & 0x100000000) != 0)
        {
          goto LABEL_125;
        }

        sub_26B2BC2A8();
        v12 = sub_26B2BC288();
        (*v62)(v7, v63);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    if (sub_26B2BB8E8() & 1) != 0 && (sub_26B2BB8D8())
    {
LABEL_9:

LABEL_10:

      goto LABEL_11;
    }

LABEL_48:
    if (!v15)
    {
      goto LABEL_9;
    }

    if (v18)
    {
      v17 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_120;
      }

      if ((v18 & 0x1000000000000000) != 0)
      {
        v29 = sub_26B2BB9B8();
      }

      else
      {
        v29 = sub_26B2BBE18() << 16;
      }

      v30 = 4 * v8;
      if (v30 == v29 >> 14)
      {
        if ((sub_26B2AD4FC(v4, v18) & 0x100000000) != 0)
        {
          goto LABEL_124;
        }

        sub_26B2BC2A8();
        v12 = sub_26B2BC268();
        (*v62)(v7, v63);
        if (v12)
        {
          goto LABEL_74;
        }
      }

      if ((sub_26B2BB8D8() & 1) == 0)
      {

        goto LABEL_64;
      }

      if ((v18 & 0x1000000000000000) != 0)
      {
        if (v30 != sub_26B2BB9B8() >> 14)
        {
          goto LABEL_85;
        }
      }

      else if (v30 != ((4 * sub_26B2BBE18()) & 0x3FFFFFFFFFFFFLL))
      {
LABEL_85:
        if ((sub_26B2BB8E8() & 1) == 0)
        {
          goto LABEL_74;
        }

        v12 = sub_26B2BB8D8();

        if ((v12 & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_64;
      }

      result = sub_26B2AD4FC(v4, v18);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_127;
      }

      sub_26B2BC2A8();
      v40 = sub_26B2BC288();
      (*v62)(v7, v63);
      if (v40)
      {
LABEL_74:

LABEL_93:

LABEL_94:
        v42 = sub_26B2BBA38();
        v43 = v66;
        v8 = *(v66 + 2);
        v44 = *(v66 + 3);
        if (v8 >= v44 >> 1)
        {
          v45 = v42;
          v43 = sub_26B2AD988((v44 > 1), v8 + 1, 1, v66);
          v42 = v45;
        }

        *(v43 + 2) = v8 + 1;
        v66 = v43;
        *&v43[8 * v8 + 32] = v42;
        goto LABEL_11;
      }

      goto LABEL_85;
    }

LABEL_64:
    v8 = v65;
    sub_26B2BBA28();
    if (v31)
    {
      goto LABEL_10;
    }

    v32 = sub_26B2BBAE8();
    v17 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v33) & 0xF;
    }

    else
    {
      v8 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_121;
    }

    v34 = v32;
    v4 = v33;
    v35 = (v33 & 0x1000000000000000) != 0 ? sub_26B2BB9B8() : sub_26B2BBE18() << 16;
    v8 *= 4;
    if (v8 == v35 >> 14)
    {
      break;
    }

LABEL_75:
    if ((sub_26B2BB8D8() & 1) == 0)
    {
      goto LABEL_9;
    }

    v38 = sub_26B2AD64C(0xFuLL, v34, v4);
    if ((v4 & 0x1000000000000000) != 0)
    {
      if (v8 != sub_26B2BB9B8() >> 14)
      {
LABEL_78:

        goto LABEL_79;
      }
    }

    else if (v8 != ((4 * (sub_26B2BBE18() + (v38 >> 16))) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_78;
    }

    result = sub_26B2AD4FC(v34, v4);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_128;
    }

    sub_26B2BC2A8();
    v41 = sub_26B2BC288();
    (*v62)(v7, v63);
    if (v41)
    {
      goto LABEL_93;
    }

LABEL_79:
    if ((sub_26B2BB8E8() & 1) == 0)
    {
      goto LABEL_93;
    }

    v39 = sub_26B2BB8D8();

    if ((v39 & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_11:
    v12 = v67;
    v13 = sub_26B2BBA78();
    ++v15;
    if (!v14)
    {
      v10 = v60;
      goto LABEL_104;
    }
  }

  result = sub_26B2AD4FC(v34, v4);
  if ((result & 0x100000000) == 0)
  {
    sub_26B2BC2A8();
    v37 = sub_26B2BC268();
    (*v62)(v7, v63);
    if (v37)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

unint64_t sub_26B2AD0A8(unint64_t a1, unint64_t a2)
{
  if (sub_26B2BB9F8() < 1)
  {
  }

  else
  {
    sub_26B2AC7AC(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4530, &qword_26B2BF340);
    sub_26B2ADC2C();
    sub_26B2ADC90();
    a1 = sub_26B2BBB58();

    sub_26B2AC324();
  }

  return a1;
}

uint64_t sub_26B2AD170(float a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMaximumFractionDigits_];
  v3 = sub_26B2BB948();
  [v2 setDecimalSeparator_];

  v4 = sub_26B2BB948();
  [v2 setGroupingSeparator_];

  v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v6 = a1;
  v7 = [v5 initWithFloat_];
  v8 = [v2 stringFromNumber_];

  if (v8)
  {
    v9 = sub_26B2BB958();
  }

  else
  {
    sub_26B2BBC58();

    return 0;
  }

  return v9;
}

uint64_t sub_26B2AD2D8()
{
  if (CGColorGetNumberOfComponents(v0) != 4)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2BDCC0;
  result = sub_26B2BBCB8();
  v3 = 0.0;
  v4 = 0.0;
  if (result)
  {
    if (!*(result + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v5 = *(result + 32);

    v4 = v5;
  }

  *(inited + 32) = v4;
  result = sub_26B2BBCB8();
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(result + 16) < 2uLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(result + 40);

  v3 = v6;
LABEL_9:
  *(inited + 36) = v3;
  result = sub_26B2BBCB8();
  v7 = 0.0;
  v8 = 0.0;
  if (result)
  {
    if (*(result + 16) >= 3uLL)
    {
      v9 = *(result + 48);

      v8 = v9;
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_12:
  *(inited + 40) = v8;
  result = sub_26B2BBCB8();
  if (!result)
  {
LABEL_15:
    *(inited + 44) = v7;
    sub_26B2A1E18(inited);
    v12 = v11;
    swift_setDeallocating();
    return v12;
  }

  if (*(result + 16) >= 4uLL)
  {
    v10 = *(result + 56);

    v7 = v10;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

__n128 sub_26B2AD42C(float32x4_t a1)
{
  sub_26B2BBCD8();
  v9 = v2;
  v10 = v1;
  v3 = sub_26B2BBD08();
  *v16.vector.f64 = v9;
  v15[0] = v10;
  v15[1] = v9;
  SPRotation3DGetEulerAngles(&v13, v16, v15, v3);
  v11 = v13;
  v4 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41A0, &qword_26B2BDF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2BDCD0;
  *(inited + 32) = vmul_f32(vcvt_f32_f64(v11), vdup_n_s32(0x42652EE2u));
  v6 = v4;
  *(inited + 40) = v6 * 57.296;
  sub_26B2A1DCC(inited);
  v12 = v7;
  swift_setDeallocating();
  return v12;
}

unint64_t sub_26B2AD4FC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_26B2AD64C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_26B2BBE28();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_26B2BBE98() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_26B2AD64C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26B2AD6E4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26B2AD758(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26B2AD6E4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_26B2A5680(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B2AD758(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_26B2BBE98();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

char *sub_26B2AD87C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4548, &qword_26B2BF348);
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

char *sub_26B2AD988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4528, &qword_26B2BF338);
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

uint64_t sub_26B2ADA8C(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26B2BBA28();

    return sub_26B2BBB08();
  }

  return result;
}

unint64_t sub_26B2ADB28(unint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  result = sub_26B2BBA28();
  if (v7)
  {
    result = v6;
  }

  if (4 * v4 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26B2BBB08();
}

unint64_t sub_26B2ADBD8()
{
  result = qword_2803F4520;
  if (!qword_2803F4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4520);
  }

  return result;
}

unint64_t sub_26B2ADC2C()
{
  result = qword_2803F4538;
  if (!qword_2803F4538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803F4530, &qword_26B2BF340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4538);
  }

  return result;
}

unint64_t sub_26B2ADC90()
{
  result = qword_2803F4540;
  if (!qword_2803F4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4540);
  }

  return result;
}

void SPRotation3DGetEulerAngles(uint64_t *__return_ptr a1@<X8>, SPRotation3D a2@<0:Q0, 16:Q1>, uint64_t a3@<X0>, int a4@<W1>)
{
  _Q1 = *a3;
  if (a4 == 2)
  {
    v7 = *a3;
    _Q1.i64[0] = *(a3 + 16);
  }

  else if (a4 == 1)
  {
    v7 = vextq_s8(_Q1, *(a3 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a3 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a4 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a4 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a1 = v23;
  *(a1 + 1) = v22;
  *(a1 + 8) = a4;
}

uint64_t InspectorPropertyID.id.getter()
{
  v1 = *v0;

  return v1;
}

void InspectorPropertyID.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static InspectorPropertyID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B2BC138();
  }
}

uint64_t sub_26B2ADEF0(uint64_t a1)
{
  v2 = sub_26B2AE0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2ADF2C(uint64_t a1)
{
  v2 = sub_26B2AE0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorPropertyID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4550, &qword_26B2BF350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AE0A4();
  sub_26B2BC258();
  sub_26B2BC078();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_26B2AE0A4()
{
  result = qword_2803F8ED0;
  if (!qword_2803F8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F8ED0);
  }

  return result;
}

uint64_t InspectorPropertyID.hashValue.getter()
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  return sub_26B2BC238();
}

uint64_t InspectorPropertyID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4558, &qword_26B2BF358);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AE0A4();
  sub_26B2BC248();
  if (!v2)
  {
    v10 = sub_26B2BBF88();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2AE2D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4550, &qword_26B2BF350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AE0A4();
  sub_26B2BC258();
  sub_26B2BC078();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26B2AE414(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B2BC138();
  }
}

uint64_t sub_26B2AE444()
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  return sub_26B2BC238();
}

uint64_t sub_26B2AE498(uint64_t a1)
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  return sub_26B2BC238();
}

uint64_t sub_26B2AE4E0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t InspectorPropertyPointer.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B2BC2B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t InspectorProperty.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_26B2AE560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26B2AE5AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);

  return v4(v2, v3);
}

uint64_t sub_26B2AE614()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double sub_26B2AE660(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

double sub_26B2AE704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 136))(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_26B2AE768(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a1 + 32);
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v10 = v6;
  v7 = *(*v5 + 144);
  sub_26B29B834(v9[0], v2, v3, v4, v6);
  return v7(v9);
}

void sub_26B2AE7E4(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 80);
  *(a1 + 32) = v7;
  sub_26B29B834(v3, v4, v5, v6, v7);
}

__n128 sub_26B2AE83C(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v8;
  v9 = *(v1 + 80);
  *(v1 + 80) = v3;
  sub_26B2A2FB0(v4, v5, v6, v7, v9);
  return result;
}

uint64_t sub_26B2AE8F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B2AE9BC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 81) = a1;
  return result;
}

unint64_t sub_26B2AEA4C()
{
  v1 = (*(*v0 + 112))();
  v3 = sub_26B2AD0A8(v1, v2);

  return v3;
}

__n128 InspectorProperty.__allocating_init(id:name:value:isInternal:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  v11 = a1[1];
  v12 = *(a4 + 32);
  *(v10 + 16) = *a1;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  result = *a4;
  v14 = *(a4 + 16);
  *(v10 + 48) = *a4;
  *(v10 + 64) = v14;
  *(v10 + 80) = v12;
  *(v10 + 81) = a5;
  return result;
}

uint64_t InspectorProperty.init(id:name:value:isInternal:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a1[1];
  v7 = *(a4 + 32);
  *(v5 + 16) = *a1;
  *(v5 + 24) = v6;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  v8 = *(a4 + 16);
  *(v5 + 48) = *a4;
  *(v5 + 64) = v8;
  *(v5 + 80) = v7;
  *(v5 + 81) = a5;
  return v5;
}

uint64_t sub_26B2AEB4C()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_26B2AEBBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B2AF8C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B2AEBE4(uint64_t a1)
{
  v2 = sub_26B2AEFA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2AEC20(uint64_t a1)
{
  v2 = sub_26B2AEFA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InspectorProperty.deinit()
{

  sub_26B2A2FB0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t InspectorProperty.__deallocating_deinit()
{

  sub_26B2A2FB0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

void sub_26B2AECE4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4560, &qword_26B2BF360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AEFA0();
  sub_26B2BC258();
  v10 = v3[3];
  *&v17[0] = v3[2];
  *(&v17[0] + 1) = v10;
  LOBYTE(v14) = 0;
  sub_26B2AEFF4();

  sub_26B2BC0B8();

  if (!v2)
  {
    (*(*v3 + 112))(v11);
    LOBYTE(v17[0]) = 1;
    sub_26B2BC078();

    (*(*v3 + 136))(v17, v12);
    v14 = v17[0];
    v15 = v17[1];
    v16 = v18;
    v13[15] = 2;
    sub_26B2AADB8();
    sub_26B2BC0B8();
    sub_26B2A2FB0(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
    (*(*v3 + 160))();
    LOBYTE(v17[0]) = 3;
    sub_26B2BC088();
  }

  (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B2AEFA0()
{
  result = qword_2803F8ED8[0];
  if (!qword_2803F8ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F8ED8);
  }

  return result;
}

unint64_t sub_26B2AEFF4()
{
  result = qword_2803F4568;
  if (!qword_2803F4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4568);
  }

  return result;
}

uint64_t InspectorProperty.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  InspectorProperty.init(from:)(a1);
  return v2;
}

uint64_t InspectorProperty.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4570, &qword_26B2BF368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2AEFA0();
  sub_26B2BC248();
  if (v2)
  {
    type metadata accessor for InspectorProperty();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    sub_26B2AF394();
    sub_26B2BBFC8();
    v10 = *(&v16[0] + 1);
    *(v1 + 16) = *&v16[0];
    *(v1 + 24) = v10;
    LOBYTE(v16[0]) = 1;
    *(v1 + 32) = sub_26B2BBF88();
    *(v1 + 40) = v11;
    v18 = 2;
    sub_26B2AB2B0();
    sub_26B2BBFC8();
    v12 = v17;
    v13 = v16[1];
    *(v1 + 48) = v16[0];
    *(v1 + 64) = v13;
    *(v1 + 80) = v12;
    LOBYTE(v16[0]) = 3;
    v15 = sub_26B2BBF98();
    (*(v6 + 8))(v9, v5);
    *(v3 + 81) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_26B2AF394()
{
  result = qword_2803F4578;
  if (!qword_2803F4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4578);
  }

  return result;
}

uint64_t sub_26B2AF3E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26B2AF468@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

void InspectorProperty.hash(into:)(uint64_t a1)
{
  v2 = sub_26B2BB9E8();
  (*(*v1 + 112))(v2);
  sub_26B2BB9E8();

  (*(*v1 + 136))(v9, v3);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  v7 = v9[3];
  v8 = v10;
  sub_26B2A3474();
  sub_26B2BB8A8();
  sub_26B2A2FB0(v4, v5, v6, v7, v8);
}

uint64_t InspectorProperty.hashValue.getter()
{
  sub_26B2BC1E8();
  v1 = sub_26B2BB9E8();
  (*(*v0 + 112))(v1);
  sub_26B2BB9E8();

  (*(*v0 + 136))(v9, v2);
  v3 = v9[0];
  v4 = v9[1];
  v5 = v9[2];
  v6 = v9[3];
  v7 = v10;
  sub_26B2A3474();
  sub_26B2BB8A8();
  sub_26B2A2FB0(v3, v4, v5, v6, v7);
  return sub_26B2BC238();
}

void sub_26B2AF6B8(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_26B2BB9E8();
  (*(*v2 + 112))(v3);
  sub_26B2BB9E8();

  (*(*v2 + 136))(v10, v4);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = v10[3];
  v9 = v11;
  sub_26B2A3474();
  sub_26B2BB8A8();
  sub_26B2A2FB0(v5, v6, v7, v8, v9);
}

uint64_t sub_26B2AF7BC(uint64_t a1)
{
  sub_26B2BC1E8();
  v2 = *v1;
  v3 = sub_26B2BB9E8();
  (*(*v2 + 112))(v3);
  sub_26B2BB9E8();

  (*(*v2 + 136))(v11, v4);
  v5 = v11[0];
  v6 = v11[1];
  v7 = v11[2];
  v8 = v11[3];
  v9 = v12;
  sub_26B2A3474();
  sub_26B2BB8A8();
  sub_26B2A2FB0(v5, v6, v7, v8, v9);
  return sub_26B2BC238();
}

uint64_t sub_26B2AF8C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEE00657079546C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B2BC138();

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

uint64_t _s26SpatialInspectorFoundation0B8PropertyC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_26B2BC138() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = (*(*a1 + 112))();
  v7 = v6;
  if (v5 == (*(*a2 + 112))() && v7 == v8)
  {

    goto LABEL_13;
  }

  v10 = sub_26B2BC138();

  if (v10)
  {
LABEL_13:
    v13 = (*(*a1 + 136))(v23, v11);
    v20 = v23[0];
    v21 = v23[1];
    v22 = v24;
    (*(*a2 + 136))(v18, v13);
    v15 = v18[0];
    v16 = v18[1];
    v17 = v19;
    v12 = static InspectorPropertyValue.== infix(_:_:)();
    sub_26B2A2FB0(v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
    sub_26B2A2FB0(v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
    return v12 & 1;
  }

LABEL_11:
  v12 = 0;
  return v12 & 1;
}

unint64_t sub_26B2AFBE4(void *a1)
{
  a1[1] = sub_26B2AF394();
  a1[2] = sub_26B2AEFF4();
  a1[3] = sub_26B2AFC24();
  result = sub_26B2AFC78();
  a1[4] = result;
  return result;
}

unint64_t sub_26B2AFC24()
{
  result = qword_2803F4580;
  if (!qword_2803F4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4580);
  }

  return result;
}

unint64_t sub_26B2AFC78()
{
  result = qword_2803F4588;
  if (!qword_2803F4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4588);
  }

  return result;
}

unint64_t sub_26B2AFCD0()
{
  result = qword_2803F4590;
  if (!qword_2803F4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4590);
  }

  return result;
}

unint64_t sub_26B2AFD34()
{
  result = qword_2803F4598;
  if (!qword_2803F4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4598);
  }

  return result;
}

uint64_t sub_26B2AFD88(void *a1)
{
  a1[1] = sub_26B2AFE70(&qword_2803F45A0, &protocol conformance descriptor for InspectorProperty);
  a1[2] = sub_26B2AFE70(&qword_2803F45A8, &protocol conformance descriptor for InspectorProperty);
  a1[3] = sub_26B2AFE70(&qword_2803F45B0, &protocol conformance descriptor for InspectorProperty);
  result = sub_26B2AFE70(&qword_2803F45B8, &protocol conformance descriptor for InspectorProperty);
  a1[4] = result;
  return result;
}

uint64_t sub_26B2AFE70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InspectorProperty();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B2AFEC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B2AFF10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B2B0174()
{
  result = qword_2803F95E0[0];
  if (!qword_2803F95E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F95E0);
  }

  return result;
}

unint64_t sub_26B2B01CC()
{
  result = qword_2803F97F0[0];
  if (!qword_2803F97F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F97F0);
  }

  return result;
}

unint64_t sub_26B2B0224()
{
  result = qword_2803F9900;
  if (!qword_2803F9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F9900);
  }

  return result;
}

unint64_t sub_26B2B027C()
{
  result = qword_2803F9908[0];
  if (!qword_2803F9908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F9908);
  }

  return result;
}

unint64_t sub_26B2B02D4()
{
  result = qword_2803F9990;
  if (!qword_2803F9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F9990);
  }

  return result;
}

unint64_t sub_26B2B032C()
{
  result = qword_2803F9998[0];
  if (!qword_2803F9998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F9998);
  }

  return result;
}

uint64_t sub_26B2B0394()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

void sub_26B2B03C8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26B2BC138();

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
}

uint64_t sub_26B2B049C(uint64_t a1)
{
  v2 = sub_26B2B0B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B04D8(uint64_t a1)
{
  v2 = sub_26B2B0B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B2B052C(uint64_t a1)
{
  v2 = sub_26B2B0CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B0568(uint64_t a1)
{
  v2 = sub_26B2B0CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B2B05A4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26B2BC138();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26B2B0624(uint64_t a1)
{
  v2 = sub_26B2B0C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B0660(uint64_t a1)
{
  v2 = sub_26B2B0C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RealityFileResource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F45C8, &qword_26B2BF890);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v37 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F45D0, &qword_26B2BF898);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v34 = &v32 - v7;
  v8 = sub_26B2BB728();
  v40 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for RealityFileResource(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F45D8, &qword_26B2BF8A0);
  v42 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v32 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B0B9C();
  v23 = v40;
  sub_26B2BC258();
  sub_26B2B0BF0(v41, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *(v23 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v33;
    v25(v33, v18, v8);
    v44 = 1;
    sub_26B2B0C54();
    v27 = v37;
    sub_26B2BC028();
    sub_26B2B12D4(&qword_2803F45E0, MEMORY[0x277CC9268]);
    v28 = v39;
    sub_26B2BC0B8();
    (*(v38 + 8))(v27, v28);
    v14 = v26;
  }

  else
  {
    v25(v14, v18, v8);
    v43 = 0;
    sub_26B2B0CA8();
    v29 = v34;
    sub_26B2BC028();
    sub_26B2B12D4(&qword_2803F45E0, MEMORY[0x277CC9268]);
    v30 = v36;
    sub_26B2BC0B8();
    (*(v35 + 8))(v29, v30);
  }

  (*(v23 + 8))(v14, v8);
  return (*(v42 + 8))(v22, v19);
}

uint64_t type metadata accessor for RealityFileResource(uint64_t a1)
{
  result = qword_2803F9B40;
  if (!qword_2803F9B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26B2B0B9C()
{
  result = qword_2803F9A20;
  if (!qword_2803F9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F9A20);
  }

  return result;
}

uint64_t sub_26B2B0BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityFileResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B2B0C54()
{
  result = qword_2803F9A28;
  if (!qword_2803F9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F9A28);
  }

  return result;
}

unint64_t sub_26B2B0CA8()
{
  result = qword_2803F9A30[0];
  if (!qword_2803F9A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F9A30);
  }

  return result;
}

uint64_t RealityFileResource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F45E8, &qword_26B2BF8A8);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v3);
  v50 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F45F0, &qword_26B2BF8B0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v49 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F45F8, &qword_26B2BF8B8);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for RealityFileResource(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v40 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v40 - v22;
  v24 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_26B2B0B9C();
  v25 = v51;
  sub_26B2BC248();
  if (!v25)
  {
    v41 = v23;
    v42 = v16;
    v51 = v20;
    v26 = v50;
    v27 = v12;
    v28 = v48;
    v29 = sub_26B2BC008();
    if (*(v29 + 16) == 1)
    {
      v40[1] = v29;
      v53 = 1;
      sub_26B2B0C54();
      v30 = v26;
      sub_26B2BBF28();
      sub_26B2BB728();
      sub_26B2B12D4(&qword_2803F4608, MEMORY[0x277CC9280]);
      v31 = v42;
      v32 = v30;
      v33 = v44;
      sub_26B2BBFC8();
      (*(v47 + 8))(v32, v33);
      (*(v28 + 8))(v11, v8);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v39 = v41;
      sub_26B2B1318(v31, v41);
      sub_26B2B1318(v39, v43);
    }

    else
    {
      v34 = v11;
      v35 = sub_26B2BBE88();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4600, &qword_26B2BF8C0);
      *v37 = v27;
      sub_26B2BBF38();
      sub_26B2BBE78();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v28 + 8))(v34, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_26B2B12D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26B2BB728();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B2B1318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityFileResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B2B13FC(uint64_t a1)
{
  result = sub_26B2BB728();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26B2B1498()
{
  result = qword_2803F9C50[0];
  if (!qword_2803F9C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F9C50);
  }

  return result;
}

unint64_t sub_26B2B14F0()
{
  result = qword_2803F9E60[0];
  if (!qword_2803F9E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803F9E60);
  }

  return result;
}

unint64_t sub_26B2B1548()
{
  result = qword_2803FA070[0];
  if (!qword_2803FA070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA070);
  }

  return result;
}

unint64_t sub_26B2B15A0()
{
  result = qword_2803FA180;
  if (!qword_2803FA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FA180);
  }

  return result;
}

unint64_t sub_26B2B15F8()
{
  result = qword_2803FA188[0];
  if (!qword_2803FA188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA188);
  }

  return result;
}

unint64_t sub_26B2B1650()
{
  result = qword_2803FA210;
  if (!qword_2803FA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FA210);
  }

  return result;
}

unint64_t sub_26B2B16A8()
{
  result = qword_2803FA218[0];
  if (!qword_2803FA218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA218);
  }

  return result;
}

unint64_t sub_26B2B1700()
{
  result = qword_2803FA2A0;
  if (!qword_2803FA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FA2A0);
  }

  return result;
}

unint64_t sub_26B2B1758()
{
  result = qword_2803FA2A8[0];
  if (!qword_2803FA2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA2A8);
  }

  return result;
}

uint64_t SpatialInspectorVersion.debugDescription.getter()
{
  v2 = sub_26B2BC108();
  MEMORY[0x26D673B30](46, 0xE100000000000000);
  v0 = sub_26B2BC108();
  MEMORY[0x26D673B30](v0);

  return v2;
}

uint64_t sub_26B2B1898()
{
  if (*v0)
  {
    return 0x726F6E696DLL;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

void sub_26B2B18C4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_26B2BC138() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26B2BC138();

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
}

uint64_t sub_26B2B1998(uint64_t a1)
{
  v2 = sub_26B2B1B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B19D4(uint64_t a1)
{
  v2 = sub_26B2B1B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpatialInspectorVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4610, &qword_26B2BFCB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B1B9C();
  sub_26B2BC258();
  v12 = 0;
  sub_26B2BC0A8();
  if (!v2)
  {
    v11 = 1;
    sub_26B2BC0A8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_26B2B1B9C()
{
  result = qword_2803FA330[0];
  if (!qword_2803FA330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA330);
  }

  return result;
}

uint64_t SpatialInspectorVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4618, &qword_26B2BFCB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B1B9C();
  sub_26B2BC248();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_26B2BBFB8();
    v14 = 1;
    v11 = sub_26B2BBFB8();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2B1D90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SpatialInspectorVersioningError.description.getter()
{
  sub_26B2BBE38();
  MEMORY[0x26D673B30](0xD000000000000012, 0x800000026B2C4510);
  v0 = sub_26B2BC108();
  MEMORY[0x26D673B30](v0);

  MEMORY[0x26D673B30](0xD000000000000021, 0x800000026B2C4530);
  v1 = sub_26B2BC108();
  MEMORY[0x26D673B30](v1);

  return 0;
}

unint64_t sub_26B2B1F3C()
{
  result = qword_2803FA740[0];
  if (!qword_2803FA740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA740);
  }

  return result;
}

unint64_t sub_26B2B1F94()
{
  result = qword_2803FA850;
  if (!qword_2803FA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FA850);
  }

  return result;
}

unint64_t sub_26B2B1FEC()
{
  result = qword_2803FA858[0];
  if (!qword_2803FA858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA858);
  }

  return result;
}

SpatialInspectorFoundation::InspectorEntityRepresentation::Icon_optional __swiftcall InspectorEntityRepresentation.Icon.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B2BBF18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t InspectorEntityRepresentation.Icon.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x64332E65766F6DLL;
  }
}

uint64_t sub_26B2B20E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x64332E65766F6DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x800000026B2C4570;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x64332E65766F6DLL;
  }

  if (*a2)
  {
    v6 = 0x800000026B2C4570;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B2BC138();
  }

  return v8 & 1;
}

uint64_t sub_26B2B2194()
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

double sub_26B2B221C(uint64_t a1)
{
  sub_26B2BB9E8();

  return result;
}

uint64_t sub_26B2B2290(uint64_t a1)
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();

  return sub_26B2BC238();
}

void sub_26B2B2314(char *a2@<X8>)
{
  v3 = sub_26B2BBF18();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_26B2B2374(unint64_t *a1@<X8>)
{
  v2 = 0x800000026B2C4570;
  v3 = 0x64332E65766F6DLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t InspectorEntityRepresentation.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InspectorEntityRepresentation.pointer.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t InspectorEntityRepresentation.type.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_26B2B2474@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B2B2540(char a1)
{
  result = swift_beginAccess();
  *(v1 + 76) = a1;
  return result;
}

uint64_t sub_26B2B25D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

void sub_26B2B2668(char a1)
{
  (*(*v1 + 320))(&v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
  v3 = InspectorCollection.makeIterator()();
  v5 = v4;

  if (v3 >> 62)
  {
    v6 = sub_26B2BBEC8();
    v7 = v5 < v6;
    if (v5 == v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v7)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if ((v3 & 0xC000000000000001) == 0)
    {
      if (v5 < 0)
      {
        goto LABEL_21;
      }

      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v9 || v6 - 1 >= v9)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
LABEL_17:
        v11 = MEMORY[0x26D673F30](v5, v3);
      }

      else
      {
        v11 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      (*(*v11 + 256))(a1 & 1);
    }

    while (v6 != v5);
    goto LABEL_3;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v5 < v6;
  if (v5 != v6)
  {
    goto LABEL_7;
  }

LABEL_3:

  type metadata accessor for InspectorEntityRepresentation();
  sub_26B2B67EC(&qword_2803F46A0, v8, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  sub_26B2BB7E8();
  sub_26B2BB7F8();
}

uint64_t sub_26B2B2890(char a1)
{
  sub_26B2B2668(a1);
  result = swift_beginAccess();
  *(v1 + 77) = a1;
  return result;
}

void (*sub_26B2B28D4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 77);
  return sub_26B2B2960;
}

void sub_26B2B2960(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  sub_26B2B2668(v3);
  *(v2 + 77) = v3;

  free(v1);
}

uint64_t sub_26B2B29B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B2B2A84(char a1)
{
  sub_26B2B5474();
  result = swift_beginAccess();
  *(v1 + 78) = a1;
  return result;
}

void (*sub_26B2B2AC8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 78);
  return sub_26B2B2B54;
}

void sub_26B2B2B54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  sub_26B2B5474();
  *(v2 + 78) = v3;

  free(v1);
}

void *sub_26B2B2BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 272))(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_26B2B2C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 80) = v2;
  *(v4 + 88) = v3;
  return result;
}

uint64_t sub_26B2B2C70@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26B2B2CBC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

double sub_26B2B2D54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 296))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26B2B2DB8(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 304);

  return v4(v6);
}

uint64_t sub_26B2B2E30@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = v3;
  a1[1] = v4;
}

double sub_26B2B2E80(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 96) = *a1;

  return result;
}

void sub_26B2B2F2C(uint64_t *x8_0@<X8>)
{
  v3 = type metadata accessor for InspectorEntityRepresentation();
  sub_26B2B67EC(&qword_2803F44F0, v4, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);

  InspectorCollection.init()(v3, x8_0);
}

double sub_26B2B2FA4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 320))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26B2B3008(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 328);

  return v4(v6);
}

void sub_26B2B3080()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
  v1 = InspectorCollection.makeIterator()();
  v3 = v2;

  if (v1 >> 62)
  {
    v4 = sub_26B2BBEC8();
    v5 = v3 < v4;
    if (v3 == v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v3 < v4;
    if (v3 == v4)
    {
LABEL_3:

      return;
    }
  }

  if (v5)
  {
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        goto LABEL_16;
      }

      v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= v6 || v4 - 1 >= v6)
      {
        goto LABEL_17;
      }
    }

    v7 = *(*v0 + 224);
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D673F30](v3, v1);
      }

      else
      {
        v8 = *(v1 + 8 * v3 + 32);
      }

      ++v3;
      v9 = v7();
      (*(*v8 + 256))(v9 & 1);
    }

    while (v4 != v3);
    goto LABEL_3;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_26B2B3234@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = v3;
  a1[1] = v4;
}

void sub_26B2B3284(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 112) = *a1;

  sub_26B2B3080();
}

void (*sub_26B2B32E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26B2B3338;
}

void sub_26B2B3338(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_26B2B3080();
  }
}

void sub_26B2B33B4(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1(0);
  sub_26B2B67EC(a2, 255, a3, a4);

  InspectorCollection.init()(v9, a5);
}

double sub_26B2B3434@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 344))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26B2B3498(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 352);

  return v4(v6);
}

uint64_t sub_26B2B3510@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *a1 = v3;
  a1[1] = v4;
}

double sub_26B2B3560(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 128) = *a1;

  return result;
}

BOOL sub_26B2B360C()
{
  (*(*v0 + 344))(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4628, &qword_26B2BFF70);
  sub_26B2A3128(&qword_2803F4630, &qword_2803F4628, &qword_26B2BFF70, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BBB18();
  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  v1 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    while (1)
    {
      v2 = v9;
      if (v9 == v1)
      {
        goto LABEL_17;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v8 + 32 + 8 * v9);

        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }

      __break(1u);
LABEL_22:
      v1 = sub_26B2BBEC8();
    }

    v3 = MEMORY[0x26D673F30](v9);
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_16:
      __break(1u);
LABEL_17:

      return v2 != v1;
    }

LABEL_8:
    v9 = v4;
    if (*(v3 + 32) == 0x6D6F436C65646F4DLL && *(v3 + 40) == 0xEE00746E656E6F70)
    {
      break;
    }

    v6 = sub_26B2BC138();

    if (v6)
    {
      goto LABEL_17;
    }
  }

  return v2 != v1;
}

uint64_t sub_26B2B37F0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 368))();
  *a1 = result & 1;
  return result;
}

uint64_t InspectorEntityRepresentation.__allocating_init(id:name:pointer:type:parent:wasActive:wasAnchored:wasEnabled:wasEnabledInHierarchy:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10, char a11, char a12)
{
  v13 = v12;
  v19 = swift_allocObject();
  v20 = *a1;
  *(v19 + 76) = 1;
  *(v19 + 78) = 1;
  *(v19 + 80) = 0;
  *(v19 + 88) = 1;
  v21 = type metadata accessor for InspectorProperty();
  sub_26B2B67EC(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init()(v21, (v19 + 96));
  sub_26B2B67EC(&qword_2803F44F0, v22, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  InspectorCollection.init()(v13, (v19 + 112));
  v23 = type metadata accessor for InspectorComponentRepresentation();
  sub_26B2B67EC(&qword_2803F4620, 255, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  InspectorCollection.init()(v23, (v19 + 128));
  *(v19 + 16) = v20;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  if (a8)
  {
    v24 = a8[2];
  }

  else
  {
    v24 = 0;
  }

  swift_beginAccess();
  *(v19 + 80) = v24;
  *(v19 + 88) = a8 == 0;
  *(v19 + 72) = a9 & 1;
  *(v19 + 73) = a10 & 1;
  *(v19 + 74) = a11 & 1;
  *(v19 + 75) = a12 & 1;
  *(v19 + 77) = a9 & 1;
  if (a8)
  {
    v25 = *(*a8 + 224);

    v27 = v25(v26);
  }

  else
  {
    v27 = 0;
  }

  swift_beginAccess();
  *(v19 + 78) = v27 & 1;
  return v19;
}

uint64_t InspectorEntityRepresentation.init(id:name:pointer:type:parent:wasActive:wasAnchored:wasEnabled:wasEnabledInHierarchy:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10, char a11, char a12)
{
  v13 = v12;
  *(v13 + 78) = 1;
  v19 = *a1;
  *(v13 + 76) = 1;
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;
  v20 = type metadata accessor for InspectorProperty();
  sub_26B2B67EC(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init()(v20, (v13 + 96));
  v21 = type metadata accessor for InspectorEntityRepresentation();
  sub_26B2B67EC(&qword_2803F44F0, v22, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  InspectorCollection.init()(v21, (v13 + 112));
  v23 = type metadata accessor for InspectorComponentRepresentation();
  sub_26B2B67EC(&qword_2803F4620, 255, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  InspectorCollection.init()(v23, (v13 + 128));
  *(v13 + 16) = v19;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  *(v13 + 64) = a7;
  if (a8)
  {
    v24 = a8[2];
  }

  else
  {
    v24 = 0;
  }

  swift_beginAccess();
  *(v13 + 80) = v24;
  *(v13 + 88) = a8 == 0;
  *(v13 + 72) = a9 & 1;
  *(v13 + 73) = a10 & 1;
  *(v13 + 74) = a11 & 1;
  *(v13 + 75) = a12 & 1;
  *(v13 + 77) = a9 & 1;
  if (a8)
  {
    v25 = *(*a8 + 224);

    v27 = v25(v26);
  }

  else
  {
    v27 = 0;
  }

  swift_beginAccess();
  *(v13 + 78) = v27 & 1;
  return v13;
}

unint64_t sub_26B2B3D4C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7265746E696F70;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x7669746341736177;
      break;
    case 5:
      result = 0x6F68636E41736177;
      break;
    case 6:
      result = 0x6C62616E45736177;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6C62697369567369;
      break;
    case 10:
      result = 0x746E657261507369;
      break;
    case 11:
      result = 0x4449746E65726170;
      break;
    case 12:
      result = 0x69747265706F7270;
      break;
    case 13:
      result = 0x6E6572646C696863;
      break;
    case 14:
      result = 0x6E656E6F706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B2B3F34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B2B5714(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B2B3F68(uint64_t a1)
{
  v2 = sub_26B2B56C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B3FA4(uint64_t a1)
{
  v2 = sub_26B2B56C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *InspectorEntityRepresentation.deinit()
{

  return v0;
}

uint64_t InspectorEntityRepresentation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26B2B40C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4638, &qword_26B2BFF78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B56C0();
  sub_26B2BC258();
  *&v19 = v3[2];
  LOBYTE(v18) = 0;
  sub_26B293E3C();
  sub_26B2BC0B8();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_26B2BC078();
    LOBYTE(v19) = 2;
    sub_26B2BC078();
    LOBYTE(v19) = 3;
    sub_26B2BC078();
    LOBYTE(v19) = 4;
    sub_26B2BC088();
    LOBYTE(v19) = 5;
    sub_26B2BC088();
    LOBYTE(v19) = 6;
    sub_26B2BC088();
    LOBYTE(v19) = 7;
    v10 = sub_26B2BC088();
    (*(*v3 + 200))(v10);
    LOBYTE(v19) = 8;
    v11 = sub_26B2BC088();
    (*(*v3 + 224))(v11);
    LOBYTE(v19) = 9;
    v12 = sub_26B2BC088();
    (*(*v3 + 248))(v12);
    LOBYTE(v19) = 10;
    v13 = sub_26B2BC088();
    (*(*v3 + 272))(&v19, v13);
    *&v18 = v19;
    BYTE8(v18) = BYTE8(v19);
    v20 = 11;
    v14 = sub_26B2BC048();
    (*(*v3 + 296))(&v19, v14);
    v18 = v19;
    v20 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    sub_26B2A3128(&qword_2803F44D8, &qword_2803F41D0, &unk_26B2BFF80, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BC0B8();

    (*(*v3 + 320))(&v19, v15);
    v18 = v19;
    v20 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
    sub_26B2A3128(&qword_2803F4508, &qword_2803F4500, &qword_26B2BF148, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BC0B8();

    (*(*v3 + 344))(&v19, v16);
    v18 = v19;
    v20 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4628, &qword_26B2BFF70);
    sub_26B2A3128(&qword_2803F4640, &qword_2803F4628, &qword_26B2BFF70, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InspectorEntityRepresentation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  InspectorEntityRepresentation.init(from:)(a1);
  return v2;
}

void *InspectorEntityRepresentation.init(from:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4648, &qword_26B2BFF90);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v4);
  v6 = v28 - v5;
  v42 = v1;
  *(v1 + 80) = 0;
  v7 = (v1 + 80);
  *(v1 + 76) = 1;
  v8 = (v1 + 76);
  *(v1 + 78) = 1;
  v9 = (v1 + 78);
  *(v1 + 88) = 1;
  v10 = type metadata accessor for InspectorProperty();
  sub_26B2B67EC(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init()(v10, v7 + 2);
  v11 = type metadata accessor for InspectorEntityRepresentation();
  sub_26B2B67EC(&qword_2803F44F0, v12, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  *&v32 = v11;
  InspectorCollection.init()(v11, v7 + 4);
  v13 = type metadata accessor for InspectorComponentRepresentation();
  sub_26B2B67EC(&qword_2803F4620, 255, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
  InspectorCollection.init()(v13, v7 + 6);
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26B2B56C0();
  v30 = v6;
  sub_26B2BC248();
  if (v2)
  {
    v15 = v42;

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v29;
    v40 = 0;
    v17 = sub_26B2944A8();
    sub_26B2BBFC8();
    v28[2] = v17;
    v18 = v42;
    *(v42 + 16) = v41;
    LOBYTE(v41) = 1;
    *(v18 + 24) = sub_26B2BBF88();
    *(v18 + 32) = v19;
    LOBYTE(v41) = 2;
    *(v18 + 40) = sub_26B2BBF88();
    *(v18 + 48) = v20;
    LOBYTE(v41) = 3;
    *(v18 + 56) = sub_26B2BBF88();
    *(v18 + 64) = v21;
    LOBYTE(v41) = 4;
    v28[1] = 0;
    *(v18 + 72) = sub_26B2BBF98() & 1;
    LOBYTE(v41) = 5;
    *(v18 + 73) = sub_26B2BBF98() & 1;
    LOBYTE(v41) = 6;
    *(v18 + 74) = sub_26B2BBF98() & 1;
    LOBYTE(v41) = 7;
    *(v18 + 75) = sub_26B2BBF98() & 1;
    LOBYTE(v41) = 8;
    LOBYTE(v18) = sub_26B2BBF98();
    swift_beginAccess();
    *v8 = v18 & 1;
    v40 = 9;
    *(v42 + 77) = sub_26B2BBF98() & 1;
    v40 = 10;
    v23 = sub_26B2BBF98();
    swift_beginAccess();
    *v9 = v23 & 1;
    v39 = 11;
    sub_26B2BBF58();
    v24 = v37;
    LOBYTE(v17) = v38;
    swift_beginAccess();
    v25 = v42;
    *(v42 + 80) = v24;
    *(v25 + 88) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    LOBYTE(v37) = 12;
    sub_26B2A3128(&qword_2803F44E8, &qword_2803F41D0, &unk_26B2BFF80, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BBFC8();
    v32 = v36;
    swift_beginAccess();
    *(v42 + 96) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
    LOBYTE(v36) = 13;
    sub_26B2A3128(&qword_2803F4518, &qword_2803F4500, &qword_26B2BF148, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BBFC8();
    v32 = v34;
    swift_beginAccess();
    *(v42 + 112) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4628, &qword_26B2BFF70);
    LOBYTE(v34) = 14;
    sub_26B2A3128(&qword_2803F4650, &qword_2803F4628, &qword_26B2BFF70, &protocol conformance descriptor for InspectorCollection<A>);
    v26 = v31;
    v27 = v30;
    sub_26B2BBFC8();
    (*(v16 + 8))(v27, v26);
    v32 = v35;
    swift_beginAccess();
    v15 = v42;
    *(v42 + 128) = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v15;
}

uint64_t sub_26B2B5034@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for InspectorEntityRepresentation();
  result = sub_26B2BB7E8();
  *a3 = result;
  return result;
}

uint64_t sub_26B2B5070@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 408))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double InspectorEntityRepresentation.hash(into:)(uint64_t a1)
{
  v6 = v1[2];
  sub_26B2A58A8();
  sub_26B2BB8A8();
  v2 = sub_26B2BB9E8();
  (*(*v1 + 296))(&v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
  sub_26B2A3128(&qword_2803F41D8, &qword_2803F41D0, &unk_26B2BFF80, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BB8A8();

  (*(*v1 + 320))(&v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
  sub_26B2A3128(&qword_2803F4658, &qword_2803F4500, &qword_26B2BF148, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BB8A8();

  (*(*v1 + 344))(&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4628, &qword_26B2BFF70);
  sub_26B2A3128(&qword_2803F4660, &qword_2803F4628, &qword_26B2BFF70, &protocol conformance descriptor for InspectorCollection<A>);
  sub_26B2BB8A8();

  return result;
}

uint64_t InspectorEntityRepresentation.hashValue.getter()
{
  sub_26B2BC1E8();
  InspectorEntityRepresentation.hash(into:)(v1);
  return sub_26B2BC238();
}

uint64_t sub_26B2B53CC()
{
  sub_26B2BC1E8();
  InspectorEntityRepresentation.hash(into:)(v1);
  return sub_26B2BC238();
}

uint64_t sub_26B2B5434(uint64_t a1)
{
  sub_26B2BC1E8();
  InspectorEntityRepresentation.hash(into:)(v2);
  return sub_26B2BC238();
}

void sub_26B2B5474()
{
  (*(*v0 + 320))(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F4500, &qword_26B2BF148);
  v1 = InspectorCollection.makeIterator()();
  v3 = v2;

  if (v1 >> 62)
  {
    v4 = sub_26B2BBEC8();
    v5 = v3 < v4;
    if (v3 == v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v5)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if ((v1 & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        goto LABEL_20;
      }

      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= v7 || v4 - 1 >= v7)
      {
        goto LABEL_21;
      }
    }

    v9 = *(*v0 + 224);
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D673F30](v3, v1);
        v12 = v10;
      }

      else
      {
        v12 = *(v1 + 8 * v3 + 32);
      }

      ++v3;
      v13 = v9(v10, v11);
      (*(*v12 + 256))(v13 & 1);
    }

    while (v4 != v3);
    goto LABEL_3;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v3 < v4;
  if (v3 != v4)
  {
    goto LABEL_7;
  }

LABEL_3:

  type metadata accessor for InspectorEntityRepresentation();
  sub_26B2B67EC(&qword_2803F46A0, v6, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  sub_26B2BB7E8();
  sub_26B2BB7F8();
}

unint64_t sub_26B2B56C0()
{
  result = qword_2803FA8E0[0];
  if (!qword_2803FA8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FA8E0);
  }

  return result;
}

uint64_t sub_26B2B5714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26B2BC138() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746E696F70 && a2 == 0xE700000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7669746341736177 && a2 == 0xE900000000000065 || (sub_26B2BC138() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F68636E41736177 && a2 == 0xEB00000000646572 || (sub_26B2BC138() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C62616E45736177 && a2 == 0xEA00000000006465 || (sub_26B2BC138() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B2C4610 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026B2C4630 == a2 || (sub_26B2BC138() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C62697369567369 && a2 == 0xE900000000000065 || (sub_26B2BC138() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E657261507369 && a2 == 0xEF656C6269736956 || (sub_26B2BC138() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_26B2BC138() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_26B2BC138() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    return 14;
  }

  else
  {
    v6 = sub_26B2BC138();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t _s26SpatialInspectorFoundation0B20EntityRepresentationC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  *&v22 = a1[2];
  *&v21 = a2[2];
  if (static EntityID.== infix(_:_:)(&v22, &v21) && (a1[3] == a2[3] ? (v4 = a1[4] == a2[4]) : (v4 = 0), (v4 || (sub_26B2BC138() & 1) != 0) && (v5 = (*(*a1 + 296))(&v22), v21 = v22, (*(*a2 + 296))(&v20, v5), v19 = v20, v6 = type metadata accessor for InspectorProperty(), v7 = sub_26B2B67EC(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty), LOBYTE(v6) = static InspectorCollection.== infix(_:_:)(&v21, &v19, v6, v7), , , , v8 = , (v6 & 1) != 0) && (v9 = (*(*a1 + 320))(&v22, v8), v21 = v22, (*(*a2 + 320))(&v20, v9), v19 = v20, v10 = type metadata accessor for InspectorEntityRepresentation(), v12 = sub_26B2B67EC(&qword_2803F44F0, v11, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation), LOBYTE(v10) = static InspectorCollection.== infix(_:_:)(&v21, &v19, v10, v12), , , , v13 = , (v10 & 1) != 0)))
  {
    v14 = (*(*a1 + 344))(&v22, v13);
    v21 = v22;
    (*(*a2 + 344))(&v20, v14);
    v19 = v20;
    v15 = type metadata accessor for InspectorComponentRepresentation();
    v16 = sub_26B2B67EC(&qword_2803F4620, 255, type metadata accessor for InspectorComponentRepresentation, &protocol conformance descriptor for InspectorComponentRepresentation);
    v17 = static InspectorCollection.== infix(_:_:)(&v21, &v19, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_26B2B5F68()
{
  result = qword_2803F4668;
  if (!qword_2803F4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4668);
  }

  return result;
}

unint64_t sub_26B2B5FC0()
{
  result = qword_2803F4670;
  if (!qword_2803F4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F4670);
  }

  return result;
}

uint64_t sub_26B2B6014(void *a1, uint64_t a2)
{
  a1[1] = sub_26B2B67EC(&qword_2803F4678, a2, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  a1[2] = sub_26B2B67EC(&qword_2803F4680, v3, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  a1[3] = sub_26B2B67EC(&qword_2803F4688, v4, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  result = sub_26B2B67EC(&qword_2803F4690, v5, type metadata accessor for InspectorEntityRepresentation, &protocol conformance descriptor for InspectorEntityRepresentation);
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InspectorEntityRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectorEntityRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26B2B66E8()
{
  result = qword_2803FAEF0;
  if (!qword_2803FAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FAEF0);
  }

  return result;
}

unint64_t sub_26B2B6740()
{
  result = qword_2803FB000;
  if (!qword_2803FB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FB000);
  }

  return result;
}

unint64_t sub_26B2B6798()
{
  result = qword_2803FB008[0];
  if (!qword_2803FB008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB008);
  }

  return result;
}

uint64_t sub_26B2B67EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t ComponentID.id.getter()
{
  v1 = *v0;

  return v1;
}

void ComponentID.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static ComponentID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B2BC138();
  }
}

uint64_t sub_26B2B6908(uint64_t a1)
{
  v2 = sub_26B2B6ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B6944(uint64_t a1)
{
  v2 = sub_26B2B6ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46A8, &qword_26B2C03A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B6ABC();
  sub_26B2BC258();
  sub_26B2BC078();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_26B2B6ABC()
{
  result = qword_2803FB090;
  if (!qword_2803FB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FB090);
  }

  return result;
}

uint64_t ComponentID.hashValue.getter()
{
  sub_26B2BC1E8();
  sub_26B2BB9E8();
  return sub_26B2BC238();
}

uint64_t ComponentID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46B0, &qword_26B2C03A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B6ABC();
  sub_26B2BC248();
  if (!v2)
  {
    v10 = sub_26B2BBF88();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B2B6CF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46A8, &qword_26B2C03A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B6ABC();
  sub_26B2BC258();
  sub_26B2BC078();
  return (*(v3 + 8))(v6, v2);
}

uint64_t InspectorComponentRepresentation.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t InspectorComponentRepresentation.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_26B2B6E7C(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InspectorProperty();
  sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);

  InspectorCollection.init()(v2, a1);
}

double sub_26B2B6EFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 120))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26B2B6F58(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v4 = *(*v3 + 128);

  return v4(v6);
}

uint64_t sub_26B2B6FC8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v3;
  a1[1] = v4;
}

double sub_26B2B7018(_OWORD *a1)
{
  swift_beginAccess();
  *(v1 + 64) = *a1;

  return result;
}

uint64_t InspectorComponentRepresentation.__allocating_init(id:name:entityID:isInternal:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = swift_allocObject();
  v12 = *a1;
  v11 = a1[1];
  v13 = *a4;
  v14 = type metadata accessor for InspectorProperty();
  sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init()(v14, (v10 + 64));
  *(v10 + 16) = v12;
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 56) = v13;
  *(v10 + 48) = a5;
  return v10;
}

uint64_t InspectorComponentRepresentation.init(id:name:entityID:isInternal:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *a4;
  v12 = type metadata accessor for InspectorProperty();
  sub_26B2B84A0(&qword_2803F4228, 255, type metadata accessor for InspectorProperty, &protocol conformance descriptor for InspectorProperty);
  InspectorCollection.init()(v12, (v5 + 64));
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 56) = v11;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_26B2B7248()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E7265746E497369;
  v4 = 0x4449797469746E65;
  if (v1 != 3)
  {
    v4 = 0x69747265706F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26B2B72D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B2B7E58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B2B72FC(uint64_t a1)
{
  v2 = sub_26B2B76BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B2B7338(uint64_t a1)
{
  v2 = sub_26B2B76BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *InspectorComponentRepresentation.deinit()
{

  return v0;
}

uint64_t InspectorComponentRepresentation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26B2B740C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F46B8, &unk_26B2C03B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2B76BC();
  sub_26B2BC258();
  v10 = v3[3];
  *&v15 = v3[2];
  *(&v15 + 1) = v10;
  LOBYTE(v14) = 0;
  sub_26B2B7710();

  sub_26B2BC0B8();
  if (!v2)
  {

    LOBYTE(v15) = 1;
    sub_26B2BC078();
    LOBYTE(v15) = 2;
    sub_26B2BC088();
    *&v15 = v3[7];
    LOBYTE(v14) = 3;
    sub_26B293E3C();
    v11 = sub_26B2BC0B8();
    (*(*v3 + 120))(&v15, v11);
    v14 = v15;
    v13[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803F41D0, &unk_26B2BFF80);
    sub_26B2B8198(&qword_2803F44D8, &protocol conformance descriptor for InspectorCollection<A>);
    sub_26B2BC0B8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26B2B76BC()
{
  result = qword_2803FB098[0];
  if (!qword_2803FB098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803FB098);
  }

  return result;
}

unint64_t sub_26B2B7710()
{
  result = qword_2803F46C0;
  if (!qword_2803F46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803F46C0);
  }

  return result;
}