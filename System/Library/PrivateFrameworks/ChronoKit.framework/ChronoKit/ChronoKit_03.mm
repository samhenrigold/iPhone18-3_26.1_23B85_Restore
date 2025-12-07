void sub_1BF3D7DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v8 = v7;
  v15 = *v7;
  v16 = sub_1BF3CD5D0(a4, a5, a7);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      v24 = v16;
      sub_1BF4A4C38();
      v16 = v24;
      goto LABEL_8;
    }

    sub_1BF4A19D0(v21, a6 & 1);
    v16 = sub_1BF3CD5D0(a4, a5, v25);
    if ((v22 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1BF4E9794();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v22)
  {
    v28 = (v27[7] + 24 * v16);
    v29 = *v28;
    v30 = v28[1];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    sub_1BF3B03C0(v29, v30);
  }

  else
  {
    sub_1BF4A2438(v16, a4, a5, a1, a2, a3, v27);
  }
}

void *sub_1BF3D7F44(uint64_t a1)
{
  v5[3] = MEMORY[0x1E69E7360];
  v5[4] = &off_1F3DF0090;
  v5[0] = a1;
  sub_1BF38E49C(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);

    v1 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return v1;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v1 = v3;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

void *sub_1BF3D815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a3;
  v8[4] = a4;
  v8[0] = a1;
  v8[1] = a2;
  sub_1BF38E49C(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);

    v4 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    return v4;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v4 = v6;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

void *sub_1BF3D833C(double a1)
{
  v5[3] = MEMORY[0x1E69E63B0];
  v5[4] = &off_1F3DF0098;
  *v5 = a1;
  sub_1BF38E49C(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);

    v1 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    return v1;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v1 = v3;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

void *sub_1BF3D852C(uint64_t a1)
{
  v6[3] = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  v6[4] = &off_1F3DF0088;
  v6[0] = a1;
  sub_1BF38E49C(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);

    v2 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    return v2;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v2 = v4;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

unint64_t sub_1BF3D871C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87E8, &unk_1BF4EB300);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1BF3D8840(v7, v8, v9);
      result = sub_1BF3CD5D0(v5, v6, v10);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 24 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1BF3D8840(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    sub_1BF3D8864(a1, a2);
  }

  else if (a3 == 2)
  {
  }
}

uint64_t sub_1BF3D8864(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_1BF3D88B8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1BF3B03C0(a1, a2);
  }

  if (a3 == 2)
  {
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

void sub_1BF3D89CC(uint64_t a1)
{
  sub_1BF3D9314(319);
  if (v1 <= 0x3F)
  {
    sub_1BF4E7854();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1BF4E7804();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1BF3D8A84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v6 = *(v5 - 8);
  v38 = v5;
  v7 = *(v6 + 84);
  v37 = sub_1BF4E7854();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v35 = *(a3 + 16);
  v11 = *(v35 - 8);
  v36 = *(v11 + 84);
  if (v36 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v13 = *(sub_1BF4E7804() - 8);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  v18 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v14;
  v21 = a1;
  if (a2 > v19)
  {
    v22 = ((v17 + v18 + ((v15 + v16 + (v20 & ~v14)) & ~v16)) & ~v18) + *(v13 + 64);
    v23 = 8 * v22;
    if (v22 <= 3)
    {
      v25 = ((a2 - v19 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v25))
      {
        v24 = *(a1 + v22);
        if (!v24)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 > 0xFF)
      {
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v25 < 2)
      {
LABEL_33:
        if (v19)
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_33;
    }

LABEL_20:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v19 + (v28 | v26) + 1;
  }

LABEL_34:
  if (v7 == v19)
  {
    v29 = v38;
    v30 = *(v6 + 48);
    v31 = v7;

    return v30(v21, v31, v29);
  }

  v21 = ((a1 + v20) & ~v14);
  if (v9 == v19)
  {
    v30 = *(v8 + 48);
    v31 = v9;
    v29 = v37;

    return v30(v21, v31, v29);
  }

  v21 = ((v21 + v15 + v16) & ~v16);
  if (v36 == v19)
  {
    v30 = *(v11 + 48);
    v31 = v36;
    v29 = v35;

    return v30(v21, v31, v29);
  }

  v33 = *(v13 + 48);
  v34 = (v21 + v17 + v18) & ~v18;

  return v33(v34);
}

void sub_1BF3D8EAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0) - 8);
  v37 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_1BF4E7854() - 8);
  v39 = v7;
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(a4 + 16) - 8);
  v38 = v10;
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(sub_1BF4E7804() - 8);
  v14 = v13;
  v15 = *(v5 + 64);
  if (*(v13 + 84) <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v7 + 80);
  v18 = v15 + v17;
  v19 = *(v7 + 64);
  v20 = *(v10 + 80);
  v21 = (v19 + v20 + ((v15 + v17) & ~v17)) & ~v20;
  v22 = *(v10 + 64);
  v23 = *(v13 + 80);
  v24 = ((v22 + v23 + v21) & ~v23) + *(v13 + 64);
  if (a3 <= v16)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v24 <= 3)
    {
      v30 = ((a3 - v16 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v16 < v26)
  {
    v28 = ~v16 + v26;
    if (v24 < 4)
    {
      v29 = (v28 >> (8 * v24)) + 1;
      if (v24)
      {
        v32 = v28 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v32;
            if (v27 > 1)
            {
LABEL_56:
              if (v27 == 2)
              {
                *&v25[v24] = v29;
              }

              else
              {
                *&v25[v24] = v29;
              }

              return;
            }
          }

          else
          {
            *v25 = v28;
            if (v27 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v25 = v32;
        v25[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v27)
    {
      v25[v24] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v25[v24] = 0;
      if (!v26)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v25[v24] = 0;
  }

  else if (v27)
  {
    v25[v24] = 0;
    if (!v26)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    return;
  }

LABEL_37:
  if (v6 == v16)
  {
    v33 = *(v37 + 56);
    v34 = v25;
    goto LABEL_41;
  }

  v34 = (&v25[v18] & ~v17);
  if (v8 == v16)
  {
    v33 = *(v39 + 56);
LABEL_41:

LABEL_43:
    v33(v34);
    return;
  }

  v34 = (&v34[v19 + v20] & ~v20);
  if (v11 == v16)
  {
    v33 = *(v38 + 56);

    goto LABEL_43;
  }

  v35 = *(v14 + 56);
  v36 = &v34[v22 + v23] & ~v23;

  v35(v36);
}

void sub_1BF3D9314(uint64_t a1)
{
  if (!qword_1EDC9F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
    sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B0]);
    sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940D8]);
    sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B8]);
    sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940C0]);
    v1 = sub_1BF4E77D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9F000);
    }
  }
}

uint64_t sub_1BF3D95E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3D9608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BF3D99EC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](86);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000025, 0x80000001BF4F8B90);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4F8BC0);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF3D9B8C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](60);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B30);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8B50);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F8B70);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

void sub_1BF3D9CE8()
{
  v1 = sub_1BF4E7854();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = 0xE000000000000000;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](163);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F8A20);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A40);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4F8A60);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4F8A80);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000032, 0x80000001BF4F8AA0);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x3B29202020200A29, 0xE800000000000000);
  sub_1BF3E4F48(v3, v46, v47);

  if (!v0)
  {

    v46 = 0;
    v47 = 0xE000000000000000;
    v11 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](57);
    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
    v12 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v12);

    MEMORY[0x1BFB58C90](10272, 0xE200000000000000);
    v13 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v13);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v14 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v14);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v15 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v15);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v16 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v16);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8AE0);
    v17 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v17);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v19 = v41;
    v18 = v42;
    v20 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x1E6994188], v43);
    v21 = sub_1BF4E7844();
    (*(v18 + 8))(v19, v20);
    if (v21 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = sub_1BF3D7F44(v21);
      v24 = v23;
      v26 = v25;
      v44 = 0x676E69646E696240;
      v45 = 0xE800000000000000;
      v48 = *(v11 + 16) + 1;
      v27 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v27);

      v28 = v44;
      v29 = v45;
      MEMORY[0x1BFB58C90](v44, v45);
      sub_1BF3D8840(v22, v24, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v11;
      sub_1BF3D6680(v22, v24, v26, v28, v29, isUniquelyReferenced_nonNull_native, v31);

      v32 = sub_1BF3D88B8(v22, v24, v26);
      v33 = v44;
      MEMORY[0x1BFB58C90](542327072, 0xE400000000000000, v32);
      v34 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v34);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v35 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v35);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v36 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v36);

      MEMORY[0x1BFB58C90](0x204D4F524620, 0xE600000000000000);
      v37 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v37);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v33, v46, v47);

      v46 = 0;
      v47 = 0xE000000000000000;
      v38 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](16);
      MEMORY[0x1BFB58C90](0x504F524420202020, 0xEF20454C42415420);
      v39 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v39);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v38, v46, v47);
    }
  }
}

uint64_t sub_1BF3DA450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1BF3DA488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
    v3 = sub_1BF4E94C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BF38C94C(v4, &v14, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      v5 = v14;
      v6 = v15;
      result = sub_1BF3CD5D0(v14, v15, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      result = sub_1BF38EB2C(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DA5B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C0, &unk_1BF4F5460);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BF3CD5D0(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DA6BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v23 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B8, &unk_1BF4EB2D0);
    v7 = sub_1BF4E94C4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v9, v5, &qword_1EBDD87B0, &qword_1BF4EDD20);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1BF3CD5D0(*v5, v12, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v7[6] + 16 * result);
      *v17 = v11;
      v17[1] = v12;
      v18 = v7[7];
      v19 = sub_1BF4E7334();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v5 + v8, v19);
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DA8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8798, &qword_1BF4EB2B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A0, &qword_1BF4EB2B8);
    v7 = sub_1BF4E94C4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v9, v5, &qword_1EBDD8798, &qword_1BF4EB2B0);
      result = sub_1BF3EC768(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1BF4E7334();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DAAD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8790, &qword_1BF4EB2A8);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1BF3EC898(v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DABCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8788, &qword_1BF4EB2A0);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BF3CD5D0(v5, v6, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DACD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8748, &qword_1BF4EB268);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
    v7 = sub_1BF4E94C4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v9, v5, &qword_1EBDD8748, &qword_1BF4EB268);
      v11 = *v5;
      result = sub_1BF3916CC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ExtensionMetadata(0);
      result = sub_1BF3919A0(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DAEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8758, &qword_1BF4EB278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD8760, &unk_1BF4EB280);
    v7 = sub_1BF4E94C4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BF38C94C(v9, v5, &qword_1EBDD8758, &qword_1BF4EB278);
      result = sub_1BF38C890(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1BF38E610(&v5[v8], v7[7] + 40 * v13);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BF3DB09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8740, &qword_1BF4EB260);
    v3 = sub_1BF4E94C4();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1BF3ECA90(v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BF3DB194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1BF3DB1FC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF3D88B8(a1, a2, a3);
  }

  return result;
}

double sub_1BF3DB210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF3B03C0(a1, a2);
  }

  return result;
}

uint64_t RemoteExtensionStore.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RemoteExtensionStore.allExtensions()()
{

  v0 = sub_1BF49CEDC();

  return v0;
}

double RemoteExtensionStore.update(remoteWidgetExtensionInfo:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v8[2] = a1;
  v3 = *(v2 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v4 = sub_1BF4A4E98(v3);
  v5 = *(v2 + 136);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *(v2 + 16);

  sub_1BF3E7904(0xD00000000000001ALL, 0x80000001BF4F8BE0, v6, sub_1BF3DB8E0, v8, v4);

  os_unfair_lock_unlock(*(v5 + 16));
  sub_1BF48EBD0();

  return result;
}

double RemoteExtensionStore.removeExtension(with:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v8[2] = a1;
  v3 = *(v2 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v4 = sub_1BF4A4E98(v3);
  v5 = *(v2 + 136);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *(v2 + 16);

  sub_1BF3E7904(0xD00000000000001ALL, 0x80000001BF4F8C00, v6, sub_1BF3DB90C, v8, v4);

  os_unfair_lock_unlock(*(v5 + 16));
  sub_1BF48EBD0();

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteExtensionStore.removeAllExtensions()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v3 = sub_1BF4A4E98(v2);
  v4 = *(v1 + 136);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v1 + 16);

  sub_1BF3E7904(0xD00000000000001DLL, 0x80000001BF4F8C20, v5, sub_1BF3DB7A4, 0, v3);

  os_unfair_lock_unlock(*(v4 + 16));
  sub_1BF48EBD0();
}

uint64_t RemoteExtensionStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3DB820()
{

  v0 = sub_1BF49CEDC();

  return v0;
}

uint64_t SystemDataMigrationState.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DBB64(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DBBAC(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DBBF0()
{
  type metadata accessor for _SystemDataMigrator();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88D0, &qword_1BF4EB6F0);
  swift_allocObject();
  result = sub_1BF4E7C64();
  *(v0 + 16) = result;
  qword_1EDC99E18 = v0;
  return result;
}

uint64_t static _SystemDataMigrator.shared.getter()
{
  if (qword_1EDC99E10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF3DBCC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88D0, &qword_1BF4EB6F0);
  sub_1BF38C8B4(&qword_1EDC9D398, &qword_1EBDD88D0, &qword_1BF4EB6F0, MEMORY[0x1E695BFB0]);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF3DBD4C()
{
  v0 = DMIsMigrationNeeded();
  sub_1BF4E75F4();
  sub_1BF4E75E4();
  v1 = sub_1BF4E7564();

  if (v0 & 1) != 0 || (v1)
  {

    sub_1BF4E7C54();

    if (v0)
    {
      DMPerformMigrationIfNeeded();
    }

    else
    {
      sub_1BF3DBF74();
    }

    sub_1BF4E7C54();
  }

  return v0;
}

double sub_1BF3DBE10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t _SystemDataMigrator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3DBEE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88D0, &qword_1BF4EB6F0);
  sub_1BF38C8B4(&qword_1EDC9D398, &qword_1EBDD88D0, &qword_1BF4EB6F0, MEMORY[0x1E695BFB0]);
  return sub_1BF4E7C84();
}

void sub_1BF3DBF74()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v21 = sub_1BF4E8F24();
  v0 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = sub_1BF3DC720();
  sub_1BF4E8034();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3DC76C(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v21);
  v6 = sub_1BF4E8F64();
  out_token = -1;
  v7 = swift_allocObject();
  *(v7 + 16) = 60;
  v8 = (v7 + 16);
  if (qword_1EBDD8588 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = sub_1BF4E7B54();
    __swift_project_value_buffer(v9, qword_1EBDE1EF0);

    v10 = sub_1BF4E7B34();
    v11 = sub_1BF4E8E84();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      swift_beginAccess();
      *(v12 + 4) = *(v7 + 16);

      _os_log_impl(&dword_1BF389000, v10, v11, "Simulating migration for %{public}lds", v12, 0xCu);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
    }

    else
    {
    }

    aBlock[4] = sub_1BF3DC7C4;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF3DBE10;
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);

    v6 = v6;

    v14 = notify_register_dispatch("com.apple.chronod.finishmigration", &out_token, v6, v13);
    _Block_release(v13);

    if (v14)
    {

      goto LABEL_13;
    }

    swift_beginAccess();
    if (*v8 < 1)
    {
      break;
    }

    while (1)
    {
      sleep(1u);
      v15 = *v8 - 1;
      if (__OFSUB__(*v8, 1))
      {
        break;
      }

      *v8 = v15;
      if (v15 <= 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_10:
  notify_cancel(out_token);
  v16 = sub_1BF4E7B34();
  v17 = sub_1BF4E8E84();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1BF38D65C(0xD000000000000021, 0x80000001BF4F8CF0, &v23);
    _os_log_impl(&dword_1BF389000, v16, v17, "%{public}s: Done simulating migration", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1BFB5A5D0](v19, -1, -1);
    MEMORY[0x1BFB5A5D0](v18, -1, -1);
  }

LABEL_13:
}

unint64_t sub_1BF3DC4D0()
{
  result = qword_1EBDD88D8;
  if (!qword_1EBDD88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD88D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemDataMigrationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemDataMigrationState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF3DC720()
{
  result = qword_1EDC9F140;
  if (!qword_1EDC9F140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F140);
  }

  return result;
}

unint64_t sub_1BF3DC76C(double a1)
{
  result = qword_1EDC9F148;
  if (!qword_1EDC9F148)
  {
    sub_1BF4E8ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F148);
  }

  return result;
}

uint64_t RemoteActivityArchiveBudgetType.description.getter()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x676E697472656C61;
  }
}

uint64_t sub_1BF3DC860(uint64_t a1)
{
  v2 = sub_1BF3DCE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DC89C(uint64_t a1)
{
  v2 = sub_1BF3DCE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF3DC8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697472656C61 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BF4E9734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();

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

uint64_t sub_1BF3DC9BC(uint64_t a1)
{
  v2 = sub_1BF3DCD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DC9F8(uint64_t a1)
{
  v2 = sub_1BF3DCD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF3DCA34(uint64_t a1)
{
  v2 = sub_1BF3DCDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DCA70(uint64_t a1)
{
  v2 = sub_1BF3DCDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivityArchiveBudgetType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88E0, &qword_1BF4EB800);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88E8, &qword_1BF4EB808);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD88F0, &qword_1BF4EB810);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DCD68();
  sub_1BF4E9864();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BF3DCDBC();
    v14 = v18;
    sub_1BF4E95F4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BF3DCE10();
    sub_1BF4E95F4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1BF3DCD68()
{
  result = qword_1EBDD88F8;
  if (!qword_1EBDD88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD88F8);
  }

  return result;
}

unint64_t sub_1BF3DCDBC()
{
  result = qword_1EBDD8900;
  if (!qword_1EBDD8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8900);
  }

  return result;
}

unint64_t sub_1BF3DCE10()
{
  result = qword_1EBDD8908;
  if (!qword_1EBDD8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8908);
  }

  return result;
}

uint64_t RemoteActivityArchiveBudgetType.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t RemoteActivityArchiveBudgetType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8910, &qword_1BF4EB818);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8918, &qword_1BF4EB820);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8920, &qword_1BF4EB828);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DCD68();
  v13 = v31;
  sub_1BF4E9854();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1BF4E95D4();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1BF4E9344();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8928, &qword_1BF4EB830);
    *v21 = &type metadata for RemoteActivityArchiveBudgetType;
    sub_1BF4E9534();
    sub_1BF4E9334();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1BF3DCDBC();
    sub_1BF4E9524();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1BF3DCE10();
    sub_1BF4E9524();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_1BF3DD32C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3DD360()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static RemoteActivityArchiveBudget.makeKey(activityBudgetID:activityBudgetType:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1BF4E7394();
  sub_1BF3E0284(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v6 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  if (v2)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 0x676E697472656C61;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  MEMORY[0x1BFB58C90](v3, v4);

  return v6;
}

uint64_t RemoteActivityArchiveBudget.activityBudgetID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteActivityArchiveBudget.activityBudgetID.setter(uint64_t a1)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteActivityArchiveBudget.activityBudgetType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RemoteActivityArchiveBudget(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for RemoteActivityArchiveBudget(uint64_t a1)
{
  result = qword_1EDC97C50;
  if (!qword_1EDC97C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteActivityArchiveBudget.activityBudgetType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RemoteActivityArchiveBudget(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t RemoteActivityArchiveBudget.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteActivityArchiveBudget(0) + 24));

  return v1;
}

uint64_t RemoteActivityArchiveBudget.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RemoteActivityArchiveBudget(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RemoteActivityArchiveBudget.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget(0) + 28);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivityArchiveBudget.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget(0) + 28);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivityArchiveBudget.lastRefreshDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget(0) + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivityArchiveBudget.lastRefreshDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivityArchiveBudget(0) + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivityArchiveBudget.windowDuration.setter(double a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.maximumDuration.setter(double a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.maximumBudgetPerWindow.setter(uint64_t a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.remainingBudget.setter(uint64_t a1)
{
  result = type metadata accessor for RemoteActivityArchiveBudget(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t RemoteActivityArchiveBudget.init(activityBudgetID:activityBudgetType:windowDuration:maximumDuration:maximumBudgetPerWindow:startDate:remainingBudget:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v16 = *a2;
  v17 = sub_1BF4E7394();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a7, a1, v17);
  v19 = type metadata accessor for RemoteActivityArchiveBudget(0);
  *(a7 + v19[5]) = v16;
  sub_1BF3E0284(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v30 = sub_1BF4E96A4();
  v31 = v20;
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  if (v16)
  {
    v21 = 0x6C616D726F6ELL;
  }

  else
  {
    v21 = 0x676E697472656C61;
  }

  if (v16)
  {
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xE800000000000000;
  }

  MEMORY[0x1BFB58C90](v21, v22);

  (*(v18 + 8))(a1, v17);
  v23 = (a7 + v19[6]);
  *v23 = v30;
  v23[1] = v31;
  *(a7 + v19[9]) = a8;
  *(a7 + v19[10]) = a9;
  *(a7 + v19[11]) = a3;
  v24 = v19[7];
  v25 = sub_1BF4E7334();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a7 + v24, a4, v25);
  result = (*(v26 + 32))(a7 + v19[8], a4, v25);
  v28 = a5;
  if (a6)
  {
    v28 = a3;
  }

  *(a7 + v19[12]) = v28;
  return result;
}

unint64_t sub_1BF3DDEB4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    if (a1 != 2)
    {
      v5 = 0x7461447472617473;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x446D756D6978616DLL;
    v2 = 0xD000000000000016;
    if (a1 != 7)
    {
      v2 = 0x6E696E69616D6572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x726665527473616CLL;
    if (a1 != 4)
    {
      v3 = 0x7544776F646E6977;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BF3DE00C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BF3DFF78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BF3DE040(uint64_t a1)
{
  v2 = sub_1BF3DF3F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF3DE07C(uint64_t a1)
{
  v2 = sub_1BF3DF3F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivityArchiveBudget.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8930, &qword_1BF4EB838);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DF3F8();
  sub_1BF4E9864();
  v10[31] = 0;
  sub_1BF4E7394();
  sub_1BF3E0284(&qword_1EDC9D5E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BF4E9674();
  if (!v2)
  {
    v10[30] = *(v3 + *(type metadata accessor for RemoteActivityArchiveBudget(0) + 20));
    v10[29] = 1;
    sub_1BF3DF44C();
    sub_1BF4E9674();
    v10[28] = 2;
    sub_1BF4E9624();
    v10[27] = 3;
    sub_1BF4E7334();
    sub_1BF3E0284(&qword_1EDC9D5F8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BF4E9674();
    v10[26] = 4;
    sub_1BF4E9674();
    v10[25] = 5;
    sub_1BF4E9644();
    v10[24] = 6;
    sub_1BF4E9644();
    v10[15] = 7;
    sub_1BF4E9654();
    v10[14] = 8;
    sub_1BF4E9654();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RemoteActivityArchiveBudget.hash(into:)(uint64_t a1)
{
  sub_1BF4E7394();
  sub_1BF3E0284(&qword_1EBDD8948, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BF4E8884();
  v2 = type metadata accessor for RemoteActivityArchiveBudget(0);
  MEMORY[0x1BFB59A70](*(v1 + v2[5]));
  sub_1BF4E89F4();
  sub_1BF4E7334();
  sub_1BF3E0284(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  sub_1BF4E8884();
  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v4);
  MEMORY[0x1BFB59A70](*(v1 + v2[11]));
  return MEMORY[0x1BFB59A70](*(v1 + v2[12]));
}

uint64_t RemoteActivityArchiveBudget.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  RemoteActivityArchiveBudget.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t RemoteActivityArchiveBudget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1BF4E7334();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1BF4E7394();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8950, &qword_1BF4EB840);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v30 - v10;
  v12 = type metadata accessor for RemoteActivityArchiveBudget(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3DF3F8();
  v38 = v11;
  v15 = v40;
  sub_1BF4E9854();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v7;
  v17 = v35;
  v50 = 0;
  sub_1BF3E0284(&qword_1EBDD8958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1BF4E95B4();
  (*(v34 + 32))(v14, v37, v8);
  v48 = 1;
  sub_1BF3DF4A0();
  sub_1BF4E95B4();
  v14[v12[5]] = v49;
  v47 = 2;
  v18 = sub_1BF4E9564();
  v40 = v8;
  v19 = &v14[v12[6]];
  *v19 = v18;
  v19[1] = v20;
  v46 = 3;
  v21 = sub_1BF3E0284(&qword_1EDC9D5F0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v22 = v33;
  v37 = v21;
  sub_1BF4E95B4();
  v30 = v12;
  v23 = v16;
  v24 = *(v32 + 32);
  v24(&v14[v12[7]], v23, v22);
  v45 = 4;
  sub_1BF4E95B4();
  v24(&v14[v30[8]], v17, v22);
  v44 = 5;
  sub_1BF4E9584();
  v25 = v30;
  *&v14[v30[9]] = v26;
  v43 = 6;
  sub_1BF4E9584();
  *&v14[v25[10]] = v27;
  v42 = 7;
  *&v14[v25[11]] = sub_1BF4E9594();
  v41 = 8;
  v28 = sub_1BF4E9594();
  (*(v36 + 8))(v38, v39);
  *&v14[v25[12]] = v28;
  sub_1BF3DF4F4(v14, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1BF3DF558(v14);
}

uint64_t sub_1BF3DECE0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1BF3DED18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1BF3DED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BF3DEE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BF3DEE90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BF3DEFD4(double a1)
{
  sub_1BF4E9804();
  RemoteActivityArchiveBudget.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DF018(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  RemoteActivityArchiveBudget.hash(into:)(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3DF058()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1BF4E92E4();
  v8 = type metadata accessor for RemoteActivityArchiveBudget(0);
  MEMORY[0x1BFB58C90](*(v0 + *(v8 + 24)), *(v0 + *(v8 + 24) + 8));
  MEMORY[0x1BFB58C90](0x696E69616D657220, 0xEB0000000020676ELL);
  v13[1] = *(v0 + *(v8 + 48));
  v9 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x20747261747320, 0xE700000000000000);
  sub_1BF3E0284(&qword_1EDC9D5E8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v10 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x6873657266657220, 0xEC000000206E6920);
  sub_1BF4E7284();
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7234();
  v11 = *(v2 + 8);
  v11(v4, v1);
  v11(v7, v1);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](115, 0xE100000000000000);
  return v14;
}

double sub_1BF3DF2E4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

BOOL _s9ChronoKit27RemoteActivityArchiveBudgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1BF4E7364() & 1) != 0 && (v4 = type metadata accessor for RemoteActivityArchiveBudget(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && ((v5 = v4, v6 = *(v4 + 24), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (sub_1BF4E9734()) && (sub_1BF4E72D4() & 1) != 0 && (sub_1BF4E72D4() & 1) != 0 && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11])))
  {
    return *(a1 + v5[12]) == *(a2 + v5[12]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BF3DF3F8()
{
  result = qword_1EBDD8938;
  if (!qword_1EBDD8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8938);
  }

  return result;
}

unint64_t sub_1BF3DF44C()
{
  result = qword_1EBDD8940;
  if (!qword_1EBDD8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8940);
  }

  return result;
}

unint64_t sub_1BF3DF4A0()
{
  result = qword_1EBDD8960;
  if (!qword_1EBDD8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8960);
  }

  return result;
}

uint64_t sub_1BF3DF4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityArchiveBudget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3DF558(uint64_t a1)
{
  v2 = type metadata accessor for RemoteActivityArchiveBudget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF3DF5B4()
{
  result = qword_1EBDD8968;
  if (!qword_1EBDD8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8968);
  }

  return result;
}

unint64_t sub_1BF3DF60C()
{
  result = qword_1EBDD8970;
  if (!qword_1EBDD8970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8978, &qword_1BF4EB928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8970);
  }

  return result;
}

unint64_t sub_1BF3DF704()
{
  result = qword_1EBDD8980;
  if (!qword_1EBDD8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8980);
  }

  return result;
}

unint64_t sub_1BF3DF75C()
{
  result = qword_1EBDD8988;
  if (!qword_1EBDD8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8988);
  }

  return result;
}

uint64_t sub_1BF3DF7B8(void *a1)
{
  a1[1] = sub_1BF3E0284(&qword_1EBDD8990, type metadata accessor for RemoteActivityArchiveBudget, &protocol conformance descriptor for RemoteActivityArchiveBudget);
  a1[2] = sub_1BF3E0284(&qword_1EBDD8998, type metadata accessor for RemoteActivityArchiveBudget, &protocol conformance descriptor for RemoteActivityArchiveBudget);
  a1[3] = sub_1BF3E0284(&qword_1EBDD89A0, type metadata accessor for RemoteActivityArchiveBudget, &protocol conformance descriptor for RemoteActivityArchiveBudget);
  a1[4] = sub_1BF3E0284(&qword_1EBDD89A8, type metadata accessor for RemoteActivityArchiveBudget, &protocol conformance descriptor for RemoteActivityArchiveBudget);
  result = sub_1BF3E0284(&qword_1EBDD89B0, type metadata accessor for RemoteActivityArchiveBudget, &protocol conformance descriptor for RemoteActivityArchiveBudget);
  a1[5] = result;
  return result;
}

uint64_t sub_1BF3DF940(uint64_t a1)
{
  result = sub_1BF4E7394();
  if (v2 <= 0x3F)
  {
    result = sub_1BF4E7334();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteActivityArchiveBudget.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteActivityArchiveBudget.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReloadConfiguration.ReloadCost(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1BF3DFC0C()
{
  result = qword_1EBDD89C0;
  if (!qword_1EBDD89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89C0);
  }

  return result;
}

unint64_t sub_1BF3DFC64()
{
  result = qword_1EBDD89C8;
  if (!qword_1EBDD89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89C8);
  }

  return result;
}

unint64_t sub_1BF3DFCBC()
{
  result = qword_1EBDD89D0;
  if (!qword_1EBDD89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89D0);
  }

  return result;
}

unint64_t sub_1BF3DFD14()
{
  result = qword_1EBDD89D8;
  if (!qword_1EBDD89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89D8);
  }

  return result;
}

unint64_t sub_1BF3DFD6C()
{
  result = qword_1EBDD89E0;
  if (!qword_1EBDD89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89E0);
  }

  return result;
}

unint64_t sub_1BF3DFDC4()
{
  result = qword_1EBDD89E8;
  if (!qword_1EBDD89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89E8);
  }

  return result;
}

unint64_t sub_1BF3DFE1C()
{
  result = qword_1EBDD89F0;
  if (!qword_1EBDD89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89F0);
  }

  return result;
}

unint64_t sub_1BF3DFE74()
{
  result = qword_1EBDD89F8;
  if (!qword_1EBDD89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD89F8);
  }

  return result;
}

unint64_t sub_1BF3DFECC()
{
  result = qword_1EBDD8A00;
  if (!qword_1EBDD8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8A00);
  }

  return result;
}

unint64_t sub_1BF3DFF24()
{
  result = qword_1EBDD8A08;
  if (!qword_1EBDD8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8A08);
  }

  return result;
}

uint64_t sub_1BF3DFF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BF4F8D50 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BF4F8D70 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1BF4E9734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726665527473616CLL && a2 == 0xEF65746144687365 || (sub_1BF4E9734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172 || (sub_1BF4E9734() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446D756D6978616DLL && a2 == 0xEF6E6F6974617275 || (sub_1BF4E9734() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BF4F8D90 == a2 || (sub_1BF4E9734() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xEF74656764754267)
  {

    return 8;
  }

  else
  {
    v5 = sub_1BF4E9734();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1BF3E0284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActivityError.errorCode.getter()
{
  v1 = type metadata accessor for ActivityError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BF3E0514(v3);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00);

      v5 = sub_1BF4E7544();
      (*(*(v5 - 8) + 8))(v3, v5);
      return 3;
    }

    else
    {
      sub_1BF3E0514(v3);
      return 4;
    }
  }

  else
  {
    sub_1BF3E0514(v3);
    return 1;
  }
}

uint64_t type metadata accessor for ActivityError(uint64_t a1)
{
  result = qword_1EDC9B208;
  if (!qword_1EDC9B208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3E04B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3E0514(uint64_t a1)
{
  v2 = type metadata accessor for ActivityError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t ActivityError.failureReason.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7544();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BF3E04B0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BF3E0514(v8);
      return 0x662064616F6C6552;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000034;
    }

    else
    {
      return 0xD00000000000004ALL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00);

      (*(v3 + 32))(v5, v8, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1BF4E92E4();

      v15 = 0xD00000000000002BLL;
      v16 = 0x80000001BF4F8E50;
      v10 = sub_1BF4E7524();
      MEMORY[0x1BFB58C90](v10);

      v11 = v15;
      (*(v3 + 8))(v5, v2);
      return v11;
    }

    else
    {
      v13 = *v8;
      v14 = v8[1];
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1BF4E92E4();

      v15 = 0xD000000000000019;
      v16 = 0x80000001BF4F8E30;
      MEMORY[0x1BFB58C90](v13, v14);

      MEMORY[0x1BFB58C90](0x756F6620746F6E20, 0xEB000000002E646ELL);
      return v15;
    }
  }

  else
  {
    return *v8;
  }
}

unint64_t ActivityError.recoverySuggestion.getter()
{
  v1 = type metadata accessor for ActivityError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BF3E0514(v3);
  if (EnumCaseMultiPayload == 2)
  {
    return 0xD00000000000005ALL;
  }

  else
  {
    return 0;
  }
}

__int128 *ActivityError.errorUserInfo.getter()
{
  v67 = sub_1BF4E7454();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BF4E7544();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActivityError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A18, &qword_1BF4EBF08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4EBEF0;
  *(inited + 32) = sub_1BF4E8914();
  *(inited + 40) = v11;
  result = ActivityError.failureReason.getter();
  if (v13)
  {
    v14 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = result;
    *(inited + 56) = v13;
    v15 = sub_1BF3DA488(inited);
    swift_setDeallocating();
    sub_1BF3E21B8(inited + 32);
    sub_1BF3E04B0(v0, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1BF3E0514(v9);
    if (EnumCaseMultiPayload == 2)
    {
      v17 = sub_1BF4E8914();
      v19 = v18;
      v73 = v14;
      *&v72 = 0xD00000000000005ALL;
      *(&v72 + 1) = 0x80000001BF4F8EC0;
      sub_1BF38EB2C(&v72, v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v15;
      sub_1BF3D67F0(v69, v17, v19, isUniquelyReferenced_nonNull_native, v21);

      v15 = v68;
    }

    sub_1BF3E04B0(v0, v6);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 == 3)
    {
      v46 = *v6;
      v47 = sub_1BF4E8914();
      v49 = v48;
      swift_getErrorValue();
      v50 = v70;
      v51 = v71;
      v73 = v71;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v72);
      (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v50, v51);
      sub_1BF38EB2C(&v72, v69);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v15;
      sub_1BF3D67F0(v69, v47, v49, v53, v54);
    }

    else
    {
      if (v22 != 1)
      {
        sub_1BF3E0514(v6);
        return v15;
      }

      v23 = 0xD000000000000019;
      v24 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00) + 48));
      (*(v61 + 32))(v60, v6, v62);
      v25 = sub_1BF4E7524();
      v73 = v14;
      *&v72 = v25;
      *(&v72 + 1) = v26;
      sub_1BF38EB2C(&v72, v69);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v15;
      sub_1BF3D67F0(v69, 0xD000000000000019, 0x80000001BF4F8F20, v27, v28);
      result = v24;
      v29 = v68;
      if (v24 >> 62)
      {
        goto LABEL_24;
      }

      v30 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        while (1)
        {
          v59 = v29;
          v31 = result;
          *&v72 = MEMORY[0x1E69E7CC0];
          v29 = &v72;
          result = sub_1BF3A31DC(0, v30 & ~(v30 >> 63), 0);
          if (v30 < 0)
          {
            break;
          }

          v32 = 0;
          v33 = v72;
          v34 = v31;
          v66 = v31 & 0xC000000000000001;
          v63 = v31 & 0xFFFFFFFFFFFFFF8;
          v35 = (v65 + 8);
          v65 = v31;
          v64 = v30;
          while (1)
          {
            v36 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v66)
            {
              v37 = MEMORY[0x1BFB59570](v32, v34);
            }

            else
            {
              if (v32 >= *(v63 + 16))
              {
                goto LABEL_23;
              }

              v37 = *(v34 + 8 * v32 + 32);
            }

            v38 = v37;
            result = [v37 activityAttributesType];
            if (!result)
            {
              goto LABEL_30;
            }

            v39 = result;
            sub_1BF3E241C(&qword_1EDC9F090, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BC0]);
            v40 = v67;
            sub_1BF4E7554();

            v29 = v2;
            v41 = sub_1BF4E7424();
            v23 = v42;

            result = (*v35)(v2, v40);
            *&v72 = v33;
            v44 = *(v33 + 16);
            v43 = *(v33 + 24);
            if (v44 >= v43 >> 1)
            {
              v29 = &v72;
              result = sub_1BF3A31DC((v43 > 1), v44 + 1, 1);
              v33 = v72;
            }

            *(v33 + 16) = v44 + 1;
            v45 = v33 + 16 * v44;
            *(v45 + 32) = v41;
            *(v45 + 40) = v23;
            ++v32;
            v34 = v65;
            if (v36 == v64)
            {

              v23 = 0xD000000000000019;
              v29 = v59;
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v55 = result;
          v30 = sub_1BF4E9204();
          result = v55;
          if (!v30)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_25:

      v33 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      *&v72 = v33;
      sub_1BF38EB2C(&v72, v69);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v29;
      sub_1BF3D67F0(v69, v23 + 10, 0x80000001BF4F8F40, v56, v57);
      (*(v61 + 8))(v60, v62);
    }

    return v68;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::String __swiftcall CHSSessionPlatterDescriptor.formatted()()
{
  v1 = sub_1BF4E7454();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 activityAttributesType];
  if (v6)
  {
    v8 = v6;
    sub_1BF3E241C(&qword_1EDC9F090, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BC0]);
    sub_1BF4E7554();

    v9 = sub_1BF4E7424();
    v11 = v10;
    (*(v2 + 8))(v5, v1);
    v6 = v9;
    v7 = v11;
  }

  else
  {
    __break(1u);
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1BF3E119C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v4, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BF3E0514(v3);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A10, &qword_1BF4EBF00);

      v6 = sub_1BF4E7544();
      (*(*(v6 - 8) + 8))(v3, v6);
      return 3;
    }

    else
    {
      sub_1BF3E0514(v3);
      return 4;
    }
  }

  else
  {
    sub_1BF3E0514(v3);
    return 1;
  }
}

unint64_t sub_1BF3E12EC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3E04B0(v4, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BF3E0514(v3);
  if (EnumCaseMultiPayload == 2)
  {
    return 0xD00000000000005ALL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF3E139C(uint64_t a1)
{
  v2 = sub_1BF3E241C(&qword_1EBDD8A48, type metadata accessor for ActivityError, &protocol conformance descriptor for ActivityError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BF3E1408(uint64_t a1)
{
  v2 = sub_1BF3E241C(&qword_1EBDD8A48, type metadata accessor for ActivityError, &protocol conformance descriptor for ActivityError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void *sub_1BF3E147C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E16F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BF3E149C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1BA4(a1, a2, a3, *v3, &qword_1EBDD8A30, &qword_1BF4F3E50, &qword_1EBDD8A38, &unk_1BF4EC4D0);
  *v3 = result;
  return result;
}

char *sub_1BF3E14DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E185C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BF3E14FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BF3E151C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BF3E153C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1BA4(a1, a2, a3, *v3, &qword_1EBDD8A58, &qword_1BF4EC028, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  *v3 = result;
  return result;
}

void *sub_1BF3E157C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A88, &qword_1BF4EC058, type metadata accessor for EnvironmentModifiers);
  *v3 = result;
  return result;
}

void *sub_1BF3E15C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A80, &qword_1BF4EC050, MEMORY[0x1E6985980]);
  *v3 = result;
  return result;
}

void *sub_1BF3E1604(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A60, &qword_1BF4EC030, type metadata accessor for ExtensionMetadata);
  *v3 = result;
  return result;
}

void *sub_1BF3E1648(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A78, &qword_1BF4EC048, MEMORY[0x1E69C73C8]);
  *v3 = result;
  return result;
}

void *sub_1BF3E168C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1D8C(a1, a2, a3, *v3, &qword_1EBDD8A70, &qword_1BF4EC040, MEMORY[0x1E69C7370]);
  *v3 = result;
  return result;
}

void *sub_1BF3E16D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF3E1F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BF3E16F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA8, &qword_1BF4EC078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AB0, &unk_1BF4EC080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF3E185C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA0, &unk_1BF4F1CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BF3E1950(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A40, &qword_1BF4EC018);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BF3E1A60(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A90, &qword_1BF4EC060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A98, &qword_1BF4EC068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BF3E1BA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1BF3E1D8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1BF3E1F68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_1BF3E20B0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB59570](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BF3E2464;
  }

  __break(1u);
  return result;
}

void (*sub_1BF3E2130(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB59570](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BF3E21B0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3E21B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D0, &qword_1BF4EB2E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF3E2270(uint64_t a1)
{
  sub_1BF3E22F0(319);
  if (v1 <= 0x3F)
  {
    sub_1BF3E2370();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BF3E22F0(uint64_t a1)
{
  if (!qword_1EDC9D5C8)
  {
    sub_1BF4E7544();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8A28, &qword_1BF4EBFF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC9D5C8);
    }
  }
}

void sub_1BF3E2370()
{
  if (!qword_1EDC962D0)
  {
    v0 = sub_1BF3E23B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC962D0);
    }
  }
}

unint64_t sub_1BF3E23B8()
{
  result = qword_1EDC962C8;
  if (!qword_1EDC962C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC962C8);
  }

  return result;
}

uint64_t sub_1BF3E241C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PowerlogSuggestionService.__allocating_init(owner:)(char *a1)
{
  v15 = sub_1BF4E8F24();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  v8 = type metadata accessor for WidgetPowerlogProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v14[1] = sub_1BF3DC720();
  sub_1BF4E8044();
  *&v16 = MEMORY[0x1E69E7CC0];
  sub_1BF3A106C(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v15);
  *(v9 + 24) = sub_1BF4E8F64();
  v17 = v8;
  v18 = sub_1BF3A106C(qword_1EDC9E008, type metadata accessor for WidgetPowerlogProvider, &unk_1BF4F3D18);
  *&v16 = v9;
  type metadata accessor for PowerlogSuggestionService();
  v10 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *(v10 + 56) = v11;
  sub_1BF38E610(&v16, v10 + 16);
  return v10;
}

double sub_1BF3E2780(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v1 + 56);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_1BF38E49C(v1 + 16, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AB8, &qword_1BF4EC098);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF4EBEF0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v3;
  *(v9 + 48) = v4;
  v10 = *(v8 + 64);
  v11 = v2;

  v10(v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  os_unfair_lock_unlock(*(v5 + 16));

  return result;
}

uint64_t PowerlogSuggestionService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t PowerlogSuggestionService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

char *AssertedStatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, void *a8, void *a9, uint64_t a10, __int128 a11, uint64_t a13)
{
  swift_allocObject();
  v17 = sub_1BF3E4870(a1, a2, a3, a4, a5, a6, a7, a10, a11, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v17;
}

char *AssertedStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, __int128 a11, uint64_t a13)
{
  v15 = sub_1BF3E4870(a1, a2, a3, a4, a5, a6, a7, a10, a11, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v15;
}

uint64_t sub_1BF3E2C38()
{
  v1 = sub_1BF44DE1C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3B1E44(sub_1BF3E4AD4, v0, v2);
  sub_1BF4E92E4();

  v7 = v1;
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4F9010);
  sub_1BF3E4AF0();
  v3 = sub_1BF4E8894();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  return v7;
}

void sub_1BF3E2D48(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a2;
  v119 = *a1;
  v3 = v119;
  v4 = *(v119 + 1584);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v123 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v87 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v118 = sub_1BF4E90F4();
  v125 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v87 - v13;
  v14 = *(*(v3 + 1576) - 8);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v87 - v18;
  v124 = v4;
  v20 = v19;
  sub_1BF4E8834();
  v21 = swift_getTupleTypeMetadata2();
  v102 = sub_1BF4E90F4();
  v22 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v87 - v25;
  v26 = qword_1EDC99B78;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v27 + 64);
  v89 = (v29 + 63) >> 6;
  v100 = v21 - 8;
  v90 = v14 + 16;
  v107 = (v14 + 32);
  v99 = (v22 + 32);
  v112 = TupleTypeMetadata2;
  v117 = TupleTypeMetadata2 - 8;
  v32 = v122;
  v109 = v5 + 16;
  v120 = (v5 + 32);
  v115 = ":\n            Counts:\n";
  v116 = v125 + 32;
  v111 = v5;
  v114 = (v5 + 8);
  v96 = "ifetime assertion";
  v92 = v14;
  v95 = (v14 + 8);
  v33 = v103;
  v93 = v27;

  v34 = 0;
  v108 = MEMORY[0x1E69E7CC0];
  v121 = v11;
  v97 = v28;
  v98 = v20;
  v94 = v21;
  if (v31)
  {
    while (1)
    {
      v105 = v34;
      v35 = v34;
LABEL_14:
      v106 = (v31 - 1) & v31;
      v39 = __clz(__rbit64(v31)) | (v35 << 6);
      v40 = v93;
      v41 = v92;
      (*(v92 + 16))(v91, *(v93 + 48) + *(v92 + 72) * v39, v20);
      v42 = *(*(v40 + 56) + 8 * v39);
      v43 = *(v21 + 48);
      v38 = v104;
      (*(v41 + 32))();
      *&v38[v43] = v42;
      v44 = *(v21 - 8);
      (*(v44 + 56))(v38, 0, 1, v21);

LABEL_15:
      v45 = v101;
      (*v99)(v101, v38, v102);
      if ((*(v44 + 48))(v45, 1, v21) == 1)
      {
        break;
      }

      v46 = *&v45[*(v21 + 48)];
      (*v107)(v33, v45, v20);
      v47 = 0;
      v49 = v46 + 64;
      v48 = *(v46 + 64);
      v113 = v46;
      v50 = 1 << *(v46 + 32);
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v52 = v51 & v48;
      v53 = (v50 + 63) >> 6;
      v125 = MEMORY[0x1E69E7CC0];
      v54 = v112;
      if ((v51 & v48) == 0)
      {
LABEL_21:
        if (v53 <= v47 + 1)
        {
          v56 = v47 + 1;
        }

        else
        {
          v56 = v53;
        }

        v57 = v56 - 1;
        while (1)
        {
          v55 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v55 >= v53)
          {
            v52 = 0;
            v68 = 1;
            v47 = v57;
            goto LABEL_30;
          }

          v52 = *(v49 + 8 * v55);
          ++v47;
          if (v52)
          {
            v47 = v55;
            goto LABEL_29;
          }
        }

        __break(1u);
        break;
      }

      while (1)
      {
        v55 = v47;
LABEL_29:
        v58 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v59 = v58 | (v55 << 6);
        v60 = v113;
        v61 = v110;
        v62 = v111;
        v63 = v124;
        (*(v111 + 16))(v110, *(v113 + 48) + *(v111 + 72) * v59, v124);
        v64 = *(*(v60 + 56) + 8 * v59);
        v65 = *(v112 + 48);
        v66 = *(v62 + 32);
        v11 = v121;
        v67 = v61;
        v54 = v112;
        v66(v121, v67, v63);
        v68 = 0;
        *&v11[v65] = v64;
        v32 = v122;
LABEL_30:
        v69 = *(v54 - 8);
        (*(v69 + 56))(v11, v68, 1, v54);
        (*v116)(v32, v11, v118);
        if ((*(v69 + 48))(v32, 1, v54) == 1)
        {
          break;
        }

        v70 = *&v32[*(v54 + 48)];
        (*v120)(v123, v32, v124);
        v126 = 0;
        v127 = 0xE000000000000000;
        sub_1BF4E92E4();
        MEMORY[0x1BFB58C90](0xD000000000000010, v115 | 0x8000000000000000);
        sub_1BF4E96F4();
        MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
        v128 = v70;
        v71 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v71);

        v72 = v126;
        v73 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1BF431F90(0, *(v125 + 2) + 1, 1, v125);
        }

        v75 = *(v125 + 2);
        v74 = *(v125 + 3);
        if (v75 >= v74 >> 1)
        {
          v125 = sub_1BF431F90((v74 > 1), v75 + 1, 1, v125);
        }

        (*v114)(v123, v124);
        v76 = v125;
        *(v125 + 2) = v75 + 1;
        v77 = &v76[16 * v75];
        *(v77 + 4) = v72;
        *(v77 + 5) = v73;
        v11 = v121;
        v32 = v122;
        if (!v52)
        {
          goto LABEL_21;
        }
      }

      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0x2020202020202020, 0xE800000000000000);
      v33 = v103;
      v20 = v98;
      sub_1BF4E96F4();
      MEMORY[0x1BFB58C90](0xD000000000000016, v96 | 0x8000000000000000);
      v128 = v125;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      sub_1BF3E4AF0();
      v78 = sub_1BF4E8894();
      v80 = v79;

      MEMORY[0x1BFB58C90](v78, v80);

      v81 = v126;
      v82 = v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1BF431F90(0, *(v108 + 2) + 1, 1, v108);
      }

      v21 = v94;
      v84 = *(v108 + 2);
      v83 = *(v108 + 3);
      if (v84 >= v83 >> 1)
      {
        v108 = sub_1BF431F90((v83 > 1), v84 + 1, 1, v108);
      }

      (*v95)(v33, v20);
      v85 = v108;
      *(v108 + 2) = v84 + 1;
      v86 = &v85[16 * v84];
      *(v86 + 4) = v81;
      *(v86 + 5) = v82;
      v28 = v97;
      v31 = v106;
      v34 = v105;
      if (!v106)
      {
        goto LABEL_6;
      }
    }

    *v88 = v108;
  }

  else
  {
LABEL_6:
    if (v89 <= v34 + 1)
    {
      v36 = v34 + 1;
    }

    else
    {
      v36 = v89;
    }

    v37 = v36 - 1;
    v38 = v104;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v89)
      {
        v44 = *(v21 - 8);
        (*(v44 + 56))(v104, 1, 1, v21);
        v106 = 0;
        v105 = v37;
        goto LABEL_15;
      }

      v31 = *(v28 + 8 * v35);
      ++v34;
      if (v31)
      {
        v105 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF3E3958(uint64_t a1)
{
  if (!sub_1BF3B530C(a1))
  {
    return 0;
  }

  return sub_1BF45D9CC();
}

uint64_t sub_1BF3E3990()
{
  v0 = sub_1BF3E4B54(&qword_1EDCA6810);
  sub_1BF391990(v0, v1);
  return v0;
}

uint64_t sub_1BF3E3A4C()
{
  v0 = sub_1BF3E4B54(&qword_1EDCA6808);
  sub_1BF391990(v0, v1);
  return v0;
}

uint64_t sub_1BF3E3AA8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

double sub_1BF3E3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a2;
    v10 = a3;
    sub_1BF3B1E44(sub_1BF3E4F20, v7, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

double sub_1BF3E3C04(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1BF3B1E44(sub_1BF3E4F20, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BF3E3C5C(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v82 = a3;
  v72 = *a1;
  v7 = v72;
  v8 = *(v72 + 1576);
  isa = v8[-1].isa;
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v63 - v14;
  v15 = v7[198];
  v79 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v63 - v19;
  swift_beginAccess();
  v20 = v7[203];
  sub_1BF4E8834();
  v81 = a1;
  v21 = v7[201];

  v78 = a2;
  v71 = v8;
  v75 = v21;
  sub_1BF4E8854();

  v22 = v84;
  if (!v84)
  {
    goto LABEL_23;
  }

  v86 = v84;
  v80 = v15;
  sub_1BF4E8854();
  if (v85)
  {
    goto LABEL_23;
  }

  v23 = v84 - 1;
  if (__OFSUB__(v84, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v23 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_1BF4E92E4();
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](0xD000000000000031, 0x80000001BF4F90B0);
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v67 = v4;
  v66 = v84 - 1;
  if (v84 == 1)
  {
    v68 = v22;
    v32 = isa;
    v33 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34 = v71;
    v64 = *(isa + 2);
    v64(v12, v78, v71);
    v65 = sub_1BF3E29DC(&v84);
    v63 = sub_1BF4E8834();
    v35 = sub_1BF4E8844();
    if (*v36)
    {
      sub_1BF4E8784();
    }

    v35(v83, 0);
    (*(v32 + 1))(v12, v34);
    (v65)(&v84, 0);
    v27 = v34;
    swift_beginAccess();

    v29 = v78;
    sub_1BF4E8854();

    v37 = v79;
    v77 = v33;
    if (v83[0])
    {
      v38 = MEMORY[0x1BFB58A40](v83[0], v80, MEMORY[0x1E69E6530], v20);

      v31 = v69;
      v25 = v64;
      if (v38)
      {
        swift_beginAccess();
        sub_1BF4E8784();
        swift_endAccess();
      }

      v24 = isa;
    }

    else
    {
      v24 = isa;
      v31 = v69;
      v25 = v64;
    }

    v30 = v37;
  }

  else
  {
    (*(v79 + 16))(v74, v82, v80);
    v84 = v23;
    LOBYTE(v85) = 0;
    sub_1BF4E8864();
    v24 = isa;
    v25 = *(isa + 2);
    v77 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26 = v78;
    v27 = v71;
    v25(v73, v78, v71);
    v28 = v86;
    v83[0] = v86;
    swift_beginAccess();
    sub_1BF4E8834();
    v68 = v28;
    v29 = v26;

    v30 = v79;
    sub_1BF4E8864();
    swift_endAccess();
    v31 = v69;
  }

  v39 = v70;
  v25(v70, v29, v27);
  isa = *(v30 + 16);
  (isa)(v31, v82, v80);
  v40 = sub_1BF4E7B34();
  v41 = sub_1BF4E8E84();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v71 = v40;
    v43 = v42;
    v75 = swift_slowAlloc();
    v83[0] = v75;
    *v43 = 136446722;
    LODWORD(v69) = v41;
    v44 = v73;
    v25(v73, v39, v27);
    v45 = *(v24 + 1);
    v45(v39, v27);
    v46 = sub_1BF4E96A4();
    v47 = v79;
    v49 = v48;
    v45(v44, v27);
    v50 = sub_1BF38D65C(v46, v49, v83);

    *(v43 + 4) = v50;
    *(v43 + 12) = 2082;
    v51 = v74;
    v52 = v80;
    (isa)(v74, v31, v80);
    v53 = *(v47 + 8);
    v53(v31, v52);
    v54 = v52;
    v55 = sub_1BF4E96A4();
    v57 = v56;
    v53(v51, v54);
    v58 = sub_1BF38D65C(v55, v57, v83);

    *(v43 + 14) = v58;
    *(v43 + 22) = 2050;
    v59 = v66;
    *(v43 + 24) = v66;
    v60 = v71;
    _os_log_impl(&dword_1BF389000, v71, v69, "%{public}s:%{public}s assertion released (%{public}ld)", v43, 0x20u);
    v61 = v75;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v61, -1, -1);
    MEMORY[0x1BFB5A5D0](v43, -1, -1);
  }

  else
  {
    (*(v30 + 8))(v31, v80);
    (*(v24 + 1))(v39, v27);

    v59 = v66;
  }

  if (!v59)
  {
    sub_1BF450388(v78, v82);
  }
}

double sub_1BF3E468C()
{

  v1 = qword_1EDC99B70;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF3B0E64(*(v0 + qword_1EDCA6810), *(v0 + qword_1EDCA6810 + 8));
  v3 = *(v0 + qword_1EDCA6808);
  v4 = *(v0 + qword_1EDCA6808 + 8);

  return sub_1BF3B0E64(v3, v4);
}

uint64_t AssertedStatefulStore.deinit()
{
  v0 = StatefulStore.deinit();

  v1 = qword_1EDC99B70;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF3B0E64(*(v0 + qword_1EDCA6810), *(v0 + qword_1EDCA6810 + 8));
  sub_1BF3B0E64(*(v0 + qword_1EDCA6808), *(v0 + qword_1EDCA6808 + 8));
  return v0;
}

uint64_t AssertedStatefulStore.__deallocating_deinit()
{
  AssertedStatefulStore.deinit();

  return swift_deallocClassInstance();
}

void *sub_1BF3E4820(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1BF3E4840@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_1BF3E4870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v34 = a3;
  v35 = a8;
  v36 = a6;
  v37 = a7;
  v32 = a1;
  v33 = a2;
  v31 = a9;
  v29 = a10;
  v30 = a5;
  v12 = *v10;
  v13 = sub_1BF4E7B54();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1EDC99B78;
  v18 = *(v12 + 1576);
  v19 = sub_1BF4E8834();
  swift_getTupleTypeMetadata2();
  v20 = sub_1BF4E8BF4();
  v22 = sub_1BF3B0FE8(v20, v18, v19, *(v12 + 1608), v21);

  *(v10 + v17) = v22;
  v23 = (v10 + qword_1EDCA6810);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v10 + qword_1EDCA6808);
  *v24 = 0;
  v24[1] = 0;
  v25 = *(v14 + 16);
  v25(v10 + qword_1EDC99B70, a4, v13);
  v25(v16, a4, v13);
  v26 = v30;
  sub_1BF38E49C(v30, v38);
  v27 = sub_1BF45C7E0(v32, v33, v34, v16, v38, v36, v37, 0, 0, v35, v31, *(&v31 + 1), v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  (*(v14 + 8))(a4, v13);
  return v27;
}

unint64_t sub_1BF3E4AF0()
{
  result = qword_1EDC9F180;
  if (!qword_1EDC9F180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F180);
  }

  return result;
}

uint64_t sub_1BF3E4B54(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t *a3@<X8>)
{
  v4 = sub_1BF3E4B54(a1);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v4;
  a3[1] = v6;

  return a2();
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
  }

  else
  {
    v8 = 0;
  }

  a5(*a1, a1[1], a3, a4);
  return a6(v7, v8);
}

uint64_t sub_1BF3E4D10(uint64_t a1)
{
  result = sub_1BF4E7B54();
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

id sub_1BF3E4F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 32);
  v8 = sub_1BF4E88E4();
  v9 = [v7 prepareStatement_];

  if (!v9)
  {
    sub_1BF3E9074();
    swift_allocError();
    *v43 = 3;
    swift_willThrow();
    return v9;
  }

  v57 = v3;
  v58 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AE8, &qword_1BF4EC248);
  v10 = sub_1BF4E9494();
  v11 = v10;
  v12 = 0;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v59 = a1;
  for (i = v10 + 64; v16; v11[2] = v37)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v5 = v18 | (v12 << 6);
    v21 = (*(a1 + 48) + 16 * v5);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(a1 + 56) + 24 * v5;
    v25 = *v24;
    v26 = *(v24 + 16);
    if (v26 <= 1)
    {
      if (*(v24 + 16))
      {
        v65 = &off_1F3DF0098;
        v31 = MEMORY[0x1E69E63B0];
      }

      else
      {
        v65 = &off_1F3DF0090;
        v31 = MEMORY[0x1E69E7360];
      }

      v64 = v31;
      *&aBlock = v25;

      goto LABEL_23;
    }

    v27 = *(v24 + 8);
    if (v26 == 2)
    {
      v64 = MEMORY[0x1E69E6158];
      v65 = &off_1F3DF00A0;
      *&aBlock = v25;
      *(&aBlock + 1) = v27;

      v28 = v25;
      v29 = v27;
      v30 = 2;
    }

    else
    {
      if (v26 != 3)
      {
        v32 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

        v33 = [v32 init];
        v64 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
        v65 = &off_1F3DF0088;
        *&aBlock = v33;
        goto LABEL_20;
      }

      v64 = MEMORY[0x1E6969080];
      v65 = &off_1F3DF00A8;
      *&aBlock = v25;
      *(&aBlock + 1) = v27;

      v28 = v25;
      v29 = v27;
      v30 = 3;
    }

    sub_1BF3D8840(v28, v29, v30);
LABEL_20:
    a1 = v59;
LABEL_23:
    *(i + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
    v34 = (v11[6] + 16 * v5);
    *v34 = v22;
    v34[1] = v23;
    sub_1BF38E610(&aBlock, v11[7] + 40 * v5);
    v35 = v11[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_41;
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_33;
    }

    if (v12 >= v17)
    {
      break;
    }

    v20 = *(v13 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BF476754(v11);

  v39 = sub_1BF4E8744();

  v65 = sub_1BF3E91D4;
  v66 = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v63 = sub_1BF3E924C;
  v64 = &block_descriptor_28;
  v40 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v9 = v58;
  v41 = [v58 executeWithBindings:v39 resultRowHandler:v40 error:&aBlock];
  _Block_release(v40);

  if (v41)
  {
    v42 = aBlock;

    swift_beginAccess();
    v9 = *(v38 + 16);

    return v9;
  }

  v44 = aBlock;
  v45 = sub_1BF4E6FF4();

  swift_willThrow();
  *&aBlock = v45;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  sub_1BF3901C0(0, &qword_1EDC962E8, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
LABEL_38:

    return v9;
  }

  v5 = v61;
  if ([v61 code] != 11)
  {

    goto LABEL_38;
  }

  v12 = v57;
  if (*(v57 + 40) != 1)
  {
    goto LABEL_36;
  }

  if (qword_1EDC9D460 != -1)
  {
    goto LABEL_42;
  }

LABEL_33:
  v47 = sub_1BF4E7B54();
  __swift_project_value_buffer(v47, qword_1EDCA6898);
  v48 = v5;
  v49 = sub_1BF4E7B34();
  v50 = sub_1BF4E8E74();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138543362;
    *(v51 + 4) = v48;
    *v52 = v48;
    v53 = v48;
    _os_log_impl(&dword_1BF389000, v49, v50, "Corrupt database detected. Calling corruption handler and exiting: %{public}@", v51, 0xCu);
    sub_1BF38C9B4(v52, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v52, -1, -1);
    MEMORY[0x1BFB5A5D0](v51, -1, -1);
  }

  v54 = *(v12 + 48);
  v55 = v48;
  v54();

  v9 = v58;
LABEL_36:
  swift_willThrow();

  return v9;
}

void sub_1BF3E5608(uint64_t a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 24) + 16));
  if (a1 == 1)
  {
    if (!*(v1 + 80))
    {
      v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](18);
      MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F92A0);
      v5 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v5);

      sub_1BF3E4F48(v4, 0, 0xE000000000000000);
    }
  }

  else if (!a1 && *(v1 + 80) == 1)
  {
    v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v3, 0xD000000000000016, 0x80000001BF4F9440);
  }
}

uint64_t sub_1BF3E57B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v12 = a3;
  *(v8 + 16) = 10;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  *(v8 + 40) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 56) = a6;
  *(v8 + 64) = 0;
  *(v8 + 24) = v14;
  *(v8 + 32) = a1;
  *(v8 + 48) = a5;
  v16 = a1;

  v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  sub_1BF3E4F48(v17, 0xD00000000000001BLL, 0x80000001BF4F9260);
  if (v7)
  {

    [*(v8 + 32) close];
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v22 = sub_1BF4E7B54();
    __swift_project_value_buffer(v22, qword_1EDCA6898);
    v23 = v7;
    v24 = sub_1BF4E7B34();
    v25 = sub_1BF4E8E64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v16;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = sub_1BF4E6FE4();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1BF389000, v24, v25, "Failed to open database: %{public}@", v27, 0xCu);
      sub_1BF38C9B4(v28, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
      v30 = v27;
      v16 = v26;
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
    }

    swift_willThrow();

    sub_1BF38C9B4(a2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  }

  else
  {

    v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v18, 0xD000000000000016, 0x80000001BF4F9280);
    v47 = v16;

    v19 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](18);
    MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F92A0);
    v20 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v20);

    sub_1BF3E4F48(v19, 0, 0xE000000000000000);

    v21 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v21, 0xD000000000000017, 0x80000001BF4F92C0);

    v32 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v32, 0xD000000000000019, 0x80000001BF4F92E0);

    v33 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    sub_1BF3E4F48(v33, 0xD00000000000001ELL, 0x80000001BF4F9300);

    if (a4)
    {
      sub_1BF3E5FA0(v12, a4, a2);
    }

    v34 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    v35 = sub_1BF3E6988(v34, 0xD000000000000015, 0x80000001BF4F9320);

    v36 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    v48 = sub_1BF3E6988(v36, 0xD000000000000011, 0x80000001BF4F9340);

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v37 = fmax(v48 * 0.05, 256.0);
    v38 = sub_1BF4E7B54();
    __swift_project_value_buffer(v38, qword_1EDCA6898);
    v39 = sub_1BF4E7B34();
    v40 = sub_1BF4E8E84();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134349312;
      *(v41 + 4) = v35;
      *(v41 + 12) = 2050;
      *(v41 + 14) = v48;
      _os_log_impl(&dword_1BF389000, v39, v40, "Database has %{public}lld/%{public}lld free pages.", v41, 0x16u);
      MEMORY[0x1BFB5A5D0](v41, -1, -1);
    }

    if (v37 <= v35)
    {
      v42 = sub_1BF4E7B34();
      v43 = sub_1BF4E8E84();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1BF389000, v42, v43, "Vacuuming", v44, 2u);
        MEMORY[0x1BFB5A5D0](v44, -1, -1);
      }

      v45 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      sub_1BF3E4F48(v45, 0xD000000000000019, 0x80000001BF4F9360);

      sub_1BF38C9B4(a2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    else
    {
      sub_1BF38C9B4(a2, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    *(v8 + 40) = 1;
  }

  return v8;
}

void sub_1BF3E5FA0(int a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v85 = a3;
  v87 = a2;
  v88 = a1;
  v93[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73[-v14];
  v16 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  v86 = v3;
  v17 = sub_1BF3E6988(v16, 0xD000000000000013, 0x80000001BF4F9380);

  if (v4)
  {
    return;
  }

  v78 = v12;
  v79 = v7;
  v80 = v15;
  v18 = v88;
  v84 = v9;
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v83 = 0;
  v5 = *(v87 + 16);
  if (v5 >> 16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v77 = v6;
  LODWORD(v7) = v17;
  LODWORD(v6) = v5;
  if (qword_1EDC9D460 != -1)
  {
LABEL_31:
    swift_once();
  }

  v19 = sub_1BF4E7B54();
  v81 = __swift_project_value_buffer(v19, qword_1EDCA6898);
  v20 = sub_1BF4E7B34();
  v21 = sub_1BF4E8E84();
  v22 = os_log_type_enabled(v20, v21);
  v82 = v7;
  if (v22)
  {
    v74 = v21;
    v23 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = v5;
    v93[0] = v75;
    *v23 = 136446466;
    v90 = 118;
    v91 = 0xE100000000000000;
    v89 = WORD1(v17);
    v24 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v24);

    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    v89 = v7;
    v25 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v25);

    v26 = sub_1BF38D65C(v90, v91, v93);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v90 = 118;
    v91 = 0xE100000000000000;
    v89 = v88;
    v27 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v27);

    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    v28 = v6;
    v89 = v6;
    v18 = v88;
    v29 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v29);

    v30 = sub_1BF38D65C(v90, v91, v93);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_1BF389000, v20, v74, "Migrating database from %{public}s to %{public}s", v23, 0x16u);
    v5 = v75;
    swift_arrayDestroy();
    v31 = v5;
    LOWORD(v5) = v76;
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
    MEMORY[0x1BFB5A5D0](v23, -1, -1);
  }

  else
  {
    v28 = v6;
  }

  v33 = v84;
  v32 = v85;
  if (WORD1(v17) == v18)
  {
    v34 = v82;
    if (v82 == v28)
    {
      return;
    }

    v92 = v17;
    LODWORD(v85) = v28;
    if (v28 >= v82)
    {
LABEL_25:
      v70 = v87;

      v71 = v86;

      sub_1BF3E8430(0x6F6974617267694DLL, 0xE90000000000006ELL, v71, v70, &v92, v71, v18 | (v5 << 16));

      return;
    }

    v44 = v18;
    v35 = v5;
    v45 = v80;
    sub_1BF3E90C8(v32, v80);
    v46 = sub_1BF4E7B34();
    v47 = sub_1BF4E8E64();
    if (os_log_type_enabled(v46, v47))
    {
      LODWORD(v81) = v47;
      v48 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v93[0] = v76;
      *v48 = 136446722;
      v90 = 118;
      v91 = 0xE100000000000000;
      v89 = v44;
      v49 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v49);

      MEMORY[0x1BFB58C90](46, 0xE100000000000000);
      v89 = v34;
      v50 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v50);

      v51 = sub_1BF38D65C(v90, v91, v93);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      v90 = 118;
      v91 = 0xE100000000000000;
      v89 = v44;
      v52 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v52);

      MEMORY[0x1BFB58C90](46, 0xE100000000000000);
      v89 = v85;
      v53 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v53);

      v54 = sub_1BF38D65C(v90, v91, v93);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2082;
      v55 = v78;
      sub_1BF3E90C8(v80, v78);
      v56 = sub_1BF4E7194();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        sub_1BF38C9B4(v55, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
        v58 = 0xEB000000003E7972;
        v59 = 0x6F6D656D2D6E693CLL;
      }

      else
      {
        v59 = sub_1BF4E7074();
        v58 = v60;
        (*(v57 + 8))(v55, v56);
      }

      v33 = v84;
      sub_1BF38C9B4(v80, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      v61 = sub_1BF38D65C(v59, v58, v93);

      *(v48 + 24) = v61;
      _os_log_impl(&dword_1BF389000, v46, v81, "Detected database schema downgrade from %{public}s to %{public}s. Will attempt to truncate %{public}s", v48, 0x20u);
      v62 = v76;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v62, -1, -1);
      MEMORY[0x1BFB5A5D0](v48, -1, -1);

      v44 = v88;
    }

    else
    {

      sub_1BF38C9B4(v45, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    v63 = v86[4];
    v90 = 0;
    v64 = [v63 truncateDatabaseAndReturnError_];
    v38 = v90;
    v65 = v79;
    if (v64)
    {
      v92 = 0;
      v66 = objc_opt_self();
      v67 = v38;
      v68 = [v66 standardUserDefaults];
      _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
      v69 = sub_1BF4E7254();
      (*(v65 + 8))(v33, v77);
      v5 = sub_1BF4E88E4();
      [v68 setObject:v69 forKey:v5];

      v18 = v44;
LABEL_24:

      LOWORD(v5) = v35;
      goto LABEL_25;
    }
  }

  else
  {
    v35 = v5;
    v36 = v86[4];
    v90 = 0;
    v37 = [v36 truncateDatabaseAndReturnError_];
    v38 = v90;
    if (v37)
    {
      v92 = 0;
      v39 = v90;
      v5 = sub_1BF4E7B34();
      v40 = sub_1BF4E8E84();
      if (os_log_type_enabled(v5, v40))
      {
        v41 = v18;
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1BF389000, v5, v40, "Truncated database for major schema version migration.", v42, 2u);
        v43 = v42;
        v18 = v41;
        MEMORY[0x1BFB5A5D0](v43, -1, -1);
      }

      goto LABEL_24;
    }
  }

  v72 = v38;
  sub_1BF4E6FF4();

  swift_willThrow();
}

uint64_t sub_1BF3E6988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BF3E4F48(a1, a2, a3);
  if (!v4)
  {
    if (v5[2] && (v6 = v5[4], , , *(v6 + 16) == 1))
    {
      v3 = *(v6 + 48);
      v7 = *(v6 + 56);
      v8 = *(v6 + 64);

      sub_1BF3D8840(v3, v7, v8);

      if (!v8)
      {
        return v3;
      }

      sub_1BF3D88B8(v3, v7, v8);
    }

    else
    {
    }

    sub_1BF3E9074();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1BF3E6A80@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1BF4E88E4();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_1BF4E7334();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1BF38C9B4(v11, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    v8 = sub_1BF4E7334();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t SQLDatabase.deinit()
{

  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SQLDatabase.Storage(uint64_t a1)
{
  result = qword_1EDC9B620;
  if (!qword_1EDC9B620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3E6D2C(uint64_t a1, double a2)
{
  sub_1BF3E6D84(319, a2);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

void sub_1BF3E6D84(uint64_t a1, double a2)
{
  if (!qword_1EDC9D620)
  {
    sub_1BF4E7194();
    type metadata accessor for BSSqliteDatabaseConnectionDataProtectionClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC9D620);
    }
  }
}

uint64_t sub_1BF3E6DF8(void *a1, uint64_t a2)
{
  v3 = sub_1BF480D60(a1);
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1BF4321E4(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1BF4321E4((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = v3;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

char *sub_1BF3E6ED0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  result = *(v2 + 80);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 80) = result + 1;
    sub_1BF3E5608(result);
    os_unfair_lock_unlock(*(v3 + 16));
    v5 = objc_allocWithZone(MEMORY[0x1E698E778]);

    v6 = sub_1BF4E88E4();
    v7 = sub_1BF4E88E4();
    v10[4] = sub_1BF3E91CC;
    v10[5] = v2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BF3E924C;
    v10[3] = &block_descriptor_0;
    v8 = _Block_copy(v10);
    v9 = [v5 initWithIdentifier:v6 forReason:v7 invalidationBlock:v8];

    _Block_release(v8);

    return v9;
  }

  return result;
}

uint64_t sub_1BF3E7024(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDCA6898);

  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a5;
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_1BF38D65C(a1, a2, &v20);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1BF38D65C(a3, a4, &v20);
    _os_log_impl(&dword_1BF389000, v13, v14, "Committing transaction savepoint [%{public}s]: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    v6 = v5;
    MEMORY[0x1BFB5A5D0](v17, -1, -1);
    MEMORY[0x1BFB5A5D0](v15, -1, -1);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](18);
  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F93A0);
  MEMORY[0x1BFB58C90](a3, a4);
  sub_1BF3E4F48(v18, v20, v21);

  if (!v6)
  {
  }

  return result;
}

uint64_t sub_1BF3E7274(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF4E7B54();
  __swift_project_value_buffer(v10, qword_1EDCA6898);

  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E54();

  if (os_log_type_enabled(v11, v12))
  {
    v20 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_1BF38D65C(a1, a2, &v18);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1BF38D65C(a3, a4, &v18);
    _os_log_impl(&dword_1BF389000, v11, v12, "Rollback to transaction savepoint [%{public}s]: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
    v5 = v20;
    MEMORY[0x1BFB5A5D0](v13, -1, -1);
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  v15 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](22);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F93E0);
  MEMORY[0x1BFB58C90](a3, a4);
  sub_1BF3E4F48(v15, v18, v19);

  if (!v5)
  {

    v18 = 0;
    v19 = 0xE000000000000000;
    v17 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](18);
    MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F93A0);
    MEMORY[0x1BFB58C90](a3, a4);
    sub_1BF3E4F48(v17, v18, v19);
  }

  return result;
}

void sub_1BF3E755C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  sub_1BF3E4F48(v6, 0xD00000000000001BLL, 0x80000001BF4F93C0);
  if (v3)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v7 = sub_1BF4E7B54();
    __swift_project_value_buffer(v7, qword_1EDCA6898);

    v8 = sub_1BF4E7B34();
    v9 = sub_1BF4E8E54();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1BF38D65C(a2, a3, &v17);
      _os_log_impl(&dword_1BF389000, v8, v9, "Unable to execute wal_checkpoint(FULL, privacy: .public) for: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF4E7B54();
    __swift_project_value_buffer(v12, qword_1EDCA6898);

    v13 = sub_1BF4E7B34();
    v14 = sub_1BF4E8E54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1BF38D65C(a2, a3, &v17);
      _os_log_impl(&dword_1BF389000, v13, v14, "Successfully executed wal_checkpoint(FULL, privacy: .public) for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
    }
  }
}

void sub_1BF3E7834(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(a2 + 80);
  if (v4)
  {
    *(a2 + 80) = v4 - 1;
    sub_1BF3E5608(v4);
    v5 = *(v3 + 16);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF3E788C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 >= 1)
  {
    if (v6 < 0 || v6 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a3)
  {
    return 0;
  }

LABEL_9:
  v7 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1BF3E7920(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = a3[3];
  os_unfair_lock_lock(*(v12 + 16));
  v13 = a3[9];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_24;
  }

  a3[9] = v15;
  os_unfair_lock_assert_owner(*(v12 + 16));
  v16 = a3[8];
  v17 = a3[9];
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46 = a6;
  v47 = a4;
  os_unfair_lock_unlock(*(v12 + 16));
  sub_1BF4E92E4();

  strcpy(v50, "transaction_");
  BYTE5(v50[1]) = 0;
  HIWORD(v50[1]) = -5120;
  MEMORY[0x1BFB58C90](a1, a2);
  MEMORY[0x1BFB58C90](95, 0xE100000000000000);
  v50[3] = v18;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  v48 = a1;
  v20 = v12;
  v21 = a2;
  v12 = v50[0];
  a2 = v50[1];
  v49 = sub_1BF3E6ED0(v50[0], v50[1]);
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  v22 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](10);
  MEMORY[0x1BFB58C90](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFB58C90](v12, a2);
  sub_1BF3E4F48(v22, 0, 0xE000000000000000);

  if (!v6)
  {
    v43 = v20;
    v44 = 0;
    v45 = v21;

    if (qword_1EDC9D460 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  os_unfair_lock_lock(*(v20 + 16));
  v23 = a3[9];
  v14 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (!v14)
  {
    a3[9] = v24;
    os_unfair_lock_assert_owner(*(v20 + 16));
    os_unfair_lock_unlock(*(v20 + 16));
    swift_willThrow();
LABEL_15:
    [v49 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_7:
  v25 = sub_1BF4E7B54();
  __swift_project_value_buffer(v25, qword_1EDCA6898);

  v26 = sub_1BF4E7B34();
  v27 = sub_1BF4E8E54();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_1BF38D65C(v48, v45, v50);
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1BF38D65C(v12, a2, v50);
    _os_log_impl(&dword_1BF389000, v26, v27, "Beginning db savepoint [%{public}s]: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v29, -1, -1);
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
  }

  os_unfair_lock_lock(*(v43 + 16));
  v31 = a3[8];
  v30 = a3[9];
  v14 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_28;
  }

  a3[9] = v32;
  os_unfair_lock_assert_owner(*(v43 + 16));
  v33 = a3[8];
  v14 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v14)
  {
LABEL_28:
    __break(1u);
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  a3[8] = v34;
  os_unfair_lock_assert_owner(*(v43 + 16));
  os_unfair_lock_unlock(*(v43 + 16));
  v47(v46);
  if (v44)
  {
    sub_1BF3E7274(v48, v45, v12, a2);

    swift_willThrow();
    os_unfair_lock_lock(*(v43 + 16));
    v35 = a3[8];
    v14 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (!v14)
    {
      a3[8] = v36;
      os_unfair_lock_assert_owner(*(v43 + 16));
      os_unfair_lock_unlock(*(v43 + 16));
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  sub_1BF3E7024(v48, v45, v12, a2, a3);

  if (v31)
  {

    v37 = sub_1BF4E7B34();
    v38 = sub_1BF4E8E54();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      os_unfair_lock_lock(*(v43 + 16));
      v40 = a3[8];
      os_unfair_lock_unlock(*(v43 + 16));
      *(v39 + 4) = v40;

      _os_log_impl(&dword_1BF389000, v37, v38, "Outstanding transactions remaining: %{public}ld", v39, 0xCu);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BF3E755C(a3, v48, v45);
  }

  os_unfair_lock_lock(*(v43 + 16));
  v41 = a3[8];
  v14 = __OFSUB__(v41, 1);
  v42 = v41 - 1;
  if (!v14)
  {
    a3[8] = v42;
    os_unfair_lock_assert_owner(*(v43 + 16));
    os_unfair_lock_unlock(*(v43 + 16));
    [v49 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1BF3E7F48(uint64_t a1, uint64_t *a2, void *a3, unsigned int a4)
{
  if (*a2 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = *(a1 + 16);
  v7 = sub_1BF3E788C(0, 0, *a2, v6, 0, a1);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v6 < v11)
  {
    goto LABEL_34;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 != v6)
  {

    v30 = v6;
    while (v11 < v6)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_31;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_32;
      }

      v32 = v11 + 1;
      v33 = *(a1 + 16 * v11 + 32);
      v18 = swift_allocObject();
      *(v18 + 16) = v33;
      v19 = qword_1EDC9D460;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA6898);
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E84();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = a3;
        v24 = swift_slowAlloc();
        *v24 = 134349312;
        *(v24 + 4) = v10;
        *(v24 + 12) = 2050;
        *(v24 + 14) = v10 + 1;
        _os_log_impl(&dword_1BF389000, v21, v22, "Migrating from minor revision %{public}ld to %{public}ld", v24, 0x16u);
        v25 = v24;
        a3 = v23;
        MEMORY[0x1BFB5A5D0](v25, -1, -1);
      }

      sub_1BF4E92E4();

      strcpy(v35, "MigratingFrom_");
      HIBYTE(v35[1]) = -18;
      v4 = MEMORY[0x1E69E6530];
      v26 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v26);

      MEMORY[0x1BFB58C90](1601139807, 0xE400000000000000);
      v36 = v10 + 1;
      v27 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v27);

      sub_1BF3E7920(v35[0], v35[1], a3, sub_1BF3E919C, v18, a3);

      if (v34)
      {

        return 1;
      }

      ++v10;
      ++v11;
      v6 = v30;
      if (v32 == v30)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_12:

  v12 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](22);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9400);
  v4 = __PAIR64__(a4, a4) >> 16;
  LODWORD(v36) = v4;
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  sub_1BF3E4F48(v12, 0, 0xE000000000000000);

  if (!v34)
  {

    if (qword_1EDC9D460 == -1)
    {
LABEL_14:
      v14 = sub_1BF4E7B54();
      __swift_project_value_buffer(v14, qword_1EDCA6898);
      v15 = sub_1BF4E7B34();
      v16 = sub_1BF4E8E84();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67240192;
        *(v17 + 4) = v4;
        _os_log_impl(&dword_1BF389000, v15, v16, "Set revision to %{public}d", v17, 8u);
        MEMORY[0x1BFB5A5D0](v17, -1, -1);
      }

      return 1;
    }

LABEL_36:
    swift_once();
    goto LABEL_14;
  }

  return 1;
}

void sub_1BF3E8430(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t *a5, void *a6, unsigned int a7)
{
  v8 = v7;
  v16 = a3[3];
  os_unfair_lock_lock(*(v16 + 16));
  v17 = a3[9];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_26;
  }

  v59 = v7;
  a3[9] = v19;
  os_unfair_lock_assert_owner(*(v16 + 16));
  v20 = a3[8];
  v21 = a3[9];
  v8 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  os_unfair_lock_unlock(*(v16 + 16));
  sub_1BF4E92E4();

  strcpy(v60, "transaction_");
  BYTE5(v60[1]) = 0;
  HIWORD(v60[1]) = -5120;
  MEMORY[0x1BFB58C90](a1, a2);
  MEMORY[0x1BFB58C90](95, 0xE100000000000000);
  v60[3] = v8;
  v22 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v22);

  v23 = v16;
  v16 = v60[0];
  a4 = v60[1];
  v58 = a1;
  v24 = a2;
  v25 = sub_1BF3E6ED0(v60[0], v60[1]);
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  v8 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](10);
  MEMORY[0x1BFB58C90](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x1BFB58C90](v16, a4);
  sub_1BF3E4F48(v8, 0, 0xE000000000000000);
  a5 = v7;

  if (!v7)
  {
    v8 = a4;
    a4 = v23;
    v52 = v25;
    v53 = v16;
    v16 = v58;
    v59 = v24;

    if (qword_1EDC9D460 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  os_unfair_lock_lock(*(v23 + 16));
  v26 = a3[9];
  v18 = __OFSUB__(v26, 1);
  v27 = v26 - 1;
  if (!v18)
  {
    a3[9] = v27;
    os_unfair_lock_assert_owner(*(v23 + 16));
    os_unfair_lock_unlock(*(v23 + 16));
    swift_willThrow();
LABEL_16:
    [v25 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_7:
  v28 = sub_1BF4E7B54();
  __swift_project_value_buffer(v28, qword_1EDCA6898);

  v29 = v8;

  v30 = sub_1BF4E7B34();
  v31 = sub_1BF4E8E54();

  v32 = v16;
  v33 = a4;
  if (os_log_type_enabled(v30, v31))
  {
    v51 = a5;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60[0] = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1BF38D65C(v32, v59, v60);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1BF38D65C(v53, v29, v60);
    _os_log_impl(&dword_1BF389000, v30, v31, "Beginning db savepoint [%{public}s]: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
    v36 = v34;
    a5 = v51;
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
  }

  os_unfair_lock_lock(*(v33 + 16));
  v37 = a3[9];
  v18 = __OFSUB__(v37, 1);
  v38 = v37 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_30;
  }

  v39 = a3[8];
  a3[9] = v38;
  os_unfair_lock_assert_owner(*(v33 + 16));
  v40 = a3[8];
  v18 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v18)
  {
LABEL_30:
    __break(1u);
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  a3[8] = v41;
  os_unfair_lock_assert_owner(*(v33 + 16));
  os_unfair_lock_unlock(*(v33 + 16));
  v42 = sub_1BF3E7F48(v54, v55, v56, v57);
  if (a5)
  {
    sub_1BF3E7274(v32, v59, v53, v29);
    v25 = v52;

    swift_willThrow();
    os_unfair_lock_lock(*(v33 + 16));
    v43 = a3[8];
    v18 = __OFSUB__(v43, 1);
    v44 = v43 - 1;
    if (!v18)
    {
      a3[8] = v44;
      os_unfair_lock_assert_owner(*(v33 + 16));
      os_unfair_lock_unlock(*(v33 + 16));
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  if (v42)
  {
    sub_1BF3E7024(v32, v59, v53, v29, a3);
  }

  else
  {
    sub_1BF3E7274(v32, v59, v53, v29);
  }

  if (v39)
  {

    v45 = sub_1BF4E7B34();
    v46 = sub_1BF4E8E54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349056;
      os_unfair_lock_lock(*(v33 + 16));
      v48 = a3[8];
      os_unfair_lock_unlock(*(v33 + 16));
      *(v47 + 4) = v48;

      _os_log_impl(&dword_1BF389000, v45, v46, "Outstanding transactions remaining: %{public}ld", v47, 0xCu);
      MEMORY[0x1BFB5A5D0](v47, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BF3E755C(a3, v32, v59);
  }

  os_unfair_lock_lock(*(v33 + 16));
  v49 = a3[8];
  v18 = __OFSUB__(v49, 1);
  v50 = v49 - 1;
  if (!v18)
  {
    a3[8] = v50;
    os_unfair_lock_assert_owner(*(v33 + 16));
    os_unfair_lock_unlock(*(v33 + 16));
    [v52 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_32:
  __break(1u);
  __break(1u);
}

id sub_1BF3E8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v48 = a2;
  v51 = a4;
  v52 = a5;
  v54 = sub_1BF4E7194();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for SQLDatabase.Storage(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  sub_1BF3E8FB4(a1, &v45 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AC8, &qword_1BF4EC230);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v19, 1, v20);
  result = sub_1BF3E9018(v19);
  v50 = a3;
  if (v22 != 1 || a3 == 0)
  {
    v25 = *(v53 + 7);
    v25(v13, 1, 1, v54);
    sub_1BF3E8FB4(a1, v16);
    v26 = a1;
    if (v21(v16, 1, v20) == 1)
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E698E788]) initWithInMemoryDatabase];
    }

    else
    {
      v28 = *(v53 + 4);
      v45 = *&v16[*(v20 + 48)];
      v46 = v28;
      v29 = v47;
      v30 = v54;
      v28(v47, v16, v54);
      v31 = objc_allocWithZone(MEMORY[0x1E698E788]);
      v53 = v25;
      v32 = v31;
      v33 = v26;
      v34 = sub_1BF4E7094();
      v27 = [v32 initWithFileURL:v34 dataProtectionClass:v45];

      v26 = v33;
      sub_1BF38C9B4(v13, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      v46(v13, v29, v30);
      v53(v13, 0, 1, v30);
    }

    v35 = v13;
    v36 = v49;
    v37 = v27;
    v39 = v51;
    v38 = v52;
    if (v37)
    {
      v40 = v37;
      sub_1BF3E90C8(v35, v36);
      if (v39)
      {
        v41 = swift_allocObject();
        *(v41 + 16) = v39;
        *(v41 + 24) = v38;
        v42 = sub_1BF3E9170;
      }

      else
      {
        v42 = nullsub_1;
        v41 = 0;
      }

      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v41;
      type metadata accessor for SQLDatabase();
      swift_allocObject();
      sub_1BF391990(v39, v38);
      v27 = sub_1BF3E57B4(v40, v36, v48, v50, sub_1BF3E9138, v44);

      sub_1BF3B0E64(v39, v38);
      sub_1BF3E9018(v26);
      sub_1BF38C9B4(v35, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    else
    {

      sub_1BF3E9074();
      swift_allocError();
      *v43 = 2;
      swift_willThrow();
      sub_1BF3B0E64(v39, v38);
      sub_1BF3E9018(v26);
      sub_1BF38C9B4(v35, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    }

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3E8FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3E9018(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF3E9074()
{
  result = qword_1EBDD8AE0;
  if (!qword_1EBDD8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8AE0);
  }

  return result;
}

uint64_t sub_1BF3E90C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3E9138(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1BF3E919C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1BF3E91F0()
{
  result = qword_1EBDD8AF0;
  if (!qword_1EBDD8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8AF0);
  }

  return result;
}

uint64_t RemoteActivityWindowBudgeting.nextRefreshDate.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 168))(a1, a2, v6);
  (*(a2 + 152))(a1, a2);
  sub_1BF4E7284();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF3E937C(uint64_t a1)
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7284();
  v8 = sub_1BF4E7264();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8 & 1;
}

uint64_t RemoteActivityWindowBudgeting.windowExpired.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  (*(a2 + 168))(a1, a2);
  (*(a2 + 152))(a1, a2);
  sub_1BF4E7284();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = sub_1BF4E7264();
  v14(v10, v4);
  v14(v13, v4);
  return v15 & 1;
}

uint64_t sub_1BF3E9640(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  result = *(v1 + *(a1 + 44));
  if (v2 >= 1)
  {
    v4 = __OFSUB__(result, v2);
    result -= v2;
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RemoteActivityWindowBudgeting.consumedBudget.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 224);
  v5 = v4();
  result = (*(a2 + 208))(a1, a2);
  if (v5 >= 1)
  {
    v7 = result;
    v8 = (v4)(a1, a2);
    v9 = __OFSUB__(v7, v8);
    result = v7 - v8;
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF3E973C(uint64_t result)
{
  v2 = *(result + 48);
  v3 = *(v1 + v2);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
  }

  return result;
}

Swift::Void __swiftcall RemoteActivityWindowBudgeting.decrement()()
{
  v1 = (*(v0 + 240))(v3);
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    --*v2;
    v1(v3, 0);
  }
}

uint64_t sub_1BF3E97CC(int *a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v10 = a1[8];
  sub_1BF4E7284();
  v11 = sub_1BF4E7264();
  v12 = *(v4 + 8);
  v12(v6, v3);
  result = (v12)(v9, v3);
  if (v11)
  {
    *(v1 + a1[12]) = *(v1 + a1[11]);
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    return (*(v4 + 40))(v1 + v10, v9, v3);
  }

  return result;
}

Swift::Void __swiftcall RemoteActivityWindowBudgeting.refreshIfNecessary()()
{
  v2 = v1;
  v3 = v0;
  if ((*(v1 + 200))())
  {
    v4 = *(v2 + 280);

    v4(v3, v2);
  }
}

uint64_t sub_1BF3E99B4(int *a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + a1[12]) = *(v1 + a1[11]);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  return (*(v4 + 40))(v1 + a1[8], v6, v3);
}

Swift::Void __swiftcall RemoteActivityWindowBudgeting.refresh()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1BF4E7334();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v2 + 208))(v3, v2, v5);
  (*(v2 + 232))(v8, v3, v2);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  (*(v2 + 176))(v7, v3, v2);
}

uint64_t RemoteActivityWindowBudgeting.description.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1BF4E92E4();
  v11 = a2[15](a1, a2);
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x696E69616D657220, 0xEB0000000020676ELL);
  v16[1] = a2[28](a1, a2);
  v12 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x20747261747320, 0xE700000000000000);
  a2[18](a1, a2);
  sub_1BF3E9E48();
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  v14 = *(v5 + 8);
  v14(v10, v4);
  MEMORY[0x1BFB58C90](0x6873657266657220, 0xEC000000206E6920);
  a2[24](a1, a2);
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E7234();
  v14(v7, v4);
  v14(v10, v4);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](115, 0xE100000000000000);
  return v17;
}

unint64_t sub_1BF3E9E48()
{
  result = qword_1EDC9D5E8;
  if (!qword_1EDC9D5E8)
  {
    sub_1BF4E7334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D5E8);
  }

  return result;
}

uint64_t RemoteActivityWindowBudgeting.budgetExpired.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  (*(a2 + 144))(a1, a2);
  (*(a2 + 160))(a1, a2);
  sub_1BF4E7284();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = sub_1BF4E7264();
  v14(v10, v4);
  v14(v13, v4);
  return v15 & 1;
}

uint64_t sub_1BF3EA200(double a1)
{
  v1 = sub_1BF4E7174();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 60;
}

uint64_t DataProtectedArchiveFilePromise.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

char *DataProtectedArchiveFilePromise.deinit()
{
  v1 = v0;
  v2 = sub_1BF4E8D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &unk_1EDC97000;
  if (v1[OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup] == 1)
  {
    v41 = v7;
    v39 = v2;
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v40 = 7104878;
    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EDCA6A48);

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E64();

    v14 = os_log_type_enabled(v12, v13);
    v38 = v3;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_1BF38D65C(*(v1 + 2), *(v1 + 3), &v46);
      *(v15 + 12) = 2082;
      v17 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      swift_beginAccess();
      if ((*(v41 + 48))(&v1[v17], 1, v6))
      {
        v18 = 0xE300000000000000;
        v19 = 7104878;
      }

      else
      {
        sub_1BF3EDB58(&v1[v17], v9);
        v44 = 60;
        v45 = 0xE100000000000000;
        v20 = sub_1BF4E7174();
        MEMORY[0x1BFB58C90](v20);

        MEMORY[0x1BFB58C90](62, 0xE100000000000000);
        v19 = v44;
        v18 = v45;
        sub_1BF3CA2B8(v9);
      }

      v21 = sub_1BF38D65C(v19, v18, &v46);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_1BF389000, v12, v13, "ArchiveFilePromise abandoned [%{public}s]: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
    }

    v22 = [objc_opt_self() processInfo];
    v23 = [v22 environment];

    v24 = sub_1BF4E8764();
    v10 = &unk_1EDC97000;
    if (*(v24 + 16))
    {
      sub_1BF3CD5E8(0xD000000000000011, 0x80000001BF4F9480, sub_1BF3CD66C, v25);
      v27 = v26;

      if (v27)
      {
LABEL_16:
        sub_1BF3EB8FC(0, 0x74696E696564, 0xE600000000000000);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1BF4E92E4();

    v28 = 0xE300000000000000;
    v46 = 4023401;
    v47 = 0xE300000000000000;
    v29 = *(v1 + 2);
    v30 = *(v1 + 3);

    MEMORY[0x1BFB58C90](v29, v30);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F94A0);
    v31 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
    swift_beginAccess();
    if (!(*(v41 + 48))(&v1[v31], 1, v6))
    {
      sub_1BF3EDB58(&v1[v31], v9);
      v42 = 60;
      v43 = 0xE100000000000000;
      v32 = sub_1BF4E7174();
      MEMORY[0x1BFB58C90](v32);

      MEMORY[0x1BFB58C90](62, 0xE100000000000000);
      v28 = v43;
      v40 = v42;
      sub_1BF3CA2B8(v9);
    }

    type metadata accessor for BugCapture();
    MEMORY[0x1BFB58C90](v40, v28);

    v33 = v46;
    v34 = v47;
    _s9ChronoKit10BugCaptureC06reportC04type7subType4name5value8priority10completionySS_S3SScPyycSgtFZfA3__0();
    static BugCapture.reportBug(type:subType:name:value:priority:completion:)(0xD000000000000012, 0x80000001BF4F94C0, 0x656E6F646E616241, 0xE900000000000064, 0xD00000000000001DLL, 0x80000001BF4F94E0, v33, v34, v5, 0, 0);

    (*(v38 + 8))(v5, v39);
    goto LABEL_16;
  }

LABEL_17:

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 4);
  v35 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination;
  v36 = sub_1BF4E7194();
  (*(*(v36 - 8) + 8))(&v1[v35], v36);
  sub_1BF38C9B4(&v1[OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel], &qword_1EBDD8AF8, &qword_1BF4EC370);
  sub_1BF38C9B4(&v1[v10[33]], &qword_1EBDD8B00, &qword_1BF4EC378);
  return v1;
}

uint64_t sub_1BF3EA924@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1BF4E6D54();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF4E6D64();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
  swift_beginAccess();
  sub_1BF38C94C(v2 + v15, v10, &qword_1EBDD8B00, &qword_1BF4EC378);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BF38C9B4(v10, &qword_1EBDD8B00, &qword_1BF4EC378);
    sub_1BF4E6D14();
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF3EE29C(&qword_1EDC9F110, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1BF4E6FD4();
    sub_1BF4E6CD4();
    (*(v46 + 8))(v7, v5);
    return swift_willThrow();
  }

  else
  {
    sub_1BF3EDD00(v10, v14);
    v17 = v2[7];
    v18 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v17);
    v19 = v47;
    v20 = (*(v18 + 32))(*&v14[*(v11 + 24)], v17, v18);
    v21 = v2;
    if (v19)
    {
    }

    v50 = 0;
    v22 = MEMORY[0x1EEE9AC00](v20);
    *(&v43 - 4) = &v50;
    *(&v43 - 3) = v2;
    *(&v43 - 2) = v14;
    (*(*v2 + 192))(sub_1BF3EDD64, v22);
    v23 = v2[7];
    v24 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v23);
    v25 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination;
    (*(v24 + 40))(v2 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v23, v24);
    v26 = v2[7];
    v27 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v26);
    (*(v27 + 88))(&v14[*(v11 + 20)], v2 + v25, v26, v27);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1BF4E92E4();

    v48 = 0xD000000000000019;
    v49 = 0x80000001BF4F9520;
    v28 = sub_1BF4E7074();
    MEMORY[0x1BFB58C90](v28);

    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    sub_1BF3EB8FC(0, v48, v49);

    v29 = [objc_opt_self() defaultManager];
    sub_1BF4E7164();
    v30 = sub_1BF4E88E4();

    v31 = [v29 fileExistsAtPath_];

    if ((v31 & 1) == 0)
    {
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v32 = sub_1BF4E7B54();
      __swift_project_value_buffer(v32, qword_1EDCA6A48);

      v33 = sub_1BF4E7B34();
      v34 = sub_1BF4E8E74();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v47 = v14;
        v36 = v35;
        v37 = swift_slowAlloc();
        v48 = v37;
        *v36 = 136446210;
        v38 = sub_1BF4E7164();
        v40 = sub_1BF38D65C(v38, v39, &v48);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1BF389000, v33, v34, "Destination file DOES NOT EXIST at %{public}s.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1BFB5A5D0](v37, -1, -1);
        v41 = v36;
        v14 = v47;
        MEMORY[0x1BFB5A5D0](v41, -1, -1);
      }
    }

    v42 = sub_1BF4E7194();
    (*(*(v42 - 8) + 16))(v44, v21 + v25, v42);
    return sub_1BF3CA2B8(v14);
  }
}

void sub_1BF3EB12C(_BYTE *a1, void *a2, uint64_t a3, double a4)
{
  v63 = a3;
  v64 = a2;
  v61 = 0;
  v56 = sub_1BF4E7194();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8424();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B18, &qword_1BF4EF790);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = (&v54 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  *a1 = 1;
  v24 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel;
  (*(v7 + 104))(&v54 - v22, *MEMORY[0x1E6985988], v6, v21);
  (*(v7 + 56))(v23, 0, 1, v6);
  v25 = *(v10 + 56);
  v60 = v24;
  sub_1BF38C94C(v64 + v24, v12, &qword_1EBDD8AF8, &qword_1BF4EC370);
  sub_1BF38C94C(v23, &v12[v25], &qword_1EBDD8AF8, &qword_1BF4EC370);
  v62 = v7;
  v26 = *(v7 + 48);
  if (v26(v12, 1, v6) == 1)
  {
    sub_1BF38C9B4(v23, &qword_1EBDD8AF8, &qword_1BF4EC370);
    if (v26(&v12[v25], 1, v6) == 1)
    {
      sub_1BF38C9B4(v12, &qword_1EBDD8AF8, &qword_1BF4EC370);
      goto LABEL_8;
    }

LABEL_6:
    sub_1BF38C9B4(v12, &qword_1EBDD8B18, &qword_1BF4EF790);
    v27 = v61;
    goto LABEL_15;
  }

  sub_1BF38C94C(v12, v19, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if (v26(&v12[v25], 1, v6) == 1)
  {
    sub_1BF38C9B4(v23, &qword_1EBDD8AF8, &qword_1BF4EC370);
    (*(v62 + 8))(v19, v6);
    goto LABEL_6;
  }

  v28 = v62;
  v29 = v57;
  (*(v62 + 32))(v57, &v12[v25], v6);
  sub_1BF3EE29C(&qword_1EDC9FDE0, MEMORY[0x1E69859A8], MEMORY[0x1E69859C0]);
  v30 = sub_1BF4E88C4();
  v31 = *(v28 + 8);
  v31(v29, v6);
  sub_1BF38C9B4(v23, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v31(v19, v6);
  sub_1BF38C9B4(v12, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if ((v30 & 1) == 0)
  {
    v27 = v61;
    goto LABEL_15;
  }

LABEL_8:
  v32 = v64;
  sub_1BF38E49C((v64 + 4), v67);
  v33 = v68;
  v34 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v35 = v32 + v60;
  v36 = v59;
  sub_1BF38C94C(v35, v59, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v57 = v26;
  if (v26(v36, 1, v6) == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v37 = sub_1BF4E8404();
  v38 = *(v62 + 8);
  v62 += 8;
  v59 = v38;
  (v38)(v36, v6);
  v39 = *(type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0) + 20);
  v27 = v61;
  (*(v34 + 64))(v37, v63 + v39, v33, v34);
  v40 = v58;
  if (!v27)
  {

    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  v41 = v64;
  sub_1BF38E49C((v64 + 4), v67);
  v42 = v68;
  v43 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v44 = v63 + v39;
  v46 = v55;
  v45 = v56;
  (*(v40 + 16))(v55, v44, v56);
  v47 = v41 + v60;
  v48 = v54;
  sub_1BF38C94C(v47, v54, &qword_1EBDD8AF8, &qword_1BF4EC370);
  if ((v57)(v48, 1, v6) == 1)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v49 = v48;
  v50 = sub_1BF4E8414();
  (v59)(v49, v6);
  v65 = v50;
  v66 = 0;
  v27 = 0;
  (*(v43 + 48))(v46, 0xD00000000000002DLL, 0x80000001BF4F9630, &v65, MEMORY[0x1E69E6530], MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], v42, v43);
  (*(v40 + 8))(v46, v45);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
LABEL_15:
  v51 = v64[7];
  v52 = v64[8];
  __swift_project_boxed_opaque_existential_1(v64 + 4, v51);
  v53 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(v52 + 32))(*(v63 + *(v53 + 28)), v51, v52);
  if (v27)
  {
  }
}

uint64_t sub_1BF3EB8FC(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  v63 = a1;
  v5 = sub_1BF4E7B24();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B00, &qword_1BF4EC378);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  *(v4 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
  v22 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
  swift_beginAccess();
  v67 = v22;
  v23 = v4 + v22;
  v24 = v13;
  sub_1BF38C94C(v23, v12, &qword_1EBDD8B00, &qword_1BF4EC378);
  v68 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BF38C9B4(v12, &qword_1EBDD8B00, &qword_1BF4EC378);
  }

  sub_1BF3EDD00(v12, v21);
  if (qword_1EDC9EFD8 != -1)
  {
    swift_once();
  }

  v26 = sub_1BF4E7B54();
  __swift_project_value_buffer(v26, qword_1EDCA6A48);
  sub_1BF3EDB58(v21, v18);

  v27 = v62;

  v28 = sub_1BF4E7B34();
  v29 = sub_1BF4E8E84();

  v30 = os_log_type_enabled(v28, v29);
  v59 = v9;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v69 = v58;
    *v31 = 136446722;
    *(v31 + 4) = sub_1BF38D65C(v4[2], v4[3], &v69);
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1BF38D65C(v61, v27, &v69);
    *(v31 + 22) = 2082;
    v32 = v60;
    sub_1BF3EDB58(v18, v60);
    v70 = 60;
    v71 = 0xE100000000000000;
    v33 = sub_1BF4E7174();
    MEMORY[0x1BFB58C90](v33);

    MEMORY[0x1BFB58C90](62, 0xE100000000000000);
    v34 = v70;
    v35 = v71;
    sub_1BF3CA2B8(v32);
    sub_1BF3CA2B8(v18);
    v36 = sub_1BF38D65C(v34, v35, &v69);

    *(v31 + 24) = v36;
    _os_log_impl(&dword_1BF389000, v28, v29, "%{public}s destroying promise for '%{public}s' - %{public}s", v31, 0x20u);
    v37 = v58;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v37, -1, -1);
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
  }

  else
  {

    sub_1BF3CA2B8(v18);
  }

  v38 = sub_1BF4E8FD4();
  if (qword_1EDC9D678 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDCA69E8;
  v41 = v64;
  v40 = v65;
  v42 = v66;
  (*(v65 + 16))(v64, &v21[v24[8]], v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B28, &unk_1BF4EC500);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BF4EBEF0;
  v44 = sub_1BF3EE2E4();
  v45 = (v63 & 1) == 0;
  v46 = 20302;
  if (v63)
  {
    v46 = 5457241;
  }

  v47 = 0xE200000000000000;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = v44;
  if (!v45)
  {
    v47 = 0xE300000000000000;
  }

  *(v43 + 32) = v46;
  *(v43 + 40) = v47;
  sub_1BF4E7AE4(v38, &dword_1BF389000, v39, "ArchiveFilePromise Opened", 25, 2, v41, "ArchiveFilePromise Closed <becauseError>=%@", 43, 2, v43);

  (*(v40 + 8))(v41, v42);
  v48 = v4[7];
  v49 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v48);
  (*(v49 + 32))(*&v21[v24[6]], v48, v49);
  v50 = v4[7];
  v51 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v50);
  (*(v51 + 32))(*&v21[v24[7]], v50, v51);
  v52 = v4[7];
  v53 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v52);
  (*(v53 + 40))(&v21[v24[5]], v52, v53);
  v54 = v4[7];
  v55 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v54);
  (*(v55 + 40))(v21, v54, v55);
  v56 = v59;
  (*(v68 + 56))(v59, 1, 1, v24);
  v57 = v67;
  swift_beginAccess();
  sub_1BF3CA110(v56, v4 + v57);
  swift_endAccess();
  return sub_1BF3CA2B8(v21);
}

double sub_1BF3EC048@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1BF3EC058@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v17 = sub_1BF4E6E34();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1BF4E8484();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4E85B4();
  sub_1BF4E8474();
  (*(v10 + 8))(v12, v9);
  v13 = sub_1BF4E7334();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v8, 1, v13) != 1)
  {
    return (*(v14 + 32))(v18, v8, v13);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4E85F4();
  sub_1BF4E6E24();
  (*(v3 + 8))(v5, v17);
  result = (v15)(v8, 1, v13);
  if (result != 1)
  {
    return sub_1BF38C9B4(v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  return result;
}

uint64_t sub_1BF3EC328()
{
  DataProtectedArchiveFilePromise.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1BF3EC380(char a1, double a2)
{
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](a1 & 1);
  v3 = sub_1BF4E9844();

  return sub_1BF3ECBA8(a1 & 1, v3);
}

unint64_t sub_1BF3EC3EC(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7 = v2;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)(v5);
  v3 = sub_1BF4E9844();

  return sub_1BF3ECC18(a1, v3);
}

unint64_t sub_1BF3EC470(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v4)
  {
    v3 = qword_1BF4EC510[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v3);
  sub_1BF4E9824();
  v5 = sub_1BF4E9844();

  return sub_1BF3ECDFC(a1, v5);
}

unint64_t sub_1BF3EC540(void *a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  type metadata accessor for ActivityKey(0);
  sub_1BF4E7454();
  sub_1BF3EE29C(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
  sub_1BF4E8884();
  sub_1BF4E89F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  sub_1BF4E8674();
  sub_1BF3EE29C(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
  sub_1BF4E8884();
  type metadata accessor for ActivityVariantKey(0);
  sub_1BF4E8364();
  sub_1BF3EE29C(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
  sub_1BF4E8884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  v3 = sub_1BF4E9844();

  return sub_1BF3ED010(a1, v3);
}

unint64_t sub_1BF3EC78C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  sub_1BF38C8B4(&qword_1EDC9D5A8, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C0]);
  v2 = sub_1BF4E8874();
  return sub_1BF38CA14(a1, v2, &qword_1EBDD8A38, &unk_1BF4EC4D0, &qword_1EDC9F050, MEMORY[0x1E69940C8]);
}

unint64_t sub_1BF3EC854(uint64_t a1)
{
  v2 = sub_1BF4E9254();

  return sub_1BF3ED3BC(a1, v2);
}

unint64_t sub_1BF3EC898(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  type metadata accessor for CFString(0);
  sub_1BF3EE29C(&qword_1EDC9D738, type metadata accessor for CFString, &unk_1BF4EB4F0);
  sub_1BF4E7874();
  v3 = sub_1BF4E9844();

  return sub_1BF3ED484(a1, v3);
}

unint64_t sub_1BF3EC94C(uint64_t a1)
{
  sub_1BF4E7394();
  sub_1BF3EE29C(&qword_1EBDD8948, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1BF4E8874();

  return sub_1BF3ED590(a1, v2);
}

unint64_t sub_1BF3EC9E4(uint64_t a1)
{
  sub_1BF4E79A4();
  sub_1BF3EE29C(&qword_1EBDD8B08, MEMORY[0x1E69C7338], MEMORY[0x1E69C7340]);
  v2 = sub_1BF4E8874();
  return sub_1BF3ED750(a1, v2);
}

unint64_t sub_1BF3ECA90(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  v3 = sub_1BF4E9844();

  return sub_1BF3ED84C(a1, v3);
}

unint64_t sub_1BF3ECBA8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BF3ECC18(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    do
    {
      v7 = (*(v2 + 48) + (v4 << 6));
      v9 = v7[1];
      v8 = v7[2];
      v10 = *v7;
      *&v18[9] = *(v7 + 41);
      *&v17[16] = v9;
      *v18 = v8;
      *v17 = v10;
      sub_1BF3EE1EC(v17, &v16);
      if ((sub_1BF4E90A4() & 1) == 0 || *&v17[8] != *(a1 + 1) && (sub_1BF4E9734() & 1) == 0)
      {
LABEL_3:
        sub_1BF3EE248(v17);
        goto LABEL_4;
      }

      v11 = a1[4];
      if (*v18)
      {
        if (!v11)
        {
          goto LABEL_3;
        }

        if (*&v17[24] == a1[3] && *v18 == v11)
        {
          sub_1BF3EE248(v17);
        }

        else
        {
          v12 = sub_1BF4E9734();
          sub_1BF3EE248(v17);
          if ((v12 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1BF3EE248(v17);
        if (v11)
        {
          goto LABEL_4;
        }
      }

      if (v18[8] != (a1[5] & 1))
      {
        goto LABEL_4;
      }

      v13 = *&v18[16];
      v14 = a1[6];
      if (v18[24])
      {
        if (!*(a1 + 56))
        {
          goto LABEL_4;
        }

        v13 = qword_1BF4EC510[*&v18[16]];
      }

      else
      {
        if ((a1[7] & 1) == 0)
        {
          goto LABEL_23;
        }

        v13 = 3;
      }

      v14 = qword_1BF4EC510[v14];
LABEL_23:
      if (v13 == v14)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ECDFC(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v19 = ~v3;
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    do
    {
      v7 = *(v5 + 48) + 40 * v4;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = *(v7 + 32);
      v12 = *(v7 + 33);
      v13 = *v7;

      if ((sub_1BF4E90A4() & 1) == 0 || (v8 == a1[1] ? (v14 = v10 == a1[2]) : (v14 = 0), !v14 && (sub_1BF4E9734() & 1) == 0))
      {

        goto LABEL_4;
      }

      v15 = v5;
      v16 = a1[3];
      if (v11)
      {
        v17 = qword_1BF4EC510[v9];
        if (!*(a1 + 32))
        {
          v16 = 3;
          goto LABEL_31;
        }
      }

      else
      {
        if ((a1[4] & 1) == 0)
        {

          v14 = v9 == v16;
          v5 = v15;
          if (!v14)
          {
            goto LABEL_4;
          }

          goto LABEL_33;
        }

        v17 = 3;
      }

      if (v16 <= 3)
      {
        if (v16 >= 3)
        {
          v16 = 4;
        }
      }

      else if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v16 = 5;
        }

        else
        {
          v16 = 6;
        }
      }

      else if (v16 == 6)
      {
        v16 = 7;
      }

      else if (v16 == 7)
      {
        v16 = 8;
      }

      else
      {
        v16 = 9;
      }

LABEL_31:

      v14 = v17 == v16;
      v5 = v15;
      if (!v14)
      {
        goto LABEL_4;
      }

LABEL_33:
      if (v12 == (*(a1 + 33) & 1))
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v19;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED010(void *a1, uint64_t a2)
{
  v3 = v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = v24 - v7;
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  v32 = v3 + 64;
  if (((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return v10;
  }

  v28 = ~v9;
  v11 = sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v12 = &qword_1EBDD87A8;
  v29 = *a1;
  v30 = *(v6 + 72);
  v31 = v11;
  v13 = &unk_1BF4EB2C0;
  v25 = a1;
  v26 = v3;
  while (1)
  {
    v15 = v12;
    v16 = v13;
    sub_1BF38C94C(*(v3 + 48) + v30 * v10, v8, v12, v13);
    if ((sub_1BF4E90A4() & 1) == 0)
    {
      goto LABEL_4;
    }

    v17 = type metadata accessor for ActivityKey(0);
    if ((sub_1BF4E7434() & 1) == 0)
    {
      goto LABEL_4;
    }

    v18 = *(v17 + 24);
    v19 = *&v8[v18];
    v20 = *&v8[v18 + 8];
    v21 = (a1 + v18);
    v22 = v19 == *v21 && v20 == v21[1];
    if (!v22 && (sub_1BF4E9734() & 1) == 0)
    {
      goto LABEL_4;
    }

    if ((MEMORY[0x1BFB588A0](&v8[*(v27 + 68)], a1 + *(v27 + 68)) & 1) == 0)
    {
      goto LABEL_4;
    }

    v24[1] = type metadata accessor for ActivityVariantKey(0);
    sub_1BF4E8364();
    sub_1BF3EE29C(&qword_1EDC9D790, MEMORY[0x1E69858D8], MEMORY[0x1E69858F8]);
    sub_1BF4E8B54();
    a1 = v25;
    v3 = v26;
    sub_1BF4E8B54();
    if (v35 != v33)
    {
      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9F008, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994150]);
    sub_1BF4E8B54();
    sub_1BF4E8B54();
    if (v35 == v33 && v36 == v34)
    {
      break;
    }

    v14 = sub_1BF4E9734();

    a1 = v25;
    v3 = v26;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_4:
    v12 = v15;
    v13 = v16;
    sub_1BF38C9B4(v8, v15, v16);
    v10 = (v10 + 1) & v28;
    if (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return v10;
    }
  }

LABEL_17:
  sub_1BF38C9B4(v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  return v10;
}

unint64_t sub_1BF3ED3BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BF3EE13C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB594C0](v9, a1);
      sub_1BF3EE198(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED484(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1BF3EE29C(&qword_1EDC9D738, type metadata accessor for CFString, &unk_1BF4EB4F0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BF4E7864();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED590(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1BF4E7394();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1BF3EE29C(&qword_1EDC9D5D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v16 = sub_1BF4E88C4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1BF3ED750(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BF4E79A4();
    sub_1BF3EE29C(&qword_1EBDD8B10, MEMORY[0x1E69C7338], MEMORY[0x1E69C7348]);
    do
    {
      if (sub_1BF4E88C4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BF3ED84C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = v2;
    v6 = a1;
    v17 = ~v3;
    v7 = (a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
    do
    {
      v8 = *(*(v5 + 48) + 8 * v4);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
      sub_1BF4E8B54();
      v9 = v6;
      sub_1BF4E8B54();
      if (v21 == v19 && v22 == v20)
      {
      }

      else
      {
        v11 = sub_1BF4E9734();

        if ((v11 & 1) == 0)
        {

          v6 = v9;
          goto LABEL_4;
        }
      }

      v12 = *(v8 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
      v13 = v7[1];
      if (v12)
      {
        v6 = v9;
        if (v13)
        {
          if (*(v8 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind) == *v7 && v12 == v13)
          {

            return v4;
          }

          v15 = sub_1BF4E9734();

          if (v15)
          {
            return v4;
          }
        }

        else
        {
        }
      }

      else
      {

        v6 = v9;
        if (!v13)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v17;
    }

    while (((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1BF3EDA84(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1BF3EDAE4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1BF3EDB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF3EDBBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
    v3 = sub_1BF4E94C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BF38C94C(v4, &v14, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      v5 = v14;
      v6 = v15;
      result = sub_1BF3CD5E8(v14, v15, sub_1BF3CD66C, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      result = sub_1BF38EB2C(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BF3EDD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BF3EDDD4(uint64_t a1, double a2)
{
  sub_1BF4E7194();
  if (v2 <= 0x3F)
  {
    sub_1BF3EDFFC(319, &qword_1EDC96458, MEMORY[0x1E69859A8]);
    if (v3 <= 0x3F)
    {
      sub_1BF3EDFFC(319, &qword_1EDC97168, type metadata accessor for DataProtectedArchiveFilePromise.Intermediates);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BF3EDFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF4E90F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF3EE090(uint64_t a1, double a2)
{
  result = sub_1BF4E7194();
  if (v3 <= 0x3F)
  {
    result = sub_1BF3901C0(319, &qword_1EDC963A8, 0x1E696AC00);
    if (v4 <= 0x3F)
    {
      result = sub_1BF4E7B24();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF3EE29C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BF3EE2E4()
{
  result = qword_1EDC96438;
  if (!qword_1EDC96438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC96438);
  }

  return result;
}

uint64_t sub_1BF3EE344()
{
  v0 = type metadata accessor for ReloadConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_1EDC9A050);
  v1 = __swift_project_value_buffer(v0, qword_1EDC9A050);
  v2 = sub_1BF4E7334();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = v0[9];
  *(v1 + v0[5]) = 1;
  *(v1 + v0[7]) = 1;
  *(v1 + v0[6]) = 0xA000000000000030;
  *(v1 + v0[8]) = 1;
  *(v1 + v4) = 0;
  return result;
}

uint64_t ReloadConfiguration.init(type:cost:reason:retryAttempts:allowCostOverride:fromUserInteraction:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = *a3;
  v14 = type metadata accessor for ReloadConfiguration(0);
  v15 = v14[9];
  result = sub_1BF38DAD0(a1, a7);
  *(a7 + v14[5]) = v12;
  *(a7 + v14[7]) = a4;
  *(a7 + v14[6]) = v13;
  *(a7 + v14[8]) = a5;
  *(a7 + v15) = a6;
  return result;
}

uint64_t static ReloadConfiguration.initial.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC9A048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ReloadConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDC9A050);
  return sub_1BF39B31C(v3, a1, type metadata accessor for ReloadConfiguration);
}

uint64_t ReloadConfiguration.ReloadCost.description.getter()
{
  if (*v0)
  {
    return 1701147238;
  }

  else
  {
    return 0x6465746567647562;
  }
}

uint64_t ReloadConfiguration.ReloadCost.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EE5E0()
{
  if (*v0)
  {
    return 1701147238;
  }

  else
  {
    return 0x6465746567647562;
  }
}

uint64_t ReloadConfiguration.ReloadType.description.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF39B31C(v1, v8, type metadata accessor for ReloadConfiguration.ReloadType);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x74616964656D6D69;
  }

  (*(v3 + 32))(v5, v8, v2);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDC9F0F8;
  v11 = sub_1BF4E7254();
  v12 = [v10 stringFromDate_];

  v13 = sub_1BF4E8914();
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t ReloadConfiguration.ReloadReason.isMandatory.getter()
{
  if (*v0 >> 61 == 5 && (v1 = __ROR8__(*v0 + 0x6000000000000000, 3), v1 <= 0xB))
  {
    return (0x84Fu >> v1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ReloadConfiguration.ReloadReason.mayDeferOnSuggestedWidgetLocationReload.getter()
{
  v1 = *v0 >> 61;
  if (v1 <= 1)
  {
    LOBYTE(v2) = v1 == 0;
  }

  else if ((v1 - 2) >= 3)
  {
    v2 = 0x230u >> (*v0 >> 3);
  }

  else
  {
    LOBYTE(v2) = ReloadConfiguration.ReloadReason.mayDeferOnSuggestedWidgetLocationReload.getter();
  }

  return v2 & 1;
}

uint64_t ReloadConfiguration.ReloadReason.powerlogWakeReason.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1 >> 61;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return ReloadConfiguration.ReloadReason.powerlogWakeReason.getter(a1);
    }

    if (v2 != 4)
    {
      switch(__ROR8__(*v1 + 0x6000000000000000, 3))
      {
        case 2:
        case 3:
        case 8:
        case 0xDLL:
        case 0xELL:
        case 0xFLL:
          goto LABEL_10;
        case 4:
        case 0xALL:
          v3 = 1;
          goto LABEL_11;
        case 5:
        case 6:
        case 7:
          goto LABEL_4;
        case 9:
          v3 = 5;
          goto LABEL_11;
        case 0xBLL:
          v3 = 10;
          goto LABEL_11;
        case 0xCLL:
          v3 = 11;
          goto LABEL_11;
        default:
          v3 = 4;
          goto LABEL_11;
      }
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
LABEL_4:
      *a1 = 0;
      return result;
    }

LABEL_10:
    v3 = 7;
    goto LABEL_11;
  }

  v3 = 6;
LABEL_11:
  *a1 = v3;
  return result;
}

void ReloadConfiguration.ReloadReason.defaultCost.getter(BOOL *a1@<X8>)
{
  v2 = *v1 >> 61;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      *a1 = 0;
    }

    else
    {
      *a1 = byte_1BF4EC910[__ROR8__(*v1 + 0x6000000000000000, 3)];
    }
  }

  else
  {
    *a1 = (v2 - 1) < 3;
  }
}

uint64_t ReloadConfiguration.ReloadReason.hashValue.getter(double a1)
{
  v3[9] = *v1;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EEA78(double a1)
{
  v3[9] = *v1;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3EEAC8(uint64_t a1, double a2)
{
  v4[9] = *v2;
  sub_1BF4E9804();
  ReloadConfiguration.ReloadReason.hash(into:)(v4);
  return sub_1BF4E9844();
}

uint64_t ReloadConfiguration.init(type:cost:reason:fromUserInteraction:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = type metadata accessor for ReloadConfiguration(0);
  v11 = v10[9];
  result = sub_1BF38DAD0(a1, a5);
  *(a5 + v10[5]) = v8;
  *(a5 + v10[7]) = 1;
  *(a5 + v10[6]) = v9;
  *(a5 + v10[8]) = 1;
  *(a5 + v11) = a4;
  return result;
}

uint64_t ReloadConfiguration.fromUserInteraction.setter(char a1)
{
  result = type metadata accessor for ReloadConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ReloadConfiguration.userInteractive.getter()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B30, &qword_1BF4EC590);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  (*(v2 + 56))(&v26 - v14, 1, 1, v1, v13);
  v16 = *(v6 + 56);
  sub_1BF39B31C(v0, v8, type metadata accessor for ReloadConfiguration.ReloadType);
  sub_1BF39B31C(v15, &v8[v16], type metadata accessor for ReloadConfiguration.ReloadType);
  v17 = *(v2 + 48);
  if (v17(v8, 1, v1) == 1)
  {
    sub_1BF3B8DEC(v15);
    if (v17(&v8[v16], 1, v1) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1BF39B31C(v8, v11, type metadata accessor for ReloadConfiguration.ReloadType);
  if (v17(&v8[v16], 1, v1) == 1)
  {
    sub_1BF3B8DEC(v15);
    (*(v2 + 8))(v11, v1);
LABEL_6:
    sub_1BF38C9B4(v8, &qword_1EBDD8B30, &qword_1BF4EC590);
    return *(v0 + *(type metadata accessor for ReloadConfiguration(0) + 36));
  }

  (*(v2 + 32))(v4, &v8[v16], v1);
  v19 = sub_1BF4E72D4();
  v20 = *(v2 + 8);
  v20(v4, v1);
  sub_1BF3B8DEC(v15);
  v20(v11, v1);
  if ((v19 & 1) == 0)
  {
    sub_1BF3B8DEC(v8);
    return *(v0 + *(type metadata accessor for ReloadConfiguration(0) + 36));
  }

LABEL_9:
  sub_1BF3B8DEC(v8);
  v21 = *(type metadata accessor for ReloadConfiguration(0) + 24);
  v22 = *(v0 + v21);
  v26 = 0xA000000000000030;
  v27 = v22;
  sub_1BF39C510(v22);
  v23 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v27, &v26);
  sub_1BF39C9A4(v22);
  if ((v23 & 1) == 0)
  {
    v24 = *(v0 + v21);
    v26 = 0xA000000000000060;
    v27 = v24;
    sub_1BF39C510(v24);
    v25 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v27, &v26);
    sub_1BF39C9A4(v24);
    if ((v25 & 1) == 0)
    {
      return *(v0 + *(type metadata accessor for ReloadConfiguration(0) + 36));
    }
  }

  return 1;
}

unint64_t sub_1BF3EF004()
{
  result = qword_1EDC96380;
  if (!qword_1EDC96380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC96380);
  }

  return result;
}

unint64_t sub_1BF3EF054()
{
  result = qword_1EBDD8B38;
  if (!qword_1EBDD8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8B38);
  }

  return result;
}

uint64_t sub_1BF3EF0A8(uint64_t a1)
{
  result = type metadata accessor for ReloadConfiguration.ReloadType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF3EF168(uint64_t a1)
{
  v1 = sub_1BF4E7334();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1BF3EF1CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BF3EF228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1BF3EF2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*a5 == 2 && (v5 = *(a3 + *(type metadata accessor for ReloadConfiguration(0) + 24)), v5 >> 61 == 5) && (v6 = __ROR8__(v5 + 0x6000000000000000, 3), v6 <= 0xB))
  {
    return (0x84Fu >> v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static Priority.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (!*a2)
      {
        return 1;
      }
    }

    else if (*a2 < 2u)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Priority.description.getter()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

ChronoKit::Priority_optional __swiftcall Priority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BF3EF490()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_1BF3EF4F8(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 0;
    }
  }

  else if (*a2 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1BF3EF528(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 1;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 1;
    }
  }

  else if (*a1 > 1u)
  {
    return 1;
  }

  return 0;
}