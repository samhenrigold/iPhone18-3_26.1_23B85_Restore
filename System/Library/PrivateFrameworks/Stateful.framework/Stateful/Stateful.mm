unint64_t sub_26B9F6F4C()
{
  result = qword_280434748;
  if (!qword_280434748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434748);
  }

  return result;
}

double variable initialization expression of StateObserver.configuration@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26B9F7048(uint64_t a1, int a2)
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

uint64_t sub_26B9F7068(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280434750)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280434750);
    }
  }
}

void *sub_26B9F70F8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26B9F71FC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B9F71FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434768, &qword_26BA045D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B9F7330(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B9F7350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B9F7350(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434768, &qword_26BA045D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B9F7484(uint64_t a1)
{
  v2 = sub_26BA04080();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  *(&v57 + 1) = swift_getObjectType();
  *&v56 = a1;
  swift_unknownObjectRetain();
  sub_26BA04060();
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  sub_26B9F7AC0(v16, v14);
  v18 = *(v3 + 48);
  if (v18(v14, 1, v2) == 1)
  {
LABEL_33:
    sub_26B9F7B30(v16);
    sub_26B9F7B30(v14);
    return v17;
  }

  else
  {
    v47 = (v3 + 32);
    v39 = (v3 + 8);
    v46 = v2;
    v45 = v5;
    v44 = v14;
    v43 = v11;
    v42 = v16;
    v41 = v3 + 48;
    v40 = v18;
    while (1)
    {
      sub_26B9F7B30(v14);
      sub_26B9F7AC0(v16, v11);
      result = v18(v11, 1, v2);
      if (result == 1)
      {
        break;
      }

      (*v47)(v5, v11, v2);
      sub_26BA04070();
      sub_26BA03FC0();
      sub_26BA04000();
      if (*(&v58 + 1))
      {
        v22 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            v52 = v56;
            v53 = v57;
            v54 = v58;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434760, &qword_26BA045D0);
            if (swift_dynamicCast())
            {
              if (v55)
              {
                break;
              }
            }

            sub_26BA04000();
            if (!*(&v58 + 1))
            {
              goto LABEL_17;
            }
          }

          v51 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_26B9F71FC(0, v22[2] + 1, 1, v22);
          }

          v24 = v22[2];
          v23 = v22[3];
          v25 = v51;
          if (v24 >= v23 >> 1)
          {
            v26 = sub_26B9F71FC((v23 > 1), v24 + 1, 1, v22);
            v25 = v51;
            v22 = v26;
          }

          v22[2] = v24 + 1;
          *&v22[2 * v24 + 4] = v25;
          sub_26BA04000();
        }

        while (*(&v58 + 1));
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }

LABEL_17:

      v27 = v22[2];
      if (v27)
      {
        v28 = 0;
        v49 = v27 - 1;
        v29 = MEMORY[0x277D84F90];
        do
        {
          v50 = v29;
          v30 = v28;
          while (1)
          {
            if (v30 >= v22[2])
            {
              __break(1u);
              goto LABEL_35;
            }

            v51 = *&v22[2 * v30 + 4];
            v28 = v30 + 1;
            ObjectType = swift_getObjectType();
            v32 = *(&v51 + 1);
            v33 = *(*(&v51 + 1) + 8);
            swift_unknownObjectRetain();
            if (v33(ObjectType, v32))
            {
              break;
            }

            result = swift_unknownObjectRelease();
            ++v30;
            if (v27 == v28)
            {
              v29 = v50;
              goto LABEL_3;
            }
          }

          v34 = v50;
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v56 = v34;
          if ((result & 1) == 0)
          {
            result = sub_26B9F7330(0, v34[2] + 1, 1);
            v34 = v56;
          }

          v35 = v51;
          v37 = v34[2];
          v36 = v34[3];
          if (v37 >= v36 >> 1)
          {
            result = sub_26B9F7330((v36 > 1), v37 + 1, 1);
            v35 = v51;
            v34 = v56;
          }

          v34[2] = v37 + 1;
          *&v34[2 * v37 + 4] = v35;
          v38 = v49 == v30;
          v29 = v34;
        }

        while (!v38);
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }

LABEL_3:

      sub_26B9F70F8(v29);
      v19 = v48;
      v5 = v45;
      sub_26BA04050();
      v2 = v46;
      (*v39)(v5, v46);
      v16 = v42;
      sub_26B9F7B30(v42);
      sub_26B9F7B98(v19, v16);
      v14 = v44;
      sub_26B9F7AC0(v16, v44);
      v18 = v40;
      v20 = v40(v14, 1, v2);
      v11 = v43;
      if (v20 == 1)
      {
        v17 = v59;
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
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

uint64_t sub_26B9F7AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9F7B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9F7B98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434758, &qword_26BA045C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9F7C10(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_26BA03CA0();
      result = sub_26BA03F40();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26B9F7DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v21 = a1;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *(v16 + 16);
  v22[1] = v7;
  v22[2] = v17;
  v20 = *(v16 + 32);
  v23 = v20;
  v24 = v18;
  _s16CollectByTriggerV5InnerCMa(0, v22);
  (*(v13 + 16))(v15, v21, a3);
  (*(v8 + 16))(v11, v4 + *(v6 + 52), v7);
  LOBYTE(v6) = *(v4 + *(v6 + 56));
  swift_allocObject();
  v22[0] = sub_26B9F803C(v15, v11, v6);
  swift_getWitnessTable();
  sub_26BA03DD0();
}

uint64_t *sub_26B9F7FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  return sub_26B9F803C(a1, a2, v3);
}

uint64_t *sub_26B9F803C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 152);
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v3 + v8) = v9;
  v10 = *(*v3 + 160);
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v3 + v10) = v11;
  v12 = *(*v3 + 168);
  swift_getAssociatedTypeWitness();
  *(v3 + v12) = sub_26BA03EA0();
  v13 = v3 + *(*v3 + 176);
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  v14 = *(*v3 + 200);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = sub_26BA03CA0();
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  (*(*(*(v7 + 96) - 8) + 32))(v3 + *(*v3 + 128), a1);
  (*(*(*(v7 + 88) - 8) + 32))(v3 + *(*v3 + 136), a2);
  *(v3 + *(*v3 + 144)) = a3;
  return v3;
}

uint64_t *sub_26B9F8300()
{
  v1 = *v0;
  MEMORY[0x26D689BB0](*(v0 + *(*v0 + 152)), -1, -1);
  MEMORY[0x26D689BB0](*(v0 + *(*v0 + 160)), -1, -1);
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));

  sub_26B9FA1B0(v0 + *(*v0 + 176));

  v2 = *(*v0 + 200);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_26BA03CA0();
  v3 = sub_26BA03F40();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_26B9F8544()
{
  v0 = sub_26B9F8300();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B9F85B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B9F864C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_26B9F885C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 1;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

void sub_26B9F8B58(uint64_t a1)
{
  v37 = *v1;
  v3 = *(v37 + 104);
  v4 = *(v37 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_26BA03CA0();
  v38 = sub_26BA03F40();
  v6 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  sub_26BA03D00();
  if ((sub_26BA03CE0() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_4:
  v15 = a1;
  v34 = v4;
  v35 = v3;
  v16 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v16);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  v18 = *(v1 + v17);
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
    goto LABEL_14;
  }

  v32 = v6;
  v33 = v16;
  v19 = v12;
  v20 = v14;
  sub_26BA03D00();
  v21 = sub_26BA03CE0();
  v22 = sub_26BA03D00();
  if ((v21 & 1) == 0)
  {
    v23 = sub_26BA03CE0();
    v14 = v20;
    v12 = v19;
    v6 = v32;
    v16 = v33;
    if (v23)
    {
      goto LABEL_11;
    }

    if (((v18 | v15) & 0x8000000000000000) == 0)
    {
      v22 = v18 + v15;
      if (!__OFADD__(v18, v15))
      {
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        return;
      }

LABEL_11:
      v22 = sub_26BA03D00();
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v20;
  v12 = v19;
  v6 = v32;
  v16 = v33;
LABEL_13:
  *(v1 + v17) = v22;
LABEL_14:
  swift_endAccess();
  v24 = *(*v1 + 200);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v24, v38);
  if ((*(v12 + 48))(v11, 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v38);
    os_unfair_lock_unlock(v16);
  }

  else
  {
    v25 = v12;
    (*(v12 + 32))(v14, v11, v5);
    v26 = *(*v1 + 168);
    swift_beginAccess();
    v27 = v16;
    v28 = *(v1 + v26);
    swift_getAssociatedTypeWitness();
    v29 = v14;

    *(v1 + v26) = sub_26BA03EA0();

    v30 = v36;
    (*(v25 + 56))(v36, 1, 1, v5);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v24, v30, v38);
    swift_endAccess();
    os_unfair_lock_unlock(v27);
    v31 = *(v1 + *(*v1 + 160));
    os_unfair_lock_lock(v31);
    v39 = v28;
    sub_26BA03C80();

    sub_26BA03C60();
    os_unfair_lock_unlock(v31);
    (*(v25 + 8))(v29, v5);
  }
}

void sub_26B9F9098()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v1);
  v2 = *(*v0 + 176);
  swift_beginAccess();
  sub_26B9FA140(v0 + v2, &v7);
  if (*(&v8 + 1))
  {
    sub_26B9FA624(&v7, v10);
    v3 = *(*v0 + 184);
    v4 = *(v0 + v3);
    swift_getAssociatedTypeWitness();

    v5 = sub_26BA03EA0();
    v6 = *(*v0 + 168);
    swift_beginAccess();
    *(v0 + v6) = v5;

    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    swift_beginAccess();
    sub_26B9FA0D0(&v7, v0 + v2);
    swift_endAccess();
    *(v0 + v3) = 0;

    os_unfair_lock_unlock(v1);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_26BA03C90();
    if (v4)
    {

      sub_26BA03CC0();
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_26B9FA1B0(&v7);
    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_26B9F9294(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v4);
  v5 = *(*v1 + 176);
  swift_beginAccess();
  sub_26B9FA140(v1 + v5, v13);
  v6 = v14;
  sub_26B9FA1B0(v13);
  if (v6)
  {
    os_unfair_lock_unlock(v4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_26BA03C90();
  }

  else
  {
    sub_26B9FA218(a1, v13);
    swift_beginAccess();
    sub_26B9FA0D0(v13, v1 + v5);
    swift_endAccess();
    v8 = v3[14];
    v9 = v3[11];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_26BA03CD0();
    v10 = swift_allocObject();
    v10[2] = v3[10];
    v10[3] = v9;
    v10[4] = v3[12];
    v10[5] = v3[13];
    v10[6] = v8;
    v10[7] = v3[15];

    v11 = sub_26BA03CB0();
    *(v1 + *(*v1 + 184)) = v11;

    v13[0] = v11;
    swift_getWitnessTable();
    sub_26BA03DD0();
    os_unfair_lock_unlock(v4);
    v12 = *(v1 + *(*v1 + 160));
    os_unfair_lock_lock(v12);
    v14 = v3;
    WitnessTable = swift_getWitnessTable();
    v13[0] = v1;

    sub_26BA03C70();
    __swift_destroy_boxed_opaque_existential_1(v13);
    os_unfair_lock_unlock(v12);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26BA03D00();
    sub_26BA03D20();
  }
}

uint64_t sub_26B9F9608(uint64_t a1)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v12[-v6];
  v8 = *(v1 + *(v3 + 152));
  os_unfair_lock_lock(v8);
  v9 = *(*v1 + 176);
  swift_beginAccess();
  sub_26B9FA140(v1 + v9, v12);
  v10 = v13;
  sub_26B9FA1B0(v12);
  if (v10)
  {
    (*(v5 + 16))(v7, a1, AssociatedTypeWitness);
    swift_beginAccess();
    sub_26BA03EC0();
    sub_26BA03EB0();
    swift_endAccess();
  }

  os_unfair_lock_unlock(v8);
  return sub_26BA03CF0();
}

void sub_26B9F97D0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v36 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_26BA03CA0();
  v7 = sub_26BA03F40();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v32 = &v31 - v9;
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = *(v4 + 184);
  if (*&v2[v12])
  {

    sub_26BA03CC0();

    v4 = *v2;
  }

  v13 = *&v2[*(v4 + 152)];
  os_unfair_lock_lock(v13);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v14 = *(*v2 + 176);
  swift_beginAccess();
  sub_26B9FA0D0(v39, &v2[v14]);
  swift_endAccess();
  *&v2[v12] = 0;

  v15 = *(*v2 + 168);
  swift_beginAccess();
  v38 = *&v2[v15];
  swift_getAssociatedTypeWitness();
  sub_26BA03EC0();
  swift_getWitnessTable();
  if (sub_26BA03ED0())
  {
    os_unfair_lock_unlock(v13);
    v16 = *&v2[*(*v2 + 160)];
    os_unfair_lock_lock(v16);
LABEL_10:
    sub_26BA03C60();
    os_unfair_lock_unlock(v16);
    return;
  }

  v17 = a1;
  v18 = *(v35 + 16);
  v31 = v17;
  v18(v11);
  v19 = (*(*(AssociatedTypeWitness - 8) + 48))(v11, 1, AssociatedTypeWitness);
  v20 = *v2;
  if (v19 != 1)
  {
    if (v2[*(v20 + 144)] == 1)
    {
      v24 = *(v20 + 192);
      swift_beginAccess();
      v25 = *&v2[v24];
      sub_26BA03D00();
      if ((sub_26BA03CE0() & 1) == 0)
      {
        if (v25 < 0)
        {
LABEL_23:
          __break(1u);
          return;
        }

        if (!v25)
        {
          v29 = v32;
          (v18)(v32, v31, v6);
          (*(v35 + 56))(v29, 0, 1, v6);
          v30 = *(*v2 + 200);
          swift_beginAccess();
          (*(v33 + 40))(&v2[v30], v29, v34);
          swift_endAccess();
          goto LABEL_18;
        }
      }

      v26 = *&v2[v15];

      *&v2[v15] = sub_26BA03EA0();

      os_unfair_lock_unlock(v13);
      v13 = *&v2[*(*v2 + 160)];
      os_unfair_lock_lock(v13);
      v37 = v26;
      sub_26BA03C80();
    }

    else
    {
      *&v2[v15] = sub_26BA03EA0();

      os_unfair_lock_unlock(v13);
      v13 = *&v2[*(*v2 + 160)];
      os_unfair_lock_lock(v13);
    }

    sub_26BA03C60();
LABEL_18:
    os_unfair_lock_unlock(v13);
    (*(v35 + 8))(v11, v6);
    return;
  }

  v21 = *(v20 + 192);
  swift_beginAccess();
  v22 = *&v2[v21];
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
LABEL_9:
    v23 = *&v2[v15];

    *&v2[v15] = sub_26BA03EA0();

    os_unfair_lock_unlock(v13);
    v16 = *&v2[*(*v2 + 160)];
    os_unfair_lock_lock(v16);
    v37 = v23;
    sub_26BA03C80();

    goto LABEL_10;
  }

  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v22)
  {
    goto LABEL_9;
  }

  v27 = v32;
  (v18)(v32, v31, v6);
  (*(v35 + 56))(v27, 0, 1, v6);
  v28 = *(*v2 + 200);
  swift_beginAccess();
  (*(v33 + 40))(&v2[v28], v27, v34);
  swift_endAccess();
  os_unfair_lock_unlock(v13);
}

uint64_t sub_26B9FA0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434870, &qword_26BA047D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FA140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434870, &qword_26BA047D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FA1B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434870, &qword_26BA047D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9FA218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_26B9FA324()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(*v0 + 192);
  swift_beginAccess();
  v4 = *(v0 + v3);
  sub_26BA03D00();
  if ((sub_26BA03CE0() & 1) == 0)
  {
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = *(*v1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_26BA03EC0();
  swift_getWitnessTable();
  if (sub_26BA03ED0())
  {
LABEL_22:
    os_unfair_lock_unlock(v2);
    return;
  }

  swift_beginAccess();
  v6 = *(v1 + v3);
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
    goto LABEL_12;
  }

  sub_26BA03D00();
  if ((sub_26BA03CE0() & 1) == 0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v7 = v6 - 1;
        goto LABEL_11;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = sub_26BA03D00();
LABEL_11:
  *(v1 + v3) = v7;
LABEL_12:
  swift_endAccess();

  *(v1 + v5) = sub_26BA03EA0();

  os_unfair_lock_unlock(v2);
  v8 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v8);
  v9 = sub_26BA03C80();

  os_unfair_lock_unlock(v8);
  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v10 = *(v1 + v3);
  sub_26BA03D00();
  if (sub_26BA03CE0())
  {
LABEL_21:
    swift_endAccess();
    goto LABEL_22;
  }

  sub_26BA03D00();
  v11 = sub_26BA03CE0();
  v12 = sub_26BA03D00();
  if (v11)
  {
LABEL_20:
    *(v1 + v3) = v12;
    goto LABEL_21;
  }

  if (sub_26BA03CE0())
  {
LABEL_18:
    v12 = sub_26BA03D00();
    goto LABEL_20;
  }

  if ((v10 | v9) < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    goto LABEL_18;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_26B9FA624(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t Context.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v9 = sub_26BA04090();
  MEMORY[0x26D689580](8250, 0xE200000000000000);
  v4 = (*(a2 + 16))(a1, a2);
  v5 = sub_26BA03F10();
  v7 = v6;

  MEMORY[0x26D689580](v5, v7);

  return v9;
}

uint64_t Configurations.AsyncDispatchedOnTrigger.init(asyncDispatched:triggered:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for Configurations.TriggeredUpdates;
  a3[4] = &protocol witness table for Configurations.TriggeredUpdates;
  *a3 = a2;
  a3[8] = &type metadata for Configurations.AsyncDispatched;
  a3[9] = &protocol witness table for Configurations.AsyncDispatched;
  a3[5] = result;
  return result;
}

uint64_t Configurations.AsyncDispatchedOnTrigger.stateDidChange(from:)(uint64_t a1)
{
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(a1, v4, v5);
  v6 = (*(v3 + 8))();

  return v6;
}

uint64_t sub_26B9FA848(uint64_t a1)
{
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(a1, v4, v5);
  v6 = (*(v3 + 8))();

  return v6;
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

uint64_t sub_26B9FA918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26B9FA960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26B9FAA04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_26BA03E40();
    v4 = v3;

    qword_280434878 = v2;
    unk_280434880 = v4;
  }

  else
  {
    __break(1u);
  }
}

_DWORD *sub_26B9FAA90()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_280434888 = result;
  return result;
}

uint64_t sub_26B9FAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a7(a1, a2, a3, a4, a5, a6);
  v11 = qword_280434738;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280434888;
  os_unfair_lock_lock(qword_280434888);
  if (qword_280434740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_280434890;
  if (*(off_280434890 + 2) && (v14 = sub_26B9FADDC(a4, a5), (v15 & 1) != 0))
  {
    v16 = *(v13[7] + 8 * v14);
    swift_endAccess();
    v17 = v16;
  }

  else
  {
    swift_endAccess();
    sub_26B9FB74C();
    if (qword_280434730 != -1)
    {
      swift_once();
    }

    v18 = sub_26BA03F30();
    swift_beginAccess();
    v17 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = off_280434890;
    off_280434890 = 0x8000000000000000;
    sub_26B9FB1B0(v17, a4, a5, isUniquelyReferenced_nonNull_native);

    off_280434890 = v22;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348A0, &qword_26BA04860);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26BA04850;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_26B9FB798();
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;

  sub_26BA03C10();
}

unint64_t sub_26B9FADDC(uint64_t a1, uint64_t a2)
{
  sub_26BA04030();
  sub_26BA03E80();
  v4 = sub_26BA04040();

  return sub_26B9FAE54(a1, a2, v4);
}

unint64_t sub_26B9FAE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26BA04010())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26B9FAF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348B0, "j\a");
  v35 = v4;
  result = sub_26BA03FF0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26BA04030();
      sub_26BA03E80();
      result = sub_26BA04040();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26B9FB1B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9FADDC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26B9FAF0C(v16, a4 & 1);
      v11 = sub_26B9FADDC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26BA04020();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26B9FB328();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_26B9FB328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348B0, "j\a");
  v2 = *v0;
  v3 = sub_26BA03FE0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _s8Stateful3LogV3log_4type9isPrivateySS_So03os_c1_D2_taSbtF_0(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = qword_280434738;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280434888;
  os_unfair_lock_lock(qword_280434888);
  if (qword_280434740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_280434890;
  if (*(off_280434890 + 2) && (v13 = sub_26B9FADDC(a5, a6), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + 8 * v13);
    swift_endAccess();
    v16 = v15;
  }

  else
  {
    swift_endAccess();
    sub_26B9FB74C();
    if (qword_280434730 != -1)
    {
      swift_once();
    }

    v17 = sub_26BA03F30();
    swift_beginAccess();
    v16 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = off_280434890;
    off_280434890 = 0x8000000000000000;
    sub_26B9FB1B0(v16, a5, a6, isUniquelyReferenced_nonNull_native);

    off_280434890 = v21;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804348A0, &qword_26BA04860);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26BA04850;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_26B9FB798();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  sub_26BA03C10();
}

unint64_t sub_26B9FB74C()
{
  result = qword_280434898;
  if (!qword_280434898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434898);
  }

  return result;
}

unint64_t sub_26B9FB798()
{
  result = qword_2804348A8;
  if (!qword_2804348A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804348A8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26B9FB800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B9FB848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B9FB8EC(uint64_t a1)
{
  result = sub_26B9FB914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9FB914()
{
  result = qword_2804348B8;
  if (!qword_2804348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804348B8);
  }

  return result;
}

uint64_t sub_26B9FB968()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804348C0, &unk_26BA04930);
  v7 = sub_26BA04090();
  MEMORY[0x26D689580](8250, 0xE200000000000000);
  v2 = v1;
  v3 = sub_26BA03F10();
  v5 = v4;

  MEMORY[0x26D689580](v3, v5);

  return v7;
}

void (*MutableStateValue.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 344);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateValue.wrappedValue.getter(v9, v9);
  return sub_26B9FBB30;
}

void sub_26B9FBB30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_26BA01274(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_26BA01274(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *MutableStateValue.__allocating_init(_:_:)(uint64_t a1)
{
  v3 = (*(*(v1 + 376) + 8))();
  swift_allocObject();
  return sub_26B9FF3C8(a1, v3);
}

uint64_t MutableStateValue.__deallocating_deinit()
{
  v0 = StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t _s8Stateful17MutableStateValueC07wrappedD0xvs_0(uint64_t a1)
{
  v3 = *v1;
  sub_26B9FBDC4(a1);
  v4 = *(*(*(v3 + 344) - 8) + 8);

  return v4(a1);
}

uint64_t Configurations.TriggeredUpdates.stateDidChange(from:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434948, "B\a");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = a1;
  v10[2] = a2;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434950, "d\a");
  sub_26B9FC218(&qword_280434958, &qword_280434950, "d\a", &unk_26BA04790);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434960, &qword_280434948, "B\a", MEMORY[0x277CBCC08]);
  v8 = sub_26BA03D70();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_26B9FBFD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434948, "B\a");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  v10[1] = a1;
  v10[2] = v7;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434950, "d\a");
  sub_26B9FC218(&qword_280434958, &qword_280434950, "d\a", &unk_26BA04790);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434960, &qword_280434948, "B\a", MEMORY[0x277CBCC08]);
  v8 = sub_26BA03D70();
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_26B9FC17C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434968, ":\a");
  *a2 = v3;
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

uint64_t sub_26B9FC218(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26B9FC270(uint64_t a1)
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

void sub_26B9FC310(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + *(*v1 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
  os_unfair_lock_unlock(*(v1 + *(*v1 + 96)));
}

uint64_t sub_26B9FC3E8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_26B9FC428(a1);
  return v2;
}

uint64_t *sub_26B9FC428(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = swift_slowAlloc();
  *(v1 + v4) = v5;
  *v5 = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t *sub_26B9FC4D8()
{
  v1 = *v0;
  MEMORY[0x26D689BB0](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_26B9FC574()
{
  sub_26B9FC4D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26B9FC5E4(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + *(*v1 + 96)));
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + *(*v1 + 96)));
}

uint64_t sub_26B9FC6F4()
{
  v0 = sub_26BA03E70();
  MEMORY[0x28223BE20](v0 - 8);
  dispatch_queue_get_label(0);
  sub_26BA03E60();
  v1 = sub_26BA03E50();
  v3 = v2;
  v4 = sub_26BA03F10();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_26BA04010();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_26B9FC7E8(uint64_t a1)
{
  result = sub_26B9FC810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B9FC810()
{
  result = qword_2804349F0;
  if (!qword_2804349F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804349F0);
  }

  return result;
}

uint64_t sub_26B9FC864()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804349F8, &qword_26BA04AA8);
  v7 = sub_26BA04090();
  MEMORY[0x26D689580](8250, 0xE200000000000000);
  v2 = v1;
  v3 = sub_26BA03F10();
  v5 = v4;

  MEMORY[0x26D689580](v3, v5);

  return v7;
}

uint64_t Configurations.Print.stateDidChange(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A00, &qword_26BA04AB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A08, &qword_26BA04AB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  v16 = 0;
  v17 = a1;
  memset(v15, 0, sizeof(v15));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
  sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0, MEMORY[0x277CBCD90]);
  sub_26BA03DB0();
  sub_26B9FCBB8(v15);
  sub_26B9FC218(&qword_280434A28, &qword_280434A08, &qword_26BA04AB8, MEMORY[0x277CBCC68]);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434A30, &qword_280434A00, &qword_26BA04AB0, MEMORY[0x277CBCC08]);
  v12 = sub_26BA03D70();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_26B9FCBB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A20, &qword_26BA04AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9FCC20(uint64_t a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A00, &qword_26BA04AB0);
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A08, &qword_26BA04AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v15 = 0;
  v16 = a1;
  memset(v14, 0, sizeof(v14));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
  sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0, MEMORY[0x277CBCD90]);
  sub_26BA03DB0();
  sub_26B9FCBB8(v14);
  sub_26B9FC218(&qword_280434A28, &qword_280434A08, &qword_26BA04AB8, MEMORY[0x277CBCC68]);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434A30, &qword_280434A00, &qword_26BA04AB0, MEMORY[0x277CBCC08]);
  v9 = v13;
  v10 = sub_26BA03D70();
  (*(v2 + 8))(v4, v9);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_26B9FCED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = MEMORY[0x277D84F70] + 8;
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_26B9FD00C(a1, v4 + 16);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B9FCF40(uint64_t a1, int a2)
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

uint64_t sub_26B9FCF88(uint64_t result, int a2, int a3)
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

uint64_t sub_26B9FCFD4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B9FD00C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B9FD06C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26B9FD0D8(NSObject *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_26BA03E00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26BA03E20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26B9FC6F4())
  {
    return a2();
  }

  v26 = v7;
  v27 = a1;
  sub_26B9F6F4C();
  v15 = sub_26BA03EF0();
  v16 = sub_26B9FC6F4();

  if (v16 & 1) != 0 || (v17 = sub_26BA03EF0(), v18 = sub_26BA03F20(), v17, (v18))
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v33 = sub_26B9FD620;
    v34 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_26B9FD06C;
    v32 = &block_descriptor_9;
    v20 = _Block_copy(&aBlock);

    sub_26BA03E10();
    v28 = MEMORY[0x277D84F90];
    sub_26B9FD55C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A40, &qword_26BA04B10);
    sub_26B9FD5B4();
    sub_26BA03F50();
    MEMORY[0x26D6895F0](0, v13, v9, v20);
    _Block_release(v20);
    (*(v26 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26B9FD50C;
    *(v22 + 24) = v21;
    v33 = sub_26B9FD50C;
    v34 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_26B9FD0B0;
    v32 = &block_descriptor;
    v23 = _Block_copy(&aBlock);

    dispatch_sync(v27, v23);
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B9FD4D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26B9FD55C()
{
  result = qword_280434A38;
  if (!qword_280434A38)
  {
    sub_26BA03E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434A38);
  }

  return result;
}

unint64_t sub_26B9FD5B4()
{
  result = qword_280434A48;
  if (!qword_280434A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280434A40, &qword_26BA04B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434A48);
  }

  return result;
}

uint64_t Configurations.AsyncDispatched.stateDidChange(from:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A50, &qword_26BA04B28);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A58, &qword_26BA04B30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A60, &qword_26BA04B38);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v22 = a2;
  v23 = a1;
  v15 = sub_26BA03EE0();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
  sub_26B9F6F4C();
  sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0, MEMORY[0x277CBCD90]);
  sub_26B9FD994();
  sub_26BA03DC0();
  sub_26B9FD9EC(v10);

  sub_26B9FC218(&qword_280434A70, &qword_280434A60, &qword_26BA04B38, MEMORY[0x277CBCD60]);
  sub_26BA03D90();
  sub_26B9FC218(&qword_280434A78, &qword_280434A50, &qword_26BA04B28, MEMORY[0x277CBCC08]);
  v17 = v20;
  v18 = sub_26BA03D70();
  (*(v21 + 8))(v7, v17);
  (*(v12 + 8))(v14, v11);
  return v18;
}

unint64_t sub_26B9FD994()
{
  result = qword_280434A68;
  if (!qword_280434A68)
  {
    sub_26B9F6F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280434A68);
  }

  return result;
}

uint64_t sub_26B9FD9EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A58, &qword_26BA04B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static StateObservingNSObject.context.getter()
{
  sub_26BA03F60();

  swift_getMetatypeMetadata();
  v0 = sub_26BA04090();
  MEMORY[0x26D689580](v0);

  sub_26BA03FD0();
  __break(1u);
}

uint64_t StateObservingNSObject.cancellableSubs.getter()
{
  sub_26B9FE294();
}

uint64_t StateObservingNSObject.cancellableSubs.setter(uint64_t a1)
{
  v3 = direct field offset for StateObservingNSObject.cancellableSubs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t StateObservingNSObject.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for StateObservingNSObject.configuration;
  swift_beginAccess();
  return sub_26B9FE2D8(v1 + v3, a1);
}

uint64_t StateObservingNSObject.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for StateObservingNSObject.configuration;
  swift_beginAccess();
  sub_26B9FE348(a1, v1 + v3);
  return swift_endAccess();
}

char *StateObservingNSObject.init(configuration:)(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  *(v1 + direct field offset for StateObservingNSObject.cancellableSubs) = MEMORY[0x277D84F90];
  v4 = v1 + direct field offset for StateObservingNSObject.configuration;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = *(v3 + 96);
  v11[0] = *(v3 + 80);
  v11[1] = v5;
  v6 = type metadata accessor for StateObservingNSObject(0, v11);
  v12.receiver = v1;
  v12.super_class = v6;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  sub_26B9FA218(a1, v11);
  v8 = direct field offset for StateObservingNSObject.configuration;
  swift_beginAccess();
  v9 = v7;
  sub_26B9FE348(v11, v7 + v8);
  swift_endAccess();
  swift_getWitnessTable();
  StateObserving.setup()();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id StateObservingNSObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateObservingNSObject.init()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  *(v0 + direct field offset for StateObservingNSObject.cancellableSubs) = MEMORY[0x277D84F90];
  v2 = v0 + direct field offset for StateObservingNSObject.configuration;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = *(v1 + 96);
  v7[0] = *(v1 + 80);
  v7[1] = v3;
  v4 = type metadata accessor for StateObservingNSObject(0, v7);
  v8.receiver = v0;
  v8.super_class = v4;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  swift_getWitnessTable();
  StateObserving.setup()();

  return v5;
}

id StateObservingNSObject.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for StateObservingNSObject(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_26B9FE0A0(uint64_t a1)
{

  v2 = a1 + direct field offset for StateObservingNSObject.configuration;

  return sub_26B9FE430(v2);
}

uint64_t (*sub_26B9FE108(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = StateObservingNSObject.configuration.modify(v2);
  return sub_26B9FE178;
}

uint64_t sub_26B9FE17C()
{
  sub_26B9FE294();
}

uint64_t (*sub_26B9FE1A8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = StateObservingNSObject.cancellableSubs.modify(v2);
  return sub_26B9FE49C;
}

void sub_26B9FE218(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26B9FE294()
{
  v1 = direct field offset for StateObservingNSObject.cancellableSubs;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26B9FE2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434A90, &qword_26BA04B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FE348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434A90, &qword_26BA04B90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9FE430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434A90, &qword_26BA04B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall StateObserving.setup()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_26B9FE508();
  if (v4)
  {
    sub_26B9FE918(v4, v3, v2);
  }
}

uint64_t sub_26B9FE508()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434B28, &qword_26BA04C38);
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = v24 - v2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434B30, &qword_26BA04C40);
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = v24 - v4;
  v6 = sub_26B9F7484(v0);
  v7 = *(v6 + 16);
  if (!v7)
  {

    v12 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_8:

    return 0;
  }

  v25 = v1;
  v30 = MEMORY[0x277D84F90];
  sub_26BA03F90();
  v8 = (v6 + 40);
  do
  {
    v9 = *v8;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    swift_unknownObjectRetain();
    v11(ObjectType, v9);
    swift_unknownObjectRelease();
    sub_26BA03F70();
    sub_26BA03FA0();
    sub_26BA03FB0();
    sub_26BA03F80();
    v8 += 2;
    --v7;
  }

  while (v7);

  v12 = v30;
  v1 = v25;
  v13 = *(v30 + 16);
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = v13 - 1;
  if (v13 == 1)
  {
    v15 = *(v12 + 32);

LABEL_13:

    return v15;
  }

  v25 = v12;
  v16 = *(v12 + 32);
  v17 = (v1 + 8);
  v18 = (v3 + 8);
  result = swift_retain_n();
  v20 = 40;
  v24[1] = v16;
  while (v14)
  {
    v29 = *(v25 + v20);
    v30 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
    sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0, MEMORY[0x277CBCD90]);
    v21 = v26;
    sub_26BA03D80();
    sub_26B9FC218(&qword_280434B38, &qword_280434B28, &qword_26BA04C38, MEMORY[0x277CBCAF0]);
    v22 = v28;
    sub_26BA03D90();
    (*v17)(v21, v22);
    sub_26B9FC218(&qword_280434B40, &qword_280434B30, &qword_26BA04C40, MEMORY[0x277CBCC08]);
    v23 = v27;
    v15 = sub_26BA03D70();

    result = (*v18)(v5, v23);
    v20 += 8;
    v16 = v15;
    if (!--v14)
    {

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B9FE918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v6(v14, a2, a3);
  v7 = v15;
  sub_26B9FE430(v14);
  if (!v7)
  {

    goto LABEL_5;
  }

  result = (v6)(v14, a2, a3);
  v9 = v15;
  if (v15)
  {
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    a1 = (*(v10 + 8))(a1, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_5:
    v14[0] = a1;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434A10, &qword_26BA04AC0);
    sub_26B9FC218(&qword_280434A18, &qword_280434A10, &qword_26BA04AC0, MEMORY[0x277CBCD90]);
    sub_26BA03DF0();

    v13 = (*(a3 + 88))(v14, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434B18, &qword_26BA04C30);
    sub_26B9FC218(&qword_280434B20, &qword_280434B18, &qword_26BA04C30, MEMORY[0x277D83990]);
    sub_26BA03D30();

    v13(v14, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B9FEB84()
{
  MEMORY[0x26D689BE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B9FEBBC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v11 - v6;
  swift_getObjectType();
  (*(a2 + 40))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_26B9FED10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434B48, qword_26BA04C48);
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_26B9FEF40(a1, v4 + 16);
}

uint64_t sub_26B9FED7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_26B9FEBBC(a3, a4);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = v7;
    swift_unknownObjectRetain();
    sub_26B9FD0D8(v8, sub_26B9FEEC8, v9);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26B9FEE4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B9FEE90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B9FEF00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B9FEF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280434B48, qword_26BA04C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Publisher<>.toStateChangedPublisher()(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BA03C40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_26BA03D90();

  swift_getWitnessTable();
  v9 = sub_26BA03D70();
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_26B9FF114@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a4[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t StateValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - v6;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v7);

  sub_26BA00B78(v7);
  (*(v5 + 8))(v7, v4);
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(a2);
}

uint64_t sub_26B9FF334(uint64_t a1)
{
  v3 = *v1;
  sub_26BA01274(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void *sub_26B9FF3C8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_26BA03F40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(*(v5 - 8) + 56))(&v12 - v8, 1, 1, v5);
  v10 = sub_26BA013AC(v9, v5);
  (*(v7 + 8))(v9, v6);
  v2[2] = a1;
  v2[3] = v10;
  v2[4] = a2;
  return v2;
}

uint64_t StateValue.ifUpdated(_:)(void (*a1)(char *), uint64_t a2)
{
  v50 = a2;
  v51 = a1;
  v47 = *v2;
  v3 = *(v47 + 80);
  v4 = sub_26BA03F40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v6 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v44 - v7;
  v57 = *(v4 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v56 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  v17 = *(v3 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v46 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - v20;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v21);

  v22 = *(v17 + 16);
  v54 = v21;
  v22(v16, v21, v3);
  (*(v17 + 56))(v16, 0, 1, v3);
  v52 = v2;

  sub_26B9FC310(v13);

  v49 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v57 + 16);
  v24(v8, v16, v4);
  v53 = v23;
  v25 = &v8[v23];
  v26 = v13;
  v27 = v13;
  v28 = v4;
  v29 = v4;
  v30 = v3;
  v24(v25, v27, v29);
  v55 = v17;
  v31 = *(v17 + 48);
  if (v31(v8, 1, v3) != 1)
  {
    v45 = v26;
    v36 = v57;
    v24(v56, v8, v28);
    v37 = v53;
    if (v31(&v8[v53], 1, v30) != 1)
    {
      v34 = v55;
      v40 = v46;
      (*(v55 + 32))(v46, &v8[v37], v30);
      v41 = sub_26BA03E30();
      v42 = *(v34 + 8);
      v42(v40, v30);
      v43 = *(v36 + 8);
      v43(v45, v28);
      v43(v16, v28);
      v42(v56, v30);
      v43(v8, v28);
      v35 = v54;
      if (v41)
      {
        return (*(v34 + 8))(v35, v30);
      }

      goto LABEL_7;
    }

    v38 = *(v36 + 8);
    v38(v45, v28);
    v38(v16, v28);
    v34 = v55;
    (*(v55 + 8))(v56, v30);
LABEL_6:
    (*(v48 + 8))(v8, v49);
    v35 = v54;
LABEL_7:
    v51(v35);
    sub_26BA00B78(v35);
    return (*(v34 + 8))(v35, v30);
  }

  v32 = *(v57 + 8);
  v32(v26, v28);
  v32(v16, v28);
  v33 = v31(&v8[v53], 1, v3);
  v34 = v55;
  if (v33 != 1)
  {
    goto LABEL_6;
  }

  v32(v8, v28);
  v35 = v54;
  return (*(v34 + 8))(v35, v30);
}

uint64_t StateValue.ifUpdated<A>(_:_:)(void *a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v81[1] = a4;
  v89 = a3;
  v90 = a2;
  v84 = *v4;
  v6 = v84;
  v7 = *a1;
  v103 = a1;
  v106 = *(*(v7 + *MEMORY[0x277D84DE8] + 8) - 8);
  MEMORY[0x28223BE20](a1);
  v94 = v81 - v8;
  v108 = v9;
  v10 = sub_26BA03F40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v96 = v81 - v12;
  v97 = v10;
  v101 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v86 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v99 = v81 - v16;
  MEMORY[0x28223BE20](v15);
  v105 = v81 - v17;
  v18 = *(v6 + 80);
  v19 = sub_26BA03F40();
  v107 = swift_getTupleTypeMetadata2();
  v93 = *(v107 - 8);
  v20 = MEMORY[0x28223BE20](v107);
  v22 = v81 - v21;
  v102 = *(v19 - 8);
  v23 = v102;
  v24 = MEMORY[0x28223BE20](v20);
  v98 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v92 = v81 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v81 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v81 - v32;
  v34 = *(v18 - 8);
  v35 = MEMORY[0x28223BE20](v31);
  v91 = v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = v81 - v37;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v38);

  v39 = *(v34 + 16);
  v110 = v38;
  v83 = v34 + 16;
  v82 = v39;
  v39(v33, v38, v18);
  (*(v34 + 56))(v33, 0, 1, v18);
  v104 = v5;

  sub_26B9FC310(v30);

  v40 = *(v107 + 48);
  v95 = v23;
  v41 = *(v23 + 16);
  v41(v22, v33, v19);
  v41(&v22[v40], v30, v19);
  v109 = v34;
  v42 = *(v34 + 48);
  if (v42(v22, 1, v18) != 1)
  {
    v81[0] = v30;
    v44 = v92;
    v41(v92, v22, v19);
    v88 = v42;
    if (v42(&v22[v40], 1, v18) != 1)
    {
      v51 = v109;
      v52 = v91;
      (*(v109 + 32))(v91, &v22[v40], v18);
      LODWORD(v107) = sub_26BA03E30();
      v53 = *(v51 + 8);
      v53(v52, v18);
      v43 = *(v102 + 8);
      v43(v81[0], v19);
      v43(v33, v19);
      v53(v44, v18);
      v43(v22, v19);
      v45 = v105;
      v46 = v106;
      v47 = v98;
      if (v107)
      {
        return (*(v109 + 8))(v110, v18);
      }

LABEL_8:
      swift_getAtKeyPath();
      v107 = *(v46 + 56);
      (v107)(v45, 0, 1, v108);

      sub_26B9FC310(v47);

      v48 = v88(v47, 1, v18);
      v85 = v18;
      if (v48)
      {
        v43(v47, v19);
        v49 = 1;
        v50 = v99;
      }

      else
      {
        v54 = v91;
        v82(v91, v47, v18);
        v43(v47, v19);
        v50 = v99;
        swift_getAtKeyPath();
        (*(v109 + 8))(v54, v18);
        v49 = 0;
      }

      v55 = v108;
      (v107)(v50, v49, 1, v108);
      v56 = v101;
      v57 = *(TupleTypeMetadata2 + 48);
      v58 = *(v101 + 16);
      v60 = v96;
      v59 = v97;
      v58(v96, v45, v97);
      v107 = v57;
      v58(&v60[v57], v50, v59);
      v61 = v106;
      v62 = *(v106 + 48);
      if (v62(v60, 1, v55) == 1)
      {
        v63 = *(v56 + 8);
        v63(v50, v59);
        v63(v105, v59);
        v64 = v62(&v60[v107], 1, v55);
        v18 = v85;
        v65 = v61;
        if (v64 == 1)
        {
          v63(v60, v59);
          return (*(v109 + 8))(v110, v18);
        }
      }

      else
      {
        v66 = v86;
        v58(v86, v60, v59);
        v67 = v107;
        v68 = v62(&v60[v107], 1, v55);
        v69 = (v61 + 8);
        v65 = v61;
        if (v68 != 1)
        {
          v74 = v61 + 32;
          v75 = &v60[v67];
          v76 = v61;
          v77 = v94;
          (*(v61 + 32))(v94, v75, v55);
          v78 = sub_26BA03E30();
          v79 = *(v74 - 24);
          v79(v77, v55);
          v80 = *(v101 + 8);
          v80(v99, v59);
          v80(v105, v59);
          v79(v66, v55);
          v80(v60, v59);
          v65 = v76;
          v18 = v85;
          if (v78)
          {
            return (*(v109 + 8))(v110, v18);
          }

          goto LABEL_19;
        }

        v70 = *(v101 + 8);
        v70(v99, v59);
        v70(v105, v59);
        (*v69)(v66, v55);
        v18 = v85;
      }

      (*(v87 + 8))(v60, TupleTypeMetadata2);
LABEL_19:
      v71 = v94;
      v72 = v110;
      swift_getAtKeyPath();
      v90(v72, v71);
      (*(v65 + 8))(v71, v108);
      sub_26BA00B78(v72);
      return (*(v109 + 8))(v110, v18);
    }

    v43 = *(v102 + 8);
    v43(v81[0], v19);
    v43(v33, v19);
    (*(v109 + 8))(v44, v18);
LABEL_7:
    v45 = v105;
    (*(v93 + 8))(v22, v107);
    v46 = v106;
    v47 = v98;
    goto LABEL_8;
  }

  v43 = *(v102 + 8);
  v43(v30, v19);
  v43(v33, v19);
  if (v42(&v22[v40], 1, v18) != 1)
  {
    v88 = v42;
    goto LABEL_7;
  }

  v43(v22, v19);
  return (*(v109 + 8))(v110, v18);
}

uint64_t _s8Stateful17MutableStateValueC16mutateAtomicallyyyyxzcF_0(void (*a1)(char *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - v5;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v6);

  a1(v6);
  sub_26BA01190(v6);
  return (*(v4 + 8))(v6, v3);
}

void *StateValue.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t StateValue.publisher.getter(uint64_t a1)
{
  sub_26BA007FC();
  v1 = PublishedValue.publisher.getter();

  return v1;
}

uint64_t sub_26BA007FC()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_26BA00868(void (*a1)(void))
{
  sub_26BA007FC();
  a1();
}

uint64_t StateValue.mutateImmediatelyNotifyAsync(_:)(void (*a1)(char *))
{
  v20 = a1;
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v19 - v6;
  v8 = *(v3 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v13);

  v20(v13);
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v11);

  v14 = sub_26BA03E30();
  v15 = *(v8 + 8);
  v15(v11, v3);
  if ((v14 & 1) == 0)
  {
    (*(v2 + 32))(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v19 + 8))(v7, AssociatedTypeWitness);
    sub_26BA0148C(v13);
  }

  return (v15)(v13, v3);
}

uint64_t sub_26BA00B78(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_26BA03F40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);

  sub_26B9FC5E4(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26BA00CE8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 152))(v4);
}

uint64_t property wrapper backing initializer of StateValue.lastAccessedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_26BA013AC(a1, a2);
  v7 = sub_26BA03F40();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t StateValue.__allocating_init(_:)(uint64_t a1)
{
  v3 = (*(*(v1 + 104) + 8))();
  v4 = *(v1 + 272);

  return v4(a1, v3);
}

uint64_t sub_26BA00EB8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_26B9FF3C8(a1, a2);
  return v4;
}

uint64_t StateValue.__deallocating_deinit()
{
  StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26BA00F3C()
{
  v12 = *v0;
  v1 = v12;
  v2 = *(v12 + 80);
  sub_26BA03D10();
  v11[1] = swift_getWitnessTable();
  v3 = sub_26BA03C40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  sub_26BA007FC();
  v7 = PublishedValue.publisher.getter();

  v13 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = *(v12 + 88);
  *(v8 + 40) = *(v1 + 104);
  sub_26BA03D90();

  swift_getWitnessTable();
  v9 = sub_26BA03D70();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_26BA01190(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - v5;
  sub_26BA007FC();
  (*(v4 + 16))(v6, a1, v3);
  sub_26BA01AB4(v6);
}

uint64_t sub_26BA01274(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  sub_26BA007FC();
  PublishedValue.wrappedValue.getter(v6);

  v7 = sub_26BA03E30();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    sub_26BA00B78(a1);
    return sub_26BA01190(a1);
  }

  return result;
}

uint64_t sub_26BA013AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26BA03F40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  type metadata accessor for Synchronized(0, v3, v7, v8);
  (*(v4 + 16))(v6, a1, v3);
  return sub_26B9FC3E8(v6);
}

uint64_t sub_26BA0148C(uint64_t a1)
{
  sub_26BA00B78(a1);
  sub_26BA007FC();
  sub_26BA02AD4(a1);
}

__n128 sub_26BA01528(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_26BA015B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0, a1, v4);
}

uint64_t sub_26BA0161C@<X0>(uint64_t a1@<X8>)
{

  sub_26B9FC310(a1);
}

uint64_t PublishedValue.publisher.getter()
{
  v28 = *v0;
  v1 = sub_26BA03D50();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_26BA03C30();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v22 - v4;
  v5 = sub_26BA03D10();
  v6 = swift_getWitnessTable();
  v26 = v1;
  v27 = WitnessTable;
  v30 = v1;
  v31 = v5;
  v32 = WitnessTable;
  v33 = v6;
  v24 = v6;
  v7 = sub_26BA03C50();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  swift_getWitnessTable();
  v10 = sub_26BA03C30();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = v0[3];
  if (v15)
  {

    v17 = sub_26BA01E0C(v16);
    v29 = v15;
    v30 = v17;
    sub_26BA03DA0();

    sub_26BA03DE0();
    (*(v25 + 8))(v9, v7);
    swift_getWitnessTable();
    v18 = sub_26BA03D70();

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v30 = sub_26BA01E0C(v12);
    v19 = v22;
    sub_26BA03DE0();

    v20 = v23;
    swift_getWitnessTable();
    v18 = sub_26BA03D70();
    (*(v3 + 8))(v19, v20);
  }

  return v18;
}

uint64_t PublishedValue.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();

  sub_26B9FC310(a1);
}

uint64_t sub_26BA01AB4(char *a1)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = sub_26BA03F40();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(v3 + 88);
  v13 = sub_26BA0294C(v4, v12);
  v14 = sub_26B9FC6F4();

  if (v14)
  {
    swift_beginAccess();

    sub_26B9FC310(v11);

    v15 = sub_26BA03E30();
    v16 = *(v22 + 8);
    v16(v11, v4);
    if (v15)
    {
      v17 = a1;
    }

    else
    {

      sub_26B9FC310(v9);

      (*(v22 + 56))(v9, 0, 1, v4);
      sub_26BA02A8C(v9);
      (*(v6 + 8))(v9, v5);
      (*(v22 + 16))(v11, a1, v4);

      sub_26B9FC5E4(v11);

      v21 = (v16)(v11, v4);
      sub_26BA01E0C(v21);
      PublishedValue.wrappedValue.getter(v11);
      sub_26BA03D40();

      v16(a1, v4);
      v17 = v11;
    }

    return (v16)(v17, v4);
  }

  else
  {
    v18 = sub_26BA0294C(v4, v12);
    sub_26BA02AD4(a1);

    v19 = *(v22 + 8);

    return v19(a1, v4);
  }
}

uint64_t sub_26BA01E0C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - v2;
  if (*(v1 + 16))
  {
    v4 = *(v1 + 16);
  }

  else
  {
    sub_26BA03D50();
    PublishedValue.wrappedValue.getter(v3);
    v4 = sub_26BA03D60();
    *(v1 + 16) = v4;
  }

  return v4;
}

uint64_t property wrapper backing initializer of PublishedValue.value(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BA02C00(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t property wrapper backing initializer of PublishedValue.previousValue(uint64_t a1, uint64_t a2)
{
  v3 = sub_26BA02CD8(a1, a2);
  v4 = sub_26BA03F40();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_26BA01FC4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_26BA01AB4(v2);
}

void *PublishedValue.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_26BA02DB8(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *PublishedValue.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_26BA02DB8(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t PublishedValue.perform<A>(ifChanged:action:)(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v58[1] = a4;
  v63 = a3;
  v64 = a2;
  v6 = *v4;
  v7 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v8 = sub_26BA03F40();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v70 = v58 - v9;
  v10 = *(v6 + 80);
  v72 = sub_26BA03F40();
  v66 = *(v72 - 8);
  v11 = MEMORY[0x28223BE20](v72);
  v13 = v58 - v12;
  v75 = v8;
  v69 = *(v8 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v61 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = v58 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = *(v10 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = v58 - v23;
  v25 = *(v7 - 8);
  v26 = MEMORY[0x28223BE20](v22);
  v58[0] = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v58 - v28;
  PublishedValue.wrappedValue.getter(v24);
  v60 = a1;
  swift_getAtKeyPath();
  v59 = *(v21 + 8);
  v59(v24, v10);
  v30 = *(v25 + 16);
  v67 = v29;
  v30(v20, v29, v7);
  v68 = v25;
  v31 = *(v25 + 56);
  v73 = v20;
  v71 = v7;
  v31(v20, 0, 1, v7);
  sub_26BA0161C(v13);
  if ((*(v21 + 48))(v13, 1, v10))
  {
    (*(v66 + 8))(v13, v72);
    v32 = 1;
    v33 = v65;
  }

  else
  {
    (*(v21 + 16))(v24, v13, v10);
    (*(v66 + 8))(v13, v72);
    v33 = v65;
    swift_getAtKeyPath();
    v59(v24, v10);
    v32 = 0;
  }

  v34 = v71;
  v31(v33, v32, 1, v71);
  v35 = v73;
  v36 = *(TupleTypeMetadata2 + 48);
  v38 = v69;
  v37 = v70;
  v39 = *(v69 + 16);
  v40 = v75;
  v39(v70, v73, v75);
  v72 = v36;
  v39(&v37[v36], v33, v40);
  v41 = v68;
  v42 = v33;
  v43 = *(v68 + 48);
  if (v43(v37, 1, v34) != 1)
  {
    v48 = v61;
    v39(v61, v37, v75);
    v46 = v34;
    if (v43(&v37[v72], 1, v34) != 1)
    {
      v52 = v58[0];
      (*(v41 + 32))(v58[0], &v37[v72], v34);
      LODWORD(TupleTypeMetadata2) = sub_26BA03E30();
      v53 = v48;
      v54 = *(v41 + 8);
      v55 = v52;
      v46 = v34;
      v54(v55, v34);
      v56 = *(v38 + 8);
      v57 = v75;
      v56(v42, v75);
      v56(v73, v57);
      v54(v53, v46);
      v56(v37, v57);
      v47 = v67;
      if (TupleTypeMetadata2)
      {
        return (*(v41 + 8))(v47, v46);
      }

      goto LABEL_10;
    }

    v49 = *(v38 + 8);
    v50 = v75;
    v49(v42, v75);
    v49(v73, v50);
    (*(v41 + 8))(v48, v34);
LABEL_9:
    (*(v62 + 8))(v37, TupleTypeMetadata2);
    v47 = v67;
LABEL_10:
    v64(v47);
    return (*(v41 + 8))(v47, v46);
  }

  v44 = *(v38 + 8);
  v45 = v75;
  v44(v33, v75);
  v44(v35, v45);
  v46 = v34;
  if (v43(&v37[v72], 1, v34) != 1)
  {
    goto LABEL_9;
  }

  v44(v37, v75);
  v47 = v67;
  return (*(v41 + 8))(v47, v46);
}

void *PublishedValue.deinit()
{

  return v0;
}

uint64_t PublishedValue.__deallocating_deinit()
{
  PublishedValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26BA0294C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 32))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_26BA02A8C(uint64_t a1)
{

  sub_26B9FC5E4(a1);
}

uint64_t sub_26BA02AD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  swift_beginAccess();

  sub_26B9FC5E4(a1);

  sub_26BA01E0C(v8);
  PublishedValue.wrappedValue.getter(v7);
  sub_26BA03D40();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26BA02C00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Synchronized(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return sub_26B9FC3E8(v6);
}

uint64_t sub_26BA02CD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26BA03F40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  type metadata accessor for Synchronized(0, v3, v7, v8);
  (*(v4 + 16))(v6, a1, v3);
  return sub_26B9FC3E8(v6);
}

void *sub_26BA02DB8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_26BA03F40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v1[2] = 0;
  (*(*(v3 - 8) + 56))(&v10 - v6, 1, 1, v3);
  v8 = sub_26BA02CD8(v7, v3);
  (*(v5 + 8))(v7, v4);
  v1[5] = v8;
  swift_beginAccess();
  v1[4] = sub_26BA02C00(a1, v3);
  swift_endAccess();
  v1[3] = 0;
  return v1;
}

__n128 sub_26BA02F74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void static StateObserver.context.getter()
{
  sub_26BA03F60();

  swift_getMetatypeMetadata();
  v0 = sub_26BA04090();
  MEMORY[0x26D689580](v0);

  sub_26BA03FD0();
  __break(1u);
}

uint64_t StateObserver.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_26B9FE348(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t StateObserver.cancellableSubs.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t StateObserver.__allocating_init(configuration:)(void *a1)
{
  v2 = swift_allocObject();
  StateObserver.init(configuration:)(a1);
  return v2;
}

uint64_t *StateObserver.init(configuration:)(void *a1)
{
  v3 = *v1;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v4 = MEMORY[0x277D84F90];
  v1[6] = 0;
  v1[7] = v4;
  sub_26B9FA218(a1, v7);
  swift_beginAccess();
  sub_26B9FE348(v7, (v1 + 2));
  swift_endAccess();
  v5 = *(v3 + 96);
  v7[0] = *(v3 + 80);
  v7[1] = v5;
  type metadata accessor for StateObserver(0, v7);
  swift_getWitnessTable();
  StateObserving.setup()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t StateObserver.deinit()
{
  sub_26B9FE430(v0 + 16);

  return v0;
}

uint64_t StateObserver.__deallocating_deinit()
{
  sub_26B9FE430(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26BA034B8(uint64_t a1)
{
  swift_beginAccess();
  sub_26B9FE348(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_26BA03590(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void (*MutableStateBinding.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 344);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateValue.wrappedValue.getter(v9, v9);
  return sub_26B9FBB30;
}

void *MutableStateBinding.__allocating_init(_:_:)(uint64_t a1)
{
  v3 = (*(*(v1 + 376) + 8))();
  swift_allocObject();
  return sub_26B9FF3C8(a1, v3);
}

uint64_t MutableStateBinding.__deallocating_deinit()
{
  v0 = StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t Configurations.Composite.init(inner:outer:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_26B9FA624(a1, a3);

  return sub_26B9FA624(a2, a3 + 40);
}

uint64_t Configurations.Composite.stateDidChange(from:)(uint64_t a1)
{
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(a1, v4, v5);
  v6 = (*(v3 + 8))();

  return v6;
}

void sub_26BA039F4()
{
  sub_26BA03F60();

  v0 = sub_26BA04090();
  MEMORY[0x26D689580](v0);

  sub_26BA03FD0();
  __break(1u);
}

uint64_t StateBinding.__deallocating_deinit()
{
  v0 = StateValue.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26BA03BBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}