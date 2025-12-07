void *sub_252CC4B00(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  LODWORD(v8) = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v9;
  v15 = (a1 + 72);
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 4 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v10;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 4);
    v10 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CC4C20(uint64_t a1, int a2)
{
  result = sub_252979914();
  if (result)
  {
    v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(result);
    sub_252929E74((v5 + 16), v8);

    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v6 = sub_252E338C4();
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    v7 = 1000;
    if (v6)
    {
      v7 = 2000;
    }

    if (v7 < a1)
    {
      return sub_2529515FC(5, a2, 0xD00000000000001BLL, 0x8000000252E91BF0);
    }
  }

  return result;
}

void *sub_252CC4CE8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452E8, &qword_252E5A670);
  v3 = sub_252E37B54();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_252A44B34(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_252A44B34(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC4E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void *sub_252CC4F48(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v10;
  v15 = (a1 + 9);
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v9;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC507C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545158, &qword_252E5A4D8);
    v3 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_252A44DF4(v6);
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

unint64_t sub_252CC5188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545160, &unk_252E5A4E0);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, v11, &qword_27F543770, &unk_252E4DF18);
      v5 = v11[0];
      result = sub_252A44D48(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_252A00AF4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_252CC52B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545150, &qword_252E5A4D0);
    v3 = sub_252E37B54();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_252A4509C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_252CC53C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_252CC54B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545220, &qword_252E5A5A0);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_252A44A10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_252CC55B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545228, &qword_252E5A5A8);
    v3 = sub_252E37B54();
    for (i = (a1 + 42); ; i += 16)
    {
      v5 = *(i - 10);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = v7 ? 256 : 0;
      result = sub_252A44F0C(*(i - 10), v9 | v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 9) = v7;
      *(v3[7] + result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_13;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252CC56C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545230, &qword_252E5A5B0);
    v3 = sub_252E37B54();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_252A44FAC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_252CC5864(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  result = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v22 = v9;
    return v7;
  }

  v13 = a1 + 9;
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    v14 = (v7[7] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v13 + 3;
    v8 = *(v13 - 2);
    v19 = *(v13 - 1);
    v10 = *v13;
    v20 = v9;
    result = a4(v8);
    v13 = v18;
    v9 = v19;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC5978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451A8, &qword_252E5A528);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, v13, &qword_27F5451B0, &qword_252E5A530);
      result = sub_252A45058(v13);
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
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_252CC5AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545018, &qword_252E5A398);
    v3 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_252A4509C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_252CC5BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452F0, &qword_252E5A678);
    v3 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_252A450C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_252CC5CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
    v3 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_252A488EC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_252CC5E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545058, &qword_252E5A3D8);
    v3 = sub_252E37B54();
    for (i = a1 + 32; ; i += 40)
    {
      sub_252938414(i, &v11, &qword_27F545060, &qword_252E5A3E0);
      v5 = v11;
      result = sub_252A488EC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_252A00AF4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_252CC5F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545048, &qword_252E5A3C8);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_252A45390(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_252CC6090(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545040, &qword_252E5A3C0);
  v3 = sub_252E37B54();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_252A488EC();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_252A488EC();
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC6204(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_252CC630C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, &v13, &unk_27F541F10, &unk_252E42870);
      v5 = v13;
      v6 = v14;
      result = sub_252A44A10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_252CC6490(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v9 = *i;

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_252CC66A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 16)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_252A488EC();
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
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

unint64_t sub_252CC67B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_252E37B54();
  v6 = *(a1 + 32);
  v15 = *(a1 + 40);
  result = sub_252A488EC();
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v9 = (a1 + 64);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 16 * result) = v15;
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v13 = (v9 + 24);
    v6 = *(v9 - 1);
    v15 = *v9;

    result = sub_252A488EC();
    v9 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC68E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545188, &qword_252E5A508);
  v3 = sub_252E37B54();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_252A488EC();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_252A488EC();
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC6A08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_252CC6B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545298, &qword_252E5A618);
  v3 = sub_252E37B54();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_252938414(&v27, v26, &qword_27F5452A0, &qword_252E5A620);
  result = sub_252A44A10(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 48);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_252938414(&v27, v26, &qword_27F5452A0, &qword_252E5A620);
    result = sub_252A44A10(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC6D40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_252CC6E5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = sub_252A456F0(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
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

unint64_t sub_252CC6F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_252CC703C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451B8, &qword_252E5A538);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_252A44A10(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_252CC7140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545300, &qword_252E5A688);
    v3 = sub_252E37B54();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_252A488EC();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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

unint64_t sub_252CC7250(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451F8, &qword_252E5A578);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545200, &qword_252E5A580);
    v9 = sub_252E37B54();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_252938414(v11, v7, &qword_27F5451F8, &qword_252E5A578);
      result = a2(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_252E35CB4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void *sub_252CC7464(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_252E37B54();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 7);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + 8 * v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 1);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC7598(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_252E37B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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

unint64_t sub_252CC7688(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_252A44A10(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void sub_252CC77C4(uint64_t a1, unint64_t a2, char a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t (*a7)(void *), uint64_t (*a8)(void))
{
  v43 = a8;
  v12 = 0x65725F7261646172;
  v46 = 46;
  v47 = 0xE100000000000000;
  if (a3)
  {
    v13 = 0xEF202D2074726F70;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v45 = &v46;
  if ((a3 & 1) == 0)
  {
    v12 = 0;
  }

  v40 = a1;
  v41 = v12;
  v14 = sub_252BE9D0C(a6, v44, a4, a5);
  if (v15)
  {
    v14 = sub_252E37084();
  }

  v42 = v14;
  v46 = 47;
  v47 = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  v39[2] = &v46;
  sub_252BE9D0C(a7, v39, a4, a5);
  v17 = v16;

  v18 = a2;

  v19 = sub_252E36AC4();
  v20 = v43();

  v21 = os_log_type_enabled(v19, v20);
  if (v17)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v22 = 136315650;
      v24 = sub_252BE2CE0(v41, v13, &v46);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      v25 = sub_252E37194();
      v26 = MEMORY[0x2530AD4C0](v25);
      v28 = v27;

      v29 = sub_252BE2CE0(v26, v28, &v46);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_252BE2CE0(v40, v18, &v46);
      _os_log_impl(&dword_252917000, v19, v20, "%s%{public}s: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v23, -1, -1);
      v30 = v22;
LABEL_14:
      MEMORY[0x2530AED00](v30, -1, -1);
LABEL_16:

      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v46 = v32;
  *v31 = 136315650;
  v33 = sub_252BE2CE0(v41, v13, &v46);

  *(v31 + 4) = v33;
  *(v31 + 12) = 2082;
  if (v42 >> 14 >= sub_252E37084() >> 14)
  {
    v34 = sub_252E37194();
    v35 = MEMORY[0x2530AD4C0](v34);
    v37 = v36;

    v38 = sub_252BE2CE0(v35, v37, &v46);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_252BE2CE0(v40, v18, &v46);
    _os_log_impl(&dword_252917000, v19, v20, "%s%{public}s: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v32, -1, -1);
    v30 = v31;
    goto LABEL_14;
  }

  __break(1u);
}

void _s22HomeAutomationInternal3LogO16gradingAnalytics7commandyyp_tFZ_0(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  v63 = sub_252CC630C(MEMORY[0x277D84F90]);
  sub_252974E7C(a1, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545330, &qword_252E5A6C0);
  if (swift_dynamicCast())
  {
    v9 = *&v64[0];
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(v2, qword_27F544D60);
      (*(v3 + 16))(v8, v10, v2);
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E91E70);
      v11 = [v9 encodedClassName];
      if (v11)
      {
        v12 = v11;
        v13 = sub_252E36F34();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      *&v64[0] = v13;
      *(&v64[0] + 1) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v16 = sub_252E36F94();
      MEMORY[0x2530AD570](v16);

      sub_252CC3D90(v65, *(&v65 + 1), 0xD000000000000065, 0x8000000252E91DD0);

      (*(v3 + 8))(v8, v2);
      v17 = [v9 dictionary];
      if (v17)
      {
        v18 = v17;
        v66 = sub_25293F638(0, &qword_27F545360, 0x277CBEB38);
        *&v65 = v18;
        sub_252A00AF4(&v65, v64);
        v19 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v19;
        sub_2529FAE1C(v64, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
        v63 = v62;
      }

      else
      {
        sub_252E16B84(0x6C46746E65696C43, 0xEE0077656956776FLL, &v65);
        sub_25293847C(&v65, &qword_27F541E80, &qword_252E3DFA0);
      }

      v21 = [objc_opt_self() sharedAnalytics];
      if (v21)
      {
        v22 = v21;

        sub_252CC1408(v23);

        v24 = sub_252E36E24();

        [v22 logEventWithType:3700 context:v24];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v2, qword_27F544D60);
      (*(v3 + 16))(v6, v25, v2);
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v65 = 0xD00000000000002ELL;
      *(&v65 + 1) = 0x8000000252E91E40;
      v26 = [v9 encodedClassName];
      if (v26)
      {
        v27 = v26;
        v28 = sub_252E36F34();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      *&v64[0] = v28;
      *(&v64[0] + 1) = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v31 = sub_252E36F94();
      MEMORY[0x2530AD570](v31);

      sub_252CC3D90(v65, *(&v65 + 1), 0xD000000000000065, 0x8000000252E91DD0);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v6, v2);
    }
  }

  sub_252974E7C(a1, &v65);
  sub_25293F638(0, &unk_27F541E90, 0x277CD1860);
  if (swift_dynamicCast())
  {
    v32 = *&v64[0];
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F544D60);
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v65 = 0xD000000000000010;
    *(&v65 + 1) = 0x8000000252E91D90;
    swift_getObjectType();
    v33 = sub_252E37FB4();
    MEMORY[0x2530AD570](v33);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E91DB0);
    sub_252CC3D90(v65, *(&v65 + 1), 0xD000000000000065, 0x8000000252E91DD0);

    sub_252E329C4();
    swift_allocObject();
    sub_252E329B4();
    *&v65 = v32;
    sub_252A67638(&qword_27F545350, &unk_27F541E90, 0x277CD1860, protocol conformance descriptor for HMBatchRequest);
    v40 = sub_252E329A4();
    v42 = v41;

    v43 = objc_opt_self();
    v44 = sub_252E32D14();
    sub_25296464C(v40, v42);
    *&v65 = 0;
    v45 = [v43 JSONObjectWithData:v44 options:0 error:&v65];

    if (v45)
    {
      v46 = v65;
      sub_252E377F4();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
      if (swift_dynamicCast())
      {
        v47 = *&v64[0];
      }

      else
      {
        v47 = sub_252CC630C(MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v59 = v65;
      v60 = sub_252E32C54();

      swift_willThrow();
      v47 = sub_252CC630C(MEMORY[0x277D84F90]);
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
    *&v65 = v47;
    sub_252A00AF4(&v65, v64);
    v34 = v63;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v34;
    sub_2529FAE1C(v64, 0x6C46746E65696C43, 0xEE0077656956776FLL, v35);
    v63 = v62;
    v36 = [objc_opt_self() sharedAnalytics];
    if (v36)
    {
      v37 = v36;

      sub_252CC1408(v38);

      v39 = sub_252E36E24();

      [v37 logEventWithType:3700 context:v39];
    }

    else
    {
    }
  }

  sub_252974E7C(a1, &v65);
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  if (swift_dynamicCast())
  {
    v48 = *&v64[0];
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F544D60);
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v65 = 0xD000000000000010;
    *(&v65 + 1) = 0x8000000252E91D90;
    swift_getObjectType();
    v49 = sub_252E37FB4();
    MEMORY[0x2530AD570](v49);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E91DB0);
    sub_252CC3D90(v65, *(&v65 + 1), 0xD000000000000065, 0x8000000252E91DD0);

    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_252CC8B34;
    *(v51 + 24) = v50;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545348, &qword_252E5A6C8);
    *&v65 = sub_252CC8B3C;
    *(&v65 + 1) = v51;
    sub_252A00AF4(&v65, v64);
    v52 = v48;
    v53 = v63;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v53;
    sub_2529FAE1C(v64, 0x6C46746E65696C43, 0xEE0077656956776FLL, v54);
    v55 = [objc_opt_self() sharedAnalytics];
    if (v55)
    {
      v56 = v55;

      sub_252CC1408(v57);

      v58 = sub_252E36E24();

      [v56 logEventWithType:3700 context:v58];
    }

    else
    {
    }
  }

  else
  {
  }
}

unint64_t sub_252CC882C()
{
  result = qword_27F545000;
  if (!qword_27F545000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AFAnalyticsEvent, &type metadata for AFAnalyticsEvent, v0, v1);
    atomic_store(result, &qword_27F545000);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Log.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Log.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252CC8A24()
{
  result = qword_27F545008;
  if (!qword_27F545008)
  {
    result = swift_getWitnessTable(asc_252E5A24C, &type metadata for Log.Errors, v0, v1);
    atomic_store(result, &qword_27F545008);
  }

  return result;
}

unint64_t sub_252CC8A7C()
{
  result = qword_27F545010;
  if (!qword_27F545010)
  {
    result = swift_getWitnessTable(byte_252E5A32C, &type metadata for AceError, v0, v1);
    atomic_store(result, &qword_27F545010);
  }

  return result;
}

unint64_t sub_252CC8AD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

_OWORD *sub_252CC8B1C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_252CC8B3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_252CC8BA0()
{
  type metadata accessor for CriticalSensorHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252CC8BD0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_20:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v4 isExcludeFilter];
    sub_252956D08();
    v8 = sub_252E37674();
    v9 = v8;
    if (!v7)
    {
      break;
    }

    v10 = sub_252E37694();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

LABEL_14:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v11 = HomeFilter.Builder.init()();
  v13 = (*(*v12 + 592))([v5 entityType]);

  v14 = (*(*v13 + 624))([v5 deviceType]);

  v15 = (*(*v14 + 600))([v5 outerDeviceType]);

  v16 = [v5 homeName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E36F34();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (*(*v15 + 632))(v18, v20);

  v23 = (*(*v21 + 760))(v22);

  return v23;
}

void sub_252CC8EF4(void *a1, void (*a2)(char *))
{
  v4 = [a1 filters];
  if (!v4)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000082, 0x8000000252E91EF0, 0xD000000000000021, 0x8000000252E68B10, 26);
    goto LABEL_11;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = sub_252CC8BD0(v6);

  if (!v7)
  {
LABEL_11:
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v24 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v17[v24] = 5;
    [v17 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v25 = sub_252E37254();
    [v17 setEntityResponses_];

    a2(v17);
    goto LABEL_18;
  }

  v8 = [a1 userTask];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 attribute];

    v11 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v12 = sub_252E36F04();
    v13 = [v11 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setTaskType_];
    [v14 setAttribute_];
    [v14 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C130;
    *(v15 + 32) = v7;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = v14;
    v17 = v14;
    v7 = v7;
    v18 = sub_252B4CA9C(v15, inited, 0, 1);
    LOBYTE(v14) = v19;

    swift_setDeallocating();
    swift_arrayDestroy();
    if (v14)
    {
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544C70);
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000082, 0x8000000252E91EF0, 0xD000000000000021, 0x8000000252E68B10, 46);

      v21 = parse(error:with:)(v18, a1);
      (a2)();

      v22 = v18;
    }

    else
    {
      a2(v18);
      v22 = v18;
    }

    sub_252927D3C(v22);
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000082, 0x8000000252E91EF0, 0xD000000000000021, 0x8000000252E68B10, 36);
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v27 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v17[v27] = 5;
    [v17 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v28 = sub_252E37254();
    [v17 setEntityResponses_];

    a2(v17);
  }

LABEL_18:
}

BOOL sub_252CC94B8(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attribute];

    if (v4 == 31)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 32)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v8 = [a1 userTask];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 attribute];

    if (v10 != 35)
    {
      goto LABEL_13;
    }

    return 1;
  }

  sub_252C515AC();
LABEL_13:
  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 attribute];

    if (v13 == 33)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v15 = [a1 userTask];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 attribute];

  if (v17 != 36)
  {
    return 0;
  }

  v18 = [a1 userTask];
  if (!v18)
  {
LABEL_22:
    sub_252C515AC();
    return 0;
  }

  v19 = v18;
  if ([v18 taskType] == 4)
  {

    return 1;
  }

  else
  {
    v20 = [v19 taskType];

    return v20 == 5;
  }
}

uint64_t sub_252CC9678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[136] = v3;
  v4[135] = a3;
  v4[134] = a2;
  v4[133] = a1;
  v4[137] = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  v4[138] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[139] = v5;
  v4[140] = *(v5 - 8);
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CC9780, 0, 0);
}

uint64_t sub_252CC9780()
{
  v1 = *(v0 + 1080);
  *(v0 + 1288) = sub_252C4D664(5) & 1;
  if (v1)
  {
    v2 = *(v0 + 1080);
    v50 = sub_252C308A4();

    v3 = [v2 entityResponses];
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = v3;
      type metadata accessor for HomeEntityResponse();
      v6 = sub_252E37264();

      v51 = v4;
      if (v6 >> 62)
      {
        goto LABEL_70;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
      {
        v8 = MEMORY[0x277D84F90];
        if (!i)
        {
          break;
        }

        v9 = 0;
        v10 = v6 & 0xC000000000000001;
        v11 = v6 & 0xFFFFFFFFFFFFFF8;
        v44 = v6;
        v45 = v6 & 0xFFFFFFFFFFFFFF8;
        v12 = (v6 + 32);
        v13 = &off_279711000;
        v48 = i;
        v49 = v0;
        v46 = v6 & 0xC000000000000001;
        v47 = (v6 + 32);
        while (1)
        {
          if (v10)
          {
            v14 = MEMORY[0x2530ADF00](v9, v44);
          }

          else
          {
            if (v9 >= *(v11 + 16))
            {
              goto LABEL_67;
            }

            v14 = *&v12[8 * v9];
          }

          v15 = v14;
          v16 = __OFADD__(v9++, 1);
          if (v16)
          {
            break;
          }

          v17 = [v14 v13[221]];
          if (v17 && (v18 = v17, v6 = [v17 type], v18, v6 == 7) && (v19 = objc_msgSend(v15, sel_taskResponses)) != 0)
          {
            v20 = v19;
            type metadata accessor for HomeUserTaskResponse();
            v6 = v13;
            v21 = sub_252E37264();

            v22 = [v15 (v6 + 1198)];
            if (v22)
            {

              if (v21 >> 62)
              {
                v23 = sub_252E378C4();
                if (v23)
                {
LABEL_19:
                  v24 = 0;
                  v0 = v21 + 32;
                  while (1)
                  {
                    if ((v21 & 0xC000000000000001) != 0)
                    {
                      v25 = MEMORY[0x2530ADF00](v24, v21);
                    }

                    else
                    {
                      if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_69;
                      }

                      v25 = *(v0 + 8 * v24);
                    }

                    v6 = v25;
                    v16 = __OFADD__(v24++, 1);
                    if (v16)
                    {
                      goto LABEL_68;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v26 = qword_27F575C40;
                    v27 = [v6 taskOutcome];
                    if (*(v26 + 16))
                    {
                      v28 = v27;
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v28);
                      v29 = sub_252E37F14();
                      v30 = -1 << *(v26 + 32);
                      v31 = v29 & ~v30;
                      if ((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
                      {
                        break;
                      }
                    }

LABEL_20:

                    if (v24 == v23)
                    {

LABEL_36:
                      i = v48;
                      v0 = v49;
                      v11 = v45;
                      v10 = v46;
                      goto LABEL_41;
                    }
                  }

                  v32 = ~v30;
                  while (*(*(v26 + 48) + 8 * v31) != v28)
                  {
                    v31 = (v31 + 1) & v32;
                    if (((*(v26 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                    {
                      goto LABEL_20;
                    }
                  }

                  sub_252E37A94();
                  v6 = *(v51 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_36;
                }
              }

              else
              {
                v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v23)
                {
                  goto LABEL_19;
                }
              }

              i = v48;
              v0 = v49;
LABEL_41:
              v12 = v47;
              v13 = &off_279711000;
            }

            else
            {

              v13 = &off_279711000;
            }
          }

          else
          {
          }

          if (v9 == i)
          {
            v34 = v51;
            v8 = MEMORY[0x277D84F90];
            goto LABEL_45;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }

      v34 = MEMORY[0x277D84F90];
LABEL_45:

      v52 = v8;
      if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
      {
        v35 = sub_252E378C4();
      }

      else
      {
        v35 = *(v34 + 16);
      }

      v6 = 0;
      v4 = MEMORY[0x277D84F90];
      while (v35 != v6)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x2530ADF00](v6, v34);
        }

        else
        {
          if (v6 >= *(v34 + 16))
          {
            goto LABEL_65;
          }

          v36 = *(v34 + 8 * v6 + 32);
        }

        v37 = v36;
        v38 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v39 = sub_252DA124C(0);

        ++v6;
        if (v39)
        {
          MEMORY[0x2530AD700]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v4 = v52;
          v6 = v38;
        }
      }
    }

    v33 = v50;
  }

  else
  {
    v33 = 0;
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + 1289) = v33;
  *(v0 + 1144) = v4;
  v40 = swift_task_alloc();
  *(v0 + 1152) = v40;
  *v40 = v0;
  v40[1] = sub_252CC9D10;
  v41 = *(v0 + 1080);
  v42 = *(v0 + 1072);

  return sub_252CCB530(v42, v41);
}

uint64_t sub_252CC9D10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1160) = a1;
  *(v3 + 1168) = v1;

  if (v1)
  {
    v4 = sub_252CCAF04;
  }

  else
  {
    v4 = sub_252CC9E28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CC9E28(uint64_t a1)
{
  v90 = v1;
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 288), v1 + 1024);

  v3 = *(v1 + 1048);
  v4 = *(v1 + 1056);
  __swift_project_boxed_opaque_existential_1((v1 + 1024), v3);
  LOBYTE(v3) = (*(v4 + 120))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1024));
  v5 = *(v1 + 1144);
  if ((v3 & 1) == 0)
  {
    v46 = *(v1 + 1289);
    v47 = *(v1 + 1288);
    v48 = *(v1 + 1104);
    v49 = *(v1 + 1096);
    __swift_project_boxed_opaque_existential_1((*(v1 + 1088) + 24), *(*(v1 + 1088) + 48));
    v50 = sub_252E36324();
    v51 = *(*(v50 - 8) + 56);
    v51(v48, 1, 1, v50);
    v51(v48 + v49[10], 1, 1, v50);
    *(v48 + v49[5]) = 0;
    *(v48 + v49[6]) = 0;
    *(v48 + v49[7]) = 0;
    *(v48 + v49[8]) = v46;
    *(v48 + v49[9]) = v47;
    sub_252CCB1E4(v48, v5);

    v52 = sub_252C0AEE4();
    *(v1 + 1232) = v52;
    v87 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v53 = swift_task_alloc();
    *(v1 + 1240) = v53;
    *v53 = v1;
    v53[1] = sub_252CCAA04;

    return v87(0xD000000000000022, 0x8000000252E916A0, v52);
  }

  v6 = *(v1 + 1088);
  v7 = *(v1 + 1080);
  v8 = *(v1 + 1072);
  memcpy((v1 + 16), (v6 + 112), 0x1F8uLL);
  memcpy(__dst, (v6 + 112), sizeof(__dst));
  v9 = v8;
  sub_2529D291C(v1 + 16, v1 + 520);
  v10 = sub_252953488(v8, __dst, 0);
  *(v1 + 1176) = v10;

  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v13 = swift_allocObject();
  *(v1 + 1184) = v13;
  *(v13 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v85 = v13;
  v86 = v10;
  *(v13 + 24) = v5;
  if (!v7)
  {
    goto LABEL_73;
  }

  v14 = [*(v1 + 1080) entityResponses];
  if (!v14)
  {
    goto LABEL_73;
  }

  v15 = v14;
  type metadata accessor for HomeEntityResponse();
  v16 = sub_252E37264();

  v89 = v12;
  v80 = v16;
  if (v16 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v18 = MEMORY[0x277D84F90];
    v19 = &off_279711000;
    if (i)
    {
      v20 = 0;
      v21 = v80 & 0xC000000000000001;
      v22 = v80 & 0xFFFFFFFFFFFFFF8;
      v23 = v80 + 32;
      v83 = v80 & 0xC000000000000001;
      v84 = i;
      v81 = v80 + 32;
      v82 = v80 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v21)
        {
          v24 = MEMORY[0x2530ADF00](v20, v80);
        }

        else
        {
          if (v20 >= *(v22 + 16))
          {
            goto LABEL_64;
          }

          v24 = *(v23 + 8 * v20);
        }

        v25 = v24;
        v26 = __OFADD__(v20++, 1);
        if (v26)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v27 = [v24 v19[221]];
        if (v27 && (v28 = v27, v29 = [v27 type], v28, v29 == 7) && (v30 = objc_msgSend(v25, sel_taskResponses)) != 0)
        {
          v31 = v30;
          type metadata accessor for HomeUserTaskResponse();
          v32 = v19;
          v33 = sub_252E37264();

          v34 = [v25 v32 + 1198];
          if (v34)
          {

            if (v33 >> 62)
            {
              v35 = sub_252E378C4();
              if (v35)
              {
LABEL_20:
                v36 = 0;
                do
                {
                  if ((v33 & 0xC000000000000001) != 0)
                  {
                    v37 = MEMORY[0x2530ADF00](v36, v33);
                  }

                  else
                  {
                    if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_68;
                    }

                    v37 = *(v33 + 32 + 8 * v36);
                  }

                  v38 = v37;
                  v26 = __OFADD__(v36++, 1);
                  if (v26)
                  {
                    goto LABEL_67;
                  }

                  if (qword_27F53F730 != -1)
                  {
                    swift_once();
                  }

                  v39 = qword_27F575C40;
                  v40 = [v38 taskOutcome];
                  if (*(v39 + 16))
                  {
                    v41 = v40;
                    sub_252E37EC4();
                    MEMORY[0x2530AE390](v41);
                    v42 = sub_252E37F14();
                    v43 = -1 << *(v39 + 32);
                    v44 = v42 & ~v43;
                    if ((*(v39 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
                    {
                      v45 = ~v43;
                      while (*(*(v39 + 48) + 8 * v44) != v41)
                      {
                        v44 = (v44 + 1) & v45;
                        if (((*(v39 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                        {
                          goto LABEL_21;
                        }
                      }

                      sub_252E37A94();
                      sub_252E37AC4();
                      sub_252E37AD4();
                      sub_252E37AA4();
                      goto LABEL_40;
                    }
                  }

LABEL_21:
                }

                while (v36 != v35);
              }
            }

            else
            {
              v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v35)
              {
                goto LABEL_20;
              }
            }

LABEL_40:
            v19 = &off_279711000;
            v21 = v83;
            i = v84;
            v23 = v81;
            v22 = v82;
          }

          else
          {

            v19 = &off_279711000;
          }
        }

        else
        {
        }

        if (v20 == i)
        {
          v55 = v89;
          v18 = MEMORY[0x277D84F90];
          goto LABEL_46;
        }
      }
    }

    v55 = MEMORY[0x277D84F90];
LABEL_46:

    __dst[0] = v18;

    v56 = *(v55 + 16);
    if (!v56)
    {
      goto LABEL_71;
    }

LABEL_49:
    v57 = 0;
    v12 = MEMORY[0x277D84F90];
LABEL_50:
    v58 = v57;
    while (1)
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x2530ADF00](v58, v55);
      }

      else
      {
        if (v58 >= *(v55 + 16))
        {
          goto LABEL_66;
        }

        v59 = *(v55 + 8 * v58 + 32);
      }

      v60 = v59;
      v57 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v61 = [v59 v19[221]];
      if (v61)
      {
        v62 = v61;
        sub_252AF04C0();

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v12 = __dst[0];
        if (v57 != v56)
        {
          goto LABEL_50;
        }

        goto LABEL_72;
      }

      ++v58;
      if (v57 == v56)
      {
        goto LABEL_72;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v56 = sub_252E378C4();
  if (v56)
  {
    goto LABEL_49;
  }

LABEL_71:
  v12 = MEMORY[0x277D84F90];
LABEL_72:

LABEL_73:
  v63 = *(v1 + 1160);
  v64 = *(v1 + 1088);
  v65 = *(v1 + 1072);
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v66 = ControlHomeIntent.Builder.init()();
  v67 = sub_252B4EEFC(v12);

  v68 = (*(*v66 + 208))(v67);

  v69 = [v65 userTask];
  v70 = (*(*v68 + 184))();

  v72 = (*(*v70 + 224))(v71);
  *(v1 + 1192) = v72;

  v73 = v64[12];
  v74 = v64[13];
  __swift_project_boxed_opaque_existential_1(v64 + 9, v73);
  v75 = swift_task_alloc();
  *(v1 + 1200) = v75;
  *(v75 + 16) = v63;
  v76 = swift_task_alloc();
  *(v1 + 1208) = v76;
  v76[2] = v72;
  v76[3] = v85;
  v76[4] = v86;
  sub_252B03B94();
  v77 = swift_task_alloc();
  *(v1 + 1216) = v77;
  *v77 = v1;
  v77[1] = sub_252CCA7CC;
  v78 = *(v1 + 1136);
  v79 = *(v1 + 1064);
  v94 = v73;
  v95 = v74;
  v93 = 512;
  v92 = 0;

  return sub_252A199A8(v79, &unk_252E5A808, v75, &unk_252E5A818, v76, v78, 0, 0);
}

uint64_t sub_252CCA7CC()
{
  v2 = *(*v1 + 1136);
  v3 = *(*v1 + 1120);
  v4 = *(*v1 + 1112);
  *(*v1 + 1224) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252CCAF90;
  }

  else
  {

    v5 = sub_252CCA958;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CCA958()
{
  v1 = *(v0 + 1192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CCAA04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = v1;

  if (v1)
  {
    v4 = sub_252CCADE4;
  }

  else
  {
    v4 = sub_252CCAB3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CCAB3C()
{
  v1 = v0[156];
  v2 = v0[136];
  sub_252CCBF58(v0[138]);
  v3 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v3);
  v4 = swift_task_alloc();
  v0[158] = v4;
  *(v4 + 16) = v1;
  sub_252AD7CC4();
  v5 = swift_task_alloc();
  v0[159] = v5;
  *v5 = v0;
  v5[1] = sub_252CCAC64;
  v6 = v0[141];
  v7 = v0[133];

  return sub_252BDB88C(v7, &unk_252E5A7F0, v4, v6, 0, 0, 0, v3);
}

uint64_t sub_252CCAC64()
{
  v2 = *(*v1 + 1128);
  v3 = *(*v1 + 1120);
  v4 = *(*v1 + 1112);
  *(*v1 + 1280) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252CCB05C;
  }

  else
  {

    v5 = sub_252CCAE78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CCADE4()
{
  v1 = v0[145];
  sub_252CCBF58(v0[138]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252CCAE78()
{
  v1 = *(v0 + 1248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CCAF04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252CCAF90()
{
  v1 = *(v0 + 1192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CCB05C()
{
  v1 = *(v0 + 1248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CCB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for CompletionSnippetModel(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_252C236AC;

  return sub_252A24460(v8, a2, a3, a4);
}

uint64_t sub_252CCB1E4(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  type metadata accessor for HomeAutomationEntityResponses();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  v12 = v11[6];

  *(a1 + v12) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = a2;
  v14 = v11[7];

  *(a1 + v14) = v13;
  v15 = sub_25294833C(1u, 0, 0);
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v15 dictionary];
  if (!v17)
  {

LABEL_7:
    v25 = sub_252E36324();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v30[0] = 0;
  v20 = [v19 dataWithPropertyList:v18 format:200 options:0 error:v30];
  v21 = v30[0];
  if (!v20)
  {
    v26 = v21;
    v27 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v22 = sub_252E32D34();
  v24 = v23;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v22, v24);
  v25 = sub_252E36324();
  (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
LABEL_8:
  sub_252956C98(v9, a1 + v11[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  return sub_252956C98(v7, a1);
}

uint64_t sub_252CCB530(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252CCB554, 0, 0);
}

uint64_t sub_252CCB554()
{
  v1 = *(v0 + 24);
  v51 = sub_252C4D664(5);
  v50 = v0;
  if (v1)
  {
    v2 = *(v0 + 24);
    LODWORD(v3) = sub_252C308A4();

    v4 = [v2 entityResponses];
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = v4;
      type metadata accessor for HomeEntityResponse();
      v7 = sub_252E37264();

      v52 = v5;
      if (v7 >> 62)
      {
        goto LABEL_69;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
      {
        v9 = MEMORY[0x277D84F90];
        if (!i)
        {
          break;
        }

        v10 = 0;
        v11 = v7 & 0xC000000000000001;
        v12 = v7 & 0xFFFFFFFFFFFFFF8;
        v13 = v7 + 32;
        v49 = v3;
        v44 = v7;
        v45 = v7 + 32;
        v47 = v7 & 0xC000000000000001;
        v48 = i;
        v46 = v7 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v11)
          {
            v14 = MEMORY[0x2530ADF00](v10, v7);
          }

          else
          {
            if (v10 >= *(v12 + 16))
            {
              goto LABEL_66;
            }

            v14 = *(v13 + 8 * v10);
          }

          v15 = v14;
          v16 = __OFADD__(v10++, 1);
          if (v16)
          {
            break;
          }

          v17 = [v14 entity];
          if (v17 && (v18 = v17, v19 = [v17 type], v18, v19 == 7) && (v20 = objc_msgSend(v15, sel_taskResponses)) != 0)
          {
            v21 = v20;
            type metadata accessor for HomeUserTaskResponse();
            v3 = sub_252E37264();

            v22 = [v15 entity];
            if (v22)
            {

              if (v3 >> 62)
              {
                v23 = sub_252E378C4();
                if (v23)
                {
LABEL_19:
                  v24 = 0;
                  v7 = v3 + 32;
                  while (1)
                  {
                    if ((v3 & 0xC000000000000001) != 0)
                    {
                      v25 = MEMORY[0x2530ADF00](v24, v3);
                    }

                    else
                    {
                      if (v24 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_68;
                      }

                      v25 = *(v7 + 8 * v24);
                    }

                    v26 = v25;
                    v16 = __OFADD__(v24++, 1);
                    if (v16)
                    {
                      goto LABEL_67;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v27 = qword_27F575C40;
                    v28 = [v26 taskOutcome];
                    if (*(v27 + 16))
                    {
                      v29 = v28;
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v29);
                      v30 = sub_252E37F14();
                      v31 = -1 << *(v27 + 32);
                      v32 = v30 & ~v31;
                      if ((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
                      {
                        break;
                      }
                    }

LABEL_20:

                    if (v24 == v23)
                    {

LABEL_36:
                      LODWORD(v3) = v49;
                      v7 = v44;
                      goto LABEL_41;
                    }
                  }

                  v33 = ~v31;
                  while (*(*(v27 + 48) + 8 * v32) != v29)
                  {
                    v32 = (v32 + 1) & v33;
                    if (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                    {
                      goto LABEL_20;
                    }
                  }

                  sub_252E37A94();
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_36;
                }
              }

              else
              {
                v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v23)
                {
                  goto LABEL_19;
                }
              }

              LODWORD(v3) = v49;
LABEL_41:
              v11 = v47;
              i = v48;
              v13 = v45;
              v12 = v46;
            }

            else
            {

              LODWORD(v3) = v49;
            }
          }

          else
          {
          }

          if (v10 == i)
          {
            v34 = v52;
            v9 = MEMORY[0x277D84F90];
            goto LABEL_45;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        ;
      }

      v34 = MEMORY[0x277D84F90];
LABEL_45:

      v53 = v9;
      if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
      {
        v35 = sub_252E378C4();
      }

      else
      {
        v35 = *(v34 + 16);
      }

      v36 = 0;
      v7 = v34 & 0xC000000000000001;
      v5 = MEMORY[0x277D84F90];
      while (v35 != v36)
      {
        if (v7)
        {
          v37 = MEMORY[0x2530ADF00](v36, v34);
        }

        else
        {
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_64;
          }

          v37 = *(v34 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v40 = sub_252DA124C(0);

        ++v36;
        if (v40)
        {
          MEMORY[0x2530AD700]();
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v5 = v53;
          v36 = v39;
        }
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v50[5] = v5;
  v50[6] = *(v50[4] + 64);
  type metadata accessor for HomeAutomationEntityResponses();
  v41 = swift_allocObject();
  v50[7] = v41;
  *(v41 + 16) = 0;
  *(v41 + 24) = v5;

  v42 = swift_task_alloc();
  v50[8] = v42;
  *v42 = v50;
  v42[1] = sub_252CCBB18;

  return sub_252D2BB60(v41, v51 & 1, v3 & 1);
}

uint64_t sub_252CCBB18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252CCBCB8;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_252CCBC50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CCBC50()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_252CCBCB8()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_252CCBD54(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = sub_252C285CC();
  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      v4 = sub_252E378C4();
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_9:

    return 0;
  }

LABEL_4:

  v5 = sub_252C2895C();
  if (v5 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 == v6;
}

uint64_t sub_252CCBE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252CC9678(a1, a2, a3);
}

void *sub_252CCBEF4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for UnreachableResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252CCBF58(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252CCBFB4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252CCC048()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252927C20(v2);
}

uint64_t sub_252CCC0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252CCB0FC(a1, v4, v5, v6);
}

uint64_t sub_252CCC1D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TurnOffWhenBlackHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252CCC208(void *a1, const void *a2)
{
  if (!sub_252C4B5D4())
  {
    return 0;
  }

  v4 = [a1 userTask];
  if (!v4)
  {
    sub_252C515AC();
    return 0;
  }

  v5 = v4;
  v6 = [v4 attribute];

  if (v6 != 5)
  {
    return 0;
  }

  memcpy(__dst, a2, sizeof(__dst));
  result = sub_252A17D08();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = [result stringValue];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_252E36F34();
  v12 = v11;

  if (v10 == 0x2C302E303A425348 && v12 == 0xED00003B2C302E30)
  {

    return 1;
  }

  else
  {
    v13 = sub_252E37DB4();

    return v13 & 1;
  }
}

id sub_252CCC350(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v6 = sub_252D6CA80(v6);
    v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v8 = sub_252E36F04();
    v9 = [v7 initWithIdentifier:0 displayString:v8];

    v10 = v9;
    [v10 setBoolValue_];
    [v10 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v11 = sub_252D6CC80(v10);
    swift_beginAccess();
    v6[4] = v11;

    v6[3] = 27;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v12, v2);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E92000);
  if (v6)
  {
    v13 = v6[3];
  }

  else
  {
    v13 = 0;
  }

  v23[1] = v13;
  v24 = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v14 = sub_252E36F94();
  MEMORY[0x2530AD570](v14);

  sub_252CC3D90(v25, v26, 0xD000000000000090, 0x8000000252E92040);

  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v15 = sub_252D6CB58();
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 filters];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for HomeFilter();
    v18 = sub_252E37264();
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 time];
  v20 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v20 setUserTask_];
  if (v18)
  {
    type metadata accessor for HomeFilter();
    v21 = sub_252E37254();
  }

  else
  {
    v21 = 0;
  }

  [v20 setFilters_];

  [v20 setTime_];

  return v20;
}

uint64_t sub_252CCC780()
{
  v1 = 0x6574636172616863;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCC7DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252CCF3AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252CCC804(uint64_t a1)
{
  v2 = sub_252CCDF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCC840(uint64_t a1)
{
  v2 = sub_252CCDF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCC87C()
{
  if (*v0)
  {
    return 0x6574636172616863;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCC8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEE00636974736972)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCC9A0(uint64_t a1)
{
  v2 = sub_252CCDEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCC9DC(uint64_t a1)
{
  v2 = sub_252CCDEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCCA18()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCCA6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252CCF4C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252CCCA94(uint64_t a1)
{
  v2 = sub_252CCDE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCCAD0(uint64_t a1)
{
  v2 = sub_252CCDE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCCB0C()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCCB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCCC28(uint64_t a1)
{
  v2 = sub_252CCDDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCCC64(uint64_t a1)
{
  v2 = sub_252CCDDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252CCCCA0()
{
  if (*v0)
  {
    return 0x65536E6F69746361;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_252CCCCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCCDBC(uint64_t a1)
{
  v2 = sub_252CCDD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCCDF8(uint64_t a1)
{
  v2 = sub_252CCDD78();

  return MEMORY[0x2821FE720](a1, v2);
}

void HMRequestBase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545390, &qword_252E5A850);
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545398, &qword_252E5A858);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453A0, &qword_252E5A860);
  v71 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453A8, &qword_252E5A868);
  v11 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453B0, qword_252E5A870);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  objc_opt_self();
  v16 = v2;
  v17 = swift_dynamicCastObjCClass();
  v67 = v4;
  v65 = v6;
  if (v17)
  {
    v18 = v17;
    v64 = v11;
    v73 = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_252CCDF0C();
    v76 = v16;
    sub_252E37F84();
    v19 = [v18 characteristic];
    v79 = v19;
    LOBYTE(v80) = 1;
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    sub_252A67638(&qword_27F5453E8, &qword_27F5412E0, 0x277CD1970, protocol conformance descriptor for HMCharacteristic);
    v20 = v78;
    sub_252E37D54();
    if (v20)
    {

      (v77[1])(v15, v13);
      return;
    }

    v78 = v15;
    v63 = v13;
    v21 = v16;

    v30 = &off_279711000;
    v79 = [v18 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF0, &qword_252E59930);
    v31 = v18;
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      sub_252E37D04();
      v32 = v73;
      v22 = a1;
      v30 = &off_279711000;
    }

    else
    {
      v22 = a1;
      v32 = v73;
    }

    v79 = [v31 v30[206]];
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      sub_252E37D34();
    }

    v79 = [v31 v30[206]];
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      sub_252E37D24();
    }

    v80 = [v31 v30[206]];
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      v41 = v63;
      v42 = v78;
      sub_252E37CF4();
      v9 = v32;

      v43 = v76;
    }

    else
    {
      v41 = v63;
      v42 = v78;
      v43 = v76;
      v9 = v32;
    }

    LOBYTE(v79) = 0;
    sub_252E37CF4();
    v78 = 0;
    (v77[1])(v42, v41);

    v11 = v64;
  }

  else
  {
    v21 = v2;
    v22 = a1;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v73 = v9;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_252CCDEB8();
    v25 = v21;
    v26 = v74;
    sub_252E37F84();
    v27 = [v24 characteristic];
    v79 = v27;
    LOBYTE(v80) = 1;
    sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
    sub_252A67638(&qword_27F5453E8, &qword_27F5412E0, 0x277CD1970, protocol conformance descriptor for HMCharacteristic);
    v28 = v75;
    v29 = v78;
    sub_252E37D54();
    if (v29)
    {

      (*(v11 + 8))(v26, v28);
      return;
    }

    LOBYTE(v79) = 0;
    sub_252E37CF4();
    v33 = v26;
    v9 = v73;
    v78 = 0;
    (*(v11 + 8))(v33, v28);
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_252CCDE64();
    v77 = v22;
    v36 = v21;
    v37 = v21;
    v38 = v72;
    sub_252E37F84();
    v39 = [v35 attribute];
    v79 = v39;
    LOBYTE(v80) = 1;
    type metadata accessor for HMAttributeName(0);
    sub_252CCDE20(&qword_27F5453D0, protocol conformance descriptor for HMAttributeName);
    v40 = v78;
    sub_252E37D54();
    if (v40)
    {

      (*(v71 + 8))(v38, v9);
      return;
    }

    v76 = v36;
    v21 = v37;
    v22 = v77;

    v79 = [v35 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544AF0, &qword_252E59930);
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      sub_252E37D04();
    }

    v79 = [v35 value];
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      sub_252E37D34();
    }

    v79 = [v35 value];
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      sub_252E37D24();
    }

    v80 = [v35 value];
    if (swift_dynamicCast())
    {
      LOBYTE(v79) = 2;
      v44 = v72;
      sub_252E37CF4();
    }

    else
    {
      v44 = v72;
    }

    LOBYTE(v79) = 0;
    sub_252E37CF4();
    v45 = v76;
    v78 = 0;
    (*(v71 + 8))(v44, v9);
  }

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (v46)
  {
    v47 = v46;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_252CCDDCC();
    v48 = v22;
    v49 = v21;
    v50 = v21;
    v51 = v68;
    sub_252E37F84();
    v52 = [v47 attribute];
    v79 = v52;
    LOBYTE(v80) = 1;
    type metadata accessor for HMAttributeName(0);
    sub_252CCDE20(&qword_27F5453D0, protocol conformance descriptor for HMAttributeName);
    v53 = v70;
    v54 = v78;
    sub_252E37D54();
    if (v54)
    {

      (*(v69 + 8))(v51, v53);
      return;
    }

    LOBYTE(v79) = 0;
    sub_252E37CF4();
    (*(v69 + 8))(v51, v53);

    v78 = 0;
    v22 = v48;
    v21 = v49;
  }

  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (v55)
  {
    v56 = v55;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_252CCDD78();
    v57 = v21;
    v58 = v65;
    sub_252E37F84();
    v59 = [v56 actionSet];
    v79 = v59;
    LOBYTE(v80) = 1;
    sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
    v60 = v58;
    sub_252A67638(&qword_27F5453C0, &unk_2814B0260, 0x277CD1800, protocol conformance descriptor for HMActionSet);
    v61 = v67;
    v62 = v78;
    sub_252E37D54();

    if (v62)
    {

      (*(v66 + 8))(v60, v61);
    }

    else
    {
      LOBYTE(v79) = 0;
      sub_252E37CF4();
      (*(v66 + 8))(v60, v61);
    }
  }
}

unint64_t sub_252CCDD78()
{
  result = qword_27F5453B8;
  if (!qword_27F5453B8)
  {
    result = swift_getWitnessTable(byte_252E5B30C, &type metadata for HMExecuteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5453B8);
  }

  return result;
}

unint64_t sub_252CCDDCC()
{
  result = qword_27F5453C8;
  if (!qword_27F5453C8)
  {
    result = swift_getWitnessTable(aM_11, &type metadata for HMAttributeReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5453C8);
  }

  return result;
}

uint64_t sub_252CCDE20(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HMAttributeName(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252CCDE64()
{
  result = qword_27F5453D8;
  if (!qword_27F5453D8)
  {
    result = swift_getWitnessTable(byte_252E5B26C, &type metadata for HMAttributeWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5453D8);
  }

  return result;
}

unint64_t sub_252CCDEB8()
{
  result = qword_27F5453E0;
  if (!qword_27F5453E0)
  {
    result = swift_getWitnessTable(asc_252E5B21C, &type metadata for HMCharacteristicReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5453E0);
  }

  return result;
}

unint64_t sub_252CCDF0C()
{
  result = qword_27F5453F0;
  if (!qword_27F5453F0)
  {
    result = swift_getWitnessTable(asc_252E5B1CC, &type metadata for HMCharacteristicWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5453F0);
  }

  return result;
}

uint64_t sub_252CCDFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000252E92120 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_252E37DB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_252CCE034(uint64_t a1)
{
  v2 = sub_252CCE214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCE070(uint64_t a1)
{
  v2 = sub_252CCE214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMCharacteristic.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5453F8, &qword_252E5A890);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CCE214();
  sub_252E37F84();
  v8 = [v2 characteristicType];
  sub_252E36F34();

  sub_252E37CF4();
  (*(v5 + 8))(v7, v4);
}

unint64_t sub_252CCE214()
{
  result = qword_27F545400;
  if (!qword_27F545400)
  {
    result = swift_getWitnessTable(byte_252E5B17C, &type metadata for HMCharacteristicCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545400);
  }

  return result;
}

uint64_t sub_252CCE28C()
{
  if (*v0)
  {
    return 0x65536E6F69746361;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_252CCE2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xED00006570795474)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252CCE3B0(uint64_t a1)
{
  v2 = sub_252CCE61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCE3EC(uint64_t a1)
{
  v2 = sub_252CCE61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMActionSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545408, &qword_252E5A898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CCE61C();
  sub_252E37F84();
  v9 = [v3 name];
  sub_252E36F34();

  v12[15] = 0;
  sub_252E37CF4();
  if (!v2)
  {

    v10 = [v3 actionSetType];
    sub_252E36F34();

    v12[14] = 1;
    sub_252E37CF4();
  }

  (*(v6 + 8))(v8, v5);
}

unint64_t sub_252CCE61C()
{
  result = qword_27F545410;
  if (!qword_27F545410)
  {
    result = swift_getWitnessTable(byte_252E5B12C, &type metadata for HMActionSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545410);
  }

  return result;
}

uint64_t sub_252CCE718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252CCE7A0(uint64_t a1)
{
  v2 = sub_252CCE9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CCE7DC(uint64_t a1)
{
  v2 = sub_252CCE9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMBatchRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545418, &qword_252E5A8A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CCE9C4();
  sub_252E37F84();
  v8 = [v2 requests];
  sub_25293F638(0, &qword_27F542118, 0x277CD1D58);
  v9 = sub_252E37264();

  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545428, qword_252E5A8A8);
  sub_252CCEA18();
  sub_252E37D54();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_252CCE9C4()
{
  result = qword_27F545420;
  if (!qword_27F545420)
  {
    result = swift_getWitnessTable(aM_12, &type metadata for HMBatchRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545420);
  }

  return result;
}

unint64_t sub_252CCEA18()
{
  result = qword_27F545430;
  if (!qword_27F545430)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545428, qword_252E5A8A8);
    v4[0] = sub_252A67638(&qword_27F545438, &qword_27F542118, 0x277CD1D58, protocol conformance descriptor for HMRequestBase);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F545430);
  }

  return result;
}

unint64_t sub_252CCEB70()
{
  result = qword_27F545440;
  if (!qword_27F545440)
  {
    result = swift_getWitnessTable(byte_252E5ABAC, &type metadata for HMExecuteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545440);
  }

  return result;
}

unint64_t sub_252CCEBC8()
{
  result = qword_27F545448;
  if (!qword_27F545448)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for HMAttributeReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545448);
  }

  return result;
}

unint64_t sub_252CCEC20()
{
  result = qword_27F545450;
  if (!qword_27F545450)
  {
    result = swift_getWitnessTable(byte_252E5AD1C, &type metadata for HMAttributeWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545450);
  }

  return result;
}

unint64_t sub_252CCEC78()
{
  result = qword_27F545458;
  if (!qword_27F545458)
  {
    result = swift_getWitnessTable(byte_252E5ADD4, &type metadata for HMCharacteristicReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545458);
  }

  return result;
}

unint64_t sub_252CCECD0()
{
  result = qword_27F545460;
  if (!qword_27F545460)
  {
    result = swift_getWitnessTable(asc_252E5AE8C, &type metadata for HMCharacteristicWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545460);
  }

  return result;
}

unint64_t sub_252CCED28()
{
  result = qword_27F545468;
  if (!qword_27F545468)
  {
    result = swift_getWitnessTable(byte_252E5AF44, &type metadata for HMCharacteristicCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545468);
  }

  return result;
}

unint64_t sub_252CCED80()
{
  result = qword_27F545470;
  if (!qword_27F545470)
  {
    result = swift_getWitnessTable(byte_252E5AFFC, &type metadata for HMActionSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545470);
  }

  return result;
}

unint64_t sub_252CCEDD8()
{
  result = qword_27F545478;
  if (!qword_27F545478)
  {
    result = swift_getWitnessTable(byte_252E5B0B4, &type metadata for HMBatchRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545478);
  }

  return result;
}

unint64_t sub_252CCEE30()
{
  result = qword_27F545480;
  if (!qword_27F545480)
  {
    result = swift_getWitnessTable(asc_252E5B024, &type metadata for HMBatchRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545480);
  }

  return result;
}

unint64_t sub_252CCEE88()
{
  result = qword_27F545488;
  if (!qword_27F545488)
  {
    result = swift_getWitnessTable(byte_252E5B04C, &type metadata for HMBatchRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545488);
  }

  return result;
}

unint64_t sub_252CCEEE0()
{
  result = qword_27F545490;
  if (!qword_27F545490)
  {
    result = swift_getWitnessTable("5", &type metadata for HMActionSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545490);
  }

  return result;
}

unint64_t sub_252CCEF38()
{
  result = qword_27F545498;
  if (!qword_27F545498)
  {
    result = swift_getWitnessTable(aE_11, &type metadata for HMActionSetCodingKeys, v0, v1);
    atomic_store(result, &qword_27F545498);
  }

  return result;
}

unint64_t sub_252CCEF90()
{
  result = qword_27F5454A0;
  if (!qword_27F5454A0)
  {
    result = swift_getWitnessTable(byte_252E5AEB4, &type metadata for HMCharacteristicCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454A0);
  }

  return result;
}

unint64_t sub_252CCEFE8()
{
  result = qword_27F5454A8;
  if (!qword_27F5454A8)
  {
    result = swift_getWitnessTable(byte_252E5AEDC, &type metadata for HMCharacteristicCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454A8);
  }

  return result;
}

unint64_t sub_252CCF040()
{
  result = qword_27F5454B0;
  if (!qword_27F5454B0)
  {
    result = swift_getWitnessTable(byte_252E5ADFC, &type metadata for HMCharacteristicWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454B0);
  }

  return result;
}

unint64_t sub_252CCF098()
{
  result = qword_27F5454B8;
  if (!qword_27F5454B8)
  {
    result = swift_getWitnessTable(byte_252E5AE24, &type metadata for HMCharacteristicWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454B8);
  }

  return result;
}

unint64_t sub_252CCF0F0()
{
  result = qword_27F5454C0;
  if (!qword_27F5454C0)
  {
    result = swift_getWitnessTable(asc_252E5AD44, &type metadata for HMCharacteristicReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454C0);
  }

  return result;
}

unint64_t sub_252CCF148()
{
  result = qword_27F5454C8;
  if (!qword_27F5454C8)
  {
    result = swift_getWitnessTable(aM_13, &type metadata for HMCharacteristicReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454C8);
  }

  return result;
}

unint64_t sub_252CCF1A0()
{
  result = qword_27F5454D0;
  if (!qword_27F5454D0)
  {
    result = swift_getWitnessTable(byte_252E5AC8C, &type metadata for HMAttributeWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454D0);
  }

  return result;
}

unint64_t sub_252CCF1F8()
{
  result = qword_27F5454D8;
  if (!qword_27F5454D8)
  {
    result = swift_getWitnessTable(asc_252E5ACB4, &type metadata for HMAttributeWriteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454D8);
  }

  return result;
}

unint64_t sub_252CCF250()
{
  result = qword_27F5454E0;
  if (!qword_27F5454E0)
  {
    result = swift_getWitnessTable(byte_252E5ABD4, &type metadata for HMAttributeReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454E0);
  }

  return result;
}

unint64_t sub_252CCF2A8()
{
  result = qword_27F5454E8;
  if (!qword_27F5454E8)
  {
    result = swift_getWitnessTable(byte_252E5ABFC, &type metadata for HMAttributeReadRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454E8);
  }

  return result;
}

unint64_t sub_252CCF300()
{
  result = qword_27F5454F0;
  if (!qword_27F5454F0)
  {
    result = swift_getWitnessTable(byte_252E5AB1C, &type metadata for HMExecuteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454F0);
  }

  return result;
}

unint64_t sub_252CCF358()
{
  result = qword_27F5454F8;
  if (!qword_27F5454F8)
  {
    result = swift_getWitnessTable(byte_252E5AB44, &type metadata for HMExecuteRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5454F8);
  }

  return result;
}

uint64_t sub_252CCF3AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEE00636974736972 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252CCF4C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252CCF61C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return (sub_252CCFB28)(a2);
}

void *sub_252CCF6CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockGetATVStatusHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252CCF708(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 == 2 || (v4) && (v5 = [a1 filters]) != 0)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v8 = [a1 userTask];
    v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = v9;
      v13 = 1;
LABEL_44:
      sub_252929F10(v12, v13);
      return 0;
    }

    v14 = [a1 userTask];
    if (v14)
    {
      v15 = v14;
      if ([v14 taskType] == 4)
      {
      }

      else
      {
        v16 = [v15 taskType];

        if (v16 != 5)
        {
          goto LABEL_43;
        }
      }

      if (v9 >> 62)
      {
        goto LABEL_42;
      }

      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
LABEL_43:
        v12 = v9;
        v13 = 0;
        goto LABEL_44;
      }

LABEL_14:
      v18 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x2530ADF00](v18, v9);
          v20 = __OFADD__(v18++, 1);
          if (v20)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            sub_252929F10(v9, 0);

            return 1;
          }
        }

        else
        {
          if (v18 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_42:
            v17 = sub_252E378C4();
            if (!v17)
            {
              goto LABEL_43;
            }

            goto LABEL_14;
          }

          v19 = *(v9 + 32 + 8 * v18);

          v20 = __OFADD__(v18++, 1);
          if (v20)
          {
            goto LABEL_38;
          }
        }

        v21 = (*v19 + 256);
        v22 = *v21;
        if ((*v21)() == 41)
        {
          sub_252929F10(v9, 0);

          return 1;
        }

        v23 = (*(*v19 + 272))();
        if (*(v23 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v24 = sub_252E37F14();
          v25 = -1 << *(v23 + 32);
          v26 = v24 & ~v25;
          if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            v27 = ~v25;
            while (*(*(v23 + 48) + 8 * v26) != 41)
            {
              v26 = (v26 + 1) & v27;
              if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            goto LABEL_39;
          }
        }

LABEL_25:

        v29 = (v22)(v28);
        if (v29 == 38)
        {
          break;
        }

        v30 = MEMORY[0x277D84FA0];
        if (v29 == 41)
        {
          v31 = &unk_2864AEF28;
LABEL_29:
          v30 = sub_2529FC004(v31);
        }

        if (*(v30 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v32 = sub_252E37F14();
          v33 = -1 << *(v30 + 32);
          v34 = v32 & ~v33;
          if ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
          {
            v35 = ~v33;
            while (*(*(v30 + 48) + 8 * v34) != 41)
            {
              v34 = (v34 + 1) & v35;
              if (((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            goto LABEL_39;
          }
        }

LABEL_15:

        if (v18 == v17)
        {
          goto LABEL_43;
        }
      }

      v31 = &unk_2864AEF00;
      goto LABEL_29;
    }

    sub_252929F10(v9, 0);
    sub_252C515AC();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_252CCFB28()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CCFBC4, 0, 0);
}

uint64_t sub_252CCFBC4()
{

  sub_252E362B4();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_25295A234;
  v2 = *(v0 + 24);

  return sub_2529592E8(v2);
}

uint64_t sub_252CCFCB8()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 type];

      if (!v4)
      {
        return 0;
      }
    }
  }

  v5 = [v0 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 value];

    if (v7)
    {
      v8 = [v7 type];

      if (v8 == 1)
      {
        return 1;
      }
    }
  }

  if (sub_252C24B5C() & 1) != 0 || (sub_252AAB844())
  {
    return 1;
  }

  result = [v0 userTask];
  if (result)
  {
    v10 = result;
    v11 = [result value];

    if (v11)
    {
      v12 = [v11 type];

      return v12 == 8;
    }

    return 0;
  }

  return result;
}

uint64_t sub_252CCFE10()
{
  v1 = [v0 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v5 = [v4 value];
      if (v5)
      {
        v6 = [v5 type];

        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
    }
  }

  v7 = [v0 automatableTask];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  type metadata accessor for ControlAutomateHomeIntent();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

    v11 = [v10 value];
    if (v11)
    {
      v12 = [v11 type];

      if (v12 == 1)
      {
        return 1;
      }
    }

LABEL_11:
    if (sub_252C24C90())
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (sub_252C24C90())
  {
    return 1;
  }

LABEL_14:
  if (sub_252AAB938())
  {
    return 1;
  }

  result = [v0 automatableTask];
  if (result)
  {
    v14 = result;
    type metadata accessor for ControlAutomateHomeIntent();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v17 = [v16 value];
      if (v17)
      {
        v18 = [v17 type];

        return v18 == 8;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id ControlHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_252CD0060(void *a1, void (*a2)(id), uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v41 - v11;
  if (qword_27F53F570 != -1)
  {
    swift_once();
  }

  v13 = qword_27F544EF8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v7 + 16))(v10, v12, v6);
  v14 = [a1 userTask];
  if (v14)
  {
    v15 = v14;
    v41[0] = v13;
    v41[1] = a3;
    v42 = a2;
    v43 = v10;
    v44 = v6;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544C40);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_252E379F4();

    v46 = 0xD00000000000001FLL;
    v47 = 0x8000000252E921C0;
    v45 = [a1 userTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v17 = sub_252E36F94();
    MEMORY[0x2530AD570](v17);

    sub_252CC3D90(v46, v47, 0xD00000000000007ELL, 0x8000000252E921E0);

    if (![v15 attribute])
    {
      sub_252CC3D90(0xD000000000000026, 0x8000000252E922C0, 0xD00000000000007ELL, 0x8000000252E921E0);
      type metadata accessor for ControlHomeUserTaskResolutionResult();
      v32 = [swift_getObjCClassFromMetadata() needsValue];
      v35 = sub_252E375C4();
      v40 = MEMORY[0x277D84F90];
      v36 = v41[0];
LABEL_17:
      v10 = v43;
      sub_252E36A74(v35, &dword_252917000, v36, "ResolveUserTask", 15, 2, v43, " enableTelemetry=YES ", 21, 2, v40);
      v42(v32);
      goto LABEL_18;
    }

    v18 = [a1 userTask];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 taskType];

      v21 = v41[0];
      if (v20 == 1 && (sub_252CCFCB8() & 1) == 0)
      {
        if ([v15 attribute] == 8)
        {
          v22 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v23 = sub_252E36F04();
          v24 = [v22 initWithIdentifier:0 displayString:v23];

          v25 = v24;
          [v25 setBoolValue_];
          [v25 setType_];

          v26 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v27 = v25;
          v28 = sub_252E36F04();
          v29 = [v26 initWithIdentifier:0 displayString:v28];

          v30 = v29;
          [v30 setTaskType_];
          [v30 setAttribute_];
          [v30 setValue_];

          type metadata accessor for ControlHomeUserTaskResolutionResult();
          v31 = v30;
          v32 = sub_252E2C928(v30);

          v33 = sub_252E375C4();
          v10 = v43;
          sub_252E36A74(v33, &dword_252917000, v21, "ResolveUserTask", 15, 2, v43, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
          v42(v32);

LABEL_18:
          v6 = v44;
          goto LABEL_19;
        }

        sub_252CC3D90(0xD000000000000028, 0x8000000252E92290, 0xD00000000000007ELL, 0x8000000252E921E0);
        type metadata accessor for ControlHomeUserTaskResolutionResult();
        v37 = [swift_getObjCClassFromMetadata() needsValue];
        goto LABEL_16;
      }
    }

    else
    {
      sub_252C515AC();
      v21 = v41[0];
    }

    sub_252CC3D90(0xD000000000000022, 0x8000000252E92260, 0xD00000000000007ELL, 0x8000000252E921E0);
    type metadata accessor for ControlHomeUserTaskResolutionResult();
    v37 = sub_252E2C7CC(v15);
LABEL_16:
    v32 = v37;
    v35 = sub_252E375C4();
    v40 = MEMORY[0x277D84F90];
    v36 = v21;
    goto LABEL_17;
  }

  type metadata accessor for ControlHomeUserTaskResolutionResult();
  v15 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  v34 = sub_252E375C4();
  sub_252E36A74(v34, &dword_252917000, v13, "ResolveUserTask", 15, 2, v10, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  a2(v15);
LABEL_19:

  v38 = *(v7 + 8);
  v38(v10, v6);
  return (v38)(v12, v6);
}

uint64_t sub_252CD0790(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v164 = a3;
  v165 = a2;
  v167 = sub_252E36AD4();
  v4 = *(v167 - 1);
  v5 = MEMORY[0x28223BE20](v167);
  v157 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v152 - v7;
  v9 = sub_252E36AB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v152 - v14);
  if (qword_27F53F570 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v16 = qword_27F544EF8;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v17 = *(v10 + 16);
    v166 = v15;
    v17(v13, v15, v9);
    v18 = [a1 filters];
    if (!v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_252E3C130;
      type metadata accessor for ControlHomeFiltersResolutionResult();
      *(v24 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      v25 = sub_252E375C4();
      sub_252E36A74(v25, &dword_252917000, v16, "ResolveFilters", 14, 2, v13, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      v165(v24);

      goto LABEL_100;
    }

    v19 = v18;
    v160 = v9;
    v161 = v16;
    v168 = a1;
    v158 = type metadata accessor for HomeFilter();
    v9 = sub_252E37264();

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v167, qword_27F544C40);
    a1 = *(v4 + 16);
    v162 = v20;
    (a1)(v8);
    v171[0] = 0;
    v171[1] = 0xE000000000000000;
    sub_252E379F4();

    v171[0] = 0xD00000000000001ELL;
    v171[1] = 0x8000000252E922F0;
    v21 = [v168 filters];
    if (v21)
    {
      v22 = v21;
      v23 = sub_252E37264();
    }

    else
    {
      v23 = 0;
    }

    v170 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
    v26 = sub_252E36F94();
    MEMORY[0x2530AD570](v26);

    v163 = "Starting to resolve userTask: \n";
    sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, 0x8000000252E921E0);

    v27 = *(v4 + 8);
    v156 = v4 + 8;
    v28 = v27(v8, v167);
    sub_252B680FC(v28);
    v29 = sub_252B63488();

    v159 = v13;
    v169 = v9;
    if (v29)
    {
      goto LABEL_47;
    }

    v153 = v27;
    v30 = [v168 userTask];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    v32 = [v30 taskType];
    v33 = v163;
    if (v32 == 4)
    {
    }

    else
    {
      v34 = [v31 taskType];

      if (v34 != 5)
      {
        goto LABEL_29;
      }
    }

    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E924F0, 0xD00000000000007ELL, v33 | 0x8000000000000000);
    v171[0] = MEMORY[0x277D84F90];
    v155 = v10;
    if (!(v9 >> 62))
    {
      v4 = v160;
      v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_81:
    v4 = v160;
    v8 = sub_252E378C4();
LABEL_17:
    v15 = MEMORY[0x277D84F90];
    if (!v8)
    {
      v52 = MEMORY[0x277D84F90];
LABEL_40:

      v53 = sub_252E375C4();
      sub_252E36A74(v53, &dword_252917000, v161, "ResolveFilters", 14, 2, v13, " enableTelemetry=YES ", 21, 2, v15);
LABEL_41:
      v165(v52);

      v9 = v4;
      v10 = v155;
      goto LABEL_100;
    }

    v35 = 0;
    v13 = (v9 & 0xC000000000000001);
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v36 = MEMORY[0x2530ADF00](v35, v9);
      }

      else
      {
        if (v35 >= *(v10 + 16))
        {
          goto LABEL_77;
        }

        v36 = *(v9 + 8 * v35 + 32);
      }

      a1 = v36;
      v9 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v15 = v171;
      sub_252E372D4();
      ++v35;
      v37 = v9 == v8;
      v9 = v169;
      if (v37)
      {
        v52 = v171[0];
        v13 = v159;
        v15 = MEMORY[0x277D84F90];
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  sub_252C515AC();
LABEL_29:
  if (sub_252C4DD64())
  {
    v38 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(v9);
    if (!v38)
    {
      goto LABEL_104;
    }

    v154 = v38;
    if (v38 >> 62)
    {
      v39 = sub_252E378C4();
      if (v39 < 2)
      {
LABEL_103:

LABEL_104:
        v171[0] = 0;
        v171[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E923C0);
        ControlHomeIntent.getTargetDeviceTypes()();
        sub_25292A344();
        v134 = sub_252E373B4();
        v136 = v135;

        MEMORY[0x2530AD570](v134, v136);

        v137 = v163;
        sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000);

        v138 = sub_252A7564C(v9);
        if (v139)
        {
          sub_252CC3D90(0xD000000000000019, 0x8000000252E92420, 0xD00000000000007ELL, v137 | 0x8000000000000000);
          v171[0] = MEMORY[0x277D84F90];
          v155 = v10;
          if (v9 >> 62)
          {
            goto LABEL_124;
          }

          v4 = v160;
          for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
          {
            v141 = v161;
            v142 = MEMORY[0x277D84F90];
            if (!i)
            {
              break;
            }

            v143 = 0;
            v144 = v9 & 0xC000000000000001;
            v145 = v9 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v144)
              {
                v146 = MEMORY[0x2530ADF00](v143, v9);
              }

              else
              {
                if (v143 >= *(v145 + 16))
                {
                  goto LABEL_123;
                }

                v146 = *(v9 + 8 * v143 + 32);
              }

              v147 = v146;
              v9 = v143 + 1;
              if (__OFADD__(v143, 1))
              {
                break;
              }

              type metadata accessor for ControlHomeFiltersResolutionResult();
              sub_252E2B004(v147);

              MEMORY[0x2530AD700]();
              if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
              ++v143;
              v37 = v9 == i;
              v9 = v169;
              if (v37)
              {
                v52 = v171[0];
                v141 = v161;
                v142 = MEMORY[0x277D84F90];
                goto LABEL_121;
              }
            }

            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v4 = v160;
          }

          v52 = MEMORY[0x277D84F90];
LABEL_121:

          v151 = sub_252E375C4();
          v13 = v159;
          sub_252E36A74(v151, &dword_252917000, v141, "ResolveFilters", 14, 2, v159, " enableTelemetry=YES ", 21, 2, v142);
          goto LABEL_41;
        }

        v148 = v138;

        v171[0] = 0;
        v171[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E92440);
        v170 = v148;
        sub_252E37AE4();
        sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v137 | 0x8000000000000000);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_252E3C130;
        type metadata accessor for ControlHomeFiltersResolutionResult();
        *(v149 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v150 = sub_252E375C4();
        sub_252E36A74(v150, &dword_252917000, v161, "ResolveFilters", 14, 2, v13, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
        v165(v149);

        goto LABEL_99;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39 < 2)
      {
        goto LABEL_103;
      }
    }

    (a1)(v157, v162, v167);
    v171[0] = 0;
    v171[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E92480);
    ControlHomeIntent.getTargetDeviceTypes()();
    sub_25292A344();
    v40 = sub_252E373B4();
    v42 = v41;

    MEMORY[0x2530AD570](v40, v42);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E924D0);
    v170 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v39, 0);
    v43 = v170;
    v44 = v154;
    if ((v154 & 0xC000000000000001) != 0)
    {
      v45 = 0;
      do
      {
        v46 = MEMORY[0x2530ADF00](v45, v44);
        v47 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v48 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v170 = v43;
        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_2529AA3A0((v49 > 1), v50 + 1, 1);
          v43 = v170;
        }

        ++v45;
        v43[2] = v50 + 1;
        v51 = &v43[2 * v50];
        v51[4] = v47;
        v51[5] = v48;
      }

      while (v39 != v45);
    }

    else
    {
      v54 = (v154 + 32);
      do
      {
        v55 = v10;
        v56 = (*v54 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v57 = *v56;
        v58 = v56[1];
        v170 = v43;
        v59 = v43[2];
        v60 = v43[3];

        if (v59 >= v60 >> 1)
        {
          sub_2529AA3A0((v60 > 1), v59 + 1, 1);
          v43 = v170;
        }

        v43[2] = v59 + 1;
        v61 = &v43[2 * v59];
        v61[4] = v57;
        v61[5] = v58;
        ++v54;
        --v39;
        v10 = v55;
      }

      while (v39);
    }

    v62 = MEMORY[0x2530AD730](v43, MEMORY[0x277D837D0]);
    v64 = v63;

    MEMORY[0x2530AD570](v62, v64);

    v65 = v157;
    sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000);

    v153(v65, v167);
    v9 = v169;
  }

LABEL_47:
  v66 = sub_252935818();
  v67 = v66;
  a1 = v68;
  v167 = v69;
  v71 = v70;
  sub_252B680FC(v66);
  v72 = sub_252B63488();

  v157 = v71;
  if (v72)
  {
    goto LABEL_83;
  }

  v74 = sub_252B680FC(v73);
  swift_beginAccess();
  v75 = *(v74 + 16);
  v76 = *(v75 + 16);
  if (v76)
  {
    memcpy(v171, (v75 + 504 * v76 - 472), sizeof(v171));
    sub_2529353AC(v171, &v170);

    v77 = v171[61];

    sub_252935408(v171);
    v78 = *(v77 + 16);

    if (v78 > 1)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  if (a1 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_83;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_83;
  }

  if ((sub_252C51814(3u) & 1) == 0 && (sub_252C51814(1u) & 1) == 0 && (sub_252C51814(2u) & 1) == 0 || (sub_252C513DC() & 1) == 0)
  {
LABEL_83:
    v171[0] = 0;
    v171[1] = 0xE000000000000000;
    sub_252E379F4();

    v171[0] = 0xD000000000000012;
    v171[1] = 0x8000000252E92310;
    v92 = [v168 description];
    v93 = sub_252E36F34();
    v95 = v94;

    MEMORY[0x2530AD570](v93, v95);

    sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000);

    LOBYTE(v93) = sub_252C4D664(5);
    v96 = type metadata accessor for HomeStore(0);
    v97 = static HomeStore.shared.getter(v96);
    v98 = v97;
    if (v93)
    {
      v99 = HomeStore.scenes(matching:)(v9);
      v101 = v100;

      if (v101)
      {

        v171[0] = 0;
        v171[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
        v170 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC4050(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 133);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_252E3C130;
        type metadata accessor for ControlHomeFiltersResolutionResult();
        *(v102 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
        v103 = sub_252E375C4();
        v13 = v159;
        sub_252E36A74(v103, &dword_252917000, v161, "ResolveFilters", 14, 2, v159, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
        v165(v102);

        v104 = v99;
        v105 = 1;
      }

      else
      {
        v116 = MEMORY[0x277D84F90];
        v117 = sub_252B1BB50(v9, MEMORY[0x277D84F90], 0, v99, 0, 0, 0, 0);

        v118 = sub_252E375C4();
        v13 = v159;
        sub_252E36A74(v118, &dword_252917000, v161, "ResolveFilters", 14, 2, v159, " enableTelemetry=YES ", 21, 2, v116);
        v165(v117);

        v104 = v99;
        v105 = 0;
      }

      sub_252929F10(v104, v105);

LABEL_97:

LABEL_98:

      goto LABEL_99;
    }

    v106 = v97[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    v156 = a1;
    if (v106 == 2 || (v106 & 1) != 0)
    {
      v107 = v168;
      v108 = [v168 filters];
      if (v108)
      {
        v155 = v10;
        v109 = v108;
        v110 = sub_252E37264();

        v111 = [v107 userTask];
        v112 = v107;
        v113 = HomeStore.accessories(matching:supporting:)(v110, v111);
        v115 = v114;

        if (v115)
        {

          v10 = v155;
LABEL_96:
          v171[0] = 0;
          v171[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v170 = v113;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 142);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_252E3C130;
          type metadata accessor for ControlHomeFiltersResolutionResult();
          *(v121 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          v122 = sub_252E375C4();
          v13 = v159;
          sub_252E36A74(v122, &dword_252917000, v161, "ResolveFilters", 14, 2, v159, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
          v165(v121);

          sub_252929F10(v113, 1);

          goto LABEL_97;
        }

        v125 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO29removeInaccessibleAccessories4fromSayAA9AccessoryCGAH_tFZ_0(v113);
        v126 = [v112 userTask];
        v127 = v157;

        v128 = v156;

        v129 = v167;

        v130 = v67 & 1;
        v131 = MEMORY[0x277D84F90];
        v132 = sub_252B1BB50(v169, v125, v126, MEMORY[0x277D84F90], v130, v128, v129, v127);

        v133 = sub_252E375C4();
        v13 = v159;
        sub_252E36A74(v133, &dword_252917000, v161, "ResolveFilters", 14, 2, v159, " enableTelemetry=YES ", 21, 2, v131);
        v165(v132);

        sub_252929F10(v113, 0);

        v10 = v155;
LABEL_99:
        v9 = v160;
        goto LABEL_100;
      }

      sub_2529318DC();
      v113 = swift_allocError();
      v120 = 1;
    }

    else
    {
      sub_2529318DC();
      v113 = swift_allocError();
      v120 = 12;
    }

    *v119 = v120;

    goto LABEL_96;
  }

  sub_252CC3D90(0xD000000000000040, 0x8000000252E92370, 0xD00000000000007ELL, v163 | 0x8000000000000000);
  v79 = sub_252A7564C(v9);
  if ((v80 & 1) == 0)
  {
    v87 = v79;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_252E3C130;
    type metadata accessor for ControlHomeFiltersResolutionResult();
    *(v88 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    v89 = sub_252E375C4();
    v13 = v159;
    sub_252E36A74(v89, &dword_252917000, v161, "ResolveFilters", 14, 2, v159, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v165(v88);

    goto LABEL_98;
  }

  v171[0] = MEMORY[0x277D84F90];
  v13 = v159;
  v155 = v10;
  if (v9 >> 62)
  {
    v81 = sub_252E378C4();
  }

  else
  {
    v81 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v82 = MEMORY[0x277D84F90];
  if (v81)
  {
    v83 = 0;
    v13 = (v9 & 0xC000000000000001);
    v84 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v85 = a1;
        v86 = MEMORY[0x2530ADF00](v83, v9);
      }

      else
      {
        if (v83 >= *(v84 + 16))
        {
          goto LABEL_80;
        }

        v85 = a1;
        v86 = *(v9 + 8 * v83 + 32);
      }

      a1 = v86;
      v9 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v83;
      v37 = v9 == v81;
      v9 = v169;
      a1 = v85;
      if (v37)
      {
        v90 = v171[0];
        v13 = v159;
        v82 = MEMORY[0x277D84F90];
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v90 = MEMORY[0x277D84F90];
LABEL_75:

  v91 = sub_252E375C4();
  sub_252E36A74(v91, &dword_252917000, v161, "ResolveFilters", 14, 2, v13, " enableTelemetry=YES ", 21, 2, v82);
  v165(v90);

  v9 = v160;
  v10 = v155;
LABEL_100:
  v123 = *(v10 + 8);
  v123(v13, v9);
  return (v123)(v166, v9);
}

void sub_252CD211C(void *a1, void (*a2)(void))
{
  v3 = [a1 time];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() successWithResolvedDateComponentsRange_];
    a2();
  }

  else
  {
    sub_25293F638(0, &qword_27F545500, 0x277CD3B70);
    v5 = [swift_getObjCClassFromMetadata() notRequired];
    a2();
  }
}

uint64_t sub_252CD2304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25296BC70;

  return sub_252CD6978();
}

uint64_t sub_252CD252C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_252A91798;

  return sub_252CD6978();
}

uint64_t sub_252CD25D8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v96 = a3;
  v95 = a2;
  v93 = sub_252E36CA4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_252E36D04();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_252E36CB4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36AB4();
  v8 = *(v7 - 8);
  v97 = v7;
  v98 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v99 = &v82 - v14;
  v15 = sub_252E36AD4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_2814B09D8);
  (*(v16 + 16))(v18, v19, v15);
  aBlock = 0;
  v101 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E92530);
  v106 = [a1 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v20 = sub_252E36F94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0x737265746C69460ALL, 0xEA00000000000A3ALL);
  v21 = [a1 filters];
  if (v21)
  {
    v22 = v21;
    type metadata accessor for HomeFilter();
    v23 = sub_252E37264();
  }

  else
  {
    v23 = 0;
  }

  v106 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  MEMORY[0x2530AD570](0xA3A656D69540ALL, 0xE700000000000000);
  v106 = [a1 time];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
  v25 = sub_252E36F94();
  MEMORY[0x2530AD570](v25);

  v83 = "Starting to resolve userTask: \n";
  sub_252CC4A5C(aBlock, v101, 1, 0xD00000000000007ELL, 0x8000000252E921E0);

  v26 = *(v16 + 8);
  v84 = v15;
  v27 = v26(v18, v15);
  v28 = sub_252B680FC(v27);
  swift_beginAccess();
  v29 = a1;
  MEMORY[0x2530AD700]();
  if (*((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  sub_252B680FC(v30);
  sub_252B66DE8(v29);

  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v31 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v32 = sub_252E36804();
  v34 = v33;

  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v36 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v32;
    *(inited + 56) = v34;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v36, &unk_27F541F10, &unk_252E42870);
  }

  v37 = [objc_opt_self() sharedAnalytics];
  v94 = v29;
  if (v37)
  {
    v38 = v37;

    sub_252CC1408(v39);

    v40 = sub_252E36E24();

    [v38 logEventWithType:6505 context:v40];
  }

  else
  {
  }

  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = v99;
  v43 = *(v98 + 16);
  v44 = v13;
  v45 = v13;
  v46 = v97;
  v47 = v98;
  v43(v45, v99, v97);
  v48 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43(v48, v44, v46);
  v49 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v50 = (v9 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  (*(v47 + 32))(v51 + v49, v44, v46);
  v52 = (v51 + v50);
  v53 = v95;
  v54 = v96;
  *v52 = v95;
  v52[1] = v54;

  v55 = v94;
  if (sub_252C4F88C())
  {
    v96 = v41;
    v56 = *(v47 + 8);
    v98 = v47 + 8;
    v95 = v56;
    (v56)(v48, v46);
    type metadata accessor for AccessoriesWarmupManager();
    swift_allocObject();
    v57 = v55;
    v94 = sub_252A75FBC(v57);
    sub_252A760A0(v94);
    v58 = sub_252CD6D5C(v57);
    v60 = v59;
    aBlock = swift_getObjectType();
    v101 = v60;
    v82 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545508, &qword_252E5B3D8);
    v61 = sub_252E36F94();
    v63 = v62;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v84, qword_27F544C70);
    aBlock = 0;
    v101 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD000000000000011;
    v101 = 0x8000000252E73E80;
    MEMORY[0x2530AD570](v61, v63);
    sub_252CC4A5C(aBlock, v101, 1, 0xD00000000000007ELL, v83 | 0x8000000000000000);

    sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
    v64 = v86;
    v65 = v85;
    v66 = v87;
    (*(v86 + 104))(v85, *MEMORY[0x277D851C0], v87);
    v67 = sub_252E375A4();
    (*(v64 + 8))(v65, v66);
    v68 = swift_allocObject();
    v69 = v82;
    v68[2] = v58;
    v68[3] = v69;
    v68[4] = v57;
    v68[5] = sub_252CD6AD0;
    v68[6] = v51;
    v68[7] = v61;
    v68[8] = v63;
    v104 = sub_252CD7020;
    v105 = v68;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_252AD686C;
    v103 = &block_descriptor_20;
    v70 = _Block_copy(&aBlock);
    v71 = v57;
    swift_unknownObjectRetain();

    v72 = v88;
    sub_252E36CD4();
    v106 = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v73 = v90;
    v74 = v93;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v72, v73, v70);
    _Block_release(v70);
    swift_unknownObjectRelease();

    (*(v92 + 8))(v73, v74);
    (*(v89 + 8))(v72, v91);
    (v95)(v99, v97);
  }

  else
  {
    v75 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v76 = v47;
    v77 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v75[v77] = 5;
    [v75 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v78 = v53;
    v79 = sub_252E37254();
    [v75 setEntityResponses_];

    sub_252CD3374(0x4964696C61766E49, 0xED0000746E65746ELL, v75, v41, v48, v78);

    v80 = *(v76 + 8);
    v80(v48, v46);
    v80(v42, v46);
  }
}

void sub_252CD3374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  if (*(a4 + 16))
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E92600, 0xD00000000000007ELL, 0x8000000252E921E0);
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    if (qword_27F53F580 != -1)
    {
      swift_once();
    }

    v13 = qword_27F544F08;
    *&v57[0] = type metadata accessor for ControlHomeIntentHandler();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545510, &qword_252E5B418);
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    *&v39 = 0;
    BYTE8(v39) = 1;
    v40 = 0;
    v41 = 0;
    *&v42 = 0;
    *(&v42 + 1) = a1;
    *&v43 = a2;
    *(&v43 + 1) = sub_252E36F94();
    v44 = v14;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    LOBYTE(v48) = 1;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    LOWORD(v52) = 513;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 1;
    GEOLocationCoordinate2DMake();
    v32 = v52;
    v33 = 0u;
    v34 = 1;
    v28 = v44;
    v29 = 0u;
    v30 = v48;
    v31 = 0u;
    v24 = v39;
    v25 = 0u;
    v26 = v42;
    v27 = v43;

    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v13, a5, "HandleIntent", 12, 2, &v24);
    v57[8] = v32;
    v57[9] = v33;
    v58 = v34;
    v57[4] = v28;
    v57[5] = v29;
    v57[6] = v30;
    v57[7] = v31;
    v57[0] = v24;
    v57[1] = v25;
    v57[2] = v26;
    v57[3] = v27;
    sub_25293847C(v57, &qword_27F5407B0, &unk_252E42860);
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v15 = sub_252E36804();
    v17 = v16;

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = 25705;
      v19 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = v15;
      *(inited + 56) = v17;
      sub_252CC630C(inited);
      swift_setDeallocating();
      sub_25293847C(v19, &unk_27F541F10, &unk_252E42870);
    }

    v20 = [objc_opt_self() sharedAnalytics];
    if (v20)
    {
      v21 = v20;

      sub_252CC1408(v22);

      v23 = sub_252E36E24();

      [v21 logEventWithType:6506 context:v23];
    }

    else
    {
    }

    a6(a3);
  }
}

uint64_t sub_252CD3760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a7;
  swift_unknownObjectRetain();

  sub_252DC52D0(a3, sub_252CD8874, v15, ObjectType, a2);
}

void sub_252CD383C(char *a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_27F53F498 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E769D0);
    swift_beginAccess();
    v9 = sub_252B9AAC4();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0x20646E610ALL, 0xE500000000000000);
    v10 = [a1 entityResponses];
    v66 = a1;
    if (v10)
    {
      v11 = v10;
      type metadata accessor for HomeEntityResponse();
      v12 = sub_252E37264();
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      sub_252E379F4();

      v13 = a1;
      v14 = [v13 description];
      v15 = sub_252E36F34();
      v17 = v16;

      MEMORY[0x2530AD570](v15, v17);
      a1 = v66;

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v12 = MEMORY[0x277D84F90];
    }

    if (v12 >> 62)
    {
      sub_252E378C4();
    }

    v18 = sub_252E37D94();
    MEMORY[0x2530AD570](v18);

    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E92620);
    v19 = [a1 description];
    v20 = sub_252E36F34();
    v22 = v21;

    MEMORY[0x2530AD570](v20, v22);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E921E0);

    v23 = [a1 entityResponses];
    if (v23)
    {
      v24 = v23;
      type metadata accessor for HomeEntityResponse();
      v25 = sub_252E37264();

      if (v25 >> 62)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      sub_252E379F4();

      v39 = a1;
      v40 = [v39 description];
      v41 = sub_252E36F34();
      v43 = v42;

      MEMORY[0x2530AD570](v41, v43);
      a1 = v66;

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v25 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_35:
        v26 = sub_252E378C4();
        goto LABEL_12;
      }
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

    if (!v26)
    {
      if (qword_27F53F3F8 != -1)
      {
        swift_once();
      }

      if ((sub_252DB4F4C() & 1) == 0)
      {
        swift_getObjectType();
        if (!sub_252DC534C())
        {
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E769D0);
          v59 = sub_252B9AAC4();
          MEMORY[0x2530AD570](v59);

          MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E92640);
          sub_252E37AE4();
          MEMORY[0x2530AD570](0x64616574736E6920, 0xE800000000000000);
          sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E921E0, 0xD00000000000001ALL, 0x8000000252E80020, 256);

          v60 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
          v61 = OBJC_IVAR___ControlHomeIntentResponse_code;
          swift_beginAccess();
          *&v60[v61] = 102;
          [v60 setUserActivity_];
          type metadata accessor for HomeEntityResponse();
          v62 = sub_252E37254();
          [v60 setEntityResponses_];

          a4(a6, a7, v60);
          return;
        }
      }
    }

    v27 = [a1 entityResponses];
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v29 = v27;
      type metadata accessor for HomeEntityResponse();
      v30 = sub_252E37264();

      v67 = v28;
      if (v30 >> 62)
      {
        v31 = sub_252E378C4();
        if (v31)
        {
LABEL_20:
          v32 = 0;
          a1 = (v30 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x2530ADF00](v32, v30);
            }

            else
            {
              if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v33 = *(v30 + 8 * v32 + 32);
            }

            v34 = v33;
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            v36 = [v33 entity];
            if (v36 && (v37 = v36, v38 = [v36 type], v37, v38 == 7) && (sub_252DA5218() & 1) == 0)
            {
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }

            ++v32;
            if (v35 == v31)
            {
              a1 = v66;
              v28 = v67;
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_20;
        }
      }

LABEL_37:
    }

    sub_252ADEC58(v28);

    v44 = [a1 entityResponses];
    v45 = MEMORY[0x277D84F90];
    if (!v44)
    {
      goto LABEL_54;
    }

    v46 = v44;
    type metadata accessor for HomeEntityResponse();
    v47 = sub_252E37264();

    v68 = v45;
    if (!(v47 >> 62))
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        break;
      }

      goto LABEL_41;
    }

    v48 = sub_252E378C4();
    if (!v48)
    {
      break;
    }

LABEL_41:
    v49 = 0;
    a1 = (v47 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x2530ADF00](v49, v47);
      }

      else
      {
        if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v50 = *(v47 + 8 * v49 + 32);
      }

      v51 = v50;
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v53 = [v50 entity];
      if (v53 && (v54 = v53, v55 = [v53 type], v54, v55 == 7))
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v49;
      if (v52 == v48)
      {
        a1 = v66;
        v45 = v68;
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

LABEL_53:

LABEL_54:
  sub_252CAF868(v45);

  v56 = sub_252C322CC();
  v57 = sub_252B680FC(v56);
  swift_beginAccess();
  v58 = a1;
  MEMORY[0x2530AD700]();
  if (*((*(v57 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v57 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  a4(a6, a7, v58);
}

void sub_252CD4298(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id ControlHomeIntentHandler.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlHomeIntentHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ControlHomeIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlHomeIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_252CD43D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25294B954;

  return v6();
}

uint64_t sub_252CD44B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25293B808;

  return v7();
}

uint64_t sub_252CD45A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2529E6204(a3, v23 - v10);
  v12 = sub_252E37344();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25293847C(v11, &qword_27F540CB8, &qword_252E3F8D0);
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

  sub_252E37334();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_252E37324();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_252E36FD4() + 32;
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

    sub_25293847C(a3, &qword_27F540CB8, &qword_252E3F8D0);

    return v21;
  }

LABEL_8:
  sub_25293847C(a3, &qword_27F540CB8, &qword_252E3F8D0);
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

uint64_t sub_252CD488C(void *a1, uint64_t a2)
{
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  if (qword_27F53F570 != -1)
  {
    swift_once();
  }

  v11 = qword_27F544EF8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v5 + 16))(v8, v10, v4);
  v12 = [a1 userTask];
  if (v12)
  {
    v13 = v12;
    v38 = v11;
    v39 = a2;
    v40 = v8;
    v41 = v4;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544C40);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_252E379F4();

    v43 = 0xD00000000000001FLL;
    v44 = 0x8000000252E921C0;
    v42 = [a1 userTask];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
    v15 = sub_252E36F94();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v43, v44, 0xD00000000000007ELL, 0x8000000252E921E0);

    if ([v13 attribute])
    {
      v16 = [a1 userTask];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 taskType];

        if (v18 == 1 && (sub_252CCFCB8() & 1) == 0)
        {
          if ([v13 attribute] == 8)
          {
            v19 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v20 = sub_252E36F04();
            v21 = [v19 initWithIdentifier:0 displayString:v20];

            v22 = v21;
            [v22 setBoolValue_];
            [v22 setType_];

            v23 = objc_allocWithZone(type metadata accessor for HomeUserTask());
            v24 = v22;
            v25 = sub_252E36F04();
            v26 = [v23 initWithIdentifier:0 displayString:v25];

            v27 = v26;
            [v27 setTaskType_];
            [v27 setAttribute_];
            [v27 setValue_];

            type metadata accessor for ControlHomeUserTaskResolutionResult();
            v28 = v27;
            v29 = sub_252E2C928(v27);

            v30 = sub_252E375C4();
            v8 = v40;
            sub_252E36A74(v30, &dword_252917000, v38, "ResolveUserTask", 15, 2, v40, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
            (*(v39 + 16))(v39, v29);

LABEL_18:
            v4 = v41;
            goto LABEL_19;
          }

          sub_252CC3D90(0xD000000000000028, 0x8000000252E92290, 0xD00000000000007ELL, 0x8000000252E921E0);
          type metadata accessor for ControlHomeUserTaskResolutionResult();
          v32 = [swift_getObjCClassFromMetadata() needsValue];
          goto LABEL_14;
        }
      }

      else
      {
        sub_252C515AC();
      }

      sub_252CC3D90(0xD000000000000022, 0x8000000252E92260, 0xD00000000000007ELL, 0x8000000252E921E0);
      type metadata accessor for ControlHomeUserTaskResolutionResult();
      v33 = sub_252E2C7CC(v13);
      goto LABEL_17;
    }

    sub_252CC3D90(0xD000000000000026, 0x8000000252E922C0, 0xD00000000000007ELL, 0x8000000252E921E0);
    type metadata accessor for ControlHomeUserTaskResolutionResult();
    v32 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_14:
    v33 = v32;
LABEL_17:
    v29 = v33;
    v34 = sub_252E375C4();
    v8 = v40;
    sub_252E36A74(v34, &dword_252917000, v38, "ResolveUserTask", 15, 2, v40, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (*(v39 + 16))(v39, v29);
    goto LABEL_18;
  }

  type metadata accessor for ControlHomeUserTaskResolutionResult();
  v13 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
  v31 = sub_252E375C4();
  sub_252E36A74(v31, &dword_252917000, v11, "ResolveUserTask", 15, 2, v8, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(a2 + 16))(a2, v13);
LABEL_19:

  v35 = *(v5 + 8);
  v35(v8, v4);
  return (v35)(v10, v4);
}

uint64_t sub_252CD4F54(unint64_t a1, uint64_t a2)
{
  v165 = a2;
  v167 = sub_252E36AD4();
  v3 = *(v167 - 1);
  v4 = MEMORY[0x28223BE20](v167);
  v158 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v154 - v6;
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v154 - v13);
  if (qword_27F53F570 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v15 = qword_27F544EF8;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v16 = *(v9 + 16);
    v166 = v14;
    v16(v12, v14, v8);
    v17 = [a1 filters];
    if (!v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_252E3C130;
      type metadata accessor for ControlHomeFiltersResolutionResult();
      *(v23 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      v24 = sub_252E375C4();
      sub_252E36A74(v24, &dword_252917000, v15, "ResolveFilters", 14, 2, v12, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      v25 = sub_252E37254();
      (*(v165 + 16))(v165, v25);

      goto LABEL_117;
    }

    v18 = v17;
    v161 = v8;
    v168 = a1;
    v164 = v15;
    v159 = type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v167, qword_27F544C40);
    a1 = *(v3 + 16);
    v162 = v19;
    (a1)(v7);
    v171[0] = 0;
    v171[1] = 0xE000000000000000;
    sub_252E379F4();

    v171[0] = 0xD00000000000001ELL;
    v171[1] = 0x8000000252E922F0;
    v20 = [v168 filters];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E37264();
    }

    else
    {
      v22 = 0;
    }

    v170 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
    v26 = sub_252E36F94();
    MEMORY[0x2530AD570](v26);

    v163 = "Starting to resolve userTask: \n";
    sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, 0x8000000252E921E0);

    v156 = *(v3 + 8);
    v157 = v3 + 8;
    v27 = v156(v7, v167);
    sub_252B680FC(v27);
    v28 = sub_252B63488();

    v160 = v12;
    v29 = v164;
    v169 = v8;
    if (v28)
    {
      goto LABEL_44;
    }

    v30 = [v168 userTask];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    if ([v30 taskType] == 4)
    {
    }

    else
    {
      v32 = [v31 taskType];

      if (v32 != 5)
      {
        goto LABEL_29;
      }
    }

    v14 = v162;
    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E924F0, 0xD00000000000007ELL, v163 | 0x8000000000000000);
    v171[0] = MEMORY[0x277D84F90];
    v154 = v9;
    if (!(v8 >> 62))
    {
      v12 = v161;
      v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_77:
    v12 = v161;
    v7 = sub_252E378C4();
LABEL_17:
    v33 = MEMORY[0x277D84F90];
    if (!v7)
    {
      goto LABEL_115;
    }

    v34 = 0;
    v9 = v8 & 0xC000000000000001;
    v3 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v35 = MEMORY[0x2530ADF00](v34, v8);
      }

      else
      {
        if (v34 >= *(v3 + 16))
        {
          goto LABEL_73;
        }

        v35 = *(v8 + 8 * v34 + 32);
      }

      a1 = v35;
      v8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v14 = v171;
      sub_252E372D4();
      ++v34;
      v36 = v8 == v7;
      v8 = v169;
      if (v36)
      {
        goto LABEL_114;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  sub_252C515AC();
LABEL_29:
  if ((sub_252C4DD64() & 1) == 0)
  {
LABEL_44:
    v64 = sub_252935818();
    a1 = v65;
    v167 = v66;
    v68 = v67;
    sub_252B680FC(v64);
    v69 = sub_252B63488();

    if (v69)
    {
      goto LABEL_79;
    }

    v71 = sub_252B680FC(v70);
    swift_beginAccess();
    v72 = *(v71 + 16);
    v73 = *(v72 + 16);
    if (v73)
    {
      memcpy(v171, (v72 + 504 * v73 - 472), sizeof(v171));
      sub_2529353AC(v171, &v170);

      v74 = v171[61];

      sub_252935408(v171);
      v75 = *(v74 + 16);

      if (v75 > 1)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    if (a1 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_79;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_79;
    }

    if ((sub_252C51814(3u) & 1) == 0 && (sub_252C51814(1u) & 1) == 0 && (sub_252C51814(2u) & 1) == 0 || (sub_252C513DC() & 1) == 0)
    {
LABEL_79:
      v171[0] = 0;
      v171[1] = 0xE000000000000000;
      sub_252E379F4();

      v171[0] = 0xD000000000000012;
      v171[1] = 0x8000000252E92310;
      v89 = [v168 description];
      v90 = sub_252E36F34();
      v92 = v91;

      MEMORY[0x2530AD570](v90, v92);

      sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000);

      LOBYTE(v90) = sub_252C4D664(5);
      v93 = type metadata accessor for HomeStore(0);
      v94 = static HomeStore.shared.getter(v93);
      v95 = v94;
      if (v90)
      {
        v96 = HomeStore.scenes(matching:)(v8);
        v98 = v97;

        if (v98)
        {

          v171[0] = 0;
          v171[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v170 = v96;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 133);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_252E3C130;
          type metadata accessor for ControlHomeFiltersResolutionResult();
          *(v99 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          v100 = sub_252E375C4();
          v12 = v160;
          sub_252E36A74(v100, &dword_252917000, v164, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
          v101 = sub_252E37254();
          (*(v165 + 16))(v165, v101);

          v102 = v96;
          v103 = 1;
        }

        else
        {
          v115 = MEMORY[0x277D84F90];
          sub_252B1BB50(v8, MEMORY[0x277D84F90], 0, v96, 0, 0, 0, 0);

          v116 = sub_252E375C4();
          v12 = v160;
          sub_252E36A74(v116, &dword_252917000, v164, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, v115);
          type metadata accessor for ControlHomeFiltersResolutionResult();
          v117 = sub_252E37254();
          (*(v165 + 16))(v165, v117);

          v102 = v96;
          v103 = 0;
        }

        sub_252929F10(v102, v103);

LABEL_93:

LABEL_94:

LABEL_95:
        v8 = v161;
        goto LABEL_117;
      }

      v104 = v94[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      v158 = a1;
      if (v104 == 2 || (v104 & 1) != 0)
      {
        v105 = v168;
        v106 = [v168 filters];
        if (v106)
        {
          v107 = v64;
          v108 = v68;
          v154 = v9;
          v109 = v106;
          v110 = sub_252E37264();

          v111 = [v105 userTask];
          v112 = HomeStore.accessories(matching:supporting:)(v110, v111);
          v114 = v113;

          if ((v114 & 1) == 0)
          {
            v123 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO29removeInaccessibleAccessories4fromSayAA9AccessoryCGAH_tFZ_0(v112);
            v124 = [v105 userTask];
            v125 = v108;

            v126 = v158;

            v127 = v167;

            v128 = MEMORY[0x277D84F90];
            sub_252B1BB50(v169, v123, v124, MEMORY[0x277D84F90], v107 & 1, v126, v127, v125);

            v129 = sub_252E375C4();
            v12 = v160;
            sub_252E36A74(v129, &dword_252917000, v164, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, v128);
            type metadata accessor for ControlHomeFiltersResolutionResult();
            v130 = sub_252E37254();
            (*(v165 + 16))(v165, v130);

            sub_252929F10(v112, 0);

            v9 = v154;
            goto LABEL_95;
          }

          v9 = v154;
LABEL_92:
          v171[0] = 0;
          v171[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E92330);
          v170 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000, 0xD000000000000019, 0x8000000252E92350, 142);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v120 = swift_allocObject();
          *(v120 + 16) = xmmword_252E3C130;
          type metadata accessor for ControlHomeFiltersResolutionResult();
          *(v120 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
          v121 = sub_252E375C4();
          v12 = v160;
          sub_252E36A74(v121, &dword_252917000, v164, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
          v122 = sub_252E37254();
          (*(v165 + 16))(v165, v122);

          sub_252929F10(v112, 1);

          goto LABEL_93;
        }

        sub_2529318DC();
        v112 = swift_allocError();
        v119 = 1;
      }

      else
      {
        sub_2529318DC();
        v112 = swift_allocError();
        v119 = 12;
      }

      *v118 = v119;

      goto LABEL_92;
    }

    v14 = v162;
    sub_252CC3D90(0xD000000000000040, 0x8000000252E92370, 0xD00000000000007ELL, v163 | 0x8000000000000000);
    v76 = sub_252A7564C(v8);
    if ((v77 & 1) == 0)
    {
      v83 = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_252E3C130;
      type metadata accessor for ControlHomeFiltersResolutionResult();
      *(v84 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      v85 = sub_252E375C4();
      v12 = v160;
      sub_252E36A74(v85, &dword_252917000, v29, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      v86 = sub_252E37254();
      (*(v165 + 16))(v165, v86);

      goto LABEL_94;
    }

    v171[0] = MEMORY[0x277D84F90];
    v154 = v9;
    if (v8 >> 62)
    {
      v78 = sub_252E378C4();
    }

    else
    {
      v78 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = MEMORY[0x277D84F90];
    if (!v78)
    {
LABEL_71:

      v87 = sub_252E375C4();
      v12 = v160;
      sub_252E36A74(v87, &dword_252917000, v29, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, v79);
      type metadata accessor for ControlHomeFiltersResolutionResult();
      v88 = sub_252E37254();
      (*(v165 + 16))(v165, v88);

      v8 = v161;
      goto LABEL_116;
    }

    v29 = 0;
    v168 = (v8 & 0xC000000000000001);
    v80 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v168)
      {
        v81 = a1;
        v82 = MEMORY[0x2530ADF00](v29, v8);
      }

      else
      {
        if (v29 >= *(v80 + 16))
        {
          goto LABEL_76;
        }

        v81 = a1;
        v82 = *(v8 + 8 * v29 + 32);
      }

      a1 = v82;
      v8 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(a1);

      MEMORY[0x2530AD700]();
      if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      v14 = v171;
      sub_252E372D4();
      ++v29;
      v36 = v8 == v78;
      v8 = v169;
      a1 = v81;
      if (v36)
      {
        v29 = v164;
        v79 = MEMORY[0x277D84F90];
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v37 = _s22HomeAutomationInternal25RestrictedGuestCheckUtilsO12resolveHomes3forSayAA0A0CGSgSayAA0A6FilterCG_tFZ_0(v8);
  if (!v37)
  {
    goto LABEL_99;
  }

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38 < 2)
    {
      goto LABEL_98;
    }

    goto LABEL_33;
  }

  v131 = v37;
  v38 = sub_252E378C4();
  v37 = v131;
  if (v38 >= 2)
  {
LABEL_33:
    v39 = v37;
    (a1)(v158, v162, v167);
    v171[0] = 0;
    v171[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E92480);
    ControlHomeIntent.getTargetDeviceTypes()();
    sub_25292A344();
    v40 = sub_252E373B4();
    v42 = v41;

    MEMORY[0x2530AD570](v40, v42);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E924D0);
    v170 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v38, 0);
    v43 = v170;
    v155 = v39;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v44 = 0;
      v45 = v163;
      do
      {
        v46 = MEMORY[0x2530ADF00](v44, v155);
        v47 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v48 = *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        v170 = v43;
        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_2529AA3A0((v49 > 1), v50 + 1, 1);
          v43 = v170;
        }

        ++v44;
        v43[2] = v50 + 1;
        v51 = &v43[2 * v50];
        v51[4] = v47;
        v51[5] = v48;
      }

      while (v38 != v44);
    }

    else
    {
      v52 = (v39 + 32);
      do
      {
        v53 = v9;
        v54 = (*v52 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v55 = *v54;
        v56 = v54[1];
        v170 = v43;
        v58 = v43[2];
        v57 = v43[3];

        if (v58 >= v57 >> 1)
        {
          sub_2529AA3A0((v57 > 1), v58 + 1, 1);
          v43 = v170;
        }

        v43[2] = v58 + 1;
        v59 = &v43[2 * v58];
        v59[4] = v55;
        v59[5] = v56;
        ++v52;
        --v38;
        v9 = v53;
        v45 = v163;
      }

      while (v38);
    }

    v60 = MEMORY[0x2530AD730](v43, MEMORY[0x277D837D0]);
    v62 = v61;

    MEMORY[0x2530AD570](v60, v62);

    v63 = v158;
    sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v45 | 0x8000000000000000);

    v156(v63, v167);
    v29 = v164;
    v8 = v169;
    goto LABEL_44;
  }

LABEL_98:

LABEL_99:
  v171[0] = 0;
  v171[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000054, 0x8000000252E923C0);
  ControlHomeIntent.getTargetDeviceTypes()();
  sub_25292A344();
  v132 = sub_252E373B4();
  v134 = v133;

  MEMORY[0x2530AD570](v132, v134);

  v135 = v163;
  sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v163 | 0x8000000000000000);

  v136 = sub_252A7564C(v8);
  if ((v137 & 1) == 0)
  {
    v150 = v136;

    v171[0] = 0;
    v171[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E92440);
    v170 = v150;
    sub_252E37AE4();
    sub_252CC3D90(v171[0], v171[1], 0xD00000000000007ELL, v135 | 0x8000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_252E3C130;
    type metadata accessor for ControlHomeFiltersResolutionResult();
    *(v151 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    v152 = sub_252E375C4();
    sub_252E36A74(v152, &dword_252917000, v164, "ResolveFilters", 14, 2, v12, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v153 = sub_252E37254();
    (*(v165 + 16))(v165, v153);

    goto LABEL_95;
  }

  sub_252CC3D90(0xD000000000000019, 0x8000000252E92420, 0xD00000000000007ELL, v135 | 0x8000000000000000);
  v171[0] = MEMORY[0x277D84F90];
  v154 = v9;
  if (v8 >> 62)
  {
    goto LABEL_121;
  }

  v12 = v161;
  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v29 = v164;
    v33 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v139 = 0;
    v140 = v8 & 0xC000000000000001;
    v141 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v140)
      {
        v142 = MEMORY[0x2530ADF00](v139, v8);
      }

      else
      {
        if (v139 >= *(v141 + 16))
        {
          goto LABEL_120;
        }

        v142 = *(v8 + 8 * v139 + 32);
      }

      v143 = v142;
      v8 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        break;
      }

      type metadata accessor for ControlHomeFiltersResolutionResult();
      sub_252E2B004(v143);

      MEMORY[0x2530AD700]();
      if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v139;
      v36 = v8 == i;
      v8 = v169;
      if (v36)
      {
LABEL_114:
        v29 = v164;
        v33 = MEMORY[0x277D84F90];
        goto LABEL_115;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    v12 = v161;
  }

LABEL_115:

  v144 = sub_252E375C4();
  v145 = v29;
  v146 = v160;
  sub_252E36A74(v144, &dword_252917000, v145, "ResolveFilters", 14, 2, v160, " enableTelemetry=YES ", 21, 2, v33);
  type metadata accessor for ControlHomeFiltersResolutionResult();
  v147 = sub_252E37254();
  (*(v165 + 16))(v165, v147);

  v8 = v12;
  v12 = v146;
LABEL_116:
  v9 = v154;
LABEL_117:
  v148 = *(v9 + 8);
  v148(v12, v8);
  return (v148)(v166, v8);
}

uint64_t sub_252CD6994()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C70);
  sub_252CC3D90(0xD000000000000033, 0x8000000252E926C0, 0xD00000000000007ELL, 0x8000000252E921E0);
  v2 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 1;
  [v2 setUserActivity_];
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_252CD6AD4()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544C70);
  sub_252CC3D90(0xD000000000000023, 0x8000000252E92690, 0xD00000000000007ELL, 0x8000000252E921E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543158, &qword_252E4A748);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E5B3B0;
  *(v1 + 32) = type metadata accessor for RVCAppIntentHandleDelegate();
  *(v1 + 40) = &off_2864B1C50;
  *(v1 + 48) = type metadata accessor for PowerOffDeltaDecreaseHandleDelegate();
  *(v1 + 56) = &off_2864C0D48;
  *(v1 + 64) = type metadata accessor for BrigthnessZeroAsPowerOffHandleDelegate();
  *(v1 + 72) = &off_2864B7F50;
  *(v1 + 80) = type metadata accessor for TurnOnAirPurifierHandleDelegate();
  *(v1 + 88) = &off_2864BA618;
  *(v1 + 96) = type metadata accessor for SetModeHandleDelegate();
  *(v1 + 104) = &off_2864B93A8;
  *(v1 + 112) = type metadata accessor for GetBrightnessHandleDelegate();
  *(v1 + 120) = &off_2864BF7B8;
  *(v1 + 128) = type metadata accessor for SetFullBrightnessHandleDelegate();
  *(v1 + 136) = &off_2864B8B30;
  *(v1 + 144) = type metadata accessor for BatteryHandleDelegate();
  *(v1 + 152) = &off_2864BE778;
  *(v1 + 160) = type metadata accessor for GetThermostatModeHandleDelegate();
  *(v1 + 168) = &off_2864B9E88;
  *(v1 + 176) = type metadata accessor for SetRangeTemperatureValueHandleDelegate();
  *(v1 + 184) = &off_2864BC6D8;
  *(v1 + 192) = type metadata accessor for SetSingleTemperatureValueHandleDelegate();
  *(v1 + 200) = &off_2864BFA88;
  *(v1 + 208) = type metadata accessor for SetDeltaTemperatureHandleDelegate();
  *(v1 + 216) = &off_2864BEA00;
  *(v1 + 224) = type metadata accessor for TelevisionHandleDelegate();
  *(v1 + 232) = &off_2864B4670;
  *(v1 + 240) = type metadata accessor for TurnOnSwingModeHandleDelegate();
  *(v1 + 248) = &off_2864BBC80;
  *(v1 + 256) = type metadata accessor for CriticalSensorHandleDelegate();
  *(v1 + 264) = &off_2864BCF78;
  *(v1 + 272) = type metadata accessor for AsyncScenesHandleDelegate();
  *(v1 + 280) = &off_2864AFF40;
  *(v1 + 288) = type metadata accessor for AsyncPollingHandleDelegate();
  *(v1 + 296) = &off_2864B03F8;
  *(v1 + 304) = type metadata accessor for AsyncDefaultHandleDelegate();
  *(v1 + 312) = &off_2864B38E0;
  *(v1 + 320) = type metadata accessor for PollingHandleDelegate();
  *(v1 + 328) = &off_2864B7F78;
  *(v1 + 336) = type metadata accessor for SprinklerHandleDelegate();
  *(v1 + 344) = &off_2864B12E8;
  *(v1 + 352) = type metadata accessor for WaterSystemHandleDelegate();
  *(v1 + 360) = &off_2864BBCA8;
  *(v1 + 368) = type metadata accessor for PowerOnMatterThermostatHandleDelegate();
  *(v1 + 376) = &off_2864BEA48;
  return v1;
}

uint64_t sub_252CD6D5C(uint64_t a1)
{
  v2 = sub_252CD6AD4();
  v3 = (v2 + 40);
  v4 = -*(v2 + 16);
  v5 = -1;
  while (v4 + v5 != -1)
  {
    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = v3 + 2;
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = (*(*v3 + 24))(a1, v8, *v3);
    v3 = v6;
    if (v9)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544C70);
      v11 = sub_252E36AC4();
      v12 = sub_252E374C4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315138;
        v15 = sub_252E37FB4();
        v17 = sub_252BE2CE0(v15, v16, &v23);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_252917000, v11, v12, "Selected handle delegate to execute %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2530AED00](v14, -1, -1);
        MEMORY[0x2530AED00](v13, -1, -1);
      }

      return (*(v7 + 32))(v8, v7);
    }
  }

  if (qword_27F53F498 == -1)
  {
    goto LABEL_11;
  }

LABEL_15:
  swift_once();
LABEL_11:
  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  v20 = sub_252E36AC4();
  v21 = sub_252E374C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_252917000, v20, v21, "Using to default handle delegate since no match found.", v22, 2u);
    MEMORY[0x2530AED00](v22, -1, -1);
  }

  type metadata accessor for DefaultHandleDelegate();
  return swift_allocObject();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of ControlHomeIntentHandler.confirm(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return v7(a1);
}

void sub_252CD7278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E92600, 0xD00000000000007ELL, 0x8000000252E921E0);
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    if (qword_27F53F580 != -1)
    {
      swift_once();
    }

    v13 = qword_27F544F08;
    *&v57[0] = type metadata accessor for ControlHomeIntentHandler();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545510, &qword_252E5B418);
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    *&v39 = 0;
    BYTE8(v39) = 1;
    v40 = 0;
    v41 = 0;
    *&v42 = 0;
    *(&v42 + 1) = a1;
    *&v43 = a2;
    *(&v43 + 1) = sub_252E36F94();
    v44 = v14;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    LOBYTE(v48) = 1;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    LOWORD(v52) = 513;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 1;
    GEOLocationCoordinate2DMake();
    v32 = v52;
    v33 = 0u;
    v34 = 1;
    v28 = v44;
    v29 = 0u;
    v30 = v48;
    v31 = 0u;
    v24 = v39;
    v25 = 0u;
    v26 = v42;
    v27 = v43;

    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v13, a5, "HandleIntent", 12, 2, &v24);
    v57[8] = v32;
    v57[9] = v33;
    v58 = v34;
    v57[4] = v28;
    v57[5] = v29;
    v57[6] = v30;
    v57[7] = v31;
    v57[0] = v24;
    v57[1] = v25;
    v57[2] = v26;
    v57[3] = v27;
    sub_25293847C(v57, &qword_27F5407B0, &unk_252E42860);
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v15 = sub_252E36804();
    v17 = v16;

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = 25705;
      v19 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = v15;
      *(inited + 56) = v17;
      sub_252CC630C(inited);
      swift_setDeallocating();
      sub_25293847C(v19, &unk_27F541F10, &unk_252E42870);
    }

    v20 = [objc_opt_self() sharedAnalytics];
    if (v20)
    {
      v21 = v20;

      sub_252CC1408(v22);

      v23 = sub_252E36E24();

      [v21 logEventWithType:6506 context:v23];
    }

    else
    {
    }

    (*(a6 + 16))(a6, a3);
  }
}

uint64_t sub_252CD7668(void *a1, void (*a2)(char *, uint64_t))
{
  v91 = sub_252E36CA4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_252E36D04();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_252E36CB4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_252E36AB4();
  v7 = *(v93 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v93);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v75 - v11;
  MEMORY[0x28223BE20](v10);
  v94 = &v75 - v13;
  v14 = sub_252E36AD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = swift_allocObject();
  *(v92 + 16) = a2;
  v82 = a2;
  _Block_copy(a2);
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_2814B09D8);
  (*(v15 + 16))(v17, v18, v14);
  aBlock = 0;
  v96 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E92530);
  v101 = [a1 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  MEMORY[0x2530AD570](0x737265746C69460ALL, 0xEA00000000000A3ALL);
  v20 = [a1 filters];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for HomeFilter();
    v22 = sub_252E37264();
  }

  else
  {
    v22 = 0;
  }

  v101 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v23 = sub_252E36F94();
  MEMORY[0x2530AD570](v23);

  MEMORY[0x2530AD570](0xA3A656D69540ALL, 0xE700000000000000);
  v101 = [a1 time];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  v80 = "Starting to resolve userTask: \n";
  sub_252CC4A5C(aBlock, v96, 1, 0xD00000000000007ELL, 0x8000000252E921E0);

  v25 = (*(v15 + 8))(v17, v14);
  v26 = sub_252B680FC(v25);
  swift_beginAccess();
  v27 = a1;
  MEMORY[0x2530AD700]();
  if (*((*(v26 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  sub_252B680FC(v28);
  sub_252B66DE8(v27);

  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v29 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v30 = sub_252E36804();
  v32 = v31;

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v34 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = v32;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v34, &unk_27F541F10, &unk_252E42870);
  }

  v81 = v14;
  v35 = [objc_opt_self() sharedAnalytics];
  if (v35)
  {
    v36 = v35;
    v37 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_252CC1408(v38);

    v39 = sub_252E36E24();

    [v36 logEventWithType:6505 context:v39];
  }

  else
  {
    v37 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v41 = *(v7 + 16);
  v43 = v93;
  v42 = v94;
  v41(v12, v94, v93);
  v41(v37, v12, v43);
  v44 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v45 = (v8 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v40;
  (*(v7 + 32))(v46 + v44, v12, v43);
  v47 = (v46 + v45);
  v48 = v92;
  *v47 = sub_252CD8440;
  v47[1] = v48;

  if (sub_252C4F88C())
  {
    v49 = *(v7 + 8);
    v78 = v7 + 8;
    v82 = v49;
    v49(v37, v43);
    type metadata accessor for AccessoriesWarmupManager();
    swift_allocObject();
    v50 = v27;
    v79 = sub_252A75FBC(v50);
    sub_252A760A0(v79);
    v51 = sub_252CD6D5C(v50);
    v53 = v52;
    v77 = v51;
    aBlock = swift_getObjectType();
    v96 = v53;
    v76 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545508, &qword_252E5B3D8);
    v54 = sub_252E36F94();
    v56 = v55;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v81, qword_27F544C70);
    aBlock = 0;
    v96 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD000000000000011;
    v96 = 0x8000000252E73E80;
    MEMORY[0x2530AD570](v54, v56);
    sub_252CC4A5C(aBlock, v96, 1, 0xD00000000000007ELL, v80 | 0x8000000000000000);

    sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
    v57 = v84;
    v58 = v83;
    v59 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x277D851C0], v85);
    v60 = sub_252E375A4();
    (*(v57 + 8))(v58, v59);
    v61 = swift_allocObject();
    v62 = v76;
    v61[2] = v77;
    v61[3] = v62;
    v61[4] = v50;
    v61[5] = sub_252CD8888;
    v61[6] = v46;
    v61[7] = v54;
    v61[8] = v56;
    v99 = sub_252CD888C;
    v100 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v96 = 1107296256;
    v97 = sub_252AD686C;
    v98 = &block_descriptor_27;
    v63 = _Block_copy(&aBlock);
    v64 = v50;
    swift_unknownObjectRetain();

    v65 = v86;
    sub_252E36CD4();
    v101 = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v66 = v88;
    v67 = v91;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v65, v66, v63);
    _Block_release(v63);
    swift_unknownObjectRelease();

    (*(v90 + 8))(v66, v67);
    (*(v87 + 8))(v65, v89);
    v82(v94, v93);
  }

  else
  {
    v68 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v69 = v7;
    v70 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v68[v70] = 5;
    [v68 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v71 = sub_252E37254();
    [v68 setEntityResponses_];

    v72 = v82;
    _Block_copy(v82);
    sub_252CD7278(0x4964696C61766E49, 0xED0000746E65746ELL, v68, v40, v37, v72);
    _Block_release(v72);

    v73 = *(v69 + 8);
    v73(v37, v43);
    v73(v42, v43);
  }
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_252CD8530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_252E36AB4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_252CD3374(a1, a2, a3, v9, v3 + v8, v10);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_252CD8650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25293B808;

  return sub_252CD252C(v2, v3);
}

uint64_t sub_252CD8704(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_2529E2E20(a1, v4);
}

uint64_t sub_252CD87BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529E2E20(a1, v4);
}

uint64_t sub_252CD8894(void *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = a1;
  v7 = a1;
  v8 = [v7 uniqueIdentifier];
  sub_252E32E64();

  v9 = [v7 name];
  v10 = sub_252E36F34();
  v12 = v11;

  v13 = [v7 assistantIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E36F34();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v3);
  v18 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v18 = v10;
  v18[1] = v12;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
  v19 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v19 = v15;
  v19[1] = v17;
  return v1;
}

void *sub_252CD8AAC(void *a1)
{
  v3 = sub_252E32E84();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = a1[3];
  v53 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v53;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Service(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v54[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v55) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v53;
  v17 = v5;
  v18 = v54[0];
  LOBYTE(v54[0]) = 2;
  v49 = sub_252E37C04();
  v50 = v18;
  v51 = v19;
  LOBYTE(v54[0]) = 3;
  v20 = sub_252E37BA4();
  v44 = v12;
  v46 = v9;
  v47 = v21;
  v48 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D9D50();
  v26 = sub_2529D70E4(v25);
  v45 = 0;

  MEMORY[0x28223BE20](v27);
  v29 = v49;
  v28 = v50;
  *(&v41 - 6) = v17;
  *(&v41 - 5) = v29;
  *(&v41 - 4) = v51;
  *(&v41 - 3) = v22;
  v43 = v22;
  *(&v41 - 2) = v47;
  *(&v41 - 1) = v28;
  v30 = v45;
  v31 = sub_2529A3DE8(sub_252CDD62C, (&v41 - 8), v26);
  v45 = v30;

  if (!v31)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    v36 = __swift_project_value_buffer(v35, qword_27F544CB8);
    sub_252CC4050(0xD000000000000024, 0x8000000252E92960, 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);
    strcpy(v54, "identifier: ");
    BYTE5(v54[1]) = 0;
    HIWORD(v54[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v42 = v17;
    v37 = sub_252E37D94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v54[0], v54[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v54[0] = 0x203A656D616ELL;
    v54[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v49, v51);

    sub_252CC4050(v54[0], v54[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_252E379F4();

    v54[0] = 0xD000000000000015;
    v54[1] = 0x8000000252E6AA20;
    v55 = v43;
    v56 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    sub_252CC4050(v54[0], v54[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    strcpy(v54, "entityType: ");
    BYTE5(v54[1]) = 0;
    HIWORD(v54[1]) = -5120;
    v55 = v50;
    v39 = sub_252E36F94();
    MEMORY[0x2530AD570](v39);

    v11 = v36;
    sub_252CC4050(v54[0], v54[1], 0xD00000000000006DLL, 0x8000000252E928D0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v44 + 8))(v46, v6);
    (*(v52 + 8))(v42, v48);
    v13 = v16;
    goto LABEL_4;
  }

  v32 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

  v11 = v57;
  *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v32;
  sub_252929E74(v16, v54);
  v33 = v45;
  v34 = Entity.init(from:)(v54);
  if (v33)
  {
    (*(v12 + 8))(v46, v6);

    (*(v52 + 8))(v17, v48);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v34;
    (*(v12 + 8))(v46, v6);

    v40 = *(v52 + 8);

    v40(v17, v48);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

BOOL sub_252CD9320(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 7;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 7;
      }
    }
  }

  return 0;
}

uint64_t sub_252CD941C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
  v2 = sub_252E36F34();
  v4 = v3;

  if (qword_27F53F8B8 != -1)
  {
    swift_once();
  }

  v5 = off_27F546230;
  if (*(off_27F546230 + 2) && (v6 = sub_252A44A10(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_252CD94E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);
  v2 = [v1 serviceSubtype];
  if (!v2)
  {
    v2 = [v1 associatedServiceType];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = sub_252E36F34();
  v6 = v5;

  if (qword_27F53F8B8 != -1)
  {
    swift_once();
  }

  v7 = off_27F546230;
  if (*(off_27F546230 + 2) && (v8 = sub_252A44A10(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(v7[7] + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}