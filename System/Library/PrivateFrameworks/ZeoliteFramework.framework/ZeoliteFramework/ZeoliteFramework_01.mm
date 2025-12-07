uint64_t sub_2751DF12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_27520C278();
  sub_27520BBD8();
  v6 = sub_27520C298();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_27520C218() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AsyncMatrixSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = *(v1 + 40);

  return v4;
}

uint64_t AsyncMatrixSequence.next()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751DF320, 0, 0);
}

uint64_t sub_2751DF320()
{
  if ((sub_27520BDF8() & 1) != 0 || (v1 = v0[2], v2 = *(v1 + 32), v2 >= *(v1 + 24)))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v3 = v0[4];
  sub_27520BAF8();
  v4 = sub_27520BB28();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_4:
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v6 = sub_27520BAB8();
    __swift_project_value_buffer(v6, qword_2809B38E8);
    v7 = sub_27520BA98();
    v8 = sub_27520BEF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2751CF000, v7, v8, "Unsupported field type.", v9, 2u);
      MEMORY[0x277C6DCC0](v9, -1, -1);
    }

    v10 = v0[4];

    sub_2751E03F0(v10);
    goto LABEL_9;
  }

  v14 = v0[3];
  sub_2751E0458(v0[4], v14);
  v15 = (*(v5 + 88))(v14, v4);
  if (v15 == *MEMORY[0x277D3D198])
  {
    v16 = sub_27520BB08();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v29 = MEMORY[0x277D84F90];
        v18 = v16;
        sub_2751E09A4(0, v17, 0);
        v19 = v18;
        v11 = v29;
        v20 = *(v29 + 16);
        v21 = 32;
        do
        {
          _H8 = *(v19 + v21);
          v23 = *(v29 + 24);
          if (v20 >= v23 >> 1)
          {
            sub_2751E09A4((v23 > 1), v20 + 1, 1);
            v19 = v18;
          }

          __asm { FCVT            S0, H8 }

          *(v29 + 16) = v20 + 1;
          *(v29 + 4 * v20 + 32) = _S0;
          v21 += 2;
          ++v20;
          --v17;
        }

        while (v17);
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (v15 != *MEMORY[0x277D3D1A0])
    {
      (*(v5 + 8))(v0[3], v4);
      goto LABEL_4;
    }

    v11 = sub_27520BB08();
  }

  sub_2751E03F0(v0[4]);
  *(v1 + 32) = v2 + 1;
LABEL_10:

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_2751DF6A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2751E13E4;

  return AsyncMatrixSequence.next()();
}

uint64_t sub_2751DF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_2751DF7C4;

  return AsyncMatrixSequence.next()();
}

uint64_t sub_2751DF7C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  *(*v2 + 64) = v1;

  if (v1)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_27520BDB8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_2751DF974;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_27520BDB8();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v4 + 72) = a1;
    v10 = sub_2751DF950;
  }

  return MEMORY[0x2822009F8](v10, v6, v8);
}

uint64_t sub_2751DF974()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD508, &unk_27520D6B0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

__n128 sub_2751DFA14@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 24);
  result = *(v1 + 40);
  *(a1 + 40) = result;
  return result;
}

double AsyncTransformedMatrixSequence.init(reader:label:columnCount:quantization:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_27520BAE8();
  v13 = sub_2751DF12C(a2, a3, v12);

  if (v13)
  {

    v14;
    v15 = sub_27520BAC8();
    sub_27520BAD8();
    v17 = v16;

    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = v15;
    a6[4] = a5;
    a6[5] = 0;
    a6[6] = v17;
    a6[7] = a4;
  }

  else
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v19 = sub_27520BAB8();
    __swift_project_value_buffer(v19, qword_2809B38E8);
    v20;
    v21 = sub_27520BA98();
    v22 = sub_27520BEF8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      v25.n128_u64[0] = 136315138;
      *v23 = 136315138;
      v26 = sub_2751E0324(a2, a3, &v27, v25);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_2751CF000, v21, v22, "Invalid label: %s for AsyncTransformedMatrixSequence.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C6DCC0](v24, -1, -1);
      MEMORY[0x277C6DCC0](v23, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *(a6 + 2) = 0u;
    *(a6 + 3) = 0u;
    *a6 = 0u;
    *(a6 + 1) = 0u;
  }

  return result;
}

uint64_t AsyncTransformedMatrixSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *a2 = v8[0];
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return (*(*(a1 - 8) + 16))(&v7, v8, a1);
}

uint64_t AsyncTransformedMatrixSequence.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751DFD68, 0, 0);
}

uint64_t sub_2751DFD68()
{
  if ((sub_27520BDF8() & 1) != 0 || (v1 = v0[3], v2 = *(v1 + 40), v2 >= *(v1 + 24)))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v3 = v0[5];
  sub_27520BAF8();
  v4 = sub_27520BB28();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_4:
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v6 = sub_27520BAB8();
    __swift_project_value_buffer(v6, qword_2809B38E8);
    v7 = sub_27520BA98();
    v8 = sub_27520BEF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2751CF000, v7, v8, "Unsupported field type.", v9, 2u);
      MEMORY[0x277C6DCC0](v9, -1, -1);
    }

    v10 = v0[5];

    sub_2751E03F0(v10);
    goto LABEL_9;
  }

  v14 = v0[4];
  sub_2751E0458(v0[5], v14);
  v15 = (*(v5 + 88))(v14, v4);
  if (v15 == *MEMORY[0x277D3D198])
  {
    sub_2751E0A18();
    v16 = sub_27520BB18();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v29 = MEMORY[0x277D84F90];
        v18 = v16;
        sub_2751E09A4(0, v17, 0);
        v19 = v18;
        v11 = v29;
        v20 = *(v29 + 16);
        v21 = 32;
        do
        {
          _H8 = *(v19 + v21);
          v23 = *(v29 + 24);
          if (v20 >= v23 >> 1)
          {
            sub_2751E09A4((v23 > 1), v20 + 1, 1);
            v19 = v18;
          }

          __asm { FCVT            S0, H8 }

          *(v29 + 16) = v20 + 1;
          *(v29 + 4 * v20 + 32) = _S0;
          v21 += 2;
          ++v20;
          --v17;
        }

        while (v17);
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (v15 != *MEMORY[0x277D3D1A0])
    {
      (*(v5 + 8))(v0[4], v4);
      goto LABEL_4;
    }

    sub_2751E09C4();
    v11 = sub_27520BB18();
  }

  sub_2751E03F0(v0[5]);
  *(v1 + 40) = v2 + 1;
LABEL_10:

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_2751E0134(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2751E13E4;

  return AsyncTransformedMatrixSequence.next()(a2);
}

uint64_t sub_2751E01CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_2751E13E0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_2751E02A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AsyncTransformedMatrixSequence.makeAsyncIterator()(a1, a2);
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v5 = v2[3];
  v7[2] = v2[2];
  v7[3] = v5;
  return (*(*(a1 - 8) + 8))(v7, a1);
}

unint64_t sub_2751E0324(uint64_t a1, unint64_t a2, uint64_t *a3, __n128 a4)
{
  a4;
  v7 = sub_2751E04C8(v12, 0, 0, 1, a1, a2);
  v8 = v12[0];
  if (!v7)
  {
    ObjectType = MEMORY[0x277D840A0];
    v12[0] = a1;
    v12[1] = a2;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = v7;

  ObjectType = swift_getObjectType();
  v12[0] = v9;
  v10 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2751E1384(v12, v10);
    *a3 = v10 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t sub_2751E03F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2751E0458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2751E04C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2751E05D4(a5, a6);
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
    result = sub_27520BFA8();
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

void *sub_2751E05D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2751E0620(a1, a2);
  sub_2751E0750(&unk_2883F8AB8);
  return v3;
}

void *sub_2751E0620(uint64_t a1, unint64_t a2)
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

  v6 = sub_2751E083C(v5, 0);
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

  result = sub_27520BFA8();
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
        v10 = sub_27520BBF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2751E083C(v10, 0);
        result = sub_27520BF58();
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

uint64_t sub_2751E0750(uint64_t result)
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

  result = sub_2751E08B0(result, v11, 1, v3);
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

void *sub_2751E083C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809AD668, &qword_27520DCF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2751E08B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809AD668, &qword_27520DCF0);
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

char *sub_2751E09A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27520899C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2751E09C4()
{
  result = qword_2809AD538;
  if (!qword_2809AD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD538);
  }

  return result;
}

unint64_t sub_2751E0A18()
{
  result = qword_2809AD540;
  if (!qword_2809AD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD540);
  }

  return result;
}

unint64_t sub_2751E0A98()
{
  result = qword_2809AD548;
  if (!qword_2809AD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD548);
  }

  return result;
}

unint64_t sub_2751E0AEC()
{
  result = qword_2809AD550;
  if (!qword_2809AD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD550);
  }

  return result;
}

uint64_t sub_2751E0BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2751E0BF4()
{
  result = qword_2809AD558;
  if (!qword_2809AD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD558);
  }

  return result;
}

unint64_t sub_2751E0C48()
{
  result = qword_2809AD560[0];
  if (!qword_2809AD560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD560);
  }

  return result;
}

uint64_t sub_2751E0CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
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

uint64_t sub_2751E0D68(uint64_t *a1, int a2)
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

uint64_t sub_2751E0DB0(uint64_t result, int a2, int a3)
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

void sub_2751E0E00(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD1F0, &qword_27520DE80);
  sub_27520C2C8();
  if (v1 <= 0x3F)
  {
    sub_2751D5D74(319);
    if (v2 <= 0x3F)
    {
      sub_2751D5DCC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2751E0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2751E0FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2751E1094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2751E10DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2751E1138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2751E1194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2751E11DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2751E1244(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275208AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1264(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275208BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1284(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275208BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E12A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275208D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E12C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275208D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2751E12E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275208E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1304(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275209004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1324(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275209108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1344(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27520920C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1364(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_275209328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2751E1384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_2751E13F0(char *result, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v7 = a2 - result;
  if (!__OFSUB__(a2, result))
  {
    if (!v7)
    {
      return MEMORY[0x277D84F90];
    }

    v8 = result;
    v50 = MEMORY[0x277D84F90];
    result = sub_2751E1284(0, v7 & ~(v7 >> 63), 0);
    v10 = a6;
    if (a6 < 0)
    {
      goto LABEL_74;
    }

    if (a2 < v8 || v7 < 0)
    {
      goto LABEL_75;
    }

    v11 = 0;
    result = v50;
    v12 = MEMORY[0x277D84F90];
    v39 = v7;
    while (v11 < v7)
    {
      v13 = __OFADD__(v11++, 1);
      if (v13)
      {
        goto LABEL_57;
      }

      v14 = v8 * a4;
      if (a3)
      {
        if ((v8 * a4) >> 64 != (v8 * a4) >> 63)
        {
          goto LABEL_68;
        }

        v13 = __OFADD__(v14++, 1);
        if (v13)
        {
          goto LABEL_70;
        }
      }

      else if ((v8 * a4) >> 64 != (v8 * a4) >> 63)
      {
        goto LABEL_69;
      }

      v15 = *a5;
      v16 = *(*a5 + 16);
      if (v16 < v14)
      {
        goto LABEL_58;
      }

      if (v14 < 0)
      {
        goto LABEL_59;
      }

      if (!v10 || v16 - v14 < 0 || (v17 = *(*a5 + 16), v16 - v14 >= v10))
      {
        v17 = v14 + v10;
        if (__OFADD__(v14, v10))
        {
          goto LABEL_66;
        }
      }

      if (v17 < v14)
      {
        goto LABEL_60;
      }

      if (v16 < v17)
      {
        goto LABEL_61;
      }

      v46 = result;
      v47 = v8;
      v18 = v12;
      v19 = v17 - v14;
      if (v17 != v14)
      {
        v20 = v11;
        v48 = v12;
        v9;
        result = sub_2751E09A4(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          goto LABEL_71;
        }

        v18 = v48;
        v21 = 4 * v14 + 32;
        while (v19)
        {
          v22 = *(v15 + v21);
          v24 = *(v48 + 16);
          v23 = *(v48 + 24);
          if (v24 >= v23 >> 1)
          {
            result = sub_2751E09A4((v23 > 1), v24 + 1, 1);
          }

          *(v48 + 16) = v24 + 1;
          *(v48 + 4 * v24 + 32) = v22;
          v21 += 4;
          if (!--v19)
          {

            v10 = a6;
            v12 = MEMORY[0x277D84F90];
            v11 = v20;
            result = v46;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_31:
      v25 = *a7;
      v26 = *(*a7 + 16);
      if (v26 < v14)
      {
        goto LABEL_62;
      }

      if (!v10 || v26 - v14 < 0 || (v27 = *(*a7 + 16), v26 - v14 >= v10))
      {
        v27 = v14 + v10;
        if (__OFADD__(v14, v10))
        {
          goto LABEL_67;
        }
      }

      if (v27 < v14)
      {
        goto LABEL_63;
      }

      if (v26 < v27)
      {
        goto LABEL_64;
      }

      v28 = v12;
      v29 = v27 - v14;
      if (v27 != v14)
      {
        v38 = v11;
        v49 = v12;
        v9;
        result = sub_2751E12C4(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          goto LABEL_72;
        }

        v28 = v49;
        v30 = 8 * v14 + 32;
        while (v29)
        {
          v31 = *(v25 + v30);
          if (v31 < 0)
          {
            goto LABEL_55;
          }

          v33 = *(v49 + 16);
          v32 = *(v49 + 24);
          if (v33 >= v32 >> 1)
          {
            result = sub_2751E12C4((v32 > 1), v33 + 1, 1);
          }

          *(v49 + 16) = v33 + 1;
          *(v49 + 8 * v33 + 32) = v31;
          v30 += 8;
          if (!--v29)
          {

            v10 = a6;
            v12 = MEMORY[0x277D84F90];
            v11 = v38;
            result = v46;
            goto LABEL_47;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

LABEL_47:
      v51 = result;
      v35 = *(result + 2);
      v34 = *(result + 3);
      if (v35 >= v34 >> 1)
      {
        v37 = v11;
        sub_2751E1284((v34 > 1), v35 + 1, 1);
        v11 = v37;
        v12 = MEMORY[0x277D84F90];
        v10 = a6;
        result = v51;
      }

      *(result + 2) = v35 + 1;
      v36 = &result[16 * v35];
      *(v36 + 4) = v18;
      *(v36 + 5) = v28;
      if (v47 >= a2)
      {
        goto LABEL_65;
      }

      v8 = v47 + 1;
      v7 = v39;
      if (v11 == v39)
      {
        return result;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t MatrixNNScorer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_2751E18D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 404) = a3;
  *(v4 + 40) = a1;
  v5 = *v3;
  v6 = sub_27520BDC8();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_27520B6C8();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v8 = *(v5 + 80);
  *(v4 + 136) = v8;
  *(v4 + 144) = *(v8 - 8);
  *(v4 + 152) = swift_task_alloc();
  v9 = *(v5 + 88);
  *(v4 + 160) = v9;
  *(v4 + 168) = *(v9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 176) = AssociatedTypeWitness;
  *(v4 + 184) = *(AssociatedTypeWitness - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = *(v9 + 8);
  v11 = swift_getAssociatedTypeWitness();
  *(v4 + 208) = v11;
  *(v4 + 216) = *(v11 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751E1BD0, 0, 0);
}

uint64_t sub_2751E1BD0()
{
  v57 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 404) != 1 || (v2 = __OFADD__(v1, 1), ++v1, !v2))
  {
    *(v0 + 264) = v1;
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(*v5 + 96);
    v8 = (*(v3 + 24))(v4, v3);
    *(v0 + 272) = v8;
    v9 = (*(v3 + 32))(v4, v3);
    *(v0 + 280) = v9;
    v10 = *(v6 + 16);
    *(v0 + 288) = v10;
    if (v9)
    {
      if (*(v0 + 48) < 1)
      {
        if (qword_2809AD190 != -1)
        {
          swift_once();
        }

        v17 = sub_27520BAB8();
        __swift_project_value_buffer(v17, qword_2809B38E8);
        v13 = sub_27520BA98();
        v14 = sub_27520BEF8();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_14;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "top-k must be positive.";
        goto LABEL_13;
      }

      v11 = v10 / v9;
      if (v10 % v9)
      {
        if (qword_2809AD190 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_56;
      }

      v20 = v11 * v1;
      if ((v11 * v1) >> 64 == (v11 * v1) >> 63)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          if (v20)
          {
            v21 = sub_27520BCF8();
            *(v21 + 16) = v20;
            bzero((v21 + 32), 4 * v20);
            v54 = v21;
            *(v0 + 16) = v21;
            v3 = sub_27520BCF8();
            *(v3 + 16) = v20;
            bzero((v3 + 32), 8 * v20);
          }

          else
          {
            v3 = MEMORY[0x277D84F90];
            *(v0 + 16) = MEMORY[0x277D84F90];
            v54 = v3;
          }

          *(v0 + 24) = v3;
          v22 = v11 * v8;
          if ((v11 * v8) >> 64 == (v11 * v8) >> 63)
          {
            if ((v22 & 0x8000000000000000) == 0)
            {
              if (v22)
              {
                v23 = sub_27520BCF8();
                *(v23 + 16) = v22;
                v53 = v23;
                bzero((v23 + 32), 4 * v8 * v11);
              }

              else
              {
                v53 = MEMORY[0x277D84F90];
              }

              if (v1 + 0x4000000000000000 >= 0)
              {
                v24 = 2 * v1;
                if (((2 * v1) & 0x8000000000000000) == 0)
                {
                  v51 = v5;
                  v11 = MEMORY[0x277D84F90];
                  v55 = v7;
                  if (v24)
                  {
                    v25 = sub_27520BCF8();
                    *(v25 + 16) = v24;
                    v52 = v25;
                    memset_pattern16((v25 + 32), &unk_27520DD70, 8 * v1);
                    v26 = sub_2751E3A6C(2 * v1, 0);
                    v27 = sub_2751E3B7C(v56, (v26 + 4), 2 * v1, 0, 2 * v1);
                    if (v27 != v24)
                    {
                      __break(1u);
                      goto LABEL_66;
                    }

                    v33 = v26[2];
                    if (v33)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    v52 = MEMORY[0x277D84F90];
                    v26 = MEMORY[0x277D84F90];
                    v33 = *(MEMORY[0x277D84F90] + 16);
                    if (v33)
                    {
LABEL_32:
                      v50 = v3;
                      v56[0] = v11;
                      sub_2751E12A4(0, v33, 0);
                      v11 = v56[0];
                      v34 = *(v56[0] + 16);
                      v35 = 4;
                      do
                      {
                        v36 = v26[v35];
                        v56[0] = v11;
                        v37 = *(v11 + 24);
                        if (v34 >= v37 >> 1)
                        {
                          sub_2751E12A4((v37 > 1), v34 + 1, 1);
                          v11 = v56[0];
                        }

                        *(v11 + 16) = v34 + 1;
                        *(v11 + 8 * v34 + 32) = v36;
                        ++v35;
                        ++v34;
                        --v33;
                      }

                      while (v33);

                      v3 = v50;
LABEL_39:
                      *(v0 + 296) = v11;
                      v39 = v55;
                      if ((v8 & 0x8000000000000000) == 0)
                      {
                        v40 = MEMORY[0x277D84F90];
                        if (!v8)
                        {
                          v41 = MEMORY[0x277D84F90];
                          v42 = *(MEMORY[0x277D84F90] + 16);
                          if (v42)
                          {
LABEL_43:
                            v43 = v3;
                            v56[0] = v40;
                            v38;
                            sub_2751E12A4(0, v42, 0);
                            v40 = v56[0];
                            v44 = *(v56[0] + 16);
                            v45 = 4;
                            do
                            {
                              v46 = v41[v45];
                              v56[0] = v40;
                              v47 = *(v40 + 24);
                              if (v44 >= v47 >> 1)
                              {
                                sub_2751E12A4((v47 > 1), v44 + 1, 1);
                                v40 = v56[0];
                              }

                              *(v40 + 16) = v44 + 1;
                              *(v40 + 8 * v44 + 32) = v46;
                              ++v45;
                              ++v44;
                              --v42;
                            }

                            while (v42);

                            v3 = v43;
                            v39 = v55;
LABEL_50:
                            *(v0 + 304) = v40;
                            (*(*(v0 + 144) + 16))(*(v0 + 152), v51 + v39, *(v0 + 136));
                            sub_27520BE28();
                            if (swift_isUniquelyReferenced_nonNull_native())
                            {
                              goto LABEL_51;
                            }

                            goto LABEL_64;
                          }

LABEL_49:
                          v38;

                          goto LABEL_50;
                        }

                        v41 = sub_2751E3A6C(v8, 0);
                        v27 = sub_2751E3B7C(v56, (v41 + 4), v8, 0, v8);
                        if (v27 == v8)
                        {
                          v42 = v41[2];
                          if (v42)
                          {
                            goto LABEL_43;
                          }

                          goto LABEL_49;
                        }

LABEL_66:
                        __break(1u);
                        return MEMORY[0x282200310](v27, v28, v29, v30, v31, v32);
                      }

LABEL_63:
                      __break(1u);
LABEL_64:
                      v11 = sub_2751E3B18(v11);
LABEL_51:
                      *(v0 + 400) = *MEMORY[0x277D83180];
                      *(v0 + 368) = v54;
                      *(v0 + 376) = v54;
                      *(v0 + 352) = v3;
                      *(v0 + 360) = v3;
                      *(v0 + 336) = v52;
                      *(v0 + 344) = v54;
                      *(v0 + 320) = 0;
                      *(v0 + 328) = v53;
                      *(v0 + 312) = v11;
                      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                      v49 = swift_task_alloc();
                      *(v0 + 384) = v49;
                      *v49 = v0;
                      v49[1] = sub_2751E2340;
                      v30 = *(v0 + 248);
                      v31 = *(v0 + 176);
                      v27 = (v0 + 32);
                      v28 = 0;
                      v29 = 0;
                      v32 = AssociatedConformanceWitness;

                      return MEMORY[0x282200310](v27, v28, v29, v30, v31, v32);
                    }
                  }

                  goto LABEL_39;
                }

LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_7:
  v12 = sub_27520BAB8();
  __swift_project_value_buffer(v12, qword_2809B38E8);
  v13 = sub_27520BA98();
  v14 = sub_27520BEF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "testMatrixValues count must be divisible by columnCount.";
LABEL_13:
    _os_log_impl(&dword_2751CF000, v13, v14, v16, v15, 2u);
    MEMORY[0x277C6DCC0](v15, -1, -1);
  }

LABEL_14:

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_2751E2340()
{
  *(*v1 + 392) = v0;

  if (v0)
  {

    v2 = sub_2751E3204;
  }

  else
  {
    v2 = sub_2751E2470;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2751E2470(__n128 a1)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    v13 = *(v1 + 320);
    v14 = *(v1 + 264);
    (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));

    if ((v14 & 0x8000000000000000) == 0 && v14 >= v13)
    {

      if (qword_2809AD190 == -1)
      {
LABEL_10:
        v18 = sub_27520BAB8();
        __swift_project_value_buffer(v18, qword_2809B38E8);
        v19 = sub_27520BA98();
        v20 = sub_27520BEF8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = *(v1 + 320);
          v22 = *(v1 + 48);
          v23 = swift_slowAlloc();
          *v23 = 134218240;
          *(v23 + 4) = v22;
          *(v23 + 12) = 2048;
          *(v23 + 14) = v21;
          _os_log_impl(&dword_2751CF000, v19, v20, "Not enough samples to score with top-k = %ld, target samples = %lu.", v23, 0x16u);
          MEMORY[0x277C6DCC0](v23, -1, -1);
        }

        goto LABEL_13;
      }

LABEL_153:
      swift_once();
      goto LABEL_10;
    }

    v30 = *(v1 + 404);
    v31 = *(v1 + 264);
    v32 = v31;
    if (v30 == 1)
    {
      v32 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_156;
      }
    }

    v16 = *(v1 + 288) / *(v1 + 280);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v135 = sub_2751E13F0(0, v16, v30, v31, (v1 + 16), v32, (v1 + 24));

      goto LABEL_22;
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    return MEMORY[0x282200310](v15, v16, v30, v31, v17, v32);
  }

  v3 = *(v1 + 280);
  v4 = *(v2 + 16) / v3;
  __N = v4;
  if (*(v1 + 272) >= v4)
  {
    v24 = normalizeMatrix(_:rowCount:columnCount:)(*(v1 + 40), *(v1 + 288) / v3, v3, a1);
    v26 = normalizeMatrix(_:rowCount:columnCount:)(v2, v4, v3, v25);

    v27 = v3 * v4;
    if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
    {
      if ((v27 & 0x8000000000000000) == 0)
      {
        if (v27)
        {
          v28 = *(v1 + 280);
          v29 = sub_27520BCF8();
          *(v29 + 16) = v27;
          memset_pattern16((v29 + 32), &unk_27520DD80, 4 * v4 * v28);
        }

        else
        {
          v29 = MEMORY[0x277D84F90];
        }

        v35 = *(v1 + 280);
        if (((v35 | v4) & 0x8000000000000000) == 0)
        {
          v36 = *(v1 + 288) / v35;
          vDSP_mtrans((v26 + 32), 1, (v29 + 32), 1, v35, v4);

          if ((v36 & 0x8000000000000000) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = *(v1 + 328);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v38 = sub_2751D198C(0, *(v38 + 16), 0, *(v1 + 328));
            }

            v39 = __N;
            v40 = *(v1 + 288) / *(v1 + 280);
            vDSP_mmul((v24 + 32), 1, (v29 + 32), 1, (v38 + 32), 1, v40, __N, *(v1 + 280));

            if (v40)
            {
              v120 = (v38 + 32);
              if ((*(v1 + 264) & 0x8000000000000000) == 0)
              {
                v121 = 0;
                v122 = 0;
                v41 = 0;
                v42 = *(v38 + 16);
                v133 = *(v1 + 368);
                v134 = 0;
                v136 = *(v1 + 360);
                v43 = *(v1 + 344);
                v44 = *(v1 + 352);
                v45 = *(v1 + 336);
                v119 = v38;
                v117 = v42;
                while (!__OFADD__(v41, 1))
                {
                  v46 = v41;
                  v47 = v41 * v39;
                  v125 = v46;
                  if ((v46 * v39) >> 64 != v47 >> 63)
                  {
                    goto LABEL_132;
                  }

                  if (v42 < v47)
                  {
                    goto LABEL_133;
                  }

                  if (v47 < 0)
                  {
                    goto LABEL_134;
                  }

                  v48 = *(v38 + 16);
                  if (v48 < v47 || v48 < v42)
                  {
                    goto LABEL_135;
                  }

                  if (v39 < 1 || (v49 = v42, v42 - v47 >= v39))
                  {
                    v49 = v47 + v39;
                    if (__OFADD__(v47, v39))
                    {
                      goto LABEL_146;
                    }
                  }

                  if (v49 < v47)
                  {
                    goto LABEL_136;
                  }

                  if (v42 < v49)
                  {
                    goto LABEL_137;
                  }

                  v127 = *(*(v1 + 96) + 104);
                  v127(*(v1 + 128), *(v1 + 400), *(v1 + 88));
                  v124 = v49 - v47;
                  if (v49 - v47 < 0)
                  {
                    goto LABEL_138;
                  }

                  v50;
                  v51;
                  v52 = swift_isUniquelyReferenced_nonNull_native();
                  v130 = v49;
                  v132 = *(v1 + 304);
                  if ((v52 & 1) == 0)
                  {
                    v132 = sub_2751E3B18(v132);
                  }

                  v128 = *(v1 + 400);
                  v53 = *(v1 + 128);
                  v118 = *(v1 + 120);
                  v54 = *(v1 + 88);
                  v55 = *(v1 + 96);
                  v56 = sub_27520B6B8();
                  vDSP_vsorti(&v120[4 * v47], v132 + 4, 0, v124, v56);
                  v126 = *(v55 + 8);
                  v126(v53, v54);
                  v127(v118, v128, v54);
                  if (swift_isUniquelyReferenced_nonNull())
                  {
                    v57 = v47;
                    v58 = v120;
                  }

                  else
                  {
                    sub_2751E3C80(v120, v47, (2 * v49) | 1);
                    v58 = v59;
                    v57 = v60;
                    v62 = v61;
                    swift_unknownObjectRelease();
                    v130 = v62 >> 1;
                  }

                  v63 = *(v1 + 264);
                  v64 = *(v1 + 120);
                  v129 = v58;
                  v65 = v57;
                  v66 = &v58[4 * v57];
                  v67 = *(v1 + 88);
                  v68 = sub_27520B6B8();
                  vDSP_vsort(v66, v124, v68);
                  v126(v64, v67);
                  if (v63)
                  {
                    v70 = *(v1 + 264);
                    if ((v125 * v70) >> 64 != (v125 * v70) >> 63)
                    {
                      goto LABEL_139;
                    }

                    if (v70 > *(v45 + 16))
                    {
                      goto LABEL_140;
                    }

                    if (v70 > *(*(v1 + 312) + 16))
                    {
                      goto LABEL_141;
                    }

                    v69;
                    if (v134 < 0)
                    {
                      goto LABEL_142;
                    }

                    v71 = 0;
                    v72 = &v136[v70 * v121 + 32];
                    v73 = v70 * v125;
                    v74 = v133 + v70 * v122 + 32;
                    while ((v73 + v71) < *(v133 + 16))
                    {
                      v78 = *(v74 + 4 * v71);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v45 = sub_2751E3B04(v45);
                      }

                      *(v45 + 4 * v71 + 32) = v78;
                      if ((v73 + v71) >= *(v136 + 2))
                      {
                        goto LABEL_113;
                      }

                      v79 = v45 + 32;
                      v80 = *(v1 + 264);
                      *(*(v1 + 312) + 8 * v71 + 32) = *(v72 + 8 * v71);
                      v81 = v80 + v71;
                      v82 = __OFADD__(v80, v71);
                      if (v71 >= __N)
                      {
                        if (v82)
                        {
                          goto LABEL_120;
                        }

                        if ((v81 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_121;
                        }

                        if (v81 >= *(v45 + 16))
                        {
                          goto LABEL_123;
                        }

                        v87 = *(v1 + 312);
                        *(v79 + 4 * v81) = 0;
                        if (v81 >= *(v87 + 16))
                        {
                          goto LABEL_126;
                        }

                        v75 = 0;
                        v76 = *(v1 + 312);
                      }

                      else
                      {
                        if (v82)
                        {
                          goto LABEL_119;
                        }

                        v83 = v47 + v71;
                        if (__OFADD__(v47, v71))
                        {
                          goto LABEL_122;
                        }

                        if (v83 < v65 || v83 >= v130)
                        {
                          goto LABEL_124;
                        }

                        if ((v81 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_125;
                        }

                        if (v81 >= *(v45 + 16))
                        {
                          goto LABEL_127;
                        }

                        *(v79 + 4 * v81) = *&v129[4 * v83];
                        if (v71 >= *(v132 + 2))
                        {
                          goto LABEL_128;
                        }

                        v84 = *(v1 + 320);
                        v85 = *&v132[8 * v71 + 32];
                        v86 = __CFADD__(v84, v85);
                        v75 = v84 + v85;
                        if (v86)
                        {
                          goto LABEL_129;
                        }

                        v76 = *(v1 + 312);
                        if (v81 >= *(v76 + 16))
                        {
                          goto LABEL_130;
                        }
                      }

                      ++v71;
                      v77 = *(v1 + 264);
                      *(v76 + 8 * v81 + 32) = v75;
                      if (v71 == v77)
                      {
                        v43 = v133;
                        v44 = v136;
                        goto LABEL_84;
                      }
                    }

                    __break(1u);
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
LABEL_115:
                    __break(1u);
                    goto LABEL_116;
                  }

                  v69;
LABEL_84:
                  v127(*(v1 + 112), *(v1 + 400), *(v1 + 88));
                  v88 = *(v45 + 16);
                  v89 = swift_isUniquelyReferenced_nonNull_native();
                  v90 = *(v1 + 296);
                  if ((v89 & 1) == 0)
                  {
                    v90 = sub_2751E3B18(*(v1 + 296));
                  }

                  v91 = *(v1 + 400);
                  v93 = *(v1 + 104);
                  v92 = *(v1 + 112);
                  v131 = v90;
                  v94 = (v90 + 32);
                  v95 = *(v1 + 88);
                  v96 = sub_27520B6B8();
                  vDSP_vsorti((v45 + 32), v94, 0, v88, v96);
                  v126(v92, v95);
                  v127(v93, v91, v95);
                  v97 = *(v45 + 16);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v45 = sub_2751E3B04(v45);
                  }

                  v98 = *(v1 + 264);
                  v99 = *(v1 + 104);
                  v100 = (v45 + 32);
                  v101 = *(v1 + 88);
                  v102 = sub_27520B6B8();
                  vDSP_vsort((v45 + 32), v97, v102);
                  v126(v99, v101);
                  if (v98)
                  {
                    v103 = *(v1 + 264);
                    v104 = v125;
                    if ((v125 * v103) >> 64 != (v125 * v103) >> 63)
                    {
                      goto LABEL_143;
                    }

                    if (v103 > *(v45 + 16))
                    {
                      goto LABEL_144;
                    }

                    if (v103 > *(v131 + 2))
                    {
                      goto LABEL_145;
                    }

                    v105 = 0;
                    v106 = v103 * v125;
                    while (1)
                    {
                      v107 = *v100;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (v134 < 0)
                        {
                          goto LABEL_114;
                        }
                      }

                      else
                      {
                        v43 = sub_2751E3B04(v43);
                        if (v134 < 0)
                        {
                          goto LABEL_114;
                        }
                      }

                      if (v106 >= *(v43 + 16))
                      {
                        goto LABEL_115;
                      }

                      *(v43 + 4 * v106 + 32) = v107;
                      v108 = *v94;
                      if ((*v94 & 0x8000000000000000) != 0)
                      {
                        break;
                      }

                      v109 = *(v1 + 312);
                      if (v108 >= *(v109 + 16))
                      {
                        goto LABEL_117;
                      }

                      v110 = *(v109 + 8 * v108 + 32);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v44 = sub_2751E3B18(v44);
                      }

                      if (v106 >= *(v44 + 2))
                      {
                        goto LABEL_118;
                      }

                      ++v105;
                      v111 = *(v1 + 264);
                      *&v44[8 * v106 + 32] = v110;
                      ++v94;
                      ++v100;
                      ++v106;
                      if (v105 == v111)
                      {

                        swift_unknownObjectRelease();

                        *(v1 + 24) = v44;
                        *(v1 + 16) = v43;
                        v136 = v44;
                        v133 = v43;
                        goto LABEL_33;
                      }
                    }

LABEL_116:
                    __break(1u);
LABEL_117:
                    __break(1u);
LABEL_118:
                    __break(1u);
LABEL_119:
                    __break(1u);
LABEL_120:
                    __break(1u);
LABEL_121:
                    __break(1u);
LABEL_122:
                    __break(1u);
LABEL_123:
                    __break(1u);
LABEL_124:
                    __break(1u);
LABEL_125:
                    __break(1u);
LABEL_126:
                    __break(1u);
LABEL_127:
                    __break(1u);
LABEL_128:
                    __break(1u);
LABEL_129:
                    __break(1u);
LABEL_130:
                    __break(1u);
                    break;
                  }

                  swift_unknownObjectRelease();

                  v104 = v125;
LABEL_33:
                  v42 = v117;
                  v41 = v104 + 1;
                  v134 += *(v1 + 264);
                  v39 = __N;
                  v121 += 8;
                  v122 += 4;
                  v38 = v119;
                  if (v41 == *(v1 + 288) / *(v1 + 280))
                  {
                    v112 = vdupq_n_s64(v133);
                    goto LABEL_108;
                  }
                }

                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
                goto LABEL_147;
              }

              goto LABEL_152;
            }

            v112 = *(v1 + 368);
            v44 = *(v1 + 352);
            v136 = *(v1 + 360);
            v45 = *(v1 + 336);
            v43 = *(v1 + 344);
LABEL_108:
            v113 = *(v1 + 320);
            v86 = __CFADD__(v113, v39);
            v114 = v113 + v39;
            if (!v86)
            {
              *(v1 + 368) = v112;
              *(v1 + 352) = v44;
              *(v1 + 360) = v136;
              *(v1 + 336) = v45;
              *(v1 + 344) = v43;
              *(v1 + 320) = v114;
              *(v1 + 328) = v38;
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v116 = swift_task_alloc();
              *(v1 + 384) = v116;
              *v116 = v1;
              v116[1] = sub_2751E2340;
              v31 = *(v1 + 248);
              v17 = *(v1 + 176);
              v15 = v1 + 32;
              v16 = 0;
              v30 = 0;
              v32 = AssociatedConformanceWitness;

              return MEMORY[0x282200310](v15, v16, v30, v31, v17, v32);
            }

            goto LABEL_155;
          }

LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_150;
  }

  if (qword_2809AD190 != -1)
  {
LABEL_147:
    swift_once();
  }

  v5 = sub_27520BAB8();
  __swift_project_value_buffer(v5, qword_2809B38E8);
  v6 = sub_27520BA98();
  v7 = sub_27520BEF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 272);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = __N;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v8;
    _os_log_impl(&dword_2751CF000, v6, v7, "Invalid data size. Number of rows %ld > specified batch size %ld.", v9, 0x16u);
    MEMORY[0x277C6DCC0](v9, -1, -1);
  }

  v11 = *(v1 + 184);
  v10 = *(v1 + 192);
  v12 = *(v1 + 176);

  (*(v11 + 8))(v10, v12);

LABEL_13:

  v135 = 0;
LABEL_22:

  v33 = *(v1 + 8);

  return v33(v135);
}

uint64_t sub_2751E3204()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[26];
  v4 = v0[27];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  if (swift_dynamicCast())
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v6 = sub_27520BAB8();
    __swift_project_value_buffer(v6, qword_2809B38E8);
    v7 = sub_27520BA98();
    v8 = sub_27520BED8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2751CF000, v7, v8, "Task canceled at scoring.", v9, 2u);
      MEMORY[0x277C6DCC0](v9, -1, -1);
    }

    v10 = v0[32];
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[9];
    v14 = v0[10];
    v15 = v0[8];

    (*(v13 + 8))(v14, v15);
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v16 = *(v0[27] + 16);
    v16(v0[30], v0[32], v0[26]);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v17 = v0[29];
    v18 = v0[30];
    v19 = v0[26];
    v20 = sub_27520BAB8();
    __swift_project_value_buffer(v20, qword_2809B38E8);
    v16(v17, v18, v19);
    v21 = sub_27520BA98();
    v22 = sub_27520BEF8();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[29];
    if (v23)
    {
      v46 = v22;
      v43 = v5;
      v25 = v0[28];
      v26 = v0[26];
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v27;
      *v27 = 138412290;
      v16(v25, v24, v26);
      swift_getAssociatedConformanceWitness();
      v28 = sub_27520C1F8();
      v29 = v0[28];
      if (v28)
      {
        (*(v0[27] + 8))(v0[28], v0[26]);
      }

      else
      {
        v33 = v0[26];
        swift_allocError();
        v43(v34, v29, v33);
      }

      v35 = v0[29];
      v37 = v0[26];
      v36 = v0[27];
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v36 + 8);
      v32(v35, v37);
      *(v45 + 1) = v38;
      *v44 = v38;
      _os_log_impl(&dword_2751CF000, v21, v46, "Error: %@", v45, 0xCu);
      sub_2751E3C18(v44);
      MEMORY[0x277C6DCC0](v44, -1, -1);
      MEMORY[0x277C6DCC0](v45, -1, -1);
    }

    else
    {
      v30 = v0[26];
      v31 = v0[27];

      v32 = *(v31 + 8);
      v32(v24, v30);
    }

    v39 = v0[32];
    v40 = v0[26];
    v32(v0[30], v40);
    v32(v39, v40);
  }

  v41 = v0[1];

  return v41(0);
}

uint64_t MatrixNNScorer.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2751E383C(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2751E38EC;

  return sub_2751E18D8(v6, a2, a3);
}

uint64_t sub_2751E38EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_2751E39E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_2751E3A6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t *sub_2751E3B7C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2751E3C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD260, &unk_27520DDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2751E3C80(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_2751E39E8((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[4 * a2], 4 * v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2751E3D3C(uint64_t a1)
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

uint64_t dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2751E38EC;

  return v10(a1, a2, a3);
}

uint64_t sub_2751E3F4C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_27520BA38();
  v26 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = MEMORY[0x277D84F90];
  sub_2751E12E4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2751E12E4((v16 > 1), v17 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t TensorNNScorer.__allocating_init(_:on:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 104), a1);
  sub_2751E91C8(a2, v4 + qword_2809B38E0, &qword_2809AD448, &qword_27520D460);
  return v4;
}

uint64_t TensorNNScorer.init(_:on:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  sub_2751E91C8(a2, v2 + qword_2809B38E0, &qword_2809AD448, &qword_27520D460);
  return v2;
}

uint64_t sub_2751E42EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 600) = a3;
  *(v4 + 120) = a1;
  v5 = *v3;
  v6 = sub_27520BDC8();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD6F0, &qword_27520DDC0);
  *(v4 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD6F8, &qword_27520DDC8);
  *(v4 + 176) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0);
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  *(v4 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD708, &qword_27520DDD8);
  *(v4 + 232) = swift_task_alloc();
  v8 = *(v5 + 80);
  *(v4 + 240) = v8;
  *(v4 + 248) = *(v8 - 8);
  *(v4 + 256) = swift_task_alloc();
  v9 = *(v5 + 88);
  *(v4 + 264) = v9;
  *(v4 + 272) = *(v9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 280) = AssociatedTypeWitness;
  *(v4 + 288) = *(AssociatedTypeWitness - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = *(v9 + 8);
  v11 = swift_getAssociatedTypeWitness();
  *(v4 + 312) = v11;
  *(v4 + 320) = *(v11 - 8);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v12 = sub_27520B8B8();
  *(v4 + 368) = v12;
  *(v4 + 376) = *(v12 - 8);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v13 = sub_27520B898();
  *(v4 + 416) = v13;
  *(v4 + 424) = *(v13 - 8);
  *(v4 + 432) = swift_task_alloc();
  v14 = sub_27520BA38();
  *(v4 + 440) = v14;
  *(v4 + 448) = *(v14 - 8);
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751E4844, 0, 0);
}

uint64_t sub_2751E4844()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v3 + 16);
  *(v0 + 512) = v9;
  *(v0 + 520) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v7, v2);
  sub_27520B918();
  LOBYTE(v1) = sub_27520B888();
  v10 = (*(v5 + 8))(v4, v6);
  if ((v1 & 1) != 0 && v8 >= 1)
  {
    v16 = *(v0 + 128);
    if (*(v0 + 600) == 1 && (v17 = __OFADD__(v16, 1), ++v16, v17))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 528) = v16;
      v18 = *(v0 + 408);
      v19 = *(v0 + 368);
      v20 = *(v0 + 376);
      v21 = *(v0 + 248);
      v33 = *(v0 + 256);
      v22 = *(v0 + 240);
      v23 = *(v0 + 136);
      sub_27520B998();
      v24 = sub_27520B8D8();
      v25 = *(v20 + 8);
      *(v0 + 536) = v25;
      *(v0 + 544) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v25(v18, v19);
      v32 = sub_2751E87A4(MEMORY[0x277D84F90], v24, &qword_2809AD1F0, &qword_27520DE80);
      sub_27520B998();
      v26 = sub_27520B8D8();
      v25(v18, v19);
      v27 = sub_2751E87A4(MEMORY[0x277D84F90], v26, &qword_2809AD1E0, &qword_27520C9C8);
      (*(v21 + 16))(v33, v23 + *(*v23 + 104), v22);
      sub_27520BE28();
      *(v0 + 552) = qword_2809B38E0;
      *(v0 + 576) = v27;
      *(v0 + 568) = v32;
      *(v0 + 560) = 0;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = swift_task_alloc();
      *(v0 + 584) = v29;
      *v29 = v0;
      v29[1] = sub_2751E4C9C;
      v13 = *(v0 + 352);
      v14 = *(v0 + 280);
      v10 = *(v0 + 232);
      v11 = 0;
      v12 = 0;
      v15 = AssociatedConformanceWitness;
    }

    return MEMORY[0x282200310](v10, v11, v12, v13, v14, v15);
  }

  else
  {
    (*(*(v0 + 448) + 8))(*(v0 + 504), *(v0 + 440));

    v30 = *(v0 + 8);

    return v30(0);
  }
}

uint64_t sub_2751E4C9C()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_2751E616C;
  }

  else
  {
    v2 = sub_2751E4DB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2751E4DB0()
{
  v213 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v17 = *(v0 + 560);
    (*(v2 + 32))(*(v0 + 496), v3, v1);
    if (v17 < 0xFFFFFFFF80000000)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v18 = *(v0 + 560);
    if (v18 > 0x7FFFFFFF)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v19 = *(v0 + 536);
    v20 = *(v0 + 408);
    v21 = *(v0 + 368);
    sub_27520B998();
    v22 = sub_27520B8D8();
    v19(v20, v21);
    v23 = v18 + v22;
    if (__OFADD__(v18, v22))
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v23 < 0xFFFFFFFF80000000)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v23 > 0x7FFFFFFF)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v24 = *(v0 + 552);
    v25 = *(v0 + 512);
    v26 = *(v0 + 488);
    v27 = *(v0 + 440);
    v198 = *(v0 + 496);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v195 = *(v0 + 184);
    v30 = *(v0 + 136);
    *(v0 + 48) = sub_2751E8258(*(v0 + 560) | (v23 << 32), 1);
    sub_2751E94D4(v30 + v24, v28, &qword_2809AD448, &qword_27520D460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1E0, &qword_27520C9C8);
    sub_2751E955C(&qword_2809AD710, &qword_2809AD1E0, &qword_27520C9C8);
    sub_27520BA48();
    v31 = *(v195 + 48);
    v25(v29, v198, v27);
    v25(v29 + v31, v26, v27);
    sub_27520B998();
    sub_2751E9170();
    sub_27520BE68();
    v32 = *(v0 + 56);
    if (v32 < 1)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v33 = *(v0 + 536);
    v34 = *(v0 + 408);
    v35 = *(v0 + 368);
    *(v0 + 16) = 1;
    *(v0 + 24) = v32;
    sub_27520BE98();
    v33(v34, v35);
    sub_27520B998();
    sub_27520BE68();
    v36 = *(v0 + 64);
    if (v36 < 1)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v37 = *(v0 + 536);
    v39 = *(v0 + 392);
    v38 = *(v0 + 400);
    v40 = *(v0 + 384);
    v41 = *(v0 + 368);
    *(v0 + 32) = 1;
    *(v0 + 40) = v36;
    sub_27520BE98();
    v37(v39, v41);
    v42 = sub_27520B8A8();
    v43 = sub_27520B8A8();
    v44 = sub_2751D72DC(v42, v43);

    v37(v40, v41);
    v37(v38, v41);
    if ((v44 & 1) == 0)
    {
      v62 = *(v0 + 496);
      v61 = *(v0 + 504);
      v63 = *(v0 + 488);
      v64 = *(v0 + 440);
      v65 = *(v0 + 448);
      v66 = *(v0 + 288);
      v67 = *(v0 + 296);
      v68 = *(v0 + 280);
      sub_2751D5E78(*(v0 + 216), &qword_2809AD700, &qword_27520DDD0);
      v69 = *(v65 + 8);
      v69(v63, v64);
      v69(v62, v64);
      (*(v66 + 8))(v67, v68);
      v69(v61, v64);
      goto LABEL_20;
    }

    v205 = *(v0 + 528);
    v45 = *(v0 + 504);
    v47 = *(v0 + 440);
    v46 = *(v0 + 448);
    v49 = *(v0 + 192);
    v48 = *(v0 + 200);
    v51 = *(v0 + 176);
    v50 = *(v0 + 184);
    sub_2751E94D4(*(v0 + 216), v48, &qword_2809AD700, &qword_27520DDD0);
    v52 = *(v50 + 48);
    sub_2751E6898(v45, v48, (v48 + v52), v205, v51);
    v53 = *(v46 + 8);
    v53(v48 + v52, v47);
    v53(v48, v47);
    if ((*(v49 + 48))(v51, 1, v50) == 1)
    {
      v54 = *(v0 + 496);
      v199 = *(v0 + 504);
      v55 = *(v0 + 488);
      v56 = *(v0 + 440);
      v57 = *(v0 + 288);
      v58 = *(v0 + 296);
      v59 = *(v0 + 280);
      v60 = *(v0 + 176);
      sub_2751D5E78(*(v0 + 216), &qword_2809AD700, &qword_27520DDD0);
      v53(v55, v56);
      v53(v54, v56);
      (*(v57 + 8))(v58, v59);
      v53(v199, v56);
      sub_2751D5E78(v60, &qword_2809AD6F8, &qword_27520DDC8);
LABEL_20:

LABEL_33:

      v207 = 0;
      goto LABEL_34;
    }

    v190 = v53;
    sub_2751E91C8(*(v0 + 176), *(v0 + 208), &qword_2809AD700, &qword_27520DDD0);
    v106 = sub_27520B9D8();
    v107 = *(v106 + 16);
    if (v107)
    {
      *(v0 + 72) = MEMORY[0x277D84F90];
      v108 = v106;
      sub_2751E09A4(0, v107, 0);
      v109 = v108;
      v110 = *(v0 + 72);
      v111 = *(v110 + 16);
      v112 = 32;
      do
      {
        v113 = *(v109 + v112);
        *(v0 + 72) = v110;
        v114 = *(v110 + 24);
        if (v111 >= v114 >> 1)
        {
          sub_2751E09A4((v114 > 1), v111 + 1, 1);
          v109 = v108;
          v110 = *(v0 + 72);
        }

        *(v110 + 16) = v111 + 1;
        *(v110 + 4 * v111 + 32) = v113;
        v112 += 4;
        ++v111;
        --v107;
      }

      while (v107);
      v194 = v110;
    }

    else
    {

      v194 = MEMORY[0x277D84F90];
    }

    v115 = sub_27520B9D8();
    v116 = *(v115 + 16);
    if (v116)
    {
      *(v0 + 80) = MEMORY[0x277D84F90];
      v117 = v115;
      sub_2751E1304(0, v116, 0);
      v118 = v117;
      v119 = *(v0 + 80);
      v120 = *(v119 + 16);
      v121 = 32;
      do
      {
        v122 = *(v118 + v121);
        *(v0 + 80) = v119;
        v123 = *(v119 + 24);
        if (v120 >= v123 >> 1)
        {
          sub_2751E1304((v123 > 1), v120 + 1, 1);
          v118 = v117;
          v119 = *(v0 + 80);
        }

        *(v119 + 16) = v120 + 1;
        *(v119 + 4 * v120 + 32) = v122;
        v121 += 4;
        ++v120;
        --v116;
      }

      while (v116);
      v193 = v119;
    }

    else
    {

      v193 = MEMORY[0x277D84F90];
    }

    v124 = *(v0 + 536);
    v125 = *(v0 + 408);
    v126 = *(v0 + 368);
    sub_27520B998();
    v127 = sub_27520B8D8();
    v128 = v124(v125, v126);
    if (v127 < 0)
    {
      __break(1u);
    }

    else
    {
      v135 = v194;
      if (v127)
      {
        v136 = 0;
        v137 = *(v0 + 592);
        v138 = *(v0 + 576);
        v139 = *(v0 + 568);
        v191 = v127;
        while (1)
        {
          v140 = *(v0 + 528);
          v141 = v136 * v140;
          if ((v136 * v140) >> 64 != (v136 * v140) >> 63)
          {
            goto LABEL_122;
          }

          v142 = (v136 + 1) * v140;
          if (((v136 + 1) * v140) >> 64 != v142 >> 63)
          {
            goto LABEL_123;
          }

          if (v142 < v141)
          {
            goto LABEL_124;
          }

          if ((v141 & 0x8000000000000000) != 0)
          {
            goto LABEL_125;
          }

          v143 = *(v135 + 16);
          if (v143 < v141 || v143 < v142)
          {
            goto LABEL_126;
          }

          v196 = v136 + 1;
          v134;
          v145 = v139;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v145 = sub_2751E3B40(v139);
          }

          if (v136 >= v145[2])
          {
            goto LABEL_127;
          }

          v208 = v145;
          v146 = &v145[v136];
          sub_2751DC640(v135, v135 + 32, v141, (2 * v142) | 1);
          v148 = *(v193 + 16);
          if (v148 < v141 || v148 < v142)
          {
            goto LABEL_128;
          }

          v147;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_2751E3B2C(v138);
          }

          if (v136 >= v138[2])
          {
            goto LABEL_129;
          }

          v200 = &v138[v136];
          v203 = v138;
          sub_2751DC52C(v193, v193 + 32, v141, (2 * v142) | 1);
          if (v136 >= v208[2])
          {
            goto LABEL_130;
          }

          v150 = v149;
          *(v0 + 88) = sub_2751E8634(v150);
          sub_2751E7968((v0 + 88));
          if (v137)
          {
            MEMORY[0x277C6DB10](v137);
          }

          v151 = *(v0 + 528);

          if (v151 < 0)
          {
            goto LABEL_131;
          }

          v152 = *(v0 + 88);
          v153 = *(v152 + 16);
          v154 = v153 >= *(v0 + 528) ? *(v0 + 528) : *(v152 + 16);
          if (v153)
          {
            break;
          }

          v160 = MEMORY[0x277D84F90];
          v155 = MEMORY[0x277D84F90];
          v161 = *(MEMORY[0x277D84F90] + 16);
          if (v161)
          {
            goto LABEL_83;
          }

LABEL_92:
          v162 = v160;
          v164 = v208;
LABEL_93:
          if (v136 >= v164[2])
          {
            goto LABEL_132;
          }

          v146[4] = v162;

          v171 = v155[2];
          if (v171)
          {
            *(v0 + 112) = v160;
            sub_2751E1304(0, v171, 0);
            v160 = *(v0 + 112);
            v172 = 4;
            v174 = v200;
            v173 = v203;
            while (v136 < v173[2])
            {
              v175 = v155[v172];
              if ((v175 & 0x8000000000000000) != 0)
              {
                goto LABEL_118;
              }

              v176 = v174[4];
              if (v175 >= *(v176 + 16))
              {
                goto LABEL_119;
              }

              v177 = *(v176 + 4 * v175 + 32);
              *(v0 + 112) = v160;
              v179 = *(v160 + 16);
              v178 = *(v160 + 24);
              if (v179 >= v178 >> 1)
              {
                sub_2751E1304((v178 > 1), v179 + 1, 1);
                v174 = v200;
                v173 = v203;
                v160 = *(v0 + 112);
              }

              *(v160 + 16) = v179 + 1;
              *(v160 + 4 * v179 + 32) = v177;
              ++v172;
              if (!--v171)
              {
                goto LABEL_102;
              }
            }

            goto LABEL_117;
          }

LABEL_102:

          if (v136 >= v203[2])
          {
            goto LABEL_133;
          }

          v200[4] = v160;

          v138 = v203;
          v137 = 0;
          v135 = v194;
          ++v136;
          v139 = v208;
          if (v196 == v191)
          {
            goto LABEL_106;
          }
        }

        v192 = v146;
        *(v0 + 96) = MEMORY[0x277D84F90];
        sub_2751E12C4(0, v154, 0);
        v155 = *(v0 + 96);
        v156 = 32;
        do
        {
          if (!v154)
          {
            __break(1u);
            goto LABEL_114;
          }

          v157 = *(v152 + v156);
          *(v0 + 96) = v155;
          v159 = v155[2];
          v158 = v155[3];
          if (v159 >= v158 >> 1)
          {
            sub_2751E12C4((v158 > 1), v159 + 1, 1);
            v155 = *(v0 + 96);
          }

          v155[2] = v159 + 1;
          v155[v159 + 4] = v157;
          v156 += 16;
          --v154;
        }

        while (v154);

        v160 = MEMORY[0x277D84F90];
        v146 = v192;
        v161 = v155[2];
        if (!v161)
        {
          goto LABEL_92;
        }

LABEL_83:
        *(v0 + 104) = v160;
        sub_2751E09A4(0, v161, 0);
        v162 = *(v0 + 104);
        v163 = v155 + 4;
        v164 = v208;
        while (v136 < v164[2])
        {
          v166 = *v163++;
          v165 = v166;
          if ((v166 & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          v167 = v146[4];
          if (v165 >= *(v167 + 16))
          {
            goto LABEL_116;
          }

          v168 = *(v167 + 4 * v165 + 32);
          *(v0 + 104) = v162;
          v170 = *(v162 + 16);
          v169 = *(v162 + 24);
          if (v170 >= v169 >> 1)
          {
            sub_2751E09A4((v169 > 1), v170 + 1, 1);
            v164 = v208;
            v162 = *(v0 + 104);
          }

          *(v162 + 16) = v170 + 1;
          *(v162 + 4 * v170 + 32) = v168;
          if (!--v161)
          {
            v160 = MEMORY[0x277D84F90];
            goto LABEL_93;
          }
        }

LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v138 = *(v0 + 576);
      v139 = *(v0 + 568);
LABEL_106:
      v209 = v139;
      v180 = v138;
      v181 = *(v0 + 560);
      v182 = *(v0 + 536);
      v183 = *(v0 + 496);
      v184 = *(v0 + 440);
      v185 = *(v0 + 408);
      v186 = *(v0 + 368);
      v201 = *(v0 + 216);
      v204 = *(v0 + 488);
      v197 = *(v0 + 208);

      sub_27520B998();
      v187 = sub_27520B8D8();
      v182(v185, v186);
      sub_2751D5E78(v197, &qword_2809AD700, &qword_27520DDD0);
      sub_2751D5E78(v201, &qword_2809AD700, &qword_27520DDD0);
      v190(v204, v184);
      v128 = (v190)(v183, v184);
      if (!__OFADD__(v181, v187))
      {
        *(v0 + 576) = v180;
        *(v0 + 568) = v209;
        *(v0 + 560) = v181 + v187;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v189 = swift_task_alloc();
        *(v0 + 584) = v189;
        *v189 = v0;
        v189[1] = sub_2751E4C9C;
        v131 = *(v0 + 352);
        v132 = *(v0 + 280);
        v128 = *(v0 + 232);
        v129 = 0;
        v130 = 0;
        v133 = AssociatedConformanceWitness;

        return MEMORY[0x282200310](v128, v129, v130, v131, v132, v133);
      }
    }

    __break(1u);
    return MEMORY[0x282200310](v128, v129, v130, v131, v132, v133);
  }

  v4 = *(v0 + 568);
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 568);
    v7 = *(v0 + 448);
    v210 = MEMORY[0x277D84F90];
    sub_2751E12E4(0, v5, 0);
    v9 = 0;
    while (v9 < *(v4 + 16))
    {
      v10 = *(v0 + 136);
      v212[0] = *(v6 + 32 + 8 * v9);
      v8;
      sub_2751E6774(v212, v10, v11, &qword_2809AD1F0, &qword_27520DE80, &qword_2809AD7D0, MEMORY[0x277D2CEA8]);

      v13 = *(v210 + 16);
      v12 = *(v210 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2751E12E4((v12 > 1), v13 + 1, 1);
      }

      ++v9;
      v14 = *(v0 + 464);
      v15 = *(v0 + 440);
      v16 = *(v0 + 448);
      *(v210 + 16) = v13 + 1;
      (*(v16 + 32))(v210 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v14, v15);
      if (v5 == v9)
      {
        goto LABEL_21;
      }
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_21:
  v70 = *(v0 + 576);
  v202 = *(*(v0 + 424) + 56);
  v202(*(v0 + 168), 1, 1, *(v0 + 416));
  sub_27520BA18();
  v206 = v70;
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = *(v0 + 576);
    v73 = *(v0 + 448);
    v211 = MEMORY[0x277D84F90];
    sub_2751E12E4(0, v71, 0);
    v75 = 0;
    v76 = v72 + 32;
    while (v75 < *(v206 + 16))
    {
      v77 = *(v0 + 136);
      v212[0] = *(v76 + 8 * v75);
      v74;
      sub_2751E6774(v212, v77, v78, &qword_2809AD1E0, &qword_27520C9C8, &qword_2809AD710, MEMORY[0x277D2CEB0]);

      v80 = *(v211 + 16);
      v79 = *(v211 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_2751E12E4((v79 > 1), v80 + 1, 1);
      }

      ++v75;
      v82 = *(v0 + 448);
      v81 = *(v0 + 456);
      v83 = *(v0 + 440);
      *(v211 + 16) = v80 + 1;
      (*(v82 + 32))(v211 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v80, v81, v83);
      if (v71 == v75)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_121;
  }

LABEL_27:
  v84 = *(v0 + 560);
  v85 = *(v0 + 528);
  v202(*(v0 + 168), 1, 1, *(v0 + 416));
  sub_27520BA18();
  if (v85 >= v84)
  {
    if (qword_2809AD190 == -1)
    {
LABEL_30:
      v92 = sub_27520BAB8();
      __swift_project_value_buffer(v92, qword_2809B38E8);
      v93 = sub_27520BA98();
      v94 = sub_27520BEF8();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v0 + 560);
        v96 = *(v0 + 128);
        v97 = swift_slowAlloc();
        *v97 = 134218240;
        *(v97 + 4) = v96;
        *(v97 + 12) = 2048;
        *(v97 + 14) = v95;
        _os_log_impl(&dword_2751CF000, v93, v94, "Not enough samples to score with top-k = %ld, target samples = %ld.", v97, 0x16u);
        MEMORY[0x277C6DCC0](v97, -1, -1);
      }

      v98 = *(v0 + 504);
      v100 = *(v0 + 472);
      v99 = *(v0 + 480);
      v101 = *(v0 + 440);
      v102 = *(v0 + 448);

      v103 = *(v102 + 8);
      v103(v100, v101);
      v103(v99, v101);
      v103(v98, v101);

      goto LABEL_33;
    }

LABEL_141:
    swift_once();
    goto LABEL_30;
  }

  v86 = *(v0 + 504);
  v88 = *(v0 + 472);
  v87 = *(v0 + 480);
  v89 = *(v0 + 440);
  v90 = *(v0 + 448);
  v207 = sub_2751E8838(v87, v88, *(v0 + 600));
  v91 = *(v90 + 8);
  v91(v88, v89);
  v91(v87, v89);
  v91(v86, v89);

LABEL_34:

  v104 = *(v0 + 8);

  return v104(v207);
}

uint64_t sub_2751E616C()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[39];
  v4 = v0[40];
  (*(v0[36] + 8))(v0[37], v0[35]);
  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  if (swift_dynamicCast())
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v6 = sub_27520BAB8();
    __swift_project_value_buffer(v6, qword_2809B38E8);
    v7 = sub_27520BA98();
    v8 = sub_27520BED8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2751CF000, v7, v8, "Task canceled at scoring.", v9, 2u);
      MEMORY[0x277C6DCC0](v9, -1, -1);
    }

    v10 = v0[63];
    v11 = v0[55];
    v12 = v0[56];
    v50 = v0[45];
    v13 = v0[40];
    v48 = v0[39];
    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[18];

    (*(v12 + 8))(v10, v11);
    (*(v14 + 8))(v15, v16);
    (*(v13 + 8))(v50, v48);
  }

  else
  {
    v17 = *(v0[40] + 16);
    v17(v0[43], v0[45], v0[39]);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v18 = v0[42];
    v19 = v0[43];
    v20 = v0[39];
    v21 = sub_27520BAB8();
    __swift_project_value_buffer(v21, qword_2809B38E8);
    v17(v18, v19, v20);
    v22 = sub_27520BA98();
    v23 = sub_27520BEF8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[42];
    if (v24)
    {
      v52 = v23;
      v47 = v5;
      v26 = v0[41];
      v27 = v0[39];
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51 = v28;
      *v28 = 138412290;
      v17(v26, v25, v27);
      swift_getAssociatedConformanceWitness();
      v29 = sub_27520C1F8();
      v30 = v0[41];
      if (v29)
      {
        (*(v0[40] + 8))(v0[41], v0[39]);
      }

      else
      {
        v34 = v0[39];
        swift_allocError();
        v47(v35, v30, v34);
      }

      v36 = v0[42];
      v38 = v0[39];
      v37 = v0[40];
      v39 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v37 + 8);
      v33(v36, v38);
      *(v51 + 1) = v39;
      *v49 = v39;
      _os_log_impl(&dword_2751CF000, v22, v52, "Error: %@", v51, 0xCu);
      sub_2751D5E78(v49, &qword_2809AD260, &unk_27520DDE0);
      MEMORY[0x277C6DCC0](v49, -1, -1);
      MEMORY[0x277C6DCC0](v51, -1, -1);
    }

    else
    {
      v31 = v0[39];
      v32 = v0[40];

      v33 = *(v32 + 8);
      v33(v25, v31);
    }

    v40 = v0[63];
    v42 = v0[55];
    v41 = v0[56];
    v43 = v0[45];
    v44 = v0[39];
    v33(v0[43], v44);
    (*(v41 + 8))(v40, v42);
    v33(v43, v44);
  }

  v45 = v0[1];

  return v45(0);
}

uint64_t sub_2751E6774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t *, char *, uint64_t, uint64_t))
{
  v20 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v21 = *a1;
  sub_2751E94D4(a2 + qword_2809B38E0, &v19 - v13, &qword_2809AD448, &qword_27520D460);
  v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v17 = sub_2751E955C(a6, a4, a5);
  return v20(&v21, v14, v16, v17);
}

char *sub_2751E6898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v124 = a4;
  v125 = a2;
  v131 = a3;
  *&v128 = a1;
  v123 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  MEMORY[0x28223BE20](v5 - 8);
  v113 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD6F0, &qword_27520DDC0);
  MEMORY[0x28223BE20](v7 - 8);
  v119 = &v100 - v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7B0, &qword_27520DE48);
  v9 = MEMORY[0x28223BE20](v115);
  v114 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v100 - v11;
  v126 = sub_27520B8B8();
  v130 = *(v126 - 1);
  v12 = MEMORY[0x28223BE20](v126);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v120 = &v100 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD708, &qword_27520DDD8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v100 - v17;
  v19 = sub_27520BA38();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v110 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v112 = &v100 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v100 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v118 = &v100 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v121 = &v100 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v129 = &v100 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v100 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0);
  v122 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v100 - v37;
  v39 = *(v20 + 16);
  v39(&v100 - v37, v125, v19);
  v125 = v36;
  v40 = *(v36 + 48);
  v39(&v38[v40], v131, v19);
  v131 = v38;
  cosineSimilarityTensor(_:_:)(v128, v38, v18);
  v127 = v20;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_2751D5E78(v18, &qword_2809AD708, &qword_27520DDD8);
    v41 = 1;
    v42 = v123;
    v43 = v125;
LABEL_20:
    (*(v122 + 56))(v42, v41, 1, v43);
    return sub_2751D5E78(v131, &qword_2809AD700, &qword_27520DDD0);
  }

  v104 = v40;
  v108 = v27;
  v106 = v39;
  v107 = v20 + 16;
  v44 = v127 + 32;
  v117 = *(v127 + 32);
  v117(v35, v18, v19);
  v45 = v120;
  sub_27520B998();
  v46 = sub_27520B8D8();
  v47 = v19;
  v48 = v124;
  v50 = v130 + 8;
  v49 = *(v130 + 8);
  v51 = v45;
  v52 = v126;
  v49(v51, v126);
  v120 = v46;
  if (v46 >= v48)
  {
    v53 = v48;
  }

  else
  {
    v53 = v46;
  }

  sub_27520B998();
  v54 = sub_27520B8D8();
  v49(v14, v52);
  v130 = v50;
  v105 = v35;
  v102 = v14;
  v101 = v49;
  v109 = v47;
  v103 = v53;
  if (v53 == v54)
  {
    v106(v129, v35, v47);
    sub_27520B998();
    v55 = v121;
    sub_27520B908();
    v56 = v14;
    v57 = v126;
    v49(v56, v126);
    result = v35;
    v59 = v127;
    v60 = v44;
  }

  else
  {
    v61 = v115;
    v62 = v116;
    sub_27520B978();
    v63 = v114;
    sub_2751E94D4(v62, v114, &qword_2809AD7B0, &qword_27520DE48);
    v64 = *(v61 + 48);
    v117(v129, v63, v47);
    v65 = v127;
    (*(v127 + 8))(v63 + v64, v47);
    sub_27520B998();
    v66 = sub_27520B8D8();
    v67 = v14;
    v57 = v126;
    result = (v49)(v67, v126);
    if (v66 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v59 = v65;
    v60 = v44;
    MEMORY[0x28223BE20](result);
    *(&v100 - 2) = v131;
    *(&v100 - 1) = v62;
    sub_2751E3F4C(sub_2751E953C, (&v100 - 4), 0, v66);
    v68 = sub_27520B898();
    (*(*(v68 - 8) + 56))(v119, 1, 1, v68);
    v55 = v121;
    sub_27520BA18();
    sub_2751D5E78(v62, &qword_2809AD7B0, &qword_27520DE48);
    result = v105;
  }

  v69 = v108;
  if (v120 >= v124)
  {
    v82 = v109;
    (*(v59 + 8))(result, v109);
    v83 = v129;
    v84 = v117;
LABEL_19:
    v43 = v125;
    v99 = *(v125 + 48);
    v42 = v123;
    v84(v123, v83, v82);
    v84(v42 + v99, v55, v82);
    v41 = 0;
    goto LABEL_20;
  }

  v70 = (v124 - v103);
  v71 = v109;
  if (__OFSUB__(v124, v103))
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7B8, &unk_27520DE50);
  v72 = swift_allocObject();
  v128 = xmmword_27520D440;
  *(v72 + 16) = xmmword_27520D440;
  *(v72 + 32) = 0;
  *(v72 + 40) = 0;
  *(v72 + 48) = 0;
  *(v72 + 56) = v70;
  sub_27520B928();
  v132[3] = MEMORY[0x277D83A90];
  v132[4] = MEMORY[0x277D2CF38];
  sub_27520B9C8();
  v74 = v59 + 8;
  v73 = *(v59 + 8);
  v73(v69, v71);
  v75 = v118;
  v76 = v129;
  sub_27520B9B8();

  v73(v76, v71);
  __swift_destroy_boxed_opaque_existential_1(v132);
  v117(v76, v75, v71);
  v77 = v102;
  sub_27520B998();
  v78 = sub_27520B8D8();
  v79 = v101;
  result = (v101)(v77, v57);
  v80 = v78 * v70;
  if ((v78 * v70) >> 64 != (v78 * v70) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v80 & 0x8000000000000000) == 0)
  {
    v100 = v60;
    v126 = v73;
    v124 = v74;
    v120 = v70;
    if (v80)
    {
      v81 = sub_27520BCF8();
      *(v81 + 16) = v80;
      memset_pattern16((v81 + 32), &unk_27520DDA0, 4 * v80);
    }

    else
    {
      v81 = MEMORY[0x277D84F90];
    }

    v132[0] = v81;
    sub_2751E94D4(v111 + qword_2809B38E0, v113, &qword_2809AD448, &qword_27520D460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1E0, &qword_27520C9C8);
    sub_2751E955C(&qword_2809AD710, &qword_2809AD1E0, &qword_27520C9C8);
    v85 = v110;
    sub_27520BA48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
    v86 = swift_allocObject();
    *(v86 + 16) = v128;
    sub_27520B998();
    v87 = sub_27520B8D8();
    v88 = v57;
    v79(v77, v57);
    v89 = v120;
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    sub_27520B8C8();
    v90 = v112;
    sub_27520B9F8();
    v79(v77, v88);
    v82 = v109;
    v91 = v126;
    (v126)(v85, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7C0, &qword_27520DE60);
    v92 = *(v127 + 72);
    v93 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v128;
    v95 = v94 + v93;
    v55 = v121;
    v96 = v106;
    v106(v95, v121, v82);
    v96(v95 + v92, v90, v82);
    v97 = sub_27520B898();
    (*(*(v97 - 8) + 56))(v119, 1, 1, v97);
    v98 = v118;
    sub_27520B938();
    v91(v90, v82);
    v91(v55, v82);
    v91(v105, v82);
    v84 = v117;
    v117(v55, v98, v82);
    v83 = v129;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2751E75B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[2] = a4;
  v21[3] = a2;
  v6 = sub_27520BA38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7B0, &qword_27520DE48);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *a1;
  v21[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0) + 48);
  sub_2751E94D4(a3, v13, &qword_2809AD7B0, &qword_27520DE48);
  v15 = *(v11 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7C8, &qword_27520DE68);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D83B88];
  *(v16 + 16) = xmmword_27520DD90;
  v18 = MEMORY[0x277D2CF50];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = v14;
  sub_27520BA58();

  v19 = *(v7 + 8);
  v19(&v13[v15], v6);
  sub_27520BA28();
  v19(v9, v6);
  return (v19)(v13, v6);
}

uint64_t *TensorNNScorer.deinit()
{
  v1 = *v0;
  sub_2751D5E78(v0 + qword_2809B38E0, &qword_2809AD448, &qword_27520D460);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t TensorNNScorer.__deallocating_deinit()
{
  TensorNNScorer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2751E78B8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2751E38EC;

  return sub_2751E42EC(a1, a2, a3);
}

uint64_t sub_2751E7968(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275209598(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7A8, &qword_27520DE40);
      v8 = sub_27520BCF8();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2751E7ABC(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2751E7ABC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_2751F3A50(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_2751E805C((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2751D08B8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_2751D08B8((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_2751E805C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_2751E805C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

void *sub_2751E8258(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_2751E858C(a1, a2);
  v5 = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v8 = v7 - 32;
      if (v7 < 32)
      {
        v8 = v7 - 29;
      }

      v6[2] = v5;
      v6[3] = 2 * (v8 >> 2);
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v9 = v6[3];

  if (v5 < 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  else
  {
    v11 = HIDWORD(v3);
    v12 = v6 + 4;
    v13 = v9 >> 1;
    v14 = a2 >> 63;
    if (!v5)
    {
      goto LABEL_27;
    }

    v13 -= v5;
    while (1)
    {
      v16 = v3 <= v11;
      if (a2 > 0)
      {
        v16 = v3 >= v11;
      }

      if (v16)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (a2 < 0 != ((v3 & 0x80000000) == 0))
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          goto LABEL_65;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_66;
        }

        LODWORD(v15) = v3 + a2;
        if (__OFADD__(v3, a2))
        {
          LODWORD(v15) = v14 ^ 0x7FFFFFFF;
        }

        goto LABEL_14;
      }

      v15 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
        goto LABEL_64;
      }

      if (v15 < 0xFFFFFFFF80000000)
      {
        goto LABEL_67;
      }

      if (v15 > 0x7FFFFFFF)
      {
        break;
      }

LABEL_14:
      *v12++ = v3;
      LODWORD(v3) = v15;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    LODWORD(v3) = v15;
LABEL_27:
    v17 = v3 <= v11;
    if (a2 > 0)
    {
      v17 = v3 >= v11;
    }

    if (!v17)
    {
      v34 = v14 ^ 0x7FFFFFFF;
      while (a2 < 0 != ((v3 & 0x80000000) == 0))
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          goto LABEL_69;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_71;
        }

        LODWORD(v18) = v3 + a2;
        if (!__OFADD__(v3, a2))
        {
          goto LABEL_41;
        }

        LODWORD(v18) = v34;
        if (!v13)
        {
          goto LABEL_42;
        }

        LODWORD(v18) = v34;
LABEL_54:
        v29 = __OFSUB__(v13--, 1);
        if (v29)
        {
          goto LABEL_63;
        }

        *v12++ = v3;
        v30 = v18 <= v11;
        if (a2 > 0)
        {
          v30 = v18 >= v11;
        }

        LODWORD(v3) = v18;
        if (v30)
        {
          goto LABEL_58;
        }
      }

      v18 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
        goto LABEL_68;
      }

      if (v18 < 0xFFFFFFFF80000000)
      {
        goto LABEL_70;
      }

      if (v18 > 0x7FFFFFFF)
      {
        goto LABEL_72;
      }

LABEL_41:
      if (!v13)
      {
LABEL_42:
        v19 = v6[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_73;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
        v22 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v22);
        v24 = v23 - 32;
        if (v23 < 32)
        {
          v24 = v23 - 29;
        }

        v25 = v24 >> 2;
        v22[2] = v21;
        v22[3] = 2 * (v24 >> 2);
        v26 = (v22 + 4);
        v27 = v6[3] >> 1;
        if (v6[2])
        {
          v28 = v6 + 4;
          if (v22 != v6 || v26 >= v28 + 4 * v27)
          {
            memmove(v22 + 4, v28, 4 * v27);
          }

          v6[2] = 0;
        }

        v12 = (v26 + 4 * v27);
        v13 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v6 = v22;
        goto LABEL_54;
      }

      goto LABEL_54;
    }

LABEL_58:
    v31 = v6[3];
    if (v31 >= 2)
    {
      v32 = v31 >> 1;
      v29 = __OFSUB__(v32, v13);
      v33 = v32 - v13;
      if (v29)
      {
        goto LABEL_75;
      }

      v6[2] = v33;
    }

    return v6;
  }

  return result;
}

uint64_t sub_2751E858C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = HIDWORD(a1);
  while (1)
  {
    v6 = a1 <= v4;
    if (a2 > 0)
    {
      v6 = a1 >= v4;
    }

    if (v6)
    {
      return result;
    }

    if (a2 < 0 != a1 >= 0)
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_19;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_20;
      }

      v5 = __OFADD__(a1, a2);
      LODWORD(a1) = a1 + a2;
      if (v5)
      {
        LODWORD(a1) = (a2 >> 63) ^ 0x7FFFFFFF;
      }
    }

    else
    {
      v5 = __OFADD__(a2, a1);
      a1 = a2 + a1;
      if (v5)
      {
        goto LABEL_18;
      }

      if (a1 < 0xFFFFFFFF80000000)
      {
        goto LABEL_21;
      }

      if (a1 > 0x7FFFFFFF)
      {
        __break(1u);
        return result;
      }
    }

    v5 = __OFADD__(result++, 1);
    if (v5)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }
}

void *sub_2751E8634(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 4;
    while (1)
    {
      v7 = *(v6 + v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7A0, &unk_27520FCC0);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        v17 = 16 * v16;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[v17 / 8 + 4])
          {
            memmove(v11 + 4, v2 + 4, v17);
          }

          v2[2] = 0;
        }

        v5 = v15 + v17;
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      v5 += 16;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 < 2)
  {
    return v2;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v3);
  v22 = v21 - v3;
  if (!v19)
  {
    v2[2] = v22;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2751E87A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = sub_27520BCF8();
    v8 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = (v6 + 40);
      do
      {
        *v10++ = v5;
        v7;
        --v9;
      }

      while (v9);
    }

    v7;
    return v8;
  }

  return result;
}

void *sub_2751E8838(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v78) = a3;
  v85 = a2;
  v82 = a1;
  v80 = sub_27520B8B8();
  v3 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27520BA38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = v6[2];
  v17(&v75 - v15, v82, v5);
  v75 = *(v11 + 48);
  v17(&v16[v75], v85, v5);
  sub_2751E94D4(v16, v14, &qword_2809AD700, &qword_27520DDD0);
  v18 = *(v11 + 48);
  v76 = v16;
  v77 = v18;
  v82 = v5;
  v83 = v9;
  v85 = v3;
  v81 = v6;
  if (v78)
  {
    v19 = v79;
    sub_27520B998();
    v20 = v6[1];
    v20(v14, v5);
    sub_27520B8A8();
    v78 = *(v3 + 8);
    v21 = v80;
    v78(v19, v80);
    sub_27520B9A8();

    v20(&v14[v77], v82);
    sub_2751E94D4(v16, v14, &qword_2809AD700, &qword_27520DDD0);
    v22 = *(v11 + 48);
    sub_27520B998();
    v20(&v14[v22], v82);
    sub_27520B8A8();
    v78(v19, v21);
    sub_27520B9A8();

    v78 = v20;
    v20(v14, v82);
    v23 = v84;
    v24 = v19;
    v25 = v21;
  }

  else
  {
    v26 = v6[4];
    v27 = v84;
    v26(v84, v14, v5);
    v28 = v6[1];
    v28(&v14[v77], v5);
    sub_2751E94D4(v16, v14, &qword_2809AD700, &qword_27520DDD0);
    v26(v83, &v14[*(v11 + 48)], v5);
    v78 = v28;
    v28(v14, v5);
    v23 = v27;
    v24 = v79;
    v25 = v80;
  }

  v29 = sub_27520B9D8();
  v30 = *(v29 + 16);
  v31 = v85;
  if (v30)
  {
    v86 = MEMORY[0x277D84F90];
    v32 = v29;
    sub_2751E09A4(0, v30, 0);
    v33 = v32;
    v34 = v86;
    v35 = v86[2];
    v36 = 32;
    do
    {
      v37 = *(v33 + v36);
      v86 = v34;
      v38 = v34[3];
      if (v35 >= v38 >> 1)
      {
        sub_2751E09A4((v38 > 1), v35 + 1, 1);
        v33 = v32;
        v34 = v86;
      }

      v34[2] = v35 + 1;
      *(v34 + v35 + 8) = v37;
      v36 += 4;
      ++v35;
      --v30;
    }

    while (v30);

    v23 = v84;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v39 = sub_27520B9D8();
  v40 = *(v39 + 16);
  if (v40)
  {
    v86 = MEMORY[0x277D84F90];
    v41 = v39;
    sub_2751E12C4(0, v40, 0);
    v42 = v41;
    v43 = v86;
    v44 = v86[2];
    v45 = 32;
    do
    {
      v46 = *(v42 + v45);
      v86 = v43;
      v47 = v43[3];
      if (v44 >= v47 >> 1)
      {
        sub_2751E12C4((v47 > 1), v44 + 1, 1);
        v42 = v41;
        v43 = v86;
      }

      v43[2] = v44 + 1;
      v43[v44 + 4] = v46;
      v45 += 4;
      ++v44;
      --v40;
    }

    while (v40);

    v25 = v80;
    v23 = v84;
    v31 = v85;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  sub_27520B998();
  v48 = sub_27520B8D8();
  v49 = *(v31 + 8);
  v49(v24, v25);
  sub_27520B998();
  v50 = sub_27520B8D8();
  v51 = v25;
  v52 = v50;
  result = (v49)(v24, v51);
  if (v52 < 0)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  if (v52)
  {
    v86 = MEMORY[0x277D84F90];
    result = sub_2751E1284(0, v52, 0);
    v55 = 0;
    v56 = v86;
    v79 = (v43 + 4);
    v80 = (v34 + 4);
    v85 = v52;
    while (1)
    {
      v57 = v55 * v48;
      if ((v55 * v48) >> 64 != (v55 * v48) >> 63)
      {
        break;
      }

      v58 = ++v55 * v48;
      if ((v55 * v48) >> 64 != (v55 * v48) >> 63)
      {
        goto LABEL_52;
      }

      v59 = v58 - v57;
      if (v58 < v57)
      {
        goto LABEL_53;
      }

      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      v60 = v34[2];
      if (v60 < v57 || v60 < v58)
      {
        goto LABEL_55;
      }

      if (v60 == v59)
      {
        result = v54;
        v61 = v34;
      }

      else
      {
        v61 = MEMORY[0x277D84F90];
        if (v58 != v57)
        {
          if (v59 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
            v61 = swift_allocObject();
            v67 = _swift_stdlib_malloc_size(v61);
            v68 = v67 - 32;
            if (v67 < 32)
            {
              v68 = v67 - 29;
            }

            v61[2] = v59;
            v61[3] = 2 * (v68 >> 2);
          }

          result = memcpy(v61 + 4, (v80 + 4 * v57), 4 * v59);
        }
      }

      v62 = v43[2];
      if (v62 < v57 || v62 < v58)
      {
        goto LABEL_56;
      }

      if (v62 == v59)
      {
        result = v54;
        v63 = v43;
      }

      else
      {
        v63 = MEMORY[0x277D84F90];
        if (v58 != v57)
        {
          if (v59 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
            v63 = swift_allocObject();
            v69 = _swift_stdlib_malloc_size(v63);
            v70 = v69 - 32;
            if (v69 < 32)
            {
              v70 = v69 - 25;
            }

            v63[2] = v59;
            v63[3] = 2 * (v70 >> 3);
          }

          result = memcpy(v63 + 4, &v79[8 * v57], 8 * v59);
        }
      }

      v86 = v56;
      v65 = v56[2];
      v64 = v56[3];
      if (v65 >= v64 >> 1)
      {
        result = sub_2751E1284((v64 > 1), v65 + 1, 1);
        v56 = v86;
      }

      v56[2] = v65 + 1;
      v66 = &v56[2 * v65];
      v66[4] = v61;
      v66[5] = v63;
      if (v85 == v55)
      {

        v71 = v82;
        v72 = v78;
        v78(v83, v82);
        v72(v84, v71);
        sub_2751D5E78(v76, &qword_2809AD700, &qword_27520DDD0);
        return v56;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v73 = v82;
  v74 = v78;
  v78(v83, v82);
  v74(v23, v73);
  sub_2751D5E78(v76, &qword_2809AD700, &qword_27520DDD0);
  return MEMORY[0x277D84F90];
}

unint64_t sub_2751E9170()
{
  result = qword_2809AD718[0];
  if (!qword_2809AD718[0])
  {
    sub_27520B8B8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD718);
  }

  return result;
}

uint64_t sub_2751E91C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2751E9230(uint64_t a1)
{
  sub_2751E947C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TensorNNScorer.score(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2751E38EC;

  return v10(a1, a2, a3);
}

void sub_2751E947C(uint64_t a1)
{
  if (!qword_2809AD500)
  {
    sub_27520B8E8();
    v1 = sub_27520BF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2809AD500);
    }
  }
}

uint64_t sub_2751E94D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2751E955C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2751E95B0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v2 = 0xE900000000000064;
    v3 = 0xEE0065636E617473;
    if (a1 == 2)
    {
      v5 = 0x657261757153324CLL;
    }

    else
    {
      v5 = 0x6944656E69736F43;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 0xE200000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 12876;
    }

    else
    {
      v5 = 12620;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 12620;
  v8 = 0x657261757153324CLL;
  v9 = 0xE900000000000064;
  if (a2 != 2)
  {
    v8 = 0x6944656E69736F43;
    v9 = 0xEE0065636E617473;
  }

  if (a2)
  {
    v7 = 12876;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_27520C218();
  }

  return v12 & 1;
}

uint64_t sub_2751E976C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73726579616CLL;
  }

  else
  {
    v2 = 0x63697274656DLL;
  }

  if (*a2)
  {
    v3 = 0x73726579616CLL;
  }

  else
  {
    v3 = 0x63697274656DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_27520C218();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2751E97EC()
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751E985C(uint64_t a1)
{
  sub_27520BBD8();
}

uint64_t sub_2751E98B0(uint64_t a1)
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751E991C@<X0>(char *a2@<X8>)
{
  v3 = sub_27520C088();

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

void sub_2751E997C(uint64_t *a1@<X8>)
{
  v2 = 0x63697274656DLL;
  if (*v1)
  {
    v2 = 0x73726579616CLL;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_2751E99AC()
{
  if (*v0)
  {
    return 0x73726579616CLL;
  }

  else
  {
    return 0x63697274656DLL;
  }
}

uint64_t sub_2751E99D8@<X0>(char *a3@<X8>)
{
  v4 = sub_27520C088();

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

uint64_t sub_2751E9A3C(uint64_t a1)
{
  v2 = sub_2751ED188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751E9A78(uint64_t a1)
{
  v2 = sub_2751ED188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HNSWIndex.__allocating_init(points:metric:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = MEMORY[0x277D84F90];
  *(v4 + 24) = MEMORY[0x277D84F90];
  *(v4 + 32) = v6;
  *(v4 + 16) = v5;
  swift_beginAccess();
  *(v4 + 24) = a1;
  v8 = v7;
  v9 = sub_2751E9C1C(v8, 4, 16);

  swift_beginAccess();
  *(v4 + 32) = v9;
  return v4;
}

uint64_t HNSWIndex.init(points:metric:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 24) = MEMORY[0x277D84F90];
  *(v2 + 32) = v5;
  *(v2 + 16) = v4;
  swift_beginAccess();
  *(v2 + 24) = a1;
  v7 = v6;
  v8 = sub_2751E9C1C(v7, 4, 16);

  swift_beginAccess();
  *(v2 + 32) = v8;

  return v2;
}

uint64_t sub_2751E9C1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3 + 0x4000000000000000 < 0)
  {
    goto LABEL_300;
  }

  v3 = a3;
  v5 = log(a3);
  v235 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v6 = v5;
  v225 = v3;
  if (a2)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F98];
    while (1)
    {
      v234[0] = 0x5F726579616CLL;
      v234[1] = 0xE600000000000000;
      v233[0] = v7;
      v9 = sub_27520C1E8();
      MEMORY[0x277C6D100](v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD808, &qword_27520DE98);
      v10 = swift_allocObject();
      v10[5] = v8;
      v11 = sub_2751EFB88(MEMORY[0x277D84F90]);
      v10[4] = v11;
      v12 = (v10 + 4);
      v10[2] = 0x5F726579616CLL;
      v10[3] = 0xE600000000000000;
      if (v11[2])
      {
        sub_2751EEAA4(0);
        if (v13)
        {
          goto LABEL_18;
        }
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v233[0] = *v12;
      v15 = v233[0];
      *v12 = 0x8000000000000000;
      v16 = sub_2751EEAA4(0);
      v18 = v15[2];
      v19 = (v17 & 1) == 0;
      v132 = __OFADD__(v18, v19);
      v20 = v18 + v19;
      if (v132)
      {
        goto LABEL_284;
      }

      v21 = v17;
      if (v15[3] < v20)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v24 = v16;
      sub_2751EF408();
      v16 = v24;
      v23 = v233[0];
      if ((v21 & 1) == 0)
      {
LABEL_15:
        v23[(v16 >> 6) + 8] |= 1 << v16;
        *(v23[6] + 8 * v16) = 0;
        *(v23[7] + 8 * v16) = MEMORY[0x277D84F90];
        v25 = v23[2];
        v132 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v132)
        {
          goto LABEL_286;
        }

        v23[2] = v26;
        goto LABEL_17;
      }

LABEL_13:
      *(v23[7] + 8 * v16) = MEMORY[0x277D84F90];

LABEL_17:
      *v12 = v23;
      swift_endAccess();
LABEL_18:

      MEMORY[0x277C6D1D0](v27);
      if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27520BCD8();
      }

      v7 = (v7 + 1);
      sub_27520BD18();

      if (a2 == v7)
      {
        v230 = v235;
        v3 = v225;
        goto LABEL_23;
      }
    }

    sub_2751EEC4C(v20, isUniquelyReferenced_nonNull_native);
    v16 = sub_2751EEAA4(0);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_311;
    }

LABEL_12:
    v23 = v233[0];
    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v230 = MEMORY[0x277D84F90];
LABEL_23:
  v28 = *(a1 + 16);
  if (v28 == 1)
  {
    return v230;
  }

  if (v28)
  {
    v232 = v230 & 0xC000000000000001;
    v215 = a1 + 32;
    v226 = v230 + 32;
    v29 = v230 >> 62;
    v30 = 1.0 / v6;
    v31 = 1;
    v213 = *(a1 + 16);
LABEL_26:
    if (v31 == v28)
    {
      goto LABEL_303;
    }

    if (v29)
    {
      v32 = sub_27520C038();
    }

    else
    {
      v32 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      goto LABEL_304;
    }

    do
    {
      v234[0] = 0;
      MEMORY[0x277C6DCE0](v234, 8);
    }

    while ((0x20000000000001 * v234[0]) < 0x1FFFFFFFFFF801);
    v34 = floor(-(log(vcvtd_n_f64_u64((v234[0] * 0x20000000000001uLL) >> 64, 0x35uLL) + 0.0) * v30));
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_305;
    }

    if (v34 <= -9.22337204e18)
    {
      goto LABEL_306;
    }

    if (v34 >= 9.22337204e18)
    {
      goto LABEL_307;
    }

    v35 = v33 & ~(v33 >> 63);
    v36 = v34;
    if (v35 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    v222 = v31;
    if (v35 > v34)
    {
      v38 = *(v215 + 8 * v31);
      v39 = &unk_2883F8BE0;
      while (1)
      {
        if (v232)
        {
          v41 = MEMORY[0x277C6D4B0](v35, v230);
        }

        else
        {
          if (v35 < 0)
          {
            goto LABEL_289;
          }

          if (v35 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

          v41 = *(v230 + 8 * v35 + 32);
        }

        v42;
        v43 = sub_2751EB36C(a1, v41, v38, v39, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
        v39 = swift_allocObject();
        *(v39 + 1) = xmmword_27520DD90;
        if (*(v43 + 2))
        {
          v40 = *(v43 + 4);
        }

        else
        {
          v40 = 0;
        }

        --v35;

        *(v39 + 4) = v40;
        if (v37 >= v35)
        {
          goto LABEL_50;
        }
      }
    }

    v39 = &unk_2883F8BE0;
LABEL_50:
    if (v36 < 0)
    {
      v44 = v222;
      goto LABEL_267;
    }

    v44 = v222;
    if (v3 < 0)
    {
      goto LABEL_308;
    }

    v45 = v37;
LABEL_53:
    v227 = v45;
    if (v232)
    {
      v46 = MEMORY[0x277C6D4B0]();
    }

    else
    {
      if (v45 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_309;
      }

      v46 = *(v226 + 8 * v45);
    }

    v48 = *(v215 + 8 * v44);
    v47;
    v49 = sub_2751EB36C(a1, v46, v48, v39, 100);

    v51 = *(v49 + 2);
    if (v51 >= v3)
    {
      v51 = v3;
    }

    if (!v3)
    {
      v51 = 0;
    }

    v218 = v51;
    v217 = v49;
    if (v232)
    {
      v50;
      v52 = v227;
      v53 = MEMORY[0x277C6D4B0](v227, v230);
    }

    else
    {
      v52 = v227;
      if (v227 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_310;
      }

      v53 = *(v226 + 8 * v227);
      v50;
    }

    v44 = v222;
    v234[0] = v222;
    (*(*v53 + 216))(v234);

    if (!v218)
    {
      v204 = v217;
      goto LABEL_257;
    }

    v216 = v3 << (v52 == 0);
    v54;
    v55 = 0;
    while (1)
    {
      v56 = &v217[16 * v55 + 32];
      v231 = *v56;
      v57 = *(v56 + 8);
      if (v232)
      {
        MEMORY[0x277C6D4B0](v52, v230);
      }

      else
      {
        if (v52 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_296;
        }
      }

      sub_2751ECD1C(v44, v231, v57);

      if (v232)
      {
        MEMORY[0x277C6D4B0](v52, v230);
      }

      else
      {
        if (v52 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_297;
        }
      }

      sub_2751ECD1C(v231, v44, v57);

      if (v232)
      {
        v58 = MEMORY[0x277C6D4B0](v52, v230);
      }

      else
      {
        if (v52 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_298;
        }

        v58 = *(v226 + 8 * v52);
      }

      swift_beginAccess();
      v59 = *(v58 + 32);
      if (*(v59 + 16) && (v60 = sub_2751EEAA4(v231), (v62 & 1) != 0))
      {
        v223 = v55;
        v63 = *(*(v59 + 56) + 8 * v60);
        v64 = *(v63 + 16);
        if (v64)
        {
          v61;
          swift_beginAccess();
          v65 = 32;
          v66 = MEMORY[0x277D84F90];
          do
          {
            v68 = *(v58 + 40);
            if (*(v68 + 16))
            {
              v69 = *(v63 + v65);
              v70 = sub_2751EEAE8(v231, v69);
              if (v71)
              {
                v72 = *(*(v68 + 56) + 4 * v70);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = sub_2751D0E78(0, *(v66 + 2) + 1, 1, v66);
                }

                v74 = *(v66 + 2);
                v73 = *(v66 + 3);
                if (v74 >= v73 >> 1)
                {
                  v66 = sub_2751D0E78((v73 > 1), v74 + 1, 1, v66);
                }

                *(v66 + 2) = v74 + 1;
                v67 = &v66[16 * v74];
                *(v67 + 4) = v69;
                *(v67 + 10) = v72;
              }
            }

            v65 += 8;
            --v64;
          }

          while (v64);

          v3 = v225;
        }

        else
        {
          v66 = MEMORY[0x277D84F90];
        }

        v44 = v222;
        v55 = v223;
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
      }

      if (*(v66 + 2) > v3)
      {
        break;
      }

      v52 = v227;
LABEL_68:
      if (++v55 == v218)
      {

        v204 = v217;
LABEL_257:
        v205 = v52 - 1;
        v206 = *(v204 + 2);
        if (v206)
        {
          v234[0] = MEMORY[0x277D84F90];
          sub_2751E12C4(0, v206, 0);
          v207 = v217;
          v39 = v234[0];
          v208 = *(v234[0] + 16);
          v209 = 32;
          do
          {
            v210 = *&v207[v209];
            v234[0] = v39;
            v211 = *(v39 + 3);
            if (v208 >= v211 >> 1)
            {
              sub_2751E12C4((v211 > 1), v208 + 1, 1);
              v207 = v217;
              v39 = v234[0];
            }

            *(v39 + 2) = v208 + 1;
            *(v39 + v208 + 4) = v210;
            v209 += 16;
            ++v208;
            --v206;
          }

          while (v206);
          swift_bridgeObjectRelease_n();
          v3 = v225;
          v44 = v222;
        }

        else
        {
          swift_bridgeObjectRelease_n();
          v39 = MEMORY[0x277D84F90];
        }

        v45 = v205;
        if ((v205 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_267:
        v31 = v44 + 1;

        v29 = v230 >> 62;
        v28 = v213;
        if (v31 == v213)
        {
          return v230;
        }

        goto LABEL_26;
      }
    }

    v224 = v55;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v229 = v66;
    }

    else
    {
      v229 = sub_2751E3B68(v66);
    }

    v75 = MEMORY[0x277D84F90];
    v76 = *(v229 + 2);
    v77 = (v229 + 32);
    v78 = sub_27520C1D8();
    if (v78 >= v76)
    {
      v88 = v216;
      if (v76 >= 2)
      {
        v89 = -1;
        v90 = v229 + 32;
        for (i = 1; i != v76; ++i)
        {
          v92 = v89;
          v93 = v90;
          do
          {
            v79.n128_u32[0] = *(v93 + 6);
            if (v79.n128_f32[0] >= *(v93 + 2))
            {
              break;
            }

            v94 = *(v93 + 2);
            *(v93 + 1) = *v93;
            *v93 = v94;
            *(v93 + 2) = v79.n128_u32[0];
            v93 -= 16;
            v95 = __CFADD__(v92++, 1);
          }

          while (!v95);
          v90 += 16;
          --v89;
        }
      }

LABEL_201:
      if ((v88 & 0x8000000000000000) == 0)
      {
        v164 = *(v229 + 2);
        if (v164 >= v88)
        {
          v165 = v88;
        }

        else
        {
          v165 = *(v229 + 2);
        }

        if (v225)
        {
          v166 = v165;
        }

        else
        {
          v166 = 0;
        }

        if (v164)
        {
          v234[0] = v75;
          v79;
          sub_2751E12C4(0, v164, 0);
          v167 = v234[0];
          v168 = *(v234[0] + 16);
          do
          {
            v170 = *v77;
            v77 += 2;
            v169 = v170;
            v234[0] = v167;
            v171 = v167[3];
            v172 = v168 + 1;
            if (v168 >= v171 >> 1)
            {
              sub_2751E12C4((v171 > 1), v168 + 1, 1);
              v172 = v168 + 1;
              v167 = v234[0];
            }

            v167[2] = v172;
            v167[v168 + 4] = v169;
            v168 = v172;
            --v164;
          }

          while (v164);
        }

        else
        {
          v79;
          v172 = *(v75 + 16);
          v167 = v75;
        }

        v234[0] = MEMORY[0x277C6D350](v172, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
        v173 = v167[2];
        v3 = v225;
        if (v173)
        {
          v174 = v167 + 4;
          do
          {
            v175 = *v174++;
            sub_2751EDDAC(v233, v175);
            --v173;
          }

          while (v173);
        }

        v176 = v234[0];
        if (v166)
        {
          v234[0] = v75;
          sub_2751E12C4(0, v166, 0);
          v177 = v234[0];
          v178 = 32;
          v179 = v229;
          do
          {
            v180 = *&v179[v178];
            v234[0] = v177;
            v182 = *(v177 + 16);
            v181 = *(v177 + 24);
            if (v182 >= v181 >> 1)
            {
              v183 = v179;
              sub_2751E12C4((v181 > 1), v182 + 1, 1);
              v179 = v183;
              v177 = v234[0];
            }

            *(v177 + 16) = v182 + 1;
            *(v177 + 8 * v182 + 32) = v180;
            v178 += 16;
            --v166;
          }

          while (v166);

          v3 = v225;
        }

        else
        {

          v177 = v75;
        }

        v184 = sub_2751EE3C0(v177, v176);

        v185 = 0;
        v186 = 1 << *(v184 + 32);
        if (v186 < 64)
        {
          v187 = ~(-1 << v186);
        }

        else
        {
          v187 = -1;
        }

        v188 = v187 & *(v184 + 56);
        v189 = (v186 + 63) >> 6;
        v52 = v227;
        if (!v188)
        {
          goto LABEL_231;
        }

        do
        {
          while (1)
          {
LABEL_235:
            v191 = *(*(v184 + 48) + ((v185 << 9) | (8 * __clz(__rbit64(v188)))));
            if (v232)
            {
              v192 = MEMORY[0x277C6D4B0](v52, v230);
            }

            else
            {
              if (v52 >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_295;
              }

              v192 = *(v226 + 8 * v52);
            }

            v188 &= v188 - 1;
            swift_beginAccess();
            v193 = *(v192 + 32);
            if (*(v193 + 16))
            {
              sub_2751EEAA4(v231);
              if (v194)
              {
                sub_2751EEAA4(v191);
                if (v195)
                {
                  v196 = sub_2751EEAA4(v231);
                  if (v197)
                  {
                    break;
                  }
                }
              }
            }

            v52 = v227;
            if (!v188)
            {
              goto LABEL_231;
            }
          }

          v198 = *(*(v193 + 56) + 8 * v196);
          v199 = *(v198 + 16);
          if (v199)
          {
            v200 = 0;
            v201 = v198 + 32;
            while (*(v201 + 8 * v200) != v191)
            {
              if (v199 == ++v200)
              {
                goto LABEL_251;
              }
            }

            v221 = sub_2751ECB80(v234);
            v202 = sub_2751ECBD0(v233, v231);
            if (*v203)
            {
              sub_2751ECC94(v200);
            }

            (v202)(v233, 0);
            (v221)(v234, 0);
          }

LABEL_251:

          v3 = v225;
          v52 = v227;
        }

        while (v188);
LABEL_231:
        while (1)
        {
          v190 = v185 + 1;
          if (__OFADD__(v185, 1))
          {
            goto LABEL_282;
          }

          if (v190 >= v189)
          {

            v44 = v222;
            v55 = v224;
            goto LABEL_68;
          }

          v188 = *(v184 + 56 + 8 * v190);
          ++v185;
          if (v188)
          {
            v185 = v190;
            goto LABEL_235;
          }
        }
      }

LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v80 = v78;
    if (v76 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD848, &qword_27520E0B0);
      v83 = sub_27520BCF8();
      *(v83 + 16) = v76 >> 1;
      v81 = v75;
      v82 = (v83 + 32);
    }

    else
    {
      v81 = v75;
      v82 = (v75 + 32);
      v83 = v81;
      if (!v76)
      {
        v214 = v81;
LABEL_104:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2751F3A50(v81);
        }

        v234[0] = v81;
        v84 = *(v81 + 2);
        if (v84 >= 2)
        {
          do
          {
            v85 = *&v81[16 * v84];
            v86 = *&v81[16 * v84 + 24];
            sub_2751EDBB0(&v77[2 * v85], &v77[2 * *&v81[16 * v84 + 16]], &v77[2 * v86], v82);
            if (v86 < v85)
            {
              goto LABEL_287;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_2751F3A50(v81);
            }

            if (v84 - 2 >= *(v81 + 2))
            {
              goto LABEL_288;
            }

            v87 = &v81[16 * v84];
            *v87 = v85;
            *(v87 + 1) = v86;
            v234[0] = v81;
            sub_2751F39C4(v84 - 1);
            v81 = v234[0];
            v84 = *(v234[0] + 16);
          }

          while (v84 > 1);
        }

        *(v214 + 16) = 0;

        v75 = MEMORY[0x277D84F90];
        v88 = v216;
        goto LABEL_201;
      }
    }

    v219 = v80;
    v96 = 0;
    v220 = v229 + 40;
    v214 = v83;
    while (1)
    {
      v97 = v96++;
      if (v96 >= v76)
      {
        goto LABEL_137;
      }

      v98 = *&v220[16 * v96];
      v99 = 16 * v97;
      v100 = *&v220[16 * v97];
      v101 = v97 + 2;
      v102 = &v229[16 * v97 + 72];
      do
      {
        if (v76 == v101)
        {
          v96 = v76;
          if (v98 >= v100)
          {
            goto LABEL_137;
          }

          goto LABEL_131;
        }

        v103 = *v102 >= *(v102 - 4);
        ++v101;
        v102 += 4;
      }

      while ((((v98 < v100) ^ v103) & 1) != 0);
      v96 = v101 - 1;
      if (v98 >= v100)
      {
        goto LABEL_137;
      }

LABEL_131:
      if (v96 < v97)
      {
        break;
      }

      if (v97 < v96)
      {
        v104 = 16 * v96;
        v105 = v96;
        v106 = v97;
        do
        {
          if (v106 != --v105)
          {
            v107 = &v229[v104];
            v108 = *&v229[v99 + 32];
            v109 = *&v229[v99 + 40];
            *&v229[v99 + 32] = *&v229[v104 + 16];
            *(v107 + 2) = v108;
            *(v107 + 6) = v109;
          }

          ++v106;
          v104 -= 16;
          v99 += 16;
        }

        while (v106 < v105);
      }

LABEL_137:
      if (v96 < v76)
      {
        if (__OFSUB__(v96, v97))
        {
          goto LABEL_291;
        }

        if (v96 - v97 < v219)
        {
          v110 = v97 + v219;
          if (__OFADD__(v97, v219))
          {
            goto LABEL_293;
          }

          if (v110 >= v76)
          {
            v110 = v76;
          }

          if (v110 < v97)
          {
            goto LABEL_294;
          }

          if (v96 != v110)
          {
            v111 = v97 - v96;
            v112 = &v229[16 * v96 + 24];
            do
            {
              v113 = v112;
              v114 = v111;
              do
              {
                v115 = *(v113 + 16);
                if (v115 >= *v113)
                {
                  break;
                }

                v116 = *(v113 + 8);
                *(v113 + 8) = *(v113 - 8);
                *(v113 - 8) = v116;
                *v113 = v115;
                v113 -= 16;
                v95 = __CFADD__(v114++, 1);
              }

              while (!v95);
              ++v96;
              --v111;
              v112 += 16;
            }

            while (v96 != v110);
            v96 = v110;
          }
        }
      }

      if (v96 < v97)
      {
        goto LABEL_285;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_2751D08B8(0, *(v81 + 2) + 1, 1, v81);
      }

      v118 = *(v81 + 2);
      v117 = *(v81 + 3);
      v119 = v118 + 1;
      if (v118 >= v117 >> 1)
      {
        v81 = sub_2751D08B8((v117 > 1), v118 + 1, 1, v81);
      }

      *(v81 + 2) = v119;
      v120 = &v81[16 * v118];
      *(v120 + 4) = v97;
      *(v120 + 5) = v96;
      if (v118)
      {
        while (1)
        {
          v121 = v119 - 1;
          if (v119 >= 4)
          {
            break;
          }

          if (v119 == 3)
          {
            v122 = *(v81 + 4);
            v123 = *(v81 + 5);
            v132 = __OFSUB__(v123, v122);
            v124 = v123 - v122;
            v125 = v132;
LABEL_172:
            if (v125)
            {
              goto LABEL_274;
            }

            v138 = &v81[16 * v119];
            v140 = *v138;
            v139 = *(v138 + 1);
            v141 = __OFSUB__(v139, v140);
            v142 = v139 - v140;
            v143 = v141;
            if (v141)
            {
              goto LABEL_277;
            }

            v144 = &v81[16 * v121 + 32];
            v146 = *v144;
            v145 = *(v144 + 1);
            v132 = __OFSUB__(v145, v146);
            v147 = v145 - v146;
            if (v132)
            {
              goto LABEL_280;
            }

            if (__OFADD__(v142, v147))
            {
              goto LABEL_281;
            }

            if (v142 + v147 >= v124)
            {
              if (v124 < v147)
              {
                v121 = v119 - 2;
              }

              goto LABEL_193;
            }

            goto LABEL_186;
          }

          v148 = &v81[16 * v119];
          v150 = *v148;
          v149 = *(v148 + 1);
          v132 = __OFSUB__(v149, v150);
          v142 = v149 - v150;
          v143 = v132;
LABEL_186:
          if (v143)
          {
            goto LABEL_276;
          }

          v151 = &v81[16 * v121];
          v153 = *(v151 + 4);
          v152 = *(v151 + 5);
          v132 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v132)
          {
            goto LABEL_279;
          }

          if (v154 < v142)
          {
            goto LABEL_123;
          }

LABEL_193:
          v159 = v121 - 1;
          if (v121 - 1 >= v119)
          {
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
            goto LABEL_290;
          }

          v160 = *&v81[16 * v159 + 32];
          v161 = &v81[16 * v121 + 32];
          v162 = *(v161 + 1);
          sub_2751EDBB0(&v77[2 * v160], &v77[2 * *v161], &v77[2 * v162], v82);
          if (v162 < v160)
          {
            goto LABEL_270;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_2751F3A50(v81);
          }

          if (v159 >= *(v81 + 2))
          {
            goto LABEL_271;
          }

          v163 = &v81[16 * v159];
          *(v163 + 4) = v160;
          *(v163 + 5) = v162;
          v234[0] = v81;
          sub_2751F39C4(v121);
          v81 = v234[0];
          v119 = *(v234[0] + 16);
          if (v119 <= 1)
          {
            goto LABEL_123;
          }
        }

        v126 = &v81[16 * v119 + 32];
        v127 = *(v126 - 64);
        v128 = *(v126 - 56);
        v132 = __OFSUB__(v128, v127);
        v129 = v128 - v127;
        if (v132)
        {
          goto LABEL_272;
        }

        v131 = *(v126 - 48);
        v130 = *(v126 - 40);
        v132 = __OFSUB__(v130, v131);
        v124 = v130 - v131;
        v125 = v132;
        if (v132)
        {
          goto LABEL_273;
        }

        v133 = &v81[16 * v119];
        v135 = *v133;
        v134 = *(v133 + 1);
        v132 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v132)
        {
          goto LABEL_275;
        }

        v132 = __OFADD__(v124, v136);
        v137 = v124 + v136;
        if (v132)
        {
          goto LABEL_278;
        }

        if (v137 >= v129)
        {
          v155 = &v81[16 * v121 + 32];
          v157 = *v155;
          v156 = *(v155 + 1);
          v132 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v132)
          {
            goto LABEL_283;
          }

          if (v124 < v158)
          {
            v121 = v119 - 2;
          }

          goto LABEL_193;
        }

        goto LABEL_172;
      }

LABEL_123:
      if (v96 >= v76)
      {
        goto LABEL_104;
      }
    }

LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);

  *(v214 + 16) = 0;

  __break(1u);
LABEL_311:
  result = sub_27520C258();
  __break(1u);
  return result;
}

uint64_t HNSWIndex.search(query:k:ef:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v11 = *(v3 + 4);
  if (v11 >> 62)
  {
LABEL_32:
    v29 = sub_27520C038();
    v13 = v29 - 1;
    if (!__OFSUB__(v29, 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v12 - 1;
    if (!__OFSUB__(v12, 1))
    {
LABEL_3:
      v31 = a3;
      v32 = a2;
      v14 = v13 & ~(v13 >> 63);
      swift_beginAccess();
      v6 = 0;
      a3 = 0;
      v4 = &qword_2809AD1A8;
      v5 = &unk_27520DD60;
      v33 = xmmword_27520DD90;
      while (1)
      {
        a2 = v14 - 1;
        if (v14 <= 1)
        {
          if ((v14 != 1) | a3 & 1)
          {
            v4 = *(v3 + 3);
            swift_beginAccess();
            v5 = *(v3 + 4);
            if ((v5 & 0xC000000000000001) != 0)
            {
              goto LABEL_35;
            }

            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v21 = *(v5 + 32);
              v10;

              goto LABEL_18;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          a3 = 1;
          a2 = 1;
        }

        v15 = *(v3 + 3);
        swift_beginAccess();
        v17 = *(v3 + 4);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v16;
          v18 = MEMORY[0x277C6D4B0](v14, v17);
        }

        else
        {
          if (v14 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v18 = *(v17 + 8 * v14 + 32);
          v16;
        }

        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_27520DD90;
        *(inited + 32) = v6;
        v20 = sub_2751EB36C(v15, v18, a1, inited, 1);

        swift_setDeallocating();
        if (*(v20 + 2))
        {
          v6 = *(v20 + 4);
        }

        else
        {
          v6 = 0;
        }

        v14 = a2;
      }
    }
  }

  __break(1u);
LABEL_35:
  v10;
  v21 = MEMORY[0x277C6D4B0](0, v5);
LABEL_18:
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  v22 = swift_initStackObject();
  *(v22 + 16) = v33;
  *(v22 + 32) = v6;
  v3 = sub_2751EB36C(v4, v21, a1, v22, v31);

  swift_setDeallocating();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v23 = *(v3 + 2);
  if (v23 >= v32)
  {
    v23 = v32;
  }

  v24 = 2 * v23;
  if (v32)
  {
    a2 = v24 + 1;
  }

  else
  {
    a2 = 1;
  }

  sub_27520C228();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);

  if (v26 != a2 >> 1)
  {
LABEL_38:
    swift_unknownObjectRelease();
    sub_2751ED0B8(v3, (v3 + 32), 0, a2);
    v27 = v30;
    goto LABEL_29;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v27)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_29:
    swift_unknownObjectRelease();
  }

  return v27;
}

char *sub_2751EB36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(a4 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v119[0] = MEMORY[0x277D84F90];
    sub_2751E1264(0, v8, 0);
    v9 = v119[0];
    v12 = *(v5 + 16);
    v13 = (a4 + 32);
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v17 = *v13++;
      v16 = v17;
      if (v17 >= v15)
      {
        goto LABEL_116;
      }

      v18 = off_2883F9B70[v12];
      v19 = *(v14 + 8 * v16);
      v11;
      v20 = (v18)(a3, v19);

      v119[0] = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2751E1264((v21 > 1), v22 + 1, 1);
        v9 = v119[0];
      }

      *(v9 + 16) = v22 + 1;
      v23 = v9 + 16 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v20;
      --v8;
    }

    while (v8);
    v24 = a5;
    v6 = v106;
  }

  else
  {
    v24 = a5;
  }

  v121 = v9;
  v8 = 0;
  sub_2751EC3D4(&v121, sub_2751E3B54);
  v26 = v121;
  v27 = *(v121 + 16);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD228, &unk_27520CA40);
    v28 = swift_allocObject();
    v29 = _swift_stdlib_malloc_size(v28);
    v30 = v29 - 40;
    if (v29 < 40)
    {
      v30 = v29 - 25;
    }

    v28[2] = v30 >> 4;
    v28[3] = 0;
    v28[4] = 0;
    sub_2751D3B28(v28 + 2, v28 + 5, v27, v26);
  }

  else
  {
    v25;
    v28 = *sub_27520BA78();
  }

  v32 = a1;
  v120 = v28;
  v33 = v31;
  v34 = sub_2751EFC90(v33);

  v35 = v28[3];
  if (!v35)
  {
LABEL_104:

    return v26;
  }

  while (1)
  {
    if (v35 < 1)
    {
      goto LABEL_117;
    }

    v36 = v28[4];
    v37 = v28[2];
    if (v36 < v37)
    {
      v37 = 0;
    }

    v38 = &v28[2 * (v36 - v37)];
    v39 = *(v38 + 5);
    v40 = v38[12];
    v41 = *(v26 + 2);
    if (v41)
    {
      v42 = *&v26[16 * v41 + 24];
      v28 = v120;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_23;
      }

LABEL_22:
      sub_2751D2528();
      v28 = v120;
      goto LABEL_23;
    }

    v28 = v120;
    v42 = INFINITY;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    v43 = v28[4];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_118;
    }

    v46 = v28[3];
    if (v45 >= v28[2])
    {
      v45 = 0;
    }

    v28[4] = v45;
    if (__OFSUB__(v46, 1))
    {
      break;
    }

    v28[3] = v46 - 1;
    if (v42 < v40)
    {
      goto LABEL_104;
    }

    swift_beginAccess();
    v47 = *(a2 + 32);
    if (*(v47 + 16) && (v48 = sub_2751EEAA4(v39), (v50 & 1) != 0))
    {
      v51 = *(*(v47 + 56) + 8 * v48);
      v49;
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    v111 = *(v51 + 16);
    if (v111)
    {
      v52 = 0;
      v109 = v51;
      v110 = v51 + 32;
      while (1)
      {
        if (v52 >= *(v51 + 16))
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        v53 = *(v110 + 8 * v52);
        if (*(v34 + 2))
        {
          v54 = sub_27520C268();
          v55 = -1 << v34[32];
          v56 = v54 & ~v55;
          if ((*&v34[((v56 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v56))
          {
            v57 = ~v55;
            while (*(*(v34 + 6) + 8 * v56) != v53)
            {
              v56 = (v56 + 1) & v57;
              if (((*&v34[((v56 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v56) & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            goto LABEL_35;
          }
        }

LABEL_42:
        v114 = v52;
        v58 = sub_27520C268();
        v60 = -1 << v34[32];
        v61 = v58 & ~v60;
        if ((*&v34[((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v61))
        {
          v62 = ~v60;
          while (*(*(v34 + 6) + 8 * v61) != v53)
          {
            v61 = (v61 + 1) & v62;
            if (((*&v34[((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v61) & 1) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
LABEL_46:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117 = v34;
          sub_2751EE0B0(v53, v61, isUniquelyReferenced_nonNull_native);
          v34 = v117;
        }

        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_108;
        }

        if (v53 >= *(v32 + 16))
        {
          goto LABEL_109;
        }

        v113 = v34;
        v64 = off_2883F9B70[*(v6 + 16)];
        v65 = *(a1 + 32 + 8 * v53);
        v59;
        v66 = (v64)(a3, v65);

        if (v66 >= v42 && *(v26 + 2) >= v24)
        {
          v34 = v113;
          v52 = v114;
          v51 = v109;
          goto LABEL_35;
        }

        v67 = v28[3];
        v68 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_110;
        }

        v69 = v120;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        if (v69[2] < v68 || (v70 & 1) == 0)
        {
          sub_2751D2924(v70, v68, 0);
          v69 = v120;
        }

        sub_275208894(v69 + 2, (v69 + 5), v53, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751D2528();
        }

        v28 = v120;
        if (sub_2751EFD04(v120 + 2, (v120 + 5), sub_2751EC534, 0))
        {
          v71 = v28[3];
          if (v71 < 0)
          {
            goto LABEL_111;
          }

          if (v71)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
            v72 = sub_27520BCF8();
            v72[2] = v71;
          }

          else
          {
            v72 = MEMORY[0x277D84F90];
          }

          v115[0] = 0;
          v117 = v72 + 4;
          v118 = v71;
          sub_2751EFA54(v28 + 2, v28 + 40, &v117, v115);
          if (v71 < v115[0])
          {
            goto LABEL_112;
          }

          v72[2] = v115[0];

          v117 = v72;
          sub_2751EC3D4(&v117, sub_2752095D0);
          v73 = v28[3];
          if (v73 < 0)
          {
            goto LABEL_113;
          }

          v108 = v26;
          v74 = v117;
          if (v73)
          {
            v75 = 0;
            v76 = v117[2];
            v77 = v117 + 5;
            while (v76 != v75)
            {
              if (v75 >= v74[2])
              {
                __break(1u);
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              if (v75 >= v28[3])
              {
                goto LABEL_106;
              }

              v81 = *(v77 - 1);
              v82 = *v77;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_2751D2528();
                v28 = v120;
              }

              v78 = v28[4];
              if ((v75 + v78) >= v28[2])
              {
                v79 = v28[2];
              }

              else
              {
                v79 = 0;
              }

              v80 = &v28[2 * v75 + 2 * (v78 - v79)];
              v80[5] = v81;
              *(v80 + 12) = v82;
              v77 += 4;
              if (v73 == ++v75)
              {
                break;
              }
            }
          }

          v24 = a5;
          v6 = v106;
          v32 = a1;
          v26 = v108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2751D0E64(0, *(v26 + 2) + 1, 1, v26);
        }

        v84 = *(v26 + 2);
        v83 = *(v26 + 3);
        v85 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          v26 = sub_2751D0E64((v83 > 1), v84 + 1, 1, v26);
        }

        *(v26 + 2) = v85;
        v86 = v26 + 32;
        v87 = &v26[16 * v84 + 32];
        *v87 = v53;
        *(v87 + 8) = v66;
        v117 = v26 + 32;
        v118 = v84 + 1;
        v88 = sub_27520C1D8();
        if (v88 <= v84)
        {
          break;
        }

        if (!v84)
        {
          goto LABEL_94;
        }

        v89 = -1;
        v90 = 1;
        v51 = v109;
        do
        {
          v92 = v89;
          v93 = v86;
          do
          {
            v94 = *(v93 + 6);
            if (v94 >= *(v93 + 2))
            {
              break;
            }

            v95 = *(v93 + 2);
            *(v93 + 1) = *v93;
            *v93 = v95;
            *(v93 + 2) = v94;
            v93 -= 16;
          }

          while (!__CFADD__(v92++, 1));
          v86 += 16;
          --v89;
        }

        while (v90++ != v84);
LABEL_95:
        v101 = *(v26 + 2);
        if (v101 <= v24)
        {
          v34 = v113;
          v52 = v114;
        }

        else
        {
          v34 = v113;
          v52 = v114;
          if (!v101)
          {
            goto LABEL_114;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v102 = *(v26 + 2);
            if (!v102)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v26 = sub_2751E3B54(v26);
            v102 = *(v26 + 2);
            if (!v102)
            {
              goto LABEL_115;
            }
          }

          *(v26 + 2) = v102 - 1;
        }

LABEL_35:
        if (++v52 == v111)
        {
          goto LABEL_16;
        }
      }

      v97 = v88;
      v98 = v85 >> 1;
      if (v84)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v99 = sub_27520BCF8();
        *(v99 + 16) = v98;
      }

      else
      {
        v99 = MEMORY[0x277D84F90];
      }

      v115[0] = v99 + 32;
      v115[1] = v98;
      v100 = v99;
      sub_2751ED610(v115, v116, &v117, v97);
      *(v100 + 16) = 0;

LABEL_94:
      v51 = v109;
      goto LABEL_95;
    }

LABEL_16:

    v35 = v28[3];
    if (!v35)
    {
      goto LABEL_104;
    }
  }

LABEL_119:
  __break(1u);
  MEMORY[0x277C6DB10](v8);
  __break(1u);
  MEMORY[0x277C6DB10](v8);

  __break(1u);
  return result;
}

char *HNSWIndex.search(query:radius:sorted:)(uint64_t a1, char a2, float a3)
{
  LOBYTE(v5) = a2;
  if (*(v3 + 16) <= 1u)
  {
    v4 = 0xE200000000000000;
    goto LABEL_6;
  }

  if (*(v3 + 16) != 2)
  {
    v4 = 0xEE0065636E617473;
LABEL_6:
    v8 = sub_27520C218();

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_7:
  a3 = a3 * a3;
LABEL_8:
  swift_beginAccess();
  v9 = *(v3 + 32);
  if (v9 >> 62)
  {
LABEL_29:
    v25 = sub_27520C038();
    v11 = v25 - 1;
    if (!__OFSUB__(v25, 1))
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v23 = MEMORY[0x277C6D4B0](0);
    v22 = v26;
LABEL_25:
    swift_endAccess();
    v24 = sub_2751EBF88(v23, a1, v4, a3);

    v27 = v24;
    if (v22)
    {
      sub_2751EC3D4(&v27, sub_2751E3B54);
      return v27;
    }

    return v24;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_31;
  }

LABEL_10:
  v26 = v5;
  v12 = v11 & ~(v11 >> 63);
  swift_beginAccess();
  v4 = 0;
  v13 = 0;
  while (1)
  {
    v5 = v12 - 1;
    if (v12 > 1)
    {
      goto LABEL_16;
    }

    if ((v12 != 1) | v13 & 1)
    {
      break;
    }

    v13 = 1;
    v5 = 1;
LABEL_16:
    v14 = *(v3 + 24);
    swift_beginAccess();
    v16 = *(v3 + 32);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v15;
      v17 = MEMORY[0x277C6D4B0](v12, v16);
    }

    else
    {
      if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v17 = *(v16 + 8 * v12 + 32);
      v15;
    }

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_27520DD90;
    *(inited + 32) = v4;
    v19 = sub_2751EB36C(v14, v17, a1, inited, 1);

    swift_setDeallocating();
    if (*(v19 + 2))
    {
      v4 = *(v19 + 4);
    }

    else
    {
      v4 = 0;
    }

    v12 = v5;
  }

  result = swift_beginAccess();
  v21 = *(v3 + 32);
  if ((v21 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  v22 = v26;
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v21 + 32);

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

char *sub_2751EBF88(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  v5 = v4;
  v57 = *MEMORY[0x277D85DE8];
  v8 = off_2883F9B70[*(v4 + 16)];
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v10 = *(v4 + 24);
  if (*(v10 + 16) <= a3)
  {
LABEL_43:
    __break(1u);
  }

  v11 = *(v10 + 8 * a3 + 32);
  v9;
  v12 = (v8)(a2, v11);

  v56 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1B8, &qword_27520C9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27520DD90;
  *(inited + 32) = a3;
  *(inited + 40) = v12;
  v14 = MEMORY[0x277D84F90];
  v15 = 1;
  do
  {
    v16 = v15 - 1;
    v17 = inited + 16 * v16;
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);
    *(inited + 16) = v16;
    v20 = v56;
    if (*(v56 + 16) && (v21 = sub_27520C268(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (*(*(v20 + 48) + 8 * v23) != v18)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      sub_2751EDDAC(&v55, v18);
      if (v19 <= a4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2751D0E64(0, *(v14 + 2) + 1, 1, v14);
        }

        v26 = *(v14 + 2);
        v25 = *(v14 + 3);
        if (v26 >= v25 >> 1)
        {
          v14 = sub_2751D0E64((v25 > 1), v26 + 1, 1, v14);
        }

        *(v14 + 2) = v26 + 1;
        v27 = &v14[16 * v26];
        *(v27 + 4) = v18;
        *(v27 + 10) = v19;
      }

      swift_beginAccess();
      v29 = *(a1 + 32);
      if (*(v29 + 16) && (v30 = sub_2751EEAA4(v18), (v31 & 1) != 0))
      {
        v32 = *(*(v29 + 56) + 8 * v30);
        v28;
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
      }

      v54 = *(v32 + 16);
      if (v54)
      {
        v52 = v14;
        v33 = 0;
        v34 = v56;
        v35 = v56 + 56;
        while (v33 < *(v32 + 16))
        {
          v36 = *(v32 + 32 + 8 * v33);
          if (*(v34 + 16) && (v37 = sub_27520C268(), v38 = -1 << *(v34 + 32), v39 = v37 & ~v38, ((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
          {
            v40 = ~v38;
            while (*(*(v34 + 48) + 8 * v39) != v36)
            {
              v39 = (v39 + 1) & v40;
              if (((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
LABEL_31:
            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            v41 = *(v5 + 24);
            if (v36 >= *(v41 + 16))
            {
              goto LABEL_41;
            }

            v42 = inited;
            v43 = v5;
            v44 = off_2883F9B70[*(v5 + 16)];
            v45 = *(v41 + 8 * v36 + 32);
            v28;
            v46 = (v44)(a2, v45);

            if (v46 > a4)
            {
              v5 = v43;
              inited = v42;
            }

            else
            {
              inited = v42;
              v48 = *(v42 + 16);
              v47 = *(v42 + 24);
              if (v48 >= v47 >> 1)
              {
                inited = sub_2751D0E64((v47 > 1), v48 + 1, 1, v42);
              }

              *(inited + 16) = v48 + 1;
              v49 = inited + 16 * v48;
              *(v49 + 32) = v36;
              *(v49 + 40) = v46;
              v5 = v43;
            }
          }

          if (++v33 == v54)
          {

            v14 = v52;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_5:
    v15 = *(inited + 16);
  }

  while (v15);

  return v14;
}

uint64_t sub_2751EC3D4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v6 = v4 + 32;
  v20[0] = v4 + 32;
  v20[1] = v5;
  result = sub_27520C1D8();
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v13 = v11;
        v14 = v6;
        do
        {
          v15 = *(v14 + 24);
          if (v15 >= *(v14 + 8))
          {
            break;
          }

          v16 = *(v14 + 16);
          *(v14 + 16) = *v14;
          *v14 = v16;
          *(v14 + 8) = v15;
          v14 -= 16;
        }

        while (!__CFADD__(v13++, 1));
        v6 += 16;
        --v11;
      }
    }
  }

  else
  {
    v8 = result;
    v9 = v5 >> 1;
    if (v5 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
      v10 = sub_27520BCF8();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v18[0] = v10 + 32;
    v18[1] = v9;
    sub_2751ED610(v18, v19, v20, v8);
    *(v10 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t HNSWIndex.deinit()
{

  return v0;
}

uint64_t HNSWIndex.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t HNSWIndex.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7D8, &qword_27520DE88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751ED188();
  sub_27520C2B8();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_2751ED1DC();
  sub_27520C1A8();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 32);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7F0, &qword_27520DE90);
    sub_2751ED284(&qword_2809AD7F8, &qword_2809AD800, &protocol conformance descriptor for DirectedIndexGraph<A>, MEMORY[0x277D83948]);
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HNSWIndex.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  HNSWIndex.init(from:)(a1);
  return v2;
}

uint64_t *HNSWIndex.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD810, &qword_27520DEA0);
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = v8;
  v9 = (v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751ED188();
  sub_27520C2A8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v15;
    LOBYTE(v18) = 0;
    sub_2751ED230();
    v11 = v16;
    sub_27520C108();
    *(v1 + 16) = v17[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7F0, &qword_27520DE90);
    LOBYTE(v17[0]) = 1;
    sub_2751ED284(&qword_2809AD820, &qword_2809AD828, &protocol conformance descriptor for DirectedIndexGraph<A>, MEMORY[0x277D83978]);
    sub_27520C108();
    (*(v10 + 8))(v7, v11);
    v13 = v18;
    swift_beginAccess();
    *v9 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t *sub_2751ECAB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = HNSWIndex.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t (*sub_2751ECBD0(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2751EF6B4(v4, a2);
  return sub_2751ECC48;
}

void sub_2751ECC48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2751ECC94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2751E3AF0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2751ECD1C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  swift_beginAccess();
  if (!*(*(v3 + 32) + 16))
  {
    return 0;
  }

  sub_2751EEAA4(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_2751EEAA4(a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2751ECFDC;
  *(v10 + 24) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 32);
  v34 = *(v4 + 32);
  *(v4 + 32) = 0x8000000000000000;
  v14 = sub_2751EEAA4(a1);
  v15 = *(v12 + 2);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = v13;
  if (*(v12 + 3) < v17)
  {
    sub_2751EEC4C(v17, isUniquelyReferenced_nonNull_native);
    v12 = v34;
    v19 = sub_2751EEAA4(a1);
    if ((v18 & 1) != (v20 & 1))
    {
      goto LABEL_23;
    }

    v14 = v19;
    *(v4 + 32) = v34;
    if (v18)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    *(v4 + 32) = v12;
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_2751EF408();
  v12 = v34;
  *(v4 + 32) = v34;
  if ((v18 & 1) == 0)
  {
LABEL_12:
    v22 = sub_2751ECFDC();
    *&v12[8 * (v14 >> 6) + 64] |= 1 << v14;
    *(*(v12 + 6) + 8 * v14) = a1;
    *(*(v12 + 7) + 8 * v14) = v22;
    v23 = *(v12 + 2);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      *(v12 + 2) = v25;
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = *(v12 + 7);
  v12 = *(isUniquelyReferenced_nonNull_native + 8 * v14);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v14) = v12;
  if ((v26 & 1) == 0)
  {
LABEL_19:
    v12 = sub_2751D09BC(0, *(v12 + 2) + 1, 1, v12);
    *(isUniquelyReferenced_nonNull_native + 8 * v14) = v12;
  }

  v27 = *(v12 + 2);
  v28 = *(v12 + 3);
  v29 = v27 + 1;
  if (v27 >= v28 >> 1)
  {
    v31 = v12;
    v32 = *(v12 + 2);
    v33 = sub_2751D09BC((v28 > 1), v27 + 1, 1, v31);
    v27 = v32;
    v12 = v33;
    *(isUniquelyReferenced_nonNull_native + 8 * v14) = v33;
  }

  *(v12 + 2) = v29;
  *&v12[8 * v27 + 32] = a2;
  swift_endAccess();
  swift_beginAccess();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  sub_2751EF2C8(a1, a2, v30, a3);
  *(v4 + 40) = v35;
  swift_endAccess();

  return 1;
}

void sub_2751ECFE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_2751ED0B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1B8, &qword_27520C9A8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_2751ED188()
{
  result = qword_2809AD7E0;
  if (!qword_2809AD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD7E0);
  }

  return result;
}

unint64_t sub_2751ED1DC()
{
  result = qword_2809AD7E8;
  if (!qword_2809AD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD7E8);
  }

  return result;
}

unint64_t sub_2751ED230()
{
  result = qword_2809AD818;
  if (!qword_2809AD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD818);
  }

  return result;
}

uint64_t sub_2751ED284(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD7F0, &qword_27520DE90);
    sub_2751ED30C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2751ED30C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD808, &qword_27520DE98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2751ED3E8()
{
  result = qword_2809AD830;
  if (!qword_2809AD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD830);
  }

  return result;
}

unint64_t sub_2751ED440()
{
  result = qword_2809AD838;
  if (!qword_2809AD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD838);
  }

  return result;
}

unint64_t sub_2751ED498()
{
  result = qword_2809AD840;
  if (!qword_2809AD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD840);
  }

  return result;
}

uint64_t sub_2751ED4EC(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = a1[1];
  result = sub_27520C1D8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v9 = sub_27520BCF8();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      sub_2751F2FF4(v11, v12, a1, a2, a3, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_2751F2F04(0, v6, 1, a2);
  }

  return result;
}

uint64_t sub_2751ED610(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_2751F3A50(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_2751EDBB0((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *v15 >= *(v15 - 4);
        ++v14;
        v15 += 4;
        if ((((v10 < v13) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2751D08B8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_2751D08B8((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_2751EDBB0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (v31 >= *(v30 - 8))
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}