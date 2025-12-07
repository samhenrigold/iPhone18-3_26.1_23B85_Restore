uint64_t sub_260FB08C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v35 = a4;
  v36 = a5;
  v37 = a3;
  v39 = a11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v16 = sub_2610BD594();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v30 - v23);
  v33 = a6;
  v34 = a7;
  v31 = a9;
  v32 = a8;
  v25 = v35;
  v35(a6, a7, a8, a9, 0x8000000000000018, a10);
  sub_26100AA90(v37, a13, v24);
  (*(v17 + 16))(v21, v24, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v21;
    v27 = *v21;
    v25(v33, v34, v32, v31, v26 | 0x4000000000000000, a10);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
  }

  v28 = sub_2610BCC24();
  sub_26106C524(v24, v28);
  return (*(v17 + 8))(v24, v16);
}

void sub_260FB0AF8(uint64_t a1, unint64_t a2)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);

  oslog = sub_2610BC794();
  v5 = sub_2610BCD84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_260FA5970(a1, a2, &v9);
    _os_log_impl(&dword_260F97000, oslog, v5, "PASMessageSession sendRequestID %{public}s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }
}

uint64_t sub_260FB0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25[-1] - v12;
  v25[5] = a4;
  v25[6] = a5;
  sub_260FBE85C(a3, &v25[-1] - v12);
  v14 = sub_2610BCC94();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_260FA9980(v13, &unk_27FE65800, &qword_2610BF910);
  }

  else
  {
    sub_2610BCC84();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2610BCBF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2610BCA44();
      sub_260FBA950(v21 + 32, v25);

      v22 = v25[0];
      sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
  if (v20 | v18)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v18;
    v25[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_260FB0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  return MEMORY[0x2822009F8](sub_260FB0EE8, 0, 0);
}

uint64_t sub_260FB0EE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (is_mul_ok(v3, 0x3B9ACA00uLL))
  {
    v4 = 1000000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 40) = v5;
    *v5 = v1;
    v5[1] = sub_260FB0F9C;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260FB0F9C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FB10D0, 0, 0);
}

uint64_t sub_260FB10D0()
{
  v1 = *(v0 + 48);
  sub_2610BCCD4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_2610BCCB4();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260FB1180(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_260FAE3AC(*a1);
  v5 = v4;
  if (v3 == sub_260FAE3AC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2610BD384();
  }

  return v8 & 1;
}

uint64_t sub_260FB1208()
{
  v1 = *v0;
  sub_2610BD514();
  sub_260FAE3AC(v1);
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FB126C(uint64_t a1)
{
  sub_260FAE3AC(*v1);
  sub_2610BCA54();
}

uint64_t sub_260FB12C0(uint64_t a1)
{
  v2 = *v1;
  sub_2610BD514();
  sub_260FAE3AC(v2);
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_260FB1320@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_260FBB4D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_260FB1350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_260FAE3AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_260FB137C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  LOBYTE(v19[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v8 = sub_260FA60B4(v22);
    if (v9)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v8, &v20);
      sub_260FA9764(v22);
      sub_260FA6A84(&v20, &v23);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v22);
  v20 = 0u;
  v21 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v10 = sub_260FA60B4(v19), (v11 & 1) == 0))
  {
    sub_260FA9764(v19);
    v23 = 0u;
    v24 = 0u;
    if (!*(&v21 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v10, &v23);
  sub_260FA9764(v19);
  if (*(&v21 + 1))
  {
LABEL_9:
    sub_260FA9980(&v20, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v24 + 1))
  {
    sub_260FA6A84(&v23, v25);
    sub_260FA3F5C(v25, v22);
    if (swift_dynamicCast())
    {
      v12 = v19[0];
      v13 = v19[1];
      result = __swift_destroy_boxed_opaque_existential_0Tm(v25);
      *a4 = v12;
      a4[1] = v13;
    }

    else
    {
      v15 = sub_260FAE3AC(a3);
      v17 = v16;
      sub_260FBE508();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v17;
      *(v18 + 16) = 2;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }
  }

  else
  {
    result = sub_260FA9980(&v23, &qword_27FE63830, &qword_2610BE8E0);
    *a4 = xmmword_2610BF320;
  }

  return result;
}

uint64_t sub_260FB15A0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  LOBYTE(v19[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v6 = sub_260FA60B4(v22);
    if (v7)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v6, &v20);
      sub_260FA9764(v22);
      sub_260FA6A84(&v20, &v23);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v22);
  v20 = 0u;
  v21 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v8 = sub_260FA60B4(v19), (v9 & 1) == 0))
  {
    sub_260FA9764(v19);
    v23 = 0u;
    v24 = 0u;
    if (!*(&v21 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v8, &v23);
  sub_260FA9764(v19);
  if (*(&v21 + 1))
  {
LABEL_9:
    sub_260FA9980(&v20, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v24 + 1))
  {
    sub_260FA6A84(&v23, v25);
    sub_260FA3F5C(v25, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
    if (swift_dynamicCast())
    {
      v10 = v19[0];
      result = __swift_destroy_boxed_opaque_existential_0Tm(v25);
      *a3 = v10;
    }

    else
    {
      sub_260FA3F5C(v25, v22);
      v12 = sub_2610BCA34();
      v14 = v13;
      v15 = sub_260FAE3AC(a2);
      v17 = v16;
      sub_260FBE4B4();
      swift_allocError();
      *v18 = v12;
      *(v18 + 8) = v14;
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      *(v18 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }
  }

  else
  {
    result = sub_260FA9980(&v23, &qword_27FE63830, &qword_2610BE8E0);
    *a3 = 0;
  }

  return result;
}

uint64_t sub_260FB17E4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = a3;
  LOBYTE(v22[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v7 = sub_260FA60B4(v25);
    if (v8)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v7, &v23);
      sub_260FA9764(v25);
      sub_260FA6A84(&v23, &v26);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v25);
  v23 = 0u;
  v24 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v9 = sub_260FA60B4(v22), (v10 & 1) == 0))
  {
    sub_260FA9764(v22);
    v26 = 0u;
    v27 = 0u;
    if (!*(&v24 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v9, &v26);
  sub_260FA9764(v22);
  if (*(&v24 + 1))
  {
LABEL_9:
    sub_260FA9980(&v23, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v27 + 1))
  {
    sub_260FA6A84(&v26, v28);
    v11 = sub_260FB2534(v28, v4);
    if (v3)
    {
      return __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    if (v12)
    {
      sub_260FA3F5C(v28, v25);
      v13 = sub_2610BCA34();
      v15 = v14;
      v16 = sub_260FAE3AC(a2);
      v18 = v17;
      sub_260FBE4B4();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = v15;
      *(v19 + 16) = v16;
      *(v19 + 24) = v18;
      *(v19 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    v21 = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    return v21;
  }

  else
  {
    sub_260FA9980(&v26, &qword_27FE63830, &qword_2610BE8E0);
    return 0;
  }
}

uint64_t sub_260FB1A10@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  LOBYTE(v30[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v9 = sub_260FA60B4(&v24);
    if (v10)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v9, &v31);
      sub_260FA9764(&v24);
      sub_260FA6A84(&v31, &v33);
      goto LABEL_10;
    }
  }

  sub_260FA9764(&v24);
  v11 = sub_260FAE3AC(a2);
  v31 = 0u;
  v32 = 0u;
  v28 = v11;
  v29 = v12;
  sub_2610BCF24();
  if (!*(a1 + 16) || (v13 = sub_260FA60B4(v30), (v14 & 1) == 0))
  {
    sub_260FA9764(v30);
    v33 = 0u;
    v34 = 0u;
    if (!*(&v32 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v13, &v33);
  sub_260FA9764(v30);
  if (*(&v32 + 1))
  {
LABEL_9:
    sub_260FA9980(&v31, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v34 + 1))
  {
    sub_260FA6A84(&v33, v35);
    sub_260FB27B0(v35, v5);
    if (v4)
    {
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    if (!*(&v25 + 1))
    {
      sub_260FA9980(&v24, &unk_27FE66710, &qword_2610BF8F8);
      sub_260FA3F5C(v35, &v24);
      v17 = sub_2610BCA34();
      v19 = v18;
      v20 = sub_260FAE3AC(a2);
      v22 = v21;
      sub_260FBE4B4();
      swift_allocError();
      *v23 = v17;
      *(v23 + 8) = v19;
      *(v23 + 16) = v20;
      *(v23 + 24) = v22;
      *(v23 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v16 = v25;
    *a4 = v24;
    *(a4 + 16) = v16;
    *(a4 + 32) = v26;
    *(a4 + 48) = v27;
  }

  else
  {
    result = sub_260FA9980(&v33, &qword_27FE63830, &qword_2610BE8E0);
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_260FB1C74(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = a3;
  LOBYTE(v21[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v7 = sub_260FA60B4(v24);
    if (v8)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v7, &v22);
      sub_260FA9764(v24);
      sub_260FA6A84(&v22, &v25);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v24);
  v22 = 0u;
  v23 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v9 = sub_260FA60B4(v21), (v10 & 1) == 0))
  {
    sub_260FA9764(v21);
    v25 = 0u;
    v26 = 0u;
    if (!*(&v23 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v9, &v25);
  sub_260FA9764(v21);
  if (*(&v23 + 1))
  {
LABEL_9:
    sub_260FA9980(&v22, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v26 + 1))
  {
    sub_260FA6A84(&v25, v27);
    v11 = sub_260FB266C(v27, v4);
    if (v3)
    {
      return __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    if (!v11)
    {
      sub_260FA3F5C(v27, v24);
      v14 = sub_2610BCA34();
      v16 = v15;
      v17 = sub_260FAE3AC(a2);
      v19 = v18;
      sub_260FBE4B4();
      swift_allocError();
      *v20 = v14;
      *(v20 + 8) = v16;
      *(v20 + 16) = v17;
      *(v20 + 24) = v19;
      *(v20 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    v13 = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    return v13;
  }

  else
  {
    sub_260FA9980(&v25, &qword_27FE63830, &qword_2610BE8E0);
    return 0;
  }
}

unint64_t sub_260FB1E9C(uint64_t a1, unsigned __int8 a2)
{
  LOBYTE(v20[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v5 = sub_260FA60B4(v23);
    if (v6)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v5, &v21);
      sub_260FA9764(v23);
      sub_260FA6A84(&v21, &v24);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v23);
  v21 = 0u;
  v22 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v7 = sub_260FA60B4(v20), (v8 & 1) == 0))
  {
    sub_260FA9764(v20);
    v24 = 0u;
    v25 = 0u;
    if (!*(&v22 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v7, &v24);
  sub_260FA9764(v20);
  if (*(&v22 + 1))
  {
LABEL_9:
    sub_260FA9980(&v21, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v25 + 1))
  {
    sub_260FA6A84(&v24, v26);
    v9 = sub_260FB28EC(v26);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    if (v10)
    {
      sub_260FA3F5C(v26, v23);
      v11 = sub_2610BCA34();
      v13 = v12;
      v14 = sub_260FAE3AC(a2);
      v16 = v15;
      sub_260FBE4B4();
      swift_allocError();
      *v17 = v11;
      *(v17 + 8) = v13;
      *(v17 + 16) = v14;
      *(v17 + 24) = v16;
      *(v17 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    v19 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    return v19;
  }

  else
  {
    sub_260FA9980(&v24, &qword_27FE63830, &qword_2610BE8E0);
    return 0;
  }
}

uint64_t sub_260FB20C0(uint64_t a1, unsigned __int8 a2)
{
  LOBYTE(v18[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v4 = sub_260FA60B4(v21);
    if (v5)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v4, &v19);
      sub_260FA9764(v21);
      sub_260FA6A84(&v19, &v22);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v21);
  v19 = 0u;
  v20 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v6 = sub_260FA60B4(v18), (v7 & 1) == 0))
  {
    sub_260FA9764(v18);
    v22 = 0u;
    v23 = 0u;
    if (!*(&v20 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v6, &v22);
  sub_260FA9764(v18);
  if (*(&v20 + 1))
  {
LABEL_9:
    sub_260FA9980(&v19, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v23 + 1))
  {
    sub_260FA6A84(&v22, v24);
    sub_260FA9AB4(0, &qword_27FE64000, 0x277D08268);
    v8 = static FAFamilyMember.parseObject(_:)(v24);
    if (v8)
    {
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      return v9;
    }

    else
    {
      sub_260FA3F5C(v24, v21);
      v11 = sub_2610BCA34();
      v13 = v12;
      v14 = sub_260FAE3AC(a2);
      v16 = v15;
      sub_260FBE4B4();
      swift_allocError();
      *v17 = v11;
      *(v17 + 8) = v13;
      *(v17 + 16) = v14;
      *(v17 + 24) = v16;
      *(v17 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }
  }

  else
  {
    sub_260FA9980(&v22, &qword_27FE63830, &qword_2610BE8E0);
    return 0;
  }
}

uint64_t sub_260FB22EC(uint64_t a1, unsigned __int8 a2)
{
  LOBYTE(v16[0]) = a2;
  sub_260FBE460();
  sub_2610BCF24();
  if (*(a1 + 16))
  {
    v4 = sub_260FA60B4(v19);
    if (v5)
    {
      sub_260FA3F5C(*(a1 + 56) + 32 * v4, &v17);
      sub_260FA9764(v19);
      sub_260FA6A84(&v17, &v20);
      goto LABEL_10;
    }
  }

  sub_260FA9764(v19);
  v17 = 0u;
  v18 = 0u;
  sub_260FAE3AC(a2);
  sub_2610BCF24();
  if (!*(a1 + 16) || (v6 = sub_260FA60B4(v16), (v7 & 1) == 0))
  {
    sub_260FA9764(v16);
    v20 = 0u;
    v21 = 0u;
    if (!*(&v18 + 1))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_260FA3F5C(*(a1 + 56) + 32 * v6, &v20);
  sub_260FA9764(v16);
  if (*(&v18 + 1))
  {
LABEL_9:
    sub_260FA9980(&v17, &qword_27FE63830, &qword_2610BE8E0);
  }

LABEL_10:
  if (*(&v21 + 1))
  {
    sub_260FA6A84(&v20, v22);
    sub_260FA3F5C(v22, v19);
    sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) != 0 && (v8 = v16[0]) != 0)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
      sub_260FA3F5C(v22, v19);
      v8 = sub_2610BCA34();
      v10 = v9;
      v11 = sub_260FAE3AC(a2);
      v13 = v12;
      sub_260FBE4B4();
      swift_allocError();
      *v14 = v8;
      *(v14 + 8) = v10;
      *(v14 + 16) = v11;
      *(v14 + 24) = v13;
      *(v14 + 32) = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }
  }

  else
  {
    sub_260FA9980(&v20, &qword_27FE63830, &qword_2610BE8E0);
    return 0;
  }

  return v8;
}

uint64_t sub_260FB2534(uint64_t a1, unsigned __int8 a2)
{
  sub_260FA3F5C(a1, v11);
  if (swift_dynamicCast())
  {
    sub_2610BC394();
    swift_allocObject();
    sub_2610BC384();
    sub_2610BC374();
    if (v2)
    {

      return sub_260FAC46C(v9, v10);
    }

    else
    {
      sub_260FAC46C(v9, v10);

      return v12;
    }
  }

  else
  {
    v5 = sub_260FAE3AC(a2);
    v7 = v6;
    sub_260FBE508();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_260FB266C(uint64_t a1, unsigned __int8 a2)
{
  sub_260FA3F5C(a1, v11);
  if (swift_dynamicCast())
  {
    sub_2610BC394();
    swift_allocObject();
    sub_2610BC384();
    type metadata accessor for PASDeviceContext();
    sub_260FBE55C();
    sub_2610BC374();
    if (v2)
    {

      return sub_260FAC46C(v9, v10);
    }

    else
    {
      sub_260FAC46C(v9, v10);

      return v12;
    }
  }

  else
  {
    v5 = sub_260FAE3AC(a2);
    v7 = v6;
    sub_260FBE508();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_260FB27B0(uint64_t a1, unsigned __int8 a2)
{
  sub_260FA3F5C(a1, v12);
  if (swift_dynamicCast())
  {
    sub_2610BC394();
    swift_allocObject();
    sub_2610BC384();
    sub_260FBE5B4();
    sub_2610BC374();
    if (v3)
    {

      return sub_260FAC46C(v10, v11);
    }

    else
    {
      sub_260FAC46C(v10, v11);
    }
  }

  else
  {
    v6 = sub_260FAE3AC(a2);
    v8 = v7;
    sub_260FBE508();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }
}

unint64_t sub_260FB28EC(uint64_t a1)
{
  sub_260FA3F5C(a1, &v2);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v3 <= 2)
  {
    return v3;
  }

  return 0;
}

uint64_t sub_260FB2964(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2610BC3C4();
  swift_allocObject();
  sub_2610BC3B4();
  v11 = sub_2610BC3A4();
  v13 = v12;

  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
    inited = swift_initStackObject();
    *(inited + 32) = a4;
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v11;
    *(inited + 48) = v13;

    sub_260FAA188(v11, v13);
    v16 = sub_260FA8D08(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = a1;
    sub_2610998BC(v16, sub_26109954C, 0, isUniquelyReferenced_nonNull_native, &v18, a3 & 1);

    sub_260FAC46C(v11, v13);
    return v18;
  }

  return result;
}

uint64_t static FAFamilyMember.parseObject(_:)(uint64_t a1)
{
  sub_260FA3F5C(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
  if (swift_dynamicCast())
  {
    v1 = objc_allocWithZone(MEMORY[0x277D08268]);
    v2 = sub_2610BC8F4();

    v3 = [v1 initWithDictionaryRepresentation_];

    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id FAFamilyMember.toParsable()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  result = [v2 dictionary];
  if (result)
  {
    v5 = result;
    v6 = sub_2610BC914();

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
  }

  else
  {
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v6;
  a1[3] = result;
  return result;
}

uint64_t sub_260FB2C8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static FAFamilyMember.parseObject(_:)(a1);
  *a2 = result;
  return result;
}

id sub_260FB2CBC@<X0>(uint64_t *a1@<X8>)
{
  result = [*v1 dictionary];
  if (result)
  {
    v4 = result;
    v5 = sub_2610BC914();

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = result;
  return result;
}

uint64_t PASSourceAppleIDExchanger.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PASSourceAppleIDExchanger.delegate.modify(uint64_t *a1))()
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FB2E8C;
}

void *PASSourceAppleIDExchanger.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASSourceAppleIDExchanger deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260F99170((v1 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 16);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t PASSourceAppleIDExchanger.__deallocating_deinit()
{
  PASSourceAppleIDExchanger.deinit();

  return MEMORY[0x2821FE8D8](v0, 185, 7);
}

uint64_t sub_260FB2FF4()
{
  *(v0 + 192) = sub_2610BCC74();
  *(v0 + 200) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FB308C, v2, v1);
}

uint64_t sub_260FB308C()
{
  v1 = *(v0 + 184);

  *(v0 + 288) = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_260FB3100, 0, 0);
}

uint64_t sub_260FB3100()
{
  if (*(v0 + 288) == 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger re-registered", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  v5 = *(v0 + 184);
  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_260FB32F0;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_260FB32F0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_260FB3F38;
  }

  else
  {
    v2 = sub_260FB3404;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB3404()
{
  v1 = v0[23];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  v0[28] = v5;
  sub_260FADDAC(8, 0, &unk_2610BF460, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v6 = v1[7];
  v7 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_260FB35D0;

  return v10(v0 + 7, v6, v7);
}

uint64_t sub_260FB35D0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_260FB4104;
  }

  else
  {
    v2 = sub_260FB36E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB36E4()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(9, 0, &unk_2610BF478, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v6 = v2[7];
  v7 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_260FB38A4;

  return v10(v0 + 12, v6, v7);
}

uint64_t sub_260FB38A4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_260FB42D0;
  }

  else
  {
    v2 = sub_260FB39B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB39B8()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[15];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(10, 0, &unk_2610BF488, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v6 = v2[7];
  v7 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_260FB3B78;

  return v10(v0 + 17, v6, v7);
}

uint64_t sub_260FB3B78()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_260FB449C;
  }

  else
  {
    v2 = sub_260FB3C8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB3C8C()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(11, 0, &unk_2610BF498, v4, v2, v1, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  v0[35] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FB3DB0, v6, v5);
}

uint64_t sub_260FB3DB0()
{
  v1 = *(v0 + 184);

  *(v1 + 184) = 1;

  return MEMORY[0x2822009F8](sub_260FB3E24, 0, 0);
}

uint64_t sub_260FB3E24()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger did registerForRequests", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_260FB3F38()
{
  v15 = v0;
  v1 = v0[27];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[22] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB4104()
{
  v15 = v0;
  v1 = v0[30];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[22] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB42D0()
{
  v15 = v0;
  v1 = v0[32];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[22] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB449C()
{
  v15 = v0;
  v1 = v0[34];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[22] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASSourceAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB4668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB4688, 0, 0);
}

uint64_t sub_260FB4688()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB4790;

    return sub_260FBB524();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB4790(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_260FBF890;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_260FBF858;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260FB48C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB48E4, 0, 0);
}

uint64_t sub_260FB48E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB49EC;

    return sub_260FBB960();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB49EC(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_260FB4B44;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_260FB4B20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260FB4B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FB4BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB4BC8, 0, 0);
}

uint64_t sub_260FB4BC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB4790;

    return sub_260FBBD34();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB4CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB4CF0, 0, 0);
}

uint64_t sub_260FB4CF0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB4790;

    return sub_260FBC008();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB4E18()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger fetchProxiedAKDevice", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 72);

  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_260FB5004;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_260FB5004()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_260FB5400;
  }

  else
  {
    v2 = sub_260FB5118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB5118()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_260FB5208;
  v4 = MEMORY[0x277CC9318];

  return sub_260FAECF0((v0 + 7), 2, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_260FB5208()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_260FB5418;
  }

  else
  {

    v2 = sub_260FB5324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_260FB5324()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_260FAA188(v2, v1);
  v3 = sub_2610BC514();
  sub_260FAC46C(v2, v1);
  v4 = [objc_opt_self() deviceWithSerializedData_];

  if (v4)
  {
    sub_260FAC46C(v2, v1);
    v5 = v0[1];

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_260FB5418()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASSourceAppleIDExchanger.sendAuthResults(_:familyMember:)(void *a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[24] = *a1;
  return MEMORY[0x2822009F8](sub_260FB54AC, 0, 0);
}

uint64_t sub_260FB54AC()
{
  v22 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger sendAuthResults", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[22];

  if (v5 && (v6 = [*(v0[22] + 16) dictionary]) != 0)
  {
    v7 = v6;
    v8 = sub_2610BC914();
  }

  else
  {
    v8 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  }

  v9 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF410;
  *(inited + 32) = 2;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *(inited + 40) = v9;
  *(inited + 72) = 3;
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
  *(inited + 80) = v8;

  v11 = sub_260FA8D08(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C20, &unk_2610BEDF0);
  swift_arrayDestroy();
  v0[21] = v11;
  if (v5)
  {
    v12 = v0[22];
    v13 = *(v12 + 32);
    if (v13 >> 60 != 15)
    {
      v14 = *(v12 + 24);
      v21[3] = MEMORY[0x277CC9318];
      v21[0] = v14;
      v21[1] = v13;
      sub_260FAA188(v14, v13);
      sub_260FAD618(v21, 4);
    }
  }

  v15 = v0[23];
  v16 = v15[7];
  v17 = v15[8];
  __swift_project_boxed_opaque_existential_1(v15 + 4, v16);
  v20 = (*(v17 + 16) + **(v17 + 16));
  v18 = swift_task_alloc();
  v0[25] = v18;
  *v18 = v0;
  v18[1] = sub_260FB5800;

  return v20(v0 + 16, v16, v17);
}

uint64_t sub_260FB5800()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_260FB5B88;
  }

  else
  {
    v2 = sub_260FB591C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB591C()
{
  v1 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v2 = v0[21];
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_260FB5A00;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 30), 1, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_260FB5A00()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_260FB5BA4;
  }

  else
  {

    v2 = sub_260FB5B1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB5B1C()
{
  v1 = *(v0 + 240);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260FB5BA4()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_260FB5C34()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger sendReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_260FB5E20;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_260FB5E20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_260FBF854;
  }

  else
  {
    v2 = sub_260FB5F34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB5F34()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_260FB6024;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 13), 8, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_260FB6024()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_260FBF88C;
  }

  else
  {

    v2 = sub_260FBF850;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB6160()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger sendCancelFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_260FB634C;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_260FB634C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_260FBF854;
  }

  else
  {
    v2 = sub_260FB6460;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB6460()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_260FB6024;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 13), 9, 0, 2, 0, v2, v1, v4);
}

uint64_t sub_260FB6570()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger sendEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_260FB675C;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_260FB675C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_260FB6AE8;
  }

  else
  {
    v2 = sub_260FB6870;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB6870()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_260FB6960;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 13), 10, 0, 2, 0, v2, v1, v4);
}

uint64_t sub_260FB6960()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_260FB6B04;
  }

  else
  {

    v2 = sub_260FB6A7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB6A7C()
{
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260FB6B04()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_260FB6BB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_260FB6C10(uint64_t *a1))()
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FBF87C;
}

void sub_260FB6CA4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_260FB6D28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6DB4;

  return PASSourceAppleIDExchanger.registerForRequests()();
}

uint64_t sub_260FB6DB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260FB6EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6F34;

  return PASSourceAppleIDExchanger.fetchProxiedAKDevice()();
}

uint64_t sub_260FB6F34(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_260FB7034(void *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF894;

  return PASSourceAppleIDExchanger.sendAuthResults(_:familyMember:)(a1, a2);
}

uint64_t sub_260FB70D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF894;

  return PASSourceAppleIDExchanger.sendReset()();
}

uint64_t sub_260FB7164()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF894;

  return PASSourceAppleIDExchanger.sendCancelFlow()();
}

uint64_t sub_260FB71F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB727C;

  return PASSourceAppleIDExchanger.sendEndFlow()();
}

uint64_t sub_260FB727C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t PASTargetAppleIDExchanger.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PASTargetAppleIDExchanger.delegate.modify(uint64_t *a1))()
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 144);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FB74B4;
}

void *PASTargetAppleIDExchanger.deinit()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASTargetAppleIDExchanger deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 88));

  sub_260F99170(v1 + 136);
  return v1;
}

uint64_t PASTargetAppleIDExchanger.__deallocating_deinit()
{
  PASTargetAppleIDExchanger.deinit();

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_260FB761C()
{
  *(v0 + 352) = sub_2610BCC74();
  *(v0 + 360) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FB76B4, v2, v1);
}

uint64_t sub_260FB76B4()
{
  v1 = *(v0 + 344);

  *(v0 + 448) = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_260FB7728, 0, 0);
}

uint64_t sub_260FB7728()
{
  if (*(v0 + 448) == 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger re-registered", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  sub_260FA99E0(*(v0 + 344) + 16, v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  v9 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  *(v0 + 368) = v7;
  *v7 = v0;
  v7[1] = sub_260FB7924;

  return v9(v0 + 56, v5, v6);
}

uint64_t sub_260FB7924()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_260FB85B8;
  }

  else
  {
    v2 = sub_260FB7A38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB7A38()
{
  v1 = v0[43];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
  sub_260FADDAC(2, 0, &unk_2610BF4F8, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_260FA99E0(v1 + 16, (v0 + 12));
  v6 = v0[15];
  v7 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_260FB7C14;

  return v10(v0 + 17, v6, v7);
}

uint64_t sub_260FB7C14()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_260FB878C;
  }

  else
  {
    v2 = sub_260FB7D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB7D28()
{
  v1 = v0[43];
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  v0[50] = v5;
  sub_260FADDAC(8, 0, &unk_2610BF510, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  sub_260FA99E0(v1 + 16, (v0 + 22));
  v6 = v0[25];
  v7 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_260FB7F08;

  return v10(v0 + 27, v6, v7);
}

uint64_t sub_260FB7F08()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_260FB8960;
  }

  else
  {
    v2 = sub_260FB801C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB801C()
{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[30];
  v4 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(9, 0, &unk_2610BF520, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  sub_260FA99E0(v2 + 16, (v0 + 32));
  v6 = v0[35];
  v7 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[53] = v8;
  *v8 = v0;
  v8[1] = sub_260FB81F0;

  return v10(v0 + 37, v6, v7);
}

uint64_t sub_260FB81F0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_260FB8B34;
  }

  else
  {
    v2 = sub_260FB8304;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB8304()
{
  v1 = v0[50];
  v2 = v0[40];
  v3 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(10, 0, &unk_2610BF530, v4, v2, v1, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v0[55] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FB8430, v6, v5);
}

uint64_t sub_260FB8430()
{
  v1 = *(v0 + 344);

  *(v1 + 152) = 1;

  return MEMORY[0x2822009F8](sub_260FB84A4, 0, 0);
}

uint64_t sub_260FB84A4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger did registerForRequests", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_260FB85B8()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[47];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[42] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB878C()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[49];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[42] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB8960()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v1 = v0[52];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[42] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB8B34()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[54];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[42] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASTargetAppleIDExchanger failed to registerForRequests. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_260FB8D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB8D28, 0, 0);
}

uint64_t sub_260FB8D28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_260FB8E34;

    return sub_260FBC994();
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_260FB8E34(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_260FBF890;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_260FB8F70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t PASTargetAppleIDExchanger.handleProxiedAKDevice@Sendable (options:request:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB9038;

  return sub_260FBC994();
}

uint64_t sub_260FB9038(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_260FB9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB9168, 0, 0);
}

uint64_t sub_260FB9168()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB4790;

    return sub_260FBEDB0();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB9290, 0, 0);
}

uint64_t sub_260FB9290()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB4790;

    return sub_260FBF084();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB9398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_260FB93B8, 0, 0);
}

uint64_t sub_260FB93B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_260FB4790;

    return sub_260FBF358();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_260FB94E0()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger sendReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[12];

  sub_260FA99E0(v5 + 16, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_260FB96D0;

  return v10(v0 + 7, v6, v7);
}

uint64_t sub_260FB96D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_260FBF86C;
  }

  else
  {
    v2 = sub_260FB97E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB97E4()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[15] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_260FB98D4;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 18), 8, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_260FB98D4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_260FBF884;
  }

  else
  {

    v2 = sub_260FBF878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB9A10()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger sendCancelFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[12];

  sub_260FA99E0(v5 + 16, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_260FB9C00;

  return v10(v0 + 7, v6, v7);
}

uint64_t sub_260FB9C00()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_260FBF86C;
  }

  else
  {
    v2 = sub_260FB9D14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FB9D14()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[15] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_260FB98D4;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 18), 9, 0, 2, 0, v2, v1, v4);
}

uint64_t sub_260FB9E24()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger sendEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[12];

  sub_260FA99E0(v5 + 16, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_260FBA014;

  return v10(v0 + 7, v6, v7);
}

uint64_t sub_260FBA014()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_260FBA3A8;
  }

  else
  {
    v2 = sub_260FBA128;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FBA128()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[15] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_260FBA218;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 18), 10, 0, 2, 0, v2, v1, v4);
}

uint64_t sub_260FBA218()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_260FBA410;
  }

  else
  {

    v2 = sub_260FBA334;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FBA334()
{
  v1 = *(v0 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260FBA3A8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_260FBA410()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];

  return v1(0);
}

uint64_t sub_260FBA4C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_260FBA524(uint64_t *a1))()
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 144);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_260FBF880;
}

void sub_260FBA5B8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 144) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_260FBA63C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return PASTargetAppleIDExchanger.registerForRequests()();
}

uint64_t sub_260FBA6C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF870;

  return sub_260FBC994();
}

uint64_t sub_260FBA768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF894;

  return PASTargetAppleIDExchanger.sendReset()();
}

uint64_t sub_260FBA7F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF894;

  return PASTargetAppleIDExchanger.sendCancelFlow()();
}

uint64_t sub_260FBA880()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF894;

  return PASTargetAppleIDExchanger.sendEndFlow()();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_260FBA950@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_260FBAA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB4668(a1, a2, a3, v3);
}

uint64_t sub_260FBAAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_260FB48C4(a1, a2, a3, v3);
}

uint64_t sub_260FBAB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB4BA8(a1, a2, a3, v3);
}

uint64_t sub_260FBAC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB4CD0(a1, a2, a3, v3);
}

uint64_t sub_260FBACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB8D08(a1, a2, a3, v3);
}

uint64_t sub_260FBAD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB9148(a1, a2, a3, v3);
}

uint64_t sub_260FBAE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB9270(a1, a2, a3, v3);
}

uint64_t sub_260FBAEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_260FB9398(a1, a2, a3, v3);
}

void sub_260FBAFAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  sub_260FBED78(a5);

  oslog = sub_2610BC794();
  v11 = sub_2610BCD54();
  sub_260FBED94(a5);

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446722;
    v14 = sub_260FADBA4(a5);
    v16 = sub_260FA5970(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_260FA5970(a1, a2, &v20);
    *(v12 + 22) = 2082;
    if (a4)
    {
      v17 = a4;
    }

    else
    {
      a3 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = sub_260FA5970(a3, v17, &v20);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_260F97000, oslog, v11, "PASMessageSession %{public}s - requestID %{public}s - %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v13, -1, -1);
    MEMORY[0x2666F8720](v12, -1, -1);
  }
}

uint64_t sub_260FBB1B8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = 0;

  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v7 + 48) + (v15 | (v13 << 6)));
      v54 = *(*(v7 + 48) + (v15 | (v13 << 6)));
      a3(&v52, &v54);
      if (*(v5 + 16))
      {
        v17 = sub_260FA60F8(v16);
        if (v18)
        {
          break;
        }
      }

      v32 = sub_260FA5FBC(v52, v53);
      if (v33)
      {
        v34 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *v6;
        v49 = *v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261098C00();
          v36 = v49;
        }

        sub_260FA6A84((*(v36 + 56) + 32 * v34), v50);
        sub_261098228(v34, v36);
        *v6 = v36;
      }

      else
      {
        memset(v50, 0, sizeof(v50));
      }

      sub_260FA9980(v50, &qword_27FE63830, &qword_2610BE8E0);
      v5 = a5;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    sub_260FA3F5C(*(v5 + 56) + 32 * v17, v51);
    v19 = v52;
    v20 = v53;
    sub_260FA6A84(v51, v50);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    v48 = *v6;
    v45 = v20;
    v24 = sub_260FA5FBC(v19, v20);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_32;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if (v21)
      {
        v31 = v48;
        if (v23)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_261098C00();
        v31 = v48;
        if (v28)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_261097078(v27, v21);
      v29 = sub_260FA5FBC(v19, v45);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_34;
      }

      v24 = v29;
      v31 = v48;
      if (v28)
      {
LABEL_24:
        v37 = (v31[7] + 32 * v24);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        sub_260FA6A84(v50, v37);

        goto LABEL_28;
      }
    }

    v31[(v24 >> 6) + 8] |= 1 << v24;
    v38 = (v31[6] + 16 * v24);
    *v38 = v19;
    v38[1] = v45;
    sub_260FA6A84(v50, (v31[7] + 32 * v24));
    v39 = v31[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_33;
    }

    v31[2] = v41;
LABEL_28:
    v6 = a2;
    v7 = i;
    *a2 = v31;
  }

LABEL_7:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

unint64_t sub_260FBB4D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260FBB544()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger handleReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = *(v0[5] + 24);
    ObjectType = swift_getObjectType();
    v14 = (*(v6 + 8) + **(v6 + 8));
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_260FBB7F8;

    return v14(ObjectType, v6);
  }

  else
  {
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASSourceAppleIDExchanger handleReset delegate is nil", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_260FBB7F8(char a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_260FBB8F8, 0, 0);
}

uint64_t sub_260FBB8F8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260FBB980()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger handleCancel", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = *(v0[5] + 24);
    ObjectType = swift_getObjectType();
    v14 = (*(v6 + 16) + **(v6 + 16));
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_260FBBC34;

    return v14(ObjectType, v6);
  }

  else
  {
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASSourceAppleIDExchanger handleCancel delegate is nil", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_260FBBC34(char a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_260FBF868, 0, 0);
}

uint64_t sub_260FBBD54()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASSourceAppleIDExchanger handleEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = *(v0[5] + 24);
    ObjectType = swift_getObjectType();
    v14 = (*(v6 + 24) + **(v6 + 24));
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_260FBBC34;

    return v14(ObjectType, v6);
  }

  else
  {
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASSourceAppleIDExchanger handleEndFlow delegate is nil", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_260FBC028()
{
  v1 = [objc_opt_self() representationForPrimaryAccount];
  v0[25] = v1;
  if (v1)
  {
    v2 = v0[24];
    v3 = v2[7];
    v4 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
    v12 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_260FBC270;

    return v12(v0 + 18, v3, v4);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "CDP account is nil", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_260FBC270()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_260FBC89C;
  }

  else
  {
    v2 = sub_260FBC384;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FBC384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
  sub_260FA9AB4(0, &qword_27FE64010, 0x277D02880);
  if (swift_dynamicCast())
  {
    v1 = v0[25];
    v2 = v0[23];
    v0[28] = v2;
    v3 = [v1 generatedContext];
    v0[29] = v3;
    [v3 setSharingChannel_];
    v4 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
    v0[30] = v4;
    if (v4)
    {
      v5 = v4;
      v0[2] = v0;
      v0[7] = v0 + 32;
      v0[3] = sub_260FBC708;
      v6 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2610A0A60;
      v0[13] = &block_descriptor;
      v0[14] = v6;
      [v5 startCircleApplicationApprovalServer_];

      return MEMORY[0x282200938](v0 + 2);
    }

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v13 = sub_2610BC7B4();
    __swift_project_value_buffer(v13, qword_27FE65900);
    v8 = sub_2610BC794();
    v14 = sub_2610BCD64();
    v15 = os_log_type_enabled(v8, v14);
    v11 = v0[25];
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_260F97000, v8, v14, "Unable to instantiate CDPStateController", v16, 2u);
      MEMORY[0x2666F8720](v16, -1, -1);
    }
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[25];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "Failed to cast generic message session as CUMessageSession", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_260FBC708()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_260FBC904;
  }

  else
  {
    v2 = sub_260FBC818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FBC818()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);

  v4 = *(v0 + 256);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_260FBC89C()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_260FBC904()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];

  return v5(0);
}

id sub_260FBC9B4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger PASAppleIDExchangeMessage.proxiedAKDevice message", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = (*(v5 + 72))();
  if (v6)
  {
    v7 = v6;
    result = [v6 serializedData];
    if (result)
    {
      v9 = result;
      v10 = sub_2610BC534();
      v12 = v11;

      v13 = *(v0 + 8);

      return v13(v10, v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_260FBE508();
    swift_allocError();
    *v14 = xmmword_2610BF420;
    *(v14 + 16) = 0;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerDelegate.handleReset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBCD00;

  return v7(a1, a2);
}

uint64_t sub_260FBCD00(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerDelegate.handleCancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF874;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerDelegate.handleEndFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF874;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerProtocol.registerForRequests()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerProtocol.fetchProxiedAKDevice()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBD298;

  return v7(a1, a2);
}

uint64_t sub_260FBD298(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerProtocol.sendAuthResults(_:familyMember:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF864;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerProtocol.sendReset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerProtocol.sendCancelFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASSourceAppleIDExchangerProtocol.sendEndFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBD298;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangerDelegate.handleReset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF874;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangerDelegate.handleCancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF874;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangerDelegate.handleEndFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF874;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangeProtocol.registerForRequests()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangeProtocol.handleProxiedAKDevice@Sendable (options:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBDE14;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_260FBDE14(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangeProtocol.sendReset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangeProtocol.sendCancelFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASTargetAppleIDExchangeProtocol.sendEndFlow()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t getEnumTagSinglePayload for PASDataExchangeRequestKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PASDataExchangeRequestKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260FBE40C()
{
  result = qword_27FE63FA8;
  if (!qword_27FE63FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63FA8);
  }

  return result;
}

unint64_t sub_260FBE460()
{
  result = qword_27FE63FB0;
  if (!qword_27FE63FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63FB0);
  }

  return result;
}

unint64_t sub_260FBE4B4()
{
  result = qword_27FE63FC0;
  if (!qword_27FE63FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63FC0);
  }

  return result;
}

unint64_t sub_260FBE508()
{
  result = qword_27FE63FC8;
  if (!qword_27FE63FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63FC8);
  }

  return result;
}

unint64_t sub_260FBE55C()
{
  result = qword_27FE63FD0;
  if (!qword_27FE63FD0)
  {
    type metadata accessor for PASDeviceContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63FD0);
  }

  return result;
}

unint64_t sub_260FBE5B4()
{
  result = qword_27FE63FE0;
  if (!qword_27FE63FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63FE0);
  }

  return result;
}

uint64_t sub_260FBE608(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[8];
  v9 = v1[7];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_260FAFEF4(a1, v11, v10, v9, v3, v4, v5, v6);
}

uint64_t sub_260FBE780(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260FBF860;

  return sub_260FB0EC4(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t sub_260FBE85C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FBE8CC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260FBF860;

  return sub_260FB0234(a1, v3, v4, v5, v6, v7, v8, v9);
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

uint64_t sub_260FBEA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = *(sub_2610BCC24() - 8);
  return sub_260FB08C0(a1, a2, a3, *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), v3 + ((*(v9 + 80) + 96) & ~*(v9 + 80)), v8, v7);
}

uint64_t sub_260FBEB7C(uint64_t a1)
{
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_260FAE544(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_260FBEC9C(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_260FAE9F8(a1, v4, v5, v6, v7);
}

unint64_t sub_260FBED78(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_260FBED94(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_260FBEDD0()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger handleReset", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = *(v0[5] + 144);
    ObjectType = swift_getObjectType();
    v14 = (*(v6 + 8) + **(v6 + 8));
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_260FBBC34;

    return v14(ObjectType, v6);
  }

  else
  {
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASTargetAppleIDExchanger handleReset delegate is nil", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_260FBF0A4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger handleCancel", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = *(v0[5] + 144);
    ObjectType = swift_getObjectType();
    v14 = (*(v6 + 16) + **(v6 + 16));
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_260FBBC34;

    return v14(ObjectType, v6);
  }

  else
  {
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASTargetAppleIDExchanger handleCancel delegate is nil", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_260FBF378()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASTargetAppleIDExchanger handleEndFlow", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = *(v0[5] + 144);
    ObjectType = swift_getObjectType();
    v14 = (*(v6 + 24) + **(v6 + 24));
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_260FBBC34;

    return v14(ObjectType, v6);
  }

  else
  {
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASTargetAppleIDExchanger handleEndFlow delegate is nil", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_260FBF678(uint64_t a1, unsigned int a2)
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
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260FBF6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_260FBF71C(void *a1)
{
  a1[1] = sub_260FBF754();
  a1[2] = sub_260FBF7A8();
  result = sub_260FBF7FC();
  a1[3] = result;
  return result;
}

unint64_t sub_260FBF754()
{
  result = qword_27FE64020;
  if (!qword_27FE64020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64020);
  }

  return result;
}

unint64_t sub_260FBF7A8()
{
  result = qword_27FE64028;
  if (!qword_27FE64028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64028);
  }

  return result;
}

unint64_t sub_260FBF7FC()
{
  result = qword_27FE64030;
  if (!qword_27FE64030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64030);
  }

  return result;
}

void *PASAccountContext.flowStepAllSetContext.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PASAccountContext.FamilyMember.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PASAccountContext.FamilyMember.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t static PASAccountContext.defaultContextFor(account:targetHasProtoAccount:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_2610BC634();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v8 - 8, v9);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = sub_2610BC794();
  v12 = sub_2610BCD54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a2 & 1;
    _os_log_impl(&dword_260F97000, v11, v12, "PASAccountProtocol makeDefaultContext given target has proto account: %{BOOL}d", v13, 8u);
    MEMORY[0x2666F8720](v13, -1, -1);
  }

  if (!*(a1 + 24))
  {
    goto LABEL_9;
  }

  sub_260FC0138(a1, v66);
  if (v67)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASFamilyMember();
    if (swift_dynamicCast())
    {

LABEL_9:
      v57 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_260FA9980(v66, &unk_27FE656B0, &unk_2610BFCE0);
  }

  v57 = 0;
LABEL_12:
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(v66);
  v14 = v67;
  v15 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  LOBYTE(v62) = 4;
  v16 = 0;
  if ((*(v15 + 8))(&v62, v14, v15) & 1) != 0 && (a2)
  {
    v17 = sub_2610BC794();
    v18 = sub_2610BCD54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260F97000, v17, v18, "PASAccountProtocol makeDefaultContext for feature .childSetup", v19, 2u);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v20 = &property descriptor for static PASExtensionDevicePair.supportsSecureCoding;
    if (v57)
    {
      sub_260FC0138(a1, &v62);
      v21 = v64;
      if (v64)
      {
        v22 = v65;
        __swift_project_boxed_opaque_existential_1(&v62, v64);
        v23 = (*(v22 + 32))(v21, v22);
        v21 = v24;
        __swift_destroy_boxed_opaque_existential_0Tm(&v62);
      }

      else
      {
        sub_260FA9980(&v62, &unk_27FE656B0, &unk_2610BFCE0);
        v23 = 0;
      }

      v35.value._countAndFlagsBits = v23;
      v35.value._object = v21;
      v36 = String.localized(withName:)(v35);
      countAndFlagsBits = v36._countAndFlagsBits;
      object = v36._object;
    }

    else
    {
      sub_260F9D764();
      v26 = v25;
      ObjectType = swift_getObjectType();
      (*(v26 + 8))(&v62, ObjectType, v26);
      v28 = v64;
      if (v64)
      {
        v29 = v65;
        __swift_project_boxed_opaque_existential_1(&v62, v64);
        (*(v29 + 8))(v58, v28, v29);
        v30 = v59;
        v31 = v60;
        __swift_project_boxed_opaque_existential_1(v58, v59);
        v32 = (*(v31 + 8))(v30, v31);
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        __swift_destroy_boxed_opaque_existential_0Tm(&v62);
      }

      else
      {
        sub_260FA9980(&v62, &qword_27FE63858, &unk_2610BE900);
        v34 = 0xE700000000000000;
        v32 = 0x4E574F4E4B4E55;
      }

      v62 = 0;
      v63 = 0xE000000000000000;
      sub_2610BCF84();

      v62 = 0xD000000000000020;
      v63 = 0x80000002610D25E0;
      MEMORY[0x2666F7380](v32, v34);

      sub_2610BC9C4();
      type metadata accessor for PASSourceFlowController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = &property descriptor for static PASExtensionDevicePair.supportsSecureCoding;
      v40 = [objc_opt_self() bundleForClass_];
      sub_2610BC624();
      countAndFlagsBits = sub_2610BCA24();
      object = v41;
      swift_unknownObjectRelease();
    }

    sub_2610BC9C4();
    type metadata accessor for PASSourceFlowController();
    v42 = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() v20[239]];
    sub_2610BC624();
    v44 = sub_2610BCA24();
    v46 = v45;
    v47 = type metadata accessor for PASFlowStepAllSetContext();
    v48 = objc_allocWithZone(v47);
    v49 = &v48[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title];
    *v49 = v44;
    v49[1] = v46;
    v50 = &v48[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle];
    *v50 = countAndFlagsBits;
    v50[1] = object;
    v51 = &v48[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage];
    *v51 = 0;
    *(v51 + 1) = 0;
    v52 = &v48[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
    *v52 = 1;
    v52[8] = 0;
    v61.receiver = v48;
    v61.super_class = v47;
    v16 = objc_msgSendSuper2(&v61, sel_init);
  }

  if (v57)
  {
    v53 = type metadata accessor for PASAccountContext.FamilyMember();
    v54 = &protocol witness table for PASAccountContext.FamilyMember;
  }

  else
  {
    v53 = type metadata accessor for PASAccountContext.ExistingAccount();
    v54 = &protocol witness table for PASAccountContext.ExistingAccount;
  }

  v55 = swift_allocObject();
  *(v55 + 16) = v16;
  a3[3] = v53;
  a3[4] = v54;
  *a3 = v55;
  return __swift_destroy_boxed_opaque_existential_0Tm(v66);
}

void *sub_260FC004C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_260FC00C0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_260FC0138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FC052C()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FC05A0(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FC05F4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_260FC0670(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000012, 0x80000002610D18A0);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_260FC076C(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000012, 0x80000002610D18A0);
  return v2;
}

uint64_t sub_260FC07D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__accountStore);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  swift_endAccess();
}

uint64_t sub_260FC090C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9D764();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_260FC09E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__messageSessionProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_260FC0B20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t sub_260FC0C5C(uint64_t a1)
{
  v2 = sub_260FC39C4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FC0C98(uint64_t a1)
{
  v2 = sub_260FC39C4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_260FC0CD4()
{
  sub_260FC090C();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "signInForSelf");
    v6[7] = -4864;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t PASFlowStepSendPersonalAccount.prepareForPresentation()()
{
  v1[30] = v0;
  sub_2610BCC74();
  v1[31] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[32] = v3;
  v1[33] = v2;

  return MEMORY[0x2822009F8](sub_260FC0E60, v3, v2);
}

uint64_t sub_260FC0E60()
{

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_260FC0F00;
  v2 = *(v0 + 240);

  return sub_260FC1DC0(v2, v2);
}

uint64_t sub_260FC0F00(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 65) = a1;
  *(v4 + 280) = v1;

  v5 = *(v3 + 264);
  v6 = *(v3 + 256);
  if (v1)
  {
    v7 = sub_260FC1760;
  }

  else
  {
    v7 = sub_260FC1048;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_260FC1048()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepSendPersonalAccount setting target account", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 65);
  v6 = *(v0 + 240);

  sub_260FC0B20(v0 + 72);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v8);
  v9 = *(v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_selectedAccount);
  v39 = type metadata accessor for PASAccountWithImage();
  *(v0 + 136) = v39;
  v37 = sub_260FC34FC(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
  *(v0 + 144) = v37;
  *(v0 + 112) = v9;
  v10 = type metadata accessor for PASAccountContext.ExistingAccount();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v0 + 176) = v10;
  *(v0 + 184) = &protocol witness table for PASAccountContext.ExistingAccount;
  *(v0 + 152) = v11;
  v12 = *(v7 + 40);

  v12(v0 + 112, v0 + 152, v8, v7);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));
  sub_260FA9980(v0 + 112, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  if (v5 == 1)
  {

    v13 = sub_2610BC794();
    v14 = sub_2610BCD44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "shouldSignInForSelf after sending .selectedOwnAccount message", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    v16 = *(v0 + 240);

    v17 = v16 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = *(v17 + 8);
    type metadata accessor for PASFlowStepSignInResult(0);
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
    v22 = swift_allocObject();
    *(v20 + v21) = v22;
    *(v22 + 16) = 0;
    v23 = (v20 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
    *v23 = 0;
    v23[1] = 0;
    v24 = sub_26104DC44(Strong, v19);
    swift_unknownObjectRelease();
    *(v16 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_nextFlowStep) = v24;

    sub_2610439BC();
    goto LABEL_16;
  }

  v25 = sub_2610BC794();
  v26 = sub_2610BCD44();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_260F97000, v25, v26, "After sending .selectedOwnAccount message, we were told to NOT sign in for self", v27, 2u);
    MEMORY[0x2666F8720](v27, -1, -1);
  }

  v28 = *(v0 + 240);

  v29 = v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 288) = v30;
  if (!v30)
  {

LABEL_16:
    v36 = *(v0 + 8);

    return v36();
  }

  v31 = *(v29 + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = v9;
  *(v0 + 40) = v39;
  *(v0 + 48) = v37;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v33 = *(v31 + 16);

  v38 = (v33 + *v33);
  v34 = swift_task_alloc();
  *(v0 + 296) = v34;
  *v34 = v0;
  v34[1] = sub_260FC15A4;

  return v38(v0 + 16, ObjectType, v31);
}

uint64_t sub_260FC15A4()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_260FC16FC, v3, v2);
}

uint64_t sub_260FC16FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC1760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC17C4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_260FC17E8, 0, 0);
}

uint64_t sub_260FC17E8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[10] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "Target device is indicated as supporting .signInForSelf", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[8];

  sub_260FC07D0((v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = *(v5 + 16);
  v0[11] = v8;
  v11 = (*(v7 + 64) + **(v7 + 64));
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_260FC19E4;

  return v11(v8, v6, v7);
}

uint64_t sub_260FC19E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_260FC1D5C;
  }

  else
  {
    v4 = sub_260FC1AF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260FC1AF8()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[7];
    v3[3] = &type metadata for PASDevice;
    v3[4] = &protocol witness table for PASDevice;
    v3[5] = sub_260FBE5B4();
    v3[6] = sub_260FC37F0();
    v4 = swift_allocObject();
    *v3 = v4;
    v5 = qword_27FE637F8;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = v0[13];
    v8 = v0[7];
    sub_260FA6AE0(qword_27FE65498, v4 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v8 + 56) = v7;
    *(v8 + 64) = v9;
    v10 = v0[1];
  }

  else
  {

    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[11];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 141558274;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&dword_260F97000, v11, v12, "Unable to find IdMS account associated with Apple Account: %{mask.hash}@", v14, 0x16u);
      sub_260FA9980(v15, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    sub_260FC379C();
    swift_allocError();
    swift_willThrow();
    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_260FC1D5C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC1DC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x2822009F8](sub_260FC1DE0, 0, 0);
}

uint64_t sub_260FC1DE0()
{
  *(v0 + 192) = sub_2610BCC74();
  *(v0 + 200) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FC1E78, v2, v1);
}

uint64_t sub_260FC1E78()
{

  *(v0 + 313) = sub_260FC0CD4() & 1;

  return MEMORY[0x2822009F8](sub_260FC1EF0, 0, 0);
}

uint64_t sub_260FC1EF0()
{
  if (*(v0 + 313) != 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "Sending .selectedOwnAccount message to legacy target device", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    *(v0 + 272) = sub_260FA8D08(MEMORY[0x277D84F90]);
    sub_260FC09E4(v0 + 88);
    v11 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
    v14 = *(v11 + 16) + **(v11 + 16);
    v12 = swift_task_alloc();
    *(v0 + 280) = v12;
    *v12 = v0;
    v12[1] = sub_260FC2840;

    __asm { BRAA            X3, X16 }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "Sending .selectedOwnAccount message with IdMS account containing credential (for magic auth)", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  *(v0 + 208) = sub_2610BCC64();
  v6 = sub_2610BCBF4();
  *(v0 + 216) = v6;
  *(v0 + 224) = v5;

  return MEMORY[0x2822009F8](sub_260FC220C, v6, v5);
}

uint64_t sub_260FC220C()
{
  v1 = *(*(v0 + 184) + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_selectedAccount);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_260FC22B8;

  return sub_260FC17C4(v0 + 16, v1);
}

uint64_t sub_260FC22B8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_260FC25C8;
  }

  else
  {
    v5 = sub_260FC23F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_260FC23F4()
{

  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_260FC2490;

  return sub_261092E5C(1);
}

uint64_t sub_260FC2490(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    sub_260FC3748(v4 + 16);
    v5 = sub_260FC27D8;
  }

  else
  {
    *(v4 + 264) = a1;
    sub_260FC3748(v4 + 16);
    v5 = sub_260FC2698;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260FC25C8()
{

  return MEMORY[0x2822009F8](sub_260FC2630, 0, 0);
}

uint64_t sub_260FC2630()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_260FC2698()
{
  v0[34] = v0[33];
  sub_260FC09E4((v0 + 11));
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_260FC2840;

  return v5(v0 + 16, v1, v2);
}

uint64_t sub_260FC27D8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_260FC2840()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_260FC2B68;
  }

  else
  {
    v2 = sub_260FC295C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FC295C()
{
  v1 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_260FC2A38;
  v3 = v0[34];
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 39), 4, 0, 0, 1, v3, v1, v4);
}

uint64_t sub_260FC2A38()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_260FC2EA8;
  }

  else
  {
    v2 = sub_260FC2D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FC2B68()
{
  v15 = v0;
  v1 = v0[36];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[21] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "Failed to send .selectedOwnAccount message: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_260FC2D58()
{
  v1 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_260F97000, v3, v4, "Sent .selectedOwnAccount message with response: %{BOOL,public}d", v5, 8u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = *(v0 + 313);

  v7 = *(v0 + 8);

  return v7(v6 & v1 & 1);
}

uint64_t sub_260FC2EA8()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[38];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[21] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "Failed to send .selectedOwnAccount message: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

unint64_t PASFlowStepSendPersonalAccount.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_nextFlowStep);
  if (v1)
  {
    sub_260FC34FC(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult, &protocol conformance descriptor for PASSourceFlowStepBase);
  }

  else
  {
    v1 = 0x80000002610D2780;
    sub_260FC3450();
    swift_allocError();
    *v2 = 0xD000000000000010;
    *(v2 + 8) = 0x80000002610D2780;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_260FC31A0()
{
}

uint64_t PASFlowStepSendPersonalAccount.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepSendPersonalAccount.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_260FC3380()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_nextFlowStep);
  if (v1)
  {
    sub_260FC34FC(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult, &protocol conformance descriptor for PASSourceFlowStepBase);
  }

  else
  {
    v1 = 0x80000002610D2780;
    sub_260FC3450();
    swift_allocError();
    *v2 = 0xD000000000000010;
    *(v2 + 8) = 0x80000002610D2780;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_260FC3450()
{
  result = qword_27FE64200;
  if (!qword_27FE64200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64200);
  }

  return result;
}

uint64_t sub_260FC34A4(uint64_t a1)
{
  result = sub_260FC34FC(&qword_27FE64068, type metadata accessor for PASFlowStepSendPersonalAccount, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FC34FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PASFlowStepSendPersonalAccount(uint64_t a1)
{
  result = qword_27FE64070;
  if (!qword_27FE64070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260FC3608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v3 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v3 + v11) = v12;
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v3 + v13) = v14;
  *(v14 + 48) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_nextFlowStep) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendPersonalAccount_selectedAccount) = a1;

  return sub_26104DC44(a2, a3);
}

unint64_t sub_260FC379C()
{
  result = qword_27FE64080;
  if (!qword_27FE64080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64080);
  }

  return result;
}

unint64_t sub_260FC37F0()
{
  result = qword_27FE64088;
  if (!qword_27FE64088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64088);
  }

  return result;
}

uint64_t sub_260FC3844(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for PASFlowStepSendPersonalAccountError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PASFlowStepSendPersonalAccountError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_260FC398C(void *a1)
{
  a1[1] = sub_260FC39C4();
  a1[2] = sub_260FC3A18();
  result = sub_260FC3A6C();
  a1[3] = result;
  return result;
}

unint64_t sub_260FC39C4()
{
  result = qword_27FE64090;
  if (!qword_27FE64090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64090);
  }

  return result;
}

unint64_t sub_260FC3A18()
{
  result = qword_27FE64098;
  if (!qword_27FE64098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64098);
  }

  return result;
}

unint64_t sub_260FC3A6C()
{
  result = qword_27FE640A0;
  if (!qword_27FE640A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640A0);
  }

  return result;
}

unint64_t sub_260FC3AC4()
{
  result = qword_27FE640A8;
  if (!qword_27FE640A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640A8);
  }

  return result;
}

uint64_t Error.codeString.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v14 = *(v5 + 16);
  v14(&v27 - v15, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE640B0, &qword_2610BFFA8);
  if (swift_dynamicCast())
  {
    sub_260F98E14(&v27, v30);
    v16 = v31;
    v17 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v18 = (*(v17 + 32))(v16, v17);
LABEL_5:
    *&v27 = v18;
    v19 = sub_2610BD304();
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    return v19;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_260FA9980(&v27, &qword_27FE640B8, &qword_2610BFFB0);
  v14(v12, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE640C0, &qword_2610BFFB8);
  if (swift_dynamicCast())
  {
    sub_260F98E14(&v27, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v18 = sub_2610BC3F4();
    goto LABEL_5;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_260FA9980(&v27, &qword_27FE640C8, &qword_2610BFFC0);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  v14(v8, v3, a1);
  v20 = sub_2610BD334();
  if (v20)
  {
    v21 = v20;
    (*(v5 + 8))(v8, a1);
  }

  else
  {
    v21 = swift_allocError();
    (*(v5 + 32))(v22, v8, a1);
  }

  v23 = sub_2610BC4E4();

  v24 = [v23 code];
  *&v27 = v24;
  v25 = sub_2610BD304();
  MEMORY[0x2666F7380](v25);

  return v30[0];
}

Swift::String __swiftcall String.localized(withName:)(Swift::String_optional withName)
{
  object = withName.value._object;
  countAndFlagsBits = withName.value._countAndFlagsBits;
  v3 = sub_2610BC634();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v5 - 8, v6);

  if (object)
  {

    sub_2610BC9C4();
    type metadata accessor for PASSourceFlowController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_2610BC624();
    sub_2610BCA24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE640D0, &qword_2610C8610);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2610BF400;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_260FC4240();
    *(v9 + 32) = countAndFlagsBits;
    *(v9 + 40) = object;
  }

  else
  {
    MEMORY[0x2666F7380](0x454D414E4F4E5FLL, 0xE700000000000000);
    sub_2610BC9C4();
    type metadata accessor for PASSourceFlowController();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_2610BC624();
    sub_2610BCA24();
  }

  v12 = sub_2610BCA14();
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BC634();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v4 - 8, v5);

  sub_2610BC9C4();
  type metadata accessor for PASSourceFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_2610BC624();
  return sub_2610BCA24();
}

unint64_t sub_260FC4240()
{
  result = qword_27FE640D8;
  if (!qword_27FE640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640D8);
  }

  return result;
}

uint64_t String.localized(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2610BC634();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v5 - 8, v6);

  sub_2610BC9C4();
  type metadata accessor for PASSourceFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_2610BC624();
  sub_2610BCA24();

  v9 = sub_2610BCA14();

  return v9;
}

uint64_t PASAccountProviderError.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2610BD154();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_260FC4488()
{
  result = qword_27FE640E0;
  if (!qword_27FE640E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640E0);
  }

  return result;
}

uint64_t sub_260FC44DC()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FC4550(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_260FC45A4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_260FC4618(void *a1)
{
  a1[1] = sub_260FC4650();
  a1[2] = sub_260FC46A4();
  result = sub_260FC46F8();
  a1[3] = result;
  return result;
}

unint64_t sub_260FC4650()
{
  result = qword_27FE640E8;
  if (!qword_27FE640E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640E8);
  }

  return result;
}

unint64_t sub_260FC46A4()
{
  result = qword_27FE640F0;
  if (!qword_27FE640F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640F0);
  }

  return result;
}

unint64_t sub_260FC46F8()
{
  result = qword_27FE640F8;
  if (!qword_27FE640F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE640F8);
  }

  return result;
}

unint64_t sub_260FC474C()
{
  result = qword_27FE64100;
  if (!qword_27FE64100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64100);
  }

  return result;
}

unint64_t sub_260FC47A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000013, 0x80000002610D18C0);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_260FC48A4(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0xD000000000000013, 0x80000002610D18C0);
  return v2;
}

uint64_t sub_260FC4908(uint64_t a1)
{
  v2 = sub_260FC4650();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FC4944(uint64_t a1)
{
  v2 = sub_260FC4650();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_260FC49F4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v0 = sub_2610BC7B4();
  __swift_project_value_buffer(v0, qword_27FE65900);

  oslog = sub_2610BC794();
  v1 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 141558274;
    *(v2 + 4) = 1752392040;
    *(v2 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
    v4 = sub_2610BCE54();
    v6 = v5;
    sub_260FA9980(v9, &unk_27FE656B0, &unk_2610BFCE0);
    v7 = sub_260FA5970(v4, v6, &v10);

    *(v2 + 14) = v7;
    _os_log_impl(&dword_260F97000, oslog, v1, "PASAccountProvider targetAccount set %{mask.hash}s", v2, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x2666F8720](v3, -1, -1);
    MEMORY[0x2666F8720](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_260FC4C28(uint64_t a1, uint64_t *a2)
{
  sub_260FA9918(a1, v4, &unk_27FE656B0, &unk_2610BFCE0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v4, &v3, &unk_27FE656B0, &unk_2610BFCE0);

  sub_2610BC854();
  sub_260FC49F4();
  return sub_260FA9980(v4, &unk_27FE656B0, &unk_2610BFCE0);
}

void sub_260FC4CE8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v0 = sub_2610BC7B4();
  __swift_project_value_buffer(v0, qword_27FE65900);

  oslog = sub_2610BC794();
  v1 = sub_2610BCD54();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE641F0, qword_2610C0210);
    v4 = sub_2610BCE54();
    v6 = v5;
    sub_260FA9980(v9, &unk_27FE641F0, qword_2610C0210);
    v7 = sub_260FA5970(v4, v6, &v10);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_260F97000, oslog, v1, "PASAccountProvider targetAccountContext set %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x2666F8720](v3, -1, -1);
    MEMORY[0x2666F8720](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_260FC4F08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_260FC4F78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_260FC4FF0(uint64_t a1, uint64_t *a2)
{
  sub_260FA9918(a1, v4, &unk_27FE641F0, qword_2610C0210);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v4, &v3, &unk_27FE641F0, qword_2610C0210);

  sub_2610BC854();
  sub_260FC4CE8();
  return sub_260FA9980(v4, &unk_27FE641F0, qword_2610C0210);
}

uint64_t sub_260FC50B0(uint64_t a1, uint64_t a2)
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  sub_260FA9918(a1, v23, &unk_27FE656B0, &unk_2610BFCE0);
  sub_260FA99E0(a2, v22);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = a2;
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    sub_260FA9918(v23, v20, &unk_27FE656B0, &unk_2610BFCE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
    v9 = sub_2610BCA34();
    v11 = v10;
    sub_260FA9980(v23, &unk_27FE656B0, &unk_2610BFCE0);
    v12 = sub_260FA5970(v9, v11, &v21);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    sub_260FA99E0(v22, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64138, &qword_2610C02F0);
    v13 = sub_2610BCA34();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v16 = sub_260FA5970(v13, v15, &v21);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_260F97000, v5, v6, "PASAccountProvider setTargetAccount %s with context: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    v17 = v8;
    a2 = v19;
    MEMORY[0x2666F8720](v17, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    sub_260FA9980(v23, &unk_27FE656B0, &unk_2610BFCE0);
  }

  sub_260FA9918(a1, v23, &unk_27FE656B0, &unk_2610BFCE0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v23, v22, &unk_27FE656B0, &unk_2610BFCE0);

  sub_2610BC854();
  sub_260FC49F4();
  sub_260FA9980(v23, &unk_27FE656B0, &unk_2610BFCE0);
  sub_260FA99E0(a2, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FA9918(v23, v22, &unk_27FE641F0, qword_2610C0210);

  sub_2610BC854();
  sub_260FC4CE8();
  return sub_260FA9980(v23, &unk_27FE641F0, qword_2610C0210);
}

uint64_t sub_260FC5438()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup18PASAccountProvider__targetAccount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE64148, qword_2610C0300);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup18PASAccountProvider__targetAccountContext;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64140, &qword_2610C02F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for PASAccountProvider(uint64_t a1)
{
  result = qword_27FE64118;
  if (!qword_27FE64118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260FC5580(uint64_t a1)
{
  sub_260FC5678(319, &qword_27FE64128, &unk_27FE656B0, &unk_2610BFCE0);
  if (v1 <= 0x3F)
  {
    sub_260FC5678(319, &qword_27FE64130, &unk_27FE641F0, qword_2610C0210);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_260FC5678(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2610BC864();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_260FC56D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64140, &qword_2610C02F8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE64148, qword_2610C0300);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15[-v9 - 8];
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup18PASAccountProvider__targetAccount;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_260FA9918(&v16, v15, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
  sub_2610BC804();
  sub_260FA9980(&v16, &unk_27FE656B0, &unk_2610BFCE0);
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup18PASAccountProvider__targetAccountContext;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_260FA9918(&v16, v15, &unk_27FE641F0, qword_2610C0210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE641F0, qword_2610C0210);
  sub_2610BC804();
  sub_260FA9980(&v16, &unk_27FE641F0, qword_2610C0210);
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t sub_260FC5948()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();
}

uint64_t sub_260FC59F8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_2610BC814();
  return swift_endAccess();
}

uint64_t sub_260FC5A98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2610BC7F4();
  *a1 = result;
  return result;
}

uint64_t sub_260FC5AEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_260FC5BCC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_260FC5BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_260FC5C70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_260FC5CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_260FC5D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_260FC5DBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_260F996F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_260FC5DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_260FC5BC4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_260FC5E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260FC5AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260FC5EA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_260F996F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_260FC5ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_260FC5F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Result<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = *(*(a2 + 24) - 8);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v33 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 32);
  v34 = v17;
  v39 = v18;
  _s10CodingKeysOMa(255, v17, v18, v16);
  swift_getWitnessTable();
  v19 = sub_2610BD2D4();
  v41 = *(v19 - 8);
  v42 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v32 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5F4();
  (*(v12 + 16))(v15, v40, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v38;
    v23 = v39;
    v25 = v35;
    (*(v38 + 32))(v35, v15, v39);
    v44 = 1;
    v26 = v42;
    sub_2610BD2A4();
    (*(v24 + 8))(v25, v23);
    return (*(v41 + 8))(v22, v26);
  }

  else
  {
    v29 = v32;
    v28 = v33;
    v30 = v34;
    (*(v33 + 32))(v32, v15, v34);
    v43 = 0;
    v31 = v42;
    sub_2610BD2A4();
    (*(v28 + 8))(v29, v30);
    return (*(v41 + 8))(v22, v31);
  }
}

uint64_t Result<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a5;
  v58 = a4;
  v51 = a7;
  v46 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2610BCE64();
  v55 = *(v12 - 8);
  v56 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v60 = &v44 - v15;
  v54 = *(a2 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10CodingKeysOMa(255, a2, a3, a6);
  swift_getWitnessTable();
  v18 = sub_2610BD224();
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v44 - v20;
  v59 = a2;
  v48 = a3;
  v22 = sub_2610BD594();
  v50 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v44 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v61;
  sub_2610BD5D4();
  if (v26)
  {
    v33 = a1;
  }

  else
  {
    v44 = v25;
    v45 = v22;
    v27 = v54;
    v28 = v55;
    v30 = v56;
    v29 = v57;
    v61 = a1;
    v63 = 0;
    v31 = v52;
    v32 = v53;
    sub_2610BD194();
    v35 = (*(v27 + 48))(v60, 1, v59);
    if (v35 == 1)
    {
      (*(v28 + 8))(v60, v30);
      v62 = 1;
      v36 = v48;
      sub_2610BD1E4();
      v37 = v51;
      (*(v31 + 8))(v21, v32);
      v38 = v29;
      v39 = v44;
      (*(v46 + 32))(v44, v38, v36);
    }

    else
    {
      (*(v31 + 8))(v21, v32);
      v40 = *(v27 + 32);
      v41 = v47;
      v42 = v59;
      v40(v47, v60, v59);
      v39 = v44;
      v40(v44, v41, v42);
      v37 = v51;
    }

    v43 = v45;
    swift_storeEnumTagMultiPayload();
    (*(v50 + 32))(v37, v39, v43);
    v33 = v61;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

uint64_t getEnumTagSinglePayload for PASAuthenticatorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PASAuthenticatorError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t PASFlowStepRepairFamilyError.description.getter()
{
  v1 = 0xD00000000000002FLL;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD000000000000031, 0x80000002610D28C0);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE641D0, &qword_2610C0510);
    v4 = sub_2610BCA34();
    MEMORY[0x2666F7380](v4);

    return 0;
  }

  return v1;
}

uint64_t sub_260FC6AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountProvider);
  swift_beginAccess();
  sub_260FC8F7C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC8FEC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_260FC6C14()
{
  if (*v0 == 1)
  {
    return 1700;
  }

  else
  {
    return 1701;
  }
}

uint64_t sub_260FC6C3C(uint64_t a1)
{
  v2 = sub_260FC8B94();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FC6C78(uint64_t a1)
{
  v2 = sub_260FC8B94();

  return MEMORY[0x28211F4A8](a1, v2);
}

id PASFlowStepRepairFamily.familyMemberDSID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember);
  if (!v1 || (result = [*(v1 + 16) dsid]) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults);
    v4 = sub_2610BCA04();
    v6 = sub_260FC8360(v4, v5, v3);

    result = v6;
    if (!v6)
    {
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v7 = sub_2610BC7B4();
      __swift_project_value_buffer(v7, qword_27FE65900);
      v8 = sub_2610BC794();
      v9 = sub_2610BCD64();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_260F97000, v8, v9, "PASFlowStepRepairFamily familyMemberDSID is nil", v10, 2u);
        MEMORY[0x2666F8720](v10, -1, -1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t PASFlowStepRepairFamily.familyMemberAltDSID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember);
  if (v1)
  {
    v2 = *(v1 + 16);

    v3 = [v2 altDSID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_2610BCA04();

      return v5;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults);
  v7 = sub_2610BCA04();
  v5 = sub_260FC7FF8(v7, v8, v6);
  v10 = v9;

  if (!v10)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);
    v12 = sub_2610BC794();
    v13 = sub_2610BCD64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASFlowStepRepairFamily familyMemberAltDSID is nil", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    return 0;
  }

  return v5;
}

uint64_t PASFlowStepRepairFamily.prepareForPresentation()()
{
  v1[39] = v0;
  v1[40] = sub_2610BCC74();
  v1[41] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[42] = v2;
  *v2 = v1;
  v2[1] = sub_260FC7034;

  return sub_26104582C();
}

uint64_t sub_260FC7034()
{
  *(*v1 + 344) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FC76D4;
  }

  else
  {
    v4 = sub_260FC718C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_260FC718C()
{

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepRepairFamily prepareForPresentation", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_260FC6AF8(v0 + 56);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
  (*(v6 + 8))(v5, v6);
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASAccountWithImage();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

      v7 = sub_2610BC794();
      v8 = sub_2610BCD84();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepRepairFamily prepareForPresentation has no target account (setup for self) so we'll skip it", v9, 2u);
        MEMORY[0x2666F8720](v9, -1, -1);
      }

      v10 = *(v0 + 312);

      sub_260FC3450();
      swift_allocError();
      *v11 = 0xD00000000000001DLL;
      *(v11 + 8) = 0x80000002610D2960;
      *(v11 + 16) = &unk_2610C0540;
      *(v11 + 24) = v10;
      *(v11 + 32) = 0;
      swift_willThrow();

LABEL_24:
      v25 = *(v0 + 8);
      goto LABEL_27;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    sub_260FA9980(v0 + 16, &unk_27FE656B0, &unk_2610BFCE0);
  }

  sub_260FC6AF8(v0 + 136);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v12);
  (*(v13 + 16))(v12, v13);
  if (*(v0 + 200))
  {
    sub_260F98E14((v0 + 176), v0 + 96);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v14);
    if (((*(v15 + 24))(v14, v15) & 1) == 0)
    {
      v20 = sub_2610BC794();
      v21 = sub_2610BCD84();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_260F97000, v20, v21, "PASFlowStepRepairFamily prepareForPresentation skipping presentation per account context", v22, 2u);
        MEMORY[0x2666F8720](v22, -1, -1);
      }

      v23 = *(v0 + 312);

      sub_260FC3450();
      swift_allocError();
      *v24 = 0xD00000000000002ELL;
      *(v24 + 8) = 0x80000002610D2930;
      *(v24 + 16) = &unk_2610C0530;
      *(v24 + 24) = v23;
      *(v24 + 32) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
      goto LABEL_24;
    }

    v16 = (v0 + 96);
  }

  else
  {
    sub_260FA9980(v0 + 176, &unk_27FE641F0, qword_2610C0210);
    v16 = (v0 + 136);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  sub_260FC6AF8(v0 + 256);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v17);
  (*(v18 + 8))(v17, v18);
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
    type metadata accessor for PASFamilyMember();
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 296);
    }

    else
    {
      v19 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
    sub_260FA9980(v0 + 216, &unk_27FE656B0, &unk_2610BFCE0);
    v19 = 0;
  }

  *(*(v0 + 312) + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember) = v19;

  v25 = *(v0 + 8);
LABEL_27:

  return v25();
}

uint64_t sub_260FC76D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC7738(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FC90B8, v3, v2);
}

uint64_t sub_260FC77D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FC7868, v3, v2);
}

uint64_t sub_260FC7868()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC78EC()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + 96);
    v5 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember);
    if (v5)
    {
      v6 = type metadata accessor for PASFamilyMember();
      v7 = sub_260FC8D3C(&unk_27FE64210, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    ObjectType = swift_getObjectType();
    v11 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults);
    *(v0 + 16) = v5;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = v6;
    *(v0 + 48) = v7;
    *(v0 + 56) = v11;
    *(v0 + 64) = 0;
    v12 = *(v3 + 16);

    v14 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_260FC7B30;

    return v14(v0 + 16, ObjectType, v3);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_260FC7B30()
{
  v1 = *v0;
  v4 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t PASFlowStepRepairFamily.nextStep()()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults);
  type metadata accessor for PASFlowStepAllSet(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v5 + v6) = v7;
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *(v5 + v8) = v9;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64228, &unk_2610CCE80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v5 + v10) = v11;
  *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask) = 0;
  *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults) = v4;

  v12 = sub_26104DC44(Strong, v3);
  swift_unknownObjectRelease();
  sub_260FC8D3C(&qword_27FE64230, type metadata accessor for PASFlowStepAllSet, &protocol conformance descriptor for PASSourceFlowStepBase);
  return v12;
}

void sub_260FC7E34()
{

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_error);
}

uint64_t PASFlowStepRepairFamily.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepRepairFamily.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_260FC7FF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_260FA5FBC(a1, a2), (v7 & 1) != 0))
  {
    v21[2] = *(*(a3 + 56) + 8 * v6);
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v21[0];
    }

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v14 = sub_2610BC7B4();
    __swift_project_value_buffer(v14, qword_27FE65900);

    swift_unknownObjectRetain();
    v10 = sub_2610BC794();
    v15 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136446722;
      *(v16 + 4) = sub_260FA5970(a1, a2, v21);
      *(v16 + 12) = 2082;
      swift_getObjectType();
      v18 = sub_2610BD634();
      v20 = sub_260FA5970(v18, v19, v21);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_260FA5970(0x676E69727453, 0xE600000000000000, v21);
      _os_log_impl(&dword_260F97000, v10, v15, "PASAuthResults value at %{public}s is %{public}s. Expected %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v17, -1, -1);
      MEMORY[0x2666F8720](v16, -1, -1);

      swift_unknownObjectRelease();
      return 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);

    v10 = sub_2610BC794();
    v11 = sub_2610BCD54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_260FA5970(a1, a2, v21);
      _os_log_impl(&dword_260F97000, v10, v11, "PASAuthResults value at %{public}s is nil", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_260FC8360(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_260FA5FBC(a1, a2), (v5 & 1) != 0))
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      return v7;
    }

    v14 = qword_27FE63808;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_2610BC7B4();
    __swift_project_value_buffer(v15, qword_27FE65900);

    swift_unknownObjectRetain();
    v16 = sub_2610BC794();
    v17 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446722;
      *(v18 + 4) = sub_260FA5970(a1, a2, &v26);
      *(v18 + 12) = 2082;
      swift_getObjectType();
      v20 = sub_2610BD634();
      v22 = sub_260FA5970(v20, v21, &v26);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2082;
      sub_260FC905C();
      v23 = sub_2610BD634();
      v25 = sub_260FA5970(v23, v24, &v26);

      *(v18 + 24) = v25;
      _os_log_impl(&dword_260F97000, v16, v17, "PASAuthResults value at %{public}s is %{public}s. Expected %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v19, -1, -1);
      MEMORY[0x2666F8720](v18, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);

    v10 = sub_2610BC794();
    v11 = sub_2610BCD54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_260FA5970(a1, a2, &v26);
      _os_log_impl(&dword_260F97000, v10, v11, "PASAuthResults value at %{public}s is nil", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_260FC86BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v6 = sub_260FA5FBC(a1, a2), (v7 & 1) != 0))
  {
    v22 = *(*(a3 + 56) + 8 * v6);
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v21;
    }

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v14 = sub_2610BC7B4();
    __swift_project_value_buffer(v14, qword_27FE65900);

    swift_unknownObjectRetain();
    v10 = sub_2610BC794();
    v15 = sub_2610BCD64();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136446722;
      *(v16 + 4) = sub_260FA5970(a1, a2, &v22);
      *(v16 + 12) = 2082;
      swift_getObjectType();
      v18 = sub_2610BD634();
      v20 = sub_260FA5970(v18, v19, &v22);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_260FA5970(0xD00000000000001CLL, 0x80000002610D2A00, &v22);
      _os_log_impl(&dword_260F97000, v10, v15, "PASAuthResults value at %{public}s is %{public}s. Expected %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v17, -1, -1);
      MEMORY[0x2666F8720](v16, -1, -1);

      swift_unknownObjectRelease();
      return 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);

    v10 = sub_2610BC794();
    v11 = sub_2610BCD54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_260FA5970(a1, a2, &v22);
      _os_log_impl(&dword_260F97000, v10, v11, "PASAuthResults value at %{public}s is nil", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_260FC8A3C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FC77D0(v0);
}

uint64_t sub_260FC8ACC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return sub_260FC7738(v0);
}

unint64_t sub_260FC8B5C(void *a1)
{
  a1[1] = sub_260FC8B94();
  a1[2] = sub_260FC8BE8();
  result = sub_260FC8C3C();
  a1[3] = result;
  return result;
}

unint64_t sub_260FC8B94()
{
  result = qword_27FE64250;
  if (!qword_27FE64250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64250);
  }

  return result;
}

unint64_t sub_260FC8BE8()
{
  result = qword_27FE64258;
  if (!qword_27FE64258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64258);
  }

  return result;
}

unint64_t sub_260FC8C3C()
{
  result = qword_27FE64260;
  if (!qword_27FE64260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64260);
  }

  return result;
}

unint64_t sub_260FC8C90()
{
  result = qword_27FE64268;
  if (!qword_27FE64268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64268);
  }

  return result;
}

uint64_t sub_260FC8CE4(uint64_t a1)
{
  result = sub_260FC8D3C(&unk_27FE64270, type metadata accessor for PASFlowStepRepairFamily, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FC8D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PASFlowStepRepairFamily(uint64_t a1)
{
  result = qword_27FE64280;
  if (!qword_27FE64280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup28PASFlowStepRepairFamilyErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260FC8E00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260FC8E5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_260FC8EB8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_260FC8F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C70, &unk_2610C0780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FC8FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C70, &unk_2610C0780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_260FC905C()
{
  result = qword_27FE63F00;
  if (!qword_27FE63F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE63F00);
  }

  return result;
}

uint64_t sub_260FC90C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__messageSessionProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_260FC91FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t PASFlowStepConfirmExistingPasscode.familyMemberFirstName.getter()
{
  sub_260FC91FC(v5);
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v1 + 8))(v8, v0, v1);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = (*(v3 + 32))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    sub_260FA9980(v8, &unk_27FE656B0, &unk_2610BFCE0);
  }

  return v2;
}

uint64_t PASFlowStepConfirmExistingPasscode.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_260FC94D0;

  return sub_26104582C();
}

uint64_t sub_260FC94D0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FC97F4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_260FC9654;

    return sub_260FC9858();
  }
}

uint64_t sub_260FC9654()
{

  v1 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FC9790, v1, v0);
}

uint64_t sub_260FC9790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC97F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC9878()
{
  sub_260FC90C0((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_260FC99B0;

  return v5(v0 + 7, v1, v2);
}

uint64_t sub_260FC99B0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_260FC9BB8;
  }

  else
  {
    v2 = sub_260FC9AC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FC9AC4()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(3, 0, &unk_2610C0860, v3, v1, MEMORY[0x277D839B0], v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_260FC9BB8()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[12] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepConfirmExistingPasscode failed to registerForRequests\n%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  sub_2610BCC74();
  v0[16] = sub_2610BCC64();
  v14 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FC9DB4, v14, v13);
}

uint64_t sub_260FC9DB4()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_260FC9E24, 0, 0);
}

uint64_t sub_260FC9E24()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FC9E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a1;
  return MEMORY[0x2822009F8](sub_260FC9EA8, 0, 0);
}

uint64_t sub_260FC9EA8()
{
  v26 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepConfirmExistingPasscode got dependentSignInResults", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (!Strong)
  {
    v16 = sub_2610BC794();
    v17 = sub_2610BCD74();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASFlowStepConfirmExistingPasscode registerForRequests dependentSignInResults handler self is nil", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }

    **(v0 + 48) = 1;
    v19 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v6 = Strong;
  sub_260FB15A0(*(v0 + 56), 2u, v25);
  if (v25[0])
  {
    *(v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode_authResults) = v25[0];
  }

  else
  {

    sub_260FBE4B4();
    v22 = swift_allocError();
    *v23 = xmmword_2610C0790;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    swift_willThrow();
    v7 = v22;
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25[0] = v11;
      *v10 = 136446210;
      *(v0 + 40) = v22;
      v12 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v13 = sub_2610BCA34();
      v15 = sub_260FA5970(v13, v14, v25);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFlowStepConfirmExistingPasscode registerForRequests dependentSignInResults failed:\n%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2666F8720](v11, -1, -1);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    else
    {
    }
  }

  sub_2610BCC74();
  *(v0 + 80) = sub_2610BCC64();
  v21 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FCA280, v21, v20);
}

uint64_t sub_260FCA280()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_260FCA2EC, 0, 0);
}

uint64_t sub_260FCA2EC()
{

  **(v0 + 48) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFlowStepConfirmExistingPasscode.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode_authResults);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 8);
    type metadata accessor for PASFlowStepRepairFamily(0);
    v5 = swift_allocObject();
    v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
    v7 = swift_allocObject();
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0;
    *(v5 + v6) = v7;
    v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountStore;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v5 + v8) = v9;
    *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember) = 0;
    *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_error) = 0;
    *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults) = v1;

    v10 = sub_26104DC44(Strong, v4);
    swift_unknownObjectRelease();
    sub_260FCA878(&unk_27FE64270, type metadata accessor for PASFlowStepRepairFamily);
  }

  else
  {
    v10 = 0x80000002610D2A20;
    sub_260FC3450();
    swift_allocError();
    *v11 = 0xD000000000000035;
    *(v11 + 8) = 0x80000002610D2A20;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();
  }

  return v10;
}

uint64_t PASFlowStepConfirmExistingPasscode.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v4 + v5) = v6;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v4 + v7) = v8;
  *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode_authResults) = 0;
  v9 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PASFlowStepConfirmExistingPasscode.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v2 + v5) = v6;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v2 + v7) = v8;
  *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode_authResults) = 0;
  v9 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_260FCA6CC()
{
}

uint64_t PASFlowStepConfirmExistingPasscode.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepConfirmExistingPasscode.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_260FCA834(uint64_t a1)
{
  result = sub_260FCA878(&qword_27FE642B0, type metadata accessor for PASFlowStepConfirmExistingPasscode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FCA878(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepConfirmExistingPasscode(uint64_t a1)
{
  result = qword_27FE642B8;
  if (!qword_27FE642B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260FCA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_260FC9E84(a1, a2, a3, v3);
}

uint64_t IdMSAccount.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

__n128 IdMSAccount.id.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];

  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[1] = result;
  v1[2] = v6;
  return result;
}

void IdMSAccount.name.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  sub_260FCAB24(v2, v3, v4, v5, v6);
}

void sub_260FCAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

__n128 IdMSAccount.name.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_260FCABD0(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v5;
  *(v1 + 80) = v3;
  return result;
}

void sub_260FCABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t IdMSAccount.services.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t IdMSAccount.credential.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v9 = v1[8];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 153);
  v3 = *(v10 + 9);
  v4 = v1[7];
  v8[0] = v1[6];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_260FCACF4(v8, &v7);
}

__n128 IdMSAccount.credential.setter(uint64_t a1)
{
  v3 = v1[9];
  v7[2] = v1[8];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 153);
  v4 = v1[7];
  v7[0] = v1[6];
  v7[1] = v4;
  sub_260FCAD8C(v7);
  v5 = *(a1 + 48);
  v1[8] = *(a1 + 32);
  v1[9] = v5;
  *(v1 + 153) = *(a1 + 57);
  result = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = result;
  return result;
}

__n128 IdMSAccount.init(id:name:services:credential:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a2 + 32);
  *a5 = *a1;
  *(a5 + 8) = v5;
  v7 = *(a1 + 32);
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v7;
  v8 = *(a2 + 16);
  *(a5 + 48) = *a2;
  *(a5 + 64) = v8;
  *(a5 + 80) = v6;
  *(a5 + 88) = a3;
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 153) = *(a4 + 57);
  v11 = *(a4 + 48);
  *(a5 + 128) = *(a4 + 32);
  *(a5 + 144) = v11;
  *(a5 + 96) = result;
  *(a5 + 112) = v10;
  return result;
}

uint64_t sub_260FCAE28(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_2610BCA04();
      sub_2610BD514();
      v27 = v13;
      sub_2610BCA54();
      v14 = sub_2610BD574();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_2610BCA04();
        v20 = v19;
        if (v18 == sub_2610BCA04() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_2610BD384();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_260FCB060()
{
  v1 = 25705;
  v2 = 0x7365636976726573;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564657263;
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

uint64_t sub_260FCB0CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FD34B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FCB100(uint64_t a1)
{
  v2 = sub_260FD2B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCB13C(uint64_t a1)
{
  v2 = sub_260FD2B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE642C8, &qword_2610C0870);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - v5;
  v7 = v1[1];
  v26 = *v1;
  v8 = v1[3];
  v25 = v1[2];
  v9 = v1[5];
  v24 = v1[4];
  v10 = v1[7];
  v23 = v1[6];
  v22 = v10;
  v11 = v1[9];
  v21 = v1[8];
  v20 = v11;
  v19 = *(v1 + 80);
  v18 = v1[11];
  v12 = *(v1 + 9);
  v37 = *(v1 + 8);
  *v38 = v12;
  *&v38[9] = *(v1 + 153);
  v13 = *(v1 + 7);
  v35 = *(v1 + 6);
  v36 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FD2B24();

  sub_2610BD5F4();
  *&v31 = v26;
  *(&v31 + 1) = v7;
  *&v32 = v25;
  *(&v32 + 1) = v8;
  *&v33 = v24;
  *(&v33 + 1) = v9;
  LOBYTE(v28[0]) = 0;
  sub_260FD2B78();
  v14 = v27;
  sub_2610BD2A4();
  if (v14)
  {

    return (*(v39 + 8))(v6, v3);
  }

  else
  {
    v16 = v18;
    v17 = v39;

    *&v31 = v23;
    *(&v31 + 1) = v22;
    *&v32 = v21;
    *(&v32 + 1) = v20;
    LOBYTE(v33) = v19;
    LOBYTE(v28[0]) = 1;
    sub_260FCAB24(v23, v22, v21, v20, v19);
    sub_260FD2BCC();
    sub_2610BD2A4();
    sub_260FCABD0(v31, *(&v31 + 1), v32, *(&v32 + 1), v33);
    *&v31 = v16;
    LOBYTE(v28[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE642E8, &qword_2610C0878);
    sub_260FD2D1C(&qword_27FE642F0, &qword_27FE642F8, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B50]);
    sub_2610BD2A4();
    v33 = v37;
    v34[0] = *v38;
    *(v34 + 9) = *&v38[9];
    v31 = v35;
    v32 = v36;
    v30 = 3;
    sub_260FCACF4(&v35, v28);
    sub_260FD2C20();
    sub_2610BD2A4();
    v28[2] = v33;
    *v29 = v34[0];
    *&v29[9] = *(v34 + 9);
    v28[1] = v32;
    v28[0] = v31;
    sub_260FCAD8C(v28);
    return (*(v17 + 8))(v6, v3);
  }
}

uint64_t IdMSAccount.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v10 = *(v1 + 160);
  v7 = *(v1 + 168);
  sub_2610BCA54();
  if (v3)
  {
    sub_2610BD534();
    sub_2610BCA54();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2610BD534();
    if (v4)
    {
LABEL_3:
      sub_2610BD534();
      sub_2610BCA54();
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      MEMORY[0x2666F7E40](1);
      sub_2610BCA54();
      goto LABEL_10;
    }
  }

  sub_2610BD534();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5 == 1)
  {
    MEMORY[0x2666F7E40](2);
    sub_2610BCA54();
    sub_2610BCA54();
  }

  else
  {
    MEMORY[0x2666F7E40](0);
  }

LABEL_10:
  sub_260FD1F4C(a1, v6);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      return MEMORY[0x2666F7E40](0);
    }

    v9 = 3;
  }

  else
  {
    if (!v7)
    {
      MEMORY[0x2666F7E40](1);
      sub_2610BCA54();
      sub_2610BCA54();
      sub_2610BCA54();
      sub_2610BCA54();
      return MEMORY[0x2666F7E70](v10);
    }

    v9 = 2;
  }

  MEMORY[0x2666F7E40](v9);

  return sub_2610BCA54();
}

uint64_t IdMSAccount.hashValue.getter()
{
  sub_2610BD514();
  IdMSAccount.hash(into:)(v1);
  return sub_2610BD574();
}

void IdMSAccount.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64308, &qword_2610C0880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  v10 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_260FD2B24();
  sub_2610BD5D4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
  }

  else
  {
    v11 = v6;
    v43 = a2;
    LOBYTE(v44) = 0;
    sub_260FD2C74();
    sub_2610BD1E4();
    v12 = v54;
    v13 = v56;
    v40 = v55;
    v41 = v57;
    v14 = v58;
    v42 = v59;
    LOBYTE(v44) = 1;
    sub_260FD2CC8();
    sub_2610BD1E4();
    v33 = v14;
    v34 = v12;
    v32 = v13;
    v35 = v55;
    v36 = v54;
    v37 = v56;
    v39 = v57;
    v38 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE642E8, &qword_2610C0878);
    LOBYTE(v44) = 2;
    sub_260FD2D1C(&qword_27FE64320, &qword_27FE64328, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B70]);
    sub_2610BD1E4();
    v15 = v54;
    v70 = 3;
    sub_260FD2DA4();
    sub_2610BD1E4();
    (*(v11 + 8))(v9, v5);
    v77 = v73;
    v78[0] = v74[0];
    *(v78 + 9) = *(v74 + 9);
    v75 = v71;
    v76 = v72;
    *(v53 + 9) = *(v74 + 9);
    v17 = v40;
    v16 = v41;
    *&v44 = v34;
    *(&v44 + 1) = v40;
    v18 = v32;
    *&v45 = v32;
    *(&v45 + 1) = v41;
    v19 = v42;
    *&v46 = v33;
    *(&v46 + 1) = v42;
    v21 = v35;
    v20 = v36;
    *&v47 = v36;
    *(&v47 + 1) = v35;
    *&v48 = v37;
    *(&v48 + 1) = v39;
    LOBYTE(v49) = v38;
    *(&v49 + 1) = v15;
    v52 = v73;
    v53[0] = v74[0];
    v50 = v71;
    v51 = v72;
    v22 = v45;
    v31 = v15;
    v23 = v43;
    *v43 = v44;
    v23[1] = v22;
    v24 = v46;
    v25 = v47;
    v26 = v49;
    v23[4] = v48;
    v23[5] = v26;
    v23[2] = v24;
    v23[3] = v25;
    v27 = v50;
    v28 = v51;
    *(v23 + 153) = *(v53 + 9);
    v29 = v53[0];
    v23[8] = v52;
    v23[9] = v29;
    v23[6] = v27;
    v23[7] = v28;
    sub_260FD2DF8(&v44, &v54);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    v54 = v34;
    v55 = v17;
    v56 = v18;
    v57 = v16;
    v58 = v33;
    v59 = v19;
    v60 = v20;
    v61 = v21;
    v62 = v37;
    v63 = v39;
    v64 = v38;
    v65 = v31;
    v68 = v77;
    *v69 = v78[0];
    *&v69[9] = *(v78 + 9);
    v66 = v75;
    v67 = v76;
    sub_260FD2E30(&v54);
  }
}

uint64_t sub_260FCBD04()
{
  sub_2610BD514();
  IdMSAccount.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_260FCBD48(uint64_t a1)
{
  sub_2610BD514();
  IdMSAccount.hash(into:)(v2);
  return sub_2610BD574();
}

unint64_t sub_260FCBD88()
{
  v1 = 1701736302;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7773736150776172;
  }

  if (*v0)
  {
    v1 = 0x6F696E61706D6F63;
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

uint64_t sub_260FCBE14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FD3614(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FCBE3C(uint64_t a1)
{
  v2 = sub_260FD2E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCBE78(uint64_t a1)
{
  v2 = sub_260FD2E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FCBEC0(uint64_t a1)
{
  v2 = sub_260FD2F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCBEFC(uint64_t a1)
{
  v2 = sub_260FD2F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FCBF44(uint64_t a1)
{
  v2 = sub_260FD3004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCBF80(uint64_t a1)
{
  v2 = sub_260FD3004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260FCBFBC(uint64_t a1)
{
  v2 = sub_260FD2F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FCBFF8(uint64_t a1)
{
  v2 = sub_260FD2F08();

  return MEMORY[0x2821FE720](a1, v2);
}