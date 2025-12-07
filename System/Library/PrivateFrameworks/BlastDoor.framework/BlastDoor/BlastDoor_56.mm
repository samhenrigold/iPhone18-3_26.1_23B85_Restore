float sub_2144F1908()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v16 = sub_2146D9F58();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v18 = MEMORY[0x277D83A90];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v38 = 0xE600000000000000;
    v39 = v5;

    v22 = sub_2146DA428();
    MEMORY[0x2160545D0](v22);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v5;
    *(v23 + 40) = 0;
    v37 = v20;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v34 = 0x207865646E49;
    *(&v34 + 1) = 0xE600000000000000;
    v37 = v5;
    v7 = sub_2146DA428();
    MEMORY[0x2160545D0](v7);

    swift_beginAccess();
    v8 = *(v6 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 32) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2140954FC(0, v8[2] + 1, 1, v8);
      *(v6 + 32) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2140954FC((v10 > 1), v11 + 1, 1, v8);
    }

    v35 = &type metadata for XPCCodingKey;
    v12 = sub_2144EE044();
    v36 = v12;
    v13 = swift_allocObject();
    *&v34 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_213FB77C8(&v34, &v8[5 * v11 + 4]);
    *(v6 + 32) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_2144EDAF8(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
LABEL_12:
      sub_2144E4BBC(v3);
      return v2;
    }

    v24 = v15;
    swift_unknownObjectRelease();
    if ((v24 & 0x100000000) != 0)
    {
      v33 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v26 = MEMORY[0x277D83A90];
      v27 = *(v6 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_2146EA710;
      *&v34 = 0x207865646E49;
      *(&v34 + 1) = 0xE600000000000000;
      v37 = v5;

      v29 = sub_2146DA428();
      MEMORY[0x2160545D0](v29);

      v30 = v34;
      *(v28 + 56) = &type metadata for XPCCodingKey;
      *(v28 + 64) = v12;
      v31 = swift_allocObject();
      *(v28 + 32) = v31;
      *(v31 + 16) = v30;
      *(v31 + 32) = v5;
      *(v31 + 40) = 0;
      *&v34 = v27;
      sub_21468B984(v28);
      sub_2146D9F28();
      (*(*(v33 - 8) + 104))(v26, *MEMORY[0x277D84170]);
      swift_willThrow();
      goto LABEL_12;
    }

    v2 = *&v24;
    v3[3] = v5 + 1;
    sub_2144E4BBC(v3);
  }

  return v2;
}

double sub_2144F1E34()
{
  v3 = v0;
  v4 = v0[1];
  v5 = v0[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v17 = sub_2146D9F58();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    *v19 = MEMORY[0x277D839F8];
    v20 = *v0;
    swift_beginAccess();
    v21 = *(v20 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v41 = 0xE600000000000000;
    v42 = v5;

    v23 = sub_2146DA428();
    MEMORY[0x2160545D0](v23);

    *(inited + 56) = &type metadata for XPCCodingKey;
    *(inited + 64) = sub_2144EE044();
    v24 = swift_allocObject();
    *(inited + 32) = v24;
    *(v24 + 16) = 0x207865646E49;
    *(v24 + 24) = 0xE600000000000000;
    *(v24 + 32) = v5;
    *(v24 + 40) = 0;
    v40 = v21;
    sub_21468B984(inited);
    sub_2146D9F28();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    swift_willThrow();
  }

  else
  {
    v6 = *v0;
    *&v37 = 0x207865646E49;
    *(&v37 + 1) = 0xE600000000000000;
    v40 = v5;
    v7 = sub_2146DA428();
    MEMORY[0x2160545D0](v7);

    swift_beginAccess();
    v8 = *(v6 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 32) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2140954FC(0, v8[2] + 1, 1, v8);
      *(v6 + 32) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2140954FC((v10 > 1), v11 + 1, 1, v8);
    }

    v38 = &type metadata for XPCCodingKey;
    v12 = sub_2144EE044();
    v39 = v12;
    v13 = swift_allocObject();
    *&v37 = v13;
    *(v13 + 16) = 0x207865646E49;
    *(v13 + 24) = 0xE600000000000000;
    *(v13 + 32) = v5;
    *(v13 + 40) = 0;
    v8[2] = v11 + 1;
    sub_213FB77C8(&v37, &v8[5 * v11 + 4]);
    *(v6 + 32) = v8;
    swift_endAccess();
    v14 = xpc_array_get_value(v4, v5);
    v15 = sub_2144EDCD8(v14);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = v16;
      v36 = v12;
      v26 = *&v15;
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        v2 = v26;
        v3[3] = v5 + 1;
        sub_2144E4BBC(v3);
        return v2;
      }

      v35 = sub_2146D9F58();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
      *v28 = MEMORY[0x277D839F8];
      v29 = *(v6 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A60, &qword_2146F1950);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_2146EA710;
      *&v37 = 0x207865646E49;
      *(&v37 + 1) = 0xE600000000000000;
      v40 = v5;

      v31 = sub_2146DA428();
      MEMORY[0x2160545D0](v31);

      v32 = v37;
      *(v30 + 56) = &type metadata for XPCCodingKey;
      *(v30 + 64) = v36;
      v33 = swift_allocObject();
      *(v30 + 32) = v33;
      *(v33 + 16) = v32;
      *(v33 + 32) = v5;
      *(v33 + 40) = 0;
      *&v37 = v29;
      sub_21468B984(v30);
      sub_2146D9F28();
      (*(*(v35 - 8) + 104))(v28, *MEMORY[0x277D84170]);
      swift_willThrow();
    }

    sub_2144E4BBC(v3);
  }

  return v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2144F23C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_2144F2510(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v18 + 24) = 0;
          *(v18 + 8) = a2 & 0x7FFFFFFF;
          *(v18 + 16) = 0;
        }

        else
        {
          *(v18 + 8) = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_2144F2708()
{
  if (!qword_280B34FC8[0])
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, qword_280B34FC8);
    }
  }
}

void sub_2144F2764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_2144F2708();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2144F27F0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
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
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(a1 + v6);
    if (v17 >= 2)
    {
      v18 = (v17 + 2147483646) & 0x7FFFFFFF;
    }

    else
    {
      v18 = -1;
    }

    if (v18 + 1 >= 2)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2144F2930(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
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
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
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
  if (v6 < 0xFD)
  {
    *(result + v8) = a2 + 2;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_2144F2AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2144F2B60@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a2;
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  result = type metadata accessor for ContextualUnpackRequestMessage(0, a5, a6, a7);
  *(a8 + *(result + 44)) = v14;
  v16 = (a8 + *(result + 48));
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_2144F2C10@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = type metadata accessor for ContextualUnpackFileRequestMessage(0, a4, a5, a6);
  *(a7 + *(result + 44)) = v11;
  v16 = a7 + *(result + 48);
  *v16 = v12;
  *(v16 + 8) = v13;
  *(v16 + 16) = v14;
  return result;
}

uint64_t sub_2144F2CC4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914B38, &qword_2147573E0);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v7, v8);
  sub_2144F4D44();
  sub_2146DAA28();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  sub_214061684();
  sub_2146DA388();
  sub_213FB54FC(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = v14;
    v15 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t sub_2144F2E7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914B28, &qword_2147573D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144F4D44();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_21406116C();
  sub_2146DA1C8();
  v10 = v13[0];
  v9 = v13[1];
  v14 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  (*(v6 + 8))(v8, v5);
  v11 = v13[0];
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  sub_21402D9F8(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_213FB54FC(v10, v9);
}

uint64_t sub_2144F3074(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914B30, &qword_2147573D8);
  v12 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  v16 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144F4C9C();

  sub_2146DAA28();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v17 = 0;
  sub_2140A6418();
  v9 = v11[1];
  sub_2146DA388();

  if (!v9)
  {
    LOBYTE(v13) = v16;
    v17 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
  }

  return (*(v12 + 8))(v5, v3);
}

void sub_2144F3244(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914B18, &qword_2147573C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144F4C9C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = 0;
    sub_21406100C();
    sub_2146DA1C8();
    v9 = v13;
    v10 = v14;
    v16 = v15;
    v17 = 1;
    sub_2144F4CF0();
    sub_2146DA148();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v16;
    *(a2 + 17) = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2144F3488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2144F35A8(char a1)
{
  if (!a1)
  {
    return 0x747865746E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 1635017060;
}

uint64_t sub_2144F35FC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v17[0] = *(a2 + 32);
  v17[1] = v4;
  v6 = type metadata accessor for ContextualUnpackRequestMessage.CodingKeys(255, v4, v5, v17[0]);
  swift_getWitnessTable(a1_9, v6);
  v7 = sub_2146DA3F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v17[2];
  sub_2146DAA28();
  LOBYTE(v18) = 0;
  v13 = v17[3];
  sub_2146DA388();
  if (!v13)
  {
    LOBYTE(v18) = *(v12 + *(a2 + 44));
    v20 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
    v14 = (v12 + *(a2 + 48));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v20 = 2;
    sub_21402D9F8(v18, v15);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v18, v19);
  }

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_2144F3810@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextualUnpackRequestMessage.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable(a1_9, v13);
  v14 = sub_2146DA258();
  v31 = *(v14 - 8);
  v32 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v34 = a2;
  v30 = a3;
  v17 = type metadata accessor for ContextualUnpackRequestMessage(0, a2, a3, a4);
  v27 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = v16;
  v20 = v36;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v19;
  v22 = v29;
  LOBYTE(v37) = 0;
  v23 = v34;
  v24 = v32;
  sub_2146DA1C8();
  (*(v22 + 32))(v21, v35, v23);
  v38 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  v21[*(v17 + 44)] = v37;
  v38 = 2;
  sub_21406116C();
  sub_2146DA1C8();
  (*(v31 + 8))(v33, v24);
  *&v21[*(v17 + 48)] = v37;
  v25 = v27;
  (*(v27 + 16))(v28, v21, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v21, v17);
}

uint64_t sub_2144F3C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2144F3D20(char a1)
{
  if (!a1)
  {
    return 0x747865746E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 1701603686;
}

uint64_t sub_2144F3D74(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = v4;
  v6 = type metadata accessor for ContextualUnpackFileRequestMessage.CodingKeys(255, v4, v5, v18);
  swift_getWitnessTable(byte_214757748, v6);
  v7 = sub_2146DA3F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v20;
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  v12 = v21;
  sub_2146DA388();
  if (!v12)
  {
    LOBYTE(v22) = *(v11 + *(a2 + 44));
    v25 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
    v13 = (v11 + *(a2 + 48));
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v13) = *(v13 + 16);
    v22 = v14;
    v23 = v15;
    v24 = v13;
    v25 = 2;
    sub_2140A6418();

    sub_2146DA388();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2144F3FA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v35 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextualUnpackFileRequestMessage.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable(byte_214757748, v13);
  v14 = sub_2146DA258();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v40 = a2;
  v36 = a3;
  v17 = type metadata accessor for ContextualUnpackFileRequestMessage(0, a2, a3, a4);
  v34 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v16;
  v20 = v42;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v34;
  v21 = v35;
  v42 = v17;
  v23 = v19;
  LOBYTE(v43) = 0;
  v24 = v40;
  v25 = v38;
  sub_2146DA1C8();
  (*(v21 + 32))(v23, v41, v24);
  v46 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  v23[*(v42 + 44)] = v43;
  v46 = 2;
  sub_21406100C();
  sub_2146DA1C8();
  v26 = a1;
  (*(v37 + 8))(v39, v25);
  v27 = v44;
  v28 = v45;
  v29 = v42;
  v30 = &v23[*(v42 + 48)];
  *v30 = v43;
  *(v30 + 1) = v27;
  v30[16] = v28;
  (*(v22 + 16))(v33, v23, v29);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return (*(v22 + 8))(v23, v29);
}

uint64_t sub_2144F43C8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1635017060;
  }
}

void sub_2144F4400(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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

uint64_t sub_2144F44E4(uint64_t a1)
{
  v2 = sub_2144F4D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144F4520(uint64_t a1)
{
  v2 = sub_2144F4D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144F4598()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1701603686;
  }
}

void sub_2144F45D0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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

uint64_t sub_2144F46B4(uint64_t a1)
{
  v2 = sub_2144F4C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144F46F0(uint64_t a1)
{
  v2 = sub_2144F4C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144F4790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2144F3488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2144F47C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214377044();
  *a1 = result;
  return result;
}

uint64_t sub_2144F47F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a1_9, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2144F484C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a1_9, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2144F48DC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void))
{
  sub_2146DA958();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_2146DA9B8();
}

uint64_t sub_2144F4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2144F3C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2144F497C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_214757748, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2144F49D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_214757748, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_2144F4AE4()
{
  result = qword_27C914B00;
  if (!qword_27C914B00)
  {
    result = swift_getWitnessTable(aY_30, &type metadata for UnpackFileRequestMessage, v0, v1);
    atomic_store(result, &qword_27C914B00);
  }

  return result;
}

unint64_t sub_2144F4B38()
{
  result = qword_27C914B08;
  if (!qword_27C914B08)
  {
    result = swift_getWitnessTable(aQ_29, &type metadata for UnpackFileRequestMessage, v0, v1);
    atomic_store(result, &qword_27C914B08);
  }

  return result;
}

uint64_t sub_2144F4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144F4BF4()
{
  result = qword_27C914B10;
  if (!qword_27C914B10)
  {
    result = swift_getWitnessTable(byte_214757240, &type metadata for UnpackRequestMessage, v0, v1);
    atomic_store(result, &qword_27C914B10);
  }

  return result;
}

unint64_t sub_2144F4C48()
{
  result = qword_280B30350;
  if (!qword_280B30350)
  {
    result = swift_getWitnessTable(byte_214757218, &type metadata for UnpackRequestMessage, v0, v1);
    atomic_store(result, &qword_280B30350);
  }

  return result;
}

unint64_t sub_2144F4C9C()
{
  result = qword_27C914B20;
  if (!qword_27C914B20)
  {
    result = swift_getWitnessTable(aA_34, &type metadata for UnpackFileRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914B20);
  }

  return result;
}

unint64_t sub_2144F4CF0()
{
  result = qword_280B30520;
  if (!qword_280B30520)
  {
    result = swift_getWitnessTable(byte_2146FD470, &type metadata for ValidatorContext, v0, v1);
    atomic_store(result, &qword_280B30520);
  }

  return result;
}

unint64_t sub_2144F4D44()
{
  result = qword_280B33608[0];
  if (!qword_280B33608[0])
  {
    result = swift_getWitnessTable(byte_214757798, &type metadata for UnpackRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, qword_280B33608);
  }

  return result;
}

unint64_t sub_2144F4DB0()
{
  result = qword_280B34CB8;
  if (!qword_280B34CB8)
  {
    result = swift_getWitnessTable(aAnm, &type metadata for ValidatorContext, v0, v1);
    atomic_store(result, &qword_280B34CB8);
  }

  return result;
}

unint64_t sub_2144F4E40()
{
  result = qword_27C914BC0;
  if (!qword_27C914BC0)
  {
    result = swift_getWitnessTable(asc_2147574A8, &type metadata for UnpackFileRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914BC0);
  }

  return result;
}

unint64_t sub_2144F4E98()
{
  result = qword_27C914BC8;
  if (!qword_27C914BC8)
  {
    result = swift_getWitnessTable(aI_29, &type metadata for UnpackRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914BC8);
  }

  return result;
}

unint64_t sub_2144F4F98()
{
  result = qword_280B335F8;
  if (!qword_280B335F8)
  {
    result = swift_getWitnessTable(byte_2147574D0, &type metadata for UnpackRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B335F8);
  }

  return result;
}

unint64_t sub_2144F4FF0()
{
  result = qword_280B33600;
  if (!qword_280B33600)
  {
    result = swift_getWitnessTable(byte_2147574F8, &type metadata for UnpackRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B33600);
  }

  return result;
}

unint64_t sub_2144F5048()
{
  result = qword_27C914BD0;
  if (!qword_27C914BD0)
  {
    result = swift_getWitnessTable(byte_214757418, &type metadata for UnpackFileRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914BD0);
  }

  return result;
}

unint64_t sub_2144F50A0()
{
  result = qword_27C914BD8;
  if (!qword_27C914BD8)
  {
    result = swift_getWitnessTable(byte_214757440, &type metadata for UnpackFileRequestMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914BD8);
  }

  return result;
}

unint64_t sub_2144F5110@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2144F95A0;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144F52A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F52F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F534C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F53A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144F540C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F5488()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2144F5570@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F55C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F5630@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F5688(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144F56F0()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2144F5770()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_2144F57F0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21439DF90;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_2144F5948@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21439DF90;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_2144F5AA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2144F95A0;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 255;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(inited + 40) = v4;
  return sub_214042B80(inited, a1);
}

uint64_t sub_2144F5BE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F5C34(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F5C90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F5CDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144F5D38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F5D84(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F5DE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F5E38(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2144F5EA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F5F1C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F5F98()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F6014()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

void sub_2144F6094(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F61DC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F6278(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2144F6310(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F6454(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F652C;
  }

  return result;
}

void (*sub_2144F6530(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F65D0;
}

uint64_t sub_2144F65D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudKitShareParticipant(0) + 24);

  return sub_2144F6638(v3, a1);
}

uint64_t sub_2144F6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUserIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144F66BC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudKitShareParticipant(0) + 24);

  return sub_2144F6700(a1, v3);
}

uint64_t sub_2144F6700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUserIdentity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144F67D0(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2144F686C(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_2144F68E4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_2144F6918(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_2144F6990@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_2144F69C4(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_2144F6A3C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t sub_2144F6A70(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_2144F6AE8@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_2144F6B1C(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t sub_2144F6B94@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t sub_2144F6BC8(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t sub_2144F6C40@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t sub_2144F6C74(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t sub_2144F6CEC()
{
  v1 = v0 + *(type metadata accessor for CloudKitShareParticipant(0) + 60);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F6D30(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitShareParticipant(0) + 60);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F6DC0()
{
  v1 = v0 + *(type metadata accessor for CloudKitShareParticipant(0) + 64);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F6E04(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitShareParticipant(0) + 64);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F6EB8(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t sub_2144F6F54(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t sub_2144F70A4()
{
  v1 = v0 + *(type metadata accessor for CloudKitShareParticipant(0) + 80);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F70E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitShareParticipant(0) + 80);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F719C(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t sub_2144F7238(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_2144F72B0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t sub_2144F72E4(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 92)) = v2;
  return result;
}

uint64_t sub_2144F735C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 20);
  *(a1 + 160) = *(v1 + 20);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_213FB2E54(v18, v17, &qword_27C917500, &qword_2146F42A8);
}

__n128 sub_2144F7404(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_213FB2DF4(v13, &qword_27C917500, &qword_2146F42A8);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_2144F759C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for CloudKitUserIdentity(0) + 24);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x110uLL);
  return sub_213FB2E54(__dst, &v5, &qword_27C917520, &qword_2146F42B0);
}

void *sub_2144F7614(const void *a1)
{
  v3 = *(type metadata accessor for CloudKitUserIdentity(0) + 24);
  memcpy(v5, (v1 + v3), sizeof(v5));
  sub_213FB2DF4(v5, &qword_27C917520, &qword_2146F42B0);
  return memcpy((v1 + v3), a1, 0x110uLL);
}

double sub_2144F76D0()
{
  type metadata accessor for CloudKitUserIdentity(0);

  return result;
}

void sub_2144F7704(uint64_t a1)
{
  v3 = *(type metadata accessor for CloudKitUserIdentity(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t sub_2144F778C()
{
  v1 = v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 32);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F77D0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitUserIdentity(0) + 32);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F7860()
{
  v1 = v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 36);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F78A4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitUserIdentity(0) + 36);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F7958(char a1)
{
  result = type metadata accessor for CloudKitUserIdentity(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_2144F79F4(char a1)
{
  result = type metadata accessor for CloudKitUserIdentity(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2144F7A6C()
{
  v1 = v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 48);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F7AB0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitUserIdentity(0) + 48);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F7B64(uint64_t a1)
{
  result = type metadata accessor for CloudKitUserIdentity(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

void sub_2144F7BDC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F7D20(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_2144F7DF8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

void sub_2144F7E98(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F7FDC(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F95A4;
  }

  return result;
}

void (*sub_2144F80B4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F95A8;
}

uint64_t sub_2144F8154@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 224);
  v25 = *(v1 + 208);
  v26 = v3;
  v4 = *(v1 + 128);
  v5 = *(v1 + 160);
  v21 = *(v1 + 144);
  v6 = v21;
  v22 = v5;
  v7 = *(v1 + 160);
  v8 = *(v1 + 192);
  v23 = *(v1 + 176);
  v9 = v23;
  v24 = v8;
  v10 = *(v1 + 96);
  v18[0] = *(v1 + 80);
  v18[1] = v10;
  v11 = *(v1 + 128);
  v13 = *(v1 + 80);
  v12 = *(v1 + 96);
  v19 = *(v1 + 112);
  v14 = v19;
  v20 = v11;
  v15 = *(v1 + 224);
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 240);
  *(a1 + 160) = *(v1 + 240);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_213FB2E54(v18, v17, &qword_27C917500, &qword_2146F42A8);
}

__n128 sub_2144F81FC(uint64_t a1)
{
  v3 = *(v1 + 224);
  v13[8] = *(v1 + 208);
  v13[9] = v3;
  v14 = *(v1 + 240);
  v4 = *(v1 + 160);
  v13[4] = *(v1 + 144);
  v13[5] = v4;
  v5 = *(v1 + 192);
  v13[6] = *(v1 + 176);
  v13[7] = v5;
  v6 = *(v1 + 96);
  v13[0] = *(v1 + 80);
  v13[1] = v6;
  v7 = *(v1 + 128);
  v13[2] = *(v1 + 112);
  v13[3] = v7;
  sub_213FB2DF4(v13, &qword_27C917500, &qword_2146F42A8);
  v8 = *(a1 + 144);
  *(v1 + 208) = *(a1 + 128);
  *(v1 + 224) = v8;
  *(v1 + 240) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 144) = *(a1 + 64);
  *(v1 + 160) = v9;
  v10 = *(a1 + 112);
  *(v1 + 176) = *(a1 + 96);
  *(v1 + 192) = v10;
  v11 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v11;
  result = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = result;
  return result;
}

uint64_t sub_2144F82EC()
{
  v1 = *(v0 + 256);
  sub_213FDCA18(v1, *(v0 + 264));
  return v1;
}

uint64_t sub_2144F8320(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 256), *(v2 + 264));
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

void sub_2144F8378(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F84C0(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F855C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

void sub_2144F85F4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F873C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144F87D8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

void sub_2144F8870(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F89B8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144F8A54(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

void sub_2144F8AEC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 136), *(v2 + 144));

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144F8C30(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214476B78;
  }

  return result;
}

void (*sub_2144F8D08(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214476EC4;
}

uint64_t sub_2144F8DD8(uint64_t a1)
{
  *(a1 + 8) = sub_2144F8E5C(&qword_27C9075E8, type metadata accessor for CloudKitShareParticipant, byte_2146F8560);
  result = sub_2144F8E5C(&qword_27C907688, type metadata accessor for CloudKitShareParticipant, aQ_79);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144F8E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144F8EA4(uint64_t a1)
{
  *(a1 + 8) = sub_2144F8E5C(&qword_27C906220, type metadata accessor for CloudKitUserIdentity, aY_31);
  result = sub_2144F8E5C(&qword_27C906250, type metadata accessor for CloudKitUserIdentity, byte_2146F85D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144F8F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void sub_2144F8FE4(uint64_t a1)
{
  sub_2144F9388(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_214084AA4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CloudKitUserIdentity(319);
      if (v3 <= 0x3F)
      {
        sub_2144F9388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2144F9334(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2144F91A0(uint64_t a1)
{
  sub_2144F9388(319, &qword_27C914C00, &type metadata for CloudKitRecordID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2144F9334(319, &qword_27C914C08, MEMORY[0x277CC8E50]);
    if (v2 <= 0x3F)
    {
      sub_2144F9388(319, &qword_27C914C10, &type metadata for CloudKitUserIdentityLookupInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2144F9388(319, &qword_27C914C18, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_2144F9388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2144F9334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2144F9388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16CloudKitRecordIDVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144F93F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_2144F9440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144F94D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2144F951C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2144F95AC(uint64_t a1)
{
  *(a1 + 8) = sub_21405C92C();
  result = sub_21405CA58();
  *(a1 + 16) = result;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MBDRichCardStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDRichCardStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_2144F970C()
{
  v0 = sub_2146D8C48();
  v1 = MEMORY[0x28223BE20](v0);
  __swift_allocate_value_buffer(v1, qword_27C914C20);
  __swift_project_value_buffer(v0, qword_27C914C20);
  sub_2146D8D58();
  return sub_2146D8D78();
}

uint64_t sub_2144F981C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_2146D8D48();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v4;
  v5 = sub_2146D8C48();
  v30 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v32 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27CA19E08);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v29 = v12;
  MEMORY[0x216053AD0](v18, v12, v19);
  v39 = 0x28272A7E212E5F2DLL;
  v40 = 0xE900000000000029;
  sub_2146D8D58();
  sub_2146D8D78();
  v20 = sub_2145030B8();
  MEMORY[0x216053AD0](v9, v5, v20);
  v28 = v17;
  v21 = *(v30 + 8);
  v21(v9, v5);
  v22 = v31;
  sub_2146D8BE8();
  v23 = v33;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = MEMORY[0x277D83E40];
  v25 = v35;
  sub_2146D8CF8();
  (*(v36 + 8))(v23, v37);
  MEMORY[0x216053B70](v15, v24);
  (*(v34 + 8))(v22, v25);
  v21(v11, v5);
  return (*(v32 + 8))(v28, v29);
}

uint64_t sub_2144F9CE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  return sub_2146D8DA8();
}

uint64_t sub_2144F9DB4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_2146D8D48();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_2146D8C48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_2146D8D68();
  sub_2146D8D78();
  v18 = sub_2145030B8();
  MEMORY[0x216053AD0](v15, v10, v18);
  v24 = *(v11 + 8);
  v24(v15, v10);
  if (qword_27C903108 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_27C914C20);
  MEMORY[0x216053AD0](v19, v10, v18);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v20 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v26 + 8))(v6, v27);
  MEMORY[0x216053B70](v3, v20);
  (*(v25 + 8))(v9, v7);
  v21 = v24;
  v24(v15, v10);
  return v21(v17, v10);
}

uint64_t sub_2144FA1BC@<X0>(uint64_t a2@<X8>)
{
  v13[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CE8, &qword_214757CC8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_2146D8C88();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8C58();
  v10 = sub_21432076C(&qword_27C914CF0, &qword_27C914CE8, &qword_214757CC8, MEMORY[0x277D853E0]);
  MEMORY[0x216053AF0](v7, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  sub_2146D8C08();
  return (v11)(v9, v3);
}

uint64_t sub_2144FA3EC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v45 = sub_2146D8D48();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v47 = *(v41 - 8);
  v3 = MEMORY[0x28223BE20](v41);
  v46 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = v35 - v6;
  MEMORY[0x28223BE20](v5);
  v49 = v35 - v7;
  v8 = sub_2146D8C48();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v42 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - v15;
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_27CA19E38);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v17, v11, v18);
  v53 = 42;
  v54 = 0xE100000000000000;
  v19 = sub_2145031D0();
  v20 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v55, &v53, MEMORY[0x277D837D0], v19);
  v51 = 35;
  v52 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v53, &v51, v20, v19);
  if (qword_27C903108 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_27C914C20);
  v22 = v8;
  v37 = v8;
  v23 = v21;
  v38 = sub_2145030B8();
  v36 = v10;
  MEMORY[0x216053AD0](v23, v22, v38);
  v39 = v11;
  v40 = v16;
  sub_2146D8BE8();
  v51 = v55[0];
  v52 = v55[1];
  sub_2146D8C38();
  v24 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v25 = v41;
  v35[1] = v24;
  sub_2146D8CF8();
  v26 = *(v43 + 8);
  v27 = v45;
  v26(v2, v45);

  MEMORY[0x216053B70](v14, MEMORY[0x277D83E40]);
  v51 = v53;
  v52 = v54;
  sub_2146D8C38();
  v28 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v26(v2, v27);

  v29 = v46;
  v30 = v28;
  MEMORY[0x216053B70](v14, v28);
  sub_2146D8C38();
  v32 = v36;
  v31 = v37;
  sub_2146D8CF8();
  v26(v2, v27);
  MEMORY[0x216053B70](v14, v30);
  v33 = *(v47 + 8);
  v33(v29, v25);
  v33(v50, v25);
  v33(v49, v25);
  (*(v44 + 8))(v32, v31);
  return (*(v42 + 8))(v40, v39);
}

uint64_t sub_2144FAA24@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v1 = sub_2146D8C48();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v59 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x28223BE20](v2);
  v60 = &v51 - v5;
  MEMORY[0x28223BE20](v4);
  v72 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v62 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v51 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v71 = &v51 - v16;
  v17 = sub_2146D8D48();
  v18 = *(v17 - 8);
  v76 = v17;
  v77 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v51 - v22;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v75 = *(v67 - 8);
  v24 = MEMORY[0x28223BE20](v67);
  v58 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v51 - v27;
  MEMORY[0x28223BE20](v26);
  v70 = &v51 - v29;
  v78 = 43;
  v79 = 0xE100000000000000;
  v57 = sub_2145031D0();
  MEMORY[0x216053AF0](v80, &v78, MEMORY[0x277D837D0]);
  if (qword_27C903118 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v7, qword_27C914C38);
  v30 = sub_2146D8D88();
  v31 = *(v30 - 8);
  v52 = *(v31 + 56);
  v53 = v31 + 56;
  v52(v23, 1, 1, v30);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v32 = MEMORY[0x277D83E40];
  v33 = v71;
  sub_2146D8CE8();
  v34 = *(v77 + 8);
  v77 += 8;
  v69 = v34;
  v34(v20, v76);
  sub_214503110(v23);
  MEMORY[0x216053B20](v33, v32);
  v66 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v35 = v67;
  MEMORY[0x216053AF0](v28, v67, v66);
  v36 = *(v75 + 8);
  v75 += 8;
  v54 = v28;
  v36(v28, v35);
  v56 = v36;
  sub_2146D8D68();
  v37 = v60;
  sub_2146D8D78();
  v55 = sub_2145030B8();
  v38 = v74;
  MEMORY[0x216053AF0](v37, v74, v55);
  v59 = *(v73 + 8);
  v73 += 8;
  v59(v37, v38);
  v52(v23, 1, 1, v30);
  sub_2146D8C38();
  v39 = v71;
  v40 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v69(v20, v76);
  sub_214503110(v23);
  v41 = v58;
  MEMORY[0x216053B20](v39, v40);
  MEMORY[0x216053AF0](v41, v35, v66);
  v36(v41, v35);
  v78 = v80[0];
  v79 = v80[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v42 = v63;
  sub_2146D8D08();
  v43 = v61;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44 = *(v62 + 8);
  v44(v43, v7);
  v44(v42, v7);
  v45 = v69;
  v69(v20, v76);
  sub_2146D8C38();
  sub_2146D8D08();
  v46 = v64;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44(v46, v7);
  v44(v43, v7);
  v45(v20, v76);
  sub_2146D8C38();
  sub_2146D8D08();
  v47 = v54;
  v48 = v67;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44(v46, v7);
  v44(v43, v7);
  v69(v20, v76);
  v44(v42, v7);
  v44(v68, v7);
  v44(v71, v7);
  v49 = v56;
  v56(v47, v48);
  v59(v72, v74);
  return v49(v70, v48);
}

uint64_t sub_2144FB3E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v5, v1, v8);
  v9 = *(v2 + 8);
  v9(v5, v1);
  sub_2146D8C08();
  return (v9)(v7, v1);
}

uint64_t sub_2144FB5A0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = sub_2146D8D48();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  if (qword_27C903130 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27CA19D78);
  v17 = sub_2146D8D88();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v18 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  (*(v23 + 8))(v6, v24);
  sub_214503110(v9);
  MEMORY[0x216053B90](v3, v18);
  v19 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v14, v10, v19);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_2146D8C08();
  return (v20)(v16, v10);
}

uint64_t sub_2144FB940@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_2146D8D48();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  sub_2146D8C88();
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8D18();
  (*(v26 + 8))(v6, v27);
  sub_214503110(v9);
  (*(v11 + 8))(v13, v10);
  MEMORY[0x216053B90](v3, MEMORY[0x277D83E40]);
  v22 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  MEMORY[0x216053AF0](v18, v14, v22);
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_2146D8C08();
  return (v23)(v20, v14);
}

uint64_t sub_2144FBD4C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_2146D8D48();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v50 = *(v48 - 8);
  v7 = MEMORY[0x28223BE20](v48);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v42 = &v36 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v49 = &v36 - v22;
  v53 = 59;
  v54 = 0xE100000000000000;
  v41 = sub_2145031D0();
  MEMORY[0x216053AF0](v55, &v53, MEMORY[0x277D837D0], v41);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v24 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v21, v10, v23);
  v25 = *(v11 + 8);
  v25(v21, v10);
  v26 = sub_2146D8D88();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  sub_2146D8C38();
  sub_2144FC3C4(v18);
  sub_2146D8D38();
  v25(v18, v10);
  v27 = *(v51 + 8);
  v51 += 8;
  v46 = v27;
  v27(v3, v52);
  sub_214503110(v6);
  v28 = v43;
  MEMORY[0x216053B10](v21, v24);
  v38 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v29 = v48;
  MEMORY[0x216053AF0](v28, v48, v38);
  v30 = *(v50 + 8);
  v50 += 8;
  v40 = v30;
  v30(v28, v29);
  v53 = v55[0];
  v54 = v55[1];
  v39 = v21;
  sub_2146D8C08();

  sub_2146D8C38();
  v31 = v42;
  sub_2146D8D08();
  v32 = v44;
  sub_2146D8D08();
  v37 = v18;
  sub_2146D8CD8();
  v25(v32, v10);
  v25(v31, v10);
  v46(v3, v52);
  sub_2146D8C38();
  sub_2146D8D08();
  v33 = v47;
  v34 = v48;
  sub_2146D8D08();
  sub_2146D8CD8();
  v25(v32, v10);
  v25(v31, v10);
  v46(v3, v52);
  v25(v37, v10);
  v25(v39, v10);
  v40(v33, v34);
  return (v25)(v49, v10);
}

uint64_t sub_2144FC3C4@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_2146D8D48();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v25 = 61;
  v26 = 0xE100000000000000;
  v17 = sub_2145031D0();
  MEMORY[0x216053AF0](v27, &v25, MEMORY[0x277D837D0], v17);
  if (qword_27C903138 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_27CA19D90);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v18, v4, v19);
  v25 = v27[0];
  v26 = v27[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v11, v4);
  (*(v23 + 8))(v3, v24);
  v20(v14, v4);
  return (v20)(v16, v4);
}

uint64_t sub_2144FC708@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v38 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v36 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v35 = v30 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = v30 - v6;
  v8 = sub_2146D8D48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v34 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v33 = v30 - v19;
  v39 = 0x3D7478653BLL;
  v40 = 0xE500000000000000;
  v32 = sub_2145031D0();
  MEMORY[0x216053AF0](v41, &v39, MEMORY[0x277D837D0]);
  if (qword_27C903118 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27C914C38);
  v20 = sub_2146D8D88();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v21 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  v22 = *(v9 + 8);
  v30[1] = v9 + 8;
  v31 = v22;
  v22(v11, v8);
  sub_214503110(v14);
  v23 = v7;
  MEMORY[0x216053B90](v7, v21);
  v24 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  v25 = v33;
  MEMORY[0x216053AF0](v18, v15, v24);
  v30[0] = v8;
  v34 = *(v34 + 8);
  (v34)(v18, v15);
  v39 = v41[0];
  v40 = v41[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v26 = v35;
  sub_2146D8D08();
  v27 = v36;
  sub_2146D8D08();
  sub_2146D8CD8();
  v28 = *(v38 + 8);
  v28(v27, v1);
  v28(v26, v1);
  v31(v11, v30[0]);
  v28(v23, v1);
  return (v34)(v25, v15);
}

uint64_t sub_2144FCC48@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v40 = *(v37 - 8);
  v1 = MEMORY[0x28223BE20](v37);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v38 = &v33 - v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v42 = sub_2146D8D48();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v43 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v35 = &v33 - v20;
  v45 = 0x3D627573693BLL;
  v46 = 0xE600000000000000;
  v34 = sub_2145031D0();
  MEMORY[0x216053AF0](v47, &v45, MEMORY[0x277D837D0], v34);
  v21 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v22 = sub_2146D8D88();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8D18();
  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v8, v42);
  sub_214503110(v11);
  (*(v13 + 8))(v15, v12);
  v24 = v6;
  MEMORY[0x216053B90](v6, v21);
  v25 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8, MEMORY[0x277D85420]);
  v26 = v35;
  MEMORY[0x216053AF0](v19, v16, v25);
  v27 = *(v43 + 8);
  v43 += 8;
  v27(v19, v16);
  v45 = v47[0];
  v46 = v47[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = v37;
  v29 = v38;
  sub_2146D8D08();
  v30 = v39;
  sub_2146D8D08();
  sub_2146D8CD8();
  v31 = *(v40 + 8);
  v31(v30, v28);
  v31(v29, v28);
  v36(v8, v42);
  v31(v24, v28);
  return (v27)(v26, v16);
}

uint64_t sub_2144FD234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v56 = a3;
  v53 = sub_2146D8D48();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v55 = *(v48 - 8);
  v6 = MEMORY[0x28223BE20](v48);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v54 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = sub_2146D8C48();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v58 = v50;
  v59 = a2;
  sub_2146D8D58();
  sub_2146D8D78();
  v25 = sub_2145030B8();
  v26 = v24;
  MEMORY[0x216053AD0](v22, v17, v25);
  v27 = *(v18 + 8);
  v28 = v17;
  v50 = v18 + 8;
  v47 = v27;
  v27(v22, v17);
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v10, qword_27CA19D60);
  v30 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v29, v10, v30);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v10, qword_27CA19E50);
  MEMORY[0x216053AD0](v31, v10, v30);
  v45 = v28;
  v46 = v26;
  sub_2146D8BE8();
  sub_2146D8C38();
  v42 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v43 = v9;
  v32 = MEMORY[0x277D83E40];
  v34 = v48;
  v33 = v49;
  v44 = v16;
  sub_2146D8CF8();
  v35 = *(v51 + 8);
  v36 = v53;
  v35(v5, v53);
  v37 = v52;
  MEMORY[0x216053B70](v33, v32);
  sub_2146D8C38();
  v38 = v57;
  sub_2146D8CF8();
  v35(v5, v36);
  MEMORY[0x216053B70](v33, v32);
  v39 = *(v55 + 8);
  v39(v37, v34);
  v39(v43, v34);
  v40 = *(v54 + 8);
  v40(v38, v10);
  v40(v44, v10);
  return v47(v46, v45);
}

uint64_t sub_2144FD844@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_2146D8D48();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v40 = *(v37 - 8);
  v3 = MEMORY[0x28223BE20](v37);
  v43 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v21 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v35 = v19;
  MEMORY[0x216053AD0](v17, v7, v20);
  v22 = *(v8 + 8);
  v22(v17, v7);
  sub_2146D8DA8();
  v32 = v17;
  MEMORY[0x216053AD0](v14, v7, v20);
  v42 = v14;
  v33 = v8 + 8;
  v34 = v22;
  v22(v14, v7);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v11, v7, v20);
  v22(v11, v7);
  v31 = v6;
  sub_2146D8BE8();
  v23 = v36;
  sub_2146D8C38();
  v30 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = v37;
  sub_2146D8CF8();
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v23, v39);
  MEMORY[0x216053B70](v11, v21);
  sub_2146D8C38();
  sub_2146D8CF8();
  v26(v23, v25);
  MEMORY[0x216053B70](v11, v21);
  v27 = *(v40 + 8);
  v27(v43, v24);
  v27(v31, v24);
  v28 = v34;
  v34(v42, v7);
  v28(v32, v7);
  return (v28)(v35, v7);
}

uint64_t sub_2144FDDA4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v60 = v1;
  v61 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v62 = *(v59 - 8);
  v12 = MEMORY[0x28223BE20](v59);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v52 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v45 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v58 = &v45 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v57 = &v45 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v45 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v15, qword_27CA19E08);
  v30 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v55 = v28;
  MEMORY[0x216053AF0](v29, v15, v30);
  v31 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v32 = sub_2146D8D88();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v33 = v48;
  sub_2146D8CE8();
  v34 = *(v61 + 8);
  v61 += 8;
  v54 = v34;
  v34(v4, v60);
  sub_214503110(v7);
  (*(v49 + 1))(v11, v33);
  v35 = v47;
  v46 = v26;
  MEMORY[0x216053B20](v26, v31);
  v36 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v37 = v59;
  MEMORY[0x216053AF0](v35, v59, v36);
  v38 = *(v62 + 8);
  v62 += 8;
  v49 = v38;
  v38(v35, v37);
  MEMORY[0x216053AF0](v29, v15, v30);
  sub_2146D8C08();
  sub_2146D8C38();
  v39 = v50;
  sub_2146D8D08();
  v40 = v51;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41 = *(v52 + 8);
  v41(v40, v15);
  v41(v39, v15);
  v42 = v60;
  v54(v4, v60);
  sub_2146D8C38();
  sub_2146D8D08();
  v43 = v46;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v40, v15);
  v41(v39, v15);
  v54(v4, v42);
  v41(v58, v15);
  v41(v57, v15);
  v41(v43, v15);
  v49(v56, v59);
  return (v41)(v55, v15);
}

uint64_t sub_2144FE51C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_2146D8D48();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_27CA19E08);
  v15 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v14, v7, v15);
  v23 = 45;
  v24 = 0xE100000000000000;
  v16 = sub_2145031D0();
  MEMORY[0x216053AD0](v25, &v23, MEMORY[0x277D837D0], v16);
  sub_2146D8BE8();
  v23 = v25[0];
  v24 = v25[1];
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v17 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v20 + 8))(v3, v21);

  MEMORY[0x216053B70](v11, v17);
  (*(v19 + 8))(v6, v4);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_2144FE8EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v33 = a5;
  v7 = sub_2146D8D48();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  if (*a1 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, a2);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v23, v13, v24);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v17, v13, v24);
  v25 = *(v14 + 8);
  v25(v17, v13);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v26 = v30;
  sub_2146D8CF8();
  (*(v31 + 8))(v9, v32);
  MEMORY[0x216053B70](v17, MEMORY[0x277D83E40]);
  (*(v29 + 8))(v12, v26);
  v25(v20, v13);
  return (v25)(v22, v13);
}

uint64_t sub_2144FECA0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_2146D8D48();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v10 = *(v50 - 8);
  v11 = MEMORY[0x28223BE20](v50);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v47 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v48 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v46 = v43 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v52 = v43 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v51 = v43 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v54 = v43 - v25;
  MEMORY[0x28223BE20](v24);
  v53 = v43 - v26;
  if (qword_27C9031E0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v15, qword_27CA19E20);
  v28 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v27, v15, v28);
  v29 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v30 = sub_2146D8D88();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v31 = v54;
  sub_2146D8CE8();
  v32 = *(v56 + 8);
  v56 += 8;
  v44 = v32;
  v32(v3, v57);
  sub_214503110(v6);
  v45[1](v9, v7);
  MEMORY[0x216053B20](v31, v29);
  v33 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v34 = v50;
  MEMORY[0x216053AF0](v13, v50, v33);
  v35 = *(v10 + 8);
  v43[1] = v10 + 8;
  v45 = v35;
  (v35)(v13, v34);
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v15, qword_27CA19E08);
  MEMORY[0x216053AF0](v36, v15, v28);
  sub_2146D8C08();
  sub_2146D8C38();
  v37 = v46;
  sub_2146D8D08();
  v38 = v48;
  sub_2146D8D08();
  sub_2146D8CD8();
  v39 = *(v47 + 8);
  v39(v38, v15);
  v39(v37, v15);
  v40 = v44;
  v44(v3, v57);
  sub_2146D8C38();
  sub_2146D8D08();
  v41 = v54;
  sub_2146D8D08();
  sub_2146D8CD8();
  v39(v38, v15);
  v39(v37, v15);
  v40(v3, v57);
  v39(v52, v15);
  v39(v51, v15);
  v39(v41, v15);
  (v45)(v55, v50);
  return (v39)(v53, v15);
}

uint64_t sub_2144FF454@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v68 = *(v62 - 8);
  v1 = MEMORY[0x28223BE20](v62);
  v56 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v61 = &v45 - v3;
  v4 = sub_2146D8D48();
  v58 = v4;
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v63 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v45 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v66 = *(v64 - 8);
  v22 = MEMORY[0x28223BE20](v64);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v67 = &v45 - v25;
  v26 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v27 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v49 = sub_2146D8D88();
  v28 = *(v49 - 8);
  v48 = *(v28 + 56);
  v51 = (v28 + 56);
  v48(v9, 1, 1, v49);
  sub_2146D8C38();
  v46 = v9;
  sub_2146D8CE8();
  v29 = *(v69 + 8);
  v69 += 8;
  v65 = v29;
  v29(v6, v4);
  sub_214503110(v9);
  v31 = v63 + 8;
  v30 = *(v63 + 8);
  v59 = v21;
  v30(v21, v10);
  v52 = v30;
  v63 = v31;
  MEMORY[0x216053B20](v19, v27);
  v50 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v32 = v64;
  MEMORY[0x216053AF0](v24, v64, v50);
  v33 = *(v66 + 8);
  v66 += 8;
  v53 = v33;
  v33(v24, v32);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v19, v10, v26);
  v30(v19, v10);
  v34 = v46;
  v48(v46, 1, 1, v49);
  v70 = 46;
  v71 = 0xE100000000000000;
  sub_2146D8C38();
  sub_2145031D0();
  sub_2146D8D38();
  v35 = v58;
  v65(v6, v58);
  sub_214503110(v34);
  v36 = v56;
  MEMORY[0x216053B10](v19, v27);
  v49 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0, MEMORY[0x277D853B0]);
  v37 = v62;
  MEMORY[0x216053AF0](v36, v62, v49);
  v38 = *(v68 + 8);
  v68 += 8;
  v51 = v38;
  v38(v36, v37);
  v47 = v19;
  sub_2146D8C08();
  sub_2146D8C38();
  v39 = v54;
  sub_2146D8D08();
  v40 = v55;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41 = v52;
  v52(v40, v10);
  v41(v39, v10);
  v65(v6, v35);
  sub_2146D8C38();
  sub_2146D8D08();
  v43 = v61;
  v42 = v62;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v40, v10);
  v41(v39, v10);
  v65(v6, v58);
  v41(v60, v10);
  v41(v47, v10);
  v51(v43, v42);
  v41(v59, v10);
  return v53(v67, v64);
}

uint64_t sub_2144FFCE0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_2146D8D48();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  v24 = v15;
  MEMORY[0x216053AF0](v13, v4, v16);
  v17 = *(v5 + 8);
  v17(v13, v4);
  v29 = 46;
  v30 = 0xE100000000000000;
  v18 = sub_2145031D0();
  MEMORY[0x216053AF0](v31, &v29, MEMORY[0x277D837D0], v18);
  sub_2146D8C08();
  v20 = v31[0];
  v19 = v31[1];
  sub_2146D8C38();
  v29 = v20;
  v30 = v19;
  sub_2146D8D08();
  v21 = v25;
  sub_2146D8D08();

  sub_2146D8CD8();
  v17(v21, v4);
  v17(v10, v4);
  (*(v27 + 8))(v3, v28);
  v17(v13, v4);
  return (v17)(v24, v4);
}

uint64_t sub_214500034@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_2146D8D48();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_27CA19DA8);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AD0](v17, v7, v18);
  if (qword_27C903128 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_27C914C68);
  MEMORY[0x216053AD0](v19, v7, v18);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v20 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v24 + 8))(v3, v25);
  MEMORY[0x216053B70](v11, v20);
  (*(v23 + 8))(v6, v4);
  v21 = *(v8 + 8);
  v21(v14, v7);
  return (v21)(v16, v7);
}

uint64_t sub_2145003F8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v42 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v41 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v33 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v44 = &v33 - v20;
  if (qword_27C903128 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_27C914C68);
  v22 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v21, v12, v22);
  if (qword_27C903140 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_27C914C80);
  v23 = sub_2146D8D88();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_2146D8C38();
  v24 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v25 = *(v2 + 8);
  v35 = v2 + 8;
  v37 = v25;
  v25(v4, v1);
  sub_214503110(v7);
  v26 = v36;
  MEMORY[0x216053B20](v19, v24);
  v27 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v28 = v38;
  MEMORY[0x216053AF0](v26, v8, v27);
  v34 = v1;
  v42 = *(v42 + 8);
  (v42)(v26, v8);
  sub_2146D8C08();
  sub_2146D8C38();
  v29 = v39;
  sub_2146D8D08();
  v30 = v40;
  sub_2146D8D08();
  sub_2146D8CD8();
  v31 = *(v41 + 8);
  v31(v30, v12);
  v31(v29, v12);
  v37(v4, v34);
  v31(v19, v12);
  (v42)(v28, v8);
  return (v31)(v44, v12);
}

uint64_t sub_214500988@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x28223BE20](v53);
  v51 = v46 - v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CE8, &qword_214757CC8);
  v68 = *(v65 - 8);
  v2 = MEMORY[0x28223BE20](v65);
  v52 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v67 = v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v57 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v56 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v55 = v46 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v66 = v46 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v46 - v12;
  v14 = sub_2146D8D48();
  v70 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v46 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v69 = *(v54 - 8);
  v20 = MEMORY[0x28223BE20](v54);
  v50 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v46 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v46 - v25;
  if (qword_27C903120 != -1)
  {
    swift_once();
  }

  v46[2] = __swift_project_value_buffer(v5, qword_27C914C50);
  v48 = sub_2146D8D88();
  v27 = *(v48 - 8);
  v47 = *(v27 + 56);
  v49 = v27 + 56;
  v47(v19, 1, 1, v48);
  sub_2146D8C38();
  v46[1] = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v29 = *(v70 + 8);
  v70 += 8;
  v62 = v29;
  v29(v16, v14);
  sub_214503110(v19);
  MEMORY[0x216053B20](v13, v28);
  v30 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v59 = v24;
  v60 = v30;
  v64 = v26;
  v31 = v54;
  MEMORY[0x216053AF0](v24, v54, v30);
  v63 = *(v69 + 8);
  v69 += 8;
  v63(v24, v31);
  sub_2146D8C88();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v32 = v52;
  v33 = v28;
  sub_2146D8C58();
  v34 = sub_21432076C(&qword_27C914CF0, &qword_27C914CE8, &qword_214757CC8, MEMORY[0x277D853E0]);
  v61 = v14;
  v51 = v34;
  v35 = v65;
  MEMORY[0x216053AF0](v32, v65, v34);
  v36 = *(v68 + 8);
  v68 += 8;
  v53 = v36;
  v36(v32, v35);
  v47(v19, 1, 1, v48);
  sub_2146D8C38();
  v37 = v33;
  sub_2146D8CE8();
  v62(v16, v14);
  sub_214503110(v19);
  v38 = v50;
  v46[0] = v13;
  MEMORY[0x216053B20](v13, v37);
  MEMORY[0x216053AF0](v38, v31, v60);
  v63(v38, v31);
  sub_2146D8C08();
  sub_2146D8C38();
  v39 = v55;
  sub_2146D8D08();
  v40 = v56;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41 = *(v57 + 8);
  v41(v40, v5);
  v41(v39, v5);
  v42 = v62;
  v62(v16, v61);
  sub_2146D8C38();
  sub_2146D8D08();
  v43 = v59;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v40, v5);
  v41(v39, v5);
  v42(v16, v61);
  v41(v66, v5);
  v41(v46[0], v5);
  v44 = v63;
  v63(v43, v31);
  v53(v67, v65);
  return v44(v64, v31);
}

uint64_t sub_2145012A4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v29 = sub_2146D8D48();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v32 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v30 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_27CA19E38);
  v15 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v28 = v8;
  MEMORY[0x216053AD0](v14, v8, v15);
  v36 = 42;
  v37 = 0xE100000000000000;
  v16 = sub_2145031D0();
  v17 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v38, &v36, MEMORY[0x277D837D0], v16);
  v34 = 35;
  v35 = 0xE100000000000000;
  v24 = v16;
  MEMORY[0x216053AD0](&v36, &v34, v17, v16);
  sub_2146D8BE8();
  v26 = v7;
  v34 = v38[0];
  v35 = v38[1];
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  sub_2146D8CF8();
  v25 = v13;
  v18 = *(v27 + 8);
  v19 = v29;
  v18(v2, v29);

  v20 = v31;
  v21 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v11, MEMORY[0x277D83E40]);
  v34 = v36;
  v35 = v37;
  sub_2146D8C38();
  sub_2146D8CF8();
  v18(v2, v19);

  MEMORY[0x216053B70](v11, v21);
  v22 = *(v32 + 8);
  v22(v20, v3);
  v22(v26, v3);
  return (*(v30 + 8))(v25, v28);
}

uint64_t sub_214501718@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v70 = sub_2146D8D48();
  v1 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v3 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v48 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v69 = *(v66 - 8);
  v7 = MEMORY[0x28223BE20](v66);
  v54 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v68 = v48 - v10;
  MEMORY[0x28223BE20](v9);
  v65 = v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v55 = v48 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = v48 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v64 = v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v62 = v48 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v48 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v48 - v27;
  v29 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  v63 = v28;
  MEMORY[0x216053AF0](v26, v12, v29);
  v30 = *(v13 + 8);
  v52 = v13 + 8;
  v53 = v30;
  v30(v26, v12);
  if (qword_27C903140 != -1)
  {
    swift_once();
  }

  v48[2] = __swift_project_value_buffer(v12, qword_27C914C80);
  v50 = sub_2146D8D88();
  v31 = *(v50 - 8);
  v49 = *(v31 + 56);
  v51 = v31 + 56;
  v49(v6, 1, 1, v50);
  sub_2146D8C38();
  v32 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v67 = *(v1 + 8);
  v67(v3, v70);
  v48[1] = v1 + 8;
  sub_214503110(v6);
  v33 = v68;
  v60 = v26;
  MEMORY[0x216053B20](v26, v32);
  v59 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0, MEMORY[0x277D853C0]);
  v34 = v66;
  MEMORY[0x216053AF0](v33, v66, v59);
  v61 = *(v69 + 8);
  v69 += 8;
  v61(v33, v34);
  v35 = v62;
  v36 = v32;
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v35, v12, v29);
  v37 = v35;
  v38 = v53;
  v53(v35, v12);
  v49(v6, 1, 1, v50);
  sub_2146D8C38();
  sub_2146D8CE8();
  v67(v3, v70);
  sub_214503110(v6);
  v39 = v54;
  MEMORY[0x216053B20](v37, v36);
  v40 = v66;
  MEMORY[0x216053AF0](v39, v66, v59);
  v61(v39, v40);
  sub_2146D8C08();
  sub_2146D8C38();
  v41 = v56;
  sub_2146D8D08();
  v42 = v55;
  sub_2146D8D08();
  sub_2146D8CD8();
  v38(v42, v12);
  v38(v41, v12);
  v43 = v70;
  v67(v3, v70);
  sub_2146D8C38();
  sub_2146D8D08();
  v44 = v57;
  sub_2146D8D08();
  sub_2146D8CD8();
  v38(v44, v12);
  v38(v42, v12);
  v67(v3, v43);
  sub_2146D8C38();
  sub_2146D8D08();
  v45 = v66;
  sub_2146D8D08();
  sub_2146D8CD8();
  v38(v44, v12);
  v38(v42, v12);
  v67(v3, v70);
  v38(v41, v12);
  v38(v64, v12);
  v38(v62, v12);
  v46 = v61;
  v61(v68, v45);
  v38(v60, v12);
  v46(v65, v45);
  return (v38)(v63, v12);
}

uint64_t sub_214502048@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_2146D8D48();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v15, v8, v18);
  v19 = *(v9 + 8);
  v19(v15, v8);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v12, v8, v18);
  v19(v12, v8);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v20 = v23;
  sub_2146D8CF8();
  (*(v25 + 8))(v3, v26);
  MEMORY[0x216053B70](v12, MEMORY[0x277D83E40]);
  (*(v24 + 8))(v7, v20);
  v19(v15, v8);
  return (v19)(v17, v8);
}

uint64_t sub_214502430@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_2146D8D48();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v25 = 980182388;
  v26 = 0xE400000000000000;
  v17 = sub_2145031D0();
  MEMORY[0x216053AF0](v27, &v25, MEMORY[0x277D837D0], v17);
  if (qword_27C903150 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_27CA19DC0);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  MEMORY[0x216053AF0](v18, v4, v19);
  v25 = v27[0];
  v26 = v27[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v11, v4);
  (*(v23 + 8))(v3, v24);
  v20(v14, v4);
  return (v20)(v16, v4);
}

uint64_t sub_214502778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_2146D8D48();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - v18;
  MEMORY[0x28223BE20](v17);
  v27 = &v26 - v20;
  v32 = a1;
  v33 = a2;
  v21 = sub_2145031D0();
  MEMORY[0x216053AF0](v34, &v32, MEMORY[0x277D837D0], v21);
  v22 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v19, v9, v22);
  v23 = *(v10 + 8);
  v23(v19, v9);
  v32 = v34[0];
  v33 = v34[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  v24 = v27;
  sub_2146D8D08();
  sub_2146D8CD8();
  v23(v13, v9);
  v23(v16, v9);
  (*(v30 + 8))(v8, v31);
  v23(v19, v9);
  return (v23)(v24, v9);
}

double sub_214502AB4(uint64_t a1)
{
  strcpy(v3, "tel:anonymous");
  HIWORD(v3[1]) = -4864;
  v1 = sub_2145031D0();
  MEMORY[0x216053AF0](v4, v3, MEMORY[0x277D837D0], v1);
  v3[0] = v4[0];
  v3[1] = v4[1];
  sub_2146D8C08();

  return result;
}

uint64_t sub_214502B88@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_2146D8D48();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v33 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v39 = *(v36 - 8);
  v2 = MEMORY[0x28223BE20](v36);
  v38 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v42 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v35 = v17;
  MEMORY[0x216053AD0](v18, v5, v19);
  v20 = MEMORY[0x277D83E40];
  v21 = v12;
  sub_2146D8DA8();
  v32 = v15;
  MEMORY[0x216053AD0](v12, v5, v19);
  v22 = *(v6 + 8);
  v31[1] = v6 + 8;
  v43 = v21;
  v22(v21, v5);
  v34 = v22;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v9, v5, v19);
  v22(v9, v5);
  sub_2146D8BE8();
  v23 = v33;
  sub_2146D8C38();
  v31[0] = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = v36;
  sub_2146D8CF8();
  v25 = *(v37 + 8);
  v26 = v40;
  v25(v23, v40);
  v27 = v38;
  MEMORY[0x216053B70](v9, v20);
  sub_2146D8C38();
  sub_2146D8CF8();
  v25(v23, v26);
  MEMORY[0x216053B70](v9, v20);
  v28 = *(v39 + 8);
  v28(v27, v24);
  v28(v42, v24);
  v29 = v34;
  v34(v43, v5);
  v29(v32, v5);
  return (v29)(v35, v5);
}

unint64_t sub_2145030B8()
{
  result = qword_27C914CB0;
  if (!qword_27C914CB0)
  {
    v3 = sub_2146D8C48();
    result = swift_getWitnessTable(MEMORY[0x277D853C8], v3, v0, v1);
    atomic_store(result, &qword_27C914CB0);
  }

  return result;
}

uint64_t sub_214503110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2145031D0()
{
  result = qword_27C914CE0;
  if (!qword_27C914CE0)
  {
    result = swift_getWitnessTable(MEMORY[0x277D85438], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27C914CE0);
  }

  return result;
}

uint64_t sub_214503314(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD0, &qword_214757E00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = &unk_214757E10;
    *(v10 + 24) = v9;
    v11[1] = &unk_2147417E8;
    v11[2] = v10;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
    sub_2146D99D8();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2145034C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = sub_2146D8B88();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v9[*(v4 + 20)] = 1;
  type metadata accessor for XPCEncoder();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  v12 = sub_21469F7B4(v9);
  v13 = xpc_connection_send_message_with_reply_sync(*(v2 + 24), v12);
  swift_getObjectType();
  v14 = sub_21408FD98();
  if (v14 == 7)
  {
    type metadata accessor for XPCDecoder();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = sub_214046008(MEMORY[0x277D84F90]);
    sub_2146C6E9C(v13);
    if ((sub_2146D8B48() & 1) != 0 && v7[*(v4 + 20)] == 1)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_214506E00(v7, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v16 = v9;
      return sub_214506E00(v16, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }
  }

  else if (v14 == 13)
  {
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v17 = sub_2146D9208();
    __swift_project_value_buffer(v17, qword_280B34D98);
    swift_unknownObjectRetain();
    v18 = sub_2146D91E8();
    v19 = sub_2146D9BA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      v26[15] = sub_21408FFD8();
      v22 = sub_2146D9618();
      v24 = sub_2144AEA38(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_213FAF000, v18, v19, "Got an XPC Error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x216056AC0](v21, -1, -1);
      MEMORY[0x216056AC0](v20, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v16 = v9;
    return sub_214506E00(v16, type metadata accessor for UnpackResponseSessionFinishedMessage);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214503928(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v4 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
    v7 = sub_2146D9618();
    v9 = sub_2144AEA38(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_213FAF000, v4, v3, "XPC client %s closed connection.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x216056AC0](v6, -1, -1);
    MEMORY[0x216056AC0](v5, -1, -1);
  }

  if (swift_weakLoadStrong())
  {
    sub_21448162C(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  return sub_2146D99E8();
}

uint64_t sub_214503AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_214503AE0, 0, 0);
}

uint64_t sub_214503AE0()
{
  v29 = v0;
  swift_getObjectType();
  v1 = sub_21408FD98();
  if (v1 == 13)
  {
    v5 = v0[3];
    v6 = sub_2146D9368();
    v7 = swift_unknownObjectRelease();
    if (v6 == v5)
    {
      sub_214503928(v7);
    }

    else
    {
      v8 = v0[3];
      v9 = sub_2146D9378();
      swift_unknownObjectRelease();
      if (v9 == v8)
      {
        v19 = sub_2146D9B88();
        if (qword_280B35360 != -1)
        {
          swift_once();
        }

        v20 = qword_280B35410;
        if (os_log_type_enabled(qword_280B35410, v19))
        {
          v21 = v0[4];
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v28 = v23;
          *v22 = 136315138;
          v0[2] = *(v21 + 24);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
          v24 = sub_2146D9618();
          v26 = sub_2144AEA38(v24, v25, &v28);

          *(v22 + 4) = v26;
          _os_log_impl(&dword_213FAF000, v20, v19, "XPC client %s interrupted connection.", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v23);
          MEMORY[0x216056AC0](v23, -1, -1);
          MEMORY[0x216056AC0](v22, -1, -1);
        }
      }

      else
      {
        v10 = MEMORY[0x216056D30](v0[3]);
        v11 = sub_2146D96E8();
        v13 = v12;
        v14 = sub_2146D9B88();
        if (qword_280B35360 != -1)
        {
          swift_once();
        }

        v15 = qword_280B35410;
        if (os_log_type_enabled(qword_280B35410, v14))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v28 = v17;
          *v16 = 136315138;
          v18 = sub_2144AEA38(v11, v13, &v28);

          *(v16 + 4) = v18;
          _os_log_impl(&dword_213FAF000, v15, v14, "XPC connection triggered error: %s.", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v17);
          MEMORY[0x216056AC0](v17, -1, -1);
          MEMORY[0x216056AC0](v16, -1, -1);
        }

        else
        {
        }

        if (swift_weakLoadStrong())
        {
          sub_21448162C(v0[4]);
        }

        free(v10);
      }
    }
  }

  else if (v1 == 7)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_214503E80;
    v3 = v0[3];

    return sub_214503F74(v3);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_214503E80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214503F74(uint64_t a1)
{
  v2[116] = v1;
  v2[115] = a1;
  v2[117] = type metadata accessor for EncoderErrorResponseMessage(0);
  v2[118] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D08, &qword_214757DC8);
  v2[119] = v3;
  v2[120] = *(v3 - 8);
  v2[121] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D10, &unk_214757DD0);
  v2[122] = v4;
  v2[123] = *(v4 - 8);
  v2[124] = swift_task_alloc();
  v5 = sub_2146D8B88();
  v2[125] = v5;
  v2[126] = *(v5 - 8);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  if (qword_280B30970 != -1)
  {
    swift_once();
  }

  v6 = qword_280B30978;
  v2[133] = qword_280B30978;

  return MEMORY[0x2822009F8](sub_2145041D8, v6, 0);
}

uint64_t sub_2145041D8()
{
  v133 = v0;
  swift_getObjectType();
  v1 = sub_21408FD98();
  if (v1 != 7)
  {
    __break(1u);
    goto LABEL_55;
  }

  v2 = *(v0 + 928);
  v1 = swift_beginAccess();
  if (*(*(v2 + 72) + 16))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 1072) = Strong;
  if (!Strong)
  {
    v36 = v0 + 1184;
    v37 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 928);
    v39 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2146EA710;
    v41 = *(v38 + 64);
    v42 = *(v38 + 48);
    *v36 = *(v38 + 32);
    *(v36 + 16) = v42;
    *(v36 + 32) = v41;
    v43 = sub_2146D9618();
    v45 = v44;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_213FB2DA0();
    *(v40 + 32) = v43;
    *(v40 + 40) = v45;
    sub_2146D91D8(v37, &dword_213FAF000, v39, "[%{public}@] Invalid client connection", 38, 2, v40);

    return sub_2146DA018();
  }

  v4 = Strong;
  v5 = sub_2140900F4(0);
  if (!v6)
  {
LABEL_22:
    v1 = sub_2146D9BA8();
    if (qword_280B35358 == -1)
    {
LABEL_23:
      sub_2146D91D8(v1, &dword_213FAF000, qword_280B35408, "[%{public}@] Invalid request", 28, 2, MEMORY[0x277D84F90]);
      return sub_2146DA018();
    }

LABEL_56:
    v123 = v1;
    swift_once();
    v1 = v123;
    goto LABEL_23;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_2140901DC(1u);
  *(v0 + 1080) = v9;
  if (!v9)
  {
LABEL_21:

    goto LABEL_22;
  }

  v131 = v9;
  sub_2140900F4(3u);
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  sub_2140902B8(*(v0 + 1056));
  v127 = sub_2146D9588();
  *(v0 + 1088) = v127;
  v11 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v12 = qword_280B35410;
  *(v0 + 1096) = qword_280B35410;
  v128 = v7;
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v132 = v14;
    *v13 = 136446210;
    *(v0 + 912) = v127;
    type metadata accessor for BlastDoorInstanceType(0);
    v15 = v127;
    v16 = sub_2146D9618();
    v18 = sub_2144AEA38(v16, v17, &v132);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_213FAF000, v12, v11, "Unpacking with instance type: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216056AC0](v14, -1, -1);
    v19 = v13;
    v7 = v128;
    MEMORY[0x216056AC0](v19, -1, -1);
  }

  swift_beginAccess();
  v20 = *(v4 + 48);
  if (!*(v20 + 16))
  {
    goto LABEL_26;
  }

  v21 = sub_21408C300(v7, v8);
  if ((v22 & 1) == 0)
  {

LABEL_26:
    v125 = sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 944);
    v124 = *(v0 + 936);
    v48 = *(v0 + 928);
    v126 = *(v0 + 1056);
    v49 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2146E6910;
    v51 = *(v48 + 64);
    v52 = *(v48 + 48);
    *(v0 + 1220) = *(v48 + 32);
    *(v0 + 1236) = v52;
    *(v0 + 1252) = v51;
    v53 = sub_2146D9618();
    v55 = v54;
    v56 = MEMORY[0x277D837D0];
    *(v50 + 56) = MEMORY[0x277D837D0];
    v57 = sub_213FB2DA0();
    *(v50 + 64) = v57;
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    *(v0 + 840) = v128;
    *(v0 + 848) = v8;
    swift_bridgeObjectRetain_n();
    v58 = sub_2146D9618();
    *(v50 + 96) = v56;
    *(v50 + 104) = v57;
    *(v50 + 72) = v58;
    *(v50 + 80) = v59;
    sub_2146D91D8(v125, &dword_213FAF000, v49, "[%{public}@] Message type not registered: %{public}@", 52, 2, v50);

    sub_213FB2E54(v126, v47 + *(v124 + 20), &unk_27C904F30, &unk_2146EFA20);
    *v47 = 0xD000000000000013;
    v47[1] = 0x800000021479CE50;
    v47[2] = 0xD000000000000018;
    v47[3] = 0x800000021479CE70;
    v47[4] = v128;
    v47[5] = v8;
    type metadata accessor for XPCEncoder();
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0u;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0;
    v61 = swift_unknownObjectRetain();
    reply = xpc_dictionary_create_reply(v61);
    if (reply)
    {
      v67 = reply;
      v68 = *(v0 + 944);
      swift_unknownObjectRelease();
      *(v60 + 64) = v67;
      swift_beginAccess();
      *(v60 + 16) = 0;
      v69 = sub_21469FC34(v68);
      reply = xpc_dictionary_get_remote_connection(*(v0 + 920));
      if (reply)
      {
        v70 = reply;
        v71 = *(v0 + 1056);
        v72 = *(v0 + 944);

        xpc_connection_send_message(v70, v69);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_214506E00(v72, type metadata accessor for EncoderErrorResponseMessage);
        v73 = v71;
LABEL_47:
        sub_213FB2DF4(v73, &unk_27C904F30, &unk_2146EFA20);
        goto LABEL_48;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return MEMORY[0x2822005A8](reply, v63, v64, v65, v66);
  }

  sub_214053840(*(v20 + 56) + 40 * v21, v0 + 16);

  v23 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 928);
  v25 = qword_280B35408;
  *(v0 + 1104) = qword_280B35408;
  *(v0 + 1112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E6910;
  v27 = *(v24 + 64);
  v28 = *(v24 + 48);
  *(v0 + 1256) = *(v24 + 32);
  *(v0 + 1272) = v28;
  *(v0 + 1288) = v27;
  v29 = sub_2146D9618();
  v31 = v30;
  *(v26 + 56) = MEMORY[0x277D837D0];
  v32 = sub_213FB2DA0();
  *(v0 + 1120) = v32;
  *(v26 + 64) = v32;
  *(v26 + 32) = v29;
  *(v26 + 40) = v31;
  sub_214053840(v0 + 16, v0 + 176);
  sub_213FB2E54(v0 + 176, v0 + 256, &qword_27C914370, &qword_21474BE98);
  if (*(v0 + 280))
  {
    sub_213FB77C8((v0 + 256), v0 + 216);
    sub_214053840(v0 + 216, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D18, &qword_214757DE0);
    v33 = sub_2146D9618();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1((v0 + 216));
    sub_213FB2DF4(v0 + 176, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    v33 = 7104878;
    sub_213FB2DF4(v0 + 256, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(v0 + 176, &qword_27C914370, &qword_21474BE98);
    v35 = 0xE300000000000000;
  }

  *(v26 + 96) = MEMORY[0x277D837D0];
  *(v26 + 104) = v32;
  *(v26 + 72) = v33;
  *(v26 + 80) = v35;
  sub_2146D91D8(v23, &dword_213FAF000, v25, "[%{public}@] %{public}@ : Starting unpack", 41, 2, v26);

  type metadata accessor for XPCEncoder();
  v74 = swift_allocObject();
  *(v0 + 1128) = v74;
  *(v74 + 16) = 0;
  *(v74 + 24) = 0u;
  *(v74 + 40) = 0u;
  *(v74 + 56) = 0;
  v75 = swift_unknownObjectRetain();
  reply = xpc_dictionary_create_reply(v75);
  if (!reply)
  {
    goto LABEL_58;
  }

  v76 = reply;
  v77 = *(v0 + 1056);
  v78 = *(v0 + 1048);
  swift_unknownObjectRelease();
  *(v74 + 64) = v76;
  swift_beginAccess();
  *(v74 + 16) = 1;
  sub_214053840(v0 + 16, v0 + 336);
  sub_213FB2E54(v77, v78, &unk_27C904F30, &unk_2146EFA20);
  sub_214053840(v0 + 16, v0 + 376);

  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D18, &qword_214757DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D20, &qword_214757DE8);
  if (swift_dynamicCast())
  {

    sub_213FB77C8((v0 + 416), v0 + 96);
    v79 = *(v0 + 120);
    v80 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v79);
    v81 = (*(v80 + 16))(v131, v74, v79, v80);
    v93 = *(v0 + 928);
    v94 = v81;
    sub_213FB2DF4(*(v0 + 1048), &unk_27C904F30, &unk_2146EFA20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 336));
    xpc_connection_send_message(*(v93 + 24), v94);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    v95 = *(v0 + 1120);
    v96 = *(v0 + 928);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    v97 = sub_2146D9BC8();
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_2146E6910;
    v99 = *(v96 + 64);
    v100 = *(v96 + 48);
    *(v0 + 868) = *(v96 + 32);
    *(v0 + 884) = v100;
    *(v0 + 900) = v99;
    v101 = sub_2146D9618();
    *(v98 + 56) = MEMORY[0x277D837D0];
    *(v98 + 64) = v95;
    *(v98 + 32) = v101;
    *(v98 + 40) = v102;
    sub_214053840(v0 + 16, v0 + 656);
    sub_213FB2E54(v0 + 656, v0 + 576, &qword_27C914370, &qword_21474BE98);
    if (*(v0 + 600))
    {
      sub_213FB77C8((v0 + 576), v0 + 616);
      sub_214053840(v0 + 616, v0 + 296);
      v103 = sub_2146D9618();
      v105 = v104;
      __swift_destroy_boxed_opaque_existential_1((v0 + 616));
      sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
    }

    else
    {
      v103 = 7104878;
      sub_213FB2DF4(v0 + 576, &qword_27C914370, &qword_21474BE98);
      sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
      v105 = 0xE300000000000000;
    }

    v106 = *(v0 + 1120);
    v107 = *(v0 + 1104);
    v108 = *(v0 + 1088);
    *(v98 + 96) = MEMORY[0x277D837D0];
    *(v98 + 104) = v106;
    *(v98 + 72) = v103;
    *(v98 + 80) = v105;
    sub_2146D91D8(v97, &dword_213FAF000, v107, "[%{public}@] %{public}@ : Success", 33, 2, v98);
    swift_unknownObjectRelease();

    v109 = *(v0 + 1056);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v73 = v109;
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D28, &qword_214757DF0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D30, &qword_214757DF8);
    if (swift_dynamicCast())
    {
      v85 = *(v0 + 1056);
      v86 = *(v0 + 1040);
      v87 = *(v0 + 1008);
      v88 = *(v0 + 1000);

      sub_213FB77C8((v0 + 496), v0 + 536);
      sub_213FB2E54(v85, v86, &unk_27C904F30, &unk_2146EFA20);
      if ((*(v87 + 48))(v86, 1, v88) == 1)
      {
        v130 = *(v0 + 1056);
        v89 = *(v0 + 1048);
        v90 = *(v0 + 928);
        sub_213FB2DF4(*(v0 + 1040), &unk_27C904F30, &unk_2146EFA20);
        sub_214506D5C();
        v91 = swift_allocError();
        *v92 = 1;
        sub_214506398(v91, v90, v0 + 336, v89, v74);
        swift_unknownObjectRelease();

        sub_213FB2DF4(v89, &unk_27C904F30, &unk_2146EFA20);
        __swift_destroy_boxed_opaque_existential_1((v0 + 336));
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        sub_213FB2DF4(v130, &unk_27C904F30, &unk_2146EFA20);

        __swift_destroy_boxed_opaque_existential_1((v0 + 536));
        __swift_destroy_boxed_opaque_existential_1((v0 + 376));
LABEL_48:

        v110 = *(v0 + 8);

        return v110();
      }

      v111 = *(v0 + 1032);
      v112 = *(v0 + 928);
      (*(*(v0 + 1008) + 32))(v111, *(v0 + 1040), *(v0 + 1000));
      v113 = swift_allocObject();
      *(v113 + 16) = sub_214506D50;
      *(v113 + 24) = v112;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = *(v2 + 72);
      *(v2 + 72) = 0x8000000000000000;
      sub_214052B38(sub_214506DB0, v113, v111, isUniquelyReferenced_nonNull_native);
      *(v2 + 72) = v132;
      swift_endAccess();
      v115 = *(v0 + 560);
      v116 = *(v0 + 568);
      __swift_project_boxed_opaque_existential_1((v0 + 536), v115);
      (*(v116 + 16))(v131, v111, v74, v115, v116);
      v117 = *(v0 + 968);
      v118 = *(v0 + 960);
      v119 = *(v0 + 952);
      sub_2146D9A08();
      (*(v118 + 8))(v117, v119);
      v120 = sub_214506DB8(&qword_27C914D40, type metadata accessor for UnpackerActor, protocol conformance descriptor for UnpackerActor);
      *(v0 + 1168) = v120;
      v121 = *(v0 + 1064);
      v122 = swift_task_alloc();
      *(v0 + 1176) = v122;
      *v122 = v0;
      v122[1] = sub_21450593C;
      v65 = *(v0 + 976);
      reply = (v0 + 856);
      v66 = v0 + 904;
      v63 = v121;
      v64 = v120;

      return MEMORY[0x2822005A8](reply, v63, v64, v65, v66);
    }

    sub_213FB2DF4(*(v0 + 1048), &unk_27C904F30, &unk_2146EFA20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 336));
    return sub_2146DA018();
  }

  sub_213FB77C8((v0 + 456), v0 + 136);
  v82 = *(v0 + 160);
  v83 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v82);
  v129 = (*(v83 + 16) + **(v83 + 16));
  v84 = swift_task_alloc();
  *(v0 + 1144) = v84;
  *v84 = v0;
  v84[1] = sub_214505520;

  return v129(v131, v74, v82, v83);
}

uint64_t sub_214505520(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1152) = v1;

  if (v1)
  {
    v5 = v4[133];
    v6 = sub_214506038;
  }

  else
  {
    v7 = v4[133];
    v8 = v4[131];
    v4[145] = a1;
    sub_213FB2DF4(v8, &unk_27C904F30, &unk_2146EFA20);
    __swift_destroy_boxed_opaque_existential_1(v4 + 42);
    v6 = sub_214505670;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_214505670()
{
  xpc_connection_send_message(*(*(v0 + 928) + 24), *(v0 + 1160));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v1 = *(v0 + 1120);
  v2 = *(v0 + 928);
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  v18 = sub_2146D9BC8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2146E6910;
  v4 = *(v2 + 64);
  v5 = *(v2 + 48);
  *(v0 + 868) = *(v2 + 32);
  *(v0 + 884) = v5;
  *(v0 + 900) = v4;
  v6 = sub_2146D9618();
  v7 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = v1;
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  sub_214053840(v0 + 16, v0 + 656);
  sub_213FB2E54(v0 + 656, v0 + 576, &qword_27C914370, &qword_21474BE98);
  if (*(v0 + 600))
  {
    sub_213FB77C8((v0 + 576), v0 + 616);
    sub_214053840(v0 + 616, v0 + 296);
    v9 = sub_2146D9618();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1((v0 + 616));
    sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    sub_213FB2DF4(v0 + 576, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v12 = *(v0 + 1120);
  v13 = *(v0 + 1104);
  v14 = *(v0 + 1088);
  *(v3 + 96) = v7;
  *(v3 + 104) = v12;
  *(v3 + 72) = v9;
  *(v3 + 80) = v11;
  sub_2146D91D8(v18, &dword_213FAF000, v13, "[%{public}@] %{public}@ : Success", 33, 2, v3);
  swift_unknownObjectRelease();

  v15 = *(v0 + 1056);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_213FB2DF4(v15, &unk_27C904F30, &unk_2146EFA20);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21450593C()
{
  v2 = *v1;

  v3 = *(v2 + 1064);
  if (v0)
  {
    v4 = sub_2145061C4;
  }

  else
  {
    v4 = sub_214505A50;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_214505A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = v5;
  v6 = *(v5 + 856);
  if (v6)
  {
    if (*(*(*(v5 + 928) + 72) + 16) != 1)
    {
      __break(1u);
      return MEMORY[0x2822005A8](a1, a2, a3, a4, a5);
    }

    v7 = *(v5 + 864);
    v8 = *(v5 + 1096);
    v9 = *(v5 + 1032);
    v10 = *(v5 + 1024);
    v11 = *(v5 + 1008);
    v12 = *(v5 + 1000);
    v13 = sub_2146D9B88();
    (*(v11 + 16))(v10, v9, v12);
    if (os_log_type_enabled(v8, v13))
    {
      loga = *(v5 + 1096);
      v14 = *(v5 + 1024);
      v15 = *(v5 + 1008);
      v16 = *(v5 + 1000);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54 = v18;
      *v17 = 136315138;
      sub_214506DB8(&qword_27C918120, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = v13;
      v19 = v16;
      v20 = v7;
      v21 = sub_2146DA428();
      v23 = v22;
      (*(v15 + 8))(v14, v19);
      v24 = v21;
      LOBYTE(v21) = v20;
      v25 = sub_2144AEA38(v24, v23, &v54);

      *(v17 + 4) = v25;
      _os_log_impl(&dword_213FAF000, loga, v51, "Sending frame update over xpc %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
      if ((v21 & 1) == 0)
      {
LABEL_10:
        xpc_connection_send_message(*(*(v5 + 928) + 24), v6);
        swift_unknownObjectRelease();
        v42 = *(v5 + 1168);
        v43 = *(v5 + 1064);
        v44 = swift_task_alloc();
        *(v5 + 1176) = v44;
        *v44 = v5;
        v44[1] = sub_21450593C;
        a4 = *(v5 + 976);
        a1 = v5 + 856;
        a5 = v5 + 904;
        a2 = v43;
        a3 = v42;

        return MEMORY[0x2822005A8](a1, a2, a3, a4, a5);
      }
    }

    else
    {
      (*(*(v5 + 1008) + 8))(*(v5 + 1024), *(v5 + 1000));
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_2145034C4(*(v5 + 1032));
    goto LABEL_10;
  }

  v26 = *(v5 + 1048);
  v27 = *(v5 + 1032);
  v28 = *(v5 + 1016);
  v29 = *(v5 + 1008);
  v30 = *(v5 + 1000);
  (*(*(v5 + 984) + 8))(*(v5 + 992), *(v5 + 976), a3, a4, a5);
  sub_213FB2DF4(v26, &unk_27C904F30, &unk_2146EFA20);
  __swift_destroy_boxed_opaque_existential_1((v5 + 336));
  (*(v29 + 16))(v28, v27, v30);
  swift_beginAccess();
  sub_214480264(0, 0, v28);
  swift_endAccess();
  (*(v29 + 8))(v27, v30);
  __swift_destroy_boxed_opaque_existential_1((v5 + 536));
  v31 = *(v5 + 1120);
  v32 = *(v5 + 928);
  __swift_destroy_boxed_opaque_existential_1((v5 + 376));
  log = sub_2146D9BC8();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2146E6910;
  v34 = *(v32 + 64);
  v35 = *(v32 + 48);
  *(v5 + 868) = *(v32 + 32);
  *(v5 + 884) = v35;
  *(v5 + 900) = v34;
  v36 = sub_2146D9618();
  v37 = MEMORY[0x277D837D0];
  *(v33 + 56) = MEMORY[0x277D837D0];
  *(v33 + 64) = v31;
  *(v33 + 32) = v36;
  *(v33 + 40) = v38;
  sub_214053840(v5 + 16, v5 + 656);
  sub_213FB2E54(v5 + 656, v5 + 576, &qword_27C914370, &qword_21474BE98);
  if (*(v5 + 600))
  {
    sub_213FB77C8((v5 + 576), v5 + 616);
    sub_214053840(v5 + 616, v5 + 296);
    v39 = sub_2146D9618();
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_1((v5 + 616));
    sub_213FB2DF4(v5 + 656, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    sub_213FB2DF4(v5 + 576, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(v5 + 656, &qword_27C914370, &qword_21474BE98);
    v41 = 0xE300000000000000;
    v39 = 7104878;
  }

  v45 = *(v5 + 1120);
  v46 = *(v5 + 1104);
  v47 = *(v5 + 1088);
  *(v33 + 96) = v37;
  *(v33 + 104) = v45;
  *(v33 + 72) = v39;
  *(v33 + 80) = v41;
  sub_2146D91D8(log, &dword_213FAF000, v46, "[%{public}@] %{public}@ : Success", 33, 2, v33);
  swift_unknownObjectRelease();

  v48 = *(v5 + 1056);
  __swift_destroy_boxed_opaque_existential_1((v5 + 16));
  sub_213FB2DF4(v48, &unk_27C904F30, &unk_2146EFA20);

  v49 = *(v5 + 8);

  return v49();
}

uint64_t sub_214506038()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[144];
  v2 = v0[141];
  v3 = v0[136];
  v4 = v0[131];
  v5 = v0[116];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_214506398(v1, v5, (v0 + 42), v4, v2);
  swift_unknownObjectRelease();

  sub_213FB2DF4(v4, &unk_27C904F30, &unk_2146EFA20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v6 = v0[132];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_213FB2DF4(v6, &unk_27C904F30, &unk_2146EFA20);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2145061C4()
{
  v1 = v0[129];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[122];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[113];
  __swift_destroy_boxed_opaque_existential_1(v0 + 67);
  v8 = v0[141];
  v9 = v0[136];
  v10 = v0[131];
  v11 = v0[116];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_214506398(v7, v11, (v0 + 42), v10, v8);
  swift_unknownObjectRelease();

  sub_213FB2DF4(v10, &unk_27C904F30, &unk_2146EFA20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v12 = v0[132];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_213FB2DF4(v12, &unk_27C904F30, &unk_2146EFA20);

  v13 = v0[1];

  return v13();
}

uint64_t sub_214506398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v57 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v47 - v9;
  v10 = sub_2146D8B88();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v47 - v13;
  v52 = type metadata accessor for EncoderErrorResponseMessage(0);
  MEMORY[0x28223BE20](v52);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1;
  sub_214689A34(a1, 0, 0, &v65);
  v17 = *(&v65 + 1);
  v55 = v65;
  v18 = *(&v66 + 1);
  v54 = v66;
  v19 = v68;
  v53 = v67;
  v51 = sub_2146D9BA8();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v50 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E68D0;
  v21 = *(a2 + 48);
  v65 = *(a2 + 32);
  v66 = v21;
  LODWORD(v67) = *(a2 + 64);
  v22 = sub_2146D9618();
  v24 = v23;
  *(v20 + 56) = MEMORY[0x277D837D0];
  v25 = sub_213FB2DA0();
  *(v20 + 64) = v25;
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_214053840(a3, &v65);
  sub_213FB2E54(&v65, &v62, &qword_27C914370, &qword_21474BE98);
  v61 = a2;
  if (v63)
  {
    sub_213FB77C8(&v62, v64);
    sub_214053840(v64, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D18, &qword_214757DE0);
    v26 = sub_2146D9618();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_213FB2DF4(&v65, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    sub_213FB2DF4(&v62, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(&v65, &qword_27C914370, &qword_21474BE98);
    v28 = 0xE300000000000000;
    v26 = 7104878;
  }

  v29 = MEMORY[0x277D837D0];
  *(v20 + 96) = MEMORY[0x277D837D0];
  *(v20 + 104) = v25;
  *(v20 + 72) = v26;
  *(v20 + 80) = v28;
  v30 = v55;
  *&v65 = v55;
  *(&v65 + 1) = v17;
  v31 = v54;
  *&v66 = v54;
  *(&v66 + 1) = v18;
  v32 = v53;
  v67 = v53;
  v68 = v19;

  v33 = sub_2146D9618();
  *(v20 + 136) = v29;
  *(v20 + 144) = v25;
  *(v20 + 112) = v33;
  *(v20 + 120) = v34;
  sub_2146D91D8(v51, &dword_213FAF000, v50, "[%{public}@] %{public}@ : Detonated : %{public}@", 48, 2, v20);

  v35 = v52;
  v36 = v57;
  sub_213FB2E54(v57, v15 + *(v52 + 20), &unk_27C904F30, &unk_2146EFA20);
  *v15 = v30;
  v15[1] = v17;
  v15[2] = v31;
  v15[3] = v18;
  v15[4] = v32;
  v15[5] = v19;
  v37 = *(v61 + 24);
  v38 = *(*v56 + 200);
  v39 = sub_214506DB8(&unk_27C914D50, type metadata accessor for EncoderErrorResponseMessage, aY_105);
  v40 = v38(v15, v35, v39);
  xpc_connection_send_message(v37, v40);
  swift_unknownObjectRelease();
  v41 = v58;
  sub_213FB2E54(v36, v58, &unk_27C904F30, &unk_2146EFA20);
  v43 = v59;
  v42 = v60;
  if ((*(v59 + 48))(v41, 1, v60) == 1)
  {
    sub_214506E00(v15, type metadata accessor for EncoderErrorResponseMessage);
    return sub_213FB2DF4(v41, &unk_27C904F30, &unk_2146EFA20);
  }

  else
  {
    v45 = v49;
    (*(v43 + 32))(v49, v41, v42);
    v46 = v48;
    (*(v43 + 16))(v48, v45, v42);
    swift_beginAccess();
    sub_214480264(0, 0, v46);
    swift_endAccess();
    (*(v43 + 8))(v45, v42);
    return sub_214506E00(v15, type metadata accessor for EncoderErrorResponseMessage);
  }
}

uint64_t sub_2145069E0()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  sub_214506E00(v0 + OBJC_IVAR____TtC9BlastDoor16ClientConnection_clientConnectionQueue, type metadata accessor for AsyncSerialQueue);
  return v0;
}

uint64_t sub_214506A34()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  sub_214506E00(v0 + OBJC_IVAR____TtC9BlastDoor16ClientConnection_clientConnectionQueue, type metadata accessor for AsyncSerialQueue);

  return swift_deallocClassInstance();
}

__n128 sub_214506AC4@<Q0>(__n128 *a1@<X8>)
{
  v2 = *v1;
  result = (*v1)[2];
  v4 = (*v1)[3];
  *a1 = result;
  a1[1] = v4;
  a1[2].n128_u32[0] = v2[4].n128_u32[0];
  return result;
}

void sub_214506ADC()
{
  v1 = *(*v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_213FB1508;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_213FB14A8;
  v4[3] = &block_descriptor_2;
  v3 = _Block_copy(v4);

  xpc_connection_set_event_handler(v1, v3);
  _Block_release(v3);
  xpc_connection_activate(v1);
}

uint64_t type metadata accessor for ClientConnection(uint64_t a1)
{
  result = qword_280B30790;
  if (!qword_280B30790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214506C58(uint64_t a1)
{
  sub_214444CB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_214506D5C()
{
  result = qword_27C914D38;
  if (!qword_27C914D38)
  {
    result = swift_getWitnessTable(aM_114, &type metadata for SessionUnpackerError, v0, v1);
    atomic_store(result, &qword_27C914D38);
  }

  return result;
}

uint64_t sub_214506DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214506E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214506E60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214445244;

  return sub_214503AC0(v2, v3);
}

uint64_t sub_214506EF8(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v42 = *MEMORY[0x277D85DE8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v31 = *(v36 - 8);
  v3 = v31;
  MEMORY[0x28223BE20](v36);
  v39 = &v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC8, &qword_2147417C8);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  swift_weakInit();
  *(v2 + 72) = MEMORY[0x277D84F98];
  v17 = OBJC_IVAR____TtC9BlastDoor16ClientConnection_clientConnectionQueue;
  v18 = sub_2146D99B8();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  (*(v11 + 104))(v13, *MEMORY[0x277D85778], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC0, &qword_2147417B0);
  v19 = v39;
  sub_2146D99C8();
  v20 = *(v3 + 16);
  v21 = v36;
  v20(v2 + v17, v19, v36);
  v22 = v34;
  v23 = v35;
  (*(v5 + 16))(v34, v9, v35);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v5 + 32))(v25 + v24, v22, v23);
  sub_21444337C(0, 0, v16, &unk_2147417C0, v25);

  (*(v31 + 8))(v39, v21);
  (*(v5 + 8))(v9, v23);
  (*(v33 + 8))(v13, v32);
  sub_213FB2DF4(v16, &unk_27C914D70, &unk_2147417D0);
  swift_weakAssign();
  *(v2 + 24) = v38;
  v40 = 0u;
  v41 = 0u;
  v26 = swift_unknownObjectRetain();
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(v26);
  v28 = v41;
  *(v2 + 32) = v40;
  *(v2 + 48) = v28;
  *(v2 + 64) = pid;
  return v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2145073B0@<X0>(void *a2@<X8>)
{
  swift_getObjectType();
  v3 = sub_21408FFD8();
  result = swift_unknownObjectRelease();
  v5 = 0xEE00646568736172;
  v6 = 0x4365636976726553;
  v7 = 0xEC000000726F7272;
  v8 = 0x456E776F6E6B6E55;
  if (!v3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000021479D020;
  }

  if (v3 != 1)
  {
    v6 = v8;
    v5 = v7;
  }

  *a2 = 0xD000000000000017;
  a2[1] = 0x800000021479CFE0;
  if (v3 == 2)
  {
    v9 = 0xD000000000000013;
  }

  else
  {
    v9 = v6;
  }

  if (v3 == 2)
  {
    v5 = 0x800000021479D000;
  }

  a2[2] = v9;
  a2[3] = v5;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

double sub_21450749C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v0 = sub_2146D9558();
  v2 = v1;

  MEMORY[0x2160545D0](v0, v2);

  sub_2146D8888();

  return result;
}

uint64_t sub_214507564()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v0 = sub_2146D9558();
  v2 = v1;

  MEMORY[0x2160545D0](v0, v2);

  return 47;
}

uint64_t sub_21450760C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2146D9798();
  }

  else
  {
    return 0;
  }
}

void sub_214507654(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v7 = *(i - 2);

      v9 = MEMORY[0x216054530](v8, v7, v5, v6);
      sub_214507EEC(v9, v10);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_214507704(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      sub_214507EEC(v5, v6);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_214507790(unint64_t a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v4 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_33;
  }

  v4 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a1 > 0x7F)
  {
    goto LABEL_26;
  }

  v5 = a1 + 1;
  while (1)
  {
    v33[0] = (v5 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v5) >> 3))));
LABEL_10:
    v6 = sub_2146D9678();
    v8 = v7;
    v9 = sub_21450760C(v6, v7);
    if (!v10)
    {
      break;
    }

    if (v9 == 47 && v10 == 0xE100000000000000)
    {

LABEL_15:
      v33[0] = 47;
      v33[1] = 0xE100000000000000;
      MEMORY[0x28223BE20](a1);
      v31[2] = v33;
      v12 = sub_214508AC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_214508F10, v31, v6, v8, &v32);
      v13 = *(v12 + 16);
      if (v13)
      {
        v33[0] = MEMORY[0x277D84F90];
        sub_21409FD08(0, v13, 0);
        v14 = v33[0];
        v15 = (v12 + 56);
        do
        {
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *v15;

          v20 = MEMORY[0x216054530](v16, v17, v18, v19);
          v22 = v21;

          v33[0] = v14;
          v24 = *(v14 + 16);
          v23 = *(v14 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_21409FD08((v23 > 1), v24 + 1, 1);
            v14 = v33[0];
          }

          *(v14 + 16) = v24 + 1;
          v25 = v14 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
          v15 += 4;
          --v13;
        }

        while (v13);
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      *a3 = v14;
      return;
    }

    v11 = sub_2146DA6A8();

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    v26 = (a1 & 0x3F) << 8;
    v27 = (a1 >> 6) + v26 + 33217;
    v28 = (v26 | (a1 >> 6) & 0x3F) << 8;
    v29 = (a1 >> 18) + ((v28 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v30 = (a1 >> 12) + v28 + 8487393;
    if (v4)
    {
      v5 = v29;
    }

    else
    {
      v5 = v30;
    }

    if (a1 < 0x800)
    {
      v5 = v27;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_214507A50(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = 47;
  v32 = &v33;

  v7 = sub_214508AC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_214508FF8, v31, a1, a2, v6);
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = v7 + 24;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v10 + 32 * v8);
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    ++v8;
    v13 = v12 + 4;
    v15 = v12[1];
    v14 = v12[2];
    v12 += 4;
    if ((v14 ^ v15) >= 0x4000)
    {
      v30 = v10;
      v27 = *(v13 - 1);
      v28 = a1;
      v16 = *v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v11;
      v29 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21409FD88(0, *(v11 + 16) + 1, 1);
        v11 = v33;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      v10 = v30;
      if (v19 >= v18 >> 1)
      {
        sub_21409FD88((v18 > 1), v19 + 1, 1);
        v10 = v30;
        v11 = v33;
      }

      *(v11 + 16) = v19 + 1;
      v20 = (v11 + 32 * v19);
      v20[4] = v15;
      v20[5] = v14;
      v20[6] = v27;
      v20[7] = v16;
      a2 = v29;
      a1 = v28;
      goto LABEL_2;
    }
  }

  v21 = sub_21450760C(a1, a2);
  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v21;
  v24 = v22;
  if (v21 == 47 && v22 == 0xE100000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    v34 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (v23 == 126 && v24 == 0xE100000000000000)
  {
LABEL_24:

    goto LABEL_25;
  }

  v25 = sub_2146DA6A8();

  if (v25)
  {
LABEL_25:
    sub_2146DA018();
    __break(1u);
    return;
  }

LABEL_19:

  sub_214507D2C(&v34);
LABEL_20:
  sub_214507654(v11);

  if (v3)
  {
  }

  else
  {
    *a3 = v34;
  }
}

void sub_214507D2C(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 currentDirectoryPath];

  sub_2146D95B8();
  sub_214069AD8();
  v4 = sub_2146D9DB8();

  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v5, 0);
    v6 = v15;
    v7 = v4 + 40;
    do
    {

      v8 = sub_2146D97A8();
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v9;
        v14 = v8;
        sub_21409FD08((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v14;
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *a1 = v6;
}

uint64_t sub_214507EEC(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_214508F2C();
    swift_allocError();
    v8 = 0;
    goto LABEL_14;
  }

  v6 = v2;
  sub_214069AD8();
  if (sub_2146D9E08())
  {
    sub_214508F2C();
    swift_allocError();
    v8 = 1;
LABEL_14:
    *v7 = v8;
    return swift_willThrow();
  }

  if (a1 == 46 && a2 == 0xE100000000000000 || (sub_2146DA6A8() & 1) != 0 || a1 == 11822 && a2 == 0xE200000000000000 || (sub_2146DA6A8() & 1) != 0)
  {
    sub_214508F2C();
    swift_allocError();
    v8 = 2;
    goto LABEL_14;
  }

  v10 = *v2;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v10;
  if ((result & 1) == 0)
  {
    result = sub_2140960E0(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *v6 = result;
  }

  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v17 = v11 + 1;
    v15 = v10;
    v16 = *(v10 + 16);
    result = sub_2140960E0((v12 > 1), v11 + 1, 1, v15);
    v11 = v16;
    v13 = v17;
    v10 = result;
  }

  *(v10 + 16) = v13;
  v14 = v10 + 16 * v11;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *v6 = v10;
  return result;
}

void sub_2145080F8()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v2 = sub_2146D9558();
  v4 = v3;

  MEMORY[0x2160545D0](v2, v4);

  v5 = sub_2146D9628();

  v6 = realpath_DARWIN_EXTSN((v5 + 32), 0);

  if (!v6)
  {
    v19 = 4;
LABEL_18:
    sub_214508F2C();
    swift_allocError();
    *v20 = v19;
    swift_willThrow();
    return;
  }

  MEMORY[0x216054540](v6);
  if (!v7)
  {
    v19 = 3;
    goto LABEL_18;
  }

  sub_214069AD8();
  v8 = sub_2146D9DB8();

  v9 = 0;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
LABEL_4:
  v12 = (v8 + 40 + 16 * v9);
  while (1)
  {
    if (v10 == v9)
    {

      *v1 = v11;
      return;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    ++v9;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      v21 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21409FD08(0, *(v11 + 16) + 1, 1);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21409FD08((v16 > 1), v17 + 1, 1);
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      v1 = v21;
      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_214508368(void *a1@<X8>)
{
  v4 = *v1;

  sub_2145080F8();
  if (v2)
  {
  }

  else
  {
    *a1 = v4;
  }
}

void sub_2145083C0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;

  sub_214507EEC(a1, a2);
  if (v4)
  {
  }

  else
  {
    *a3 = v8;
  }
}

void sub_21450844C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;

  sub_214507704(a1);
  if (v3)
  {
  }

  else
  {
    *a2 = v6;
  }
}

uint64_t sub_2145084AC()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v0 + 16 + 16 * v1);

  return v2;
}

void sub_2145084F8(char **a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 2))
  {

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = *(v3 + 2);
      if (v4)
      {
LABEL_4:
        *(v3 + 2) = v4 - 1;

        *a1 = v3;
        return;
      }
    }

    else
    {
      v3 = sub_214508EFC(v3);
      v4 = *(v3 + 2);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
    *a1 = v3;
  }
}

void sub_2145085A0(void *a1@<X8>)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 temporaryDirectory];

  sub_2146D88E8();
  v8 = sub_2146D8878();
  (*(v3 + 8))(v5, v2);
  v9 = *(v8 + 16);
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v9, 0);
    v10 = v23;
    v11 = (v8 + 40);
    do
    {
      v12 = *v11;
      v21 = *(v11 - 1);
      v22 = v12;

      v13 = sub_2146D97A8();
      v23 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        v19 = v14;
        v20 = v13;
        sub_21409FD08((v15 > 1), v16 + 1, 1);
        v14 = v19;
        v13 = v20;
        v10 = v23;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *a1 = v10;
}

uint64_t sub_2145087B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_2146D8848())
  {
    v4 = sub_2146D8908();
    sub_214507A50(v4, v5, &v10);
    v7 = sub_2146D8958();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    v9 = v10;
  }

  else
  {
    v6 = sub_2146D8958();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_21450888C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5 = sub_2146DA6B8();
    sub_214507A50(v5, v6, &v9);
    v8 = v9;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214508960(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA18();
  v7[6] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v3 = sub_2146D9558();
  v5 = v4;

  MEMORY[0x2160545D0](v3, v5);

  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2146DA708();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t sub_214508AC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2146D97B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_214095520(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_214095520((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2146D9798();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2146D96B8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2146D96B8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2146D97B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_214095520(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2146D97B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_214095520(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_214095520((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2146D96B8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214508E98(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2146DA028();
  }

  return sub_2146D9F18();
}

unint64_t sub_214508F2C()
{
  result = qword_27C914D80;
  if (!qword_27C914D80)
  {
    result = swift_getWitnessTable(a5_39, &type metadata for PathComponentError, v0, v1);
    atomic_store(result, &qword_27C914D80);
  }

  return result;
}

unint64_t sub_214508FA4()
{
  result = qword_27C914D88;
  if (!qword_27C914D88)
  {
    result = swift_getWitnessTable(byte_214757F34, &type metadata for PathComponentError, v0, v1);
    atomic_store(result, &qword_27C914D88);
  }

  return result;
}

uint64_t sub_214509020@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214509038@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826532A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214509190()
{
  result = qword_27C914D90;
  if (!qword_27C914D90)
  {
    result = swift_getWitnessTable(asc_214757FA0, &type metadata for MBDRichCardOrientationType, v0, v1);
    atomic_store(result, &qword_27C914D90);
  }

  return result;
}

unint64_t sub_2145092C4()
{
  result = qword_27C914D98;
  if (!qword_27C914D98)
  {
    result = swift_getWitnessTable(byte_2147580AC, &type metadata for MBDRichCardImageAlignmentType, v0, v1);
    atomic_store(result, &qword_27C914D98);
  }

  return result;
}

unint64_t sub_2145093F8()
{
  result = qword_27C914DA0;
  if (!qword_27C914DA0)
  {
    result = swift_getWitnessTable(byte_2147581B8, &type metadata for MBDRichCardCarouselWidthType, v0, v1);
    atomic_store(result, &qword_27C914DA0);
  }

  return result;
}

uint64_t sub_214509554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145095D0()
{
  result = qword_27C914DA8;
  if (!qword_27C914DA8)
  {
    result = swift_getWitnessTable(byte_214758220, &type metadata for MBDRichCardCarouselWidthType, v0, v1);
    atomic_store(result, &qword_27C914DA8);
  }

  return result;
}

unint64_t sub_214509624()
{
  result = qword_27C914DB0;
  if (!qword_27C914DB0)
  {
    result = swift_getWitnessTable(byte_214758114, &type metadata for MBDRichCardImageAlignmentType, v0, v1);
    atomic_store(result, &qword_27C914DB0);
  }

  return result;
}

unint64_t sub_214509678()
{
  result = qword_27C914DB8;
  if (!qword_27C914DB8)
  {
    result = swift_getWitnessTable(byte_214758008, &type metadata for MBDRichCardOrientationType, v0, v1);
    atomic_store(result, &qword_27C914DB8);
  }

  return result;
}

uint64_t sub_2145096F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21450973C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214509798()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214509814@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214509838(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214509890()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_2145098F8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

void (*sub_214509980(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

void sub_214509A18(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214509B60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214509BFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214509C94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 64);
  return sub_21430298C(v2, v3);
}

__n128 sub_214509CB0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  sub_21430299C(*(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 40) = v5;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t sub_214509D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v7 = *(v1 + 48);
    v4 = *(v1 + 64) & 0xFF01;

    v6 = v7;
  }

  else
  {
    v4 = 0;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_214509E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor18CPMGroupManagementV9GroupDataOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_214509EA8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  return v4;
}

unint64_t sub_214509F48()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  return v4;
}

uint64_t sub_214509FE8()
{
  v1 = *v0;

  return v1;
}

void sub_21450A018(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_21450A070()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_21450A0A0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21450A0F8()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_21450A16C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

void sub_21450A1D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

  *v4 = v3;
  v4[1] = v2;
}

void sub_21450A224(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_21450A26C(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_21450A31C;
}

void sub_21450A350()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_21450A388()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  sub_213FDCA18(*v1, v2);
  return v3;
}

uint64_t sub_21450A3D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  sub_21402D9F8(v2, v3);
  result = sub_213FDC6BC(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_21450A43C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*sub_21450A484(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_213FDCA18(v5, v6);
  return sub_21450A4F8;
}

double sub_21450A530()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  sub_213FDC6BC(*v1, *(v1 + 8));
  result = 0.0;
  *v1 = xmmword_2146E68C0;
  return result;
}

double sub_21450A5E8@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoConnectionRequest(0);
  sub_2146D8DE8();
  v3 = (a1 + *(v2 + 28));
  *v3 = 0;
  v3[1] = 0;
  result = 0.0;
  *(a1 + *(v2 + 32)) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450A780@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(v1 + *(v6 + 24), v5, &qword_27C914EC0, qword_214758530);
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C914EC0, qword_214758530);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v5, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v5, a1, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
}

uint64_t sub_21450A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v7 + 24), v6, &qword_27C914EC0, qword_214758530);
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC0, qword_214758530);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v6, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v6, a2, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
}

void (*sub_21450AAB0(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  *(v5 + 12) = v12;
  sub_213FB2E54(v1 + v12, v8, &qword_27C914EC0, qword_214758530);
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC0, qword_214758530);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(v8, v11, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      return sub_21450ACC8;
    }

    sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  sub_2146D8DE8();
  return sub_21450ACC8;
}

uint64_t sub_21450ACF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21450AD58@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(v1 + *(v6 + 24), v5, &qword_27C914EC0, qword_214758530);
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C914EC0, qword_214758530);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21450B2C0(v5, a1, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    }

    sub_21450ACF8(v5, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  *a1 = xmmword_2146ECC00;
  type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  return sub_2146D8DE8();
}

uint64_t sub_21450AED8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v7 + 24), v6, &qword_27C914EC0, qword_214758530);
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC0, qword_214758530);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21450B2C0(v6, a2, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    }

    sub_21450ACF8(v6, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  *a2 = xmmword_2146ECC00;
  type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  return sub_2146D8DE8();
}

uint64_t sub_21450B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_21450B6F8(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  sub_213FB2DF4(a2 + v13, &qword_27C914EC0, qword_214758530);
  sub_21450B2C0(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t sub_21450B194(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  sub_213FB2DF4(v3 + v6, &qword_27C914EC0, qword_214758530);
  sub_21450B2C0(a1, v3 + v6, a2);
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

uint64_t sub_21450B260@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2146ECC00;
  type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  return sub_2146D8DE8();
}

uint64_t sub_21450B2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*sub_21450B328(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  *(v5 + 12) = v12;
  sub_213FB2E54(v1 + v12, v8, &qword_27C914EC0, qword_214758530);
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC0, qword_214758530);
LABEL_15:
    *v11 = xmmword_2146ECC00;
    sub_2146D8DE8();
    return sub_21450B560;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    goto LABEL_15;
  }

  sub_21450B2C0(v8, v11, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  return sub_21450B560;
}

void sub_21450B590(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_21450B6F8(v11, v10, a3);
    sub_213FB2DF4(v12 + v9, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_21450ACF8(v11, a5);
  }

  else
  {
    sub_213FB2DF4(v12 + v9, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t sub_21450B6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21450B760@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 28);
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21450B7DC(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 28);
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_21450B8A4(uint64_t a1, uint64_t a2)
{
  if (!sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21450B958()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_21450B98C(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_21450BA7C@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  v3 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return sub_2146D8DE8();
}

uint64_t sub_21450BB2C()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_21450BB80@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

void sub_21450BBE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));

  *v4 = v3;
  v4[1] = v2;
}

void sub_21450BC38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_21450BC80(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_21451548C;
}

void sub_21450BD30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t (*sub_21450BE18(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_213FDCA18(v5, v6);
  return sub_214515490;
}

uint64_t sub_21450BEE8(char a1)
{
  result = type metadata accessor for NearbyProtoJoinRequestContent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_21450BF18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_21450BF74;
}

uint64_t sub_21450BFCC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21450C068(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double sub_21450C130@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  sub_2146D8DE8();
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_2146E68C0;
  *(a1 + v2[8]) = 2;
  return result;
}

uint64_t sub_21450C290@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(v1 + *(v6 + 20), v5, &qword_27C914EC8, &unk_214784480);
  v7 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C914EC8, &unk_214784480);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v5, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v5, a1, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
}

uint64_t sub_21450C3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(a1 + *(v7 + 20), v6, &qword_27C914EC8, &unk_214784480);
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC8, &unk_214784480);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v6, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v6, a2, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
}

void (*sub_21450C584(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  *(v5 + 12) = v12;
  sub_213FB2E54(v1 + v12, v8, &qword_27C914EC8, &unk_214784480);
  v13 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC8, &unk_214784480);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(v8, v11, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      return sub_21450C79C;
    }

    sub_21450ACF8(v8, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  }

  sub_2146D8DE8();
  return sub_21450C79C;
}

void sub_21450C7CC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_21450B6F8(v11, v10, a3);
    sub_213FB2DF4(v12 + v9, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_21450ACF8(v11, a5);
  }

  else
  {
    sub_213FB2DF4(v12 + v9, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

double sub_21450C934@<D0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(v1 + *(v6 + 20), v5, &qword_27C914EC8, &unk_214784480);
  v7 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C914EC8, &unk_214784480);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450B2C0(v5, a1, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      return result;
    }

    sub_21450ACF8(v5, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  v9 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  sub_2146D8DE8();
  result = 0.0;
  *(a1 + *(v9 + 28)) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450CAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_21450B6F8(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  sub_213FB2DF4(a2 + v13, &qword_27C914EC8, &unk_214784480);
  sub_21450B2C0(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t sub_21450CC08(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  sub_213FB2DF4(v3 + v6, &qword_27C914EC8, &unk_214784480);
  sub_21450B2C0(a1, v3 + v6, a2);
  v7 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

double sub_21450CCD4@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  v2 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  sub_2146D8DE8();
  result = 0.0;
  *(a1 + *(v2 + 28)) = xmmword_2146E68C0;
  return result;
}

void (*sub_21450CD30(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  *(v5 + 12) = v13;
  sub_213FB2E54(v1 + v13, v8, &qword_27C914EC8, &unk_214784480);
  v14 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC8, &unk_214784480);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x277D84F90];
    sub_2146D8DE8();
    *(v12 + *(v9 + 28)) = xmmword_2146E68C0;
    return sub_21450CF80;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450ACF8(v8, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    goto LABEL_15;
  }

  sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
  return sub_21450CF80;
}

uint64_t sub_21450CFC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21450D064(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21450D134(uint64_t a1, uint64_t a2)
{
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21450D250(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  sub_213FDCA18(*v2, v3);
  return v4;
}

uint64_t sub_21450D2A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_21402D9F8(v5, v6);
  result = sub_213FDC6BC(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t sub_21450D328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 28);
  result = sub_213FDC6BC(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*sub_21450D374(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_213FDCA18(v5, v6);
  return sub_214515490;
}