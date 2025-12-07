unint64_t sub_25BB8B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v7;
  __src[2] = *(a1 + 32);
  LOBYTE(__src[3]) = v6 & 1;
  *(&__src[3] + 1) = MEMORY[0x277D84F90];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  *&__src[5] = v8;
  v26[0] = v5;
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, &type metadata for AveragePool2D.Kind, &type metadata for AveragePool2D, v26, &type metadata for AveragePool2D, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v13 = v26[0];
  result = sub_25BAAF54C(v26[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    v23 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v23, __src, 0x58uLL);
      memcpy(v26, __src, sizeof(v26));
      sub_25BAA486C(__dst, v24, &qword_27FBB57A8, &qword_25BCC3D18);
      return sub_25BAA6F5C(v26, &qword_27FBB57A8, &qword_25BCC3D18);
    }

    v15 = 0;
    v16 = result - 1;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_21;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](result, v13);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[3] + 1) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00F88(0, *(v17 + 16) + 1, 1);
        v17 = *(&__src[3] + 1);
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25BB00F88(v20 > 1, v21 + 1, 1);
        v17 = *(&__src[3] + 1);
      }

      ++v15;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = sub_25BCB7C1C();
  *(v12 + 40) = v13;
  v31 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v14 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v14 >= result)
      {
        break;
      }

      v16 = sub_25BCB5AFC();
      sub_25BAB5F30(v16, v14++, &type metadata for ConstantPad1D.Kind, &type metadata for ConstantPad1D, &v31, &type metadata for ConstantPad1D, v16);
      if (v14 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v29 = v12;
  v30 = a1;
  swift_beginAccess();
  v17 = v31;
  result = sub_25BAAF54C(v31);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = result;
  v27 = a5;
  v28 = a4;
  if (result)
  {
    v19 = 0;
    v20 = result - 1;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F8779B0](result, v17);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v17 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00FA8(0, *(v21 + 16) + 1, 1);
        v21 = v31;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25BB00FA8(v24 > 1, v25 + 1, 1);
        v21 = v31;
      }

      ++v19;
      *(v21 + 16) = v25 + 1;
      v26 = v21 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = 0;
      if (v18 == v19)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_21:

  *v27 = v30;
  *(v27 + 8) = a2;
  *(v27 + 16) = a6;
  *(v27 + 24) = v21;
  *(v27 + 32) = a3;
  *(v27 + 40) = v28;
  *(v27 + 48) = v29;
  return result;
}

unint64_t sub_25BB8BE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v6;
  LODWORD(__src[2]) = *(a1 + 32);
  *(&__src[2] + 1) = MEMORY[0x277D84F90];
  *&__src[3] = a2;
  *(&__src[3] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  *&__src[4] = v7;
  v25[0] = v5;
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v9 >= result)
      {
        break;
      }

      v11 = sub_25BCB5AFC();
      sub_25BAB5F30(v11, v9++, &type metadata for ConstantPad2D.Kind, &type metadata for ConstantPad2D, v25, &type metadata for ConstantPad2D, v11);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v12 = v25[0];
  result = sub_25BAAF54C(v25[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    v22 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v22, __src, 0x48uLL);
      memcpy(v25, __src, sizeof(v25));
      sub_25BAA486C(__dst, v23, &qword_27FBB5870, &qword_25BCC3DB8);
      return sub_25BAA6F5C(v25, &qword_27FBB5870, &qword_25BCC3DB8);
    }

    v14 = 0;
    v15 = result - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_21;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8779B0](result, v12);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(v12 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[2] + 1) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00FC8(0, *(v16 + 16) + 1, 1);
        v16 = *(&__src[2] + 1);
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25BB00FC8(v19 > 1, v20 + 1, 1);
        v16 = *(&__src[2] + 1);
      }

      ++v14;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = 0;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8C0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for SymmetricPad2D.Kind, &type metadata for SymmetricPad2D, v31, &type metadata for SymmetricPad2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB58C0, &qword_25BCC3DF8);
      return sub_25BAA6F5C(v31, &qword_27FBB58C0, &qword_25BCC3DF8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB01008(0, *(v18 + 16) + 1, 1);
        v18 = v34;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB01008(v21 > 1, v22 + 1, 1);
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8C398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for ReflectionPad2D.Kind, &type metadata for ReflectionPad2D, v31, &type metadata for ReflectionPad2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB5910, &qword_25BCC3E38);
      return sub_25BAA6F5C(v31, &qword_27FBB5910, &qword_25BCC3E38);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB01088(0, *(v18 + 16) + 1, 1);
        v18 = v34;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB01088(v21 > 1, v22 + 1, 1);
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v8 = MEMORY[0x277D84F90];
  v28 = a1;
  v29 = MEMORY[0x277D84F90];
  v30 = a2;
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BCB617C();
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  v32 = v9;
  v27 = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Reshape.Kind, &type metadata for Reshape, &v27, &type metadata for Reshape, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27;
  result = sub_25BAAF54C(v27);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v15 = result;
  if (result)
  {
    v26 = a4;
    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        break;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB011C8(0, *(v18 + 16) + 1, 1);
        v18 = v29;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB011C8(v21 > 1, v22 + 1, 1);
        v18 = v29;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {

        v25 = v28;
        v24 = v29;
        v5 = v30;
        v4 = v31;
        v9 = v32;
        a4 = v26;
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = MEMORY[0x277D84F90];
  v25 = a1;
LABEL_21:
  *a4 = v25;
  a4[1] = v24;
  a4[2] = v5;
  a4[3] = v4;
  a4[4] = v9;
  sub_25BCB617C();

  sub_25BA9D8C4(v5, v4);
  sub_25BCB617C();

  sub_25BA9D148(v5, v4);
}

void sub_25BB8C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_51_8();
  v46 = v6;
  v47 = v7;
  v44 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v22 = OUTLINED_FUNCTION_31(v21);
  *(v22 + 16) = xmmword_25BCBAE50;
  *(v22 + 32) = sub_25BCB7C1C();
  *(v22 + 40) = v23;
  v45[0] = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v24 = 0;
    while (v24 < sub_25BCB5B2C())
    {
      v25 = sub_25BCB5AFC();
      sub_25BAB5F30(v25, v24++, v12, v12, v45, v12, v25);
      if (v24 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  OUTLINED_FUNCTION_35(v45);
  v26 = v45[0];
  v27 = v10(v45[0]);
  if (v27 < 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v28 = v27;
  v41 = v16;
  v42 = v20;
  v43 = v14;
  if (v27)
  {
    v29 = 0;
    v30 = v27 - 1;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      v32 = v30 - v29;
      if (__OFSUB__(v30, v29))
      {
        break;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x25F8779B0](v32, v26);
      }

      else
      {
        if (v32 < 0)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_20_14();
        if (v35)
        {
          goto LABEL_25;
        }

        v33 = *(v26 + 32 + 8 * v34);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45[0] = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v37 = OUTLINED_FUNCTION_8_0();
        v44(v37);
        v31 = v45[0];
      }

      v39 = *(v31 + 16);
      v38 = *(v31 + 24);
      if (v39 >= v38 >> 1)
      {
        (v44)(v38 > 1, v39 + 1, 1);
        v31 = v45[0];
      }

      ++v29;
      *(v31 + 16) = v39 + 1;
      v40 = v31 + 16 * v39;
      *(v40 + 32) = v33;
      *(v40 + 40) = 0;
      if (v28 == v29)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_21:

  *v42 = v18;
  v42[1] = v31;
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = v22;
  OUTLINED_FUNCTION_49_8();
}

unint64_t sub_25BB8CB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = sub_25BCB7C1C();
  *(v10 + 40) = v11;
  v27 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v12 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v12 >= result)
      {
        break;
      }

      v14 = sub_25BCB5AFC();
      sub_25BAB5F30(v14, v12++, &type metadata for Hardtanh.Kind, &type metadata for Hardtanh, &v27, &type metadata for Hardtanh, v14);
      if (v12 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v15 = v27;
  result = sub_25BAAF54C(v27);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v16 = result;
  v25 = v10;
  v26 = a3;
  if (result)
  {
    v17 = 0;
    v18 = result - 1;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v18 - v17;
      if (__OFSUB__(v18, v17))
      {
        break;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x25F8779B0](result, v15);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v20 = *(v15 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB01248(0, *(v19 + 16) + 1, 1);
        v19 = v27;
      }

      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25BB01248(v22 > 1, v23 + 1, 1);
        v19 = v27;
      }

      ++v17;
      *(v19 + 16) = v23 + 1;
      v24 = v19 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = 0;
      if (v16 == v17)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:

  *v26 = a4;
  *(v26 + 4) = a5;
  *(v26 + 8) = v19;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v25;
  return result;
}

void sub_25BB8CDA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(BOOL, unint64_t, uint64_t))
{
  OUTLINED_FUNCTION_30_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = OUTLINED_FUNCTION_31(v7);
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  v38 = MEMORY[0x277D84F90];
  v10 = sub_25BCB5B2C();
  if (v10)
  {
    v18 = 0;
    while (v18 < sub_25BCB5B2C())
    {
      v19 = sub_25BCB5AFC();
      sub_25BAB5F30(v19, v18, a3, a3, &v38, a3, v19);
      v10 = sub_25BCB5B2C();
      if (++v18 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_21_14(v10, v11, v12, v13, v14, v15, v16, v17, v36);
  v20 = v38;
  v21 = a4(v38);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    if (!v21)
    {
LABEL_19:

      return;
    }

    v23 = 0;
    v24 = v21 - 1;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_21;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x25F8779B0](v26, v20);
      }

      else
      {
        if (v26 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14();
        if (v29)
        {
          goto LABEL_23;
        }

        v27 = *(v20 + 32 + 8 * v28);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = OUTLINED_FUNCTION_6_29();
        v32(v31);
        v25 = v38;
      }

      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        a5(v33 > 1, v34 + 1, 1);
        v25 = v38;
      }

      ++v23;
      *(v25 + 16) = v34 + 1;
      v35 = v25 + 16 * v34;
      *(v35 + 32) = v27;
      *(v35 + 40) = 0;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

void sub_25BB8CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_51_8();
  v60 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v19 = OUTLINED_FUNCTION_31(v18);
  *(v19 + 16) = xmmword_25BCBAE50;
  *(v19 + 32) = sub_25BCB7C1C();
  *(v19 + 40) = v20;
  v64 = MEMORY[0x277D84F90];
  v21 = sub_25BCB5B2C();
  if (v21)
  {
    v29 = 0;
    while (v29 < sub_25BCB5B2C())
    {
      v30 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_28_11(v30, v31, v32, v33, v34, v35, v36, v37, v53, v54, v55, v57, v59, v60, v61, v62, v63);
      v21 = sub_25BCB5B2C();
      if (++v29 == v21)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_21_14(v21, v22, v23, v24, v25, v26, v27, v28, v53);
  v38 = v9(v64);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = v38;
    v56 = v17;
    v58 = v11;
    if (!v38)
    {
LABEL_19:

      *v56 = v15;
      OUTLINED_FUNCTION_40_10(v13, v19, v13, v56, v58);
      OUTLINED_FUNCTION_49_8();
      return;
    }

    v40 = 0;
    v41 = v38 - 1;
    OUTLINED_FUNCTION_41_8();
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      v43 = v41 - v40;
      if (__OFSUB__(v41, v40))
      {
        goto LABEL_21;
      }

      if (v19)
      {
        v44 = MEMORY[0x25F8779B0](v43, v64);
      }

      else
      {
        if (v43 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14();
        if (v46)
        {
          goto LABEL_23;
        }

        v44 = *(v13 + 8 * v45);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_6_29();
        v48(v47);
      }

      v49 = *(v42 + 16);
      if (v49 >= *(v42 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_8();
        v52(v51);
      }

      ++v40;
      *(v42 + 16) = v49 + 1;
      v50 = v42 + 16 * v49;
      *(v50 + 32) = v44;
      *(v50 + 40) = 0;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_25BB8D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = sub_25BCB7C1C();
  *(v12 + 40) = v13;
  v32 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v14 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v14 >= result)
      {
        break;
      }

      v16 = sub_25BCB5AFC();
      sub_25BAB5F30(v16, v14++, &type metadata for MaxPool1D.Kind, &type metadata for MaxPool1D, &v32, &type metadata for MaxPool1D, v16);
      if (v14 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v29 = v12;
  v30 = a1;
  v31 = a2;
  swift_beginAccess();
  v17 = v32;
  result = sub_25BAAF54C(v32);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = result;
  v27 = a6;
  v28 = a4;
  if (result)
  {
    v19 = 0;
    v20 = result - 1;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F8779B0](result, v17);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v17 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB012E8(0, *(v21 + 16) + 1, 1);
        v21 = v32;
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25BB012E8(v24 > 1, v25 + 1, 1);
        v21 = v32;
      }

      ++v19;
      *(v21 + 16) = v25 + 1;
      v26 = v21 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = 0;
      if (v18 == v19)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_21:

  *v27 = v30;
  v27[1] = v31;
  v27[2] = a3;
  v27[3] = v21;
  v27[4] = v28;
  v27[5] = a5;
  v27[6] = v29;
  return result;
}

unint64_t sub_25BB8D428@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  v6 = a1[1];
  __src[0] = *a1;
  __src[1] = v6;
  __src[2] = a1[2];
  *&__src[3] = MEMORY[0x277D84F90];
  *(&__src[3] + 1) = a2;
  *&__src[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  *(&__src[4] + 1) = v7;
  v25[0] = v5;
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v9 >= result)
      {
        break;
      }

      v11 = sub_25BCB5AFC();
      sub_25BAB5F30(v11, v9++, &type metadata for MaxPool2D.Kind, &type metadata for MaxPool2D, v25, &type metadata for MaxPool2D, v11);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v12 = v25[0];
  result = sub_25BAAF54C(v25[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    v22 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v22, __src, 0x50uLL);
      memcpy(v25, __src, sizeof(v25));
      sub_25BAA486C(__dst, v23, &qword_27FBB57F8, &qword_25BCC3D58);
      return sub_25BAA6F5C(v25, &qword_27FBB57F8, &qword_25BCC3D58);
    }

    v14 = 0;
    v15 = result - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_21;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8779B0](result, v12);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(v12 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__src[3] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB01308(0, *(v16 + 16) + 1, 1);
        v16 = *&__src[3];
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25BB01308(v19 > 1, v20 + 1, 1);
        v16 = *&__src[3];
      }

      ++v14;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = 0;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25BB8D6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_51_8();
  v60 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v19 = OUTLINED_FUNCTION_31(v18);
  *(v19 + 16) = xmmword_25BCBAE50;
  *(v19 + 32) = sub_25BCB7C1C();
  *(v19 + 40) = v20;
  v64 = MEMORY[0x277D84F90];
  v21 = sub_25BCB5B2C();
  if (v21)
  {
    v29 = 0;
    while (v29 < sub_25BCB5B2C())
    {
      v30 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_28_11(v30, v31, v32, v33, v34, v35, v36, v37, v53, v54, v55, v57, v59, v60, v61, v62, v63);
      v21 = sub_25BCB5B2C();
      if (++v29 == v21)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_21_14(v21, v22, v23, v24, v25, v26, v27, v28, v53);
  v38 = v11(v64);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = v38;
    v56 = v8;
    v58 = v7;
    if (!v38)
    {
LABEL_19:

      *v17 = v15;
      v17[1] = v13;
      OUTLINED_FUNCTION_40_10(v56, v19, v17, v56, v58);
      OUTLINED_FUNCTION_49_8();
      return;
    }

    v40 = 0;
    v41 = v38 - 1;
    OUTLINED_FUNCTION_41_8();
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      v43 = v41 - v40;
      if (__OFSUB__(v41, v40))
      {
        goto LABEL_21;
      }

      if (v19)
      {
        v44 = MEMORY[0x25F8779B0](v43, v64);
      }

      else
      {
        if (v43 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14();
        if (v46)
        {
          goto LABEL_23;
        }

        v44 = *&v17[2 * v45];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_6_29();
        v48(v47);
      }

      v49 = *(v42 + 16);
      if (v49 >= *(v42 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_8();
        v52(v51);
      }

      ++v40;
      *(v42 + 16) = v49 + 1;
      v50 = v42 + 16 * v49;
      *(v50 + 32) = v44;
      *(v50 + 40) = 0;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

void sub_25BB8D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_51_8();
  v50 = v7;
  v51 = v8;
  v48 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v25 = OUTLINED_FUNCTION_31(v24);
  *(v25 + 16) = xmmword_25BCBAE50;
  *(v25 + 32) = sub_25BCB7C1C();
  *(v25 + 40) = v26;
  v49[0] = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v27 = 0;
    while (v27 < sub_25BCB5B2C())
    {
      v28 = sub_25BCB5AFC();
      sub_25BAB5F30(v28, v27++, v13, v13, v49, v13, v28);
      if (v27 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v47 = v25;
  OUTLINED_FUNCTION_35(v49);
  v29 = v49[0];
  v30 = v11(v49[0]);
  if (v30 < 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v31 = v30;
  v44 = v23;
  v45 = v17;
  v46 = v15;
  if (v30)
  {
    v32 = 0;
    v33 = v30 - 1;
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      v35 = v33 - v32;
      if (__OFSUB__(v33, v32))
      {
        break;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x25F8779B0](v35, v29);
      }

      else
      {
        if (v35 < 0)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_20_14();
        if (v38)
        {
          goto LABEL_25;
        }

        v36 = *(v29 + 32 + 8 * v37);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v40 = OUTLINED_FUNCTION_8_0();
        v48(v40);
        v34 = v49[0];
      }

      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        (v48)(v41 > 1, v42 + 1, 1);
        v34 = v49[0];
      }

      ++v32;
      *(v34 + 16) = v42 + 1;
      v43 = v34 + 16 * v42;
      *(v43 + 32) = v36;
      *(v43 + 40) = 0;
      if (v31 == v32)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_21:

  *v44 = v21;
  v44[1] = v19;
  v44[2] = v34;
  v44[3] = v45;
  v44[4] = v46;
  v44[5] = v47;
  OUTLINED_FUNCTION_49_8();
}

unint64_t sub_25BB8DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for ZeroPad2D.Kind, &type metadata for ZeroPad2D, v31, &type metadata for ZeroPad2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB5960, &qword_25BCC3E78);
      return sub_25BAA6F5C(v31, &qword_27FBB5960, &qword_25BCC3E78);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB01368(0, *(v18 + 16) + 1, 1);
        v18 = v34;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB01368(v21 > 1, v22 + 1, 1);
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t Layer.isEveryParameterInitialized.getter()
{
  OUTLINED_FUNCTION_24_9();
  type metadata accessor for ParametrizedLayers();
  OUTLINED_FUNCTION_16_20();
  return sub_25BB90B60(v0, v1, v2) & 1;
}

void Layer.initializeParameters(recursively:initializer:)()
{
  OUTLINED_FUNCTION_9_18();
  v53 = v0;
  v54 = v1;
  LODWORD(v52) = v2;
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v9, WitnessTable, v10);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &WitnessTable - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &WitnessTable - v22;
  v24 = v4 + 16;
  OUTLINED_FUNCTION_46_7();
  v25();
  v26 = OUTLINED_FUNCTION_68(&unk_286D4B6E8);
  *(v26 + 16) = v52;
  sub_25BAB1090(v8, sub_25BB91F78, v26, v9, WitnessTable, v23);
  WitnessTable = v23;
  v52 = v13;
  (*(v13 + 16))(v17, v23, v11);
  OUTLINED_FUNCTION_4_5();
  v27 = swift_getWitnessTable();
  v28 = v20;
  MEMORY[0x25F876DC0](v11, v27);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_25BAB173C(v11, v55);
        if (!v55[0])
        {
          v44 = *(v52 + 8);
          v44(v28, v11);
          v44(WitnessTable, v11);
          OUTLINED_FUNCTION_10_16();
          return;
        }

        v29 = v55[1];
        type metadata accessor for AnyLayerVariablePathCache();
        sub_25BC40864(v29);
        v31 = v30;

        v55[0] = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
        sub_25BB92940(&qword_27FBB51D0, &qword_27FBB3F98, &unk_25BCC3720);
        sub_25BCB627C();

        OUTLINED_FUNCTION_48_6();
        sub_25BCB736C();
        if (!swift_dynamicCastClass())
        {
          break;
        }

        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_44_6();
        if (v32)
        {
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_9_20();
        v33 = *(v55[0] + 32);
        if ((v24 & ~v33) != 0)
        {

          if (v33 < 0)
          {
            OUTLINED_FUNCTION_9_20();
            v24 = v55[0];
            v38 = *(v55[0] + 32);
            if ((~v38 & 0xF000000000000007) == 0)
            {
              goto LABEL_29;
            }

            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_30;
            }

            sub_25BAB69FC(v38);
          }
        }

        else
        {
        }

        v34 = OUTLINED_FUNCTION_22_13();
        v35(v34);

        if (v55[0])
        {
          v57 = v55[0];

          v36 = swift_modifyAtWritableKeyPath();
          Parameter.wrappedValue.setter(&v57);
          v36(v55, 0);
        }

LABEL_23:

LABEL_24:
      }

      sub_25BCB736C();
      if (swift_dynamicCastClass())
      {
        break;
      }
    }

    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_44_6();
    if (v32)
    {
LABEL_10:

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_9_20();
    v37 = *(v55[0] + 32);
    if ((v24 & ~v37) == 0)
    {

      goto LABEL_21;
    }

    if (v37 < 0)
    {
      break;
    }

LABEL_21:
    v39 = OUTLINED_FUNCTION_22_13();
    v40(v39);

    v41 = v55[0];
    if (!v55[0])
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_9_20();
    v56 = v41;
    v57 = v55[0];

    LayerState.wrappedValue.setter(&v56, v42);
  }

  OUTLINED_FUNCTION_9_20();
  v24 = v55[0];
  v43 = *(v55[0] + 32);
  if ((~v43 & 0xF000000000000007) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_32_9();
    OUTLINED_FUNCTION_7_0();
    v50 = 0xD00000000000002ELL;
    goto LABEL_31;
  }

  if (v43 < 0)
  {

    goto LABEL_21;
  }

LABEL_30:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_7_0();
LABEL_31:
  sub_25BCB74CC(v45, v46, v47, v50, v48, v49, 102, 2, WitnessTable);
  __break(1u);
}

BOOL sub_25BB8E45C(uint64_t a1)
{
  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for Parameterless))
  {
    return 0;
  }

  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for Layer) || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for OptionalBaseLayer))
  {
    return 1;
  }

  return dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for BaseLayerArray) != 0;
}

uint64_t sub_25BB8E528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  LODWORD(v48) = a4;
  v50 = a1;
  v51 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25BCB720C();
  v47 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v13, WitnessTable, v14);
  v49 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v25 = *(v11 + 16);
  v53 = v7;
  v25(a6, v7, a5, v22);
  v26 = v45;
  v52 = a6;
  (v25)(v45, a6, a5);
  v27 = swift_allocObject();
  *(v27 + 16) = v48;
  *(v27 + 24) = a3;
  sub_25BAB1090(v26, sub_25BB92984, v27, v47, WitnessTable, v24);
  v28 = *(v49 + 16);
  v48 = v24;
  v28(v17, v24, v15);
  v29 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v15, v29);
  while (1)
  {
    while (1)
    {
      sub_25BAB173C(v15, &v55);
      if (!v55)
      {
        v42 = *(v49 + 8);
        v42(v20, v15);
        return (v42)(v48, v15);
      }

      sub_25BCB736C();
      if (!swift_dynamicCastClass())
      {
        break;
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }

      swift_retain_n();
      swift_getAtKeyPath();
      if ((~*(v55 + 32) & 0xF000000000000007) != 0)
      {

        swift_getAtKeyPath();

        v31 = *(v55 + 32);
        if ((~v31 & 0xF000000000000007) == 0)
        {
          goto LABEL_23;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v54 = v31 & 0x7FFFFFFFFFFFFFFFLL;
        v32 = Tensor.scalarType.getter(v30);
        v34 = v33;

        (*(v34 + 32))(&v54, v32, v34);
        if (sub_25BAA80BC(v54, &unk_286D42270))
        {
          swift_getAtKeyPath();

          (*(*(v51 + 8) + 32))(&v54);
          v35 = sub_25BB1BA04(&v54);

          v55 = v35;
          LOWORD(v56) = 256;
LABEL_20:

          swift_setAtWritableKeyPath();
        }

LABEL_21:
      }

      else
      {
LABEL_11:
      }
    }

    sub_25BCB736C();
    if (swift_dynamicCastClass())
    {
      if ((a3 & 2) != 0)
      {
        break;
      }
    }

LABEL_9:
  }

  swift_retain_n();
  swift_getAtKeyPath();
  if ((~*(v55 + 32) & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  swift_getAtKeyPath();

  v37 = *(v55 + 32);
  if ((~v37 & 0xF000000000000007) == 0)
  {
LABEL_23:
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000002ELL, 0x800000025BCDA100, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 329);
    goto LABEL_25;
  }

  if (v37 < 0)
  {
    v54 = v37 & 0x7FFFFFFFFFFFFFFFLL;
    v38 = Tensor.scalarType.getter(v36);
    v40 = v39;

    (*(v40 + 32))(&v54, v38, v40);
    if (!sub_25BAA80BC(v54, &unk_286D42270))
    {
      goto LABEL_21;
    }

    swift_getAtKeyPath();

    (*(*(v51 + 8) + 32))(&v54);
    v41 = sub_25BB1BA04(&v54);

    v55 = v41;
    goto LABEL_20;
  }

LABEL_24:
  result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000047, 0x800000025BCDA130, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", 102, 2, 325);
LABEL_25:
  __break(1u);
  return result;
}

BOOL sub_25BB8EBB4(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  if (a3)
  {
    a1 = OUTLINED_FUNCTION_36_7(a1, a2, &protocol descriptor for Layer);
    if (a1)
    {
      return 1;
    }
  }

  if (OUTLINED_FUNCTION_36_7(a1, a2, &protocol descriptor for Parameterless))
  {
    return 0;
  }

  if (swift_dynamicCastMetatype())
  {
    return a4 & 1;
  }

  if (!swift_dynamicCastMetatype())
  {
    return (a3 & 1) != 0 && (OUTLINED_FUNCTION_36_7(0, v7, &protocol descriptor for OptionalBaseLayer) || OUTLINED_FUNCTION_36_7(0, v8, &protocol descriptor for BaseLayerArray));
  }

  return (a4 >> 1) & 1;
}

BOOL sub_25BB8EC74(uint64_t a1)
{
  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for Elementary))
  {
    v2 = &protocol descriptor for LearningPhaseSensitive;
    return dynamic_cast_existential_1_conditional(a1, a1, v2) != 0;
  }

  if (!dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for Layer) && !dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for OptionalBaseLayer))
  {
    v2 = &protocol descriptor for BaseLayerArray;
    return dynamic_cast_existential_1_conditional(a1, a1, v2) != 0;
  }

  return 1;
}

void Layer.prepared(for:)(char *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_42_8();
  v2();
  v3 = v1;
  Layer.prepare(for:)(&v3);
}

uint64_t Layer.prediction(from:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0, v1);
  v12 = 2;
  Layer.prepare(for:)(&v12);
  OUTLINED_FUNCTION_16_20();
  Layer.callAsFunction(_:)(v8, v9, v10);
  return (*(v3 + 8))(v7, v1);
}

void Layer.sublayers(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v24 = v1;
  v3 = v2;
  v23 = v4;
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator(0, v10, WitnessTable, v12);
  v22 = swift_allocBox();
  v14 = v13;
  v15 = *(v6 + 16);
  v15(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  v16 = OUTLINED_FUNCTION_68(&unk_286D4B710);
  *(v16 + 16) = v23;
  sub_25BAB1090(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), sub_25BB929FC, v16, v10, WitnessTable, v14);
  v15(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  v17 = swift_allocObject();
  v18 = v24;
  v17[2] = v3;
  v17[3] = v18;
  v17[4] = v22;
  OUTLINED_FUNCTION_16_20();
  v19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51D8, &qword_25BCC3740);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25BB91F80;
  *(v20 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51E0, qword_25BCC3748);
  *(swift_allocObject() + 16) = v20;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB8F088@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_25BCB720C();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v5, WitnessTable, v7);
  swift_projectBox();
  while (1)
  {
    swift_beginAccess();
    sub_25BAB173C(v8, v10);
    result = swift_endAccess();
    if (!*&v10[0])
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    swift_getAtPartialKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A98, &qword_25BCC3F70);
    if (swift_dynamicCast())
    {
      break;
    }

    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_25BAA6F5C(v10, &qword_27FBB5AA0, &qword_25BCC3F78);
  }

  return sub_25BA97060(v10, a4);
}

void Layer.sublayerKeyPaths<A>(to:recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v20 = v1;
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator(0, v10, WitnessTable, v12);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_43_7();
  v17(v16);
  v18 = OUTLINED_FUNCTION_68(&unk_286D4B760);
  *(v18 + 16) = v8;
  sub_25BAB1090(v0, sub_25BB91FC0, v18, v10, WitnessTable, v15);
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v4;
  v19[4] = v20;
  v19[5] = v21;
  v19[6] = v13;

  OUTLINED_FUNCTION_42_8();
  sub_25BCB708C();
  sub_25BCB707C();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  sub_25BCB70AC();

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB8F3AC@<X0>(void *a2@<X8>)
{
  v3 = sub_25BCB736C();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v3, WitnessTable, v5);
  swift_projectBox();
  swift_beginAccess();
  sub_25BAB173C(v6, &v9);
  result = swift_endAccess();
  v8 = v9;
  if (v9)
  {
  }

  *a2 = v8;
  return result;
}

void Layer.namedSublayerKeyPaths<A>(to:recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v20 = v1;
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator(0, v10, WitnessTable, v12);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_43_7();
  v17(v16);
  v18 = OUTLINED_FUNCTION_68(&unk_286D4B7B0);
  *(v18 + 16) = v8;
  sub_25BAB1090(v0, sub_25BB929FC, v18, v10, WitnessTable, v15);
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v4;
  v19[4] = v20;
  v19[5] = v21;
  v19[6] = v13;

  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_46_7();
  sub_25BCB708C();
  OUTLINED_FUNCTION_48_6();
  sub_25BCB707C();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_20();
  sub_25BCB70AC();

  OUTLINED_FUNCTION_10_16();
}

BOOL sub_25BB8F628(uint64_t a1, uint64_t a2, char a3)
{
  v4 = dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for Elementary);
  result = 0;
  if (!v4)
  {
    if (a3)
    {
      v4 = OUTLINED_FUNCTION_36_7(0, v5, &protocol descriptor for Layer);
      if (v4)
      {
        return 1;
      }
    }

    if (OUTLINED_FUNCTION_36_7(v4, v5, &protocol descriptor for OptionalBaseLayer) || (a3 & 1) != 0 && OUTLINED_FUNCTION_36_7(0, v7, &protocol descriptor for BaseLayerArray))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25BB8F6A8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25BCB736C();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v3, WitnessTable, v5);
  swift_projectBox();
  swift_beginAccess();
  sub_25BAB173C(v6, v15);
  result = swift_endAccess();
  v8 = v15[0];
  if (v15[0])
  {
    v9 = v15[1];
    type metadata accessor for AnyLayerVariablePathCache();
    sub_25BC40864(v9);
    v11 = v10;

    v15[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    sub_25BB92940(&qword_27FBB51D0, &qword_27FBB3F98, &unk_25BCC3720);
    v12 = sub_25BCB627C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a2 = v12;
  a2[1] = v14;
  a2[2] = v8;
  return result;
}

uint64_t sub_25BB8F804(void *__src)
{
  v72[13] = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27FBB3398 != -1)
  {
LABEL_74:
    swift_once();
  }

  swift_beginAccess();
  v1 = off_27FBB51C0;
  if (*(off_27FBB51C0 + 2) && (v2 = sub_25BAFEEB0(&type metadata for LSTM), (v3 & 1) != 0))
  {
    v4 = *(v1[7] + v2);
    swift_endAccess();
    v5 = 1;
    if ((v4 & 1) == 0)
    {
      return 1;
    }

    v6 = 0;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
    v6 = 1;
  }

  if (qword_28154D3C0 != -1)
  {
    swift_once();
  }

  sub_25BAA3234();
  v7 = sub_25BB9198C(&type metadata for LSTM, &type metadata for Parameter, 0, &qword_27FBB5720, &qword_25BCC3CB0);
  sub_25BAA3258();

  v61 = v6;
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84FA0];
    v64 = MEMORY[0x277D84FA0];
    memcpy(v67, __dst, 0x43uLL);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 20) = 4;
    sub_25BB924FC(v67, v70);
    sub_25BB88E18();
    memcpy(v72, __srca, 0x68uLL);
    v57 = v72[12];
    v10 = v72[10];
    memcpy(v70, __srca, sizeof(v70));
    sub_25BAA486C(v72, v69, &qword_27FBB5710, &qword_25BCC3CA8);
    v58 = v8;
    v59 = v8;
    while (1)
    {
      v11 = v70[9];
      if (!*(v70[9] + 16))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BC1955C();
        v11 = v12;
      }

      v13 = *(v11 + 16);
      if (!v13)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v14 = v13 - 1;
      v15 = v11 + 16 * v14;
      v16 = *(v15 + 32);
      LODWORD(v15) = *(v15 + 40);
      *(v11 + 16) = v14;
      v70[9] = v11;
      v68[0] = v15;
      if (v10)
      {
        v17 = *(v16 + 32);
        swift_beginAccess();

        LOBYTE(v17) = v10(v17, v68);
        swift_endAccess();
        if (v17)
        {
          v18 = *(v16 + 32);

          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
          v20 = sub_25BB92940(&qword_27FBB5718, &qword_27FBB56F8, &qword_25BCC3C98);
          sub_25BAB89AC(v18, v16, v70, v68, v19, v18, v20);
        }

        else
        {
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F0, &qword_25BCC3C90);
      swift_dynamicCastClassUnconditional();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
      if (swift_dynamicCastClass())
      {
        v69[0] = v57;

        sub_25BCB617C();
        v21 = sub_25BCB617C();
        sub_25BAB1D84(v21);
        v55 = v69[0];
        v22 = *(v16 + 49);

        swift_beginAccess();
        HIDWORD(v54) = v68[0];
        v56 = sub_25BAAF54C(v58);

        MEMORY[0x25F876F40](v23);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v58 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAB22A0();
          v59 = v25;
        }

        v24 = *(v59 + 16);
        if (v24 >= *(v59 + 24) >> 1)
        {
          sub_25BAB22A0();
          v59 = v26;
        }

        *(v59 + 16) = v24 + 1;
        *(v59 + 8 * v24 + 32) = v55;
        if ((v54 & 0x400000000) != 0)
        {
          sub_25BAA2CDC(v69, v56);
        }

        if (v22)
        {
          sub_25BAA2CDC(v69, v56);
        }
      }
    }

    memcpy(v69, v70, sizeof(v69));
    sub_25BAA6F5C(v69, &qword_27FBB5710, &qword_25BCC3CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5720, &qword_25BCC3CB0);
    swift_allocObject();
    sub_25BB916E8(v58, v59, v64, v63, sub_25BAAF54C);
    v7 = v27;
    if (sub_25BC41F88() || sub_25BC41F58())
    {
      memcpy(v68, __srca, sizeof(v68));
      sub_25BAA6F5C(v68, &qword_27FBB5710, &qword_25BCC3CA8);
      v5 = v5;
      v6 = v61;
      goto LABEL_35;
    }

    sub_25BAA3234();
    v5 = v5;
    if (qword_28154D3A8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = off_28154D3B0;
    sub_25BC19DC4(v7, &type metadata for LSTM, &type metadata for Parameter, 0, isUniquelyReferenced_nonNull_native, v50, v51, v52, v54, v55, v56, v57);
    off_28154D3B0 = v62;
    swift_endAccess();
    sub_25BAA3258();

    memcpy(v68, __srca, sizeof(v68));
    sub_25BAA6F5C(v68, &qword_27FBB5710, &qword_25BCC3CA8);
    if (!v61)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (v6)
  {
LABEL_36:
    v5 = sub_25BAAF54C(*(v7 + 16)) > 0;
  }

LABEL_37:
  v28 = *(v7 + 16);
  if (v28 >> 62)
  {
    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
    v53 = sub_25BCB74EC();

    v28 = v53;
  }

  else
  {
    v29 = v28 & 0xFFFFFFFFFFFFFF8;
    sub_25BCB617C();
    sub_25BCB78CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
    if (!swift_dynamicCastMetatype())
    {
      v40 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        v41 = v29 + 32;
        while (swift_dynamicCastClass())
        {
          v41 += 8;
          if (!--v40)
          {
            goto LABEL_39;
          }
        }

        v28 = v29 | 1;
      }
    }
  }

LABEL_39:
  v30 = sub_25BA9BEA0(v28);
  if (v30)
  {
    v31 = v30;
    v60 = v5;
    v32 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v32, v28);
      }

      else
      {
        if (v32 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }
      }

      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_72;
      }

      v34 = sub_25BCB6FCC();
      if (v35)
      {
        swift_getAtKeyPath();

        v36 = *(v72[0] + 32);

        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v37 = v34;
        memcpy(v72, __dst, 0x43uLL);
        v38 = *(*(v72 + v37) + 32);

        if ((~v38 & 0xF000000000000007) != 0 && (v38 & 0x8000000000000000) == 0)
        {
LABEL_59:
          v39 = 0;
          goto LABEL_60;
        }
      }

      ++v32;
      if (v33 == v31)
      {
        v39 = 1;
LABEL_60:
        v5 = v60;
        goto LABEL_61;
      }
    }
  }

  v39 = 1;
LABEL_61:

  if (v61)
  {
    swift_beginAccess();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    __srca[0] = off_27FBB51C0;
    sub_25BC19CD8(v5, &type metadata for LSTM, v42, v43, v44, v45, v46, v47, v54, v55);
    off_27FBB51C0 = __srca[0];
    swift_endAccess();
  }

  return v39;
}

uint64_t sub_25BB90188(char a1, uint64_t a2, unint64_t a3, float a4)
{
  v4 = a3;
  v5 = a2;
  LOBYTE(v6) = a1;
  v87 = *MEMORY[0x277D85DE8];
  *&v69 = a2;
  *(&v69 + 1) = a3;
  if (qword_27FBB3398 != -1)
  {
LABEL_75:
    swift_once();
  }

  swift_beginAccess();
  v8 = off_27FBB51C0;
  if (*(off_27FBB51C0 + 2) && (v9 = sub_25BAFEEB0(&type metadata for Dropout), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + v9);
    swift_endAccess();
    v12 = 1;
    if ((v11 & 1) == 0)
    {
      return 1;
    }

    v13 = 0;
  }

  else
  {
    swift_endAccess();
    v12 = 0;
    v13 = 1;
  }

  if (qword_28154D3C0 != -1)
  {
    swift_once();
  }

  sub_25BAA3234();
  v14 = sub_25BB9198C(&type metadata for Dropout, &type metadata for Parameter, 0, &qword_27FBB56E0, &qword_25BCC3C80);
  sub_25BAA3258();

  if (v14)
  {
    v15 = v14;
    if (!v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v62 = v12;
    v66 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84FA0];
    v65 = MEMORY[0x277D84FA0];
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 20) = 4;

    sub_25BB8A22C(v6, v5, v4, sub_25BB929F4, v16, &qword_27FBB56D0, &qword_25BCC3C78, &v80, a4);
    *&v84[16] = v81;
    v85 = v82;
    *v84 = v80;
    v86 = v83;
    v17 = v82;
    v76 = v80;
    v77 = v81;
    v78 = v82;
    v59 = v83;
    v79 = v83;
    sub_25BAA486C(v84, v74, &qword_27FBB56D0, &qword_25BCC3C78);
    v60 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = *(&v77 + 1);
      if (!*(*(&v77 + 1) + 16))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BC19574();
        v4 = v18;
      }

      v19 = *(v4 + 16);
      if (!v19)
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v20 = v19 - 1;
      v21 = v4 + 16 * v20;
      v6 = *(v21 + 32);
      LODWORD(v21) = *(v21 + 40);
      *(v4 + 16) = v20;
      *(&v77 + 1) = v4;
      LODWORD(v70) = v21;
      if (v17)
      {
        v22 = *(v6 + 32);
        swift_beginAccess();

        LOBYTE(v22) = v17(v22, &v70);
        swift_endAccess();
        if (v22)
        {
          v23 = *(v6 + 32);

          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
          v25 = sub_25BB92940(&qword_27FBB56D8, &qword_27FBB56B8, &qword_25BCC3C68);
          sub_25BAB89AC(v23, v6, &v76, &v70, v24, v23, v25);
        }

        else
        {
        }
      }

      v5 = *(v6 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B0, &qword_25BCC3C60);
      swift_dynamicCastClassUnconditional();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
      if (swift_dynamicCastClass())
      {
        *&v74[0] = v59;

        sub_25BCB617C();
        v26 = sub_25BCB617C();
        sub_25BAB1D84(v26);
        v57 = *&v74[0];
        v27 = *(v6 + 49);

        swift_beginAccess();
        HIDWORD(v56) = v70;
        v58 = sub_25BAAF54C(v60);

        MEMORY[0x25F876F40](v28);
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v60 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BAB22A0();
          v61 = v30;
        }

        LOBYTE(v6) = v58;
        v29 = *(v61 + 16);
        if (v29 >= *(v61 + 24) >> 1)
        {
          sub_25BAB22A0();
          v61 = v31;
        }

        *(v61 + 16) = v29 + 1;
        *(v61 + 8 * v29 + 32) = v57;
        if ((v56 & 0x400000000) != 0)
        {
          sub_25BAA2CDC(v74, v58);
        }

        if (v27)
        {
          sub_25BAA2CDC(v74, v58);
        }
      }
    }

    v74[0] = v76;
    v74[1] = v77;
    v74[2] = v78;
    v75 = v79;
    sub_25BAA6F5C(v74, &qword_27FBB56D0, &qword_25BCC3C78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56E0, &qword_25BCC3C80);
    swift_allocObject();
    sub_25BB916E8(v60, v61, v65, v64, sub_25BAAF54C);
    v15 = v32;
    if (!sub_25BC41F88() && !sub_25BC41F58())
    {

      sub_25BAA3234();
      v12 = v62;
      if (qword_28154D3A8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = off_28154D3B0;
      sub_25BC19DC4(v15, &type metadata for Dropout, &type metadata for Parameter, 0, isUniquelyReferenced_nonNull_native, v51, v52, v53, v55, v56, v57, v58);
      off_28154D3B0 = v63;
      swift_endAccess();
      sub_25BAA3258();

      v70 = v80;
      v71 = v81;
      v72 = v82;
      v73 = v83;
      sub_25BAA6F5C(&v70, &qword_27FBB56D0, &qword_25BCC3C78);
      if (v13)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v70 = v80;
    v71 = v81;
    v72 = v82;
    v73 = v83;
    sub_25BAA6F5C(&v70, &qword_27FBB56D0, &qword_25BCC3C78);
    v12 = v62;
    if (!v13)
    {
      goto LABEL_38;
    }
  }

LABEL_37:
  v12 = sub_25BAAF54C(*(v15 + 16)) > 0;
LABEL_38:
  v4 = *(v15 + 16);
  if (v4 >> 62)
  {
    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
    v54 = sub_25BCB74EC();

    v4 = v54;
  }

  else
  {
    v33 = v4 & 0xFFFFFFFFFFFFFF8;
    sub_25BCB617C();
    sub_25BCB78CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
    if (!swift_dynamicCastMetatype())
    {
      v34 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        v35 = v33 + 32;
        while (swift_dynamicCastClass())
        {
          v35 += 8;
          if (!--v34)
          {
            goto LABEL_47;
          }
        }

        v4 = v33 | 1;
      }
    }
  }

LABEL_47:
  v37 = sub_25BA9BEA0(v4);
  if (v37)
  {
    v5 = v37;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }
      }

      v38 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_73;
      }

      v39 = sub_25BCB6FCC();
      if (v40)
      {
        swift_getAtKeyPath();

        v41 = *(*v84 + 32);

        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *v84 = a4;
        v84[4] = a1;
        *&v84[8] = v69;
        v42 = *(*&v84[v39] + 32);

        if ((~v42 & 0xF000000000000007) != 0 && (v42 & 0x8000000000000000) == 0)
        {
LABEL_62:
          v36 = 0;
          goto LABEL_63;
        }
      }

      ++v6;
      if (v38 == v5)
      {
        v36 = 1;
LABEL_63:
        v12 = v12;
        goto LABEL_64;
      }
    }
  }

  v36 = 1;
LABEL_64:

  if (v13)
  {
    swift_beginAccess();
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v80 = off_27FBB51C0;
    sub_25BC19CD8(v12, &type metadata for Dropout, v43, v44, v45, v46, v47, v48, v55, v56);
    off_27FBB51C0 = v80;
    swift_endAccess();
  }

  return v36;
}

uint64_t sub_25BB90B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v67 = a1;
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v6;
  v7 = sub_25BCB736C();
  WitnessTable = swift_getWitnessTable();
  v68 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v7, WitnessTable, v9);
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v15);
  v62 = &v61 - v16;
  if (qword_27FBB3398 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = off_27FBB51C0;
  if (*(off_27FBB51C0 + 2) && (v18 = sub_25BAFEEB0(v66), (v19 & 1) != 0))
  {
    v20 = *(v17[7] + v18);
    swift_endAccess();
    if ((v20 & 1) == 0)
    {
      return 1;
    }

    v64 = 1;
  }

  else
  {
    swift_endAccess();
    v64 = 0x100000000;
  }

  v21 = type metadata accessor for AnyLayerVariablePathCache();
  v23 = v65;
  v22 = v66;
  v24 = sub_25BAB5DD8(v66, &type metadata for Parameter, 0, v66, &type metadata for Parameter, v65, &protocol witness table for Parameter);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v61 = v21;
    v75 = sub_25BCB604C();
    v73 = MEMORY[0x277D84FA0];
    v74 = MEMORY[0x277D84FA0];
    (*(v3 + 16))(v5, v67, v22);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v23;
    *(v26 + 32) = 0;
    *(v26 + 36) = 4;
    v27 = v62;
    sub_25BAB1090(v5, sub_25BAB60FC, v26, v7, WitnessTable, v62);
    v28 = v27;
    v29 = v68;
    (*(v63 + 16))(v11, v28, v68);
    v30 = swift_getWitnessTable();
    MEMORY[0x25F876DC0](v29, v30);
    v31 = MEMORY[0x277D84F90];
    for (i = &protocol witness table for Parameter; ; i = v34)
    {
      sub_25BAB173C(v68, &v69);
      v33 = v69;
      if (!v69)
      {
        break;
      }

      v34 = i;
      v35 = v70;
      v36 = v71;
      v37 = sub_25BCB681C();
      v69 = v33;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAB22A0();
        v31 = v39;
      }

      v38 = *(v31 + 16);
      if (v38 >= *(v31 + 24) >> 1)
      {
        sub_25BAB22A0();
        v31 = v40;
      }

      *(v31 + 16) = v38 + 1;
      *(v31 + 8 * v38 + 32) = v35;
      if ((v36 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v69, v37);
      }

      if (v36)
      {
        sub_25BAA2CDC(&v69, v37);
      }
    }

    v41 = *(v63 + 8);
    v42 = v68;
    v41(v14, v68);
    v69 = v66;
    v70 = &type metadata for Parameter;
    v71 = v65;
    v72 = i;
    type metadata accessor for LayerVariablePaths(0, &v69);
    sub_25BAB2794();
    v25 = v43;
    sub_25BAB61C4();
    sub_25BAB61CC(v25, v45, v46, v44 & 1);
    v41(v62, v42);
  }

  if ((v64 & 0x100000000) != 0)
  {
    LODWORD(v64) = sub_25BAAF54C(*(v25 + 16)) > 0;
  }

  sub_25BAB9528();
  sub_25BCB617C();
  v47 = sub_25BCB674C();

  v75 = v47;
  if (v47 == sub_25BCB681C())
  {
    v48 = 1;
  }

  else
  {
    do
    {
      v56 = sub_25BCB67FC();
      sub_25BCB677C();
      if (v56)
      {
      }

      else
      {
        sub_25BCB717C();
      }

      sub_25BCB68AC();
      v57 = sub_25BCB6FCC();
      if (v58)
      {
        swift_getAtKeyPath();

        LOBYTE(v74) = *(v69 + 32) < 0;
      }

      else
      {
        MEMORY[0x28223BE20](v57);
        v59 = v65;
        *(&v61 - 6) = v66;
        *(&v61 - 5) = v59;
        *(&v61 - 4) = v60;
        *(&v61 - 3) = sub_25BB91324;
        *(&v61 - 2) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        sub_25BAB1BE8();
      }

      v48 = v74;
    }

    while (v74 == 1 && v75 != sub_25BCB681C());
  }

  if (HIDWORD(v64))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = off_27FBB51C0;
    sub_25BC19CD8(v64, v66, isUniquelyReferenced_nonNull_native, v50, v51, v52, v53, v54, v61, v62);
    off_27FBB51C0 = v75;
    swift_endAccess();
  }

  return v48;
}

void *sub_25BB912E4()
{
  result = sub_25BCB614C();
  off_27FBB51C0 = result;
  return result;
}

uint64_t sub_25BB9134C()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB876FC(v1, v2);
  *v0 = result;
  v0[1] = v4;
  v0[2] = v5;
  return result;
}

double sub_25BB91380@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = v2[2];
  sub_25BB876AC(a1, v7);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

uint64_t sub_25BB913D8()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB87B40(v1, v2);
  *v0 = result;
  *(v0 + 8) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6 & 1;
  return result;
}

void sub_25BB91470()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_35_8();

  Layer.place(on:)();
}

uint64_t sub_25BB914B0()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_14_20();
  v0 = OUTLINED_FUNCTION_35_8();

  return Layer.placed(on:)(v0, v1, v2);
}

void sub_25BB91540()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  sub_25BB874CC(v1, v2);
}

void sub_25BB91584()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_35_8();

  Layer.place(on:)();
}

uint64_t sub_25BB915C4()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_13_16();
  v0 = OUTLINED_FUNCTION_35_8();

  return Layer.placed(on:)(v0, v1, v2);
}

uint64_t sub_25BB91640(uint64_t a1, uint64_t a2, char a3, int a4)
{
  OUTLINED_FUNCTION_24_9();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_2;
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_53_1(0, v7, &protocol descriptor for Layer);
  if (v9)
  {
    return OUTLINED_FUNCTION_53_1(v9, v10, &protocol descriptor for Parameterless) == 0;
  }

  if (OUTLINED_FUNCTION_53_1(0, v10, &protocol descriptor for OptionalBaseLayer) || (result = OUTLINED_FUNCTION_53_1(0, v11, &protocol descriptor for BaseLayerArray)) != 0)
  {
LABEL_2:
    *v4 |= a4;
    return 1;
  }

  return result;
}

void sub_25BB916E8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = v5;
  v5[4] = 0;
  if (a1 >> 62)
  {
LABEL_30:
    sub_25BCB6FFC();
    OUTLINED_FUNCTION_31_10();
    v12 = sub_25BCB74EC();
  }

  else
  {
    sub_25BCB617C();
    sub_25BCB78CC();
    sub_25BCB6FFC();
    v12 = a1;
  }

  v7[2] = v12;
  v7[3] = a2;
  v7[7] = a3;
  v7[8] = a4;
  v13 = (a5)(a1);
  if (!v13)
  {
    v22 = MEMORY[0x277D84F90];
    v7[5] = MEMORY[0x277D84F90];

LABEL_25:
    v7[6] = v22;
    return;
  }

  a5 = v13;
  v28 = MEMORY[0x277D84F90];
  v14 = OUTLINED_FUNCTION_47_8();
  sub_25BAA21EC(v14, v15, v16);
  if ((a5 & 0x8000000000000000) == 0)
  {
    a3 = 0;
    v17 = a1 & 0xC000000000000001;
    v27 = v7;
    do
    {
      if (v17)
      {
        MEMORY[0x25F8779B0](a3, a1);
      }

      else
      {
        if ((a3 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }
      }

      a2 = sub_25BCB6FEC();

      a4 = *(v28 + 16);
      v18 = *(v28 + 24);
      v7 = (a4 + 1);
      if (a4 >= v18 >> 1)
      {
        sub_25BAA21EC(v18 > 1, a4 + 1, 1);
      }

      ++a3;
      *(v28 + 16) = v7;
      *(v28 + 8 * a4 + 32) = a2;
    }

    while (a5 != a3);
    v27[5] = v28;
    v29 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_47_8();
    sub_25BB00870(v19, v20, v21);
    a4 = 0;
    v22 = v29;
    do
    {
      if (v17)
      {
        MEMORY[0x25F8779B0](a4, a1);
      }

      else
      {
        if ((a4 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (a4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }
      }

      a3 = sub_25BCB6FCC();
      a2 = v23;

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      v7 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        sub_25BB00870(v24 > 1, v25 + 1, 1);
      }

      ++a4;
      *(v29 + 16) = v7;
      v26 = v29 + 16 * v25;
      *(v26 + 32) = a3;
      *(v26 + 40) = a2 & 1;
    }

    while (a5 != a4);

    v7 = v27;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_25BB9198C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_28154D3A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_28154D3B0 + 2) && (sub_25BAFEEEC(a1, a2, a3 & 1), (v10 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_31_10();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v11;
}

void sub_25BB91AA4()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB7D218);
  *(v0 + 4) = v3;
}

void sub_25BB91AF4()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB848C8);
  *(v0 + 4) = v3;
}

uint64_t sub_25BB91B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB8783C(a1, *v2);
  *a2 = result;
  return result;
}

void sub_25BB91C78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_25BB873E8(a1, *v2, v3 | *(v2 + 8), *(v2 + 16), a2);
}

void sub_25BB91CA0()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB877D4(v2, v1);
  *(v0 + 4) = v3;
}

uint64_t sub_25BB91D04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB87808(a1, *v2);
  *a2 = result;
  return result;
}

void sub_25BB91D34()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB7E2D0);
  *(v0 + 4) = v3;
}

void sub_25BB91D74()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB8619C);
  *(v0 + 4) = v3;
}

void sub_25BB91DBC()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(v3, v0, sizeof(v3));
  v1 = OUTLINED_FUNCTION_27_12();
  sub_25BB87528(v1, v2);
}

void sub_25BB91E4C()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(v3, v0, sizeof(v3));
  v1 = OUTLINED_FUNCTION_27_12();
  sub_25BB87284(v1, v2);
}

void sub_25BB91ED0()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(v3, v0, sizeof(v3));
  v1 = OUTLINED_FUNCTION_27_12();
  sub_25BB87650(v1, v2);
}

uint64_t sub_25BB92940(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_31_10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dynamic_cast_existential_1_conditional(v3, v3, a3);
}

void sub_25BB92A30()
{
  OUTLINED_FUNCTION_17_1();
  v9 = OUTLINED_FUNCTION_8_22(v2, v3, v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_11_23(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_37(v11, v12, v13, v14, v15, v16, v17, v18, v35);
  if (v1)
  {
    v20 = 0;
    v21 = OUTLINED_FUNCTION_13_17(v19) + 48;
    while (v20 < *(v38 + 16))
    {
      if (*(v21 - 16) == 1)
      {
        v22 = *(v0 + 16);
        sub_25BCB617C();
        if (!v22 || (v23 = OUTLINED_FUNCTION_12_18(), v25 = sub_25BA9266C(v23, v24), (v26 & 1) == 0))
        {

          sub_25BCB70FC();

          v33 = OUTLINED_FUNCTION_12_18();
          MEMORY[0x25F876C90](v33);

          MEMORY[0x25F876C90](11815, 0xE200000000000000);
          sub_25BB0A3A4();
          swift_allocError();
          *v34 = 0xD000000000000024;
          v34[1] = 0x800000025BCD9690;
          swift_willThrow();
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_22_14(v25);
        sub_25BB92CA4();
        if (v37)
        {

LABEL_13:

          goto LABEL_14;
        }

        v27 = OUTLINED_FUNCTION_1_30();
        v28(v27);
        OUTLINED_FUNCTION_7_22();
        OUTLINED_FUNCTION_17_18();
        swift_allocObject();
        OUTLINED_FUNCTION_6_30();
        v29 = type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_5_26(v29);
        sub_25BCB617C();

        v31 = OUTLINED_FUNCTION_4_28(v30);
        type metadata accessor for TensorHandle();
        v1 = swift_allocObject();
        *(v1 + 16) = v31;

        sub_25BAA6EB0();
        v0 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_30(isUniquelyReferenced_nonNull_native);
        OUTLINED_FUNCTION_21_15();
      }

      ++v20;
      v21 += 48;
      if (v1 == v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_16();
  }
}

void sub_25BB92CA4()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v0;
  v49 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = type metadata accessor for MILBlobStorageWriter(0);
  v6 = *(v5 + 20);
  v7 = *&v2[v6];
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v5;
  *&v2[v6] = v9;
  v11 = *&v2[*(type metadata accessor for MILBlobStorageWriter.BlobWriter(0) + 20)];
  v12 = v10[8];
  MEMORY[0x28223BE20](*&v2[v10[6]]);
  v44 = v2;
  v15 = sub_25BB93210(v13, sub_25BB943D4, v43, v14);
  v16 = *&v2[v10[7]];
  v17 = v15 + v16;
  if (__CFADD__(v15, v16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v15;
  v47 = v4;

  sub_25BB93920(&v47, v17, v46);
  if (!v1)
  {
    v47 = 0;
    v19 = [v11 seekToOffset:v18 error:&v47];
    v20 = v47;
    if (v19)
    {
      v21 = v47;
      sub_25BB93AF4(v46, v11);
      v47 = 0;
      v22 = [v11 seekToOffset:v17 error:&v47];
      v20 = v47;
      if (v22)
      {
        MEMORY[0x28223BE20](v22);
        v44 = v4;
        v45 = v11;
        v23 = v20;

        sub_25BAA82DC(sub_25BB943F0, v43, v24, v25, v26, v27, v28, v29, v43[0]);

        if ((BYTE8(v46[0]) & 0x3F) == 0)
        {
          v31 = *(&v46[0] + 1);
          goto LABEL_14;
        }

        v30 = 64 - (BYTE8(v46[0]) & 0x3F);
        v8 = __CFADD__(*(&v46[0] + 1), v30);
        v31 = *(&v46[0] + 1) + v30;
        if (!v8)
        {
LABEL_14:
          v33 = v31 - *(&v46[0] + 1);
          if (v31 >= *(&v46[0] + 1))
          {
            if (!v33)
            {
LABEL_18:
              sub_25BAFD030();
              v38 = *(*&v2[v12] + 16);
              sub_25BAFD190(v38);
              v39 = *&v2[v12];
              *(v39 + 16) = v38 + 1;
              v40 = (v39 + (v38 << 6));
              v41 = v46[1];
              v40[2] = v46[0];
              v40[3] = v41;
              v42 = v46[3];
              v40[4] = v46[2];
              v40[5] = v42;
              *&v2[v12] = v39;
              goto LABEL_12;
            }

            if ((v33 & 0x8000000000000000) == 0)
            {
              v47 = MEMORY[0x25F876260]();
              v48 = v34;
              sub_25BB94038(&v47, 0);
              v35 = v47;
              v36 = v48;
              v37 = sub_25BCB59FC();
              sub_25BB0D160(v35, v36);
              [v11 writeData_];

              goto LABEL_18;
            }

LABEL_22:
            __break(1u);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        __break(1u);
      }
    }

    v32 = v20;
    sub_25BCB58CC();

    swift_willThrow();
  }

LABEL_12:
  OUTLINED_FUNCTION_16();
}

void sub_25BB92F9C()
{
  OUTLINED_FUNCTION_17_1();
  v9 = OUTLINED_FUNCTION_8_22(v2, v3, v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_11_23(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_37(v11, v12, v13, v14, v15, v16, v17, v18, v35);
  if (v1)
  {
    v20 = 0;
    v21 = OUTLINED_FUNCTION_13_17(v19) + 48;
    while (v20 < *(v38 + 16))
    {
      if (*(v21 - 16) == 2)
      {
        v22 = *(v0 + 16);
        sub_25BCB617C();
        if (!v22 || (v23 = OUTLINED_FUNCTION_12_18(), v25 = sub_25BA9266C(v23, v24), (v26 & 1) == 0))
        {

          sub_25BCB70FC();

          v33 = OUTLINED_FUNCTION_12_18();
          MEMORY[0x25F876C90](v33);

          MEMORY[0x25F876C90](11815, 0xE200000000000000);
          sub_25BB0A3A4();
          swift_allocError();
          *v34 = 0xD000000000000020;
          v34[1] = 0x800000025BCD9660;
          swift_willThrow();
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_22_14(v25);
        sub_25BB92CA4();
        if (v37)
        {

LABEL_13:

          goto LABEL_14;
        }

        v27 = OUTLINED_FUNCTION_1_30();
        v28(v27);
        OUTLINED_FUNCTION_7_22();
        OUTLINED_FUNCTION_17_18();
        swift_allocObject();
        OUTLINED_FUNCTION_6_30();
        v29 = type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_5_26(v29);
        sub_25BCB617C();

        v31 = OUTLINED_FUNCTION_4_28(v30);
        type metadata accessor for TensorHandle();
        v1 = swift_allocObject();
        *(v1 + 16) = v31;

        sub_25BAA6EB0();
        v0 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_30(isUniquelyReferenced_nonNull_native);
        OUTLINED_FUNCTION_21_15();
      }

      ++v20;
      v21 += 48;
      if (v1 == v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_16();
  }
}

uint64_t sub_25BB93210(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _OWORD *), uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = a1;
  v7 = *(a4 + 16);
  for (i = (a4 + 32); v7; --v7)
  {
    v9 = i[1];
    v13[0] = *i;
    v13[1] = v9;
    v10 = i[3];
    v13[2] = i[2];
    v13[3] = v10;
    (a2)(&v12, &v14, v13, a3);
    if (v4)
    {
      break;
    }

    v6 = v12;
    v14 = v12;
    i += 4;
  }

  return v6;
}

uint64_t sub_25BB932A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 8);
  result = type metadata accessor for MILBlobStorageWriter(0);
  v9 = *(a3 + *(result + 28));
  v10 = __CFADD__(v6, v9);
  v11 = v6 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 0x3F) != 0)
    {
      v12 = 64 - (v7 & 0x3F);
      v10 = __CFADD__(v7, v12);
      v7 += v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v10 = __CFADD__(v11, v7);
    v13 = v11 + v7;
    if (!v10)
    {
      *a4 = v13;
      return result;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_25BB9332C()
{
  OUTLINED_FUNCTION_17_1();
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_25BCB595C();
  v9 = sub_25BCB633C();

  v10 = [v8 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    v11 = [v7 defaultManager];
    sub_25BCB593C();
    v12 = sub_25BCB592C();
    (*(v2 + 8))(v6, v0);
    v19[0] = 0;
    v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v19];

    if (v13)
    {
      v14 = v19[0];
      v15 = [v7 defaultManager];
      sub_25BCB595C();
      v16 = sub_25BCB633C();

      type metadata accessor for FileAttributeKey(0);
      sub_25BB944FC();
      v17 = sub_25BCB614C();
      sub_25BB9440C(v16, 0, v17, v15);
    }

    else
    {
      v18 = v19[0];
      sub_25BCB58CC();

      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BB93590()
{
  OUTLINED_FUNCTION_17_1();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v37 = v6;
  v38 = v5;
  v36 = v7;
  v39 = v8;
  v10 = v9;
  v42 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for MILBlobStorageWriter.BlobWriter(0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  sub_25BB0CE80();
  v19 = OUTLINED_FUNCTION_12_18();
  v20(v19);
  v21 = sub_25BB0AF90(v18);
  if (v0)
  {
  }

  else
  {
    v22 = v21;
    sub_25BB0CEC4(v10, v14);
    *(v14 + *(v11 + 20)) = v22;
    v23 = v22;
    v35(v14, v39, v36, v38, v37, v4, v34);
    v24 = type metadata accessor for MILBlobStorageWriter(0);
    v25 = *(v24 + 20);
    v26 = (v10 + v25);
    v27 = *(v14 + v25 + 16);
    *v26 = *(v14 + v25);
    v26[1] = v27;
    v28 = *(v14 + v25 + 48);
    v26[2] = *(v14 + v25 + 32);
    v26[3] = v28;
    *(v10 + *(v24 + 32)) = *(v14 + *(v24 + 32));
    sub_25BCB617C();

    v40 = 0;
    if ([v23 seekToOffset:0 error:&v40] & 1) != 0 && (v29 = v26[1], v41[0] = *v26, v41[1] = v29, v30 = v26[3], v41[2] = v26[2], v41[3] = v30, v31 = v40, sub_25BB93AF4(v41, v23), v40 = 0, (objc_msgSend(v23, sel_closeAndReturnError_, &v40)))
    {
      v32 = v40;
      sub_25BB94554(v14);
    }

    else
    {
      v33 = v40;
      sub_25BCB58CC();

      swift_willThrow();
      sub_25BB94554(v14);
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB93920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = Tensor.scalarType.getter(a1);
  result = sub_25BB93C9C(v6);
  if (result == 4)
  {
    sub_25BCB70FC();

    Tensor.scalarType.getter(v8);

    v9 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v9);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BB944A8();
    swift_allocError();
    *v10 = 0xD000000000000026;
    v10[1] = 0x800000025BCDD9A0;
    return swift_willThrow();
  }

  v11 = result;
  v12 = *(*(v5 + 16) + 152);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    v15 = 1;
    while (1)
    {
      v16 = *v14++;
      v17 = v15 * v16;
      if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
      {
        break;
      }

      v15 = v17;
      if (!--v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = 1;
LABEL_9:
  v18 = Tensor.scalarType.getter(result);
  v20 = v19;

  result = sub_25BC89FF4(v18, v20);
  v21 = v17 * result;
  if ((v17 * result) >> 64 != (v17 * result) >> 63)
  {
    goto LABEL_13;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    *a3 = -559038737;
    *(a3 + 4) = (v11 + 1);
    *(a3 + 8) = v21;
    *(a3 + 16) = a2;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25BB93AF4(uint64_t a1, void *a2)
{
  sub_25BCB588C();
  OUTLINED_FUNCTION_17_18();
  swift_allocObject();
  v8 = 0x4000000000;
  v9 = sub_25BCB585C();
  sub_25BB942B4(&v8, 0);
  v9 |= 0x4000000000000000uLL;
  sub_25BB93D58(&v8, a1);
  v4 = v8;
  v5 = v9;
  v6 = sub_25BCB59FC();
  [a2 writeData_];

  return sub_25BB0D160(v4, v5);
}

uint64_t sub_25BB93BC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(*(a3 + 16) + 152);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      v6 = 1;
      while (1)
      {
        v7 = *v5++;
        v8 = v6 * v7;
        if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
        {
          break;
        }

        v6 = v8;
        if (!--v4)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = 1;
LABEL_8:
      v9 = Tensor.scalarType.getter(result);
      result = sub_25BC89FF4(v9, v10);
      if ((v8 * result) >> 64 == (v8 * result) >> 63)
      {
        sub_25BB5C3B0();
        return sub_25BCB6CAC();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB93C9C(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  return 4;
}

uint64_t sub_25BB93D28()
{
  v1 = *v0;
  sub_25BCB617C();
  return v1;
}

uint64_t *sub_25BB93D58(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:
      v7 = v2 & 0x3FFFFFFFFFFFFFFFLL;

      sub_25BB0D160(v3, v2);
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      v8 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v8 < v3)
      {
        goto LABEL_15;
      }

      if (sub_25BCB584C() && __OFSUB__(v3, sub_25BCB587C()))
      {
        goto LABEL_16;
      }

      sub_25BCB588C();
      OUTLINED_FUNCTION_17_18();
      swift_allocObject();
      v11 = sub_25BCB583C();

      v7 = v11;
      v8 = v3 >> 32;
LABEL_10:
      if (v8 < v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_25BB93FC0(v3, v12, v8, v7, a2);

      v10 = v7 | 0x4000000000000000;
LABEL_12:
      *v5 = v3;
      v5[1] = v10;
      return result;
    case 2uLL:

      sub_25BB0D160(v3, v2);
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      sub_25BCB599C();
      result = sub_25BB93FC0(*(v3 + 16), v9, *(v3 + 24), v2 & 0x3FFFFFFFFFFFFFFFLL, a2);
      v10 = v2 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      result = sub_25BB0D160(*result, v2);
      v6 = *(a2 + 8) | (*(a2 + 12) << 32) | (*(a2 + 13) << 40) | (*(a2 + 14) << 48);
      *v5 = *a2;
      v5[1] = v6;
      return result;
  }
}

uint64_t sub_25BB93FC0(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  result = sub_25BCB584C();
  if (result)
  {
    v8 = result;
    result = sub_25BCB587C();
    if (!__OFSUB__(a1, result))
    {
      v9 = (v8 + a1 - result);
      result = sub_25BCB586C();
      v10 = a5[1];
      *v9 = *a5;
      v9[1] = v10;
      v11 = a5[3];
      v9[2] = a5[2];
      v9[3] = v11;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BB94038(uint64_t *result, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v2 = result[1];
  v4 = a2;
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:

      sub_25BB0D160(v3, v2);
      __b = v3;
      v21 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      result = sub_25BB942B4(&__b, v4);
      v6 = __b;
      v7 = v21 | 0x4000000000000000;
      goto LABEL_4;
    case 2uLL:
      v8 = a2;

      sub_25BB0D160(v3, v2);
      __b = v3;
      v21 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      sub_25BCB599C();
      v9 = v21;
      v10 = *(__b + 16);
      v11 = *(__b + 24);
      result = sub_25BCB584C();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = sub_25BCB587C();
      v14 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v15 = __OFSUB__(v11, v10);
      v16 = v11 - v10;
      if (v15)
      {
        goto LABEL_14;
      }

      v17 = sub_25BCB586C();
      if (v17 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      result = memset(v12 + v14, v8, v18);
      *v5 = __b;
      v5[1] = v9 | 0x8000000000000000;
      return result;
    case 3uLL:
      return result;
    default:
      __c = a2;
      sub_25BB0D160(v3, v2);
      __b = v3;
      LOWORD(v21) = v2;
      BYTE2(v21) = BYTE2(v2);
      BYTE3(v21) = BYTE3(v2);
      BYTE4(v21) = BYTE4(v2);
      BYTE5(v21) = BYTE5(v2);
      BYTE6(v21) = BYTE6(v2);
      result = memset(&__b, __c, BYTE6(v2));
      v6 = __b;
      v7 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
LABEL_4:
      *v5 = v6;
      v5[1] = v7;
      return result;
  }
}

uint64_t sub_25BB942B4(int *a1, int a2)
{
  result = sub_25BCB59CC();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25BCB584C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_25BCB587C();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_25BCB586C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_25BB9439C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_25BB9440C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for FileAttributeKey(0);
  sub_25BB944FC();
  v7 = sub_25BCB60FC();

  v8 = [a4 createFileAtPath:a1 contents:a2 attributes:v7];

  return v8;
}

unint64_t sub_25BB944A8()
{
  result = qword_27FBB5AA8;
  if (!qword_27FBB5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5AA8);
  }

  return result;
}

unint64_t sub_25BB944FC()
{
  result = qword_27FBB36B0;
  if (!qword_27FBB36B0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB36B0);
  }

  return result;
}

uint64_t sub_25BB94554(uint64_t a1)
{
  v2 = type metadata accessor for MILBlobStorageWriter.BlobWriter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BB945F8(uint64_t a1)
{
  result = type metadata accessor for MILBlobStorageWriter(319);
  if (v2 <= 0x3F)
  {
    result = sub_25BB0CE80();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25BB946A4(uint64_t a1)
{
  sub_25BCB598C();
  if (v1 <= 0x3F)
  {
    sub_25BB9473C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BB9473C()
{
  if (!qword_27FBB5AD0)
  {
    v0 = sub_25BCB68CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBB5AD0);
    }
  }
}

uint64_t sub_25BB9483C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25BAC27B0(a1, v50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  v11 = OUTLINED_FUNCTION_9_22(v4, v5, v6, MEMORY[0x277D83B88], v7, v8, v9, v10, v36);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v18 = v37;
    v19 = 1;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_9_22(v11, v12, v13, MEMORY[0x277D84DC8], v14, v15, v16, v17, v37);
    if (v20)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      v18 = v38;
      v19 = 2;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_9_22(v20, v21, v22, MEMORY[0x277D83A90], v23, v24, v25, v26, v38);
      if (v27)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        v18 = v39;
        v19 = 3;
      }

      else
      {
        if (!OUTLINED_FUNCTION_9_22(v27, v28, v29, MEMORY[0x277D839B0], v30, v31, v32, v33, v39))
        {
          sub_25BCB70FC();
          MEMORY[0x25F876C90](0xD000000000000025, 0x800000025BCDA730);
          sub_25BCB73CC();
          MEMORY[0x25F876C90](11872, 0xE200000000000000);
          BYTE4(v49) = 9;
          sub_25BA97890("init(_:)", 8, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/AttributeValue.swift", 102, 2, 147, v35, 0, 0xE000000000000000, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v50[4]);
        }

        __swift_destroy_boxed_opaque_existential_1(a1);
        v19 = 0;
        v18 = v40;
      }
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(v50);
  *a2 = v18;
  *(a2 + 8) = 0;
  *(a2 + 16) = v19;
  return result;
}

void *sub_25BB949D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, unsigned int a4@<S0>)
{
  result = (*(a2 + 32))(&v129);
  v8 = MEMORY[0x277D849A8];
  switch(v129)
  {
    case 1:
    case 2:
    case 3:
      if (OUTLINED_FUNCTION_10_19(&protocol witness table for Float) == v8)
      {
        OUTLINED_FUNCTION_13_18();
        v14 = &qword_27FBB4528;
        v15 = &unk_25BCC1A60;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_13_18();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_0_38(v9, v10, v11, MEMORY[0x277D849A8]))
      {
        goto LABEL_4;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      if (OUTLINED_FUNCTION_0_38(v27, v28, v29, v27))
      {
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_16_21();
        OUTLINED_FUNCTION_11_3();
        v13 = sub_25BCB6F8C();
LABEL_15:
        __swift_destroy_boxed_opaque_existential_1(v119);
        v12 = 0;
        goto LABEL_16;
      }

      if (OUTLINED_FUNCTION_2_31(v119, v30, v31, MEMORY[0x277D84DC8]))
      {
        sub_25BBF075C();
        if (BYTE4(v122))
        {
          OUTLINED_FUNCTION_8_23();
          OUTLINED_FUNCTION_4_29();
          v37 = 0x363174616F6C46;
          v38 = 0xE700000000000000;
LABEL_41:
          MEMORY[0x25F876C90](v37, v38);
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_15_17();
          MEMORY[0x25F876C90](a1 + 16, 0x800000025BCDDAC0);
          v75 = *(&v122 + 1);
          v74 = v122;
LABEL_42:
          v62 = sub_25BCB74CC("Fatal error", 11, 2, v74, v75, "Swift/Integers.swift", 20, 2, 2740);
          __break(1u);
LABEL_43:
          if (OUTLINED_FUNCTION_0_38(v62, v63, v64, MEMORY[0x277D839B0]))
          {
            v19 = 0;
            v20 = v122;
          }

          else
          {
            LOWORD(v20) = 0;
            v19 = 1;
          }

LABEL_68:
          __swift_destroy_boxed_opaque_existential_1(v126);
          *v126 = v20;
          BYTE2(v126[0]) = v19;
          v39 = &unk_27FBB5B08;
          v40 = &unk_25BCC4140;
LABEL_69:
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
          v96 = OUTLINED_FUNCTION_12_19(v94, v95, v94, MEMORY[0x277D84DC8]);
          if ((v96 & 1) == 0)
          {
            LOWORD(v122) = 0;
          }

          v25 = v122;
          result = __swift_destroy_boxed_opaque_existential_1(v127);
          if (v96)
          {
            v26 = 2;
            goto LABEL_73;
          }

          goto LABEL_83;
        }
      }

      else if (OUTLINED_FUNCTION_2_31(v119, v35, v36, MEMORY[0x277D83A90]))
      {
        sub_25BBF0614();
        if (BYTE4(v122))
        {
          OUTLINED_FUNCTION_8_23();
          OUTLINED_FUNCTION_4_29();
          v37 = 0x74616F6C46;
          v38 = 0xE500000000000000;
          goto LABEL_41;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_2_31(v119, v57, v58, MEMORY[0x277D839F8]) & 1) == 0)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          v82 = OUTLINED_FUNCTION_0_38(v79, v80, v81, v79);
          if ((v82 & 1) == 0)
          {
            if (OUTLINED_FUNCTION_0_38(v82, v83, v84, MEMORY[0x277D839B0]))
            {
              v12 = 0;
              v13 = v122;
            }

            else
            {
              v13 = 0;
              v12 = 1;
            }

            goto LABEL_16;
          }

          OUTLINED_FUNCTION_6_31();
          OUTLINED_FUNCTION_16_21();
          sub_25BB959AC();
          sub_25BCB744C();
          if ((v117 & 0x100000000) == 0)
          {
            v13 = v117;
            goto LABEL_15;
          }

          v117 = 0;
          v118 = 0xE000000000000000;
          sub_25BCB70FC();
          v114 = sub_25BCB7C1C();
          v116 = v115;
          MEMORY[0x25F876C90](v114);

          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_15_17();
          MEMORY[0x25F876C90](v116 + 16, 0x800000025BCDDAC0);
          v74 = 0;
          v75 = 0xE000000000000000;
          goto LABEL_42;
        }

        sub_25BBF0474(&v122, trunc(v119[0]));
        if (BYTE4(v122))
        {
          OUTLINED_FUNCTION_8_23();
          OUTLINED_FUNCTION_4_29();
          v37 = 0x656C62756F44;
          v38 = 0xE600000000000000;
          goto LABEL_41;
        }
      }

LABEL_4:
      v12 = 0;
      v13 = v122;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v126);
      LODWORD(v126[0]) = v13;
      BYTE4(v126[0]) = v12;
      v14 = &unk_27FBB5AF0;
      v15 = &unk_25BCC4130;
LABEL_17:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v34 = OUTLINED_FUNCTION_12_19(v32, v33, v32, MEMORY[0x277D849A8]);
      if ((v34 & 1) == 0)
      {
        LODWORD(v122) = 0;
      }

      v25 = v122;
      result = __swift_destroy_boxed_opaque_existential_1(v127);
      if ((v34 & 1) == 0)
      {
        goto LABEL_83;
      }

      v26 = 1;
LABEL_73:
      *a3 = v25;
      *(a3 + 8) = 0;
      *(a3 + 16) = v26;
      return result;
    case 8:
      if (OUTLINED_FUNCTION_10_19(&protocol witness table for Float) == MEMORY[0x277D84DC8])
      {
        OUTLINED_FUNCTION_13_18();
        v39 = &qword_27FBB4528;
        v40 = &unk_25BCC1A60;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_13_18();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_0_38(v16, v17, v18, MEMORY[0x277D84DC8]))
      {
        v19 = 0;
        v20 = *&v122;
        goto LABEL_68;
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_0_38(v43, v44, v45, v43))
      {
        sub_25BA97060(&v122, v119);
        v46 = __swift_project_boxed_opaque_existential_1(v119, v120);
        v47 = MEMORY[0x28223BE20](v46);
        (*(v49 + 16))(&v117 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
        sub_25BBF2A24();
        v20 = v50;
      }

      else
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        v62 = OUTLINED_FUNCTION_0_38(v59, v60, v61, v59);
        if (!v62)
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_6_31();
        v65 = OUTLINED_FUNCTION_16_21();
        v66 = *(v8 - 8);
        v67 = MEMORY[0x28223BE20](v65);
        v69 = &v117 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v66 + 16))(v69, v67);
        OUTLINED_FUNCTION_11_3();
        if (sub_25BCB6F9C() <= 64)
        {
          OUTLINED_FUNCTION_11_3();
          v85 = sub_25BCB6FAC();
          OUTLINED_FUNCTION_11_3();
          v86 = sub_25BCB6F8C();
          (*(v66 + 8))(v69, v8);
          if (v85)
          {
            v20 = v86;
          }

          else
          {
            v20 = v86;
          }
        }

        else
        {
          sub_25BB95A00();
          sub_25BB95A54();
          sub_25BCB60DC();
          (*(v66 + 8))(v69, v8);
          v20 = *&v117;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v119);
      v19 = 0;
      goto LABEL_68;
    case 10:
      v25 = a4;
      v26 = 3;
      goto LABEL_73;
    case 12:
      if (OUTLINED_FUNCTION_10_19(&protocol witness table for Float) == MEMORY[0x277D839B0])
      {
        OUTLINED_FUNCTION_13_18();
        v41 = &qword_27FBB4528;
        v42 = &unk_25BCC1A60;
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_13_18();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_0_38(v21, v22, v23, MEMORY[0x277D839B0]))
      {
        v24 = v122;
        goto LABEL_59;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      v54 = OUTLINED_FUNCTION_0_38(v51, v52, v53, v51);
      if (v54)
      {
        OUTLINED_FUNCTION_6_31();
        OUTLINED_FUNCTION_16_21();
        v24 = (sub_25BCB61FC() & 1) == 0;
        __swift_destroy_boxed_opaque_existential_1(v119);
        goto LABEL_59;
      }

      v70 = OUTLINED_FUNCTION_0_38(v54, v55, v56, MEMORY[0x277D84900]);
      if (v70)
      {
        goto LABEL_37;
      }

      v76 = OUTLINED_FUNCTION_0_38(v70, v71, v72, MEMORY[0x277D84958]);
      if (v76)
      {
        goto LABEL_46;
      }

      v87 = OUTLINED_FUNCTION_0_38(v76, v77, v78, MEMORY[0x277D849A8]);
      if (v87)
      {
        goto LABEL_54;
      }

      v97 = OUTLINED_FUNCTION_0_38(v87, v88, v89, MEMORY[0x277D83B88]);
      if (v97)
      {
        goto LABEL_76;
      }

      v100 = OUTLINED_FUNCTION_0_38(v97, v98, v99, MEMORY[0x277D84A28]);
      if (v100)
      {
        goto LABEL_76;
      }

      v103 = OUTLINED_FUNCTION_0_38(v100, v101, v102, MEMORY[0x277D84B78]);
      if (v103)
      {
LABEL_37:
        v73 = v122;
      }

      else
      {
        v106 = OUTLINED_FUNCTION_0_38(v103, v104, v105, MEMORY[0x277D84C58]);
        if (v106)
        {
LABEL_46:
          v73 = v122;
        }

        else
        {
          v109 = OUTLINED_FUNCTION_0_38(v106, v107, v108, MEMORY[0x277D84CC0]);
          if (!v109)
          {
            if (!OUTLINED_FUNCTION_0_38(v109, v110, v111, MEMORY[0x277D84D38]))
            {
              v24 = 2;
              goto LABEL_59;
            }

LABEL_76:
            v90 = v122 == 0;
LABEL_56:
            v24 = !v90;
LABEL_59:
            __swift_destroy_boxed_opaque_existential_1(v126);
            LOBYTE(v126[0]) = v24;
            v41 = &unk_27FBB5B00;
            v42 = &unk_25BCC4138;
LABEL_60:
            v91 = __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
            if ((OUTLINED_FUNCTION_12_19(v91, v92, v91, MEMORY[0x277D839B0]) & 1) == 0)
            {
              LOBYTE(v122) = 2;
            }

            v93 = v122;
            result = __swift_destroy_boxed_opaque_existential_1(v127);
            if (v93 != 2)
            {
              v26 = 0;
              v25 = v93 & 1;
              goto LABEL_73;
            }

LABEL_83:
            v127[0] = 0;
            v127[1] = 0xE000000000000000;
            sub_25BCB70FC();
            MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDD9D0);
            sub_25BCB69CC();
            MEMORY[0x25F876C90](0x707974206F742060, 0xEB00000000602065);
            v112 = sub_25BCB7C1C();
            MEMORY[0x25F876C90](v112);

            MEMORY[0x25F876C90](96, 0xE100000000000000);
            v128 = 9;
            sub_25BA97890("init(coercing:scalarType:)", 26, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/AttributeValue.swift", 102, 2, 83, v113, v117, v118, *&v119[0], *&v119[1], *&v119[2], v120, v121, v122, *(&v122 + 1), v123, v124, v125, v126[0], v126[1], v126[2], v126[3]);
          }

LABEL_54:
          v73 = v122;
        }
      }

      v90 = v73 == 0;
      goto LABEL_56;
    default:
      goto LABEL_83;
  }
}

uint64_t sub_25BB95470(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_31;
      }

      v39 = OUTLINED_FUNCTION_110();
      v41 = OUTLINED_FUNCTION_3_20(v39, v40, 1);
      v43 = 1;
      goto LABEL_26;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_31;
      }

      v24 = OUTLINED_FUNCTION_110();
      v26 = OUTLINED_FUNCTION_3_20(v24, v25, 2);
      sub_25BB06134(v26, v27, 2);
      v28 = *&v2 == *&v5;
      goto LABEL_27;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_31;
      }

      v29 = OUTLINED_FUNCTION_110();
      v31 = OUTLINED_FUNCTION_3_20(v29, v30, 3);
      sub_25BB06134(v31, v32, 3);
      v28 = *&v2 == *&v5;
      goto LABEL_27;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_30;
      }

      v12 = *a1;
      if (v2 != v5 || v3 != a2[1])
      {
        v14 = sub_25BCB789C();
        v15 = OUTLINED_FUNCTION_24_1();
        v17 = OUTLINED_FUNCTION_1_31(v15, v16, 4);
        v19 = OUTLINED_FUNCTION_1_31(v17, v18, 4);
        v21 = OUTLINED_FUNCTION_3_20(v19, v20, 4);
        v23 = 4;
        goto LABEL_22;
      }

      v77 = OUTLINED_FUNCTION_1_31(v12, v3, 4);
      v79 = OUTLINED_FUNCTION_1_31(v77, v78, 4);
      sub_25BB06134(v79, v80, 4);
      v81 = OUTLINED_FUNCTION_110();
      sub_25BB06134(v81, v82, 4);
      v11 = 1;
      goto LABEL_32;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_30;
      }

      v14 = sub_25BAB5C48(*a1, *a2);
      v44 = OUTLINED_FUNCTION_24_1();
      v46 = OUTLINED_FUNCTION_1_31(v44, v45, 5);
      v48 = OUTLINED_FUNCTION_1_31(v46, v47, 5);
      v21 = OUTLINED_FUNCTION_3_20(v48, v49, 5);
      v23 = 5;
      goto LABEL_22;
    case 6:
      if (v6 != 6)
      {
        goto LABEL_30;
      }

      v14 = sub_25BC6FEC4(*a1, *a2);
      v50 = OUTLINED_FUNCTION_24_1();
      v52 = OUTLINED_FUNCTION_1_31(v50, v51, 6);
      v54 = OUTLINED_FUNCTION_1_31(v52, v53, 6);
      v21 = OUTLINED_FUNCTION_3_20(v54, v55, 6);
      v23 = 6;
      goto LABEL_22;
    case 7:
      if (v6 != 7)
      {
LABEL_30:
        sub_25BCB617C();
        goto LABEL_31;
      }

      v14 = sub_25BAB5C48(*a1, *a2);
      v33 = OUTLINED_FUNCTION_24_1();
      v35 = OUTLINED_FUNCTION_1_31(v33, v34, 7);
      v37 = OUTLINED_FUNCTION_1_31(v35, v36, 7);
      v21 = OUTLINED_FUNCTION_3_20(v37, v38, 7);
      v23 = 7;
LABEL_22:
      sub_25BB06134(v21, v22, v23);
      result = v14 & 1;
      break;
    case 8:
      if (v6 == 8)
      {
        v57 = OUTLINED_FUNCTION_24_1();
        v59 = OUTLINED_FUNCTION_1_31(v57, v58, 8);
        sub_25BB060F0(v59, v60, 8);
        v61 = OUTLINED_FUNCTION_24_1();
        v63 = OUTLINED_FUNCTION_1_31(v61, v62, 8);
        v65 = OUTLINED_FUNCTION_1_31(v63, v64, 8);
        v67 = OUTLINED_FUNCTION_3_20(v65, v66, 8);
        sub_25BB06134(v67, v68, 8);
        v69 = OUTLINED_FUNCTION_110();
        v41 = OUTLINED_FUNCTION_3_20(v69, v70, 8);
        v43 = 8;
LABEL_26:
        sub_25BB06134(v41, v42, v43);
        v28 = v2 == v5;
LABEL_27:
        v11 = v28;
      }

      else
      {
        swift_unknownObjectRetain();
LABEL_31:
        v71 = OUTLINED_FUNCTION_24_1();
        v73 = OUTLINED_FUNCTION_1_31(v71, v72, v6);
        v75 = OUTLINED_FUNCTION_3_20(v73, v74, v4);
        sub_25BB06134(v75, v76, v6);
        v11 = 0;
      }

LABEL_32:
      result = v11 & 1;
      break;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_31;
      }

      v7 = OUTLINED_FUNCTION_110();
      v9 = OUTLINED_FUNCTION_3_20(v7, v8, 0);
      sub_25BB06134(v9, v10, 0);
      v11 = v5 ^ v2 ^ 1;
      goto LABEL_32;
  }

  return result;
}

uint64_t sub_25BB9574C(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
    case 8:
      result = MEMORY[0x25F878200](v2);
      break;
    case 2:
      result = sub_25BCB79FC();
      break;
    case 3:
      result = sub_25BCB7A0C();
      break;
    case 4:

      result = sub_25BCB625C();
      break;
    case 5:
      v6 = *(v2 + 16);
      result = MEMORY[0x25F878200](v6);
      if (v6)
      {
        v7 = (v2 + 32);
        do
        {
          v8 = *v7++;
          result = MEMORY[0x25F878200](v8);
          --v6;
        }

        while (v6);
      }

      break;
    case 6:
      v4 = *(v2 + 16);
      result = MEMORY[0x25F878200](v4);
      if (v4)
      {
        v5 = v2 + 32;
        do
        {
          v5 += 4;
          result = sub_25BCB7A0C();
          --v4;
        }

        while (v4);
      }

      break;
    case 7:
      v9 = *(v2 + 16);
      result = MEMORY[0x25F878200](v9);
      if (v9)
      {
        v10 = (v2 + 32);
        do
        {
          v11 = *v10++;
          result = MEMORY[0x25F878200](v11);
          --v9;
        }

        while (v9);
      }

      break;
    default:
      result = sub_25BCB79EC();
      break;
  }

  return result;
}

uint64_t sub_25BB958A4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25BCB79CC();
  sub_25BB9574C(v3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB95900(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_25BCB79CC();
  sub_25BB9574C(v4);
  return sub_25BCB7A3C();
}

unint64_t sub_25BB95958()
{
  result = qword_27FBB5AD8;
  if (!qword_27FBB5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5AD8);
  }

  return result;
}

unint64_t sub_25BB959AC()
{
  result = qword_27FBB5AF8;
  if (!qword_27FBB5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5AF8);
  }

  return result;
}

unint64_t sub_25BB95A00()
{
  result = qword_27FBB5B10;
  if (!qword_27FBB5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5B10);
  }

  return result;
}

unint64_t sub_25BB95A54()
{
  result = qword_27FBB5B18;
  if (!qword_27FBB5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5B18);
  }

  return result;
}

uint64_t sub_25BB95AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BB95AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BB95B6C()
{
  if (qword_28154F9D0 != -1)
  {
    swift_once();
  }

  return dword_281557408;
}

uint64_t sub_25BB95BE8(uint64_t a1)
{
  result = sub_25BB95C70(&qword_28154F720, &unk_25BCC42EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB95C2C(uint64_t a1)
{
  result = sub_25BB95C70(qword_28154F728, &unk_25BCC42A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB95C70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InputOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB95CB0@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    if (a1)
    {
      LOBYTE(v7) = 13;
      sub_25BCB617C();
      Tensor.init(stacking:alongAxis:scalarType:)();
      v5 = &unk_286D423B0;
      v6 = v8;
      Tensor.reshaped(to:)(&v5, &v7);

      v6 = v7;
      Tensor.sum(squeezingAxes:)(a3, &unk_286D423D8);
    }

    else
    {
      sub_25BCB617C();
      Tensor.init(stacking:alongAxis:scalarType:)();
      v6 = &unk_286D42360;
      v7 = v8;
      Tensor.reshaped(to:)(&v6, &v5);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  else
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000020, 0x800000025BCDDC10, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Training.swift", 98, 2, 32);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB95E1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = (v1 + 8);
  v4 = *(v1 + 8);
  if (!*(v4 + 16))
  {
    goto LABEL_4;
  }

  v5 = sub_25BAB5C48(*(*(*(v4 + 32) + 16) + 152), *(*(v2 + 16) + 152));
  if (v5)
  {
    v6 = Tensor.scalarType.getter(v5);
    if (v6 == Tensor.scalarType.getter(v6))
    {
LABEL_4:

      sub_25BAB3120();
      v7 = *(*v3 + 16);
      result = sub_25BAB6E4C(v7);
      v9 = *v3;
      *(v9 + 16) = v7 + 1;
      *(v9 + 8 * v7 + 32) = v2;
      *v3 = v9;
      return result;
    }

    v10 = 49;
  }

  else
  {
    v10 = 48;
  }

  result = sub_25BCB74CC("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Training.swift", 98, 2, v10);
  __break(1u);
  return result;
}

int *sub_25BB95F20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  result = type metadata accessor for TrainingLoop(0, a10, a11, v19);
  *(a9 + result[9]) = a2;
  v21 = (a9 + result[10]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + result[11]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[12]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t sub_25BB95FF0(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v33 - v7;
  v9 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v13);
  v39 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v41 = v3;
  v44 = swift_getAssociatedTypeWitness();
  v15 = *(v44 - 8);
  v16 = MEMORY[0x28223BE20](v44);
  v42 = a1;
  v43 = &v33 - v17;
  v18 = v1 + *(a1 + 40);
  v19 = *v18;
  v37 = *(v18 + 8);
  v38 = v19;
  v20 = (v19)(1, v16);
  v21 = v1;
  if (v20)
  {
    v36 = *(v1 + v42[9]);
    v22 = v12 + 16;
    v23 = *(v12 + 16);
    v24 = (v6 + 32);
    v25 = (v6 + 8);
    v34 = (v15 + 8);
    v35 = v23;
    v26 = 1;
    v27 = 1;
    v33 = v22;
    while (2)
    {
      if (v36)
      {
        v26 = 1;
      }

      v28 = v21;
      v35(v39, v21, v40);
      sub_25BCB655C();
      swift_getAssociatedConformanceWitness();
      while (1)
      {
        sub_25BCB6EDC();
        if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        (*v24)(v8, v11, AssociatedTypeWitness);
        v29 = (*(v28 + v42[12]))(v27, v26, v8);
        result = (*v25)(v8, AssociatedTypeWitness);
        if ((v29 & 1) == 0)
        {
          (*v34)(v43, v44);
          v21 = v28;
          return (*(*(v42 - 1) + 8))(v21);
        }

        v31 = __OFADD__(v26++, 1);
        if (v31)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }
      }

      (*v34)(v43, v44);
      result = (*(v28 + v42[11]))(v27);
      v21 = v28;
      if ((result & 1) == 0)
      {
        return (*(*(v42 - 1) + 8))(v21);
      }

      v31 = __OFADD__(v27++, 1);
      if (v31)
      {
        goto LABEL_17;
      }

      v32 = v38(v27);
      v21 = v28;
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  return (*(*(v42 - 1) + 8))(v21);
}

double EvaluationResults.loss.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t TrainingCount.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = 0x207368636F7045;
  }

  else
  {
    v1 = 0x207370657453;
  }

  v4 = v1;
  v2 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v2);

  return v4;
}

uint64_t TrainingAction.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t train<A, B, C, D>(_:on:using:count:evaluatingOn:criterion:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v73 = a8;
  v74 = a6;
  v75 = a7;
  v76 = a1;
  v71 = a3;
  v72 = a2;
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v77 = v19;
  v78 = v18;
  MEMORY[0x28223BE20](v18);
  v80 = &v63 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  v33 = MEMORY[0x28223BE20](v31);
  v34 = &v63 - v32;
  v70 = *a4;
  v35 = *(a4 + 8);
  v79 = v24;
  v36 = *(v24 + 16);
  v69 = v35;
  if ((v35 & 1) == 0)
  {
    v37 = a5;
    v36(&v63 - v32, a5, v22, v33);
    OUTLINED_FUNCTION_4_30(v34);
    if (v38)
    {
      (*(v79 + 8))(v34, v22);
    }

    else
    {
      v39 = v34[*(TupleTypeMetadata2 + 48) + 8];
      OUTLINED_FUNCTION_2_32();
      (*(v40 + 8))(v34, a11);
      v38 = v39 == 1;
      a5 = v37;
      if (v38)
      {
        result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000005ELL, 0x800000025BCDDBB0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Training.swift", 98, 2, 263);
        __break(1u);
        return result;
      }
    }
  }

  v36(v30, a5, v22, v33);
  OUTLINED_FUNCTION_4_30(v30);
  if (v38)
  {
    (*(v79 + 8))(v30, v22);
    v43 = 1;
    v42 = v80;
  }

  else
  {
    OUTLINED_FUNCTION_2_32();
    v42 = v80;
    (*(v41 + 32))(v80, v30, a11);
    v43 = 0;
  }

  v67 = a15;
  v68 = a16;
  v65 = a13;
  v66 = a14;
  v64 = a12;
  __swift_storeEnumTagSinglePayload(v42, v43, 1, a11);
  (v36)(v27, a5, v22);
  OUTLINED_FUNCTION_4_30(v27);
  if (v38)
  {
    (*(v79 + 8))(v27, v22);
    v45 = 0;
    v46 = -1;
  }

  else
  {
    v44 = &v27[*(TupleTypeMetadata2 + 48)];
    v45 = *v44;
    v46 = v44[8];
    OUTLINED_FUNCTION_2_32();
    (*(v47 + 8))(v27, a11);
  }

  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = MEMORY[0x277D84F90];
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  MEMORY[0x28223BE20](v49);
  *(&v63 - 22) = a10;
  *(&v63 - 21) = a11;
  v50 = v65;
  *(&v63 - 20) = v64;
  *(&v63 - 19) = v50;
  v51 = v67;
  *(&v63 - 18) = v66;
  *(&v63 - 17) = v51;
  v53 = v71;
  v52 = v72;
  *(&v63 - 16) = v68;
  *(&v63 - 15) = v53;
  *(&v63 - 14) = v52;
  v54 = v69;
  *(&v63 - 104) = v69;
  v55 = v70;
  *(&v63 - 12) = v56;
  *(&v63 - 11) = v55;
  *(&v63 - 80) = v54;
  v57 = v73;
  v58 = v74;
  *(&v63 - 9) = v48;
  *(&v63 - 8) = v57;
  v59 = v80;
  *(&v63 - 7) = a9;
  *(&v63 - 6) = v59;
  *(&v63 - 5) = v45;
  *(&v63 - 32) = v46;
  v60 = v75;
  *(&v63 - 3) = v58;
  v62 = v60;
  sub_25BAB2F30();

  return (*(v77 + 8))(v59, v78);
}

BOOL sub_25BB96A4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_25BCB6E8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  swift_beginAccess();
  if (*(a2 + 16) == 2)
  {
    return 0;
  }

  (*(v14 + 16))(v16, a3, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, a7);
  (*(v14 + 8))(v16, v13);
  if (EnumTagSinglePayload == 1 || ~a5 == 0)
  {
    return 0;
  }

  if (!v18)
  {
    if ((a5 & 1) == 0)
    {
      if (a4 != -1)
      {
        if (!a4)
        {
          return v17 == 0;
        }

        return v17 % a4 == 0;
      }

      return 1;
    }

    return 0;
  }

  if ((a5 & 1) == 0)
  {
    return 0;
  }

  if (a4 == -1)
  {
    return 1;
  }

  if (!a4)
  {
    return v17 == 0;
  }

  return v17 % a4 == 0;
}

uint64_t sub_25BB96D28(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v87 = a5;
  v88 = a8;
  v97 = a4;
  v98 = a7;
  v85 = a6;
  v82 = a3;
  v75 = a2;
  v79 = a1;
  v91 = a14;
  v93 = a13;
  v94 = a12;
  v95 = a11;
  v103 = a22;
  v100 = a21;
  v78 = a15;
  v99 = a9;
  v101 = a16;
  v102 = a19;
  v86 = a20;
  v89 = a10;
  v90 = a18;
  v96 = sub_25BCB6E8C();
  v104 = *(v96 - 8);
  v84 = v104[8];
  MEMORY[0x28223BE20](v96);
  v92 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  v73 = &v70 - v24;
  v26 = *(a17 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v29;
  v81 = type metadata accessor for TrainingLoop(0, a17, a20, v30);
  v80 = *(v81 - 8);
  v31 = MEMORY[0x28223BE20](v81);
  v77 = &v70 - v32;
  v33 = *(v26 + 16);
  v83 = a17;
  v33(v29, v75, a17, v31);
  v34 = swift_allocObject();
  v35 = v98;
  v37 = v87;
  v36 = v88;
  *(v34 + 16) = v97;
  *(v34 + 24) = v37;
  v85 &= 1u;
  *(v34 + 32) = v85;
  *(v34 + 40) = v35;
  *(v34 + 48) = v36;
  *(v34 + 56) = a9;
  v38 = v104;
  v75 = v104[2];
  v75(v25, v89, v96);
  v39 = *(v38 + 80);
  v70 = (v39 + 120) & ~v39;
  v72 = (v70 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + v84 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v102;
  *(v41 + 16) = v101;
  *(v41 + 24) = a17;
  v43 = v90;
  *(v41 + 32) = v90;
  *(v41 + 40) = v42;
  v44 = v100;
  *(v41 + 48) = v86;
  *(v41 + 56) = v44;
  *(v41 + 64) = v103;
  *(v41 + 72) = v37;
  *(v41 + 80) = v85;
  v45 = v97;
  *(v41 + 88) = v97;
  *(v41 + 96) = v36;
  *(v41 + 104) = v99;
  *(v41 + 112) = v35;
  v46 = v104[4];
  v104 += 4;
  v74 = v46;
  v47 = v96;
  v46(v41 + v70, v73, v96);
  v48 = v41 + v72;
  *v48 = v95;
  *(v48 + 8) = v94;
  v49 = v92;
  *(v41 + v71) = v93;
  v50 = (v41 + v40);
  v51 = v78;
  *v50 = v91;
  v50[1] = v51;
  v75(v49, v89, v47);
  v52 = (v39 + 152) & ~v39;
  v53 = (v84 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v102;
  v56 = v83;
  *(v54 + 16) = v101;
  *(v54 + 24) = v56;
  *(v54 + 32) = v43;
  *(v54 + 40) = v55;
  v57 = v86;
  v58 = v100;
  *(v54 + 48) = v86;
  *(v54 + 56) = v58;
  *(v54 + 64) = v103;
  *(v54 + 72) = v45;
  v59 = v88;
  *(v54 + 80) = v87;
  *(v54 + 88) = v85;
  v60 = v99;
  *(v54 + 96) = v98;
  *(v54 + 104) = v59;
  v61 = v92;
  v62 = v93;
  *(v54 + 112) = v60;
  *(v54 + 120) = v62;
  v63 = v91;
  *(v54 + 128) = v79;
  *(v54 + 136) = v63;
  *(v54 + 144) = v51;
  v74(v54 + v52, v61, v96);
  v64 = v54 + v53;
  *v64 = v95;
  *(v64 + 8) = v94;
  v69 = v56;
  v65 = v77;
  sub_25BB95F20(v76, v82, sub_25BB99248, v34, sub_25BB9925C, v41, sub_25BB99370, v54, v77, v69, v57);

  v66 = v99;
  sub_25BA9D8C4(v59, v99);
  v67 = v98;
  swift_retain_n();

  sub_25BA9D8C4(v59, v66);

  sub_25BA9D8C4(v59, v66);

  sub_25BB981AC(v59, v66, v65, v67, v101, v83, v90, v102, v57);
  return (*(v80 + 8))(v65, v81);
}

BOOL sub_25BB97350(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(void *__return_ptr, void *))
{
  swift_beginAccess();
  v12 = *(a2 + 16);
  result = v12 != 2;
  if (v12 != 2 && (a4 & 1) != 0)
  {
    if (a3 >= a1)
    {
      swift_beginAccess();
      *(a5 + 24) = MEMORY[0x277D84F90];

      if (a6)
      {
        v16[0] = a1;
        v16[1] = 0x1000000000000000;
        a6(v15, v16);
        v14 = v15[0];
      }

      else
      {
        v14 = 0;
      }

      swift_beginAccess();
      *(a2 + 16) = v14;
      swift_beginAccess();
      return *(a2 + 16) != 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_25BB97468(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *__return_ptr, uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void (*a12)(__int128 *__return_ptr, char *, char *), uint64_t a13, uint64_t a14, void (**a15)(char *, uint64_t), uint64_t a16, uint64_t a17, uint64_t (**a18)(char *, char *, uint64_t), uint64_t a19, uint64_t a20)
{
  v73 = a6;
  v74 = a8;
  v75 = a5;
  v23 = a1;
  v24 = a14;
  v72 = *(a14 - 8);
  MEMORY[0x28223BE20](a1);
  v71 = &v60[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_25BCB6E8C();
  MEMORY[0x28223BE20](v26);
  v28 = &v60[-v27];
  v29 = *(a15 - 1);
  MEMORY[0x28223BE20](v30);
  v34 = &v60[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v65 = v32;
  v66 = v31;
  v64 = v34;
  v35 = a20;
  v36 = a17;
  v68 = a18;
  v69 = a16;
  v70 = a19;
  v37 = a10;
  v67 = a9;
  swift_beginAccess();
  if (*(a4 + 16) != 1 && v75)
  {
    swift_beginAccess();
    v62 = a4;
    v38 = *(a7 + 16);
    v39 = *(a7 + 24);
    v63 = v29;
    v61 = a10;
    v40 = v23;
    v41 = v75;
    v42 = v73;
    sub_25BA9D8C4(v75, v73);
    sub_25BCB617C();
    v43 = v38;
    v35 = a20;
    v36 = a17;
    v24 = a14;
    a4 = v62;
    sub_25BB95CB0(v43, v39, &v77);

    v44 = v77 | 0x2000000000000000;
    v77 = v40;
    v78 = v44;
    v41(&v76, &v77);
    v45 = v41;
    v23 = v40;
    v37 = v61;
    v46 = v42;
    v29 = v63;
    sub_25BA9D148(v45, v46);
    sub_25BB99174(v77, v78);
    LOBYTE(v39) = v76;
    swift_beginAccess();
    *(a4 + 16) = v39;
  }

  v77 = v23;
  LOBYTE(v78) = 1;
  v47 = v74;
  if (sub_25BB96A4C(&v77, a4, v74, v67, v37, v24, a15))
  {
    v48 = v65;
    v49 = v47;
    v50 = v66;
    (*(v65 + 16))(v28, v49, v66);
    if (__swift_getEnumTagSinglePayload(v28, 1, a15) == 1)
    {
      (*(v48 + 8))(v28, v50);
    }

    else
    {
      v74 = a13;
      v66 = v35;
      v67 = v36;
      v52 = v29;
      v53 = v64;
      (*(v29 + 32))(v64, v28, a15);
      v55 = v71;
      v54 = v72;
      (*(v72 + 16))(v71, a11, v24);
      v56 = swift_allocObject();
      v57 = v75;
      v58 = v73;
      v56[2] = v75;
      v56[3] = v58;
      v56[4] = a4;
      sub_25BA9D8C4(v57, v58);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

      sub_25BB98794(sub_25BB99A20, v56, v53, v55, a12, v74, v24, a15, v67, AssociatedConformanceWitness, v68, v66);

      (*(v54 + 8))(v55, v24);
      (*(v52 + 8))(v53, a15);
    }
  }

  swift_beginAccess();
  return *(a4 + 16) != 2;
}

BOOL sub_25BB979D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t *), uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(__int128 *__return_ptr, char *, char *), uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, void (**a18)(char *, uint64_t), uint64_t a19, uint64_t a20, uint64_t (**a21)(char *, char *, uint64_t), uint64_t a22, uint64_t a23)
{
  v71 = a3;
  v72 = a8;
  v28 = *(a17 - 8);
  MEMORY[0x28223BE20](a1);
  v69 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_25BCB6E8C();
  v70 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v54 - v31;
  v68 = *(a18 - 1);
  MEMORY[0x28223BE20](v33);
  v67 = (&v54 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = 0;
  if (*(a4 + 16) == 2 || !(a6 & 1 | (a5 >= a2)))
  {
    return result;
  }

  swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    return 1;
  }

  v66 = a19;
  v59 = a16;
  v58 = a15;
  v60 = a14;
  v36 = a13;
  v57 = a12;
  v56 = a10;
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    *(a7 + 24) = MEMORY[0x277D84F90];
  }

  v61 = v28;
  v65 = a23;
  v63 = a22;
  v62 = a21;
  v64 = a20;
  v55 = a9;
  if (v72)
  {
    v76 = a2;
    v77 = 0x3000000000000000;
    v72(v75, &v76);
    v37 = LOBYTE(v75[0]);
    if (LOBYTE(v75[0]) == 1)
    {
LABEL_16:
      swift_beginAccess();
      v41 = *(a4 + 16);
      goto LABEL_17;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = v71;
  v71 = a13;
  sub_25BB9805C(v56, v38, a11, v57, a13, a17, v66, v64, &v76, v63, v65);
  v39 = v76;
  swift_beginAccess();
  v75[0] = v39;
  sub_25BB95E1C(v75);
  swift_endAccess();
  v40 = v72;
  if (v72)
  {
    v76 = a2;
    v77 = v39 | 0x4000000000000000;

    v40(v75, &v76);

    sub_25BB99174(v76, v77);
    v37 = LOBYTE(v75[0]);
  }

  else
  {
  }

  v36 = v71;
  if (v37 != 2)
  {
    goto LABEL_16;
  }

  v41 = 2;
LABEL_17:
  swift_beginAccess();
  *(a4 + 16) = v41;
  v73 = a2;
  v74 = 0;
  v42 = v60;
  v43 = sub_25BB96A4C(&v73, a4, v60, v58, v59, a17, a18);
  v44 = v61;
  if (v43)
  {
    v45 = v70;
    (*(v70 + 16))(v32, v42, v30);
    if (__swift_getEnumTagSinglePayload(v32, 1, a18) == 1)
    {
      (*(v45 + 8))(v32, v30);
    }

    else
    {
      v46 = v68;
      v47 = v67;
      (*(v68 + 32))(v67, v32, a18);
      v48 = v69;
      (*(v44 + 16))(v69, v56, a17);
      v49 = swift_allocObject();
      v50 = v72;
      v51 = v55;
      v49[2] = v72;
      v49[3] = v51;
      v49[4] = a4;
      sub_25BA9D8C4(v50, v51);
      v52 = v36;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

      sub_25BB98794(sub_25BB99484, v49, v47, v48, v57, v52, a17, a18, v64, AssociatedConformanceWitness, v62, v65);

      (*(v44 + 8))(v48, a17);
      (*(v46 + 8))(v47, a18);
    }
  }

  swift_beginAccess();
  return *(a4 + 16) != 2;
}

void sub_25BB9805C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v18 = objc_autoreleasePoolPush();
  sub_25BB98368(a1, a2, a4, a5, a3, a6, a7, a8, x8_0, a9, a10);

  objc_autoreleasePoolPop(v18);
}

uint64_t sub_25BB9810C@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (!a2)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v10 = *a1;
  a2(v9, &v10);
  v6 = v9[0];
  if (LOBYTE(v9[0]) != 2)
  {
LABEL_5:
    swift_beginAccess();
    v7 = *(a3 + 16);
    goto LABEL_6;
  }

  v7 = 2;
LABEL_6:
  result = swift_beginAccess();
  *(a3 + 16) = v7;
  *a4 = v6;
  return result;
}

uint64_t sub_25BB981AC(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = type metadata accessor for TrainingLoop(0, a6, a9, a4);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  if (a1)
  {
    v23 = xmmword_25BCC4310;

    a1(&v21, &v23);
    if (!v21)
    {
      (*(v14 + 16))(v17, a3, v13);
      sub_25BB95FF0(v13);
    }

    swift_beginAccess();
    v18 = *(a4 + 16);
    v19 = *(a4 + 24);
    sub_25BCB617C();
    sub_25BB95CB0(v18, v19, &v21);

    v22 = 0;
    a1(&v24, &v21);
    sub_25BA9D148(a1, a2);
    return sub_25BB99174(v21, v22);
  }

  else
  {
    (*(v14 + 16))(v17, a3, v13, v15);
    return sub_25BB95FF0(v13);
  }
}

uint64_t sub_25BB98368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a9;
  v25 = a1;
  v26 = a5;
  v24 = a4;
  v16 = *(a6 - 8);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v33 = a2;
  v34 = a3;
  v35 = v24;
  swift_getAssociatedConformanceWitness();
  v20 = valueWithGradient<A>(at:of:)();
  (*(v16 + 8))(v19, a6);
  v21 = v36;
  (*(a10 + 48))(v25, v20, a7, a10);

  *v27 = v21;
  return result;
}

uint64_t sub_25BB98510@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v28 = a6;
  v29 = a1;
  v31 = a3;
  v32 = a2;
  v30 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &AssociatedConformanceWitness - v12;
  v26 = swift_getAssociatedTypeWitness();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &AssociatedConformanceWitness - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &AssociatedConformanceWitness - v19;
  v21 = v28;
  (*(a9 + 24))(v28, a9, v18);
  Layer.callAsFunction(_:)(v13, a4, AssociatedConformanceWitness);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  (*(a9 + 32))(v21, a9);
  v32(v20, v16);
  v22 = *(v14 + 8);
  v23 = v26;
  v22(v16, v26);
  return (v22)(v20, v23);
}

void *sub_25BB98794(void (*a1)(char *__return_ptr, __int128 *, __n128), uint64_t a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(__int128 *__return_ptr, char *, char *), uint64_t a6, uint64_t a7, void (**a8)(char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t (**a11)(char *, char *, uint64_t), uint64_t a12)
{
  v54 = a6;
  v55 = a5;
  v52 = a4;
  v61 = a3;
  v64 = a2;
  v65 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = &v40 - v14;
  v50 = a10;
  v49 = a7;
  v62 = swift_getAssociatedTypeWitness();
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v40 - v18;
  v43 = *(a9 - 8);
  MEMORY[0x28223BE20](v19);
  v66 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = sub_25BCB6E8C();
  v48 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  v47 = sub_25BCB754C();
  MEMORY[0x28223BE20](v47);
  v46 = a8;
  v60 = a11;
  v27 = sub_25BCB753C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v40 - v29;
  BYTE1(v69) = 0;
  v70 = MEMORY[0x277D84F90];
  v68 = xmmword_25BCC4320;
  result = (v65)(&v69, &v68);
  if (!v69)
  {
    v41 = v28;
    MEMORY[0x25F876DF0](v46, v60);
    sub_25BCB751C();
    v61 = (v48 + 32);
    v60 = (v43 + 32);
    v47 = a12 + 24;
    v46 = v57 + 1;
    v48 = a12;
    v45 = a12 + 32;
    v44 = (v56 + 8);
    v57 = (v43 + 8);
    v32 = TupleTypeMetadata2;
    v33 = v30;
    v58 = v27;
    v59 = v30;
    while (1)
    {
      sub_25BCB752C();
      (*v61)(v26, v23, v21);
      if (__swift_getEnumTagSinglePayload(v26, 1, v32) == 1)
      {
LABEL_10:
        (*(v41 + 8))(v33, v27);
        if (v69 == 2)
        {
        }

        sub_25BB95CB0(SBYTE1(v69), v70, &v68);

        *(&v68 + 1) = 0x5000000000000000;
        (v65)(&v67, &v68);
        return sub_25BB99174(v68, *(&v68 + 1));
      }

      v34 = *v26;
      result = (*v60)(v66, &v26[*(v32 + 48)], a9);
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        return result;
      }

      *&v68 = v34 + 1;
      *(&v68 + 1) = 0x6000000000000000;
      (v65)(&v67, &v68);
      LOBYTE(v69) = v67;
      if (v67 == 1)
      {
        break;
      }

      v35 = v48;
      v36 = v51;
      (*(v48 + 24))(a9, v48);
      Layer.prediction(from:)();
      (*v46)(v36, AssociatedTypeWitness);
      (*(v35 + 32))(a9, v35);
      v55(&v68, v63, v16);
      v56 = *v44;
      (v56)(v16, v62);
      v37 = v68;
      sub_25BB95E1C(&v68);
      *&v68 = v34 + 1;
      *(&v68 + 1) = v37 | 0x7000000000000000;

      (v65)(&v67, &v68);
      v38 = v62;

      sub_25BB99174(v68, *(&v68 + 1));
      (v56)(v63, v38);
      (*v57)(v66, a9);
      v39 = v67;
      if (v67 == 1)
      {
        goto LABEL_8;
      }

LABEL_9:
      LOBYTE(v69) = v39;
      v27 = v58;
      v33 = v59;
      if (v39 == 2)
      {
        goto LABEL_10;
      }
    }

    (*v57)(v66, a9);
LABEL_8:
    v39 = 0;
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_25BB98F38()
{
  result = qword_27FBB5B20[0];
  if (!qword_27FBB5B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB5B20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrainingAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_14NeuralNetworks13TrainingEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_25BB99098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 16))
    {
      v2 = *a1 + 119;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 0x8F | (16 * (*(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x77)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25BB990E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    *(result + 8) = 0;
    if (a3 >= 0x78)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25BB99140(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 8);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_25BB99174(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 60)
  {
    case 0uLL:
    case 2uLL:
    case 4uLL:
    case 5uLL:
    case 7uLL:

      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_25BB9925C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v14 = *(v1 + 48);
  v15 = *(v1 + 32);
  v5 = *(v1 + 64);
  v6 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_0_39(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 120) & ~*(v8 + 80);
  v12 = v11 + *(v10 + 64);
  return sub_25BB97468(a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), v1 + v11, *(v1 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v4, v3, v15, *(&v15 + 1), v14, *(&v14 + 1), v5);
}

BOOL sub_25BB99370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v18 = *(v3 + 48);
  v19 = *(v3 + 32);
  v9 = *(v3 + 64);
  v10 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_0_39(v10);
  v12 = v11;
  v14 = v13;
  v15 = (*(v12 + 80) + 152) & ~*(v12 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25BB979D4(a1, a2, a3, *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), v3 + v15, *(v3 + v16), *(v3 + v16 + 8), v8, v7, v19, *(&v19 + 1), v18, *(&v18 + 1), v9);
}

uint64_t objectdestroy_29Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25BB99520(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25BB6A730();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB995B8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((v6 + result) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BB996FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if ((((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(v17 + 16) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *(v17 + 8) = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if ((((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if ((((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, (((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EvaluationMetricLogger.ReductionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB999CC()
{
  result = qword_27FBB5BA8;
  if (!qword_27FBB5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BA8);
  }

  return result;
}

uint64_t sub_25BB99A24(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  *(v5 + 32) = *a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = v6;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_25BB99A40(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v53 = a7;
  v11 = *a1;
  v12 = *a2;
  v13 = type metadata accessor for IOSurfaceTensorStorage();
  v40 = v11;
  v43 = v11;
  LOBYTE(v41) = v12;
  v14 = qword_25BCC4698;
  if ((v12 - 1) > 0xA)
  {
    v15 = 1;
  }

  else
  {
    v15 = qword_25BCC4698[(v12 - 1)];
  }

  v39 = v13;
  v16 = sub_25BADD208(&v43, &v41, v15);
  IOSurfaceLock(v16, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v16);
  if (!BaseAddress)
  {
    goto LABEL_20;
  }

  v7 = *(a5 + 16);
  if (v7)
  {
    v18 = (a5 + 32);
    v19 = 1;
    v20 = *(a5 + 16);
    while (1)
    {
      v21 = *v18++;
      v22 = v19 * v21;
      if ((v19 * v21) >> 64 != (v19 * v21) >> 63)
      {
        break;
      }

      v19 = v22;
      if (!--v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = 1;
LABEL_11:
  if ((a6 - 1) > 0xAu)
  {
    v14 = 1;
  }

  else
  {
    v14 = qword_25BCC4698[(a6 - 1)];
  }

  if ((v22 * v14) >> 64 != (v22 * v14) >> 63)
  {
    goto LABEL_19;
  }

  v23 = sub_25BBCA04C(BaseAddress, v22 * v14, 1, 0, 0);
  if (!v23)
  {
LABEL_21:
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_25BCB70FC();

    v41 = 0xD000000000000027;
    v42 = 0x800000025BCDDC80;
    if (v7)
    {
      goto LABEL_26;
    }

    v30 = 1;
LABEL_23:
    v31 = v30 * v14;
    if ((v30 * v14) >> 64 == (v30 * v14) >> 63)
    {
LABEL_31:
      v43 = v31;
      v34 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v34);

      MEMORY[0x25F876C90](24622, 0xE200000000000000);
      v43 = v41;
      v44 = v42;
      v52 = 9;
      sub_25BCB617C();
      sub_25BA97890("encodeAndCommitPageAlignedDataExport(from:on:)", 46, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSGraphTensorStorage.swift", 121, 2, 264, v35, v36, v37, v38, v39, v11, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v31 = a5 + 32;
    v32 = 1;
    while (1)
    {
      v33 = *v31;
      v31 += 8;
      v30 = v32 * v33;
      if ((v32 * v33) >> 64 != (v32 * v33) >> 63)
      {
        break;
      }

      v32 = v30;
      if (!--v7)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v24 = v23;
  v37 = a5;
  if (![*(a4 + 24) commandBuffer])
  {
    goto LABEL_25;
  }

  swift_getObjectType();
  v25 = [v24 length];
  v26 = OUTLINED_FUNCTION_61_3();
  v27 = OUTLINED_FUNCTION_61_3();
  sub_25BC671E0(v53, v26, v24, v27, v25);
  sub_25BC671A0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  IOSurfaceUnlock(v16, 0, 0);
  v28 = swift_allocObject();
  *(v28 + 32) = v12;
  *(v28 + 16) = v16;
  *(v28 + 24) = v40;
  *(v28 + 40) = sub_25BA9D8D4;
  *(v28 + 48) = 0;
  swift_unknownObjectRelease();

  return v28;
}

uint64_t sub_25BB99DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BAA4554(1);
  IOSurfaceGetBaseAddress(*(a1 + 16));
  sub_25BAA4640();
  sub_25BB5C3B0();
  v4 = sub_25BCB582C();
  sub_25BAA46FC(1);
  return v4;
}

Swift::Int __swiftcall roundUp(_:toMultipleOf:)(Swift::Int _, Swift::Int toMultipleOf)
{
  if (!toMultipleOf)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (_ == 0x8000000000000000 && toMultipleOf == -1)
  {
    goto LABEL_13;
  }

  v3 = _ % toMultipleOf;
  if (!(_ % toMultipleOf))
  {
    return _;
  }

  v4 = _ + toMultipleOf;
  if (__OFADD__(_, toMultipleOf))
  {
    goto LABEL_11;
  }

  _ = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return _;
}

uint64_t Collection<>.collated()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v8 + 16))(v11, v3, a1);
  return (*(a3 + 8))(v11, a1, a2, AssociatedTypeWitness, a3);
}

uint64_t Tensor.init<A>(collating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  sub_25BCB6ADC();
  v17 = a2;
  v18 = a3;
  v19 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25BB50EEC(1, sub_25BB9A1BC, v16, AssociatedTypeWitness, &type metadata for Tensor, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v20 = 13;
  Tensor.init(stacking:alongAxis:scalarType:)();
  *a4 = v21;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t sub_25BB9A150@<X0>(void *a4@<X8>)
{
  v5 = sub_25BCB6B8C();
  v7 = *v6;

  result = v5(&v9, 0);
  *a4 = v7;
  return result;
}

void sub_25BB9A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift", 112, 2, 18, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BB9A240(uint64_t a1)
{
  (*(*v1 + 136))();
  sub_25BCB625C();

  MEMORY[0x25F878200](v1[6]);
  MEMORY[0x25F878200](v1[7]);
  MEMORY[0x25F878200](v1[8]);
  MEMORY[0x25F878200](v1[9]);
  MEMORY[0x25F878200](v1[10]);
  return MEMORY[0x25F878200](v1[11]);
}

uint64_t sub_25BB9A2E4()
{

  return v0;
}

uint64_t sub_25BB9A314()
{
  sub_25BB9A2E4();

  return swift_deallocClassInstance();
}

void sub_25BB9A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_14_6();
  v33 = *(a26 + 8);
  *(v29 + 176) = a28;
  *(v29 + 184) = a29;
  *(v29 + 192) = a25;
  if (!v32)
  {
    v34 = OUTLINED_FUNCTION_1_33(0x5F677661u);
    sub_25BAA5EA0(v34, v35);
    OUTLINED_FUNCTION_5_27();
  }

  OUTLINED_FUNCTION_8_2(v30, v31, v32);
  *(v29 + 40) = v36;
  *(v29 + 48) = v37;
  *(v29 + 56) = v38;
  *(v29 + 64) = v39;
  *(v29 + 72) = v40;
  *(v29 + 80) = a23;
  *(v29 + 88) = a24;
  *(v29 + 96) = v41;
  *(v29 + 104) = v33;
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_15_2();
}

void sub_25BB9A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  OUTLINED_FUNCTION_14_6();
  v31 = *(a27 + 8);
  *(v27 + 176) = v32;
  *(v27 + 184) = a26;
  if (!v30)
  {
    v33 = OUTLINED_FUNCTION_0_41(0x5F677661u);
    sub_25BAA5EA0(v33, v34);
    OUTLINED_FUNCTION_5_27();
  }

  OUTLINED_FUNCTION_8_2(v28, v29, v30);
  *(v27 + 40) = v35;
  *(v27 + 48) = v36;
  *(v27 + 56) = v37;
  *(v27 + 64) = v38;
  *(v27 + 72) = a23;
  *(v27 + 80) = a24;
  *(v27 + 88) = a25;
  *(v27 + 96) = v39;
  *(v27 + 104) = v31;
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_15_2();
}

void sub_25BB9A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_14_6();
  v32 = *a25;
  v33 = *(a25 + 8);
  *(v28 + 176) = a27;
  *(v28 + 184) = a28;
  if (!v31)
  {
    v34 = OUTLINED_FUNCTION_1_33(0x5F78616Du);
    sub_25BAA5EA0(v34, v35);
    OUTLINED_FUNCTION_5_27();
  }

  OUTLINED_FUNCTION_8_2(v29, v30, v31);
  *(v28 + 40) = v36;
  *(v28 + 48) = v37;
  *(v28 + 56) = v38;
  *(v28 + 64) = v39;
  *(v28 + 72) = v40;
  *(v28 + 80) = v41;
  *(v28 + 88) = a24;
  *(v28 + 96) = v32;
  *(v28 + 104) = v33;
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BB9A714(uint64_t a1)
{
  sub_25BB9A2E4();
  sub_25BA9D148(*(v1 + 176), *(v1 + 184));

  return swift_deallocClassInstance();
}

void sub_25BB9A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  OUTLINED_FUNCTION_14_6();
  v30 = *a26;
  v31 = *(a26 + 8);
  *(v26 + 176) = v32;
  if (!v29)
  {
    v33 = OUTLINED_FUNCTION_0_41(0x5F78616Du);
    v27 = sub_25BAA5EA0(v33, v34);
  }

  OUTLINED_FUNCTION_8_2(v27, v28, v29);
  *(v26 + 40) = v35;
  *(v26 + 48) = v36;
  *(v26 + 56) = v37;
  *(v26 + 64) = v38;
  *(v26 + 72) = a23;
  *(v26 + 80) = a24;
  *(v26 + 88) = a25;
  *(v26 + 96) = v30;
  *(v26 + 104) = v31;
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BB9A844(uint64_t a1)
{
  sub_25BB9A2E4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB9A8B0(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB44F0, type metadata accessor for Max2DPoolGradientOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9A908(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation, aU);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9A960(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB5BB8, type metadata accessor for Base2DPoolOperation, &unk_25BCC48C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9A9B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_25BB9AA18(uint64_t a1, uint64_t a2)
{

  sub_25BB9ACC4();
  *(a1 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) = 0;
  v4 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data;
  swift_beginAccess();
  v5 = sub_25BB9B5A8((a1 + v4), a2);
  swift_endAccess();

  return v5;
}

uint64_t sub_25BB9AAB4()
{
  OUTLINED_FUNCTION_0_42();
  *(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) = 0;
  swift_beginAccess();
  sub_25BCB5A0C();
  return swift_endAccess();
}

uint64_t sub_25BB9AB48(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = *a4;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_initializationState) = 0;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data) = xmmword_25BCC3FB0;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) = 1;
  v9 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_url;
  v10 = sub_25BCB598C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_offset) = a2;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape) = v7;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType) = v8;
  return v4;
}

uint64_t sub_25BB9AC20()
{
  OUTLINED_FUNCTION_0_42();
  v1 = (v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25BB33C70(v3, v2);
  sub_25BCB59EC();
  return sub_25BB0D160(v3, v2);
}

void sub_25BB9ACC4()
{
  if ((*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_initializationState) & 1) == 0)
  {
    sub_25BB9AE1C();
  }
}

void sub_25BB9AE1C()
{
  v2 = v0;
  v32[3] = *MEMORY[0x277D85DE8];
  v3 = sub_25BCB598C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BB2BA50(0, &qword_27FBB4038, 0x277CCA9F8);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_url, v3);
  v7 = sub_25BB9B0C8(v6);
  if (!v1)
  {
    v8 = v7;
    v9 = *(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_offset);
    v32[0] = 0;
    v10 = [v7 seekToOffset:v9 error:v32];
    v11 = v32[0];
    if (!v10)
    {
      goto LABEL_17;
    }

    v12 = *(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 32);
      v15 = 1;
      while (1)
      {
        v16 = *v14++;
        v17 = v15 * v16;
        if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
        {
          break;
        }

        v15 = v17;
        if (!--v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v17 = 1;
LABEL_9:
    if (*(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType) - 1 > 0xA)
    {
      v18 = 1;
    }

    else
    {
      v18 = qword_25BCC4A10[(*(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType) - 1)];
    }

    if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
    {
LABEL_20:
      __break(1u);
    }

    v19 = v32[0];
    v20 = sub_25BCB6C9C();
    v22 = v21;
    if (v21 >> 60 != 15)
    {
      v23 = v20;
      v24 = (v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data);
      swift_beginAccess();
      v25 = *v24;
      v26 = v24[1];
      *v24 = v23;
      v24[1] = v22;
      sub_25BB0D160(v25, v26);
    }

    v31 = 0;
    v27 = [v8 closeAndReturnError_];
    v11 = v31;
    if (v27)
    {
      v28 = v31;

      *(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_initializationState) = 1;
    }

    else
    {
LABEL_17:
      v29 = v11;
      sub_25BCB58CC();

      swift_willThrow();
    }
  }
}

id sub_25BB9B0C8(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB592C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_25BCB598C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_25BCB58CC();

    swift_willThrow();
    v9 = sub_25BCB598C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_25BB9B220()
{
  v1 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_url;
  v2 = sub_25BCB598C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25BB0D160(*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data), *(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data + 8));

  return v0;
}

uint64_t sub_25BB9B2A4()
{
  sub_25BB9B220();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataSourceTensorStorage(uint64_t a1)
{
  result = qword_27FBB5BC0;
  if (!qword_27FBB5BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BB9B350(uint64_t a1)
{
  result = sub_25BCB598C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataSourceTensorStorage.InitializationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB9B4FC()
{
  result = qword_27FBB5BD0;
  if (!qword_27FBB5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BD0);
  }

  return result;
}

double sub_25BB9B564@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
  sub_25BCB617C();
  return result;
}

id sub_25BB9B5A8(uint64_t *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v25 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();
      sub_25BB33C70(v3, v2);
      sub_25BB0D160(v3, v2);
      *a1 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      v26 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_13;
      }

      if (v26 < v3)
      {
        goto LABEL_21;
      }

      if (sub_25BCB584C() && __OFSUB__(v3, sub_25BCB587C()))
      {
        goto LABEL_22;
      }

      sub_25BCB588C();
      swift_allocObject();
      v27 = sub_25BCB583C();

      v25 = v27;
LABEL_13:
      if (v26 < v3)
      {
        goto LABEL_19;
      }

      result = sub_25BCB584C();
      if (!result)
      {
        goto LABEL_24;
      }

      v28 = result;
      v29 = sub_25BCB587C();
      v30 = v3 - v29;
      if (__OFSUB__(v3, v29))
      {
        goto LABEL_20;
      }

      sub_25BCB586C();
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      v31 = sub_25BCB617C();
      v32 = sub_25BAF99E8(v31);

      v33 = sub_25BBC046C();
      v20 = sub_25BBC052C(v32, v28 + v30, v33);

      v21 = v25 | 0x4000000000000000;
      *a1 = v3;
      goto LABEL_17;
    case 2uLL:
      swift_retain_n();
      sub_25BB33C70(v3, v2);
      sub_25BB0D160(v3, v2);
      *&v34 = v3;
      *(&v34 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      sub_25BCB599C();
      v11 = *(v34 + 16);

      result = sub_25BCB584C();
      if (result)
      {
        v13 = result;
        v14 = sub_25BCB587C();
        v15 = __OFSUB__(v11, v14);
        v16 = v11 - v14;
        if (v15)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
        }

        sub_25BCB586C();
        sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
        v17 = sub_25BCB617C();
        v18 = sub_25BAF99E8(v17);

        v19 = sub_25BBC046C();
        v20 = sub_25BBC052C(v18, v13 + v16, v19);

        v21 = *(&v34 + 1) | 0x8000000000000000;
        *a1 = v34;
LABEL_17:
        a1[1] = v21;
        return v20;
      }

      else
      {
        __break(1u);
LABEL_24:
        __break(1u);
      }

      return result;
    case 3uLL:
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      *&v34 = 0;
      *(&v34 + 7) = 0;
      v22 = sub_25BCB617C();
      v23 = sub_25BAF99E8(v22);

      v24 = sub_25BBC046C();
      v8 = sub_25BBC052C(v23, &v34, v24);

      return v8;
    default:
      swift_retain_n();
      sub_25BB0D160(v3, v2);
      *&v34 = v3;
      WORD4(v34) = v2;
      BYTE10(v34) = BYTE2(v2);
      BYTE11(v34) = BYTE3(v2);
      BYTE12(v34) = BYTE4(v2);
      BYTE13(v34) = BYTE5(v2);
      BYTE14(v34) = BYTE6(v2);
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      v5 = sub_25BCB617C();
      v6 = sub_25BAF99E8(v5);

      v7 = sub_25BBC046C();
      v8 = sub_25BBC052C(v6, &v34, v7);
      v9 = v34;
      v10 = DWORD2(v34) | ((WORD6(v34) | (BYTE14(v34) << 16)) << 32);

      *a1 = v9;
      a1[1] = v10;
      return v8;
  }
}

NeuralNetworks::MaxPool1D __swiftcall MaxPool1D.init(kernelSize:stride:padding:)(Swift::Int kernelSize, Swift::Int_optional stride, Swift::Int padding)
{
  if (stride.is_nil)
  {
    stride.value = kernelSize;
  }

  *&stride.is_nil = padding;
  result.stride = stride.value;
  LOBYTE(result.padding) = stride.is_nil;
  *(&result.padding + 1) = *(&v3 + 1);
  *(&result.padding + 5) = *(&v3 + 5);
  HIBYTE(result.padding) = HIBYTE(v3);
  result.kernelSize = kernelSize;
  return result;
}

uint64_t MaxPool1D.forward(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Tensor.expandingShape(at:)();
  maxPool2D(_:kernelSize:stride:padding:)();

  Tensor.squeezingShape(at:)();
}

uint64_t sub_25BB9BBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536C656E72656BLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656469727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_25BCB789C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_25BB9BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB9BBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB9BD04(uint64_t a1)
{
  v2 = sub_25BB9E370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9BD40(uint64_t a1)
{
  v2 = sub_25BB9E370();

  return MEMORY[0x2821FE720](a1, v2);
}

void MaxPool1D.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v10[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BD8, &qword_25BCC4A80);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = v10 - v8;
  OUTLINED_FUNCTION_21_16(v3, v3[3]);
  sub_25BB9E370();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_3_23();
  sub_25BCB778C();
  if (!v0)
  {
    OUTLINED_FUNCTION_20_16();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
    OUTLINED_FUNCTION_26_14();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_16();
}

uint64_t MaxPool1D.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BE8, &qword_25BCC4A88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_21_16(a1, a1[3]);
  sub_25BB9E370();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B2C();
  OUTLINED_FUNCTION_4_32();
  v3 = sub_25BCB769C();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  v5 = OUTLINED_FUNCTION_25_12();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_25BB9C070@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MaxPool1D.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void __swiftcall MaxPool2D.init(kernelSize:stride:padding:)(NeuralNetworks::MaxPool2D *__return_ptr retstr, Swift::tuple_height_Int_width_Int kernelSize, Swift::tuple_Int_Int_optional stride, Swift::tuple_Int_Int padding)
{
  retstr->kernelSize = kernelSize;
  if (stride.is_nil)
  {
    width = kernelSize.width;
  }

  else
  {
    width = stride.value._1;
  }

  if (stride.is_nil)
  {
    height = kernelSize.height;
  }

  else
  {
    height = stride.value._0;
  }

  retstr->stride.y = height;
  retstr->stride.x = width;
  retstr->padding = padding;
}

double sub_25BB9C130@<D0>(_OWORD *a1@<X8>)
{
  MaxPool2D.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void MaxPool2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BF0, &unk_25BCC4A90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_21_16(v2, v2[3]);
  v4 = sub_25BB9E3C4();
  OUTLINED_FUNCTION_19_16(&type metadata for MaxPool2D.CodingKeys, v5, v4);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    v6 = OUTLINED_FUNCTION_7_1();
    v7(v6);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_22_15();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t MaxPool2D.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C00, &unk_25BCC4AA0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  OUTLINED_FUNCTION_21_16(a1, a1[3]);
  sub_25BB9E3C4();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B6C();
  v14 = *v3;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
  OUTLINED_FUNCTION_51(&qword_27FBB4770);
  OUTLINED_FUNCTION_2_35();
  if (!v2)
  {
    v14 = v3[1];
    v13 = 1;
    OUTLINED_FUNCTION_2_35();
    v14 = v3[2];
    v13 = 2;
    OUTLINED_FUNCTION_2_35();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_25BB9C4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE060C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25BB9C4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE060C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB9C508(uint64_t a1)
{
  v2 = sub_25BB9E3C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9C544(uint64_t a1)
{
  v2 = sub_25BB9E3C4();

  return MEMORY[0x2821FE720](a1, v2);
}

NeuralNetworks::AveragePool1D __swiftcall AveragePool1D.init(kernelSize:stride:padding:countIncludesPadding:)(Swift::Int kernelSize, Swift::Int_optional stride, Swift::Int padding, Swift::Bool countIncludesPadding)
{
  if (stride.is_nil)
  {
    stride.value = kernelSize;
  }

  v5 = countIncludesPadding;
  *&stride.is_nil = padding;
  result.stride = stride.value;
  LOBYTE(result.padding) = stride.is_nil;
  *(&result.padding + 1) = *(&v6 + 1);
  *(&result.padding + 5) = *(&v6 + 5);
  HIBYTE(result.padding) = HIBYTE(v6);
  result.kernelSize = kernelSize;
  result.countIncludesPadding = v5;
  return result;
}

uint64_t AveragePool1D.forward(_:)@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v53 = *a1;
  Tensor.expandingShape(at:)();
  v11 = v67;
  v12 = *(v67 + 16);
  v13 = *(v12 + 160);
  if (!sub_25BAA80BC(v13, &unk_286D42270))
  {
    LOBYTE(v68[0]) = v13;
    v53 = sub_25BC8FACC();
    v54 = v38;
    v55 = xmmword_25BCBCE20;
    LOBYTE(v56) = 0;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v58 = 2;
    v63 = 3;
    OUTLINED_FUNCTION_6_32();
    sub_25BADDD28(v39, v40, v41, v42, v43, v44, v45);
  }

  HIDWORD(v51) = a5;
  v52 = a6;
  v53 = *(v12 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  *(inited + 48) = a2;
  *(inited + 56) = 1;
  v68[0] = inited;
  sub_25BCB617C();
  sub_25BCA4578(&v53, v68, a3, 1, a4, 0, &v66);

  v16 = v66;
  if (v66)
  {
    v17 = *(v11 + 16);
    v68[0] = v11;
    v18 = Tensor.scalarType.getter(v15);
    v20 = v19;
    v21 = *(v19 + 32);

    v21(&v54, v18, v20);
    v53 = v16;
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = 1;
    *(v22 + 32) = a3;
    *(v22 + 40) = 1;
    *(v22 + 48) = a4;
    *(v22 + 56) = 0;
    *(v22 + 64) = BYTE4(v51) & 1;
    v23 = sub_25BAAF074(sub_25BB9E418, v22);
    v25 = v24;

    v65[55] = 0;
    OUTLINED_FUNCTION_23_14("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v69 = xmmword_25BCC4A70;
    OUTLINED_FUNCTION_27_13(v26);
    swift_allocObject();
    LOBYTE(v49) = BYTE4(v51) & 1;
    v27 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v27, v28, v29, v17, a2, 1, a3, 1, a4, 0, v49, &v53, v68, v23, v25, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62);
    v31 = v30;
    sub_25BAA51C8(*(v11 + 16) + 168, v65);
    sub_25BAA51C8(v65, v64);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v53);

    v32 = v62;

    sub_25BAA4AF4(&v53);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v53);

    v33 = v61;

    sub_25BAA4AF4(&v53);
    type metadata accessor for TensorRepresentation();
    v34 = swift_allocObject();
    LOBYTE(v53) = 1;
    v35 = sub_25BC0EDE4(v31, 0, v64, 0x100000000, v32, v33, v34);
    type metadata accessor for TensorHandle();
    v36 = swift_allocObject();
    v36[1].Kind = v35;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v65);

    v53 = v36;
    Tensor.squeezingShape(at:)();
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    result = OUTLINED_FUNCTION_5_28("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/NN.swift", v46, v47, v48);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB9C9BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536C656E72656BLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656469727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000025BCDDF90 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_25BCB789C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_25BB9CB28(char a1)
{
  result = 0x69536C656E72656BLL;
  switch(a1)
  {
    case 1:
      result = 0x656469727473;
      break;
    case 2:
      result = 0x676E6964646170;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB9CBB0(uint64_t a1)
{
  v2 = *v1;
  sub_25BCB79CC();
  sub_25BADE7BC(v4, v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB9CBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB9C9BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB9CC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB9CB20();
  *a1 = result;
  return result;
}

uint64_t sub_25BB9CC4C(uint64_t a1)
{
  v2 = sub_25BB9E41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9CC88(uint64_t a1)
{
  v2 = sub_25BB9E41C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AveragePool1D.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v10[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C08, &qword_25BCC4AB0);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = v10 - v8;
  OUTLINED_FUNCTION_21_16(v3, v3[3]);
  sub_25BB9E41C();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_3_23();
  sub_25BCB778C();
  if (!v0)
  {
    OUTLINED_FUNCTION_20_16();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
    OUTLINED_FUNCTION_26_14();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB776C();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_16();
}

void AveragePool1D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C18, &qword_25BCC4AB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_21_16(v1, v1[3]);
  sub_25BB9E41C();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B2C();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB767C();
  v3 = OUTLINED_FUNCTION_25_12();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_16();
}

void sub_25BB9D000(uint64_t a1@<X8>)
{
  AveragePool1D.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

void __swiftcall AveragePool2D.init(kernelSize:stride:padding:countIncludesPadding:)(NeuralNetworks::AveragePool2D *__return_ptr retstr, Swift::tuple_height_Int_width_Int kernelSize, Swift::tuple_Int_Int_optional stride, Swift::tuple_Int_Int padding, Swift::Bool countIncludesPadding)
{
  retstr->kernelSize = kernelSize;
  if (stride.is_nil)
  {
    width = kernelSize.width;
  }

  else
  {
    width = stride.value._1;
  }

  if (stride.is_nil)
  {
    height = kernelSize.height;
  }

  else
  {
    height = stride.value._0;
  }

  retstr->stride.y = height;
  retstr->stride.x = width;
  retstr->padding = padding;
  retstr->countIncludesPadding = countIncludesPadding;
}

uint64_t AveragePool2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v60 = *(v2 + 40);
  HIDWORD(v56) = *(v2 + 48);
  v10 = *(*a1 + 16);
  v11 = *(v10 + 160);
  if (!sub_25BAA80BC(v11, &unk_286D42270))
  {
    LOBYTE(v73[0]) = v11;
    v61 = sub_25BC8FACC();
    v62 = v42;
    v63 = xmmword_25BCBCE20;
    LOBYTE(v64) = 0;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v66) = 2;
    v69 = 3;
    OUTLINED_FUNCTION_6_32();
    sub_25BADDD28(v43, v44, v45, v46, v47, v48, v49);
  }

  v58 = a2;
  v61 = *(v10 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  v57 = v5;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v73[0] = inited;
  sub_25BCB617C();
  v13 = v8;
  OUTLINED_FUNCTION_8_24();
  sub_25BCA4578(v14, v15, v16, v17, v18, v60, v19);

  v21 = v72;
  if (v72)
  {
    v55 = *(v4 + 16);
    v73[0] = v4;
    v22 = Tensor.scalarType.getter(v20);
    v24 = v23;
    v25 = *(v23 + 32);

    v25(&v62, v22, v24);
    v61 = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = v57;
    *(v26 + 24) = v6;
    *(v26 + 32) = v8;
    *(v26 + 40) = v7;
    *(v26 + 48) = v9;
    *(v26 + 56) = v60;
    *(v26 + 64) = BYTE4(v56);
    v27 = sub_25BAAF074(sub_25BB9F188, v26);
    v29 = v28;

    v71[55] = 0;
    OUTLINED_FUNCTION_23_14("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v74 = xmmword_25BCC4A70;
    OUTLINED_FUNCTION_27_13(v30);
    swift_allocObject();
    LOBYTE(v53) = BYTE4(v56);
    v31 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v31, v32, v33, v55, v57, v6, v13, v7, v9, v60, v53, &v61, v73, v27, v29, v4, v55, v56, v57, v6, v58, v60, v61, v62, v63, *(&v63 + 1), v64, v65, v66);
    v35 = v34;
    sub_25BAA51C8(*(v54 + 16) + 168, v71);
    sub_25BAA51C8(v71, v70);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v61);

    v36 = v68;

    sub_25BAA4AF4(&v61);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v61);

    v37 = v67;

    sub_25BAA4AF4(&v61);
    type metadata accessor for TensorRepresentation();
    v38 = swift_allocObject();
    LOBYTE(v61) = 1;
    v39 = sub_25BC0EDE4(v35, 0, v70, 0x100000000, v36, v37, v38);
    type metadata accessor for TensorHandle();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;

    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    result = sub_25BA9C2C8(v71);
    *v59 = v40;
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    result = OUTLINED_FUNCTION_5_28("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/NN.swift", v50, v51, v52);
    __break(1u);
  }

  return result;
}

double sub_25BB9D480@<D0>(uint64_t a1@<X8>)
{
  AveragePool2D.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void AveragePool2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C20, &qword_25BCC4AC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_21_16(v2, v2[3]);
  v6 = sub_25BB9E470();
  OUTLINED_FUNCTION_19_16(&type metadata for AveragePool2D.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    v8 = OUTLINED_FUNCTION_7_1();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_22_15();
    *(v4 + 48) = 0;
  }

  OUTLINED_FUNCTION_16();
}

uint64_t AveragePool2D.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C30, &qword_25BCC4AC8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  OUTLINED_FUNCTION_21_16(a1, a1[3]);
  sub_25BB9E470();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B6C();
  v14 = *v3;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
  OUTLINED_FUNCTION_51(&qword_27FBB4770);
  OUTLINED_FUNCTION_2_35();
  if (!v2)
  {
    v14 = v3[1];
    v13 = 1;
    OUTLINED_FUNCTION_2_35();
    v14 = v3[2];
    v13 = 2;
    OUTLINED_FUNCTION_2_35();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_25BB9D7EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE0668(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25BB9D81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE0668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB9D844(uint64_t a1)
{
  v2 = sub_25BB9E470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9D880(uint64_t a1)
{
  v2 = sub_25BB9E470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB9D90C(uint64_t a1)
{
  v2 = sub_25BB9E4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9D948(uint64_t a1)
{
  v2 = sub_25BB9E4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalAveragePool2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 152);
  v6 = v5[2];
  if (v6 <= 2)
  {
    *&v50 = 0;
    v48 = 2;
LABEL_8:
    v49 = 0;
    BYTE8(v50) = -1;
    v52 = 0;
    v53 = 0;
    v51 = v6;
    LOBYTE(v54) = -1;
    v60 = 4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    goto LABEL_10;
  }

  if (v6 == 3)
  {
    *&v50 = 0;
    v48 = 3;
    goto LABEL_8;
  }

  v7 = v5[6];
  v8 = v5[7];
  v9 = *(v4 + 160);
  if (!sub_25BAA80BC(v9, &unk_286D42270))
  {
    LOBYTE(v65[0]) = v9;
    v48 = sub_25BC8FACC();
    v49 = v41;
    v50 = xmmword_25BCBCE20;
    LOBYTE(v51) = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v53) = 2;
    v60 = 3;
    OUTLINED_FUNCTION_6_32();
LABEL_10:
    sub_25BADDD28(v34, v35, v36, v37, v38, v39, v40);
  }

  v46 = a2;
  v48 = *(v4 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBDF80;
  *(v10 + 32) = vdupq_n_s64(1uLL);
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  v65[0] = v10;
  sub_25BCB617C();
  sub_25BCA4578(&v48, v65, 1, 1, 0, 0, &v64);

  v12 = v64;
  if (v64)
  {
    v13 = *(v3 + 16);
    v65[0] = v3;
    v14 = Tensor.scalarType.getter(v11);
    v16 = v15;
    v17 = *(v15 + 32);

    v17(&v49, v14, v16);
    v48 = v12;
    v18 = swift_allocObject();
    v18[1].i64[0] = v7;
    v18[1].i64[1] = v8;
    v18[2] = vdupq_n_s64(1uLL);
    v18[3].i64[0] = 0;
    v18[3].i64[1] = 0;
    v18[4].i8[0] = 0;
    v19 = sub_25BAAF074(sub_25BB9F188, v18);
    v21 = v20;

    v63 = 0;
    v65[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift";
    v65[1] = 112;
    v66 = 2;
    v67 = xmmword_25BCC4A70;
    v68 = "init(id:operand:kernelSize:stride:padding:countIncludesPadding:resultDescriptor:creationSite:backward:)";
    v69 = 103;
    v70 = 2;
    type metadata accessor for Average2DPoolOperation();
    swift_allocObject();
    LOBYTE(v45) = 0;
    v22 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v22, v23, v24, v13, v7, v8, 1, 1, 0, 0, v45, &v48, v65, v19, v21, v46, v48, v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, v58, v59);
    v26 = v25;
    sub_25BAA51C8(*(v3 + 16) + 168, v62);
    sub_25BAA51C8(v62, v61);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v48);

    v27 = v57;

    sub_25BAA4AF4(&v48);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v48);

    v28 = v56;

    sub_25BAA4AF4(&v48);
    type metadata accessor for TensorRepresentation();
    v29 = swift_allocObject();
    LOBYTE(v48) = 1;
    v30 = sub_25BC0EDE4(v26, 0, v61, 0x100000000, v27, v28, v29);
    type metadata accessor for TensorHandle();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;

    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v62);
    v48 = v31;
    v32 = *(v30 + 152);
    sub_25BCB617C();
    sub_25BB74DC8(2, v32, v62);
    Tensor.reshaped(to:)(v62, v47);
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    result = OUTLINED_FUNCTION_5_28("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/NN.swift", v42, v43, v44);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB9DE5C(uint64_t a1)
{
  v2 = sub_25BB9E54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9DE98(uint64_t a1)
{
  v2 = sub_25BB9E54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB9DF74(uint64_t a1)
{
  v2 = sub_25BB9E5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9DFB0(uint64_t a1)
{
  v2 = sub_25BB9E5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalMaxPool2D.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v13 = *a1;
  if (*(*(*(v13 + 16) + 152) + 16) < 4uLL)
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v5, v6, v7, v8, v9, v10, v11);
  }

  maxPool2D(_:kernelSize:stride:padding:)();
  v3 = *(*(v12 + 16) + 152);
  sub_25BCB617C();
  sub_25BB74DC8(2, v3, &v13);
  Tensor.reshaped(to:)(&v13, a2);
}

uint64_t sub_25BB9E1A0(uint64_t a1)
{
  v2 = sub_25BB9E5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9E1DC(uint64_t a1)
{
  v2 = sub_25BB9E5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BB9E25C()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_21();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_25BCB7B6C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB9E370()
{
  result = qword_27FBB5BE0;
  if (!qword_27FBB5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BE0);
  }

  return result;
}

unint64_t sub_25BB9E3C4()
{
  result = qword_27FBB5BF8;
  if (!qword_27FBB5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BF8);
  }

  return result;
}

unint64_t sub_25BB9E41C()
{
  result = qword_27FBB5C10;
  if (!qword_27FBB5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C10);
  }

  return result;
}

unint64_t sub_25BB9E470()
{
  result = qword_27FBB5C28;
  if (!qword_27FBB5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C28);
  }

  return result;
}

unint64_t sub_25BB9E4C4()
{
  result = qword_27FBB5C40;
  if (!qword_27FBB5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C40);
  }

  return result;
}

unint64_t sub_25BB9E54C()
{
  result = qword_27FBB5C50;
  if (!qword_27FBB5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C50);
  }

  return result;
}

unint64_t sub_25BB9E5A0()
{
  result = qword_27FBB5C60;
  if (!qword_27FBB5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C60);
  }

  return result;
}

unint64_t sub_25BB9E5F4()
{
  result = qword_27FBB5C70;
  if (!qword_27FBB5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaxPool1D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaxPool1D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_25BB9E6AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}