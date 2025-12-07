void *AESCounterRandomNumberGenerator.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = a1;
  v2[3] = 0;
  v3 = sub_25F7435C4();
  v3[2] = 16;
  v3[4] = 0;
  v3[5] = 0;
  v4 = MEMORY[0x277D84F90];
  v2[4] = v3;
  v2[5] = v4;
  return v2;
}

void *AESCounterRandomNumberGenerator.init(_:)(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = 0;
  v2 = sub_25F7435C4();
  v2[2] = 16;
  v2[4] = 0;
  v2[5] = 0;
  v3 = MEMORY[0x277D84F90];
  v1[4] = v2;
  v1[5] = v3;
  return v1;
}

void *sub_25F719374(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25F7435C4();
  v3[2] = 16;
  v3[5] = 0;
  v3[4] = 0;
  v8[0] = 16;
  v4 = *(v1 + 16);
  dataOutAvailable = *(v4 + 16);
  v6 = *(a1 + 16);

  CCCrypt(0, 0, 2u, (v4 + 32), dataOutAvailable, 0, (a1 + 32), v6, v3 + 4, dataOutAvailable, v8);

  return v3;
}

void *AESCounterRandomNumberGenerator.blockForOffset(_:)(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = (a1 + 1);
  if (v1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_25F719DC0(result);
    v4 = sub_25F719374(v3);

    return v4;
  }

  return result;
}

Swift::Void __swiftcall AESCounterRandomNumberGenerator.incrementCounter()()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = -v2;
    v4 = 32;
    while (1)
    {
      v5 = v4 - 32;
      if ((v4 - 32) >= *(v1 + 2))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = v1[v4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 32) = v1;
      if (v6 != 255)
      {
        break;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v1 = sub_25F719C58(v1);
      }

      if (v5 >= *(v1 + 2))
      {
        goto LABEL_16;
      }

      v1[v4] = 0;
      *(v0 + 32) = v1;
      ++v4;
      if (v3 + v4 == 32)
      {
        return;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

LABEL_17:
    v1 = sub_25F719C58(v1);
LABEL_11:
    if (v5 >= *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      v8 = v1[v4] + 1;
      if (((v8 >> 8) & 1) == 0)
      {
        v1[v4] = v8;
        *(v0 + 32) = v1;
        return;
      }
    }

    __break(1u);
  }
}

void *AESCounterRandomNumberGenerator.nextBlock()()
{
  AESCounterRandomNumberGenerator.incrementCounter()();

  v1 = sub_25F719374(v0);

  return v1;
}

Swift::UInt32 __swiftcall AESCounterRandomNumberGenerator.nextUInt32()()
{
  v1 = v0;
  if (!*(v0[5] + 16))
  {
    goto LABEL_4;
  }

  v2 = v0[3];
  if (__OFSUB__(16, v2))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (16 - v2 <= 3)
  {
LABEL_4:
    AESCounterRandomNumberGenerator.incrementCounter()();

    v0 = sub_25F719374(v3);

    v1[5] = v0;

    v2 = 0;
    v1[3] = 0;
  }

  v4 = v2 + 4;
  if (__OFADD__(v2, 4))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 <= v2)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v2 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v0 = v1[5];
  v5 = v0[2];
  if (v5 < v2 || v5 < v4)
  {
    goto LABEL_33;
  }

  if (v5 == 4)
  {

    goto LABEL_14;
  }

LABEL_34:
  sub_25F719D00(v0, (v0 + 4), v2, (2 * v4) | 1);
  v0 = v24;
LABEL_14:
  v7 = sub_25F71A024(v0);
  v9 = v8;

  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_28;
    }

    v12 = *(v7 + 16);
    v13 = sub_25F743064();
    if (!v13)
    {
LABEL_40:
      sub_25F743074();
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v14 = v13;
    v15 = sub_25F743084();
    if (__OFSUB__(v12, v15))
    {
      goto LABEL_38;
    }

    v16 = (v12 - v15 + v14);
    sub_25F743074();
    if (!v16)
    {
      goto LABEL_41;
    }

    goto LABEL_26;
  }

  if (!v10)
  {
    v11 = v7;
LABEL_28:
    sub_25F71A0D4(v7, v9);
    v21 = v1[3];
    v22 = __OFADD__(v21, 4);
    v23 = v21 + 4;
    if (!v22)
    {
      result = bswap32(v11);
      v1[3] = v23;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v7 > v7 >> 32)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = sub_25F743064();
  if (!v17)
  {
LABEL_42:
    result = sub_25F743074();
    __break(1u);
    goto LABEL_43;
  }

  v18 = v17;
  v19 = sub_25F743084();
  if (__OFSUB__(v7, v19))
  {
    goto LABEL_39;
  }

  v16 = (v7 - v19 + v18);
  result = sub_25F743074();
  if (v16)
  {
LABEL_26:
    v11 = *v16;
    goto LABEL_28;
  }

LABEL_43:
  __break(1u);
  return result;
}

void *AESCounterRandomNumberGenerator.deinit()
{

  return v0;
}

uint64_t AESCounterRandomNumberGenerator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t variable initialization expression of BenchmarkReport._storage()
{
  if (qword_27FDAC958 != -1)
  {
    swift_once();
  }
}

double variable initialization expression of CallContextImpl.clientContext@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of LevelCapacityUsageState.concurrentQueue()
{
  v0 = sub_25F743764();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F7433B4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25F743754();
  MEMORY[0x28223BE20](v5 - 8);
  sub_25F71A128();
  sub_25F743744();
  sub_25F7433A4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_25F743794();
}

uint64_t sub_25F719BE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

_BYTE *sub_25F719C6C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25F719E6C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25F719F24(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25F719FA0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void sub_25F719D00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
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
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9E8, "P#");
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_25F719DC0(unint64_t a1)
{
  result = sub_25F7435C4();
  *(result + 16) = 16;
  *(result + 32) = 0;
  *(result + 40) = 0;
  if (a1 >= 1)
  {
    *(result + 32) = a1;
    if (a1 >= 0x100)
    {
      *(result + 33) = BYTE1(a1);
      if (a1 >= 0x10000)
      {
        *(result + 34) = BYTE2(a1);
        if (a1 >> 24)
        {
          *(result + 35) = BYTE3(a1);
          if (HIDWORD(a1))
          {
            *(result + 36) = BYTE4(a1);
            if (a1 >> 40)
            {
              *(result + 37) = BYTE5(a1);
              if (HIWORD(a1))
              {
                *(result + 38) = BYTE6(a1);
                if (HIBYTE(a1))
                {
                  *(result + 39) = HIBYTE(a1);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F719E6C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
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

uint64_t sub_25F719F24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F743094();
  swift_allocObject();
  result = sub_25F743054();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F7430B4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25F719FA0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_25F743094();
  swift_allocObject();
  result = sub_25F743054();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25F71A024(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9D8, "b4");
  v10 = sub_25F71A1E0();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25F719C6C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_25F71A0D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25F71A128()
{
  result = qword_27FDAC9D0;
  if (!qword_27FDAC9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FDAC9D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25F71A1E0()
{
  result = qword_27FDAC9E0;
  if (!qword_27FDAC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9D8, "b4");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDAC9E0);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t AsyncThrowingStream.toArray()(void *a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = a1[2];
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v5 = a1[3];
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_25F7437A4();
  v2[12] = swift_task_alloc();
  v2[13] = a1[4];
  v6 = sub_25F7436B4();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F71A510, 0, 0);
}

uint64_t sub_25F71A510()
{
  v0[2] = sub_25F7435B4();
  sub_25F743694();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_25F71A5E4;
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822005A8](v3, 0, 0, v2, v4);
}

uint64_t sub_25F71A5E4()
{

  if (v0)
  {

    v1 = sub_25F71A8B0;
  }

  else
  {
    v1 = sub_25F71A6FC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25F71A6FC()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    v4 = v0[2];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    sub_25F7435E4();
    sub_25F7435D4();
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_25F71A5E4;
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];

    return MEMORY[0x2822005A8](v9, 0, 0, v8, v10);
  }
}

uint64_t sub_25F71A8B0()
{
  v1 = *(v0[9] + 32);
  v1(v0[10], v0[11], v0[8]);
  if (sub_25F7438F4())
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    v2 = v0[10];
    v3 = v0[8];
    swift_allocError();
    v1(v4, v2, v3);
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v5 = v0[1];

  return v5();
}

uint64_t AsyncThrowingStream.transform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9F0, &qword_25F744D10);
  v9 = sub_25F743654();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14[-v10];
  v15 = *(a3 + 16);
  v12 = *(a3 + 32);
  v16 = a4;
  v17 = v12;
  v18 = v4;
  v19 = a1;
  v20 = a2;
  sub_25F71BC1C(v11);
  return sub_25F7436D4();
}

uint64_t sub_25F71AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a8;
  v38 = a7;
  v39 = a3;
  v34 = a5;
  v40 = a4;
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9F0, &qword_25F744D10);
  v9 = sub_25F743684();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v33 = &v33 - v11;
  v13 = sub_25F7436C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  v21 = sub_25F743624();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, v37, v13);
  v22 = a1;
  v23 = v9;
  (*(v10 + 16))(v12, v22, v9);
  v24 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v10 + 80) + v25 + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v35;
  *(v27 + 4) = v34;
  *(v27 + 5) = v28;
  v29 = v36;
  *(v27 + 6) = v38;
  *(v27 + 7) = v29;
  (*(v14 + 32))(&v27[v24], v17, v13);
  v30 = &v27[v25];
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  (*(v10 + 32))(&v27[v26], v33, v23);

  sub_25F738C88(0, 0, v20, &unk_25F743F48, v27);
}

uint64_t sub_25F71AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v16;
  v8[11] = v17;
  v8[8] = a8;
  v8[9] = v15;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9F0, &qword_25F744D10);
  v10 = sub_25F743644();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = *(v16 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = sub_25F7437A4();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = *(a8 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = *(v15 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  sub_25F7437A4();
  v8[28] = swift_task_alloc();
  v12 = sub_25F7436B4();
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F71B160, 0, 0);
}

uint64_t sub_25F71B160()
{
  sub_25F7436C4();
  sub_25F743694();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_25F71B228;
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v4);
}

uint64_t sub_25F71B228()
{

  if (v0)
  {
    v1 = sub_25F71B904;
  }

  else
  {
    v1 = sub_25F71B338;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25F71B338()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);
    v0[3] = 0;
    sub_25F743684();
    sub_25F743674();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5];
    (*(v2 + 32))(v0[24], v1, v3);
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = sub_25F71B598;
    v8 = v0[24];
    v9 = v0[22];

    return v10(v9, v8);
  }
}

uint64_t sub_25F71B598()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_25F71BAD0;
  }

  else
  {
    v2 = sub_25F71B6AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F71B6AC()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[10];
  (*(v0[20] + 16))(v1, v0[22], v0[19]);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[20];
  if (v4 == 1)
  {
    v10 = v0[8];
    v11 = *(v9 + 8);
    v11(v0[22], v0[19]);
    (*(v5 + 8))(v6, v10);
    v11(v7, v8);
  }

  else
  {
    v27 = v0[24];
    v13 = v0[17];
    v12 = v0[18];
    v24 = v0[19];
    v25 = v0[22];
    v14 = v0[15];
    v15 = v0[16];
    v16 = v0[14];
    v17 = v0[10];
    v26 = v0[8];
    v23 = v0[13];
    (*(v15 + 32))(v12, v7, v17);
    (*(v15 + 16))(v13, v12, v17);
    sub_25F743684();
    sub_25F743664();
    (*(v16 + 8))(v14, v23);
    (*(v15 + 8))(v12, v17);
    (*(v9 + 8))(v25, v24);
    (*(v5 + 8))(v27, v26);
  }

  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_25F71B228;
  v19 = v0[28];
  v20 = v0[29];
  v21 = v0[27];

  return MEMORY[0x2822005A8](v19, 0, 0, v20, v21);
}

uint64_t sub_25F71B904()
{
  v1 = *(v0[25] + 32);
  v1(v0[26], v0[27], v0[9]);
  v2 = sub_25F7438F4();
  v3 = v0[26];
  if (v2)
  {
    v4 = v2;
    (*(v0[25] + 8))(v0[26], v0[9]);
  }

  else
  {
    v5 = v0[9];
    v4 = swift_allocError();
    v1(v6, v3, v5);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
  v0[2] = v4;
  sub_25F743684();
  sub_25F743674();

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F71BAD0()
{
  (*(v0[23] + 8))(v0[24], v0[8]);
  v1 = v0[34];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v0[2] = v1;
  sub_25F743684();
  sub_25F743674();

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F71BC1C@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9F0, &qword_25F744D10);
  v4 = sub_25F743654();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_25F71BCD4()
{
  v1 = sub_25F7436C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9F0, &qword_25F744D10);
  v6 = sub_25F743684();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F71BE68(uint64_t a1)
{
  v3 = v2;
  v15 = v1[4];
  v4 = *(sub_25F7436C4() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDAC9F0, &qword_25F744D10);
  v7 = *(sub_25F743684() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v12 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F71C02C;

  return sub_25F71AE34(a1, v9, v10, v1 + v5, v12, v11, v1 + v8, v15);
}

uint64_t sub_25F71C02C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25F71C154@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_25F71C174@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25F71C19C(uint64_t a1, uint64_t a2)
{
  sub_25F743994();
  sub_25F7433D4();
  return sub_25F7439B4();
}

uint64_t sub_25F71C208(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F726BEC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_25F71C254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F743994();
  sub_25F7433D4();
  return sub_25F7439B4();
}

uint64_t static IndexableFileType.allCases.setter(void *a1)
{
  swift_beginAccess();
  static IndexableFileType.allCases = a1;
}

uint64_t sub_25F71C3D0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static IndexableFileType.allCases;
}

uint64_t BenchmarkConfig.indexer.getter()
{
  v1 = (v0 + *(type metadata accessor for BenchmarkConfig(0) + 20));
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

uint64_t BenchmarkConfig.indexer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BenchmarkConfig(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*BenchmarkConfig.indexer.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for BenchmarkConfig(0) + 20);
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

  return sub_25F726D2C;
}

Swift::Void __swiftcall BenchmarkConfig.clearIndexer()()
{
  v1 = (v0 + *(type metadata accessor for BenchmarkConfig(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t BenchmarkConfig.dataSet.getter()
{
  v1 = (v0 + *(type metadata accessor for BenchmarkConfig(0) + 24));
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

uint64_t BenchmarkConfig.dataSet.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BenchmarkConfig(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*BenchmarkConfig.dataSet.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for BenchmarkConfig(0) + 24);
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

  return sub_25F71C740;
}

void sub_25F71C744(uint64_t **a1, char a2)
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

Swift::Void __swiftcall BenchmarkConfig.clearDataSet()()
{
  v1 = (v0 + *(type metadata accessor for BenchmarkConfig(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t BenchmarkConfig.init()@<X0>(uint64_t a1@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for BenchmarkConfig(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t IndexReport.totalDocuments.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.totalDocuments.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTotalDocuments()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.totalDocumentBytes.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.totalDocumentBytes.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTotalDocumentBytes()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.totalDocumentTokens.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.totalDocumentTokens.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTotalDocumentTokens()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.totalIndexSizeBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexReport(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IndexReport.totalIndexSizeBytes.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.totalIndexSizeBytes.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTotalIndexSizeBytes()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.totalIndexingMillis.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexReport(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IndexReport.totalIndexingMillis.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.totalIndexingMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTotalIndexingMillis()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.totalUniqueTokens.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexReport(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IndexReport.totalUniqueTokens.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.totalUniqueTokens.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTotalUniqueTokens()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double IndexReport.documentsPerSecond.getter()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 48);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t IndexReport.documentsPerSecond.setter(double a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.documentsPerSecond.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 48);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearDocumentsPerSecond()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 48);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double IndexReport.tokensPerSecond.getter()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t IndexReport.tokensPerSecond.setter(double a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.tokensPerSecond.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearTokensPerSecond()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 52);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double IndexReport.indexBytesToDocsBytesRatio.getter()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 56);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t IndexReport.indexBytesToDocsBytesRatio.setter(double a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.indexBytesToDocsBytesRatio.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearIndexBytesToDocsBytesRatio()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 56);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.averageDocumentBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexReport(0) + 60));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IndexReport.averageDocumentBytes.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.averageDocumentBytes.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 60);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearAverageDocumentBytes()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 60);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.averageIndexBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexReport(0) + 64));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IndexReport.averageIndexBytes.setter(uint64_t a1)
{
  result = type metadata accessor for IndexReport(0);
  v4 = v1 + *(result + 64);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IndexReport.averageIndexBytes.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IndexReport(0) + 64);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall IndexReport.clearAverageIndexBytes()()
{
  v1 = v0 + *(type metadata accessor for IndexReport(0) + 64);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t IndexReport.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for IndexReport(0);
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[8] = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[8] = 1;
  v9 = a1 + v2[11];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1 + v2[12];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1 + v2[13];
  *v11 = 0;
  v11[8] = 1;
  v12 = a1 + v2[14];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v2[15];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v2[16];
  *v14 = 0;
  v14[8] = 1;
  return result;
}

uint64_t sub_25F71D76C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t SearchReport.uniqueTokenCount.setter(uint64_t a1)
{
  result = type metadata accessor for SearchReport(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SearchReport.uniqueTokenCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SearchReport(0) + 24);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall SearchReport.clearUniqueTokenCount()()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_25F71D8E0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t SearchReport.durationMillis.setter(uint64_t a1)
{
  result = type metadata accessor for SearchReport(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SearchReport.durationMillis.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SearchReport(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F71D9BC;
}

uint64_t sub_25F71D9BC(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall SearchReport.clearDurationMillis()()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_25F71DA4C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t SearchReport.falsePositiveQueryCount.setter(uint64_t a1)
{
  result = type metadata accessor for SearchReport(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SearchReport.falsePositiveQueryCount.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SearchReport(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall SearchReport.clearFalsePositiveQueryCount()()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SearchReport.falsePositiveQueryTokens.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double SearchReport.falsePositiveQueryPercentage.getter()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t SearchReport.falsePositiveQueryPercentage.setter(double a1)
{
  result = type metadata accessor for SearchReport(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SearchReport.falsePositiveQueryPercentage.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SearchReport(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall SearchReport.clearFalsePositiveQueryPercentage()()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double SearchReport.averageFalsePositiveResultPercentage.getter()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t SearchReport.averageFalsePositiveResultPercentage.setter(double a1)
{
  result = type metadata accessor for SearchReport(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SearchReport.averageFalsePositiveResultPercentage.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SearchReport(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall SearchReport.clearAverageFalsePositiveResultPercentage()()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double SearchReport.searchesPerSecond.getter()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 44);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t SearchReport.searchesPerSecond.setter(double a1)
{
  result = type metadata accessor for SearchReport(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SearchReport.searchesPerSecond.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SearchReport(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25F726D44;
}

Swift::Void __swiftcall SearchReport.clearSearchesPerSecond()()
{
  v1 = v0 + *(type metadata accessor for SearchReport(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_25F71DFA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25F7431C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25F71E044(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_25F7431C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SearchReport.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for SearchReport(0);
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[8] = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[8] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[8] = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[8] = 1;
  v9 = a1 + v2[11];
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t BenchmarkReport.startMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for BenchmarkReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t BenchmarkReport.startMillis.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v6 = sub_25F722DC0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

uint64_t sub_25F71E2E4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*BenchmarkReport.startMillis.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for BenchmarkReport(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_25F71E3C8;
}

void sub_25F71E3C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v7 = sub_25F722DC0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL BenchmarkReport.hasStartMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for BenchmarkReport(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall BenchmarkReport.clearStartMillis()()
{
  v1 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v3 = sub_25F722DC0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
}

uint64_t BenchmarkReport.startDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for BenchmarkReport(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t BenchmarkReport.startDate.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v8 = sub_25F722DC0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

void (*BenchmarkReport.startDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for BenchmarkReport(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_25F71E750;
}

void sub_25F71E750(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for BenchmarkReport._StorageClass(0);
      swift_allocObject();
      v8 = sub_25F722DC0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for BenchmarkReport._StorageClass(0);
      swift_allocObject();
      v12 = sub_25F722DC0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 32) = v3;
    *(v12 + 40) = v5;
  }

  free(v2);
}

BOOL BenchmarkReport.hasStartDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for BenchmarkReport(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall BenchmarkReport.clearStartDate()()
{
  v1 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v3 = sub_25F722DC0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

uint64_t BenchmarkReport.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA10, &qword_25F743FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for BenchmarkReport(0) + 20));
  v7 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  sub_25F723300(v6 + v7, v5, &qword_27FDACA10, &qword_25F743FE0);
  v8 = type metadata accessor for BenchmarkConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_25F7231D0(v5, a1, type metadata accessor for BenchmarkConfig);
  }

  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_25F726C40(v5, &qword_27FDACA10, &qword_25F743FE0);
  }

  return result;
}

uint64_t BenchmarkReport.config.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA10, &qword_25F743FE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v9 = sub_25F722DC0(v9);
    *(v2 + v7) = v9;
  }

  sub_25F7231D0(a1, v6, type metadata accessor for BenchmarkConfig);
  v10 = type metadata accessor for BenchmarkConfig(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  sub_25F723368(v6, v9 + v11, &qword_27FDACA10, &qword_25F743FE0);
  return swift_endAccess();
}

void (*BenchmarkReport.config.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA10, &qword_25F743FE0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for BenchmarkConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for BenchmarkReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  sub_25F723300(v16 + v17, v8, &qword_27FDACA10, &qword_25F743FE0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = (v14 + *(v9 + 20));
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + *(v9 + 24));
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_25F726C40(v8, &qword_27FDACA10, &qword_25F743FE0);
    }
  }

  else
  {
    sub_25F7231D0(v8, v14, type metadata accessor for BenchmarkConfig);
  }

  return sub_25F71EECC;
}

uint64_t BenchmarkReport.indexReport.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA20, &qword_25F743FE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = *(v1 + *(type metadata accessor for BenchmarkReport(0) + 20));
  v7 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  sub_25F723300(v6 + v7, v5, &qword_27FDACA20, &qword_25F743FE8);
  v8 = type metadata accessor for IndexReport(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_25F7231D0(v5, a1, type metadata accessor for IndexReport);
  }

  *a1 = MEMORY[0x277D84F90];
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + v8[6];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  v11[8] = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  v14[8] = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  v15[8] = 1;
  v16 = a1 + v8[12];
  *v16 = 0;
  v16[8] = 1;
  v17 = a1 + v8[13];
  *v17 = 0;
  v17[8] = 1;
  v18 = a1 + v8[14];
  *v18 = 0;
  v18[8] = 1;
  v19 = a1 + v8[15];
  *v19 = 0;
  v19[8] = 1;
  v20 = a1 + v8[16];
  *v20 = 0;
  v20[8] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_25F726C40(v5, &qword_27FDACA20, &qword_25F743FE8);
  }

  return result;
}

uint64_t BenchmarkReport.indexReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA20, &qword_25F743FE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v9 = sub_25F722DC0(v9);
    *(v2 + v7) = v9;
  }

  sub_25F7231D0(a1, v6, type metadata accessor for IndexReport);
  v10 = type metadata accessor for IndexReport(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  sub_25F723368(v6, v9 + v11, &qword_27FDACA20, &qword_25F743FE8);
  return swift_endAccess();
}

void (*BenchmarkReport.indexReport.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA20, &qword_25F743FE8) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for IndexReport(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for BenchmarkReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  sub_25F723300(v16 + v17, v8, &qword_27FDACA20, &qword_25F743FE8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = v14 + v9[6];
    *v19 = 0;
    v19[8] = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    v20[8] = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[8] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[8] = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    v23[8] = 1;
    v24 = v14 + v9[11];
    *v24 = 0;
    v24[8] = 1;
    v25 = v14 + v9[12];
    *v25 = 0;
    v25[8] = 1;
    v26 = v14 + v9[13];
    *v26 = 0;
    v26[8] = 1;
    v27 = v14 + v9[14];
    *v27 = 0;
    v27[8] = 1;
    v28 = v14 + v9[15];
    *v28 = 0;
    v28[8] = 1;
    v29 = v14 + v9[16];
    *v29 = 0;
    v29[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      sub_25F726C40(v8, &qword_27FDACA20, &qword_25F743FE8);
    }
  }

  else
  {
    sub_25F7231D0(v8, v14, type metadata accessor for IndexReport);
  }

  return sub_25F71F618;
}

BOOL sub_25F71F678(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for BenchmarkReport(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_25F723300(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_25F726C40(v11, a1, a2);
  return v15;
}

uint64_t sub_25F71F7C0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v15 = sub_25F722DC0(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_25F723368(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t BenchmarkReport.searchReport.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA30, &qword_25F743FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for BenchmarkReport(0) + 20));
  v7 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  swift_beginAccess();
  sub_25F723300(v6 + v7, v5, &qword_27FDACA30, &qword_25F743FF0);
  v8 = type metadata accessor for SearchReport(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_25F7231D0(v5, a1, type metadata accessor for SearchReport);
  }

  *a1 = MEMORY[0x277D84F90];
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v10 = a1 + v8[6];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  v11[8] = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  v12[8] = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[8] = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  v14[8] = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  v15[8] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_25F726C40(v5, &qword_27FDACA30, &qword_25F743FF0);
  }

  return result;
}

uint64_t BenchmarkReport.searchReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA30, &qword_25F743FF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v9 = sub_25F722DC0(v9);
    *(v2 + v7) = v9;
  }

  sub_25F7231D0(a1, v6, type metadata accessor for SearchReport);
  v10 = type metadata accessor for SearchReport(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  swift_beginAccess();
  sub_25F723368(v6, v9 + v11, &qword_27FDACA30, &qword_25F743FF0);
  return swift_endAccess();
}

void (*BenchmarkReport.searchReport.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA30, &qword_25F743FF0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for SearchReport(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for BenchmarkReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  swift_beginAccess();
  sub_25F723300(v16 + v17, v8, &qword_27FDACA30, &qword_25F743FF0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = v14 + v9[6];
    *v19 = 0;
    v19[8] = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    v20[8] = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[8] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[8] = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    v23[8] = 1;
    v24 = v14 + v9[11];
    *v24 = 0;
    v24[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      sub_25F726C40(v8, &qword_27FDACA30, &qword_25F743FF0);
    }
  }

  else
  {
    sub_25F7231D0(v8, v14, type metadata accessor for SearchReport);
  }

  return sub_25F71FF28;
}

void sub_25F71FF58(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_25F723238(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for BenchmarkReport._StorageClass(0);
      swift_allocObject();
      v12 = sub_25F722DC0(v12);
      *(v14 + v13) = v12;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v17 = *(v8 + 96);
    v18 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    sub_25F7231D0(v16, v20, a3);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a4;
    swift_beginAccess();
    sub_25F723368(v20, v12 + v21, a5, a6);
    swift_endAccess();
    sub_25F7232A0(v15, a3);
  }

  else
  {
    v22 = *(v8 + 72);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v22 + v9);
    if ((v23 & 1) == 0)
    {
      v25 = *(v8 + 128);
      v26 = *(v8 + 72);
      type metadata accessor for BenchmarkReport._StorageClass(0);
      swift_allocObject();
      v24 = sub_25F722DC0(v24);
      *(v26 + v25) = v24;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v27 = *(v8 + 96);
    v28 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    sub_25F7231D0(v15, v20, a3);
    (*(v28 + 56))(v20, 0, 1, v27);
    v29 = *a4;
    swift_beginAccess();
    sub_25F723368(v20, v24 + v29, a5, a6);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v8);
}

uint64_t _s17PrivateSearchCore15BenchmarkConfigV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F7431C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s17PrivateSearchCore15BenchmarkConfigV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_25F7431C4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BenchmarkReport.init()@<X0>(uint64_t a1@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = *(type metadata accessor for BenchmarkReport(0) + 20);
  if (qword_27FDAC958 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27FDACA08;
}

uint64_t sub_25F720330()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static IndexableFileType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static IndexableFileType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TXT";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PDF";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_25F743334();
}

uint64_t sub_25F7205D8()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static BenchmarkConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static BenchmarkConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "indexer";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataSet";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_25F743334();
}

uint64_t BenchmarkConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25F743204();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for BenchmarkConfig(0);
      sub_25F743254();
    }
  }

  return result;
}

uint64_t BenchmarkConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F720900(v3, a1, a2, a3);
  if (!v4)
  {
    sub_25F720978(v3, a1, a2, a3);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F720900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BenchmarkConfig(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_25F7432F4();
  }

  return result;
}

uint64_t sub_25F720978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BenchmarkConfig(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_25F7432F4();
  }

  return result;
}

uint64_t sub_25F720A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_25F720AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F725870(&qword_27FDACB88, type metadata accessor for BenchmarkConfig, &protocol conformance descriptor for BenchmarkConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F720B94(uint64_t a1)
{
  v2 = sub_25F725870(&qword_27FDACA90, type metadata accessor for BenchmarkConfig, &protocol conformance descriptor for BenchmarkConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F720C00(uint64_t a1, uint64_t a2)
{
  sub_25F725870(&qword_27FDACA90, type metadata accessor for BenchmarkConfig, &protocol conformance descriptor for BenchmarkConfig);

  return sub_25F7432A4();
}

uint64_t sub_25F720CAC()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static IndexReport._protobuf_nameMap);
  __swift_project_value_buffer(v0, static IndexReport._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25F743F70;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "totalDocuments";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_25F743324();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "totalDocumentBytes";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "totalDocumentTokens";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "totalIndexSizeBytes";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "totalIndexingMillis";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "totalUniqueTokens";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "indexedTopLevelDirs";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "documentsPerSecond";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "tokensPerSecond";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "indexBytesToDocsBytesRatio";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "averageDocumentBytes";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "averageIndexBytes";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  return sub_25F743334();
}

uint64_t IndexReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25F743204();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        if (result == 10)
        {
LABEL_22:
          type metadata accessor for IndexReport(0);
          sub_25F743244();
        }

        else if (result == 11 || result == 12)
        {
LABEL_2:
          type metadata accessor for IndexReport(0);
          sub_25F743224();
        }
      }

      else
      {
        if (result != 7)
        {
          goto LABEL_22;
        }

        sub_25F743234();
      }
    }

    else if (result > 3 || result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t IndexReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F72221C(v3, a1, a2, a3, type metadata accessor for IndexReport);
  if (!v4)
  {
    sub_25F722298(v3, a1, a2, a3, type metadata accessor for IndexReport);
    sub_25F722314(v3, a1, a2, a3, type metadata accessor for IndexReport);
    sub_25F7214F0(v3, a1, a2, a3);
    sub_25F721568(v3, a1, a2, a3);
    sub_25F7215E0(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_25F7432D4();
    }

    sub_25F721658(v3, a1, a2, a3);
    sub_25F7216D0(v3, a1, a2, a3);
    sub_25F721748(v3, a1, a2, a3);
    sub_25F7217C0(v3, a1, a2, a3);
    sub_25F721838(v3, a1, a2, a3);
    type metadata accessor for IndexReport(0);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F7214F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F721568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F7215E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F721658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_25F7432E4();
  }

  return result;
}

uint64_t sub_25F7216D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return sub_25F7432E4();
  }

  return result;
}

uint64_t sub_25F721748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return sub_25F7432E4();
  }

  return result;
}

uint64_t sub_25F7217C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F721838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IndexReport(0);
  if ((*(a1 + *(result + 64) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F7218FC@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[8] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + v11;
  *v13 = 0;
  v13[8] = 1;
  v14 = a1[13];
  v15 = a2 + a1[12];
  *v15 = 0;
  v15[8] = 1;
  v16 = a2 + v14;
  *v16 = 0;
  v16[8] = 1;
  v17 = a1[15];
  v18 = a2 + a1[14];
  *v18 = 0;
  v18[8] = 1;
  v19 = a2 + v17;
  *v19 = 0;
  v19[8] = 1;
  v20 = a2 + a1[16];
  *v20 = 0;
  v20[8] = 1;
  return result;
}

uint64_t sub_25F721A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F725870(&qword_27FDACB80, type metadata accessor for IndexReport, &protocol conformance descriptor for IndexReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F721AF8(uint64_t a1)
{
  v2 = sub_25F725870(&qword_27FDACAA8, type metadata accessor for IndexReport, &protocol conformance descriptor for IndexReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F721B68(uint64_t a1, uint64_t a2)
{
  sub_25F725870(&qword_27FDACAA8, type metadata accessor for IndexReport, &protocol conformance descriptor for IndexReport);

  return sub_25F7432A4();
}

uint64_t sub_25F721C18()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static SearchReport._protobuf_nameMap);
  __swift_project_value_buffer(v0, static SearchReport._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uniqueTokenCount";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "durationMillis";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "falsePositiveQueryCount";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "falsePositiveQueryTokens";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "falsePositiveQueryPercentage";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "averageFalsePositiveResultPercentage";
  *(v18 + 1) = 36;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "searchesPerSecond";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_25F743334();
}

uint64_t SearchReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25F743204();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
        type metadata accessor for SearchReport(0);
        sub_25F743224();
      }
    }

    else if (result > 5)
    {
      if (result == 6 || result == 7)
      {
LABEL_2:
        type metadata accessor for SearchReport(0);
        sub_25F743244();
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

      sub_25F743234();
    }
  }
}

uint64_t SearchReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F72221C(v3, a1, a2, a3, type metadata accessor for SearchReport);
  if (!v4)
  {
    sub_25F722298(v3, a1, a2, a3, type metadata accessor for SearchReport);
    sub_25F722314(v3, a1, a2, a3, type metadata accessor for SearchReport);
    if (*(*v3 + 16))
    {
      sub_25F7432D4();
    }

    sub_25F722390(v3, a1, a2, a3);
    sub_25F722408(v3, a1, a2, a3);
    sub_25F722480(v3, a1, a2, a3);
    type metadata accessor for SearchReport(0);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F72221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F722298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F722314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F722390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SearchReport(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_25F7432E4();
  }

  return result;
}

uint64_t sub_25F722408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SearchReport(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_25F7432E4();
  }

  return result;
}

uint64_t sub_25F722480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SearchReport(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_25F7432E4();
  }

  return result;
}

uint64_t sub_25F722544@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[8] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a2 + v11;
  *v13 = 0;
  v13[8] = 1;
  return result;
}

uint64_t sub_25F7225FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_25F7431C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25F722674(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_25F7431C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25F722718(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F725870(&qword_27FDACB78, type metadata accessor for SearchReport, &protocol conformance descriptor for SearchReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F7227B8(uint64_t a1)
{
  v2 = sub_25F725870(&qword_27FDACAC0, type metadata accessor for SearchReport, &protocol conformance descriptor for SearchReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F722824(uint64_t a1, uint64_t a2)
{
  sub_25F725870(&qword_27FDACAC0, type metadata accessor for SearchReport, &protocol conformance descriptor for SearchReport);

  return sub_25F7432A4();
}

uint64_t sub_25F7228D4()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static BenchmarkReport._protobuf_nameMap);
  __swift_project_value_buffer(v0, static BenchmarkReport._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startMillis";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "config";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "IndexReport";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "searchReport";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_25F743334();
}

uint64_t sub_25F722B8C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_25F743344();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_25F722C04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25F743344();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_25F722C9C()
{
  type metadata accessor for BenchmarkReport._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  v2 = type metadata accessor for BenchmarkConfig(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  v4 = type metadata accessor for IndexReport(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  v6 = type metadata accessor for SearchReport(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_27FDACA08 = v0;
  return result;
}

uint64_t sub_25F722DC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA30, &qword_25F743FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA20, &qword_25F743FE8);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA10, &qword_25F743FE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  v10 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  v11 = type metadata accessor for BenchmarkConfig(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  v13 = type metadata accessor for IndexReport(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  v15 = type metadata accessor for SearchReport(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 24) = v17;
  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v18;
  *(v1 + 40) = v19;
  v20 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  sub_25F723300(a1 + v20, v9, &qword_27FDACA10, &qword_25F743FE0);
  swift_beginAccess();

  sub_25F723368(v9, v1 + v10, &qword_27FDACA10, &qword_25F743FE0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  v22 = v27;
  sub_25F723300(a1 + v21, v27, &qword_27FDACA20, &qword_25F743FE8);
  swift_beginAccess();
  sub_25F723368(v22, v1 + v12, &qword_27FDACA20, &qword_25F743FE8);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  swift_beginAccess();
  v24 = v28;
  sub_25F723300(a1 + v23, v28, &qword_27FDACA30, &qword_25F743FF0);

  swift_beginAccess();
  sub_25F723368(v24, v1 + v14, &qword_27FDACA30, &qword_25F743FF0);
  swift_endAccess();
  return v1;
}

uint64_t sub_25F7231D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F723238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F7232A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F723300(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F723368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25F723408()
{

  sub_25F726C40(v0 + OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config, &qword_27FDACA10, &qword_25F743FE0);
  sub_25F726C40(v0 + OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport, &qword_27FDACA20, &qword_25F743FE8);
  sub_25F726C40(v0 + OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport, &qword_27FDACA30, &qword_25F743FF0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t BenchmarkReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for BenchmarkReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for BenchmarkReport._StorageClass(0);
    swift_allocObject();
    v10 = sub_25F722DC0(v11);
    *(v4 + v8) = v10;
  }

  return sub_25F72356C(v10, a1, a2, a3);
}

uint64_t sub_25F72356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_25F743204();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_25F723674(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        sub_25F7236F8(a2, a1, a3, a4);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_25F72377C(a2, a1, a3, a4);
          break;
        case 4:
          sub_25F723858(a2, a1, a3, a4);
          break;
        case 5:
          sub_25F723934(a2, a1, a3, a4);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_25F723674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_25F743224();
  return swift_endAccess();
}

uint64_t sub_25F7236F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_25F743254();
  return swift_endAccess();
}

uint64_t sub_25F72377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for BenchmarkConfig(0);
  sub_25F725870(&qword_27FDACA90, type metadata accessor for BenchmarkConfig, &protocol conformance descriptor for BenchmarkConfig);
  sub_25F743274();
  return swift_endAccess();
}

uint64_t sub_25F723858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for IndexReport(0);
  sub_25F725870(&qword_27FDACAA8, type metadata accessor for IndexReport, &protocol conformance descriptor for IndexReport);
  sub_25F743274();
  return swift_endAccess();
}

uint64_t sub_25F723934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for SearchReport(0);
  sub_25F725870(&qword_27FDACAC0, type metadata accessor for SearchReport, &protocol conformance descriptor for SearchReport);
  sub_25F743274();
  return swift_endAccess();
}

uint64_t BenchmarkReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for BenchmarkReport(0);
  result = sub_25F723A7C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F723A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25F723B14(a1, a2, a3, a4);
  if (!v4)
  {
    sub_25F723B98(a1, a2, a3, a4);
    sub_25F723C34(a1, a2, a3, a4);
    sub_25F723E50(a1, a2, a3, a4);
    return sub_25F72406C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_25F723B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    return sub_25F7432C4();
  }

  return result;
}

uint64_t sub_25F723B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {

    sub_25F7432F4();
  }

  return result;
}

uint64_t sub_25F723C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA10, &qword_25F743FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for BenchmarkConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  sub_25F723300(a1 + v12, v7, &qword_27FDACA10, &qword_25F743FE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25F726C40(v7, &qword_27FDACA10, &qword_25F743FE0);
  }

  sub_25F7231D0(v7, v11, type metadata accessor for BenchmarkConfig);
  sub_25F725870(&qword_27FDACA90, type metadata accessor for BenchmarkConfig, &protocol conformance descriptor for BenchmarkConfig);
  sub_25F743314();
  return sub_25F7232A0(v11, type metadata accessor for BenchmarkConfig);
}

uint64_t sub_25F723E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA20, &qword_25F743FE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for IndexReport(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  sub_25F723300(a1 + v12, v7, &qword_27FDACA20, &qword_25F743FE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25F726C40(v7, &qword_27FDACA20, &qword_25F743FE8);
  }

  sub_25F7231D0(v7, v11, type metadata accessor for IndexReport);
  sub_25F725870(&qword_27FDACAA8, type metadata accessor for IndexReport, &protocol conformance descriptor for IndexReport);
  sub_25F743314();
  return sub_25F7232A0(v11, type metadata accessor for IndexReport);
}

uint64_t sub_25F72406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA30, &qword_25F743FF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SearchReport(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  swift_beginAccess();
  sub_25F723300(a1 + v12, v7, &qword_27FDACA30, &qword_25F743FF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25F726C40(v7, &qword_27FDACA30, &qword_25F743FF0);
  }

  sub_25F7231D0(v7, v11, type metadata accessor for SearchReport);
  sub_25F725870(&qword_27FDACAC0, type metadata accessor for SearchReport, &protocol conformance descriptor for SearchReport);
  sub_25F743314();
  return sub_25F7232A0(v11, type metadata accessor for SearchReport);
}

BOOL sub_25F72428C(uint64_t a1, uint64_t a2)
{
  v75 = type metadata accessor for SearchReport(0);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBA0, &qword_25F744790);
  MEMORY[0x28223BE20](v73);
  v76 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA30, &qword_25F743FF0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v71 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v83 = &v68 - v9;
  v81 = type metadata accessor for IndexReport(0);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v72 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBA8, &qword_25F744798);
  MEMORY[0x28223BE20](v78);
  v82 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA20, &qword_25F743FE8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v77 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v79 = &v68 - v15;
  v16 = type metadata accessor for BenchmarkConfig(0);
  v84 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB0, &unk_25F7447A0);
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACA10, &qword_25F743FE0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  v30 = *(a2 + 24);
  if (v29)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 16))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  swift_beginAccess();
  v33 = *(a2 + 40);
  if (v32)
  {
    if (!v33 || (v31 != *(a2 + 32) || v32 != v33) && (sub_25F743904() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v69 = a2;
  v34 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  sub_25F723300(a1 + v34, v27, &qword_27FDACA10, &qword_25F743FE0);
  v35 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__config;
  swift_beginAccess();
  v36 = *(v19 + 48);
  sub_25F723300(v27, v21, &qword_27FDACA10, &qword_25F743FE0);
  v37 = v69 + v35;
  v38 = v69;
  sub_25F723300(v37, &v21[v36], &qword_27FDACA10, &qword_25F743FE0);
  v39 = *(v84 + 48);
  if (v39(v21, 1, v16) == 1)
  {

    sub_25F726C40(v27, &qword_27FDACA10, &qword_25F743FE0);
    if (v39(&v21[v36], 1, v16) == 1)
    {
      sub_25F726C40(v21, &qword_27FDACA10, &qword_25F743FE0);
      goto LABEL_22;
    }

LABEL_19:
    sub_25F726C40(v21, &qword_27FDACBB0, &unk_25F7447A0);
    goto LABEL_28;
  }

  sub_25F723300(v21, v25, &qword_27FDACA10, &qword_25F743FE0);
  if (v39(&v21[v36], 1, v16) == 1)
  {

    sub_25F726C40(v27, &qword_27FDACA10, &qword_25F743FE0);
    sub_25F7232A0(v25, type metadata accessor for BenchmarkConfig);
    goto LABEL_19;
  }

  sub_25F7231D0(&v21[v36], v18, type metadata accessor for BenchmarkConfig);

  v40 = _s17PrivateSearchCore15BenchmarkConfigV2eeoiySbAC_ACtFZ_0(v25, v18);
  sub_25F7232A0(v18, type metadata accessor for BenchmarkConfig);
  sub_25F726C40(v27, &qword_27FDACA10, &qword_25F743FE0);
  sub_25F7232A0(v25, type metadata accessor for BenchmarkConfig);
  sub_25F726C40(v21, &qword_27FDACA10, &qword_25F743FE0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v41 = v38;
  v42 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  v43 = v79;
  sub_25F723300(a1 + v42, v79, &qword_27FDACA20, &qword_25F743FE8);
  v44 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__indexReport;
  swift_beginAccess();
  v45 = *(v78 + 48);
  v46 = v82;
  sub_25F723300(v43, v82, &qword_27FDACA20, &qword_25F743FE8);
  sub_25F723300(v41 + v44, v46 + v45, &qword_27FDACA20, &qword_25F743FE8);
  v47 = *(v80 + 48);
  v48 = v81;
  if (v47(v46, 1, v81) == 1)
  {
    sub_25F726C40(v43, &qword_27FDACA20, &qword_25F743FE8);
    v49 = v47(v46 + v45, 1, v48);
    v50 = v83;
    if (v49 == 1)
    {
      sub_25F726C40(v46, &qword_27FDACA20, &qword_25F743FE8);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v51 = v77;
  sub_25F723300(v46, v77, &qword_27FDACA20, &qword_25F743FE8);
  v52 = v47(v46 + v45, 1, v48);
  v50 = v83;
  if (v52 == 1)
  {
    sub_25F726C40(v43, &qword_27FDACA20, &qword_25F743FE8);
    sub_25F7232A0(v51, type metadata accessor for IndexReport);
LABEL_27:
    sub_25F726C40(v46, &qword_27FDACBA8, &qword_25F744798);
LABEL_28:

    return 0;
  }

  v54 = v46 + v45;
  v55 = v72;
  sub_25F7231D0(v54, v72, type metadata accessor for IndexReport);
  v56 = _s17PrivateSearchCore11IndexReportV2eeoiySbAC_ACtFZ_0(v51, v55);
  sub_25F7232A0(v55, type metadata accessor for IndexReport);
  sub_25F726C40(v43, &qword_27FDACA20, &qword_25F743FE8);
  sub_25F7232A0(v51, type metadata accessor for IndexReport);
  sub_25F726C40(v46, &qword_27FDACA20, &qword_25F743FE8);
  if ((v56 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  v57 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  swift_beginAccess();
  sub_25F723300(a1 + v57, v50, &qword_27FDACA30, &qword_25F743FF0);
  v58 = OBJC_IVAR____TtCV17PrivateSearchCore15BenchmarkReportP33_2A336E79A46A37691DD5F92414E6F50C13_StorageClass__searchReport;
  v59 = v69;
  swift_beginAccess();
  v60 = *(v73 + 48);
  v61 = v76;
  sub_25F723300(v50, v76, &qword_27FDACA30, &qword_25F743FF0);
  sub_25F723300(v59 + v58, v61 + v60, &qword_27FDACA30, &qword_25F743FF0);
  v62 = *(v74 + 48);
  v63 = v75;
  if (v62(v61, 1, v75) != 1)
  {
    v64 = v71;
    sub_25F723300(v61, v71, &qword_27FDACA30, &qword_25F743FF0);
    if (v62(v61 + v60, 1, v63) == 1)
    {

      sub_25F726C40(v50, &qword_27FDACA30, &qword_25F743FF0);
      sub_25F7232A0(v64, type metadata accessor for SearchReport);
      goto LABEL_36;
    }

    v65 = v61 + v60;
    v66 = v70;
    sub_25F7231D0(v65, v70, type metadata accessor for SearchReport);
    v67 = _s17PrivateSearchCore0B6ReportV2eeoiySbAC_ACtFZ_0(v64, v66);

    sub_25F7232A0(v66, type metadata accessor for SearchReport);
    sub_25F726C40(v50, &qword_27FDACA30, &qword_25F743FF0);
    sub_25F7232A0(v64, type metadata accessor for SearchReport);
    sub_25F726C40(v61, &qword_27FDACA30, &qword_25F743FF0);
    return (v67 & 1) != 0;
  }

  sub_25F726C40(v50, &qword_27FDACA30, &qword_25F743FF0);
  if (v62(v61 + v60, 1, v63) != 1)
  {
LABEL_36:
    sub_25F726C40(v61, &qword_27FDACBA0, &qword_25F744790);
    return 0;
  }

  sub_25F726C40(v61, &qword_27FDACA30, &qword_25F743FF0);
  return 1;
}

uint64_t sub_25F724F44(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_25F743994();
  a1(0);
  sub_25F725870(a2, a3, a4);
  sub_25F7433D4();
  return sub_25F7439B4();
}

uint64_t sub_25F724FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  if (qword_27FDAC958 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27FDACA08;
}

uint64_t sub_25F725098(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F725870(&qword_27FDACB70, type metadata accessor for BenchmarkReport, &protocol conformance descriptor for BenchmarkReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F725138@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25F743344();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_25F7251D4(uint64_t a1)
{
  v2 = sub_25F725870(&qword_27FDACAD8, type metadata accessor for BenchmarkReport, &protocol conformance descriptor for BenchmarkReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F725240(uint64_t a1, uint64_t a2)
{
  sub_25F743994();
  sub_25F7433D4();
  return sub_25F7439B4();
}

uint64_t sub_25F725298(uint64_t a1, uint64_t a2)
{
  sub_25F725870(&qword_27FDACAD8, type metadata accessor for BenchmarkReport, &protocol conformance descriptor for BenchmarkReport);

  return sub_25F7432A4();
}

uint64_t sub_25F725314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F743994();
  sub_25F7433D4();
  return sub_25F7439B4();
}

uint64_t _s17PrivateSearchCore15BenchmarkReportV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for BenchmarkReport(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_25F72428C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_25F7431C4();
  sub_25F725870(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25F7433F4() & 1;
}

uint64_t _s17PrivateSearchCore15BenchmarkConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenchmarkConfig(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_25F743904();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_25F743904() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_25F7431C4();
    sub_25F725870(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_25F7433F4() & 1;
  }

  return 0;
}

uint64_t _s17PrivateSearchCore11IndexReportV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for IndexReport(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[11];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4;
  if ((sub_25F727DFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v36 = v35[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  v41 = v35[13];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      return 0;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  v46 = v35[14];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v51 = v35[15];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 8);
  if (v53)
  {
    if (!v55)
    {
      return 0;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  v56 = v35[16];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      return 0;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  sub_25F7431C4();
  sub_25F725870(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25F7433F4() & 1;
}

uint64_t sub_25F725870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s17PrivateSearchCore0B6ReportV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for SearchReport(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4;
  if ((sub_25F727DFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v21 = v20[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v20[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v20[11];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  sub_25F7431C4();
  sub_25F725870(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25F7433F4() & 1;
}

unint64_t sub_25F725AA8()
{
  result = qword_27FDACA60;
  if (!qword_27FDACA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACA60);
  }

  return result;
}

unint64_t sub_25F725B00()
{
  result = qword_27FDACA68;
  if (!qword_27FDACA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACA68);
  }

  return result;
}

unint64_t sub_25F725B58()
{
  result = qword_27FDACA70;
  if (!qword_27FDACA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACA70);
  }

  return result;
}

unint64_t sub_25F725BB0()
{
  result = qword_27FDACA78;
  if (!qword_27FDACA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDACA80, &qword_25F7440E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACA78);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IndexableFileType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndexableFileType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25F7260FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F726118(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_25F72615C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F7431C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25F72623C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F7431C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25F7262F8(uint64_t a1)
{
  sub_25F7431C4();
  if (v1 <= 0x3F)
  {
    sub_25F72650C(319, &qword_27FDACAF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F7263D0(uint64_t a1)
{
  sub_25F72650C(319, &qword_27FDACB10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25F7431C4();
    if (v2 <= 0x3F)
    {
      sub_25F72650C(319, &qword_27FDACB18, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25F72650C(319, &qword_27FDACB20, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F72650C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_26Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F7431C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_27Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25F7431C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F7266D4(uint64_t a1)
{
  sub_25F72650C(319, &qword_27FDACB10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25F7431C4();
    if (v2 <= 0x3F)
    {
      sub_25F72650C(319, &qword_27FDACB18, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25F72650C(319, &qword_27FDACB20, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25F726818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F7431C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F7268E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F7431C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F7269A0(uint64_t a1)
{
  result = sub_25F7431C4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BenchmarkReport._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25F726A2C(uint64_t a1)
{
  sub_25F726B98(319, &qword_27FDACB58, type metadata accessor for BenchmarkConfig);
  if (v1 <= 0x3F)
  {
    sub_25F726B98(319, &qword_27FDACB60, type metadata accessor for IndexReport);
    if (v2 <= 0x3F)
    {
      sub_25F726B98(319, &qword_27FDACB68, type metadata accessor for SearchReport);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25F726B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F7437A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25F726BEC()
{
  result = qword_27FDACB90;
  if (!qword_27FDACB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACB90);
  }

  return result;
}

uint64_t sub_25F726C40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *BitArray.init(hex:)(uint64_t a1, uint64_t a2)
{
  v2 = _s17PrivateSearchCore8HexCodecV04fromD0ySays5UInt8VGSSFZ_0(a1, a2);

  return v2;
}

size_t BitArray.init(numBytes:defaultBitValue:)(size_t result, int a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = a2 << 31 >> 31;
    v3 = result;
    v4 = sub_25F7435C4();
    *(v4 + 16) = v3;
    memset((v4 + 32), v2, v3);
    return v4;
  }

  return result;
}

uint64_t BitArray.init(numBits:defaultBitValue:)(uint64_t result, int a2)
{
  v2 = result + 8;
  if (__OFADD__(result, 8))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v3 = result + 7;
  if (v2 < 1)
  {
    v3 = result + 14;
  }

  if (v2 < -6)
  {
    goto LABEL_9;
  }

  if (v2 < 9)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3 >> 3;
  v5 = a2 << 31 >> 31;
  v6 = sub_25F7435C4();
  *(v6 + 16) = v4;
  memset((v6 + 32), v5, v4);
  return v6;
}

uint64_t static BitArray.bitsToBytes(_:)(uint64_t result)
{
  if (__OFADD__(result, 8))
  {
    __break(1u);
  }

  else
  {
    v1 = result + 14;
    if (result + 8 >= 1)
    {
      v1 = result + 7;
    }

    return v1 >> 3;
  }

  return result;
}

uint64_t static BitArray.bytesToBits(_:)(uint64_t result)
{
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    result *= 8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t BitArray.numBits.getter(unint64_t result)
{
  v1 = *(result + 16);
  if (!(v1 >> 60))
  {
    return 8 * v1;
  }

  __break(1u);
  return result;
}

size_t static BitArray.random(_:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v1 = result;
  if (result)
  {
    v2 = sub_25F7435C4();
    *(v2 + 16) = v1;
    bzero((v2 + 32), v1);
    v3 = 0;
    while (1)
    {
      v4 = 0;
      result = MEMORY[0x25F8E6E00](&v4, 8);
      if (v3 >= *(v2 + 16))
      {
        break;
      }

      *(v2 + v3++ + 32) = v4;
      if (v1 == v3)
      {
        return v2;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

BOOL BitArray.innerProduct(_:)(int8x16_t *a1, int8x16_t *a2)
{
  v2 = a2[1].u64[0];
  if (a1[1].i64[0] < v2)
  {
    v2 = a1[1].u64[0];
  }

  if (!v2)
  {
    v3 = 0;
    return ((((v3 >> 2) ^ (v3 >> 1) ^ (v3 >> 3) ^ (v3 >> 4) ^ (v3 >> 5) ^ (v3 >> 6)) ^ v3) & 1) != v3 >> 7;
  }

  if (v2 < 8)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_16;
  }

  if (v2 >= 0x20)
  {
    v4 = v2 & 0x7FFFFFFFFFFFFFE0;
    v5 = a2 + 3;
    v6 = a1 + 3;
    v7 = 0uLL;
    v8 = v2 & 0x7FFFFFFFFFFFFFE0;
    v9 = 0uLL;
    do
    {
      v7 = veorq_s8(vandq_s8(v6[-1], v5[-1]), v7);
      v9 = veorq_s8(vandq_s8(*v6, *v5), v9);
      v5 += 2;
      v6 += 2;
      v8 -= 32;
    }

    while (v8);
    v10 = veorq_s8(v9, v7);
    *v10.i8 = veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
    v11 = v10.i64[0] ^ HIDWORD(v10.i64[0]) ^ ((v10.i64[0] ^ HIDWORD(v10.i64[0])) >> 16);
    v3 = v11 ^ (v11 >> 8);
    if (v2 == v4)
    {
      return ((((v3 >> 2) ^ (v3 >> 1) ^ (v3 >> 3) ^ (v3 >> 4) ^ (v3 >> 5) ^ (v3 >> 6)) ^ v3) & 1) != v3 >> 7;
    }

    if ((v2 & 0x18) == 0)
    {
LABEL_16:
      v21 = v2 - v4;
      v22 = v4 + 32;
      v23 = &a1[2].u8[v4];
      v24 = &a2->u8[v22];
      do
      {
        v26 = *v24++;
        v25 = v26;
        v27 = *v23++;
        v3 ^= v27 & v25;
        --v21;
      }

      while (v21);
      return ((((v3 >> 2) ^ (v3 >> 1) ^ (v3 >> 3) ^ (v3 >> 4) ^ (v3 >> 5) ^ (v3 >> 6)) ^ v3) & 1) != v3 >> 7;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
    v4 = 0;
  }

  v12 = v4;
  v4 = v2 & 0x7FFFFFFFFFFFFFF8;
  v13 = v3;
  v14 = &a2[2].i8[v12];
  v15 = &a1[2].i8[v12];
  v16 = v12 - (v2 & 0x7FFFFFFFFFFFFFF8);
  do
  {
    v17 = *v14++;
    v18 = v17;
    v19 = *v15++;
    v13 = veor_s8(vand_s8(v19, v18), v13);
    v16 += 8;
  }

  while (v16);
  v20 = *&v13 ^ HIDWORD(*&v13) ^ ((*&v13 ^ HIDWORD(*&v13)) >> 16);
  v3 = v20 ^ (v20 >> 8);
  if (v2 != v4)
  {
    goto LABEL_16;
  }

  return ((((v3 >> 2) ^ (v3 >> 1) ^ (v3 >> 3) ^ (v3 >> 4) ^ (v3 >> 5) ^ (v3 >> 6)) ^ v3) & 1) != v3 >> 7;
}

char *BitArray.setRange(startBit:endBit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1 + 8;
  if (__OFADD__(a1, 8))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = a1 + 7;
  if (v10 < 1)
  {
    v11 = a1 + 14;
  }

  v5 = a2 + 8;
  if (__OFADD__(a2, 8))
  {
    goto LABEL_43;
  }

  v9 = v11 >> 3;
  v12 = a2 + 7;
  if (v5 < 1)
  {
    v12 = a2 + 14;
  }

  v6 = v12 >> 3;
  if (a2 <= 0)
  {
    v8 = -(-a2 & 7);
  }

  else
  {
    v8 = a2 & 7;
  }

  if (v6 <= v9)
  {
    goto LABEL_44;
  }

  v3 = a3;
  v7 = v6 - 1;
  v4 = v6 - 1 - v9;
  if (v6 - 1 != v9)
  {
    if (v6 - 1 <= v9)
    {
      goto LABEL_48;
    }

    if (v10 < -6)
    {
      goto LABEL_49;
    }

    v13 = *(a3 + 16);
    if (v6 - 2 >= v13 || v5 < 17 || v9 >= v13)
    {
      goto LABEL_50;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_19;
  }

  while (1)
  {
    if (v8 < 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v8 <= 2)
    {
      if (!v8)
      {
        v4 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_39;
        }

LABEL_33:
        v3 = sub_25F719C58(v3);
        goto LABEL_39;
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          v4 = 3;
          goto LABEL_38;
        }

LABEL_34:
        v4 = 127;
        goto LABEL_38;
      }

      v4 = 1;
    }

    else if (v8 > 4)
    {
      if (v8 != 5)
      {
        if (v8 == 6)
        {
          v4 = 63;
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      v4 = 31;
    }

    else
    {
      v4 = v8 == 3 ? 7 : 15;
    }

LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_39:
    if (v5 >= 9)
    {
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v3 = sub_25F719C58(v3);
LABEL_19:
    memset(&v3[v9 + 32], 255, v4);
  }

  if (v6 > *(v3 + 2))
  {
    goto LABEL_47;
  }

  v3[v7 + 32] |= v4;
  return v3;
}

void BitArray.and(_:)(int8x16_t *a1, int8x16_t *a2)
{
  v4 = a2[1].u64[0];
  v5 = a1[1].u64[0];
  if (v5 >= v4)
  {
    v6 = a2[1].u64[0];
  }

  else
  {
    v6 = a1[1].u64[0];
  }

  if (v5 <= v4)
  {
    v7 = a2[1].u64[0];
  }

  else
  {
    v7 = a1[1].u64[0];
  }

  if (v7)
  {
    v8 = sub_25F7435C4();
    *(v8 + 16) = v7;
    bzero((v8 + 32), v7);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (!v6)
    {
      return;
    }
  }

  if (v6 > *(v8 + 16))
  {
    __break(1u);
    return;
  }

  if (v6 < 8)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  if ((v8 - a2) < 0x20 || (v8 - a1) < 0x20)
  {
    goto LABEL_14;
  }

  if (v6 >= 0x20)
  {
    v9 = v6 & 0x7FFFFFFFFFFFFFE0;
    v18 = a2 + 3;
    v19 = (v8 + 48);
    v20 = a1 + 3;
    v21 = v6 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v22 = vandq_s8(*v20, *v18);
      v19[-1] = vandq_s8(v20[-1], v18[-1]);
      *v19 = v22;
      v18 += 2;
      v19 += 2;
      v20 += 2;
      v21 -= 32;
    }

    while (v21);
    if (v6 == v9)
    {
      return;
    }

    if ((v6 & 0x18) == 0)
    {
LABEL_14:
      v10 = v6 - v9;
      v11 = v9 + 32;
      v12 = (v8 + v9 + 32);
      v13 = &a1->i8[v11];
      v14 = &a2->i8[v11];
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = *v13++;
        *v12++ = v17 & v15;
        --v10;
      }

      while (v10);
      return;
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = v9;
  v9 = v6 & 0x7FFFFFFFFFFFFFF8;
  v24 = &a2[2].i8[v23];
  v25 = &a1[2].i8[v23];
  v26 = (v8 + v23 + 32);
  v27 = v23 - (v6 & 0x7FFFFFFFFFFFFFF8);
  do
  {
    v28 = *v24++;
    v29 = v28;
    v30 = *v25++;
    *v26++ = vand_s8(v30, v29);
    v27 += 8;
  }

  while (v27);
  if (v6 != v9)
  {
    goto LABEL_14;
  }
}

Swift::Void __swiftcall BitArray.setBit(_:_:)(Swift::Int a1, Swift::Bool a2)
{
  if (a1 < 0)
  {
    return;
  }

  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6 >> 60)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a1 >= 8 * v6)
  {
    return;
  }

  v3 = a1 >> 3;
  v7 = a1 >> 3 >= v6;
  if (!a2)
  {
    goto LABEL_9;
  }

  if (a1 >> 3 >= v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = *(v5 + v3 + 32) | (1 << (a1 & 7));
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 1) == 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v8 = *(v5 + 16);
    v7 = v3 >= v8;
    if (v3 < v8)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_9:
    if (!v7)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    a1 = sub_25F719C58(v5);
    v5 = a1;
  }

  v9 = a1;
  v10 = *(v5 + v3 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_25F719C58(v5);
  }

  if (v3 < *(v5 + 16))
  {
    v4 = v10 & ~(1 << (v9 & 7));
LABEL_14:
    *(v5 + v3 + 32) = v4;
    *v2 = v5;
    return;
  }

  __break(1u);
}

Swift::Bool __swiftcall BitArray.isBitSet(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 16);
  if (v2 >> 60)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 >= 8 * v2)
  {
LABEL_6:
    LOBYTE(a1) = 0;
    return a1;
  }

  if (a1 >> 3 >= v2)
  {
LABEL_8:
    __break(1u);
    return a1;
  }

  LODWORD(a1) = (*(v1 + (a1 >> 3) + 32) >> (a1 & 7)) & 1;
  return a1;
}

Swift::Void __swiftcall BitArray.xorBit(_:_:)(Swift::Int a1, Swift::Bool a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v6 = *v2;
    v7 = *(*v2 + 2);
    if (v7 >> 60)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (a1 < 8 * v7 && a2)
    {
      v3 = a1 >> 3;
      if (a1 >> 3 < v7)
      {
        v5 = a1;
        v4 = v6[v3 + 32];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v6 = sub_25F719C58(v6);
LABEL_7:
      if (v3 >= *(v6 + 2))
      {
        __break(1u);
      }

      else
      {
        v6[v3 + 32] = v4 ^ (1 << (v5 & 7));
        *v2 = v6;
      }
    }
  }
}

char *BitArray.xor(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if (v3 >= v2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (v3 >= v2)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  v6 = *(v4 + 16);
  if (v6)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_36:
      v5 = sub_25F719C58(v5);
    }

    v7 = v4 + 32;
    v8 = *(v5 + 2);
    v9 = v6 - 1;
    if (v8 >= v6 - 1)
    {
      v10 = v6 - 1;
    }

    else
    {
      v10 = *(v5 + 2);
    }

    if (v10 <= 0x1F)
    {
      goto LABEL_25;
    }

    if (v8 < v9)
    {
      v9 = *(v5 + 2);
    }

    v11 = v9 + 33;
    if ((v5 + 32) >= v4 + v11 || v7 >= &v5[v11])
    {
      v13 = v10 + 1;
      v14 = v13 & 0x1F;
      if ((v13 & 0x1F) == 0)
      {
        v14 = 32;
      }

      v15 = v13 - v14;
      v16 = (v4 + 48);
      v17 = (v5 + 48);
      v18 = v15;
      do
      {
        v19 = veorq_s8(*v17, *v16);
        v17[-1] = veorq_s8(v17[-1], v16[-1]);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 32;
      }

      while (v18);
    }

    else
    {
LABEL_25:
      v15 = 0;
    }

    do
    {
      if (v15 >= v8)
      {
        goto LABEL_35;
      }

      v5[v15 + 32] ^= *(v7 + v15);
      ++v15;
    }

    while (v6 != v15);
    if (v8 < v6)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    v8 = *(v5 + 2);
  }

  if (v6 == v8)
  {
    return v5;
  }

  if (v6 >= v8)
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    return v5;
  }

  return sub_25F719C58(v5);
}

uint64_t static BitArray.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >> 60)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(a2 + 16);
  if (v3 >> 60)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v2 == v3)
  {
    return sub_25F727844(result, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F727844(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F7278A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.IndexingData.Document(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_25F727F3C(v13, v10, type metadata accessor for TestDataBundle.IndexingData.Document);
        sub_25F727F3C(v14, v7, type metadata accessor for TestDataBundle.IndexingData.Document);
        v16 = v4[5];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_25F743904() & 1) == 0))
          {
LABEL_36:
            sub_25F727FA4(v7, type metadata accessor for TestDataBundle.IndexingData.Document);
            sub_25F727FA4(v10, type metadata accessor for TestDataBundle.IndexingData.Document);
            goto LABEL_37;
          }
        }

        else if (v20)
        {
          goto LABEL_36;
        }

        v22 = v4[6];
        v23 = &v10[v22];
        v24 = *&v10[v22 + 8];
        v25 = &v7[v22];
        v26 = *(v25 + 1);
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_36;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_25F743904() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v26)
        {
          goto LABEL_36;
        }

        v28 = v4[7];
        v29 = &v10[v28];
        v30 = *&v10[v28 + 8];
        v31 = &v7[v28];
        v32 = *(v31 + 1);
        if (v30)
        {
          if (!v32)
          {
            goto LABEL_36;
          }

          v33 = *v29 == *v31 && v30 == v32;
          if (!v33 && (sub_25F743904() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v32)
        {
          goto LABEL_36;
        }

        sub_25F7431C4();
        sub_25F727EE4();
        v34 = sub_25F7433F4();
        sub_25F727FA4(v7, type metadata accessor for TestDataBundle.IndexingData.Document);
        sub_25F727FA4(v10, type metadata accessor for TestDataBundle.IndexingData.Document);
        if (v34)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v34 & 1;
      }
    }

    v34 = 1;
  }

  else
  {
LABEL_37:
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_25F727B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.SearchingData.Token(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_25F727F3C(v13, v10, type metadata accessor for TestDataBundle.SearchingData.Token);
        sub_25F727F3C(v14, v7, type metadata accessor for TestDataBundle.SearchingData.Token);
        v16 = *(v4 + 20);
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20)
          {
            goto LABEL_24;
          }

          v21 = *v17 == *v19 && v18 == v20;
          if (!v21 && (sub_25F743904() & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (v20)
        {
          goto LABEL_24;
        }

        v22 = *(v4 + 24);
        v23 = &v10[v22];
        v24 = v10[v22 + 4];
        v25 = &v7[v22];
        v26 = v7[v22 + 4];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (*v23 != *v25)
          {
            LOBYTE(v26) = 1;
          }

          if (v26)
          {
LABEL_24:
            sub_25F727FA4(v7, type metadata accessor for TestDataBundle.SearchingData.Token);
            sub_25F727FA4(v10, type metadata accessor for TestDataBundle.SearchingData.Token);
            goto LABEL_25;
          }
        }

        sub_25F7431C4();
        sub_25F727EE4();
        v27 = sub_25F7433F4();
        sub_25F727FA4(v7, type metadata accessor for TestDataBundle.SearchingData.Token);
        sub_25F727FA4(v10, type metadata accessor for TestDataBundle.SearchingData.Token);
        if (v27)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v27 & 1;
      }
    }

    v27 = 1;
  }

  else
  {
LABEL_25:
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_25F727DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25F743904() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25F727E90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *(result + 16);
  if (v3 >> 60)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *a2;
  v5 = *(v4 + 16);
  if (v5 >> 60)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v3 == v5)
  {
    return sub_25F727844(result, v4);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25F727EE4()
{
  result = qword_27FDACB98;
  if (!qword_27FDACB98)
  {
    sub_25F7431C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACB98);
  }

  return result;
}

uint64_t sub_25F727F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F727FA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BloomFilter.init(bitArray:secret:numHashes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25F72849C(a3, a2);

  return v3;
}

uint64_t static BloomFilter.hash(token:seed:)(uint64_t a1, uint64_t a2)
{
  v8 = sub_25F7438E4();
  v9 = v4;
  MEMORY[0x25F8E6560](a1, a2);
  v5 = sub_25F7438E4();
  MEMORY[0x25F8E6560](v5);

  v6 = sub_25F72A1E8(v8, v9);

  if ((v6 & 0x8000000000000000) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

char *static BloomFilter.hash(token:numHashes:secret:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25F72849C(a3, a4);
  v7 = _s17PrivateSearchCore11BloomFilterV4hash5tokenSays6UInt64VGSS_tF_0(a1, a2, v6);

  return v7;
}

Swift::Void __swiftcall BloomFilter.addAll(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_25F7281F0(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_25F7281F0(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2);
  if (v4)
  {
    v6 = result;
    v7 = v2[1];
    v16 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_15:
      v7 = sub_25F719C58(v7);
    }

    v8 = v3 + 32;
    v3 = v7 + 32;
    do
    {
      v8 += 4;
      v17 = sub_25F7438E4();
      v18 = v9;
      MEMORY[0x25F8E6560](v6, a2);
      v10 = sub_25F7438E4();
      MEMORY[0x25F8E6560](v10);

      v11 = sub_25F72A1E8(v17, v18);

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v12 = *(v7 + 2);
      if (v12 >> 60)
      {
        goto LABEL_12;
      }

      v13 = 8 * v12;
      if (!(8 * v12))
      {
        goto LABEL_13;
      }

      v14 = v11 % v13;
      v15 = (v11 % v13) >> 3;
      if (v15 >= v12)
      {
        goto LABEL_14;
      }

      v3[v15] |= 1 << (v14 & 7);
      --v4;
    }

    while (v4);
    v16[1] = v7;
  }

  return result;
}

Swift::Bool __swiftcall BloomFilter.contains(_:)(Swift::String a1)
{
  object = a1._object;
  v3 = *(v1 + 16);
  if (!v3)
  {
    LOBYTE(a1._countAndFlagsBits) = 1;
    return a1._countAndFlagsBits;
  }

  v4 = *(v2 + 16);
  if (v4 >> 60)
  {
    goto LABEL_17;
  }

  v5 = 8 * v4;
  if (8 * v4)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    v7 = v1 + 32;
    v8 = v2 + 32;
    v9 = v3 - 1;
    while (1)
    {
      v7 += 4;
      v19 = sub_25F7438E4();
      v20 = v10;
      MEMORY[0x25F8E6560](countAndFlagsBits, object);
      v11 = sub_25F7438E4();
      MEMORY[0x25F8E6560](v11);

      v12 = sub_25F72A1E8(v19, v20);

      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      v13 = (v12 % v5) >> 3;
      if (v13 >= v4)
      {
        goto LABEL_16;
      }

      v14 = *(v8 + v13) & (1 << ((v12 % v5) & 7));
      LOBYTE(a1._countAndFlagsBits) = v14 != 0;
      v16 = v9-- != 0;
      if (!v14 || !v16)
      {
        return a1._countAndFlagsBits;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return a1._countAndFlagsBits;
}

uint64_t sub_25F72849C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AESCounterRandomNumberGenerator();
  inited = swift_initStackObject();
  inited[2] = a2;
  inited[3] = 0;

  v8 = 16;
  v9 = sub_25F7435C4();
  v9[2] = 16;
  v9[4] = 0;
  v9[5] = 0;
  v10 = MEMORY[0x277D84F90];
  inited[4] = v9;
  inited[5] = v10;
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v2 = AESCounterRandomNumberGenerator.nextUInt32()();
    v8 = sub_25F72DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v8 + 16);
    v10 = *(v8 + 24);
    v3 = v4 + 1;
    if (v4 < v10 >> 1)
    {
      goto LABEL_3;
    }
  }

  v8 = sub_25F72DCD8((v10 > 1), v3, 1, v8);
LABEL_3:
  *(v8 + 16) = v3;
  *(v8 + 4 * v4 + 32) = v2;
  v11 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      v13 = AESCounterRandomNumberGenerator.nextUInt32()();
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = v13;
        v8 = sub_25F72DCD8((v14 > 1), v15 + 1, 1, v8);
        v13 = v16;
      }

      *(v8 + 16) = v15 + 1;
      *(v8 + 4 * v15 + 32) = v13;
      --v11;
    }

    while (v11);
  }

  return v8;
}

char *_s17PrivateSearchCore11BloomFilterV4hash5tokenSays6UInt64VGSS_tF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = a3 + 32;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 += 4;
      v14 = sub_25F7438E4();
      v15 = v8;
      MEMORY[0x25F8E6560](a1, a2);
      v9 = sub_25F7438E4();
      MEMORY[0x25F8E6560](v9);

      v10 = sub_25F72A1E8(v14, v15);

      if (v10 < 0)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25F72DDDC(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_25F72DDDC((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      *&v7[8 * v13 + 32] = v10;
      if (!--v3)
      {
        return v7;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F728768(uint64_t *a1, int a2)
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

uint64_t sub_25F7287B0(uint64_t result, int a2, int a3)
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

uint64_t sub_25F728844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC8, &qword_25F7448B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CallContextImpl.clientContext.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_25F728904(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_25F728904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC8, &qword_25F7448B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CallContextImpl.__allocating_init(withClientContext:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  sub_25F728904(a1, v2 + 16);
  swift_endAccess();
  return v2;
}

uint64_t CallContextImpl.init(withClientContext:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  sub_25F728904(a1, v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t sub_25F728AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC8, &qword_25F7448B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CallContextImpl.__deallocating_deinit()
{
  sub_25F728AD0(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25F728B70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_25F728844(v3 + 16, a1);
}

__n128 sub_25F728C1C()
{
  type metadata accessor for CapacityAwareLevelStrategy();
  v0 = swift_allocObject();
  *(v0 + 56) = xmmword_25F744900;
  *(v0 + 72) = 4096;
  type metadata accessor for LevelCapacityUsageState();
  swift_allocObject();
  *(v0 + 80) = LevelCapacityUsageState.init(levelCapacity:)(4096);
  v1 = type metadata accessor for LogLevelStrategy();
  v2 = swift_allocObject();
  result = xmmword_25F744900;
  *(v2 + 16) = xmmword_25F744900;
  *(v0 + 40) = v1;
  *(v0 + 48) = &protocol witness table for LogLevelStrategy;
  *(v0 + 16) = v2;
  qword_27FDACBD0 = v0;
  return result;
}

uint64_t static CapacityAwareLevelStrategy.getInstance()()
{
  if (qword_27FDAC960 != -1)
  {
    swift_once();
  }
}

uint64_t CapacityAwareLevelStrategy.refreshState(searchIndexReader:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F728D44, 0, 0);
}

uint64_t sub_25F728D44()
{
  v1 = v0[3];
  v0[4] = v1[10];
  v2 = v1[8];
  v3 = v1[9];

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F728E08;
  v5 = v0[2];

  return LevelCapacityUsageState.refresh(searchIndexReader:level0BloomFilterSizeBits:levelCapacity:)(v5, v2, v3);
}

uint64_t sub_25F728E08()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F728F44, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F728F44()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::UInt64 __swiftcall CapacityAwareLevelStrategy.levelForTerms(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  v4 = sub_25F743394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_25F72963C(v2 + 16, v15);
  v8 = v16;
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v10 = (*(v9 + 8))(a1, v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v2 + 80);
    v15[0] = 2 * v10;

    v13 = sub_25F743384();
    MEMORY[0x28223BE20](v13);
    *&v14[-32] = v12;
    *&v14[-24] = 2 * v10;
    *&v14[-16] = v15;
    sub_25F743774();
    (*(v5 + 8))(v7, v4);

    return v15[0];
  }

  return result;
}

Swift::UInt64 __swiftcall CapacityAwareLevelStrategy.bloomFilterSizeForLevel(_:)(Swift::UInt64 a1)
{
  swift_beginAccess();
  sub_25F72963C(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  result = __swift_project_boxed_opaque_existential_1(v7, v8);
  if (a1 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = (*(v4 + 16))((a1 + 1) >> 1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v6;
  }

  return result;
}

Swift::UInt64 __swiftcall CapacityAwareLevelStrategy.bloomFilterSizeForNumTerms(_:)(Swift::UInt64 a1)
{
  v2 = CapacityAwareLevelStrategy.levelForTerms(_:)(a1);
  swift_beginAccess();
  sub_25F72963C(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  result = __swift_project_boxed_opaque_existential_1(v7, v8);
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = (*(v4 + 16))((v2 + 1) >> 1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v6;
  }

  return result;
}

Swift::String __swiftcall CapacityAwareLevelStrategy.idForLevelStrategy()()
{
  v0 = 0x800000025F746240;
  v1 = 0xD000000000000011;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall CapacityAwareLevelStrategy.setLevel0BloomFilterSizeBits(level0BloomFilterSizeBits:)(Swift::UInt64 level0BloomFilterSizeBits)
{
  v1[8] = level0BloomFilterSizeBits;
  v3 = v1[7];
  v4 = type metadata accessor for LogLevelStrategy();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = level0BloomFilterSizeBits;
  v7 = v4;
  v8 = &protocol witness table for LogLevelStrategy;
  *&v6 = v5;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_25F7296C0(&v6, (v1 + 2));
  swift_endAccess();
}

Swift::Void __swiftcall CapacityAwareLevelStrategy.setLevel0MaxTerms(level0MaxTerms:)(Swift::UInt64 level0MaxTerms)
{
  v1[7] = level0MaxTerms;
  v3 = v1[8];
  v4 = type metadata accessor for LogLevelStrategy();
  v5 = swift_allocObject();
  *(v5 + 16) = level0MaxTerms;
  *(v5 + 24) = v3;
  v7 = v4;
  v8 = &protocol witness table for LogLevelStrategy;
  *&v6 = v5;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_25F7296C0(&v6, (v1 + 2));
  swift_endAccess();
}

uint64_t CapacityAwareLevelStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t CapacityAwareLevelStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

void *sub_25F7294B0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_25F72963C(v3 + 16, v8);
  v4 = v9;
  v5 = v10;
  result = __swift_project_boxed_opaque_existential_1(v8, v9);
  if (a1 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = (*(v5 + 16))((a1 + 1) >> 1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v7;
  }

  return result;
}

void *sub_25F729554(Swift::UInt64 a1)
{
  v2 = *v1;
  v3 = CapacityAwareLevelStrategy.levelForTerms(_:)(a1);
  swift_beginAccess();
  sub_25F72963C(v2 + 16, v8);
  v4 = v9;
  v5 = v10;
  result = __swift_project_boxed_opaque_existential_1(v8, v9);
  if (v3 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = (*(v5 + 16))((v3 + 1) >> 1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v7;
  }

  return result;
}

uint64_t sub_25F72963C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F7296C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t CaseInsensitiveIndexer.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_25F7296C0(a1, v2 + 16);
  return v2;
}

uint64_t CaseInsensitiveIndexer.index(key:tokens:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return MEMORY[0x2822009F8](sub_25F72978C, 0, 0);
}

uint64_t sub_25F72978C()
{
  v1 = v0[11];
  sub_25F72963C(v0[13] + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v0[11];
    v24 = MEMORY[0x277D84F90];
    sub_25F729E00(0, v4, 0);
    v5 = v24;
    v7 = v6 + 40;
    do
    {
      v8 = sub_25F743474();
      v11 = *(v24 + 16);
      v10 = *(v24 + 24);
      if (v11 >= v10 >> 1)
      {
        v22 = v8;
        v13 = v9;
        sub_25F729E00((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v22;
      }

      *(v24 + 16) = v11 + 1;
      v12 = v24 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 16;
      --v4;
    }

    while (v4);
  }

  v0[14] = v5;
  v14 = *(v3 + 16);
  v23 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_25F729998;
  v16 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  v19 = v0[8];
  v20 = v0[7];

  return v23(v20, v19, v17, v18, v5, v16, v2, v14);
}

uint64_t sub_25F729998()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_25F729B18;
  }

  else
  {

    v2 = sub_25F729AB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F729AB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F729B18()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CaseInsensitiveIndexer.search(token:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = sub_25F743474();
  (*(*(v3 + 8) + 8))(v4);
}

uint64_t CaseInsensitiveIndexer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25F729C80(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40));
  v4 = sub_25F743474();
  (*(*(v3 + 8) + 8))(v4);
}

uint64_t sub_25F729D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F71C02C;

  return CaseInsensitiveIndexer.index(key:tokens:context:)(a1, a2, a3, a4, a5, a6);
}

char *sub_25F729E00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F729E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F729E44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F729F90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F729E64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F72A084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F729E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBE8, &unk_25F744BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F729F90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBD8, &qword_25F7449F8);
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

char *sub_25F72A084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBE0, &unk_25F744A00);
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

Swift::Int64 __swiftcall Double.toMillis()()
{
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25F72A1E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F73A5B8(a1, a2);
  v3 = sub_25F7435C4();
  v4 = v3;
  *(v3 + 16) = 8;
  *(v3 + 32) = 0;
  v5 = (v3 + 32);
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 32);
    if (v6 == 8 && (v7 < v3 + 40 ? (v8 = v5 >= v2 + 40) : (v8 = 1), v8))
    {
      *v5 = veor_s8(*v5, *v7);
    }

    else
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = i & 7;
        v11 = v7->i8[i];
        v5->i8[v10] ^= v11;
      }
    }
  }

  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v4 + 32) &= 0x3Fu;

  v13 = sub_25F71A024(v12);
  v15 = v14;

  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
LABEL_19:
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_25;
    }

    v22 = *(v13 + 16);
    v23 = sub_25F743064();
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = v23;
    v25 = sub_25F743084();
    if (!__OFSUB__(v22, v25))
    {
      v21 = (v22 - v25 + v24);
      sub_25F743074();
      if (v21)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v17 = v13;
  if (!v16)
  {
LABEL_25:
    sub_25F71A0D4(v13, v15);

    return bswap64(v17);
  }

  if (v13 > v13 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = sub_25F743064();
  if (v18)
  {
    v19 = v18;
    v20 = sub_25F743084();
    if (__OFSUB__(v13, v20))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      sub_25F743074();
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v21 = (v13 - v20 + v19);
    sub_25F743074();
    if (v21)
    {
LABEL_23:
      v17 = *v21;
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_32:
  result = sub_25F743074();
  __break(1u);
  return result;
}

void *Data.toUInt8Array()(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F7430C4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    while (1)
    {
      v13 = sub_25F72A528(v10, 0);
      v14 = sub_25F7430A4();
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return result;
}

void *sub_25F72A528(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9E8, "P#");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25F72A5C0()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_27FDACBF0);
  v4 = __swift_project_value_buffer(v0, qword_27FDACBF0);
  *v3 = 0xD000000000000016;
  v3[1] = 0x800000025F746380;
  sub_25F743364();
  return sub_25F72AE08(v3, v4);
}

void sub_25F72A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a3, a4);
}

uint64_t static DocumentKey.from(str:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F72A8FC();
  v6 = sub_25F7437C4();
  if (*(v6 + 16) == 2)
  {
    v7 = v6;

    v8 = sub_25F743584();
    if (*(v7 + 16) >= 2uLL)
    {
      v9 = v8;

      sub_25F743584();
      return v9;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (qword_27FDAC968 != -1)
  {
LABEL_7:
    swift_once();
  }

  v11 = type metadata accessor for Logger(0);
  __swift_project_value_buffer(v11, qword_27FDACBF0);
  sub_25F743814();

  MEMORY[0x25F8E6560](a1, a2);
  MEMORY[0x25F8E6560](11869, 0xE200000000000000);
  sub_25F73656C(3u, 0xD000000000000025, 0x800000025F746350);

  return 0;
}

unint64_t sub_25F72A8FC()
{
  result = qword_27FDACC08;
  if (!qword_27FDACC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACC08);
  }

  return result;
}

uint64_t DocumentKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a4, a5);
  sub_25F7434C4();
}

uint64_t DocumentKey.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F743994();

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a3, a4);
  sub_25F7434C4();

  return sub_25F7439B4();
}

uint64_t sub_25F72AA7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](v1, v2);
  return v4;
}

uint64_t sub_25F72AAE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25F743994();

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](v1, v2);
  sub_25F7434C4();

  return sub_25F7439B4();
}

uint64_t sub_25F72AB78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](v2, v3);
  sub_25F7434C4();
}

uint64_t sub_25F72AC00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F743994();

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](v2, v3);
  sub_25F7434C4();

  return sub_25F7439B4();
}

uint64_t _s22PrivateSearchProtocols11DocumentKeyV0aB4CoreE2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v16 = a1;
  *(&v16 + 1) = a2;

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a3, a4);

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a7, a8);
  if (v16 == __PAIR128__(a6, a5))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_25F743904();
  }

  return v14 & 1;
}

unint64_t sub_25F72ADB4()
{
  result = qword_27FDACC10;
  if (!qword_27FDACC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACC10);
  }

  return result;
}

uint64_t sub_25F72AE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *static DocumentProcessor.deduplicateTokens(tokens:)(uint64_t a1)
{

  v2 = sub_25F72B110(v1);

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_25F72AF34(*(v2 + 16), 0);
  v5 = sub_25F72AFB8(&v7, v4 + 4, v3, v2);
  sub_25F72B1A8(v7);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void *sub_25F72AF34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBE8, &unk_25F744BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_25F72AFB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25F72B110(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8E6760](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25F72E00C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t EncryptedDocumentIndexer.__allocating_init(documentIndexWriter:levelStrategy:secret:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_25F7296C0(a1, v6 + 16);
  sub_25F7296C0(a2, v6 + 56);
  *(v6 + 96) = a3;
  return v6;
}

uint64_t EncryptedDocumentIndexer.init(documentIndexWriter:levelStrategy:secret:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_25F7296C0(a1, v3 + 16);
  sub_25F7296C0(a2, v3 + 56);
  *(v3 + 96) = a3;
  return v3;
}

uint64_t EncryptedDocumentIndexer.index(key:tokens:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25F72B298, 0, 0);
}

void *sub_25F72B298()
{
  v22 = v0;

  v2 = sub_25F72B110(v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_25F72AF34(*(v2 + 16), 0);
    v5 = sub_25F72AFB8(&v21, v4 + 4, v3, v2);
    sub_25F72B1A8(v21);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = v0[8];
  v8 = v0[4];
  v7 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  v11 = v6[10];
  v12 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v11);
  v13 = (*(v12 + 24))(v4[2], v11, v12);
  EncryptedDocumentIndexer.createBloomFilter(tokens:size:)(v4, v13);
  v15 = v14;

  v16 = sub_25F72B8FC(v15, v10, v9, v8, v7);
  v0[9] = v16;

  v17 = v6[6];
  result = __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  if (!(*(v16 + 2) >> 60))
  {
    v25 = *(v17 + 8) + **(v17 + 8);
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_25F72B514;
    v24 = v17;
    v20 = v25;

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F72B514()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F72B650, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F72B650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EncryptedDocumentIndexer.createBloomFilter(tokens:size:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(a2, 8))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = result;
  if ((a2 + 7) >= 8)
  {
    v4 = (a2 + 7) >> 3;
    v5 = sub_25F7435C4();
    *(v5 + 16) = v4;
    bzero((v5 + 32), v4);
  }

  result = sub_25F72849C(16, *(v2 + 96));
  v10 = result;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = (v3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_25F7281F0(v8, v9);

      v7 += 2;
      --v6;
    }

    while (v6);
    return v10;
  }

  return result;
}

void *EncryptedDocumentIndexer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t EncryptedDocumentIndexer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25F72B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F71C02C;

  return EncryptedDocumentIndexer.index(key:tokens:context:)(a1, a2, a3, a4, a5, a6);
}

char *sub_25F72B8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 96);
  result = sub_25F72963C(v5 + 56, v28);
  v13 = *(a1 + 16);
  if (v13 >> 60)
  {
    __break(1u);
  }

  else
  {
    v25 = v11;
    v14 = 8 * v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBE8, &unk_25F744BA0);
    inited = swift_initStackObject();
    *(inited + 32) = a2;
    *(inited + 16) = xmmword_25F743F50;
    *(inited + 40) = a3;
    *(inited + 48) = a4;
    *(inited + 56) = a5;
    v17 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v24 = a1;
    v18 = *(v16 + 32);

    v26 = v18(v17, v16);
    v27 = v19;
    MEMORY[0x25F8E6560](47, 0xE100000000000000);
    v20 = sub_25F7438E4();
    MEMORY[0x25F8E6560](v20);

    *(inited + 64) = v26;
    *(inited + 72) = v27;
    v21 = sub_25F737B98(v25, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v28);
    v22 = sub_25F737614(v14, v21);

    v23 = BitArray.xor(_:)(v24, v22);

    return v23;
  }

  return result;
}

uint64_t EncryptedDocumentIndexerSearcher.__allocating_init(reader:writer:levelStrategy:secret:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_25F72963C(a3, v12);
  type metadata accessor for EncryptedDocumentSearcher();
  v9 = swift_allocObject();
  sub_25F7296C0(v12, v9 + 16);
  *(v9 + 96) = a4;
  sub_25F7296C0(a1, v9 + 56);
  *(v8 + 24) = v9;
  type metadata accessor for EncryptedDocumentIndexer();
  v10 = swift_allocObject();
  sub_25F7296C0(a2, v10 + 16);
  sub_25F7296C0(a3, v10 + 56);
  *(v10 + 96) = a4;
  *(v8 + 16) = v10;

  return v8;
}

uint64_t EncryptedDocumentIndexerSearcher.init(reader:writer:levelStrategy:secret:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  sub_25F72963C(a3, v12);
  type metadata accessor for EncryptedDocumentSearcher();
  v9 = swift_allocObject();
  sub_25F7296C0(v12, v9 + 16);
  *(v9 + 96) = a4;
  sub_25F7296C0(a1, v9 + 56);
  *(v4 + 24) = v9;
  type metadata accessor for EncryptedDocumentIndexer();
  v10 = swift_allocObject();
  sub_25F7296C0(a2, v10 + 16);
  sub_25F7296C0(a3, v10 + 56);
  *(v10 + 96) = a4;
  *(v4 + 16) = v10;

  return v4;
}

uint64_t EncryptedDocumentIndexerSearcher.index(key:tokens:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25F72BCB0, 0, 0);
}

uint64_t sub_25F72BCB0()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25F72BFFC;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return EncryptedDocumentIndexer.index(key:tokens:context:)(v7, v6, v4, v5, v2, v3);
}

uint64_t EncryptedDocumentIndexerSearcher.deinit()
{

  return v0;
}

uint64_t EncryptedDocumentIndexerSearcher.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25F72BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  return MEMORY[0x2822009F8](sub_25F72BE3C, 0, 0);
}

uint64_t sub_25F72BE3C()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25F72BEE4;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return EncryptedDocumentIndexer.index(key:tokens:context:)(v7, v6, v4, v5, v2, v3);
}

uint64_t sub_25F72BEE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t EncryptedDocumentSearcher.__allocating_init(searchIndexReader:levelStrategy:secret:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_25F7296C0(a2, v6 + 16);
  *(v6 + 96) = a3;
  sub_25F7296C0(a1, v6 + 56);
  return v6;
}

uint64_t EncryptedDocumentSearcher.init(searchIndexReader:levelStrategy:secret:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_25F7296C0(a2, v3 + 16);
  *(v3 + 96) = a3;
  sub_25F7296C0(a1, v3 + 56);
  return v3;
}

uint64_t EncryptedDocumentSearcher.search(token:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v26 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC18, &unk_25F744C30);
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v23 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = sub_25F72849C(16, v6[12]);
  v17 = _s17PrivateSearchCore11BloomFilterV4hash5tokenSays6UInt64VGSS_tF_0(a1, a2, v16);

  v18 = v6[10];
  v19 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v18);
  v20 = (*(v19 + 8))(v17, a3, v18, v19);
  if (v5)
  {
  }

  MEMORY[0x28223BE20](v20);
  *(&v22 - 4) = v15;
  *(&v22 - 3) = v6;
  *(&v22 - 2) = v17;
  (*(v24 + 104))(v12, *MEMORY[0x277D858A0], v25);
  sub_25F7436D4();

  return (*(v23 + 8))(v15, v13);
}

uint64_t EncryptedDocumentSearcher.processResults(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC18, &unk_25F744C30);
  MEMORY[0x28223BE20](v5);
  v10 = a1;
  v11 = v2;
  v12 = a2;
  (*(v7 + 104))(&v9[-v6], *MEMORY[0x277D858A0]);
  return sub_25F7436D4();
}

uint64_t sub_25F72C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v27 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_25F743624();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, v28, v9);
  (*(v6 + 16))(v8, a1, v5);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v6 + 80) + v20 + 8) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + v18, v13, v9);
  v23 = v30;
  *(v22 + v19) = v29;
  *(v22 + v20) = v23;
  (*(v6 + 32))(v22 + v21, v27, v26);

  sub_25F72D688(0, 0, v16, &unk_25F744CC8, v22);
}

uint64_t sub_25F72C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a6;
  v7[39] = a7;
  v7[36] = a4;
  v7[37] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC40, &qword_25F744CD0);
  v7[40] = v8;
  v7[41] = *(v8 - 8);
  v7[42] = swift_task_alloc();
  v7[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC48, &qword_25F744CD8);
  v7[44] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v7[45] = v9;
  v7[46] = *(v9 - 8);
  v7[47] = swift_task_alloc();
  v7[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC50, &qword_25F744CE0);
  v7[49] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC58, &qword_25F744CE8);
  v7[50] = v10;
  v7[51] = *(v10 - 8);
  v7[52] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC60, &qword_25F744CF0);
  v7[53] = v11;
  v7[54] = *(v11 - 8);
  v7[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F72C9CC, 0, 0);
}

uint64_t sub_25F72C9CC()
{
  v1 = v0[52];
  v10 = v0[51];
  v2 = v0[50];
  v3 = v0[37];
  v4 = v0[38];
  (*(v0[46] + 16))(v0[47], v0[36], v0[45]);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_25F72FB70(&qword_27FDACC68, &qword_27FDACC20, &qword_25F744E00, MEMORY[0x277D858E0]);

  sub_25F7438D4();
  sub_25F72FB70(&qword_27FDACC70, &qword_27FDACC50, &qword_25F744CE0, MEMORY[0x277D859A0]);
  sub_25F743894();
  MEMORY[0x25F8E68A0](v2);
  sub_25F743634();
  sub_25F743864();
  (*(v10 + 8))(v1, v2);
  sub_25F743874();
  v0[32] = MEMORY[0x277D84FA0];
  v0[56] = sub_25F743854();
  v6 = sub_25F72FB70(&qword_27FDACC78, &qword_27FDACC48, &qword_25F744CD8, MEMORY[0x277D85998]);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_25F72CC9C;
  v8 = v0[43];

  return MEMORY[0x282200308](v0 + 8, v8, v6);
}

uint64_t sub_25F72CC9C()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {

    v3 = sub_25F72CFF0;
  }

  else
  {
    (*(v2 + 448))();
    v3 = sub_25F72CDD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F72CDD0()
{
  v1 = v0[9];
  v0[59] = v1;
  if (v1)
  {
    v3 = v0[12];
    v2 = v0[13];
    v5 = v0[10];
    v4 = v0[11];
    v0[60] = v3;
    v0[61] = v4;
    v0[2] = v0[8];
    v0[3] = v1;
    v0[4] = v5;
    v0[5] = v4;
    v0[6] = v3;
    v0[7] = v2;
    v6 = sub_25F743864();
    v0[62] = v7;
    v14 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[63] = v8;
    *v8 = v0;
    v8[1] = sub_25F72D1DC;

    return (v14)(v0 + 18, v0 + 2);
  }

  else
  {
    v11 = v0[54];
    v10 = v0[55];
    v12 = v0[53];

    v0[35] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
    sub_25F743674();
    (*(v11 + 8))(v10, v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_25F72CFF0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  (*(v0 + 448))();
  *(v0 + 264) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  sub_25F743674();
  sub_25F743814();
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  MEMORY[0x25F8E6560](0xD000000000000022, 0x800000025F746500);
  *(v0 + 272) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F0, &qword_25F744D10);
  sub_25F743834();
  MEMORY[0x25F8E6560](46, 0xE100000000000000);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  sub_25F72FBB8();
  swift_allocError();
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v7 + 16) = 3;
  swift_willThrow();
  MEMORY[0x25F8E6CF0](v1);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F72D1DC()
{
  v1 = *v0;

  *(v1 + 512) = *(v1 + 144);
  *(v1 + 520) = *(v1 + 152);
  *(v1 + 536) = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_25F72D39C, 0, 0);
}

uint64_t sub_25F72D39C()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];

  sub_25F72E15C(v0 + 22, v4, v3, v2, v1);

  v0[26] = v4;
  v0[27] = v3;
  v0[28] = v2;
  v0[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  sub_25F743664();
  (*(v6 + 8))(v5, v7);
  v0[56] = sub_25F743854();
  v8 = sub_25F72FB70(&qword_27FDACC78, &qword_27FDACC48, &qword_25F744CD8, MEMORY[0x277D85998]);
  v9 = swift_task_alloc();
  v0[57] = v9;
  *v9 = v0;
  v9[1] = sub_25F72CC9C;
  v10 = v0[43];

  return MEMORY[0x282200308](v0 + 8, v10, v8);
}

uint64_t sub_25F72D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F72D570, 0, 0);
}

uint64_t sub_25F72D570()
{
  v1 = sub_25F72D8F4(*(v0 + 16), *(v0 + 32));
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_25F72D5D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v5 = a2[2];
  v6 = a2[3];
  v2[4] = v3;
  v2[5] = v5;
  v2[6] = v6;

  return MEMORY[0x2822009F8](sub_25F72D660, 0, 0);
}

uint64_t sub_25F72D660()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_25F72D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25F72F8B4(a3, v22 - v9);
  v11 = sub_25F743624();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25F72F924(v10);
  }

  else
  {
    sub_25F743614();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25F7435F4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25F743494() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25F72F924(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F72F924(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25F72D8F4(__int128 *a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  sub_25F72963C(v2 + 16, v28);
  v6 = *(a1 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBE8, &unk_25F744BA0);
  inited = swift_initStackObject();
  v9 = a1[1];
  v31 = *a1;
  v8 = v31;
  v32 = v9;
  *(inited + 16) = xmmword_25F743F50;
  *(inited + 32) = v8;
  *(inited + 48) = v9;
  v10 = v29;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v12 = *(v11 + 32);
  sub_25F72F4CC(&v31, &v26);
  sub_25F72F528(&v32, &v26);
  v26 = v12(v10, v11);
  v27 = v13;
  MEMORY[0x25F8E6560](47, 0xE100000000000000);
  v14 = sub_25F7438E4();
  MEMORY[0x25F8E6560](v14);

  v15 = v27;
  *(inited + 64) = v26;
  *(inited + 72) = v15;
  v16 = sub_25F737B98(v5, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  v18 = *(a2 + 16);
  if (v18)
  {
    if (v6)
    {
      v19 = (a2 + 32);
      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        v22 = *v19++;
        v21 = v22;
        if (v22 < 0)
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25F72DF10(0, *(v20 + 16) + 1, 1, v20, &qword_27FDACC28, &qword_25F744C98);
          v20 = result;
        }

        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_25F72DF10((v23 > 1), v24 + 1, 1, v20, &qword_27FDACC28, &qword_25F744C98);
          v20 = result;
        }

        *(v20 + 16) = v24 + 1;
        *(v20 + 8 * v24 + 32) = v21 % v6;
        if (!--v18)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
LABEL_12:
    v25 = MaskedBloomFilterAlgorithm.match(maskedBitArray:selectedIndexes:)(*(a1 + 4), v20, v16);

    return v25 & 1;
  }

  return result;
}

void *EncryptedDocumentSearcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t EncryptedDocumentSearcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

char *sub_25F72DBE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9E8, "P#");
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

char *sub_25F72DCD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCA0, &unk_25F744D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25F72DDF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC30, &unk_25F744CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F72DF10(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}