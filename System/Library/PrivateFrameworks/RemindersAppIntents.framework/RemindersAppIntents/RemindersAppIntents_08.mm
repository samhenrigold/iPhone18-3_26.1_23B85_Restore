uint64_t sub_261BC587C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261BC5920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-18 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = a2 + v6 + 17;
    v12 = *(v5 + 16);
    sub_261CFD104();
    v12((a1 + v6 + 17) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
    sub_261CFCDA4();
  }

  return a1;
}

uint64_t sub_261BC5A34(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t sub_261BC5AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = v7 + 17 + a2;
  sub_261CFD104();
  v6((v7 + 17 + a1) & ~v7, v8 & ~v7, v5);
  return a1;
}

uint64_t sub_261BC5B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_261CFD104();

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((*(v6 + 80) + 17 + a1) & ~*(v6 + 80), (*(v6 + 80) + 17 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t sub_261BC5BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_261BC5C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v7 + 80) + 17 + a1) & ~*(v7 + 80), (*(v7 + 80) + 17 + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_261BC5CE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_261BC5E6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t _s29RequestPerformerConfigurationVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t _s29RequestPerformerConfigurationVwta(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t _s29RequestPerformerConfigurationVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t _s29RequestPerformerConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261BC6288()
{
  v1 = objc_opt_self();
  v2 = sub_261CFFA54();
  [v1 internalErrorWithDebugDescription_];

  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261BC6344()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261AF43A8;

  return sub_261BC626C();
}

uint64_t sub_261BC63F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_261CFE284();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BC64C0, 0, 0);
}

uint64_t sub_261BC64C0()
{
  v21 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[9];
  (*(v0[12] + 16))(v1, v0[8], v0[11]);
  sub_261BC4F00(v1, v3, &v16);
  v4 = v16;
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v0[14] = v17;
  v0[15] = v7;
  v8 = v20;
  v0[16] = v20;
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v15 = (*(v10 + 8) + **(v10 + 8));
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_261BC6660;
  v12 = v0[9];
  v13 = v0[7];

  return v15(v13, v0 + 2, v12, v9, v10);
}

uint64_t sub_261BC6660()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261BC67C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_261BC67C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BC6850()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_261BC68AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF4BDC;

  return sub_261BC63F8(a1, a2, a3);
}

uint64_t sub_261BC697C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_261BC69DC()
{
  result = qword_27FEDBAA0;
  if (!qword_27FEDBAA0)
  {
    _s24AlertPresentationAdaptorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBAA0);
  }

  return result;
}

uint64_t sub_261BC6A34(unint64_t *a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_261C44054();
    sub_261CFD104();
    v1 = sub_261BC6C7C(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_261D00274();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_261BC6B0C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_261D00274();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_261C44054();
    sub_261CFD104();
    v1 = sub_261C43ABC(&v6, (v3 + 32), v2, v1, v4);
    sub_261AE6F74(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *sub_261BC6BBC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_261D00274();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_261CFD104();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_261AE6F74(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

unint64_t *sub_261BC6C7C(unint64_t *result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_261D00274();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26671CA10](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_261BC6DA0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26671C960](a1, a2, v7);
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    if (sub_261D00254() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_261D00264();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_261D000E4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_261D000F4();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_261BC6FC4(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v2 = qword_280D21E98;
  sub_261BC6BBC(a1, sub_261C44054, sub_261C43CC0);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v3 = sub_261CFFC54();

  v20 = 0;
  v4 = [v2 fetchRemindersWithObjectIDs:v3 error:&v20];

  v5 = v20;
  if (v4)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261B3B918();
    v6 = sub_261CFF8F4();
    v7 = v5;

    sub_261CFD104();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_261D00274();
      v9 = swift_unknownObjectRetain();
      a1 = sub_261B558DC(v9, v8);
    }

    else
    {
      sub_261CFD104();
    }

    v11 = sub_261B564FC(v6, a1);

    if ((v11 & 0xC000000000000001) != 0)
    {
      if (sub_261D00274())
      {
LABEL_10:

        sub_261BC441C(v11);
        v13 = v12;

        v20 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6E0, &qword_261D06FD8);
        sub_261BC731C();
        v14 = sub_261CFF954();
        v16 = v15;

        v17 = objc_opt_self();
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_261D00334();

        v20 = 0xD000000000000025;
        v21 = 0x8000000261D1C490;
        MEMORY[0x26671C210](v14, v16);

        MEMORY[0x26671C210](93, 0xE100000000000000);
        v10 = sub_261CFFA54();

        v18 = [v17 internalErrorWithDebugDescription_];
        goto LABEL_11;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    v10 = sub_261BC6B0C(v6);

    return v10;
  }

  v10 = v20;
  sub_261CFD654();
LABEL_11:

  swift_willThrow();
  return v10;
}

unint64_t sub_261BC731C()
{
  result = qword_27FEDB6E8;
  if (!qword_27FEDB6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB6E0, &qword_261D06FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB6E8);
  }

  return result;
}

uint64_t ReminderInsertionPosition.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_261BC73E8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBAB0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBAB0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BC74B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDBAC8);
  __swift_project_value_buffer(v10, qword_27FEDBAC8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261BC77C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v23 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v23 - v3;
  v37 = sub_261CFD674();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v36 = sub_261CFD6A4();
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCD0, &qword_261D08388);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCD8, &unk_261D08390);
  v38 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = xmmword_261D01400;
  v13 = v12 + v11;
  v29 = *(v9 + 48);
  *(v12 + v11) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v31 = v4 + 104;
  v32 = v14;
  v24 = v6;
  v14(v6);
  sub_261CFD6C4();
  v15 = *(v39 + 56);
  v39 += 56;
  v26 = v15;
  v16 = v34;
  v15(v34, 1, 1, v36);
  v17 = sub_261CFD074();
  v25 = *(*(v17 - 8) + 56);
  v18 = v35;
  v25(v35, 1, 1, v17);
  v27 = v13;
  v19 = v18;
  sub_261CFD0A4();
  v20 = (v13 + v33);
  v33 = *(v38 + 48);
  *v20 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v24, v30, v37);
  sub_261CFD6C4();
  v26(v16, 1, 1, v36);
  v25(v19, 1, 1, v17);
  sub_261CFD0A4();
  v21 = sub_261C3A3D8(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBAE0 = v21;
  return result;
}

RemindersAppIntents::ReminderInsertionPosition_optional __swiftcall ReminderInsertionPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

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

uint64_t sub_261BC7DB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74746F62;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261BC7E50()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BC7EC8(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261BC7F2C(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BC7FA0@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

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

void sub_261BC8000(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261BC807C(uint64_t a1)
{
  v2 = sub_261B07F3C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BC80EC(uint64_t a1)
{
  v2 = sub_261BCD914();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261BC8138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDBAE8);
  __swift_project_value_buffer(v10, qword_27FEDBAE8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261BC844C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v39 = v30 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = v30 - v3;
  v45 = sub_261CFD674();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v36 = sub_261CFD6A4();
  v48 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCC0, &qword_261D08378);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCC8, &qword_261D08380);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v37 = 2 * v12;
  v14 = swift_allocObject();
  v38 = v14;
  *(v14 + 16) = xmmword_261D01420;
  v35 = *(v11 + 48);
  v15 = v11;
  *(v14 + v13) = 0;
  v16 = v14 + v13;
  sub_261CFF9B4();
  v30[1] = v9;
  sub_261CFD874();
  v34 = *MEMORY[0x277CC9110];
  v46 = *(v4 + 104);
  v31 = v6;
  v46(v6);
  v32 = v4 + 104;
  sub_261CFD6C4();
  v17 = *(v48 + 56);
  v48 += 56;
  v43 = v17;
  v18 = v36;
  v17(v47, 1, 1, v36);
  v41 = sub_261CFD074();
  v19 = *(v41 - 8);
  v40 = *(v19 + 56);
  v42 = v19 + 56;
  v20 = v39;
  v40(v39, 1, 1, v41);
  v44 = v16;
  v21 = v20;
  sub_261CFD0A4();
  v22 = v15;
  v33 = v15;
  v35 = *(v15 + 48);
  *(v16 + v12) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v23 = v31;
  v24 = v34;
  (v46)(v31, v34, v45);
  v25 = v23;
  sub_261CFD6C4();
  v26 = v47;
  v43(v47, 1, 1, v18);
  v40(v21, 1, 1, v41);
  sub_261CFD0A4();
  v27 = (v44 + v37);
  v37 = *(v22 + 48);
  *v27 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  (v46)(v25, v24, v45);
  sub_261CFD6C4();
  v43(v26, 1, 1, v18);
  v40(v21, 1, 1, v41);
  sub_261CFD0A4();
  v28 = sub_261C3A5C0(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBB00 = v28;
  return result;
}

RemindersAppIntents::MoveRemindersAppIntent::MoveTargetType_optional __swiftcall MoveRemindersAppIntent.MoveTargetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MoveRemindersAppIntent.MoveTargetType.rawValue.getter()
{
  v1 = 0x6E6F6974636573;
  if (*v0 != 1)
  {
    v1 = 0x6552746E65726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_261BC8BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6974636573;
  if (v2 != 1)
  {
    v4 = 0x6552746E65726170;
    v3 = 0xEE007265646E696DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953720684;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974636573;
  if (*a2 != 1)
  {
    v8 = 0x6552746E65726170;
    v7 = 0xEE007265646E696DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953720684;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261BC8CCC()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BC8D74(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261BC8E08(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261BC8EB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6974636573;
  if (v2 != 1)
  {
    v5 = 0x6552746E65726170;
    v4 = 0xEE007265646E696DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953720684;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261BC8F64(uint64_t a1)
{
  v2 = sub_261BCC330();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BC8FD4(uint64_t a1)
{
  v2 = sub_261BCDD30();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261BC9054(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersAppIntent.reminders.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9214(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersAppIntent.position.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

void *sub_261BC93D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261BC9410(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersAppIntent.targetType.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261BC95F4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261AFB668(a1, &v10 - v7, &unk_27FEDE0C0, &unk_261D02500);
  sub_261AFB668(v8, v6, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261AE6A40(v8, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t MoveRemindersAppIntent.list.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t (*MoveRemindersAppIntent.list.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9914(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261AFB668(a1, &v10 - v7, &qword_27FEDA1E0, &unk_261D02300);
  sub_261AFB668(v8, v6, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261AE6A40(v8, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t MoveRemindersAppIntent.section.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t (*MoveRemindersAppIntent.section.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9C38(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261AFB668(a1, &v10 - v7, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v8, v6, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261AE6A40(v8, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t MoveRemindersAppIntent.parentReminder.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t (*MoveRemindersAppIntent.parentReminder.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9F10()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDBB08);
  __swift_project_value_buffer(v6, qword_27FEDBB08);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t sub_261BCA130@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t static MoveRemindersAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static MoveRemindersAppIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDBB20 = a1;
  return result;
}

uint64_t static MoveRemindersAppIntent.parameterSummary.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB28, &unk_261D07B88);
  v2 = sub_261BCAC34();
  v3 = sub_261B01D28(&qword_27FEDBB38, &qword_27FEDBB28, &unk_261D07B88, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_261BCA680, 0, v1, v2, v3);
}

uint64_t sub_261BCA680@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC50, &qword_261D08250);
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v42 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v43 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC58, &qword_261D08258);
  v49 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v41 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = v34 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  MEMORY[0x28223BE20](v10);
  v40 = v34 - v13;
  v52 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC60, &qword_261D08260);
  v15 = sub_261BCAC34();
  v16 = sub_261BCDCD8();
  v17 = sub_261B01D28(&qword_27FEDBC68, &qword_27FEDBC60, &qword_261D08260, MEMORY[0x277CBA2C0]);
  v34[0] = v15;
  v34[1] = v16;
  sub_261CFD2B4();
  v36 = sub_261B01D28(&qword_27FEDBC70, &qword_27FEDBC58, &qword_261D08258, MEMORY[0x277CBA488]);
  v18 = v5;
  sub_261CFD284();
  v19 = v49 + 8;
  v35 = *(v49 + 8);
  v39 = v12;
  v35(v12, v18);
  v51 = 1;
  v38 = v17;
  v20 = v48;
  sub_261CFD2B4();
  v47 = v18;
  sub_261CFD284();
  v21 = v35;
  v35(v20, v18);
  v49 = v19;
  v50 = 2;
  v22 = v41;
  v37 = v14;
  sub_261CFD2B4();
  v23 = v47;
  sub_261CFD284();
  v21(v22, v23);
  v24 = v42;
  sub_261CFD344();
  sub_261B01D28(&qword_27FEDBC78, &qword_27FEDBC50, &qword_261D08250, MEMORY[0x277CBA4C8]);
  v25 = v43;
  v26 = v24;
  v27 = v45;
  sub_261CFD284();
  v28 = *(v44 + 8);
  v28(v26, v27);
  v29 = v47;
  v31 = v39;
  v30 = v40;
  v32 = v48;
  sub_261CFD274();
  v28(v25, v27);
  v21(v32, v29);
  v21(v31, v29);
  return (v21)(v30, v29);
}

unint64_t sub_261BCAC34()
{
  result = qword_27FEDBB30;
  if (!qword_27FEDBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB30);
  }

  return result;
}

uint64_t sub_261BCACA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v19 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC80, &qword_261D08268);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC88, &qword_261D08270);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC60, &qword_261D08260);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_261BCAC34();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC90, &qword_261D082A0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC98, &qword_261D082D0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCA0, &qword_261D082D8);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD124();
  v13 = sub_261B01D28(&qword_27FEDBC68, &qword_27FEDBC60, &qword_261D08260, MEMORY[0x277CBA2C0]);
  MEMORY[0x266719870](v10, &type metadata for MoveRemindersAppIntent, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  MEMORY[0x266719860](v12, &type metadata for MoveRemindersAppIntent, v6, v13);
  return (v14)(v12, v6);
}

uint64_t MoveRemindersAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v93 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v1 - 8);
  v77 = v74 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = v74 - v6;
  v92 = sub_261CFD184();
  v97 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v96 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = v74 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD884();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFFA44();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_261CFD6A4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v74 - v24;
  v74[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v26 = *MEMORY[0x277CC9110];
  v84 = v15;
  v27 = v15[13];
  v27(v17, v26, v14);
  v95 = v25;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v87 = v26;
  v28 = v26;
  v29 = v94;
  v86 = v15 + 13;
  v81 = v27;
  v27(v17, v28, v14);
  sub_261CFD6C4();
  v30 = *(v21 + 56);
  v88 = v21 + 56;
  v89 = v20;
  v85 = v30;
  v30(v29, 0, 1, v20);
  v99 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v14, qword_280D27028);
  v84[2](v17, v31, v14);
  sub_261CFD874();
  sub_261CFD6C4();
  v32 = v90;
  sub_261CFC844();
  v33 = sub_261CFC834();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v82 = v35;
  v36 = v34 + 56;
  v35(v32, 0, 1, v33);
  v35(v96, 1, 1, v33);
  LODWORD(v83) = *MEMORY[0x277CBA308];
  v37 = *(v97 + 104);
  v97 += 104;
  v84 = v37;
  (v37)(v91);
  v74[1] = sub_261B517D0(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *v93 = sub_261CFCC34();
  v74[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v38 = v87;
  v78 = v14;
  v39 = v81;
  v81(v17, v87, v14);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v17, v38, v14);
  v40 = v94;
  sub_261CFD6C4();
  v85(v40, 0, 1, v89);
  LOBYTE(v99) = 1;
  v79 = v33;
  v80 = v36;
  v41 = v82;
  v82(v90, 1, 1, v33);
  v41(v96, 1, 1, v33);
  v42 = v92;
  (v84)(v91, v83, v92);
  sub_261B07F3C();
  v93[1] = sub_261CFCC04();
  v74[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB40, &qword_261D07B98);
  sub_261CFF9B4();
  sub_261CFD874();
  v43 = v87;
  v44 = v78;
  v39(v17, v87, v78);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v17, v43, v44);
  v45 = v94;
  sub_261CFD6C4();
  v85(v45, 0, 1, v89);
  LOBYTE(v99) = 0;
  v46 = v90;
  v47 = v79;
  v48 = v82;
  v82(v90, 1, 1, v79);
  v48(v96, 1, 1, v47);
  (v84)(v91, v83, v42);
  sub_261BCC330();
  v49 = v46;
  v93[2] = sub_261CFCC04();
  v74[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v50 = v87;
  v51 = v78;
  v52 = v81;
  v81(v17, v87, v78);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v52(v17, v50, v51);
  v53 = v94;
  sub_261CFD6C4();
  v85(v53, 0, 1, v89);
  v54 = type metadata accessor for ListEntity(0);
  (*(*(v54 - 8) + 56))(v75, 1, 1, v54);
  v55 = v79;
  v56 = v82;
  v82(v49, 1, 1, v79);
  v56(v96, 1, 1, v55);
  (v84)(v91, v83, v92);
  sub_261B517D0(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v93[3] = sub_261CFCC34();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  sub_261CFF9B4();
  sub_261CFD874();
  v57 = v87;
  v58 = v78;
  v59 = v81;
  v81(v17, v87, v78);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v59(v17, v57, v58);
  sub_261CFD6C4();
  v85(v53, 0, 1, v89);
  v60 = type metadata accessor for SectionEntity(0);
  (*(*(v60 - 8) + 56))(v76, 1, 1, v60);
  v61 = v79;
  v62 = v82;
  v82(v90, 1, 1, v79);
  v62(v96, 1, 1, v61);
  v63 = v91;
  (v84)(v91, v83, v92);
  sub_261B517D0(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v64 = sub_261CFCC34();
  v65 = v93;
  v93[4] = v64;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = v87;
  v67 = v78;
  v68 = v81;
  v81(v17, v87, v78);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v17, v66, v67);
  v69 = v94;
  sub_261CFD6C4();
  v85(v69, 0, 1, v89);
  v70 = type metadata accessor for ReminderEntity(0);
  (*(*(v70 - 8) + 56))(v77, 1, 1, v70);
  v71 = v79;
  v72 = v82;
  v82(v90, 1, 1, v79);
  v72(v96, 1, 1, v71);
  (v84)(v63, v83, v92);
  v65[5] = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB50, &qword_261D07BA8);
  v98 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v65[6] = result;
  return result;
}

unint64_t sub_261BCC330()
{
  result = qword_27FEDBB48;
  if (!qword_27FEDBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB48);
  }

  return result;
}

uint64_t MoveRemindersAppIntent.perform()(uint64_t a1)
{
  *(v2 + 640) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  *(v2 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  *(v2 + 656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 664) = swift_task_alloc();
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  sub_261CFFD24();
  *(v2 + 672) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 680) = v5;
  *(v2 + 688) = v4;

  return MEMORY[0x2822009F8](sub_261BCC4E0, v5, v4);
}

uint64_t sub_261BCC4E0()
{
  v40 = v0;
  sub_261CFCBB4();
  v1 = *(*(v0 + 608) + 16);

  if (v1)
  {
    sub_261CFCBB4();
    if (*(v0 + 808))
    {
      if (*(v0 + 808) == 1)
      {
        v2 = *(v0 + 656);
        sub_261CFCBB4();
        v3 = *(v0 + 624);
        sub_261CFCBB4();
        v39 = *(v0 + 810);
        sub_261CFCBB4();
        sub_261CFC664();
        v4 = *(v0 + 208);
        v5 = *(v0 + 232);
        v6 = __swift_project_boxed_opaque_existential_1((v0 + 184), v4);
        *(v0 + 512) = v4;
        *(v0 + 520) = v5;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 488));
        (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
        sub_261B06EA4(v3, &v39, v2, (v0 + 488), &v36);
        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
        v8 = *(&v36 + 1);
        *(v0 + 712) = v36;
        *(v0 + 720) = v8;
        v9 = *(&v37 + 1);
        *(v0 + 728) = v37;
        *(v0 + 736) = v9;
        sub_261BCD318((v0 + 16), (v0 + 240));
        v34 = sub_261C504E0;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v10 = swift_task_alloc();
        *(v0 + 744) = v10;
        *v10 = v0;
        v10[1] = sub_261BCCD1C;
      }

      else
      {
        v26 = *(v0 + 648);
        sub_261CFCBB4();
        v27 = *(v0 + 616);
        sub_261CFCBB4();
        v39 = *(v0 + 809);
        sub_261CFCBB4();
        sub_261CFC664();
        v28 = *(v0 + 96);
        v29 = *(v0 + 112);
        v30 = __swift_project_boxed_opaque_existential_1((v0 + 72), v28);
        *(v0 + 472) = v28;
        *(v0 + 480) = v29;
        v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
        (*(*(v28 - 8) + 16))(v31, v30, v28);
        sub_261C90058(v27, &v39, v26, (v0 + 448), &v36);
        __swift_destroy_boxed_opaque_existential_0((v0 + 72));
        v32 = *(&v36 + 1);
        *(v0 + 760) = v36;
        *(v0 + 768) = v32;
        v9 = *(&v37 + 1);
        *(v0 + 776) = v37;
        *(v0 + 784) = v9;
        sub_261BCD318((v0 + 16), (v0 + 128));
        v34 = sub_261C50FA4;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v33 = swift_task_alloc();
        *(v0 + 792) = v33;
        *v33 = v0;
        v33[1] = sub_261BCCF14;
      }

      v42 = v9;

      __asm { BR              X8 ; sub_261C504E0 sub_261C50FA4 }
    }

    v18 = *(v0 + 664);
    sub_261CFCBB4();
    v19 = *(v0 + 632);
    sub_261CFCBB4();
    v39 = *(v0 + 811);
    sub_261CFCBB4();
    sub_261CFC664();
    v35 = *(v0 + 320);
    v20 = *(v0 + 320);
    v21 = __swift_project_boxed_opaque_existential_1((v0 + 296), v20);
    *(v0 + 552) = v35;
    v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 528));
    (*(*(v20 - 8) + 16))(v22, v21, v20);
    sub_261BC2DE4(v19, &v39, v18, 0, (v0 + 528), &v36);
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    v23 = v37;
    *(v0 + 408) = v36;
    *(v0 + 424) = v23;
    *(v0 + 440) = v38;
    sub_261BCD318((v0 + 16), (v0 + 352));
    sub_261BC3EBC((v0 + 408), v0 + 568);
    v24 = swift_task_alloc();
    *(v0 + 696) = v24;
    *v24 = v0;
    v24[1] = sub_261BCCB54;
    v25 = *(v0 + 640);

    return sub_261C4FA8C(v25, "MoveRemindersToListAppIntent", 28, 2, v0 + 16, v0 + 408);
  }

  else
  {

    if (qword_27FED9A20 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FEDBAB0);
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261AE2000, v12, v13, "[MoveRemindersAppIntent] reminders parameter is an empty array despite requestValueDialog was prompted.", v14, 2u);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v15 = 24;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_261BCCB54()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);
  if (v0)
  {
    v5 = sub_261BCD10C;
  }

  else
  {
    v5 = sub_261BCCC90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BCCC90()
{

  sub_261BCD350(v0 + 408);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BCCD1C()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);
  if (v0)
  {
    v5 = sub_261BCD1A0;
  }

  else
  {
    v5 = sub_261BCCE58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BCCE58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BCCF14()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);
  if (v0)
  {
    v5 = sub_261BCD25C;
  }

  else
  {
    v5 = sub_261BCD050;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BCD050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BCD10C()
{

  sub_261BCD350(v0 + 408);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BCD1A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BCD25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BCD3DC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_261BCD4C8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB28, &unk_261D07B88);
  v5 = sub_261B01D28(&qword_27FEDBB38, &qword_27FEDBB28, &unk_261D07B88, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_261BCA680, 0, v4, a2, v5);
}

uint64_t sub_261BCD594(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return MoveRemindersAppIntent.perform()(a1);
}

uint64_t sub_261BCD630(uint64_t a1)
{
  v2 = sub_261BCAC34();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261BCD670()
{
  result = qword_27FEDBB58;
  if (!qword_27FEDBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB58);
  }

  return result;
}

unint64_t sub_261BCD70C()
{
  result = qword_27FEDBB70;
  if (!qword_27FEDBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB70);
  }

  return result;
}

unint64_t sub_261BCD764()
{
  result = qword_27FEDBB78;
  if (!qword_27FEDBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB78);
  }

  return result;
}

unint64_t sub_261BCD7BC()
{
  result = qword_27FEDBB80;
  if (!qword_27FEDBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB80);
  }

  return result;
}

unint64_t sub_261BCD814()
{
  result = qword_27FEDBB88;
  if (!qword_27FEDBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB88);
  }

  return result;
}

unint64_t sub_261BCD868()
{
  result = qword_27FEDBB90;
  if (!qword_27FEDBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB90);
  }

  return result;
}

unint64_t sub_261BCD8BC()
{
  result = qword_27FEDBB98;
  if (!qword_27FEDBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB98);
  }

  return result;
}

unint64_t sub_261BCD914()
{
  result = qword_27FEDBBA0;
  if (!qword_27FEDBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBA0);
  }

  return result;
}

unint64_t sub_261BCD984()
{
  result = qword_27FEDBBA8;
  if (!qword_27FEDBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBA8);
  }

  return result;
}

unint64_t sub_261BCD9DC()
{
  result = qword_27FEDBBB0;
  if (!qword_27FEDBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBB0);
  }

  return result;
}

unint64_t sub_261BCDA34()
{
  result = qword_27FEDBBB8;
  if (!qword_27FEDBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBB8);
  }

  return result;
}

unint64_t sub_261BCDA8C()
{
  result = qword_27FEDBBC0;
  if (!qword_27FEDBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBC0);
  }

  return result;
}

unint64_t sub_261BCDB28()
{
  result = qword_27FEDBBD8;
  if (!qword_27FEDBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBD8);
  }

  return result;
}

unint64_t sub_261BCDB80()
{
  result = qword_27FEDBBE0;
  if (!qword_27FEDBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBE0);
  }

  return result;
}

unint64_t sub_261BCDBD8()
{
  result = qword_27FEDBBE8;
  if (!qword_27FEDBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBE8);
  }

  return result;
}

unint64_t sub_261BCDC30()
{
  result = qword_27FEDBBF0;
  if (!qword_27FEDBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBF0);
  }

  return result;
}

unint64_t sub_261BCDC84()
{
  result = qword_27FEDBBF8;
  if (!qword_27FEDBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBF8);
  }

  return result;
}

unint64_t sub_261BCDCD8()
{
  result = qword_27FEDBC00;
  if (!qword_27FEDBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC00);
  }

  return result;
}

unint64_t sub_261BCDD30()
{
  result = qword_27FEDBC08;
  if (!qword_27FEDBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC08);
  }

  return result;
}

unint64_t sub_261BCDDF4()
{
  result = qword_27FEDBC10;
  if (!qword_27FEDBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC10);
  }

  return result;
}

unint64_t sub_261BCDE4C()
{
  result = qword_27FEDBC18;
  if (!qword_27FEDBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC18);
  }

  return result;
}

unint64_t sub_261BCDEA4()
{
  result = qword_27FEDBC20;
  if (!qword_27FEDBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC20);
  }

  return result;
}

unint64_t sub_261BCDEFC()
{
  result = qword_27FEDBC28;
  if (!qword_27FEDBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC28);
  }

  return result;
}

unint64_t sub_261BCDF54()
{
  result = qword_27FEDBC30;
  if (!qword_27FEDBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC30);
  }

  return result;
}

uint64_t destroy for MoveRemindersAppIntent(void *a1)
{
}

uint64_t *initializeWithCopy for MoveRemindersAppIntent(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for MoveRemindersAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for MoveRemindersAppIntent(void *a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 1) = *(a2 + 16);

  *(a1 + 2) = *(a2 + 32);

  a1[6] = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for MoveRemindersAppIntent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MoveRemindersAppIntent(uint64_t result, int a2, int a3)
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

uint64_t sub_261BCE32C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBCE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBCE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t EarlyAlertEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD18, &qword_261D083E0);
  swift_getKeyPath();
  result = sub_261CFD204();
  a1[1] = result;
  return result;
}

uint64_t EarlyAlertEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BCE494, 0, 0);
}

uint64_t sub_261BCE494()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BAEC14;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C60018("EarlyAlertEntityQuery.entitiesForIdentifiers", 44, 2, v2, v3, v4);
}

uint64_t sub_261BCE578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_261BCE59C, 0, 0);
}

void sub_261BCE59C()
{
  v26 = v0;
  v1 = *(v0 + 40);
  sub_261B6C17C(0x7365697469746E65, 0xEE00293A726F6628);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 40) + 40;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_21;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        v25 = *(v0 + 24);
        sub_261CFD104();
        sub_261BCE780(v9, v8, &v22);

        v10 = *(&v22 + 1);
        if (*(&v22 + 1))
        {
          break;
        }

        sub_261B49F50(v22, 0, v23, v24);
        v6 += 2;
        ++v7;
        if (v3 == v2)
        {
          goto LABEL_17;
        }
      }

      v11 = v22;
      v12 = v23;
      v13 = v24;
      v21 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_261B42274(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v19 = sub_261B42274((v14 > 1), v15 + 1, 1, v5);
        v17 = v12;
        v16 = v13;
        v5 = v19;
      }

      else
      {
        v16 = v13;
        v17 = v12;
      }

      *(v5 + 2) = v15 + 1;
      v18 = &v5[32 * v15];
      *(v18 + 4) = v11;
      *(v18 + 5) = v10;
      *(v18 + 6) = v17;
      *(v18 + 7) = v16;
      v4 = v21;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_17:
  **(v0 + 16) = v5;
  v20 = *(v0 + 8);

  v20();
}

double sub_261BCE780@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD60, &qword_261D085E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD68, &qword_261D085E8);
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v52 = &v49 - v16;
  if (qword_27FED9A68 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v5, qword_27FEDBCF8);
  (*(v6 + 16))(v11, v17, v5);
  v50 = a1;
  v51 = a2;
  sub_261CFFBF4();
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418, MEMORY[0x277D85AC0]);
  sub_261CFE984();
  sub_261CFE9B4();

  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  v20 = v53;
  v19 = v54;
  if ((*(v53 + 48))(v14, 1, v54) == 1)
  {
    sub_261AE6A40(v14, &qword_27FEDBD60, &qword_261D085E0);
LABEL_21:
    result = 0.0;
    v46 = v55;
    *v55 = 0u;
    v46[1] = 0u;
    return result;
  }

  (*(v20 + 32))(v52, v14, v19);
  sub_261CFE9C4();

  v21 = v60;
  v22 = v61;
  v24 = v62;
  v23 = v63;
  v25 = MEMORY[0x26671C1B0](v64, v65, v66, v67);
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  EarlyAlertEntity.Unit.init(rawValue:)(v28);
  v29 = v57;
  if (v57 == 5)
  {

    if (qword_27FED9A50 != -1)
    {
      swift_once();
    }

    v30 = sub_261CFF7A4();
    __swift_project_value_buffer(v30, qword_27FEDBCE0);
    v31 = v51;
    sub_261CFD104();
    v32 = sub_261CFF784();
    v33 = sub_261CFFE64();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_20;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v57 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_261B879C8(v50, v31, &v57);
    v36 = "[EarlyAlertEntityQuery] Cannot create entity due to unknown 'unit' value from identifier: %s";
LABEL_19:
    _os_log_impl(&dword_261AE2000, v32, v33, v36, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26671D560](v35, -1, -1);
    MEMORY[0x26671D560](v34, -1, -1);
LABEL_20:

    (*(v20 + 8))(v52, v19);
    goto LABEL_21;
  }

  if (!((v22 ^ v21) >> 14))
  {

    goto LABEL_15;
  }

  v37 = sub_261BD1624(v21, v22, v24, v23, 10);
  if ((v38 & 0x100) == 0)
  {
    v39 = v37;
    v40 = v38;

    if ((v40 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (qword_27FED9A50 != -1)
    {
      swift_once();
    }

    v43 = sub_261CFF7A4();
    __swift_project_value_buffer(v43, qword_27FEDBCE0);
    v44 = v51;
    sub_261CFD104();
    v32 = sub_261CFF784();
    v33 = sub_261CFFE64();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_20;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v57 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_261B879C8(v50, v44, &v57);
    v36 = "[EarlyAlertEntityQuery] Cannot create entity due to non-integer 'interval' value from identifier: %s";
    goto LABEL_19;
  }

  v39 = sub_261BD0C18(v21, v22, v24, v23, 10);
  v42 = v41;

  if (v42)
  {
    goto LABEL_15;
  }

LABEL_22:
  v56 = v29;
  EarlyAlertEntity.init(unit:interval:)(&v56, v39, &v57);
  (*(v20 + 8))(v52, v19);
  v47 = v59;
  v48 = v55;
  *v55 = v57;
  result = *&v58;
  *(v48 + 8) = v58;
  *(v48 + 3) = v47;
  return result;
}

uint64_t sub_261BCEEB8()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261BCEF88;
  v2 = v0[2];
  v3 = v0[3];

  return sub_261C604A8("EarlyAlertEntityQuery.suggestedEntities", 39, 2, v2, v3);
}

uint64_t sub_261BCEF88(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_261BCF0C8()
{
  v0 = sub_261CFD4E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_261CFD1F4())
  {
    swift_getKeyPath();
    sub_261BD1DA8();
    sub_261CFCD54();

    v10 = v17[15];
  }

  else
  {
    v12 = sub_261CFD1F4();
    v10 = v12;
    if (v12)
    {
      swift_getKeyPath();
      sub_261BD1ED4(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
      sub_261CFCD54();

      sub_261CFCA04();
      sub_261B4C974(v9);
      if ((*(v1 + 48))(v6, 1, v0))
      {
        sub_261AE6A40(v6, &qword_27FEDA160, &qword_261D02220);
        v10 = 0;
      }

      else
      {
        (*(v1 + 16))(v3, v6, v0);
        sub_261AE6A40(v6, &qword_27FEDA160, &qword_261D02220);
        sub_261CFD494();
        if (v13 & 1) != 0 && (sub_261CFD4A4(), (v14) && (sub_261CFD4B4(), (v15))
        {
          sub_261CFD424();
          v10 = v16;
        }

        else
        {
          v10 = 0;
        }

        (*(v1 + 8))(v3, v0);
      }
    }
  }

  return v10 & 1;
}

void *sub_261BCF3B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA800, &qword_261D03380);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_261D06F90;
  v6 = 0;
  EarlyAlertEntity.init(unit:interval:)(&v6, 5, (v0 + 32));
  v5 = 0;
  EarlyAlertEntity.init(unit:interval:)(&v5, 15, (v0 + 64));
  v4 = 0;
  EarlyAlertEntity.init(unit:interval:)(&v4, 30, (v0 + 96));
  v3 = 1;
  EarlyAlertEntity.init(unit:interval:)(&v3, 1, (v0 + 128));
  v2 = 1;
  result = EarlyAlertEntity.init(unit:interval:)(&v2, 2, (v0 + 160));
  qword_27FEF3E48 = v0;
  return result;
}

void *sub_261BCF478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA800, &qword_261D03380);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_261D083A0;
  v8 = 2;
  EarlyAlertEntity.init(unit:interval:)(&v8, 1, (v0 + 32));
  v7 = 2;
  EarlyAlertEntity.init(unit:interval:)(&v7, 2, (v0 + 64));
  v6 = 3;
  EarlyAlertEntity.init(unit:interval:)(&v6, 1, (v0 + 96));
  v5 = 3;
  EarlyAlertEntity.init(unit:interval:)(&v5, 2, (v0 + 128));
  v4 = 4;
  EarlyAlertEntity.init(unit:interval:)(&v4, 1, (v0 + 160));
  v3 = 4;
  EarlyAlertEntity.init(unit:interval:)(&v3, 3, (v0 + 192));
  v2 = 4;
  result = EarlyAlertEntity.init(unit:interval:)(&v2, 6, (v0 + 224));
  qword_27FEF3E50 = v0;
  return result;
}

uint64_t sub_261BCF56C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261BCF598()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  __swift_allocate_value_buffer(v0, qword_27FEDBCF8);
  __swift_project_value_buffer(v0, qword_27FEDBCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA910, &qword_261D03428);
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418, MEMORY[0x277D85AC0]);
  return sub_261CFE9A4();
}

uint64_t sub_261BCF670@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v108 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v108 - v3;
  v4 = sub_261CFDB44();
  v149 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v120 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA938, &qword_261D03440);
  v150 = *(v132 - 8);
  v6 = MEMORY[0x28223BE20](v132);
  v131 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v108 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v11 = *(v10 - 8);
  v155 = v10;
  v156 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v146 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v148 = &v108 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v123 = *(v141 - 8);
  v15 = MEMORY[0x28223BE20](v141);
  v140 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v153 = &v108 - v17;
  v18 = sub_261CFE944();
  v152 = v18;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v108 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v157 = *(v154 - 8);
  v24 = MEMORY[0x28223BE20](v154);
  v122 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v158 = &v108 - v27;
  MEMORY[0x28223BE20](v26);
  v147 = &v108 - v28;
  v29 = sub_261CFDB84();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v121 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v108 - v34;
  MEMORY[0x28223BE20](v33);
  v139 = &v108 - v36;
  v136 = v35;
  sub_261CFDB64();
  v134 = sub_261BD1ED4(&qword_27FEDBD78, MEMORY[0x277D853F0], MEMORY[0x277D853E8]);
  v133 = v29;
  MEMORY[0x26671A1D0](v35, v29, v134);
  v37 = *(v30 + 8);
  v137 = v30 + 8;
  v138 = v37;
  v37(v35, v29);
  sub_261CFDB34();
  v38 = v120;
  sub_261CFE964();
  v118 = sub_261CFE994();
  v39 = *(v118 - 8);
  v117 = *(v39 + 56);
  v119 = v39 + 56;
  v40 = v130;
  v117(v130, 1, 1, v118);
  v113 = v22;
  sub_261CFDB34();
  v116 = sub_261BD1ED4(&qword_27FEDA940, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v41 = MEMORY[0x277D83E40];
  v42 = v146;
  v112 = v4;
  sub_261CFE924();
  v43 = *(v19 + 8);
  v108 = v19 + 8;
  v43(v22, v18);
  v44 = v43;
  sub_261AE6A40(v40, &qword_27FEDA898, &unk_261D08600);
  v45 = *(v149 + 8);
  v149 += 8;
  v114 = v45;
  v46 = v38;
  v45(v38, v4);
  v47 = v131;
  MEMORY[0x26671A290](v42, v41);
  v48 = sub_261B01D28(&qword_27FEDA948, &qword_27FEDA938, &qword_261D03440, MEMORY[0x277D85420]);
  v49 = v132;
  v110 = v48;
  MEMORY[0x26671A1D0](v47, v132, v48);
  v50 = v150 + 8;
  v51 = v47;
  v52 = *(v150 + 8);
  v111 = v52;
  v52(v51, v49);
  v150 = v50;
  v53 = v148;
  v109 = v9;
  sub_261CFDB14();
  v52(v9, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  v129 = MEMORY[0x277D85AC0];
  v145 = sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610, MEMORY[0x277D85AC0]);
  v55 = v153;
  v143 = v54;
  v56 = v155;
  v57 = v144;
  sub_261CFE914();
  v58 = *(v156 + 8);
  v156 += 8;
  v151 = v58;
  v58(v53, v56);
  v59 = v44;
  v44(v57, v152);
  v60 = v158;
  MEMORY[0x26671A260](v55, v54);
  v128 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620, MEMORY[0x277D85408]);
  v61 = v154;
  MEMORY[0x26671A1D0](v60, v154, v128);
  v62 = *(v157 + 8);
  v157 += 8;
  v135 = v62;
  v62(v60, v61);
  v159 = 58;
  v160 = 0xE100000000000000;
  v115 = sub_261B426C0();
  MEMORY[0x26671A1D0](v161, &v159, MEMORY[0x277D837D0], v115);
  sub_261CFDB34();
  v63 = v46;
  sub_261CFE954();
  v64 = v130;
  v117(v130, 1, 1, v118);
  v65 = v113;
  sub_261CFDB34();
  v66 = v146;
  v67 = MEMORY[0x277D83E40];
  v68 = v112;
  sub_261CFE924();
  v69 = v65;
  v70 = v152;
  v59(v69, v152);
  v71 = v59;
  sub_261AE6A40(v64, &qword_27FEDA898, &unk_261D08600);
  v114(v63, v68);
  v72 = v131;
  MEMORY[0x26671A290](v66, v67);
  v73 = v109;
  v74 = v132;
  MEMORY[0x26671A1D0](v72, v132, v110);
  v75 = v111;
  v111(v72, v74);
  v76 = v148;
  sub_261CFDB14();
  v75(v73, v74);
  v77 = v153;
  v78 = v76;
  v80 = v143;
  v79 = v144;
  v81 = v155;
  sub_261CFE914();
  v151(v78, v81);
  v142 = v71;
  v71(v79, v70);
  v82 = v122;
  MEMORY[0x26671A260](v77, v80);
  v83 = v154;
  MEMORY[0x26671A1D0](v82, v154, v128);
  v135(v82, v83);
  v84 = v121;
  sub_261CFDB74();
  v85 = v133;
  MEMORY[0x26671A1D0](v84, v133, v134);
  v138(v84, v85);
  sub_261CFDB14();
  v86 = v144;
  sub_261CFDB34();
  v87 = v146;
  v88 = v155;
  v89 = v86;
  sub_261CFE904();
  sub_261CFE8D4();
  v151(v87, v88);
  v90 = v152;
  v142(v86, v152);
  v92 = v161[0];
  v91 = v161[1];
  sub_261CFDB34();
  v159 = v92;
  v160 = v91;
  v93 = v89;
  sub_261CFE904();

  sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8, v129);
  sub_261CFE8D4();
  v151(v87, v88);
  v94 = v142;
  v142(v89, v90);
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA910, &qword_261D03428);
  v95 = v124;
  sub_261CFE8D4();
  v94(v89, v90);
  sub_261CFDB34();
  v96 = v136;
  v97 = v133;
  sub_261CFE904();
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418, v129);
  v98 = v125;
  v99 = v155;
  sub_261CFE8D4();
  v100 = v87;
  v101 = v151;
  v151(v100, v99);
  v142(v93, v152);
  (*(v127 + 8))(v95, v98);
  v102 = *(v123 + 8);
  v103 = v141;
  v102(v140, v141);
  v102(v153, v103);
  v101(v148, v99);
  v104 = v138;
  v138(v96, v97);
  v105 = v154;
  v106 = v135;
  v135(v158, v154);
  v106(v147, v105);
  return v104(v139, v97);
}

uint64_t sub_261BD06C0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD18, &qword_261D083E0);
  swift_getKeyPath();
  result = sub_261CFD204();
  a1[1] = result;
  return result;
}

uint64_t sub_261BD0738(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BD0760, 0, 0);
}

uint64_t sub_261BD0760()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BADD64;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C60018("EarlyAlertEntityQuery.entitiesForIdentifiers", 44, 2, v2, v3, v4);
}

uint64_t sub_261BD0844(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BD086C, 0, 0);
}

uint64_t sub_261BD086C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BD093C;
  v2 = v0[3];
  v3 = v0[4];

  return sub_261C604A8("EarlyAlertEntityQuery.suggestedEntities", 39, 2, v2, v3);
}

uint64_t sub_261BD093C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_261BD0ACC, 0, 0);
  }
}

uint64_t sub_261BD0AF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261BD1D54();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

void *sub_261BD0BA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB200, &unk_261D085F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_261BD0C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_261BD1E80();
  sub_261CFD104();
  result = sub_261CFFBE4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_261BD11B0(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
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
      result = sub_261D00364();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
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

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_261BD11B0(uint64_t a1, unint64_t a2)
{
  v2 = sub_261CFFBF4();
  v6 = sub_261BD1230(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_261BD1230(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_261D00164();
    if (!v9 || (v10 = v9, v11 = sub_261BD0BA4(v9, 0), v12 = sub_261BD1388(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_261CFD104(), , v12 == v10))
    {
      v13 = sub_261CFFB04();

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
      return sub_261CFFB04();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_261D00364();
LABEL_4:

  return sub_261CFFB04();
}

unint64_t sub_261BD1388(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_261BD15A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261CFFBA4();
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
          result = sub_261D00364();
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

    result = sub_261BD15A8(v12, a6, a7);
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

    result = sub_261CFFB74();
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

unint64_t sub_261BD15A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261CFFBB4();
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
    v5 = MEMORY[0x26671C250](15, a1 >> 16);
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

uint64_t sub_261BD1624(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
    v11 = sub_261D00364();
  }

  result = sub_261BD16F0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_261BD16F0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_261BD15A8(a2, a4, a5);
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
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_261CFFB94();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_261BD15A8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_261BD15A8(a3, a4, a5);
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
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_261CFFB94();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
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
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
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

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_261BD1B60()
{
  result = qword_27FEDBD20;
  if (!qword_27FEDBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD20);
  }

  return result;
}

unint64_t sub_261BD1BB8()
{
  result = qword_27FEDBD28;
  if (!qword_27FEDBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD28);
  }

  return result;
}

unint64_t sub_261BD1C14()
{
  result = qword_27FEDBD30;
  if (!qword_27FEDBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD30);
  }

  return result;
}

unint64_t sub_261BD1C68()
{
  result = qword_280D22120;
  if (!qword_280D22120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22120);
  }

  return result;
}

unint64_t sub_261BD1CC0()
{
  result = qword_27FEDBD38;
  if (!qword_27FEDBD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDBD40, qword_261D08498);
    sub_261BD1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD38);
  }

  return result;
}

unint64_t sub_261BD1D54()
{
  result = qword_27FEDBD48;
  if (!qword_27FEDBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD48);
  }

  return result;
}

unint64_t sub_261BD1DA8()
{
  result = qword_27FEDBD50;
  if (!qword_27FEDBD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDBD58, &qword_261D085C8);
    sub_261BD1E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD50);
  }

  return result;
}

unint64_t sub_261BD1E2C()
{
  result = qword_280D21E30;
  if (!qword_280D21E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E30);
  }

  return result;
}

unint64_t sub_261BD1E80()
{
  result = qword_27FEDBD70;
  if (!qword_27FEDBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBD70);
  }

  return result;
}

uint64_t sub_261BD1ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261BD1F1C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBD80);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBD80);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.perform(_:)(uint64_t a1, uint64_t *a2)
{
  v3[12] = a1;
  v3[13] = v2;
  v5 = type metadata accessor for ListEntity(0);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[16] = v6;
  v3[17] = v7;
  sub_261CFFD24();
  v3[18] = sub_261CFFD14();
  v9 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BD2114, v9, v8);
}

uint64_t sub_261BD2114()
{
  v1 = v0[13];

  v2 = *(v1 + 16);
  v57 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_261CFCBB4();
  v58 = v0[2];
  v54 = *(v58 + 16);
  if (v54)
  {
    v3 = 0;
    v4 = v0[14];
    v56 = v0[15];
    v55 = v58 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v53 = v4;
    do
    {
      if (v3 >= *(v58 + 16))
      {
        __break(1u);
      }

      sub_261B0A18C(v55 + *(v56 + 72) * v3, v0[16]);
      type metadata accessor for AppEntityID(0);
      v6 = objc_allocWithZone(MEMORY[0x277D44700]);
      v7 = sub_261CFD814();
      v8 = sub_261CFFA54();
      v9 = [v6 initWithUUID:v7 entityName:v8];

      if (qword_27FED9A70 != -1)
      {
        swift_once();
      }

      v10 = sub_261CFF7A4();
      __swift_project_value_buffer(v10, qword_27FEDBD80);
      v11 = v9;
      v12 = sub_261CFF784();
      v13 = sub_261CFFE84();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543362;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&dword_261AE2000, v12, v13, "[DeleteListsAppIntent] Delete list with id: %{public}@", v14, 0xCu);
        sub_261BD28E8(v15);
        MEMORY[0x26671D560](v15, -1, -1);
        MEMORY[0x26671D560](v14, -1, -1);
      }

      v17 = v0[16];

      if (*(v17 + *(v4 + 84)))
      {
        v0[3] = 0;
        v18 = [v2 fetchCustomSmartListWithObjectID:v11 error:v0 + 3];
        v19 = v0[3];
        if (!v18)
        {
          goto LABEL_20;
        }

        v20 = v18;
        v21 = v19;
        v22 = [v20 accountID];
        v0[4] = 0;
        v23 = [v2 fetchAccountWithObjectID:v22 error:v0 + 4];

        v24 = v0[4];
        if (!v23)
        {
LABEL_21:
          v40 = v0[16];
          v42 = v24;

          sub_261CFD654();

          swift_willThrow();
          goto LABEL_22;
        }

        sub_261CFDE94();
        v0[6] = v23;
        v25 = v57;
        v26 = v24;
        v27 = v23;
        sub_261CFDF34();
        sub_261CFDE84();
      }

      else
      {
        v0[8] = 0;
        v28 = [v2 fetchListWithObjectID:v11 error:v0 + 8];
        v19 = v0[8];
        if (!v28)
        {
LABEL_20:
          v40 = v0[16];
          v41 = v19;

          sub_261CFD654();

          swift_willThrow();
LABEL_22:

          v43 = v40;
          goto LABEL_23;
        }

        v20 = v28;
        v29 = v19;
        v30 = [v20 accountID];
        v0[9] = 0;
        v31 = [v2 fetchAccountWithObjectID:v30 error:v0 + 9];

        v24 = v0[9];
        if (!v31)
        {
          goto LABEL_21;
        }

        sub_261CFDE94();
        v0[11] = v31;
        v32 = v24;
        v27 = v31;
        v33 = v57;
        sub_261CFDF34();
        if ([v20 isGroup])
        {

          v45 = v11;
          v46 = sub_261CFF784();
          v47 = sub_261CFFE64();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138543362;
            *(v48 + 4) = v45;
            *v49 = v45;
            v50 = v45;
            _os_log_impl(&dword_261AE2000, v46, v47, "[DeleteListsAppIntent] Attempt to delete a group with id: %{public}@", v48, 0xCu);
            sub_261BD28E8(v49);
            MEMORY[0x26671D560](v49, -1, -1);
            MEMORY[0x26671D560](v48, -1, -1);
          }

          v51 = v0[16];

          sub_261B01D70();
          swift_allocError();
          *v52 = 22;
          swift_willThrow();

          v43 = v51;
LABEL_23:
          sub_261B0A1F0(v43);
LABEL_24:

          v38 = v0[1];
          goto LABEL_25;
        }

        sub_261CFDE64();
      }

      ++v3;
      v5 = v0[16];

      sub_261B0A1F0(v5);
      v4 = v53;
    }

    while (v54 != v3);
  }

  v0[7] = 0;
  v34 = [v57 saveSynchronouslyWithError_];
  v35 = v0[7];
  if (!v34)
  {
    v39 = v35;
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_24;
  }

  v36 = v0[12];
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  v36[4] = sub_261B730AC();
  __swift_allocate_boxed_opaque_existential_1(v36);
  v37 = v35;
  sub_261CFC9A4();

  v38 = v0[1];
LABEL_25:

  return v38();
}

uint64_t sub_261BD283C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BD28E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void LocationAlarmEntity.placemark.setter(void *a1)
{
  v1 = a1;
  sub_261CFCA14();
}

uint64_t sub_261BD2A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDBD98);
  __swift_project_value_buffer(v10, qword_27FEDBD98);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261BD2D80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v24 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v24 - v3;
  v31 = sub_261CFD674();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v36 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v24 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF18, &qword_261D08EA8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF20, &qword_261D08EB0);
  v37 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = xmmword_261D01400;
  v27 = *(v9 + 48);
  *(v12 + v11) = 0;
  v13 = v12 + v11;
  sub_261CFF9B4();
  sub_261CFD874();
  v29 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v30 = v4 + 104;
  v32 = v14;
  v14(v36);
  sub_261CFD6C4();
  v15 = *(v38 + 56);
  v38 += 56;
  v25 = v15;
  v16 = v34;
  v15(v34, 1, 1, v8);
  v17 = sub_261CFD074();
  v18 = *(*(v17 - 8) + 56);
  v19 = v35;
  v18(v35, 1, 1, v17);
  v26 = v13;
  v20 = v19;
  sub_261CFD0A4();
  v21 = (v13 + v33);
  v33 = *(v37 + 48);
  *v21 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v36, v29, v31);
  sub_261CFD6C4();
  v25(v16, 1, 1, v24);
  v18(v20, 1, 1, v17);
  sub_261CFD0A4();
  v22 = sub_261C3A7A8(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBDB0 = v22;
  return result;
}

RemindersAppIntents::LocationAlarmEntity::MobileSpace_optional __swiftcall LocationAlarmEntity.MobileSpace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

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

uint64_t LocationAlarmEntity.MobileSpace.rawValue.getter()
{
  if (*v0)
  {
    return 7496035;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_261BD33A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7496035;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7496035;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
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
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261BD3444()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BD34C0(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261BD3528(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BD35A0@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

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

void sub_261BD3600(uint64_t *a1@<X8>)
{
  v2 = 7496035;
  if (!*v1)
  {
    v2 = 0x746C7561666564;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261BD366C(uint64_t a1)
{
  v2 = sub_261B54038();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BD36DC(uint64_t a1)
{
  v2 = sub_261BD5BF8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261BD3728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDBDB8);
  __swift_project_value_buffer(v10, qword_27FEDBDB8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261BD3A30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = v34 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v34 - v3;
  v50 = sub_261CFD674();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v38 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFFA44();
  MEMORY[0x28223BE20](v9 - 8);
  v51 = sub_261CFD6A4();
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF08, &qword_261D08E98);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF10, &qword_261D08EA0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v39 = 2 * v12;
  v14 = swift_allocObject();
  v41 = v14;
  *(v14 + 16) = xmmword_261D01420;
  v15 = (v14 + v13);
  v52 = v14 + v13;
  v35 = *(v11 + 48);
  v16 = v11;
  v48 = v11;
  *v15 = 0;
  sub_261CFF9B4();
  v34[1] = v8;
  sub_261CFD874();
  v49 = *MEMORY[0x277CC9110];
  v17 = *(v4 + 104);
  v36 = v4 + 104;
  v37 = v17;
  v18 = v38;
  v17(v38);
  v19 = v18;
  sub_261CFD6C4();
  v20 = *(v10 + 56);
  v46 = v10 + 56;
  v47 = v20;
  v21 = v40;
  v20(v40, 1, 1, v51);
  v44 = sub_261CFD074();
  v22 = *(v44 - 8);
  v43 = *(v22 + 56);
  v45 = v22 + 56;
  v23 = v42;
  v43(v42, 1, 1, v44);
  v24 = v52;
  v25 = v21;
  v26 = v23;
  sub_261CFD0A4();
  v35 = *(v16 + 48);
  *(v24 + v12) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = v37;
  v37(v19, v49, v50);
  sub_261CFD6C4();
  v28 = v25;
  v29 = v25;
  v30 = v51;
  v47(v29, 1, 1, v51);
  v43(v26, 1, 1, v44);
  sub_261CFD0A4();
  v31 = (v52 + v39);
  v39 = *(v48 + 48);
  *v31 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  v27(v19, v49, v50);
  sub_261CFD6C4();
  v47(v28, 1, 1, v30);
  v43(v26, 1, 1, v44);
  sub_261CFD0A4();
  v32 = sub_261C3A990(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBDD0 = v32;
  return result;
}

RemindersAppIntents::LocationAlarmEntity::SpatialEvent_optional __swiftcall LocationAlarmEntity.SpatialEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LocationAlarmEntity.SpatialEvent.rawValue.getter()
{
  v1 = 0x657669727261;
  if (*v0 != 1)
  {
    v1 = 0x747261706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_261BD4174(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657669727261;
  if (v2 != 1)
  {
    v3 = 0x747261706564;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x657669727261;
  if (*a2 != 1)
  {
    v6 = 0x747261706564;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261BD4268()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BD4304(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261BD438C(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261BD4430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x657669727261;
  if (v2 != 1)
  {
    v4 = 0x747261706564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_261BD44BC(uint64_t a1)
{
  v2 = sub_261B5408C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BD452C(uint64_t a1)
{
  v2 = sub_261BD603C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t (*LocationAlarmEntity.mobileSpace.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t (*LocationAlarmEntity.event.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BD46A8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*LocationAlarmEntity.placemark.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BD47B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDBDD8);
  __swift_project_value_buffer(v10, qword_27FEDBDD8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t static LocationAlarmEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationAlarmEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LocationAlarmEntity.typeDisplayRepresentation.modify(uint64_t a1))(void)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDBDD8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BD4CDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BD4D9C(uint64_t a1)
{
  if (qword_27FED9A98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBDD8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t LocationAlarmEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_261CFD6A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_261CFCA04();
  if (v20)
  {
    v9 = 7496035;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v20)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  MEMORY[0x26671C210](v9, v10);

  MEMORY[0x26671C210](32, 0xE100000000000000);
  sub_261CFCA04();
  v11 = 0x657669727261;
  if (v20 != 1)
  {
    v11 = 0x747261706564;
  }

  if (v20)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v20)
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x26671C210](v12, v13);

  MEMORY[0x26671C210](32, 0xE100000000000000);
  sub_261CFCA04();
  v14 = v20;
  v15 = [v20 region];

  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBDF0, &unk_261D08650);
  v16 = sub_261CFFAB4();
  MEMORY[0x26671C210](v16);

  sub_261CFD664();
  (*(v8 + 56))(v6, 1, 1, v7);
  v17 = sub_261CFD074();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  return sub_261CFD0A4();
}

uint64_t LocationAlarmEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_261CFD674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v13 = v2;
  v10(v5, v9, v2);
  sub_261CFD6C4();
  sub_261B54038();
  v14 = sub_261CFCA34();
  *a1 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v10(v5, v9, v2);
  sub_261CFD6C4();
  sub_261B5408C();
  a1[1] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v10(v5, v9, v13);
  sub_261CFD6C4();
  a1[2] = sub_261CFCB64();
  v16[0] = 0;
  sub_261CFCA14();
  v15 = 0;
  return sub_261CFCA14();
}

void LocationAlarmEntity.init(mobileSpace:event:placemark:)(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v7 = sub_261CFD674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD884();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_261CFFA44();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = *a2;
  v20 = *a1;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v8 + 104);
  v18 = v7;
  v16(v10, v15, v7);
  sub_261CFD6C4();
  sub_261B54038();
  v19 = sub_261CFCA34();
  *a4 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  v16(v10, v15, v7);
  sub_261CFD6C4();
  sub_261B5408C();
  a4[1] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v16(v10, v15, v18);
  sub_261CFD6C4();
  a4[2] = sub_261CFCB64();
  v25[0] = v20;
  sub_261CFCA14();
  v24 = v21;
  sub_261CFCA14();
  v23 = v22;
  v17 = v22;
  sub_261CFCA14();
}

unint64_t sub_261BD58D8()
{
  result = qword_27FEDBDF8;
  if (!qword_27FEDBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBDF8);
  }

  return result;
}

unint64_t sub_261BD592C(uint64_t a1)
{
  result = sub_261BD5954();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261BD5954()
{
  result = qword_27FEDBE00;
  if (!qword_27FEDBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE00);
  }

  return result;
}

unint64_t sub_261BD59AC()
{
  result = qword_27FEDBE08;
  if (!qword_27FEDBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE08);
  }

  return result;
}

unint64_t sub_261BD5A04()
{
  result = qword_27FEDBE10;
  if (!qword_27FEDBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE10);
  }

  return result;
}

unint64_t sub_261BD5A5C()
{
  result = qword_27FEDBE18;
  if (!qword_27FEDBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE18);
  }

  return result;
}

unint64_t sub_261BD5AF8()
{
  result = qword_27FEDBE30;
  if (!qword_27FEDBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE30);
  }

  return result;
}

unint64_t sub_261BD5B4C()
{
  result = qword_27FEDBE38;
  if (!qword_27FEDBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE38);
  }

  return result;
}

unint64_t sub_261BD5BA0()
{
  result = qword_27FEDBE40;
  if (!qword_27FEDBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE40);
  }

  return result;
}

unint64_t sub_261BD5BF8()
{
  result = qword_27FEDBE48;
  if (!qword_27FEDBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE48);
  }

  return result;
}

unint64_t sub_261BD5C68()
{
  result = qword_27FEDBE50;
  if (!qword_27FEDBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE50);
  }

  return result;
}

unint64_t sub_261BD5CC4()
{
  result = qword_27FEDBE58;
  if (!qword_27FEDBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE58);
  }

  return result;
}

unint64_t sub_261BD5D1C()
{
  result = qword_27FEDBE60;
  if (!qword_27FEDBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE60);
  }

  return result;
}

unint64_t sub_261BD5D70(uint64_t a1)
{
  result = sub_261BD5D98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261BD5D98()
{
  result = qword_27FEDBE68;
  if (!qword_27FEDBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE68);
  }

  return result;
}

unint64_t sub_261BD5DF0()
{
  result = qword_27FEDBE70;
  if (!qword_27FEDBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE70);
  }

  return result;
}

unint64_t sub_261BD5E48()
{
  result = qword_27FEDBE78;
  if (!qword_27FEDBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE78);
  }

  return result;
}

unint64_t sub_261BD5EA0()
{
  result = qword_27FEDBE80;
  if (!qword_27FEDBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE80);
  }

  return result;
}

unint64_t sub_261BD5F3C()
{
  result = qword_27FEDBE98;
  if (!qword_27FEDBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBE98);
  }

  return result;
}

unint64_t sub_261BD5F90()
{
  result = qword_27FEDBEA0;
  if (!qword_27FEDBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEA0);
  }

  return result;
}

unint64_t sub_261BD5FE4()
{
  result = qword_27FEDBEA8;
  if (!qword_27FEDBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEA8);
  }

  return result;
}

unint64_t sub_261BD603C()
{
  result = qword_27FEDBEB0;
  if (!qword_27FEDBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEB0);
  }

  return result;
}

unint64_t sub_261BD6100()
{
  result = qword_27FEDBEB8;
  if (!qword_27FEDBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEB8);
  }

  return result;
}

unint64_t sub_261BD615C()
{
  result = qword_27FEDBEC0;
  if (!qword_27FEDBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEC0);
  }

  return result;
}

unint64_t sub_261BD61BC()
{
  result = qword_27FEDBEC8;
  if (!qword_27FEDBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEC8);
  }

  return result;
}

unint64_t sub_261BD6214()
{
  result = qword_27FEDBED0;
  if (!qword_27FEDBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBED0);
  }

  return result;
}

unint64_t sub_261BD62E8()
{
  result = qword_280D22118;
  if (!qword_280D22118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22118);
  }

  return result;
}

unint64_t sub_261BD6340()
{
  result = qword_280D22100;
  if (!qword_280D22100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22100);
  }

  return result;
}

unint64_t sub_261BD6398()
{
  result = qword_280D220D8;
  if (!qword_280D220D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220D8);
  }

  return result;
}

uint64_t sub_261BD643C(uint64_t a1)
{
  v2 = sub_261BD67F0();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_261BD648C()
{
  result = qword_280D220F8;
  if (!qword_280D220F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220F8);
  }

  return result;
}

unint64_t sub_261BD64E0()
{
  result = qword_280D220F0;
  if (!qword_280D220F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220F0);
  }

  return result;
}

unint64_t sub_261BD6534()
{
  result = qword_280D22108;
  if (!qword_280D22108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22108);
  }

  return result;
}

unint64_t sub_261BD658C()
{
  result = qword_280D220E8;
  if (!qword_280D220E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220E8);
  }

  return result;
}

unint64_t sub_261BD65E4()
{
  result = qword_27FEDBEE8;
  if (!qword_27FEDBEE8)
  {
    sub_261CFD844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBEE8);
  }

  return result;
}

uint64_t sub_261BD663C(uint64_t a1)
{
  v2 = sub_261BD67F0();

  return MEMORY[0x28210B2F8](a1, v2);
}

uint64_t sub_261BD66CC(uint64_t a1)
{
  v2 = sub_261B5186C();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_261BD671C()
{
  result = qword_280D220E0;
  if (!qword_280D220E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D220E0);
  }

  return result;
}

uint64_t sub_261BD6774(uint64_t a1)
{
  v2 = sub_261BD658C();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_261BD67F0()
{
  result = qword_27FEDBF00;
  if (!qword_27FEDBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBF00);
  }

  return result;
}

uint64_t sub_261BD685C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBF28);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBF28);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BD6A84()
{
  v38 = v0;
  if (qword_27FED9AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDBF28);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x26671C340](v5, v4);
    v10 = sub_261B879C8(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ReminderEntityReminderQueryPerforming] Search reminder with identifiers %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v11 = v0[2];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v0[10];
    v37 = MEMORY[0x277D84F90];
    sub_261D003A4();
    v15 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    v17 = v12;
    do
    {
      v18 = v0[11];
      sub_261B7C0F0(v15, v18);
      v19 = objc_allocWithZone(MEMORY[0x277D44700]);
      v20 = sub_261CFD814();
      v21 = sub_261CFFA54();
      [v19 initWithUUID:v20 entityName:v21];

      sub_261B3B9DC(v18, type metadata accessor for AppEntityID);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v15 += v16;
      --v17;
    }

    while (v17);
    v13 = v37;
  }

  v22 = sub_261CFC0B8(v13);

  if (v12)
  {
    v23 = v0[10];
    v36 = v0[6];
    v24 = (v0[2] + ((*(v23 + 80) + 32) & ~*(v23 + 80)));
    v25 = *(v23 + 72);
    v26 = MEMORY[0x277D84F90];
    v35 = v22;
    do
    {
      sub_261BD6F80(v24, v22, v0[4]);
      v27 = v0[4];
      if ((*(v36 + 48))(v27, 1, v0[5]) == 1)
      {
        sub_261AE6A40(v27, &unk_27FEDE110, &unk_261D035B0);
      }

      else
      {
        v29 = v0[7];
        v28 = v0[8];
        sub_261B837B0(v27, v28);
        sub_261B837B0(v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_261B41560(0, v26[2] + 1, 1, v26);
        }

        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          v26 = sub_261B41560((v30 > 1), v31 + 1, 1, v26);
        }

        v32 = v0[7];
        v26[2] = v31 + 1;
        sub_261B837B0(v32, v26 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31);
        v22 = v35;
      }

      v24 = (v24 + v25);
      --v12;
    }

    while (v12);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v33 = v0[1];

  return v33(v26);
}

void sub_261BD6F80(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for AppEntityID(0);
  v14 = objc_allocWithZone(MEMORY[0x277D44700]);
  v15 = sub_261CFD814();
  v16 = sub_261CFFA54();
  v17 = [v14 initWithUUID:v15 entityName:v16];

  v18 = *(v13 + 24);
  v19 = v12;
  sub_261AFB668(a1 + v18, v12, &qword_27FEDA108, &unk_261D020C0);
  v57 = v17;
  v20 = sub_261CADDB4(v17, a2);
  if (!v20)
  {
    if (qword_27FED9AA0 != -1)
    {
      swift_once();
    }

    v23 = sub_261CFF7A4();
    __swift_project_value_buffer(v23, qword_27FEDBF28);
    v24 = v57;
    v25 = sub_261CFF784();
    v26 = sub_261CFFE64();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_261AE2000, v25, v26, "[ReminderEntityReminderQueryPerforming] Unable to fetch reminder entity for id: %{public}@", v27, 0xCu);
      sub_261AE6A40(v28, &unk_27FEDA730, &unk_261D035C0);
      v30 = v28;
      v19 = v12;
      MEMORY[0x26671D560](v30, -1, -1);
      MEMORY[0x26671D560](v27, -1, -1);
    }

    else
    {
      v29 = v25;
      v25 = v24;
    }

    v37 = v56;

    v38 = 1;
    goto LABEL_27;
  }

  v21 = v20;
  v22 = sub_261CFC488(v20);
  if (v3)
  {
    sub_261AE6A40(v12, &qword_27FEDA108, &unk_261D020C0);

    return;
  }

  v31 = v22;
  v53 = v19;
  sub_261AFB668(v19, v55, &qword_27FEDA108, &unk_261D020C0);
  v32 = [v21 storage];
  v33 = [v21 list];
  v51 = [v33 storage];

  v34 = sub_261CFFDF4();
  v35 = [v21 parentReminder];
  if (v35)
  {
    v36 = v35;
    v49 = [v35 storage];
  }

  else
  {
    v49 = 0;
  }

  v52 = v32;
  v50 = v34;
  if (!v31)
  {
    v44 = 0;
LABEL_26:
    v45 = v55;
    v37 = v56;
    v19 = v53;
    v46 = v54;
    sub_261AFB668(v55, v54, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v52, v51, v50, v49, v44, v46, v37);

    sub_261AE6A40(v45, &qword_27FEDA108, &unk_261D020C0);
    v38 = 0;
LABEL_27:
    sub_261AE6A40(v19, &qword_27FEDA108, &unk_261D020C0);
    v47 = type metadata accessor for ReminderEntity(0);
    (*(*(v47 - 8) + 56))(v37, v38, 1, v47);
    return;
  }

  if (!(v31 >> 62))
  {
    v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v39 = sub_261D00274();
  if (!v39)
  {
LABEL_25:

    v44 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

LABEL_16:
  v48 = 0;
  v58 = MEMORY[0x277D84F90];
  sub_261D003A4();
  if ((v39 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x26671CA10](v40, v31);
      }

      else
      {
        v41 = *(v31 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = [v41 storage];

      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v39 != v40);

    v44 = v58;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t REMStoreIntentPerformer.entities(query:matching:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = *(type metadata accessor for ReminderEntity(0) - 8);
  v5[10] = swift_task_alloc();
  v6 = sub_261CFED74();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for AppEntityID(0);
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BD76C8, 0, 0);
}

void *sub_261BD76C8()
{
  v82 = v0;
  v1 = v0[16];
  sub_261AFB668(v0[5], v1, &unk_27FEDE0C0, &unk_261D02500);
  v2 = type metadata accessor for ListEntity(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[16];
  if (v3 == 1)
  {
    sub_261AE6A40(v4, &unk_27FEDE0C0, &unk_261D02500);
    v5 = 0;
  }

  else
  {
    v6 = v0[15];
    v7 = *(v2 + 20);
    v8 = v0[16];
    sub_261B7C0F0(v4 + v7, v6);
    sub_261B3B9DC(v8, type metadata accessor for ListEntity);
    v9 = objc_allocWithZone(MEMORY[0x277D44700]);
    v10 = sub_261CFD814();
    v11 = sub_261CFFA54();
    v5 = [v9 initWithUUID:v10 entityName:v11];

    sub_261B3B9DC(v6, type metadata accessor for AppEntityID);
  }

  if (qword_27FED9AA0 != -1)
  {
    swift_once();
  }

  v12 = sub_261CFF7A4();
  __swift_project_value_buffer(v12, qword_27FEDBF28);
  v13 = v5;
  sub_261CFD104();
  v14 = sub_261CFF784();
  v15 = sub_261CFFE84();

  v72 = v13;

  v79 = v5;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[3];
    v16 = v0[4];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v81[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_261B879C8(v17, v16, v81);
    *(v18 + 12) = 2082;
    if (v5)
    {
      v0[2] = v72;
      sub_261B57A9C();
      v20 = v72;
      v21 = sub_261CFFAB4();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = sub_261B879C8(v21, v23, v81);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_261AE2000, v14, v15, "[ReminderEntityReminderQueryPerforming] Search reminders matching %s in list: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v19, -1, -1);
    MEMORY[0x26671D560](v18, -1, -1);
  }

  v25 = v0[11];
  v26 = v0[12];
  v28 = v0[3];
  v27 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7F8, &qword_261D03378);
  v29 = *(v26 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = v30 + 2 * v29;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_261D01400;
  v33 = (v32 + v30);
  *v33 = 0;
  v34 = *(v26 + 104);
  v34(v33, *MEMORY[0x277D44EF0], v25);
  v35 = &v33[v29];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF40, &qword_261D08EC8) + 48);
  *v35 = v28;
  *(v35 + 1) = v27;
  v37 = *MEMORY[0x277D45270];
  v38 = sub_261CFEF44();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  v34(v35, *MEMORY[0x277D44F10], v25);
  if (v79)
  {
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF48, &qword_261D08ED0) + 48);
    *v39 = v72;
    v43 = *MEMORY[0x277D44F58];
    v44 = sub_261CFED64();
    (*(*(v44 - 8) + 104))(&v39[v42], v43, v44);
    v34(v39, *MEMORY[0x277D44F30], v41);
    sub_261CFD104();
    v45 = v72;
    v46 = sub_261B42380(1, 3, 1, v32);
    *(v46 + 2) = 3;
    (*(v40 + 32))(&v46[v31], v39, v41);
  }

  else
  {
    sub_261CFD104();
  }

  sub_261CFEE84();
  v47 = objc_opt_self();
  sub_261CFD104();
  v48 = [v47 fetchOptionsIncludingDueDateDeltaAlerts];
  v49 = sub_261CFEE74();

  if (v49 >> 62)
  {
    v50 = sub_261D00274();
    if (v50)
    {
      goto LABEL_16;
    }

LABEL_29:

    v53 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
    goto LABEL_29;
  }

LABEL_16:
  v81[0] = MEMORY[0x277D84F90];
  result = sub_261B39DB8(0, v50 & ~(v50 >> 63), 0);
  if (v50 < 0)
  {
    __break(1u);
    return result;
  }

  v52 = 0;
  v53 = v81[0];
  v54 = v49;
  v73 = v49 & 0xC000000000000001;
  v74 = v0[9];
  v55 = &unk_279AFB000;
  v75 = v50;
  v76 = v54;
  do
  {
    v80 = v53;
    if (v73)
    {
      v56 = MEMORY[0x26671CA10](v52);
    }

    else
    {
      v56 = *(v54 + 8 * v52 + 32);
    }

    v57 = v56;
    v58 = v0[8];
    v59 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v78 = [v57 v55[84]];
    v60 = [v57 list];
    v77 = [v60 v55[84]];

    v61 = sub_261CFFDF4();
    v62 = [v57 parentReminder];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 v55[84]];
    }

    else
    {
      v64 = 0;
    }

    v65 = v0[10];
    v66 = v0[7];
    v67 = v0[8];
    sub_261AFB668(v67, v66, &qword_27FEDA108, &unk_261D020C0);
    sub_261C7EDC4(v78, v77, v61, v64, 0, v66, v65);

    sub_261AE6A40(v67, &qword_27FEDA108, &unk_261D020C0);
    v53 = v80;
    v81[0] = v80;
    v69 = *(v80 + 16);
    v68 = *(v80 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_261B39DB8((v68 > 1), v69 + 1, 1);
      v53 = v81[0];
    }

    v70 = v0[10];
    ++v52;
    *(v53 + 16) = v69 + 1;
    sub_261B837B0(v70, v53 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v69);
    v54 = v76;
    v55 = &unk_279AFB000;
  }

  while (v75 != v52);

LABEL_30:

  v71 = v0[1];

  return v71(v53);
}

uint64_t REMStoreIntentPerformer.suggestedHashtagLabels(query:)()
{
  v1[2] = v0;
  v2 = sub_261CFF004();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BD80B0, 0, 0);
}

char *sub_261BD80B0()
{
  if (qword_27FED9AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDBF28);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ReminderEntityReminderQueryPerforming] Search suggested hashtag labels", v4, 2u);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  sub_261CFF014();
  (*(v6 + 104))(v5, *MEMORY[0x277D45328], v7);
  v8 = sub_261CFEFF4();
  (*(v6 + 8))(v5, v7);
  if (v8 >> 62)
  {
    v9 = sub_261D00274();
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_17:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_7:
  v23 = v0;
  v24 = MEMORY[0x277D84F90];
  result = sub_261B39FA4(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = v24;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26671CA10](v11, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = [v13 name];
    v16 = sub_261CFFA74();
    v18 = v17;

    v20 = *(v24 + 16);
    v19 = *(v24 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_261B39FA4((v19 > 1), v20 + 1, 1);
    }

    ++v11;
    *(v24 + 16) = v20 + 1;
    v21 = v24 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  while (v9 != v11);

  v0 = v23;
LABEL_18:

  v22 = v0[1];

  return v22(v12);
}

uint64_t sub_261BD83D0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:for:)(v4, a2);
}

uint64_t sub_261BD8468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:matching:in:)(v8, a2, a3, a4);
}

uint64_t sub_261BD8518()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261B0D584;

  return REMStoreIntentPerformer.suggestedHashtagLabels(query:)();
}

uint64_t sub_261BD85A8()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDBF50);
  __swift_project_value_buffer(v6, qword_27FEDBF50);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSmartListIsHiddenAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSmartListIsHiddenAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261BD8B50(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateSmartListIsHiddenAppIntent.entity.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*UpdateSmartListIsHiddenAppIntent.property.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateSmartListIsHiddenAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v41[-v2];
  v62 = sub_261CFD184();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v60 = &v41[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41[-v9];
  v11 = sub_261CFD674();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_261CFD884();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFFA44();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFD6A4();
  v47 = v17;
  v64 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v57 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v56 = &v41[-v21];
  MEMORY[0x28223BE20](v20);
  v59 = &v41[-v22];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB748, &qword_261D070E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v24 = *(v12 + 104);
  v42 = *MEMORY[0x277CC9110];
  v23 = v42;
  v43 = v11;
  v24(v14, v42, v11);
  v45 = v24;
  v44 = v12 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v24(v14, v23, v11);
  v25 = v10;
  sub_261CFD6C4();
  v26 = *(v64 + 56);
  v64 += 56;
  v48 = v26;
  v26(v10, 0, 1, v17);
  LOBYTE(v67[0]) = 6;
  v27 = sub_261CFC834();
  v53 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v52 = v29;
  v30 = v28 + 56;
  v29(v60, 1, 1, v27);
  v54 = v30;
  v29(v55, 1, 1, v27);
  v50 = *MEMORY[0x277CBA308];
  v31 = *(v65 + 104);
  v65 += 104;
  v51 = v31;
  v31(v61);
  sub_261B94D00();
  v32 = v25;
  *v63 = sub_261CFCC04();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v33 = v42;
  v34 = v43;
  v35 = v45;
  v45(v14, v42, v43);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v14, v33, v34);
  v46 = v32;
  sub_261CFD6C4();
  v48(v32, 0, 1, v47);
  LOBYTE(v67[0]) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v14, v33, v34);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v14, v33, v34);
  sub_261CFD6B4();
  v36 = v58;
  sub_261CFFCD4();
  v37 = sub_261CFFCE4();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v52(v60, 1, 1, v53);
  v51(v61, v50, v62);
  v38 = sub_261CFCD44();
  v39 = v63;
  v63[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF68, &qword_261D08F08);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v39[2] = result;
  return result;
}

uint64_t UpdateSmartListIsHiddenAppIntent.perform()(uint64_t a1)
{
  *(v2 + 104) = a1;
  v3 = sub_261CFC9D4();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF70, &qword_261D08F18);
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_261CFD754();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *v1;
  *(v2 + 208) = *(v1 + 16);
  *(v2 + 216) = sub_261CFFD24();
  *(v2 + 224) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 232) = v7;
  *(v2 + 240) = v6;

  return MEMORY[0x2822009F8](sub_261BD9928, v7, v6);
}

uint64_t sub_261BD9928()
{
  v11 = v0;
  v1 = *(v0 + 184);
  sub_261CFCBB4();
  LOBYTE(v9) = *(v0 + 312);
  sub_261CFCBB4();
  SmartListEntity.init(type:isHidden:)(&v9, *(v0 + 313), &v7);
  v9 = v7;
  v10 = v8;
  sub_261CFC664();
  sub_261CA8D78(&v9, v0 + 16, &v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  *(v0 + 248) = v5;
  *(v0 + 264) = v6;
  sub_261BDA2E0(v1);
  *(v0 + 272) = sub_261CFFD14();
  v3 = sub_261CFFCF4();
  *(v0 + 280) = v3;
  *(v0 + 288) = v2;

  return MEMORY[0x2822009F8](sub_261BD9A78, v3, v2);
}

uint64_t sub_261BD9A78()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_261BD9B60;
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[19];

  return sub_261C5C3E8(v5, "UpdateSmartListAppIntent", 24, 2, v4, v2, v3);
}

uint64_t sub_261BD9B60()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_261BDA1A0;
  }

  else
  {
    v5 = sub_261BD9C9C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BD9C9C()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_261BD9D00, v1, v2);
}

uint64_t sub_261BD9D00()
{
  v32 = v0;

  sub_261B01D28(&qword_27FEDBF78, &qword_27FEDBF70, &qword_261D08F18, MEMORY[0x277CBA268]);
  sub_261CFC964();
  v1 = *(v0 + 56);
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v28 = *(v0 + 64);
    (*(*(v0 + 144) + 8))();
    *(v0 + 80) = v1;
    *(v0 + 88) = v28;
    (*(v5 + 16))(v3, v2, v4);
    sub_261CFC9E4();
    sub_261B84908();
    sub_261BDA810();
    sub_261CFC984();

    (*(v7 + 8))(v6, v8);

    (*(v5 + 8))(v2, v4);

    v9 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    sub_261CFD704();
    v13 = sub_261CFD714();
    v15 = v14;
    v30 = *(v11 + 8);
    v30(v10, v12);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v16 = sub_261CFF7A4();
    __swift_project_value_buffer(v16, qword_27FED9EF8);
    sub_261CFD104();
    v17 = sub_261CFF784();
    v18 = sub_261CFFE64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31[0] = v20;
      *v19 = 136315650;
      v21 = sub_261B879C8(v13, v15, v31);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2048;
      *(v19 + 14) = 93;
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_261B879C8(0xD00000000000004ELL, 0x8000000261D1D390, v31);
      _os_log_impl(&dword_261AE2000, v17, v18, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v20, -1, -1);
      MEMORY[0x26671D560](v19, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 184);
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    sub_261B01D70();
    swift_allocError();
    *v26 = 20;
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    v30(v29, v22);

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_261BDA1A0()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_261BDA204, v1, v2);
}

uint64_t sub_261BDA204()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_261BDA2E0@<X0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  if (v7 != 1)
  {
    sub_261CFCBB4();
    return sub_261BC0418(a1);
  }

  sub_261CFCBB4();
  if (v6 > 2u || v6)
  {
    v2 = sub_261D00614();

    if ((v2 & 1) == 0)
    {
      return sub_261BC0418(a1);
    }
  }

  else
  {
  }

  if (qword_27FED9A10 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFD754();
  v5 = __swift_project_value_buffer(v4, qword_27FEDB8A8);
  return (*(*(v4 - 8) + 16))(a1, v5, v4);
}

uint64_t static UpdateSmartListIsHiddenAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF80, &qword_261D08F20);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF88, &qword_261D08F28);
  MEMORY[0x28223BE20](v1);
  sub_261BDA868();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF98, &qword_261D08F58);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBFA0, &unk_261D08F88);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BDA688@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDBF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BDA738(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateSmartListIsHiddenAppIntent.perform()(a1);
}

uint64_t sub_261BDA7D4(uint64_t a1)
{
  v2 = sub_261BDA868();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261BDA810()
{
  result = qword_27FEDA3C0;
  if (!qword_27FEDA3C0)
  {
    sub_261CFC9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA3C0);
  }

  return result;
}

unint64_t sub_261BDA868()
{
  result = qword_27FEDBF90;
  if (!qword_27FEDBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBF90);
  }

  return result;
}

unint64_t sub_261BDA8C0()
{
  result = qword_27FEDBFA8;
  if (!qword_27FEDBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBFA8);
  }

  return result;
}

unint64_t sub_261BDA918()
{
  result = qword_27FEDBFB0;
  if (!qword_27FEDBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBFB0);
  }

  return result;
}

uint64_t sub_261BDA9CC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBFD8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBFD8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BDAD90()
{
  v108 = v0;
  v107[1] = *MEMORY[0x277D85DE8];
  sub_261CFCBB4();
  v1 = sub_261B9A654(*(v0 + 80), 0);
  v3 = v2;

  v6 = sub_261B9C33C(3, v1, v3);

  *(v0 + 88) = MEMORY[0x277D84F90];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 288);
    log = *(v0 + 264);
    v9 = *(v0 + 224);
    v10 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    v12 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    do
    {
      sub_261BDC470(v10, *(v0 + 296), _s20CategorizedRemindersV12EditableItemOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v0 + 296);
      if (EnumCaseMultiPayload == 1)
      {
        v17 = *(v0 + 248);
        v16 = *(v0 + 256);
        sub_261B579D4(v15, v16, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        sub_261BDC470(v16, v17, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_261B423A8(0, v12[2] + 1, 1, v12);
        }

        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          v12 = sub_261B423A8((v18 > 1), v19 + 1, 1, v12);
        }

        v13 = *(v0 + 248);
        sub_261BDC4D8(*(v0 + 256), _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v12[2] = v19 + 1;
        sub_261B579D4(v13, v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      }

      else
      {
        v20 = *(v0 + 272);
        sub_261B579D4(v15, v20, _s20CategorizedRemindersV15FetchedReminderVMa);
        v21 = *(v20 + SHIDWORD(log[2].isa));
        MEMORY[0x26671C310]();
        if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261CFFC84();
        }

        v22 = *(v0 + 272);
        sub_261CFFCB4();
        sub_261BDC4D8(v22, _s20CategorizedRemindersV15FetchedReminderVMa);
        v96 = *(v0 + 88);
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
  }

  if (qword_27FED9AB0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v23 = sub_261CFF7A4();
  __swift_project_value_buffer(v23, qword_27FEDBFD8);
  sub_261CFD104();
  sub_261CFD104();
  v24 = sub_261CFF784();
  v25 = sub_261CFFE84();

  loga = v24;
  v95 = v12;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v107[0] = v97;
    *v26 = 136315394;
    v12 = v96;
    if (v96 >> 62)
    {
      v27 = sub_261D00274();
    }

    else
    {
      v27 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x277D84F90];
    v100 = v25;
    if (v27)
    {
      *&v105[0] = MEMORY[0x277D84F90];
      sub_261D003A4();
      if (v27 < 0)
      {
        __break(1u);
LABEL_68:
        v66 = sub_261D00274();
        if (v66)
        {
          goto LABEL_44;
        }

LABEL_69:

        sub_261CFDD24();
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        v90 = MEMORY[0x26671A3E0](v27, v26, v0 + 16);
        *(v0 + 360) = v90;

        sub_261AE6A40(v0 + 16, &qword_27FEDC000, &qword_261D090C8);
        *(v0 + 112) = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
        sub_261B01D28(&qword_27FEDB728, &qword_27FEDB720, &qword_261D09240, MEMORY[0x277CBCEB0]);
        sub_261CFF7F4();

        return MEMORY[0x2822009F8](sub_261BDBB10, 0, 0);
      }

      v29 = 0;
      do
      {
        if ((v96 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x26671CA10](v29, v96);
        }

        else
        {
          v30 = *(v96 + 8 * v29 + 32);
        }

        v31 = v30;
        ++v29;
        v32 = [v30 objectID];

        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (v27 != v29);
      v28 = *&v105[0];
    }

    v33 = sub_261B57A9C();
    v34 = MEMORY[0x26671C340](v28, v33);
    v36 = v35;

    v37 = sub_261B879C8(v34, v36, v107);

    *(v26 + 4) = v37;
    *(v26 + 12) = 2080;
    v38 = v95[2];
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v93 = v33;
      v40 = *(v0 + 264);
      v41 = *(v0 + 224);
      *&v105[0] = MEMORY[0x277D84F90];
      sub_261D003A4();
      v42 = v95 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v43 = *(v41 + 72);
      do
      {
        v44 = *(v0 + 240);
        sub_261BDC470(v42, v44, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        v45 = [*(v44 + *(v40 + 20)) objectID];
        sub_261BDC4D8(v44, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
        v42 += v43;
        --v38;
      }

      while (v38);
      v39 = *&v105[0];
      v33 = v93;
    }

    v46 = MEMORY[0x26671C340](v39, v33);
    v48 = v47;

    v49 = sub_261B879C8(v46, v48, v107);

    *(v26 + 14) = v49;
    _os_log_impl(&dword_261AE2000, loga, v100, "[DeleteRemindersAppIntent] Delete reminders with ids: %s, recurrent instances: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v97, -1, -1);
    MEMORY[0x26671D560](v26, -1, -1);

    v12 = v95;
  }

  else
  {
  }

  v50 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *(v0 + 352) = v50;
  loga = v50;
  [v50 setSaveIsNoopIfNoChangedKeys:1];
  v12 = v12[2];
  if (v12)
  {
    v51 = *(v0 + 264);
    v52 = *(v0 + 224);
    v53 = *(v0 + 232);
    v54 = *(v0 + 216);
    sub_261CFE144();
    v98 = *(v54 + 20);
    v101 = *(v51 + 20);
    v55 = v95 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v56 = *(v52 + 72);
    do
    {
      v57 = *(v0 + 232);
      v58 = *(v0 + 208);
      sub_261BDC470(v55, v57, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      v59 = *(v53 + v101);
      *(v0 + 104) = v59;
      v106 = 0;
      memset(v105, 0, sizeof(v105));
      v60 = v59;
      v61 = loga;
      sub_261CFDF24();
      v62 = [*(v53 + v98) date];
      sub_261CFD7C4();

      v63 = sub_261CFD7E4();
      (*(*(v63 - 8) + 56))(v58, 0, 1, v63);
      sub_261CFE014();

      sub_261AE6A40(v58, &qword_27FEDAB68, &unk_261D11C90);
      sub_261BDC4D8(v57, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      v55 += v56;
      v12 = (v12 - 1);
    }

    while (v12);
  }

  sub_261CFCBB4();
  v65 = *(v0 + 392);
  v27 = v96;
  v26 = loga;
  if (v65 == 2 || (v65 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (v96 >> 62)
  {
    goto LABEL_68;
  }

  v66 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
    goto LABEL_69;
  }

LABEL_44:
  v67 = 0;
  v68 = v27 & 0xC000000000000001;
  v102 = v27 & 0xFFFFFFFFFFFFFF8;
  *&v64 = 136315138;
  v91 = v64;
  v99 = v66;
  v94 = v27 & 0xC000000000000001;
  while (1)
  {
    if (v68)
    {
      v69 = MEMORY[0x26671CA10](v67, v27);
    }

    else
    {
      if (v67 >= *(v102 + 16))
      {
        goto LABEL_64;
      }

      v69 = *(v27 + 8 * v67 + 32);
    }

    v70 = v69;
    v12 = (v67 + 1);
    if (__OFADD__(v67, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v71 = [v69 subtaskContext];
    if (!v71)
    {

      goto LABEL_46;
    }

    v72 = v71;
    *(v0 + 120) = 0;
    v73 = [v71 hasSubtasksWithError_];
    v74 = *(v0 + 120);
    if (v74)
    {
      swift_willThrow();
      v75 = v74;
      v76 = sub_261CFF784();
      v77 = sub_261CFFE64();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v105[0] = v79;
        *v78 = v91;
        swift_getErrorValue();
        v80 = sub_261D00674();
        v92 = v75;
        v82 = sub_261B879C8(v80, v81, v105);

        *(v78 + 4) = v82;
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x26671D560](v79, -1, -1);
        v83 = v78;
        v26 = loga;
        MEMORY[0x26671D560](v83, -1, -1);
      }

      else
      {
      }

      v66 = v99;
      v68 = v94;
      goto LABEL_46;
    }

    v84 = v73;

    if (v84)
    {
      break;
    }

LABEL_46:
    ++v67;
    v27 = v96;
    if (v12 == v66)
    {
      goto LABEL_69;
    }
  }

  v85 = sub_261CFF784();
  v86 = sub_261CFFE84();
  if (os_log_type_enabled(v85, v86))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_261AE2000, v85, v86, "[DeleteRemindersAppIntent] Delete reminders called on a reminder with subtasks, but the delete subtasks was set to false. No reminders deleted.", v88, 2u);
    MEMORY[0x26671D560](v88, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v89 = 16;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_261BDBB10()
{
  (*(v0[23] + 16))(v0[24], v0[25], v0[22]);
  sub_261B01D28(&qword_27FEDC008, &qword_27FEDBFF8, &qword_261D090C0, MEMORY[0x277CBCE58]);
  sub_261CFFD54();
  v1 = sub_261B01D28(&qword_27FEDC010, &qword_27FEDBFF0, &qword_261D090B8, MEMORY[0x277CBCE50]);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_261BDBC80;
  v3 = v0[19];

  return MEMORY[0x282200308](v0 + 393, v3, v1);
}

uint64_t sub_261BDBC80()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  if (v0)
  {
    v3 = sub_261BDC058;
  }

  else
  {
    v3 = sub_261BDBE14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261BDBE14(uint64_t a1)
{
  if (*(v1 + 393))
  {
    (*(*(v1 + 184) + 8))(*(v1 + 200), *(v1 + 176));
    v2 = *(v1 + 336);
    v3 = *(v1 + 344);
    v4 = sub_261BDC22C;
  }

  else
  {
    *(v1 + 384) = sub_261CFFD14();
    v5 = sub_261CFFCF4();
    v7 = v6;
    v4 = sub_261BDBF24;
    v2 = v5;
    v3 = v7;
  }

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_261BDBF24()
{

  return MEMORY[0x2822009F8](sub_261BDBFB8, 0, 0);
}

uint64_t sub_261BDBFB8()
{
  (*(v0[23] + 8))(v0[25], v0[22]);
  v1 = v0[42];
  v2 = v0[43];

  return MEMORY[0x2822009F8](sub_261BDC22C, v1, v2);
}

uint64_t sub_261BDC058()
{
  (*(v0[23] + 8))(v0[25], v0[22]);
  v1 = v0[42];
  v2 = v0[43];

  return MEMORY[0x2822009F8](sub_261BDC0F8, v1, v2);
}

uint64_t sub_261BDC0F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BDC22C()
{
  v1 = v0[44];
  v2 = v0[17];

  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  v2[4] = sub_261B01D28(&qword_27FEDAFD8, &qword_27FEDAFD0, &qword_261D072B0, MEMORY[0x277CBA268]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_261CFC9A4();

  v3 = v0[1];

  return v3();
}

uint64_t sub_261BDC3C4(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BDC470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BDC4D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BDC538()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC018);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC018);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier.reminderID(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
  v4 = sub_261CFD4E4();
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

id RemindersInCalendarUtilities.ReminderEditingConfiguration.reminderID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261BDC810(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = [*v7 objectID];
  }

  else
  {
    sub_261BDD558(v7, v4, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v9 = *v4;
    sub_261BDCB40(v4, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  return v9;
}

uint64_t sub_261BDC810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_261BDC874(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261BDC810(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = [*v9 objectID];
  }

  else
  {
    sub_261BDD558(v9, v6, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v11 = *v6;
    sub_261BDCB40(v6, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  *a2 = v11;
}

uint64_t sub_261BDC9C4(id *a1, char *a2)
{
  v3 = *a1;
  sub_261BDCB40(a2, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
  v4 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
  v5 = sub_261CFD4E4();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = v3;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.reminderID.setter(uint64_t a1)
{
  sub_261BDCB40(v1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
  v4 = sub_261CFD4E4();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *v1 = a1;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_261BDCB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*RemindersInCalendarUtilities.ReminderEditingConfiguration.reminderID.modify(uint64_t *a1))(void ***a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 8) = v2;
  v7 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  v6[2] = v7;
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[3] = v9;
  v11 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v6[4] = v11;
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[5] = v13;
  sub_261BDC810(v2, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = [*v14 objectID];
  }

  else
  {
    sub_261BDD558(v14, v10, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v16 = *v10;
    sub_261BDCB40(v10, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  *v6 = v16;
  return sub_261BDCD24;
}

void sub_261BDCD24(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7 = **a1;
  v6 = (*a1)[1];
  if (a2)
  {
    v8 = v7;
    sub_261BDCB40(v6, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    v9 = v5[5];
    v10 = sub_261CFD4E4();
    (*(*(v10 - 8) + 56))(&v6[v9], 1, 1, v10);
    *v6 = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_261BDCB40((*a1)[1], type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    v11 = v5[5];
    v12 = sub_261CFD4E4();
    (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
    *v6 = v7;
    swift_storeEnumTagMultiPayload();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_261BDCEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *RemindersInCalendarUtilities.ReminderEditingConfiguration.undoManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 20));
  v2 = v1;
  return v1;
}

void RemindersInCalendarUtilities.ReminderEditingConfiguration.undoManager.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

void (*RemindersInCalendarUtilities.ReminderEditingConfiguration.layoutMargins.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  *v4 = *v6;
  *(v4 + 16) = v7;
  return sub_261BDD104;
}

void sub_261BDD104(void **a1)
{
  v1 = *a1;
  v2 = (*(v1 + 4) + v1[10]);
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.isInResizableContainer.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderEditingConfiguration.isInResizableContainer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BE0A88;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.hasCommitCancelButtons.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderEditingConfiguration.hasCommitCancelButtons.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BE0A88;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.autoCommitsEditingOnTextEditingReturnKey.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*RemindersInCalendarUtilities.ReminderEditingConfiguration.autoCommitsEditingOnTextEditingReturnKey.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return sub_261BDD324;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.newUserInterfaceStyleEnabled.setter(char a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.init(reminderID:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + v4[5]) = 0;
  *(a2 + v4[6]) = 0;
  v5 = (a2 + v4[7]);
  *v5 = xmmword_261D090F0;
  v5[1] = xmmword_261D09100;
  *(a2 + v4[8]) = 0;
  *(a2 + v4[9]) = 0;
  *(a2 + v4[10]) = 1;
  v6 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *a2 = a1;
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t RemindersInCalendarUtilities.ReminderEditingConfiguration.init(reminderSpecifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + v4[5]) = 0;
  *(a2 + v4[6]) = 0;
  v5 = (a2 + v4[7]);
  *v5 = xmmword_261D090F0;
  v5[1] = xmmword_261D09100;
  *(a2 + v4[8]) = 0;
  *(a2 + v4[9]) = 0;
  *(a2 + v4[10]) = 1;
  return sub_261BDD558(a1, a2, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
}

uint64_t sub_261BDD558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static RemindersInCalendarUtilities.makeReminderEditingModule(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC030, &qword_261D09110);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v46 - v5;
  v7 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC038, &qword_261D09118);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v46 - v14;
  sub_261BDC810(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v12;
    if (qword_27FED9AB8 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDC018);
    v18 = v16;
    v19 = sub_261CFF784();
    v20 = sub_261CFFE54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v4;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = [v18 objectID];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_261AE2000, v19, v20, "ReminderEditingUI: using optimistic reminder {reminderID: %@}", v22, 0xCu);
      sub_261AE6A40(v23, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v23, -1, -1);
      v25 = v22;
      v4 = v21;
      MEMORY[0x26671D560](v25, -1, -1);
    }

    v26 = sub_261BDE69C(v18);
    if (v26)
    {
      v48 = v26;
      v46[2] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC040, &unk_261D09120);
      sub_261B05020(0, &qword_27FEDB878, 0x277D44780);
      sub_261B01D28(&qword_27FEDC048, &qword_27FEDC040, &unk_261D09120, MEMORY[0x277CBCD90]);
      sub_261CFF834();

      sub_261B01D28(&qword_27FEDC050, &qword_27FEDC030, &qword_261D09110, MEMORY[0x277CBCC08]);
      sub_261CFF804();
      (*(v4 + 8))(v6, v3);
    }

    sub_261CFE454();
    v35 = [v18 store];
    v36 = sub_261CFE444();

    v37 = [v36 updateReminder_];
    sub_261CFE384();

    v39 = 0;
  }

  else
  {
    sub_261BDD558(v12, v9, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v27 = *v9;
    if (qword_27FED9AB8 != -1)
    {
      swift_once();
    }

    v28 = sub_261CFF7A4();
    __swift_project_value_buffer(v28, qword_27FEDC018);
    v29 = v27;
    v30 = sub_261CFF784();
    v31 = sub_261CFFE64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_261AE2000, v30, v31, "ReminderEditingUI: fetching reminder for editing {reminderID: %@}", v32, 0xCu);
      sub_261AE6A40(v33, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v33, -1, -1);
      MEMORY[0x26671D560](v32, -1, -1);
    }

    sub_261CFE454();
    if (qword_280D21E90 != -1)
    {
      swift_once();
    }

    v38 = sub_261CFE434();
    v39 = sub_261B026B0(v38, 1);
    v40 = v39;
    v41 = [v38 store];
    v42 = sub_261CFE444();

    v43 = [v42 updateReminder_];
    sub_261CFE374();

    sub_261BDCB40(v9, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  }

  v44 = sub_261CFE394();
  (*(*(v44 - 8) + 56))(v15, 0, 1, v44);
  sub_261BDDF34(v15, v39, a1, v47);

  return sub_261AE6A40(v15, &qword_27FEDC038, &qword_261D09118);
}

void sub_261BDDEAC(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_261CFE454();
  v4 = [v3 store];
  v5 = sub_261CFE444();

  v6 = [v5 updateReminder_];
  *a2 = v6;
}

void sub_261BDDF34(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v50 = a4;
  v51 = a3;
  v6 = sub_261CFE834();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB248, &qword_261D05728);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC078, &qword_261D09200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_261CFE324();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC038, &qword_261D09118);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_261CFE394();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261BE095C(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDC038, &qword_261D09118);
    sub_261CFE3D4();
    v24 = sub_261CFE3C4();
    v25 = 0;
    v26 = 0;
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
    v27 = a2;
    sub_261CFE744();
    v28 = *MEMORY[0x277D45D68];
    v29 = *(v14 + 104);
    v45 = v13;
    v29(v16, v28, v13);
    sub_261CFE3D4();
    v30 = sub_261CFDD44();
    v31 = v12;
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    v32 = sub_261CFE814();
    v33 = v46;
    (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
    v34 = v47;
    sub_261CFE824();
    v35 = sub_261CFE3B4();
    v44 = v16;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    (*(v48 + 8))(v34, v49);
    sub_261AE6A40(v33, &qword_27FEDB248, &qword_261D05728);
    sub_261AE6A40(v31, &qword_27FEDC078, &qword_261D09200);
    (*(v14 + 8))(v44, v45);
    (*(v21 + 8))(v23, v20);
  }

  v38 = *(v51 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 20));
  type metadata accessor for RemindersInCalendarIOSReminderEditingPresenter();
  v39 = swift_allocObject();
  v39[3] = 0;
  swift_unknownObjectWeakInit();
  v39[4] = v38;
  v39[5] = v25;
  v39[6] = v26;
  if (v25)
  {
    swift_getObjectType();
    sub_261BE09CC();
    v40 = v38;
    swift_unknownObjectRetain();
    sub_261CFCDA4();
    v41 = v24;
    sub_261CFE624();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = v38;
  }

  v43 = v50;
  *v50 = v24;
  v43[1] = v39;
  v43[2] = &off_287447638;
}

void sub_261BDE4C8(void *a1, uint64_t a2, void *a3)
{
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  sub_261CFFE34();
  v5 = [a3 titleAsString];
  if (v5)
  {
    v6 = v5;
    v7 = sub_261CFFA74();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_261C92A18(v7, v9);

  v10 = sub_261CFFA54();

  [a1 setActionName_];
}

id sub_261BDE5D8@<X0>(id a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [a1 fetchReminderWithObjectID:a2 error:v8];
  v5 = v8[0];
  if (v4)
  {
    *a3 = v4;
    return v5;
  }

  else
  {
    v7 = v8[0];
    sub_261CFD654();

    return swift_willThrow();
  }
}

id sub_261BDE690@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_261BDE69C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC088, &qword_261D09208);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC090, &qword_261D09210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC098, &qword_261D09218);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v52 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0A0, &qword_261D09220);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0A8, &qword_261D09228);
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0B0, &qword_261D09230);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0B8, &qword_261D09238);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = [a1 objectID];
  v21 = sub_261C14814();
  if (v21)
  {
    v53 = v10;
    v22 = v21;
    v61 = v21;
    v23 = [a1 store];
    v58 = v12;
    v24 = v23;
    v72 = v22;
    sub_261CFED04();
    v25 = sub_261CFECE4();
    v59 = v13;
    v26 = v25;
    v71 = v25;
    v27 = sub_261CFFEE4();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    v56 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
    v57 = v16;
    v52 = v15;
    sub_261B05020(0, &qword_280D21DD8, 0x277D85C78);
    v60 = v17;
    sub_261B01D28(&qword_27FEDB728, &qword_27FEDB720, &qword_261D09240, MEMORY[0x277CBCEB0]);
    sub_261BE0A24(&qword_27FEDC0C0, &qword_280D21DD8, 0x277D85C78, MEMORY[0x277D85228]);
    v28 = v62;
    sub_261CFF854();
    sub_261AE6A40(v6, &qword_27FEDC090, &qword_261D09210);

    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v20;
    v55 = v24;
    v54 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC0C8, &qword_261D09248);
    v30 = MEMORY[0x277CBCD60];
    sub_261B01D28(&qword_27FEDC0D0, &qword_27FEDC098, &qword_261D09218, MEMORY[0x277CBCD60]);
    v31 = v63;
    v32 = v65;
    sub_261CFF844();

    (*(v64 + 8))(v28, v32);
    v72 = 0;
    sub_261B01D28(&qword_27FEDC0D8, &qword_27FEDC0A0, &qword_261D09220, MEMORY[0x277CBCCC0]);
    v34 = v67;
    v33 = v68;
    sub_261CFF824();
    (*(v66 + 8))(v31, v33);
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261B01D28(&qword_27FEDC0E0, &qword_27FEDC0A8, &qword_261D09228, MEMORY[0x277CBCB78]);
    v36 = v52;
    v35 = v53;
    sub_261CFF814();
    (*(v69 + 8))(v34, v35);
    v37 = [objc_opt_self() mainRunLoop];
    v72 = v37;
    v38 = sub_261D00134();
    v39 = v70;
    (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
    sub_261B05020(0, &qword_27FEDC0E8, 0x277CBEB88);
    sub_261B01D28(&qword_27FEDC0F0, &qword_27FEDC0B0, &qword_261D09230, MEMORY[0x277CBCB10]);
    sub_261BE0A24(&qword_27FEDC0F8, &qword_27FEDC0E8, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v40 = v56;
    v41 = v58;
    sub_261CFF854();
    sub_261AE6A40(v39, &qword_27FEDC088, &qword_261D09208);

    (*(v59 + 8))(v36, v41);
    sub_261B01D28(&qword_27FEDC100, &qword_27FEDC0B8, &qword_261D09238, v30);
    v42 = v57;
    v43 = sub_261CFF804();

    (*(v60 + 8))(v40, v42);
  }

  else
  {
    if (qword_27FED9AB8 != -1)
    {
      swift_once();
    }

    v44 = sub_261CFF7A4();
    __swift_project_value_buffer(v44, qword_27FEDC018);
    v45 = v20;
    v46 = sub_261CFF784();
    v47 = sub_261CFFE64();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_261AE2000, v46, v47, "ReminderCreationUI: reminder does not have saveByCreationModuleDidFinish {objectID: %@}", v48, 0xCu);
      sub_261AE6A40(v49, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v49, -1, -1);
      MEMORY[0x26671D560](v48, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v43;
}

char *_s28ReminderEditingConfigurationVwCP(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v8;
    }

    else
    {
      v11 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
      v12 = sub_261CFD4E4();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v8;
      if (v14(&a2[v11], 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(&a1[v11], &a2[v11], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v13 + 16))(&a1[v11], &a2[v11], v12);
        (*(v13 + 56))(&a1[v11], 0, 1, v12);
      }
    }

    swift_storeEnumTagMultiPayload();
    v17 = a3[5];
    v18 = a3[6];
    v19 = *&a2[v17];
    *&a1[v17] = v19;
    a1[v18] = a2[v18];
    v20 = a3[7];
    v21 = a3[8];
    v23 = *&a2[v20];
    v22 = *&a2[v20 + 16];
    v24 = &a1[v20];
    *v24 = v23;
    *(v24 + 1) = v22;
    a1[v21] = a2[v21];
    v25 = a3[10];
    a1[a3[9]] = a2[a3[9]];
    a1[v25] = a2[v25];
    v26 = v19;
  }

  return a1;
}

void _s28ReminderEditingConfigurationVwxx(id *a1, uint64_t a2)
{
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v5 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v6 = sub_261CFD4E4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(a1 + v5, 1, v6))
    {
      (*(v7 + 8))(a1 + v5, v6);
    }
  }

  v8 = *(a1 + *(a2 + 20));
}

void **_s28ReminderEditingConfigurationVwcp(void **a1, void **a2, int *a3)
{
  type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    v8 = v7;
  }

  else
  {
    v9 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v10 = sub_261CFD4E4();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }
  }

  swift_storeEnumTagMultiPayload();
  v15 = a3[5];
  v16 = a3[6];
  v17 = *(a2 + v15);
  *(a1 + v15) = v17;
  *(a1 + v16) = *(a2 + v16);
  v18 = a3[7];
  v19 = a3[8];
  v21 = *(a2 + v18);
  v20 = *(a2 + v18 + 16);
  v22 = (a1 + v18);
  *v22 = v21;
  v22[1] = v20;
  *(a1 + v19) = *(a2 + v19);
  v23 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v23) = *(a2 + v23);
  v24 = v17;
  return a1;
}

void **_s28ReminderEditingConfigurationVwca(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v7;
    }

    else
    {
      v9 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
      v10 = sub_261CFD4E4();
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v7;
      if (v12(a2 + v9, 1, v10))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v11 + 16))(a1 + v9, a2 + v9, v10);
        (*(v11 + 56))(a1 + v9, 0, 1, v10);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  v15 = a3[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  *(a1 + v15) = v17;
  v18 = v17;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v19 = a3[7];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  *v20 = *v21;
  v20[1] = v21[1];
  v20[2] = v21[2];
  v20[3] = v21[3];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

void *_s28ReminderEditingConfigurationVwtk(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v8 = sub_261CFD4E4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v7, a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v11 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[7];
  v13 = a3[8];
  v14 = *(a2 + v12);
  v15 = *(a2 + v12 + 16);
  v16 = (a1 + v12);
  *v16 = v14;
  v16[1] = v15;
  *(a1 + v13) = *(a2 + v13);
  v17 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v17) = *(a2 + v17);
  return a1;
}

void *_s28ReminderEditingConfigurationVwta(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
      v8 = sub_261CFD4E4();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(a1 + v7, a2 + v7, *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 32))(a1 + v7, a2 + v7, v8);
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  v11 = a3[5];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v17) = *(a2 + v17);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_261BDFAE8(uint64_t a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *_s28ReminderEditingConfigurationV17ReminderSpecifierOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v7;
    }

    else
    {
      v10 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
      v11 = sub_261CFD4E4();
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);
      v14 = v7;
      if (v13(&a2[v10], 1, v11))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(&a1[v10], &a2[v10], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(&a1[v10], &a2[v10], v11);
        (*(v12 + 56))(&a1[v10], 0, 1, v11);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void _s28ReminderEditingConfigurationV17ReminderSpecifierOwxx(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    v4 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v5 = sub_261CFD4E4();
    v7 = *(v5 - 8);
    if (!(*(v7 + 48))(a1 + v4, 1, v5))
    {
      v6 = *(v7 + 8);

      v6(a1 + v4, v5);
    }
  }
}

void **_s28ReminderEditingConfigurationV17ReminderSpecifierOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *a2;
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v9 = sub_261CFD4E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v6;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v8, a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(a1 + v8, a2 + v8, v9);
      (*(v10 + 56))(a1 + v8, 0, 1, v9);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **_s28ReminderEditingConfigurationV17ReminderSpecifierOwca(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *a2;
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      v7 = v6;
    }

    else
    {
      v8 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
      v9 = sub_261CFD4E4();
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v6;
      if (v11(a2 + v8, 1, v9))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
        memcpy(a1 + v8, a2 + v8, *(*(v13 - 8) + 64));
      }

      else
      {
        (*(v10 + 16))(a1 + v8, a2 + v8, v9);
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *_s28ReminderEditingConfigurationV17ReminderSpecifierOwtk(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v9 = sub_261CFD4E4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2 + v8, 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(a1 + v8, a2 + v8, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(a1 + v8, a2 + v8, v9);
      (*(v10 + 56))(a1 + v8, 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *_s28ReminderEditingConfigurationV17ReminderSpecifierOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_261BDCB40(a1, type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
    v9 = sub_261CFD4E4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_261BE0448(uint64_t a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t _s21ReminderEditingModuleVwxx(id *a1)
{

  return swift_unknownObjectRelease();
}