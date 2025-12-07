uint64_t sub_222C7F8DC(uint64_t a1)
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

uint64_t sub_222C7F968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_222C7FB44(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_222C7FE18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22 = a2;
  v5 = a1[2];
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = &v21 - v12;
  v14 = a1[5];
  v15 = a1[3];
  v16 = swift_getAssociatedTypeWitness();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v21 - v18;
  (*(v14 + 24))(v15, v14, v17);
  (*(v6 + 16))(v8, v3, v5);
  sub_222C9487C();
  return sub_222C8000C(v19, v13, v5, v15, v10, v14, v22);
}

uint64_t sub_222C8000C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v9 = type metadata accessor for AsyncStreamProcessingSequence.AsyncIterator(0, v16);
  v10 = v9[14];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_222C9427C();
  *(a7 + v10) = sub_222C9425C();
  *(a7 + v9[15]) = 0;
  v11 = swift_checkMetadataState();
  (*(*(v11 - 8) + 32))(a7, a1, v11);
  v12 = v9[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a7 + v12, a2, AssociatedTypeWitness);
}

uint64_t sub_222C801A4(uint64_t a1, void *a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = swift_getAssociatedTypeWitness();
  v3[8] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[9] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v3[10] = v6;
  v3[11] = *(v6 + 64);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = a2[4];
  v3[15] = a2[2];
  v7 = swift_getAssociatedTypeWitness();
  v3[16] = v7;
  v8 = sub_222C94B5C();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C803DC, 0, 0);
}

uint64_t sub_222C803DC(uint64_t a1)
{
  *(v1 + 176) = *(*(v1 + 48) + *(*(v1 + 40) + 56));
  if ((sub_222C9424C() & 1) == 0)
  {
    sub_222C9421C();
    goto LABEL_5;
  }

  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  v4 = *(*(v1 + 40) + 60);
  *(v1 + 240) = v4;
  if (*(v3 + v4))
  {
    (*(v2 + 56))(*(v1 + 32), 1, 1, *(v1 + 72));
LABEL_5:

    v5 = *(v1 + 8);

    return v5();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  *(v1 + 184) = v9;
  *v9 = v1;
  v9[1] = sub_222C805A4;
  v10 = *(v1 + 152);

  return MEMORY[0x282200308](v10, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222C805A4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_222C810D8;
  }

  else
  {
    v2 = sub_222C806B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222C806B8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 240);
    v18 = *(v0 + 64);
    v5 = *(v0 + 48);
    (*(*(v0 + 144) + 8))(v1, *(v0 + 136));
    *(v5 + v4) = 1;
    v6 = *(v18 + 32);
    v7 = swift_checkMetadataState();
    v16 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = sub_222C80D98;
    v9 = *(v0 + 64);

    return v16(v7, v9);
  }

  else
  {
    v19 = *(v0 + 64);
    (*(v2 + 32))(*(v0 + 168), v1, v3);
    v11 = *(v19 + 24);
    v12 = swift_checkMetadataState();
    v17 = (v11 + *v11);
    v13 = swift_task_alloc();
    *(v0 + 200) = v13;
    *v13 = v0;
    v13[1] = sub_222C80974;
    v14 = *(v0 + 168);
    v15 = *(v0 + 64);

    return v17(v14, v12, v15);
  }
}

uint64_t sub_222C80974(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_222C81164;
  }

  else
  {
    v4 = sub_222C80A88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222C80A88()
{
  if (sub_222C947BC())
  {
    v1 = 0;
    do
    {
      v2 = sub_222C9479C();
      sub_222C9474C();
      if (v2)
      {
        (*(*(v0 + 80) + 16))(*(v0 + 104), *(v0 + 208) + ((*(*(v0 + 80) + 80) + 32) & ~*(*(v0 + 80) + 80)) + *(*(v0 + 80) + 72) * v1, *(v0 + 72));
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *(v0 + 88);
        v8 = sub_222C94D7C();
        if (v7 != 8)
        {
          __break(1u);
          return MEMORY[0x282200308](v8, v9, v10);
        }

        v11 = *(v0 + 104);
        v12 = *(v0 + 72);
        v13 = *(v0 + 80);
        *(v0 + 24) = v8;
        (*(v13 + 16))(v11, v0 + 24, v12);
        swift_unknownObjectRelease();
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v4 = *(v0 + 104);
      v5 = *(v0 + 72);
      v6 = *(v0 + 80);
      sub_222C9422C();
      (*(v6 + 8))(v4, v5);
      ++v1;
    }

    while (v3 != sub_222C947BC());
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 160);
  v16 = *(v0 + 128);

  (*(v15 + 8))(v14, v16);
  if ((sub_222C9424C() & 1) == 0)
  {
    sub_222C9421C();
    goto LABEL_15;
  }

  v17 = *(v0 + 48);
  v18 = *(*(v0 + 40) + 60);
  *(v0 + 240) = v18;
  if (*(v17 + v18))
  {
    (*(*(v0 + 80) + 56))(*(v0 + 32), 1, 1, *(v0 + 72));
LABEL_15:

    v19 = *(v0 + 8);

    return v19();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_222C805A4;
  v8 = *(v0 + 152);
  v9 = AssociatedTypeWitness;
  v10 = AssociatedConformanceWitness;

  return MEMORY[0x282200308](v8, v9, v10);
}

uint64_t sub_222C80D98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_222C80F00, 0, 0);
  }
}

uint64_t sub_222C80F00()
{
  if (sub_222C947BC())
  {
    v1 = 0;
    do
    {
      v2 = sub_222C9479C();
      sub_222C9474C();
      if (v2)
      {
        (*(v0[10] + 16))(v0[12], v0[29] + ((*(v0[10] + 80) + 32) & ~*(v0[10] + 80)) + *(v0[10] + 72) * v1, v0[9]);
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = v0[11];
        result = sub_222C94D7C();
        if (v7 != 8)
        {
          __break(1u);
          return result;
        }

        v9 = v0[12];
        v10 = v0[9];
        v11 = v0[10];
        v0[2] = result;
        (*(v11 + 16))(v9, v0 + 2, v10);
        swift_unknownObjectRelease();
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v4 = v0[12];
      v5 = v0[9];
      v6 = v0[10];
      sub_222C9422C();
      (*(v6 + 8))(v4, v5);
      ++v1;
    }

    while (v3 != sub_222C947BC());
  }

  sub_222C9421C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_222C810D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C81164()
{
  (*(v0[20] + 8))(v0[21], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_222C81208(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return sub_222C801A4(a1, a2);
}

uint64_t sub_222C812CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_222C7FE18(a1, a2);
  v4 = *(*(a1 - 1) + 8);

  return v4(v2, a1);
}

uint64_t sub_222C8132C()
{
  v0 = sub_222BAFDE0(&unk_283607C58);
  result = sub_222BB6FDC(&unk_283607C78);
  qword_27D027CB8 = v0;
  return result;
}

uint64_t PhoneCallContactPartialRepetitionDefinition.__allocating_init()()
{
  v0 = swift_allocObject();
  PhoneCallContactPartialRepetitionDefinition.init()();
  return v0;
}

uint64_t PhoneCallContactPartialRepetitionDefinition.init()()
{
  v1 = v0;
  type metadata accessor for PhoneCallContactPartialRepetitionDefinition();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CC0, &unk_222CA6E10);
  v2 = sub_222C944EC();
  MEMORY[0x223DC9330](v2);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  type metadata accessor for EntityPromptClassifier();
  v4 = swift_allocObject();
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD0, &unk_222C9BC70);
  *(v3 + 64) = &off_28360D250;
  *(v3 + 32) = v4;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_222C814CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025FD8, &qword_222CA5EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  if (qword_27D0247A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D027CB8;
  v2 = type metadata accessor for ContactEntityUtteranceComparator();
  v3 = swift_allocObject();
  *(v3 + 32) = v1;
  *(v3 + 16) = 0x3FE6666666666666;
  *(v3 + 24) = 0;
  *(v0 + 56) = v2;
  *(v0 + 64) = &protocol witness table for ContactEntityUtteranceComparator;
  *(v0 + 32) = v3;

  return v0;
}

uint64_t sub_222C815A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  type metadata accessor for SuccessfulPhoneCallClassifier();
  v1 = swift_allocObject();
  *(v1 + 16) = 0x4014000000000000;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CC8, &qword_222CA6E20);
  *(v0 + 64) = &off_28360D250;
  *(v0 + 32) = v1;
  return v0;
}

double sub_222C81648@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth(0);
  *(a5 + v16[5]) = 2;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9, v10, v11);

  return result;
}

void sub_222C81798(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v35 = a3;
  v41 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - v10;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v34 = v5;
  v37 = (v5 + 48);
  v38 = (v5 + 56);
  v43 = *a1;

  v42 = 0;
  while (1)
  {
    v22 = v42;
    v23 = *(v43 + 16);
    if (v42 == v23)
    {
      v24 = 1;
      v26 = v40;
      v25 = v41;
      v27 = v39;
      goto LABEL_15;
    }

    v26 = v40;
    v25 = v41;
    v27 = v39;
    if (v42 >= v23)
    {
      break;
    }

    sub_222C81E98(v43 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v42, v39, type metadata accessor for FeaturisedTurn);
    v24 = 0;
    ++v22;
LABEL_15:
    (*v38)(v27, v24, 1, v25);
    sub_222B5EC84(v27, v26);
    if ((*v37)(v26, 1, v25) == 1)
    {

      v32 = v35;
      *v35 = 0u;
      v32[1] = 0u;
      return;
    }

    v42 = v22;
    v28 = v26;
    v29 = v36;
    sub_222B7E350(v28, v36);
    v30 = *(v29 + *(v25 + 28));

    sub_222B73DD0(v29);

    v31 = v30;
    if (v30)
    {
      v13 = (v30 + 64);
      v14 = -1;
      while (1)
      {
        ++v14;
        v15 = *(v31 + 16);
        if (v14 == v15)
        {
          break;
        }

        if (v14 >= v15)
        {
          __break(1u);
          goto LABEL_22;
        }

        v17 = *(v13 - 4);
        v16 = *(v13 - 3);
        v18 = *(v13 - 2);
        v19 = *(v13 - 1);
        v20 = *v13;
        if (v17 == v11 && v16 == v12)
        {
          v17 = v11;
LABEL_19:

          v44[0] = v17;
          v44[1] = v16;
          v44[2] = v18;
          v44[3] = v19;
          v44[4] = v20;
          extractContactReference(event:)(v44, v35);

          return;
        }

        v13 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
}

uint64_t PhoneCallContactPartialRepetitionDefinition.deinit()
{

  return v0;
}

uint64_t PhoneCallContactPartialRepetitionDefinition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_222C81B88@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth(0);
  *(a5 + v16[5]) = 2;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9, v10, v11);

  return result;
}

void sub_222C81CF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = type metadata accessor for FeaturisedTurn(0);
    v5 = *(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * v3 + *(v4 + 24));
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      while (v7 < *(v5 + 16))
      {
        sub_222B43E3C(v8, v10);
        sub_222B43E3C(v10, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        type metadata accessor for USOTaskSummaryFeature(0);
        if (swift_dynamicCast())
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          return;
        }

        sub_222B405A0(v10, v9);
        sub_222C9404C();
        if (swift_dynamicCast())
        {

          return;
        }

        ++v7;
        v8 += 40;
        if (v6 == v7)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      sub_222C53118(1, v1);
    }
  }
}

uint64_t sub_222C81E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C81F00(uint64_t a1, uint64_t a2)
{
  result = sub_222C81FF0(&qword_27D027CD0, a2, type metadata accessor for PhoneCallContactPartialRepetitionDefinition, &protocol conformance descriptor for PhoneCallContactPartialRepetitionDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222C81FF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *ReformulationSpecializationClassifier.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = &unk_283607EF0;
  v1 = sub_222BAFDE0(&unk_283607F50);
  swift_arrayDestroy();
  v0[4] = v1;
  return v0;
}

uint64_t SlotBasedTurnComparison.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SlotBasedTurnComparison.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C823D8(uint64_t a1)
{
  type metadata accessor for ReformulationSpecializationClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B78, &qword_222C9A4E8);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027CD8 = 91;
  unk_27D027CE0 = 0xE100000000000000;
  return result;
}

void *ReformulationSpecializationClassifier.init()()
{
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = &unk_283607EF0;
  v1 = sub_222BAFDE0(&unk_283607F50);
  swift_arrayDestroy();
  v0[4] = v1;
  return v0;
}

uint64_t sub_222C824CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = *(a1 + 8);
  v5 = a1[3];
  v47 = a1[2];
  v48 = v5;
  v6 = a1[1];
  v45 = *a1;
  v46 = v6;
  if (!*(v48 + 16))
  {
    v13 = sub_222C84B94;
    v39 = sub_222C84B94;
    v40 = v2;
    v41 = sub_222C84B98;
    v42 = v2;
    v43 = sub_222C84B9C;
    v44 = v2;
    swift_retain_n();
    sub_222C84BA0(&v45, &v50);

    *v52 = v47;
    *&v52[16] = v48;
    v53 = v49;
    v50 = v45;
    v51 = v46;
    sub_222C835AC(&v50, &v33);

    v14 = v35[24];
    v36 = v33;
    v37 = v34;
    v38[0] = *v35;
    *(v38 + 9) = *&v35[9];
    sub_222B4FCD4(&v36, &qword_27D027090, &qword_222CA1FF0);
    if (v14 == 255)
    {

      *v52 = v47;
      *&v52[16] = v48;
      v53 = v49;
      v50 = v45;
      v51 = v46;
      sub_222C83050(&v50, &v33);

      v15 = v35[24];
      v36 = v33;
      v37 = v34;
      v38[0] = *v35;
      *(v38 + 9) = *&v35[9];
      sub_222B4FCD4(&v36, &qword_27D027090, &qword_222CA1FF0);
      if (v15 == 255)
      {
        v13 = v43;
        *v31 = v47;
        *&v31[16] = v48;
        v32 = v49;
        v29 = v45;
        v30 = v46;

        v13(&v33, &v29);

        v16 = v35[24];
        v36 = v33;
        v37 = v34;
        v38[0] = *v35;
        *(v38 + 9) = *&v35[9];
        sub_222B4FCD4(&v36, &qword_27D027090, &qword_222CA1FF0);
        if (v16 == 255)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CE8, &qword_222CA6EE8);
          swift_arrayDestroy();
          sub_222C2C6E0(&v45);
          swift_beginAccess();
          result = *(v3 + 16);
          v22 = *(result + 16);
          v18 = 0uLL;
          if (v22)
          {
            v23 = ( + 48);
            do
            {
              v24 = *(v23 - 2);
              v25 = *(v23 - 1);
              v26 = *v23;
              v27 = qword_280FDF1F0;

              if (v27 != -1)
              {
                swift_once();
              }

              v23 += 24;
              *(&v51 + 1) = &type metadata for PIMSConstraintMismatch;
              *v52 = sub_222B77B4C();
              *&v50 = v24;
              *(&v50 + 1) = v25;
              LOBYTE(v51) = v26;
              sub_222C93B5C();
              __swift_destroy_boxed_opaque_existential_0Tm(&v50);
              --v22;
            }

            while (v22);

            v20 = 0;
            v21 = -1;
            v17 = 0uLL;
            v19 = 0uLL;
            v18 = 0uLL;
          }

          else
          {
            v20 = 0;
            v21 = -1;
            v17 = 0uLL;
            v19 = 0uLL;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v13 = sub_222C84B98;
      }
    }

    *v52 = v47;
    *&v52[16] = v48;
    v53 = v49;
    v50 = v45;
    v51 = v46;

    v13(&v33, &v50);

    v29 = v33;
    v30 = v34;
    *v31 = *v35;
    *&v31[9] = *&v35[9];
    v50 = v33;
    v51 = v34;
    *v52 = *v35;
    *&v52[9] = *&v35[9];
    sub_222C84BFC(&v29, v28);
    sub_222B4FCD4(&v50, &qword_27D027090, &qword_222CA1FF0);
    if (v31[24] == 255)
    {
      result = sub_222C2C6E0(&v45);
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027CE8, &qword_222CA6EE8);
    swift_arrayDestroy();
    result = sub_222C2C6E0(&v45);
    v18 = v29;
    v17 = v30;
    v19 = *v31;
    v20 = *&v31[16];
    v21 = v31[24];
LABEL_13:
    *a2 = v18;
    *(a2 + 16) = v17;
    *(a2 + 32) = v19;
    *(a2 + 48) = v20;
    *(a2 + 56) = v21;
    return result;
  }

  swift_beginAccess();
  v7 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_222B4B9DC(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_222B4B9DC((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = 0xD000000000000016;
  *(v11 + 5) = 0x8000000222CA9C80;
  v11[48] = 27;
  *(v3 + 16) = v7;
  result = swift_endAccess();
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = -1;
  return result;
}

void sub_222C829E8(__int128 *a1@<X0>, int64_t a2@<X8>)
{
  v3 = a2;
  v68 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v66 = a1[2];
  v67 = *(a1 + 6);
  if (*(v5 + 16))
  {
    v6 = 0x8000000222CA9C80;
    swift_beginAccess();
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_54:
      v7 = sub_222B4B9DC(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_222B4B9DC((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[24 * v10];
    *(v11 + 4) = 0xD000000000000016;
    *(v11 + 5) = v6;
    v12 = 23;
  }

  else
  {
    v54 = v5;
    v55 = v4;
    v57 = v2;
    v13 = *(a1 + 56);
    v53 = v13;
    v14 = *(a1 + 7);
    v15 = v13 + 64;
    v7 = *(v2 + 32);
    v16 = 1 << *(v13 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v6 = v17 & *(v13 + 64);
    v3 = (v16 + 63) >> 6;
    v18 = v7 + 56;
    swift_bridgeObjectRetain_n();

    v19 = 0;
    for (i = v14; ; v14 = i)
    {
      do
      {
        if (!v6)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v3)
            {
              goto LABEL_39;
            }

            v20 = *(v15 + 8 * v21);
            ++v19;
            if (v20)
            {
              v19 = v21;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_54;
        }

        v20 = v6;
LABEL_17:
        v6 = (v20 - 1) & v20;
      }

      while (!*(v7 + 2));
      v22 = (*(v14 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v20)))));
      v24 = *v22;
      v23 = v22[1];
      sub_222C952FC();

      sub_222C9452C();
      v25 = sub_222C9534C();
      v26 = -1 << v7[32];
      v2 = v25 & ~v26;
      if ((*&v18[(v2 >> 3) & 0xFFFFFFFFFFFFFF8] >> v2))
      {
        break;
      }

LABEL_26:
    }

    v27 = ~v26;
    while (1)
    {
      v28 = (*(v7 + 6) + 16 * v2);
      v29 = *v28 == v24 && v28[1] == v23;
      if (v29 || (sub_222C951FC() & 1) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & v27;
      if (((*&v18[(v2 >> 3) & 0xFFFFFFFFFFFFFF8] >> v2) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v30 = *(v55 + 16);
    v2 = v57;
    if (v30 >= 2)
    {
      swift_beginAccess();
      v31 = *(v57 + 16);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + 16) = v31;
      if ((v32 & 1) == 0)
      {
        v31 = sub_222B4B9DC(0, *(v31 + 2) + 1, 1, v31);
        *(v57 + 16) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_222B4B9DC((v33 > 1), v34 + 1, 1, v31);
      }

      *(v31 + 2) = v34 + 1;
      v35 = &v31[24 * v34];
      *(v35 + 4) = 0xD000000000000016;
      *(v35 + 5) = 0x8000000222CA9C80;
      v35[48] = 25;
      *(v57 + 16) = v31;
      swift_endAccess();
      v30 = *(v55 + 16);
    }

    if (v30 != 1 || (sub_222BB78A0(v55, &v60), (v36 = *(&v60 + 1)) == 0))
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 56) = -1;
      return;
    }

    v37 = v60;
    v39 = v61;
    v38 = v62;
    v60 = v68;
    v61 = v55;
    v62 = v54;
    v63 = v66;
    v64 = v67;
    v65 = v53;
    v59[0] = v39;
    v59[1] = v38;

    v40 = sub_222C842E0(&v60, v37, v36, v59);

    if (v40)
    {

      v41 = *(i + 16);
      if (v41)
      {
        v42 = sub_222B8C8D4(*(i + 16), 0);
        v43 = sub_222B95AD8();
        v44 = v60;

        sub_222B504E8(v44);
        if (v43 != v41)
        {
          __break(1u);
LABEL_39:

          swift_bridgeObjectRelease_n();
          swift_beginAccess();
          v45 = *(v57 + 16);
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(v57 + 16) = v45;
          if ((v46 & 1) == 0)
          {
            v45 = sub_222B4B9DC(0, *(v45 + 2) + 1, 1, v45);
            *(v57 + 16) = v45;
          }

          v3 = a2;
          v48 = *(v45 + 2);
          v47 = *(v45 + 3);
          if (v48 >= v47 >> 1)
          {
            v45 = sub_222B4B9DC((v47 > 1), v48 + 1, 1, v45);
          }

          *(v45 + 2) = v48 + 1;
          v49 = &v45[24 * v48];
          *(v49 + 4) = 0xD000000000000016;
          *(v49 + 5) = 0x8000000222CA9C80;
          v49[48] = 24;
          *(v57 + 16) = v45;
          goto LABEL_44;
        }
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      *a2 = v37;
      *(a2 + 8) = v36;
      *(a2 + 16) = v42;
      *(a2 + 56) = 0;
      return;
    }

    sub_222B450E8(v37, v36, v39, v38);
    swift_beginAccess();
    v7 = *(v57 + 16);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 16) = v7;
    if ((v50 & 1) == 0)
    {
      v7 = sub_222B4B9DC(0, *(v7 + 2) + 1, 1, v7);
      *(v57 + 16) = v7;
    }

    v3 = a2;
    v52 = *(v7 + 2);
    v51 = *(v7 + 3);
    if (v52 >= v51 >> 1)
    {
      v7 = sub_222B4B9DC((v51 > 1), v52 + 1, 1, v7);
    }

    *(v7 + 2) = v52 + 1;
    v11 = &v7[24 * v52];
    *(v11 + 4) = 0xD000000000000016;
    *(v11 + 5) = 0x8000000222CA9C80;
    v12 = 26;
  }

  v11[48] = v12;
  *(v2 + 16) = v7;
LABEL_44:
  swift_endAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 56) = -1;
}

void sub_222C83050(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  if (*(v5 + 16) != 1)
  {
    goto LABEL_24;
  }

  v6 = a1[2];
  v7 = a1[7];
  sub_222BB78A0(v5, &v41);
  v8 = v42;
  if (!v42)
  {
    goto LABEL_24;
  }

  v9 = v41;
  v11 = v43;
  v10 = v44;
  if (*(v6 + 16) == 1)
  {
    sub_222BB78A0(v6, &v41);
    v12 = v42;
    if (v42)
    {
      v13 = v41;
      v14 = v43;
      v15 = v44;
      v16 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v16 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_222B450E8(v41, v42, v43, v44);
        swift_beginAccess();
        v17 = *(v2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_222B4B9DC(0, *(v17 + 2) + 1, 1, v17);
          *(v2 + 16) = v17;
        }

        v20 = *(v17 + 2);
        v19 = *(v17 + 3);
        if (v20 >= v19 >> 1)
        {
          v17 = sub_222B4B9DC((v19 > 1), v20 + 1, 1, v17);
        }

        *(v17 + 2) = v20 + 1;
        v21 = &v17[24 * v20];
        *(v21 + 4) = 0xD000000000000016;
        *(v21 + 5) = 0x8000000222CA9C80;
        v21[48] = 28;
        *(v2 + 16) = v17;
        swift_endAccess();
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v22 = sub_222C9431C();
        __swift_project_value_buffer(v22, qword_280FE2340);

        v23 = sub_222C942FC();
        v24 = sub_222C94A3C();
        sub_222B450E8(v9, v8, v11, v10);
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v41 = v26;
          *v25 = 136315394;
          if (qword_27D0247A8 != -1)
          {
            swift_once();
          }

          *(v25 + 4) = sub_222B437C0(qword_27D027CD8, unk_27D027CE0, &v41);
          *(v25 + 12) = 2080;

          sub_222B450E8(v9, v8, v11, v10);
          v27 = sub_222B437C0(v9, v8, &v41);

          *(v25 + 14) = v27;
          _os_log_impl(&dword_222B39000, v23, v24, "%s REJECT - Moved slot wasn't from unqualified slot (from: %s)", v25, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v26, -1, -1);
          MEMORY[0x223DCA8C0](v25, -1, -1);

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v41 = v11;
      v42 = v10;
      v45[0] = v43;
      v45[1] = v44;
      v28 = v11;
      v29 = v13;
      v38 = v28;
      sub_222B98D00(v9, v8, v28, v10);
      sub_222B98D00(v29, v12, v14, v15);
      v40 = v29;
      LOBYTE(v29) = sub_222C87098(v9, v8, &v41, v29, v12, v45);

      if ((v29 & 1) == 0)
      {
        sub_222B450E8(v9, v8, v38, v10);
        sub_222B450E8(v40, v12, v14, v15);
        swift_beginAccess();
        v33 = *(v2 + 16);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v33;
        if ((v34 & 1) == 0)
        {
          v33 = sub_222B4B9DC(0, *(v33 + 2) + 1, 1, v33);
          *(v2 + 16) = v33;
        }

        v36 = *(v33 + 2);
        v35 = *(v33 + 3);
        if (v36 >= v35 >> 1)
        {
          v33 = sub_222B4B9DC((v35 > 1), v36 + 1, 1, v33);
        }

        *(v33 + 2) = v36 + 1;
        v37 = &v33[24 * v36];
        *(v37 + 4) = 0xD000000000000016;
        *(v37 + 5) = 0x8000000222CA9C80;
        v37[48] = 29;
        *(v2 + 16) = v33;
        swift_endAccess();
        goto LABEL_24;
      }

      v10 = *(v7 + 16);
      if (v10)
      {
        v23 = sub_222B8C8D4(*(v7 + 16), 0);
        v30 = sub_222B95AD8();
        v31 = v41;
        v11 = v43;
        v39 = v30;

        sub_222B504E8(v31);
        if (v39 != v10)
        {
          __break(1u);
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = v40;
      *(a2 + 24) = v12;
      *(a2 + 32) = v23;
      v32 = 1;
      goto LABEL_25;
    }
  }

LABEL_23:
  sub_222B450E8(v9, v8, v11, v10);
LABEL_24:
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v32 = -1;
LABEL_25:
  *(a2 + 56) = v32;
}

void sub_222C835AC(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 3);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 2);
  v81 = *(a1 + 56);
  sub_222BB78A0(v4, &v82);
  v7 = *(&v82 + 1);
  if (!*(&v82 + 1))
  {
    goto LABEL_23;
  }

  v8 = v82;
  v9 = v83;
  v10 = v84;
  if (*(v6 + 16) != 2)
  {
    sub_222B450E8(v82, *(&v82 + 1), v83, v84);
LABEL_23:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = -1;
    return;
  }

  v74 = a2;
  v75 = v2;
  v76 = sub_222B8C958(2, 0);
  v11 = sub_222B94EB0(&v82, (v76 + 4), 2, v6);
  v12 = v8;
  v13 = v82;
  v14 = v9;
  v80 = v11;
  v15 = v84;
  v16 = v85;
  sub_222B98D00(v12, v7, v14, v10);
  v70 = v6;

  sub_222B504E8(v13);
  if (v80 != 2)
  {
    __break(1u);
    goto LABEL_55;
  }

  *&v82 = v76;
  sub_222C86FA4(&v82, v12, v7, v14, v10);
  sub_222B450E8(v12, v7, v14, v10);
  v78 = v10;
  v15 = v82;
  v17 = *(v82 + 16);
  if (!v17)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v17 == 1)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v18 = v7;
  v19 = v14;
  v20 = v12;
  v21 = *(v82 + 32);
  v13 = *(v82 + 40);
  v22 = *(v82 + 56);
  v23 = *(v82 + 72);
  v72 = *(v82 + 64);
  v73 = *(v82 + 48);
  v69 = *(v82 + 80);
  v77 = *(v82 + 88);

  v79 = v23;

  v24 = HIBYTE(v18) & 0xF;
  v12 = v20;
  v7 = v18;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v24 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v71 = v21;
  if (v24)
  {
    v25 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      *&v81 = v19;

      v6 = 0x8000000222CA9C80;
      v16 = v75;
      swift_beginAccess();
      v15 = *(v75 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v75 + 16) = v15;
      v4 = v78;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_14:
        v28 = *(v15 + 2);
        v27 = *(v15 + 3);
        if (v28 >= v27 >> 1)
        {
          v15 = sub_222B4B9DC((v27 > 1), v28 + 1, 1, v15);
        }

        *(v15 + 2) = v28 + 1;
        v29 = &v15[24 * v28];
        *(v29 + 4) = 0xD000000000000016;
        *(v29 + 5) = v6;
        v29[48] = 28;
        *(v16 + 16) = v15;
        swift_endAccess();
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v30 = sub_222C9431C();
        __swift_project_value_buffer(v30, qword_280FE2340);
        sub_222B98D00(v12, v7, v81, v4);

        v31 = sub_222C942FC();
        v32 = sub_222C94A3C();
        sub_222B450E8(v12, v7, v81, v4);

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v82 = v34;
          *v33 = 136315650;
          if (qword_27D0247A8 != -1)
          {
            swift_once();
          }

          *(v33 + 4) = sub_222B437C0(qword_27D027CD8, unk_27D027CE0, &v82);
          *(v33 + 12) = 2080;

          sub_222B450E8(v12, v7, v81, v4);
          v35 = sub_222B437C0(v12, v7, &v82);

          *(v33 + 14) = v35;
          *(v33 + 22) = 2080;

          v36 = sub_222B437C0(v71, v13, &v82);

          *(v33 + 24) = v36;
          _os_log_impl(&dword_222B39000, v31, v32, "%s REJECT - Moved slot wasn't to/from unqualified slot (from: %s, to: %s)", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v34, -1, -1);
          MEMORY[0x223DCA8C0](v33, -1, -1);
        }

        else
        {

          sub_222B450E8(v12, v7, v81, v4);
        }

        goto LABEL_43;
      }

LABEL_57:
      v15 = sub_222B4B9DC(0, *(v15 + 2) + 1, 1, v15);
      *(v16 + 16) = v15;
      goto LABEL_14;
    }
  }

  *&v82 = v19;
  *(&v82 + 1) = v78;
  v88 = v73;
  v89 = v22;
  sub_222B98D00(v12, v18, v19, v78);

  v37 = sub_222C87098(v12, v18, &v82, v21, v13, &v88);

  if ((v37 & 1) == 0)
  {
    sub_222B450E8(v12, v18, v19, v78);

    v44 = v75;
    swift_beginAccess();
    v45 = *(v75 + 16);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *(v75 + 16) = v45;
    if ((v46 & 1) == 0)
    {
      v45 = sub_222B4B9DC(0, *(v45 + 2) + 1, 1, v45);
      *(v75 + 16) = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = sub_222B4B9DC((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    v49 = &v45[24 * v48];
    *(v49 + 4) = 0xD000000000000016;
    *(v49 + 5) = 0x8000000222CA9C80;
    v50 = 29;
    goto LABEL_35;
  }

  v82 = *a1;
  v83 = v70;
  v84 = v4;
  v85 = a1[2];
  v86 = *(a1 + 6);
  v87 = v81;
  v88 = v69;
  v89 = v77;
  v38 = v79;

  v39 = sub_222C842E0(&v82, v72, v79, &v88);

  if ((v39 & 1) == 0)
  {
    sub_222B450E8(v12, v18, v19, v78);

    swift_beginAccess();
    v51 = *(v75 + 16);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v75 + 16) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_222B4B9DC(0, *(v51 + 2) + 1, 1, v51);
      *(v75 + 16) = v51;
    }

    v54 = *(v51 + 2);
    v53 = *(v51 + 3);
    if (v54 >= v53 >> 1)
    {
      v51 = sub_222B4B9DC((v53 > 1), v54 + 1, 1, v51);
    }

    *(v51 + 2) = v54 + 1;
    v55 = &v51[24 * v54];
    *(v55 + 4) = 0xD000000000000016;
    *(v55 + 5) = 0x8000000222CA9C80;
    v55[48] = 26;
    *(v75 + 16) = v51;
    goto LABEL_42;
  }

  v67 = v13;
  v68 = v12;
  if (v22)
  {
    if (v77)
    {
      sub_222C944FC();
      v40._countAndFlagsBits = sub_222C944FC();
      v90 = String.scoreRatcliffObershelp(between:)(v40);
      v41 = *&v90.is_nil;
      v43 = v42;

      if ((v43 & 1) == 0 && v41 >= 0.9)
      {
        sub_222B450E8(v12, v18, v19, v78);

        v56 = 0x8000000222CA9C80;
        v44 = v75;
        swift_beginAccess();
        v45 = *(v75 + 16);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + 16) = v45;
        if (v64)
        {
LABEL_51:
          v66 = *(v45 + 2);
          v65 = *(v45 + 3);
          if (v66 >= v65 >> 1)
          {
            v45 = sub_222B4B9DC((v65 > 1), v66 + 1, 1, v45);
          }

          *(v45 + 2) = v66 + 1;
          v49 = &v45[24 * v66];
          *(v49 + 4) = 0xD000000000000016;
          *(v49 + 5) = v56;
          v50 = 30;
LABEL_35:
          v49[48] = v50;
          *(v44 + 16) = v45;
LABEL_42:
          swift_endAccess();
LABEL_43:
          *(v74 + 48) = 0;
          *(v74 + 16) = 0u;
          *(v74 + 32) = 0u;
          *v74 = 0u;
          *(v74 + 56) = -1;
          return;
        }

LABEL_59:
        v45 = sub_222B4B9DC(0, *(v45 + 2) + 1, 1, v45);
        *(v44 + 16) = v45;
        goto LABEL_51;
      }
    }
  }

  v56 = v81;
  v45 = *(v81 + 16);
  if (v45)
  {
    v44 = v18;
    v57 = sub_222B8C8D4(*(v81 + 16), 0);
    v58 = sub_222B95AD8();
    v59 = v82;

    sub_222B504E8(v59);
    if (v58 != v45)
    {
      __break(1u);
      goto LABEL_59;
    }

    v60 = v74;
    v62 = v67;
    v61 = v68;
    v63 = v71;
    v38 = v79;
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
    v60 = v74;
    v62 = v67;
    v61 = v12;
    v63 = v21;
  }

  *v60 = v61;
  *(v60 + 8) = v7;
  *(v60 + 16) = v63;
  *(v60 + 24) = v62;
  *(v60 + 32) = v72;
  *(v60 + 40) = v38;
  *(v60 + 48) = v57;
  *(v60 + 56) = 2;
}

uint64_t sub_222C84040(uint64_t result, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < v4)
    {
      v8 = v5;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_38;
      }

      v10 = *(v3 + 24);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = (v6 + 16 * v8);
        v14 = *v13;
        v15 = v13[1];
        v16 = (v10 + 40);
        while (*(v16 - 1) != v14 || *v16 != v15)
        {
          result = sub_222C951FC();
          if (result)
          {
            break;
          }

          ++v12;
          v16 += 2;
          if (v11 == v12)
          {
            goto LABEL_4;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_222B4AB44(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v19 = *(v7 + 16);
        v18 = *(v7 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_222B4AB44((v18 > 1), v19 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v19 + 1;
        *(v7 + 8 * v19 + 32) = v12;
      }

LABEL_4:
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:
  v20 = *(v7 + 16);
  if (!v20)
  {

    v24 = 0;
    return v24 & 1;
  }

  v21 = *(v7 + 32);
  v22 = v20 - 1;
  if (v20 != 1)
  {
    if (v20 >= 5)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v25 = vdupq_n_s64(v21);
      v26 = (v7 + 56);
      v27 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = v25;
      do
      {
        v25 = vbslq_s8(vcgtq_s64(v25, v26[-1]), v25, v26[-1]);
        v28 = vbslq_s8(vcgtq_s64(v28, *v26), v28, *v26);
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      v29 = vbslq_s8(vcgtq_s64(v25, v28), v25, v28);
      v30 = vextq_s8(v29, v29, 8uLL).u64[0];
      v21 = vbsl_s8(vcgtd_s64(v29.i64[0], v30), *v29.i8, v30);
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v23 = 1;
    }

    v31 = v20 - v23;
    v32 = (v7 + 8 * v23 + 32);
    do
    {
      v34 = *v32++;
      v33 = v34;
      if (v21 <= v34)
      {
        v21 = v33;
      }

      --v31;
    }

    while (v31);
  }

LABEL_33:

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = *(v3 + 24);
  if (*(v35 + 16) >= v21)
  {
    v39[0] = v37;
    v39[1] = v38;
    MEMORY[0x28223BE20](result);
    v36[2] = v39;

    v24 = sub_222B4400C(sub_222B77BA0, v36, v35 + 32, 0, (2 * v21) | 1);

    return v24 & 1;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_222C842E0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = a1[7];
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 1;
  }

  v38 = a4[1];
  v6 = sub_222B8C8D4(v5, 0);
  v7 = sub_222B95AD8();
  v39 = v4;

  sub_222B504E8(v40);
  if (v7 != v5)
  {
    goto LABEL_29;
  }

  v8 = sub_222C84040(v6, a2, a3);

  if (v8)
  {
    v9 = v4;
    v10 = v4 + 64;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v16 = v38;
    while (v13)
    {
LABEL_12:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      if (*(*(v9 + 56) + ((v15 << 11) | (32 * v18)) + 8))
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        sub_222C944FC();
        v20 = sub_222C944FC();
        v22 = v21;

        swift_bridgeObjectRetain_n();
        v23._countAndFlagsBits = v20;
        v23._object = v22;
        v41 = String.scoreRatcliffObershelp(between:)(v23);
        v24 = *&v41.is_nil;
        LOBYTE(v20) = v25;

        v16 = v38;
        v9 = v39;

        swift_bridgeObjectRelease_n();
        if ((v20 & 1) == 0 && v24 >= 0.9)
        {

          return 0;
        }
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return 1;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v15 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_30:
    swift_once();
  }

  v27 = sub_222C9431C();
  __swift_project_value_buffer(v27, qword_280FE2340);

  v28 = sub_222C942FC();
  v29 = sub_222C94A3C();

  v30 = v28;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 136315650;
    if (qword_27D0247A8 != -1)
    {
      swift_once();
    }

    *(v31 + 4) = sub_222B437C0(qword_27D027CD8, unk_27D027CE0, &v40);
    *(v31 + 12) = 2080;
    v33 = sub_222C9439C();
    v35 = sub_222B437C0(v33, v34, &v40);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_222B437C0(a2, a3, &v40);
    _os_log_impl(&dword_222B39000, v30, v29, "%s REJECT - Added slot less specific (existing: %s, added: %s)", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v32, -1, -1);
    MEMORY[0x223DCA8C0](v31, -1, -1);
  }

  else
  {
  }

  return 0;
}

void *ReformulationSpecializationClassifier.deinit()
{

  return v0;
}

uint64_t ReformulationSpecializationClassifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C848A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_222C8492C(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t _s28SiriPrivateLearningInference16FollowUpTurnTypeO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  *v15 = a1[2];
  v3 = *v15;
  v4 = a2[1];
  v16 = *a2;
  v17 = v4;
  v6 = *a2;
  v5 = a2[1];
  *v18 = a2[2];
  *&v18[9] = *(a2 + 41);
  *&v15[9] = *(a1 + 41);
  v19[0] = v13;
  v19[1] = v2;
  v20[0] = v3;
  *(v20 + 9) = *&v15[9];
  v20[2] = v6;
  v20[3] = v5;
  v21[0] = a2[2];
  *(v21 + 9) = *(a2 + 41);
  v7 = v2;
  if (!v15[24])
  {
    if (!v18[24] && (v13 == v16 || (sub_222C951FC() & 1) != 0))
    {
      v8 = v7;
      v9 = v17;
      goto LABEL_21;
    }

LABEL_22:
    sub_222C87468(&v16, v12);
    sub_222C87468(&v13, v12);
    v10 = 0;
    goto LABEL_23;
  }

  if (v15[24] != 1)
  {
    if (v18[24] == 2 && (v13 == v16 || (sub_222C951FC() & 1) != 0) && (__PAIR128__(*(&v14 + 1), v7) == v17 || (sub_222C951FC() & 1) != 0) && (*v15 == *v18 || (sub_222C951FC() & 1) != 0))
    {
      v8 = *&v15[16];
      v9 = *&v18[16];
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v18[24] != 1 || v13 != v16 && (sub_222C951FC() & 1) == 0 || __PAIR128__(*(&v14 + 1), v7) != v17 && (sub_222C951FC() & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *v15;
  v9 = *v18;
LABEL_21:
  v10 = sub_222BBC5A4(v8, v9);
  sub_222C87468(&v16, v12);
  sub_222C87468(&v13, v12);
LABEL_23:
  sub_222B4FCD4(v19, &qword_27D027CF8, qword_222CA7120);
  return v10 & 1;
}

uint64_t sub_222C84BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027090, &qword_222CA1FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222C84C6C(uint64_t a1)
{
  result = sub_222C84C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222C84C94()
{
  result = qword_27D027CF0;
  if (!qword_27D027CF0)
  {
    type metadata accessor for SlotBasedTurnComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027CF0);
  }

  return result;
}

uint64_t sub_222C84D18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_222C84D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_222C84EA4(char *__dst, char *__src, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v14 >> 5)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[32 * v12] <= a4)
    {
      memmove(a4, __dst, 32 * v12);
    }

    v17 = &v16[32 * v12];
    if (v10 >= 32)
    {
      v18 = a3;
      if (v8 < a3)
      {
        do
        {
          v19 = *(v16 + 3);
          if (*(v8 + 3))
          {
            if (!a8)
            {

              v22 = 0.0;
              v18 = a3;
LABEL_24:

              if (v22 <= 0.0)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }

            v20._countAndFlagsBits = a7;
            v20._object = a8;
            v54 = String.scoreRatcliffObershelp(between:)(v20);
            if (v21)
            {
              v22 = 0.0;
            }

            else
            {
              v22 = *&v54.is_nil;
            }

            v18 = a3;
            if (!v19)
            {
              goto LABEL_24;
            }
          }

          else
          {

            v22 = 0.0;
            if (!v19)
            {
              goto LABEL_24;
            }
          }

          v23 = a8;
          if (!a8)
          {
            goto LABEL_24;
          }

          v24 = a7;
          v55 = String.scoreRatcliffObershelp(between:)(*(&v23 - 1));
          v48 = *&v55.is_nil;
          v26 = v25;

          if (v26)
          {
            v18 = a3;
            if (v22 <= 0.0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v18 = a3;
            if (v22 <= v48)
            {
LABEL_29:
              v27 = v16;
              v28 = v9 == v16;
              v16 += 32;
              if (v28)
              {
                goto LABEL_31;
              }

LABEL_30:
              v29 = *(v27 + 1);
              *v9 = *v27;
              *(v9 + 1) = v29;
              goto LABEL_31;
            }
          }

LABEL_25:
          v27 = v8;
          v28 = v9 == v8;
          v8 += 32;
          if (!v28)
          {
            goto LABEL_30;
          }

LABEL_31:
          v9 += 32;
        }

        while (v16 < v17 && v8 < v18);
      }
    }

    v8 = v9;
    goto LABEL_68;
  }

  if (a4 != __src || &__src[32 * v15] <= a4)
  {
    v30 = a4;
    memmove(a4, __src, 32 * v15);
    a4 = v30;
  }

  v49 = a4;
  v17 = &a4[32 * v15];
  v31 = a3;
  if (v13 < 32)
  {
LABEL_67:
    v16 = v49;
    goto LABEL_68;
  }

  v16 = a4;
  if (v8 > v9)
  {
    while (2)
    {
      v32 = v31;
      v47 = v8;
      while (1)
      {
        v34 = *(v8 - 1);
        if (!*(v17 - 1))
        {
          break;
        }

        if (!a8)
        {
          v31 = v32 - 32;

          v37 = 0.0;
          goto LABEL_55;
        }

        v35._countAndFlagsBits = a7;
        v35._object = a8;
        v56 = String.scoreRatcliffObershelp(between:)(v35);
        v8 = v47;
        if (v36)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = *&v56.is_nil;
        }

        v31 = v32 - 32;
        if (v34)
        {
          goto LABEL_50;
        }

LABEL_55:

        if (v37 > 0.0)
        {
          goto LABEL_60;
        }

LABEL_56:
        v42 = v17 - 32;
        if (v17 != v32 || v31 >= v17)
        {
          v33 = *(v17 - 1);
          *v31 = *v42;
          *(v31 + 1) = v33;
        }

        v17 -= 32;
        v32 = v31;
        if (v42 <= v49)
        {
          v17 = v42;
          goto LABEL_67;
        }
      }

      v37 = 0.0;
      v31 = v32 - 32;
      if (!v34)
      {
        goto LABEL_55;
      }

LABEL_50:
      v38 = a8;
      if (a8)
      {
        between_8a = v31;
        v39 = a7;
        v57 = String.scoreRatcliffObershelp(between:)(*(&v38 - 1));
        v46 = *&v57.is_nil;
        v41 = v40;

        if (v41)
        {
          v31 = between_8a;
          if (v37 > 0.0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v31 = between_8a;
          if (v37 > v46)
          {
LABEL_60:
            v43 = v8 - 32;
            if (v32 != v8 || v31 >= v8)
            {
              v44 = *(v8 - 1);
              *v31 = *v43;
              *(v31 + 1) = v44;
            }

            v16 = v49;
            if (v17 <= v49 || (v8 -= 32, v43 <= v9))
            {
              v8 = v43;
              break;
            }

            continue;
          }
        }

        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

LABEL_68:
  if (v8 != v16 || v8 >= &v16[(v17 - v16 + (v17 - v16 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v8, v16, 32 * ((v17 - v16) / 32));
  }

  return 1;
}

uint64_t sub_222C853B8(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v10 = a1;
  v11 = *a1;

  v29 = a5;

  v30 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v30 = sub_222C8492C(v30);
  }

  v23 = v10;
  *v10 = v30;
  v12 = (v30 + 16);
  v13 = *(v30 + 2);
  if (v13 < 2)
  {
LABEL_9:

    *v23 = v30;
    return 1;
  }

  else
  {
    while (1)
    {
      v14 = *a3;
      if (!*a3)
      {
        break;
      }

      v15 = v8;
      v16 = &v30[16 * v13];
      v10 = *v16;
      v17 = &v12[2 * v13];
      v18 = v17[1];
      v32 = (v14 + 32 * *v16);
      __src = (v14 + 32 * *v17);
      v19 = (v14 + 32 * v18);

      sub_222C84EA4(v32, __src, v19, a2, a4, v29, a6, a7);
      v8 = v15;

      if (v15)
      {
        *v23 = v30;

        return 1;
      }

      if (v18 < v10)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v20 = *v12;
      if (v13 - 2 >= *v12)
      {
        goto LABEL_13;
      }

      *v16 = v10;
      *(v16 + 1) = v18;
      v21 = v20 - v13;
      if (v20 < v13)
      {
        goto LABEL_14;
      }

      v13 = v20 - 1;
      memmove(v17, v17 + 2, 16 * v21);
      *v12 = v13;
      if (v13 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v23 = v30;
    __break(1u);
  }

  return result;
}

uint64_t sub_222C855B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v215 = MEMORY[0x277D84F90];
  v10 = a3[1];
  if (v10 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_221;
  }

  if ((a8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a8) & 0xF;
  }

  else
  {
    v11 = a7 & 0xFFFFFFFFFFFFLL;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v191 = MEMORY[0x277D84F90];
  v194 = v8;
  v201 = v9;
  v199 = v11;
LABEL_6:
  v13 = v12++;
  v192 = v13;
  if (v12 >= v10)
  {
    goto LABEL_95;
  }

  v14 = v12;
  v15 = *(*a3 + 32 * v12 + 24);
  v203 = *a3;
  v205 = v10;
  v16 = *(*a3 + 32 * v13 + 24);
  if (v15)
  {
    if (!v8)
    {

      v19 = 0.0;
      goto LABEL_20;
    }

    v17._countAndFlagsBits = v9;
    v17._object = v8;
    v216 = String.scoreRatcliffObershelp(between:)(v17);
    if (v18)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *&v216.is_nil;
    }

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v19 = 0.0;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  if (v8)
  {
    v20._countAndFlagsBits = v9;
    v20._object = v8;
    v217 = String.scoreRatcliffObershelp(between:)(v20);
    v21 = *&v217.is_nil;
    v23 = v22;

    v33 = (v23 & 1) == 0;
    v9 = v201;
    if (v33)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0.0;
    }

    goto LABEL_21;
  }

LABEL_20:

  v24 = 0.0;
LABEL_21:
  v11 = v199;
  v25 = 0;
  v12 = v14;
  do
  {
    v27 = v12;
    v28 = v25;
    if (++v12 >= v205)
    {
      break;
    }

    v29 = v203 + 32 * v12;
    v30 = *(v29 + 24);
    v31 = v203 + 32 * v27;
    v207 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v30)
    {
      v33 = v8 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_36;
    }

    v34 = *(v29 + 16);
    v35 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v35 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35 || v11 == 0)
    {
LABEL_36:

      v37 = 0.0;
      v38 = v207;
      if (!v32)
      {
        goto LABEL_22;
      }

LABEL_37:
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }

    v39 = v34 == v9 && v30 == v8;
    if (!v39 && (sub_222C951FC() & 1) == 0)
    {

      v41 = sub_222C9453C();
      v42 = sub_222C9453C();
      if (__OFADD__(v41, v42))
      {
        goto LABEL_249;
      }

      v185 = v41 + v42;
      v43 = String.commonSequences(between:)(v9, v8, v34, v30);
      v44 = *(v43 + 16);
      if (v44)
      {
        v195 = v12;
        v211 = MEMORY[0x277D84F90];
        sub_222B4C7F8(0, v44, 0);
        v45 = v211;
        v46 = v43 + 40;
        do
        {

          v47 = sub_222C9453C();

          v49 = *(v211 + 16);
          v48 = *(v211 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_222B4C7F8((v48 > 1), v49 + 1, 1);
          }

          *(v211 + 16) = v49 + 1;
          *(v211 + 8 * v49 + 32) = v47;
          v46 += 16;
          --v44;
        }

        while (v44);

        v9 = v201;
        v12 = v195;
      }

      else
      {

        v45 = MEMORY[0x277D84F90];
      }

      v65 = *(v45 + 16);
      if (v65)
      {
        v66 = 0;
        v67 = 32;
        v8 = v194;
        do
        {
          v68 = *(v45 + v67);
          v142 = __OFADD__(v66, v68);
          v66 += v68;
          if (v142)
          {
            goto LABEL_227;
          }

          v67 += 8;
          --v65;
        }

        while (v65);

        v69 = v66;
      }

      else
      {

        v69 = 0.0;
        v8 = v194;
      }

      v37 = 2.0 / v185 * v69;
      v11 = v199;
      v38 = v207;
      if (!v32)
      {
LABEL_22:

        v26 = 0.0;
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    v37 = 1.0;
    v38 = v207;
    if (!v32)
    {
      goto LABEL_22;
    }

LABEL_45:
    v40 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v40 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40 || !v11)
    {
      goto LABEL_22;
    }

    if ((v38 != v9 || v32 != v8) && (sub_222C951FC() & 1) == 0)
    {
      v50 = sub_222C9453C();
      v51 = sub_222C9453C();
      if (__OFADD__(v50, v51))
      {
        goto LABEL_250;
      }

      v186 = v50 + v51;
      v52 = String.commonSequences(between:)(v9, v8, v207, v32);
      v53 = *(v52 + 16);
      if (v53)
      {
        v196 = v12;
        v212 = MEMORY[0x277D84F90];
        v54 = v52;
        sub_222B4C7F8(0, v53, 0);
        v55 = v212;
        v56 = v54 + 40;
        do
        {

          v57 = sub_222C9453C();

          v59 = *(v212 + 16);
          v58 = *(v212 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_222B4C7F8((v58 > 1), v59 + 1, 1);
          }

          *(v212 + 16) = v59 + 1;
          *(v212 + 8 * v59 + 32) = v57;
          v56 += 16;
          --v53;
        }

        while (v53);

        v8 = v194;
        v12 = v196;
        v9 = v201;
        v60 = *(v212 + 16);
        if (v60)
        {
          goto LABEL_67;
        }

LABEL_81:

        v64 = 0.0;
      }

      else
      {

        v55 = MEMORY[0x277D84F90];
        v60 = *(MEMORY[0x277D84F90] + 16);
        if (!v60)
        {
          goto LABEL_81;
        }

LABEL_67:
        v61 = 0;
        v62 = 32;
        do
        {
          v63 = *(v55 + v62);
          v142 = __OFADD__(v61, v63);
          v61 += v63;
          if (v142)
          {
            goto LABEL_232;
          }

          v62 += 8;
          --v60;
        }

        while (v60);

        v64 = v61;
      }

      v26 = 2.0 / v186 * v64;
      v11 = v199;
      goto LABEL_23;
    }

    v26 = 1.0;
LABEL_23:
    v25 = v28 + 32;
  }

  while (v24 < v19 != v26 >= v37);
  if (v24 >= v19)
  {
LABEL_93:
    v13 = v192;
    goto LABEL_95;
  }

  v70 = v192;
  if (v12 < v192)
  {
    goto LABEL_253;
  }

  if (v192 < v12)
  {
    v71 = 0;
    while (1)
    {
      if (v70 != v27)
      {
        if (!*a3)
        {
          goto LABEL_256;
        }

        v72 = *a3 + 32 * v192;
        v73 = (v72 + v71);
        v74 = v72 + v28;
        v75 = *v73;
        v76 = v73[1];
        v77 = *(v73 + 1);
        v78 = *(v74 + 48);
        *v73 = *(v74 + 32);
        *(v73 + 1) = v78;
        *(v74 + 32) = v75;
        *(v74 + 40) = v76;
        *(v74 + 48) = v77;
      }

      ++v70;
      v28 -= 32;
      v71 += 32;
      v79 = v70 < v27--;
      if (!v79)
      {
        goto LABEL_93;
      }
    }
  }

  v13 = v192;
LABEL_95:
  v80 = a3[1];
  if (v12 >= v80)
  {
    goto LABEL_165;
  }

  if (__OFSUB__(v12, v13))
  {
    goto LABEL_248;
  }

  if (v12 - v13 >= a4)
  {
    goto LABEL_165;
  }

  v81 = v13 + a4;
  if (__OFADD__(v13, a4))
  {
    goto LABEL_251;
  }

  if (v81 >= v80)
  {
    v81 = a3[1];
  }

  if (v81 < v13)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_255:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_256:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_257:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_258:
    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  if (v12 == v81)
  {
    goto LABEL_165;
  }

  v82 = *a3;
  v183 = v81;
  v184 = *a3;
LABEL_105:
  v83 = v82 + 32 * v12;
  v84 = *(v83 + 16);
  v85 = *(v83 + 24);
  v197 = v12;
  while (1)
  {
    v204 = v12 - 1;
    v206 = v12;
    v86 = v82 + 32 * (v12 - 1);
    v208 = *(v86 + 16);
    v87 = *(v86 + 24);
    if (!v85 || !v8)
    {
      goto LABEL_117;
    }

    v88 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v88 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (!v88 || !v11)
    {
LABEL_117:

      v89 = 0.0;
      v90 = v208;
      if (!v87)
      {
        goto LABEL_151;
      }

LABEL_118:
      if (!v8)
      {
        goto LABEL_151;
      }

      goto LABEL_119;
    }

    if (v84 != v9 || v85 != v8)
    {
      v202 = *(v86 + 24);
      v87 = v202;
      if ((sub_222C951FC() & 1) == 0)
      {
        break;
      }
    }

    v89 = 1.0;
    v90 = v208;
    if (!v87)
    {
      goto LABEL_151;
    }

LABEL_119:
    v91 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v91 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v91 && v11)
    {
      if (v90 == v9 && v87 == v8 || (sub_222C951FC() & 1) != 0)
      {

        v92 = v206;
        v13 = v192;
        if (v89 <= 1.0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v102 = sub_222C9453C();
        v103 = sub_222C9453C();
        if (__OFADD__(v102, v103))
        {
          goto LABEL_246;
        }

        v188 = v102 + v103;
        v104 = String.commonSequences(between:)(v9, v8, v208, v87);
        v105 = *(v104 + 16);
        if (v105)
        {
          v214 = MEMORY[0x277D84F90];
          sub_222B4C7F8(0, v105, 0);
          v106 = v214;
          v107 = v104 + 40;
          do
          {

            v108 = sub_222C9453C();

            v110 = *(v214 + 16);
            v109 = *(v214 + 24);
            if (v110 >= v109 >> 1)
            {
              sub_222B4C7F8((v109 > 1), v110 + 1, 1);
            }

            *(v214 + 16) = v110 + 1;
            *(v214 + 8 * v110 + 32) = v108;
            v107 += 16;
            --v105;
          }

          while (v105);

          v9 = v201;
          v13 = v192;
          v82 = v184;
        }

        else
        {

          v106 = MEMORY[0x277D84F90];
          v13 = v192;
        }

        v120 = *(v106 + 16);
        v8 = v194;
        if (v120)
        {
          v121 = 0;
          v122 = 32;
          while (1)
          {
            v123 = *(v106 + v122);
            v142 = __OFADD__(v121, v123);
            v121 += v123;
            if (v142)
            {
              break;
            }

            v122 += 8;
            if (!--v120)
            {

              v124 = v121;
              goto LABEL_162;
            }
          }

          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
          goto LABEL_252;
        }

        v124 = 0.0;
LABEL_162:

        v11 = v199;
        v92 = v206;
        if (2.0 / v188 * v124 >= v89)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_152;
    }

LABEL_151:

    v92 = v206;
    if (v89 <= 0.0)
    {
      goto LABEL_104;
    }

LABEL_152:
    if (!v82)
    {
      goto LABEL_254;
    }

    v116 = (v82 + 32 * v92);
    v117 = *v116;
    v118 = v116[1];
    v84 = v116[2];
    v85 = v116[3];
    v119 = *(v86 + 16);
    *v116 = *v86;
    *(v116 + 1) = v119;
    *v86 = v117;
    *(v86 + 8) = v118;
    *(v86 + 16) = v84;
    *(v86 + 24) = v85;
    v12 = v204;
    if (v204 == v13)
    {
LABEL_104:
      v12 = v197 + 1;
      if (v197 + 1 != v183)
      {
        goto LABEL_105;
      }

      v12 = v183;
LABEL_165:
      v125 = v191;
      if (v12 < v13)
      {
        goto LABEL_247;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_222B4B304(0, *(v191 + 2) + 1, 1, v191);
      }

      v127 = *(v125 + 2);
      v126 = *(v125 + 3);
      v128 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        v125 = sub_222B4B304((v126 > 1), v127 + 1, 1, v125);
      }

      *(v125 + 2) = v128;
      v129 = v125 + 32;
      v130 = &v125[16 * v127 + 32];
      *v130 = v13;
      *(v130 + 1) = v12;
      v210 = *a1;
      if (*a1)
      {
        v191 = v125;
        if (!v127)
        {
          v11 = v199;
LABEL_217:
          v8 = v194;
          v10 = a3[1];
          if (v12 >= v10)
          {
            goto LABEL_225;
          }

          goto LABEL_6;
        }

        v11 = v199;
        v198 = v12;
        v209 = v125 + 32;
        while (1)
        {
          v131 = v128 - 1;
          if (v128 >= 4)
          {
            break;
          }

          if (v128 == 3)
          {
            v132 = *(v125 + 4);
            v133 = *(v125 + 5);
            v142 = __OFSUB__(v133, v132);
            v134 = v133 - v132;
            v135 = v142;
LABEL_186:
            if (v135)
            {
              goto LABEL_235;
            }

            v148 = &v125[16 * v128];
            v150 = *v148;
            v149 = *(v148 + 1);
            v151 = __OFSUB__(v149, v150);
            v152 = v149 - v150;
            v153 = v151;
            if (v151)
            {
              goto LABEL_237;
            }

            v154 = &v129[16 * v131];
            v156 = *v154;
            v155 = *(v154 + 1);
            v142 = __OFSUB__(v155, v156);
            v157 = v155 - v156;
            if (v142)
            {
              goto LABEL_240;
            }

            if (__OFADD__(v152, v157))
            {
              goto LABEL_242;
            }

            if (v152 + v157 >= v134)
            {
              if (v134 < v157)
              {
                v131 = v128 - 2;
              }

              goto LABEL_208;
            }

            goto LABEL_201;
          }

          if (v128 < 2)
          {
            goto LABEL_243;
          }

          v158 = &v125[16 * v128];
          v160 = *v158;
          v159 = *(v158 + 1);
          v142 = __OFSUB__(v159, v160);
          v152 = v159 - v160;
          v153 = v142;
LABEL_201:
          if (v153)
          {
            goto LABEL_239;
          }

          v161 = &v129[16 * v131];
          v163 = *v161;
          v162 = *(v161 + 1);
          v142 = __OFSUB__(v162, v163);
          v164 = v162 - v163;
          if (v142)
          {
            goto LABEL_241;
          }

          if (v164 < v152)
          {
            goto LABEL_217;
          }

LABEL_208:
          if (v131 - 1 >= v128)
          {
            goto LABEL_228;
          }

          v169 = *a3;
          if (!*a3)
          {
            goto LABEL_255;
          }

          v170 = &v129[16 * v131 - 16];
          v171 = *v170;
          v172 = v131;
          v173 = &v129[16 * v131];
          v174 = *(v173 + 1);
          v175 = (v169 + 32 * *v170);
          v176 = (v169 + 32 * *v173);
          v177 = (v169 + 32 * v174);

          sub_222C84EA4(v175, v176, v177, v210, a5, a6, v201, v194);
          if (v200)
          {

            goto LABEL_223;
          }

          if (v174 < v171)
          {
            goto LABEL_229;
          }

          v125 = v191;
          v178 = *(v191 + 2);
          if (v172 > v178)
          {
            goto LABEL_230;
          }

          *v170 = v171;
          *(v170 + 1) = v174;
          if (v172 >= v178)
          {
            goto LABEL_231;
          }

          v128 = v178 - 1;
          memmove(v173, v173 + 16, 16 * (v178 - 1 - v172));
          *(v191 + 2) = v178 - 1;
          v79 = v178 > 2;
          v9 = v201;
          v12 = v198;
          v11 = v199;
          v129 = v209;
          if (!v79)
          {
            goto LABEL_217;
          }
        }

        v136 = &v129[16 * v128];
        v137 = *(v136 - 8);
        v138 = *(v136 - 7);
        v142 = __OFSUB__(v138, v137);
        v139 = v138 - v137;
        if (v142)
        {
          goto LABEL_233;
        }

        v141 = *(v136 - 6);
        v140 = *(v136 - 5);
        v142 = __OFSUB__(v140, v141);
        v134 = v140 - v141;
        v135 = v142;
        if (v142)
        {
          goto LABEL_234;
        }

        v143 = &v125[16 * v128];
        v145 = *v143;
        v144 = *(v143 + 1);
        v142 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v142)
        {
          goto LABEL_236;
        }

        v142 = __OFADD__(v134, v146);
        v147 = v134 + v146;
        if (v142)
        {
          goto LABEL_238;
        }

        if (v147 >= v139)
        {
          v165 = &v129[16 * v131];
          v167 = *v165;
          v166 = *(v165 + 1);
          v142 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v142)
          {
            goto LABEL_245;
          }

          if (v134 < v168)
          {
            v131 = v128 - 2;
          }

          goto LABEL_208;
        }

        goto LABEL_186;
      }

      goto LABEL_257;
    }
  }

  v93 = sub_222C9453C();
  v94 = sub_222C9453C();
  if (__OFADD__(v93, v94))
  {
    goto LABEL_244;
  }

  v187 = v93 + v94;
  v95 = String.commonSequences(between:)(v9, v8, v84, v85);
  v96 = *(v95 + 16);
  if (v96)
  {
    v213 = MEMORY[0x277D84F90];
    sub_222B4C7F8(0, v96, 0);
    v97 = v213;
    v98 = v95 + 40;
    do
    {

      v99 = sub_222C9453C();

      v101 = *(v213 + 16);
      v100 = *(v213 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_222B4C7F8((v100 > 1), v101 + 1, 1);
      }

      *(v213 + 16) = v101 + 1;
      *(v213 + 8 * v101 + 32) = v99;
      v98 += 16;
      --v96;
    }

    while (v96);

    v9 = v201;
    v13 = v192;
    v82 = v184;
  }

  else
  {

    v97 = MEMORY[0x277D84F90];
  }

  v111 = *(v97 + 16);
  v8 = v194;
  if (!v111)
  {

    v115 = 0.0;
LABEL_150:
    v89 = 2.0 / v187 * v115;
    v11 = v199;
    v87 = v202;
    v90 = v208;
    if (!v202)
    {
      goto LABEL_151;
    }

    goto LABEL_118;
  }

  v112 = 0;
  v113 = 32;
  while (1)
  {
    v114 = *(v97 + v113);
    v142 = __OFADD__(v112, v114);
    v112 += v114;
    if (v142)
    {
      break;
    }

    v113 += 8;
    if (!--v111)
    {

      v115 = v112;
      goto LABEL_150;
    }
  }

  __break(1u);
LABEL_225:
  v215 = v191;
LABEL_221:
  v179 = *a1;
  if (!*a1)
  {
    goto LABEL_258;
  }

  sub_222C853B8(&v215, v179, a3, a5, a6, v9, v8);

LABEL_223:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_222C867B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a3 == a2)
  {
    return result;
  }

  v8 = a8;
  v9 = a7;
  v10 = result;
  v11 = *a4;
  if ((a8 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a8) & 0xF;
  }

  else
  {
    v12 = a7 & 0xFFFFFFFFFFFFLL;
  }

  v62 = *a4;
  v61 = result;
  v67 = v12;
LABEL_8:
  v13 = v11 + 32 * a3;
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v64 = a3;
  while (1)
  {
    v69 = a3 - 1;
    v70 = a3;
    v16 = v11 + 32 * (a3 - 1);
    v71 = *(v16 + 16);
    v17 = *(v16 + 24);
    if (v15)
    {
      if (v8)
      {
        v18 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v18 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v18 && v12)
        {
          break;
        }
      }
    }

    v19 = 0.0;
    v20 = v71;
    if (!v17)
    {
      goto LABEL_54;
    }

LABEL_21:
    if (!v8)
    {
      goto LABEL_54;
    }

LABEL_22:
    v21 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21 || !v12)
    {
      goto LABEL_54;
    }

    v22 = v10;
    v23 = v9;
    if (v20 == v9 && v17 == v8 || (sub_222C951FC() & 1) != 0)
    {

      v24 = v70;
      v10 = v22;
      v12 = v67;
      if (v19 <= 1.0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v34 = sub_222C9453C();
      result = sub_222C9453C();
      if (__OFADD__(v34, result))
      {
        goto LABEL_70;
      }

      v66 = v34 + result;
      v35 = String.commonSequences(between:)(v9, v8, v71, v17);
      v36 = *(v35 + 16);
      if (v36)
      {
        v73 = MEMORY[0x277D84F90];
        sub_222B4C7F8(0, v36, 0);
        v37 = v73;
        v38 = v35 + 40;
        do
        {

          v39 = sub_222C9453C();

          v41 = *(v73 + 16);
          v40 = *(v73 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_222B4C7F8((v40 > 1), v41 + 1, 1);
          }

          *(v73 + 16) = v41 + 1;
          *(v73 + 8 * v41 + 32) = v39;
          v38 += 16;
          --v36;
        }

        while (v36);

        v11 = v62;
        v8 = a8;
        v9 = a7;
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
        v9 = v23;
      }

      v12 = v67;
      result = v17;
      v53 = *(v37 + 16);
      v10 = v61;
      if (v53)
      {
        v54 = v9;
        v55 = 0;
        v56 = 32;
        while (1)
        {
          v57 = *(v37 + v56);
          v47 = __OFADD__(v55, v57);
          v55 += v57;
          if (v47)
          {
            goto LABEL_68;
          }

          v56 += 8;
          if (!--v53)
          {

            v58 = v55;
            v9 = v54;
            v12 = v67;
            goto LABEL_65;
          }
        }
      }

      v58 = 0.0;
LABEL_65:

      v24 = v70;
      if (2.0 / v66 * v58 >= v19)
      {
LABEL_7:
        a3 = v64 + 1;
        if (v64 + 1 == a2)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

LABEL_55:
    if (!v11)
    {
      goto LABEL_71;
    }

    v49 = (v11 + 32 * v24);
    v50 = *v49;
    v51 = v49[1];
    v14 = v49[2];
    v15 = v49[3];
    v52 = *(v16 + 16);
    *v49 = *v16;
    *(v49 + 1) = v52;
    *v16 = v50;
    *(v16 + 8) = v51;
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    a3 = v69;
    if (v69 == v10)
    {
      goto LABEL_7;
    }
  }

  if (v14 == v9 && v15 == v8 || (v68 = *(v16 + 24), v17 = v68, (sub_222C951FC() & 1) != 0))
  {

    v19 = 1.0;
    v20 = v71;
    if (!v17)
    {
      goto LABEL_54;
    }

    goto LABEL_22;
  }

  v25 = v9;
  v26 = sub_222C9453C();
  result = sub_222C9453C();
  if (__OFADD__(v26, result))
  {
    goto LABEL_69;
  }

  v65 = v26 + result;
  v27 = String.commonSequences(between:)(v25, v8, v14, v15);
  v28 = *(v27 + 16);
  if (v28)
  {
    v72 = MEMORY[0x277D84F90];
    sub_222B4C7F8(0, v28, 0);
    v29 = v72;
    v30 = v27 + 40;
    do
    {

      v31 = sub_222C9453C();

      v33 = *(v72 + 16);
      v32 = *(v72 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_222B4C7F8((v32 > 1), v33 + 1, 1);
      }

      *(v72 + 16) = v33 + 1;
      *(v72 + 8 * v33 + 32) = v31;
      v30 += 16;
      --v28;
    }

    while (v28);

    v9 = a7;
    v10 = v61;
  }

  else
  {
    v9 = v25;

    v29 = MEMORY[0x277D84F90];
  }

  v42 = *(v29 + 16);
  v11 = v62;
  if (!v42)
  {

    v48 = 0.0;
    v8 = a8;
LABEL_53:
    v12 = v67;
    v19 = 2.0 / v65 * v48;
    v17 = v68;
    v20 = v71;
    if (!v68)
    {
LABEL_54:

      v24 = v70;
      if (v19 <= 0.0)
      {
        goto LABEL_7;
      }

      goto LABEL_55;
    }

    goto LABEL_21;
  }

  v43 = v9;
  v44 = 0;
  v45 = 32;
  v8 = a8;
  while (1)
  {
    v46 = *(v29 + v45);
    v47 = __OFADD__(v44, v46);
    v44 += v46;
    if (v47)
    {
      break;
    }

    v45 += 8;
    if (!--v42)
    {

      v48 = v44;
      v9 = v43;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_222C86DD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  result = sub_222C9514C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C08, &qword_222C969E0);
        v14 = sub_222C9478C();
        *(v14 + 16) = v13;
      }

      v15[0] = (v14 + 32);
      v15[1] = v13;

      sub_222C855B0(v15, v16, a1, v12, a2, a3, a4, a5);

      *(v14 + 16) = 0;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {

    sub_222C867B0(0, v10, 1, a1, a2, a3, a4, a5);
  }

  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_222C86FA4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_222C8488C(v10);
  }

  v11 = v10[2];
  v13[0] = (v10 + 4);
  v13[1] = v11;

  sub_222C86DD0(v13, a2, a3, a4, a5);

  *a1 = v10;
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_222C87098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *a3;
  v6 = a3[1];
  v9 = *a6;
  v8 = a6[1];
  if (v8)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    sub_222C944FC();
    v18._countAndFlagsBits = sub_222C944FC();
    v28 = String.scoreRatcliffObershelp(between:)(v18);
    v19 = *&v28.is_nil;
    v21 = v20;

    if ((v21 & 1) == 0 && v19 >= 0.9)
    {
      return 1;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v11 = sub_222C9431C();
  __swift_project_value_buffer(v11, qword_280FE2340);

  v12 = sub_222C942FC();
  v13 = sub_222C94A3C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315650;
    if (qword_27D0247A8 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_222B437C0(qword_27D027CD8, unk_27D027CE0, &v27);
    *(v14 + 12) = 2080;
    if (v6)
    {

      sub_222C94D1C();

      MEMORY[0x223DC9330](v7, v6);
      MEMORY[0x223DC9330](10530, 0xE200000000000000);

      v16 = 0x746F6C536E727554;
      v17 = 0xEF222865756C6156;
    }

    else
    {
      v16 = 0xD000000000000019;

      v17 = 0x8000000222CAA1B0;
    }

    v23 = sub_222B437C0(v16, v17, &v27);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    if (v8)
    {

      sub_222C94D1C();

      MEMORY[0x223DC9330](v9, v8);
      MEMORY[0x223DC9330](10530, 0xE200000000000000);

      v25 = 0x746F6C536E727554;
      v24 = 0xEF222865756C6156;
    }

    else
    {
      v25 = 0xD000000000000019;

      v24 = 0x8000000222CAA1B0;
    }

    v26 = sub_222B437C0(v25, v24, &v27);

    *(v14 + 24) = v26;
    _os_log_impl(&dword_222B39000, v12, v13, "%s REJECT - Moved slots are not sufficiently similar (from: %s), to: %s)", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v15, -1, -1);
    MEMORY[0x223DCA8C0](v14, -1, -1);
  }

  return 0;
}

uint64_t PimsSuggestionMetadata.pimsId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PimsSuggestionMetadata.locality.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PimsSuggestionMetadata(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PimsSuggestionMetadata(uint64_t a1)
{
  result = qword_27D027DC0;
  if (!qword_27D027DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PimsSuggestionMetadata.serverTreatment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PimsSuggestionMetadata(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PimsSuggestionMetadata.clientTreatment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PimsSuggestionMetadata(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t PimsSuggestionMetadata.init(pimsId:locality:serverTreatment:clientTreatment:suggestionSurfaced:noveltyState:redundancyState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  v16 = sub_222C9367C();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for PimsSuggestionMetadata(0);
  *(a8 + v17[5]) = v13;
  *(a8 + v17[6]) = v14;
  *(a8 + v17[7]) = v15;
  sub_222B723A4(a5, a8 + v17[8], &qword_27D027D00, &qword_222CA7170);
  sub_222B723A4(a6, a8 + v17[9], &qword_27D027D08, &qword_222CA7178);
  return sub_222B723A4(a7, a8 + v17[10], &qword_27D027D10, &qword_222CA7180);
}

uint64_t sub_222C87818(uint64_t a1)
{
  v2 = sub_222C87EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C87854(uint64_t a1)
{
  v2 = sub_222C87EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C87890()
{
  v1 = 0x7972617262696CLL;
  if (*v0 != 1)
  {
    v1 = 0x7261506472696874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

uint64_t sub_222C878F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C88F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C87918(uint64_t a1)
{
  v2 = sub_222C87DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C87954(uint64_t a1)
{
  v2 = sub_222C87DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C87990(uint64_t a1)
{
  v2 = sub_222C87EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C879CC(uint64_t a1)
{
  v2 = sub_222C87EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C87A08(uint64_t a1)
{
  v2 = sub_222C87E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C87A44(uint64_t a1)
{
  v2 = sub_222C87E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PimsLocality.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D18, &qword_222CA7188);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D20, &qword_222CA7190);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D28, &qword_222CA7198);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D30, &qword_222CA71A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C87DF8();
  sub_222C9536C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_222C87EA0();
      v9 = v21;
      sub_222C950BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_222C87E4C();
      v9 = v24;
      sub_222C950BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_222C87EF4();
    sub_222C950BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_222C87DF8()
{
  result = qword_27D027D38;
  if (!qword_27D027D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D38);
  }

  return result;
}

unint64_t sub_222C87E4C()
{
  result = qword_27D027D40;
  if (!qword_27D027D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D40);
  }

  return result;
}

unint64_t sub_222C87EA0()
{
  result = qword_27D027D48;
  if (!qword_27D027D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D48);
  }

  return result;
}

unint64_t sub_222C87EF4()
{
  result = qword_27D027D50;
  if (!qword_27D027D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D50);
  }

  return result;
}

uint64_t PimsLocality.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D58, &qword_222CA71A8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D60, &qword_222CA71B0);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D68, &qword_222CA71B8);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027D70, &unk_222CA71C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_222C87DF8();
  v15 = v36;
  sub_222C9535C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_222C9508C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_222B572CC();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_222C94DBC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v24 = &type metadata for PimsLocality;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_222C87EA0();
          sub_222C94FFC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_222C87E4C();
          v26 = v17;
          sub_222C94FFC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_222C87EF4();
        sub_222C94FFC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

unint64_t sub_222C88554()
{
  result = qword_27D027D78;
  if (!qword_27D027D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D78);
  }

  return result;
}

unint64_t sub_222C885DC()
{
  result = qword_27D027D90;
  if (!qword_27D027D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027D90);
  }

  return result;
}

unint64_t sub_222C88664()
{
  result = qword_27D027DA8;
  if (!qword_27D027DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027DA8);
  }

  return result;
}

void sub_222C88720(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C888A0(319, &qword_27D0259B0, &type metadata for PimsLocality);
    if (v2 <= 0x3F)
    {
      sub_222C888A0(319, &qword_27D027DD0, &type metadata for PimsServerTreatment);
      if (v3 <= 0x3F)
      {
        sub_222C888A0(319, &qword_27D027DD8, &type metadata for PimsClientTreatment);
        if (v4 <= 0x3F)
        {
          sub_222C888EC(319, &qword_27D027DE0, MEMORY[0x277D5FC80]);
          if (v5 <= 0x3F)
          {
            sub_222C888EC(319, &qword_27D027DE8, MEMORY[0x277D5FC60]);
            if (v6 <= 0x3F)
            {
              sub_222C888EC(319, &qword_27D027DF0, MEMORY[0x277D5FCB0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_222C888A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_222C94B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_222C888EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_222C94B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PimsServerTreatment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PimsServerTreatment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PimsClientTreatment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PimsClientTreatment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222C88C34()
{
  result = qword_27D027DF8;
  if (!qword_27D027DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027DF8);
  }

  return result;
}

unint64_t sub_222C88C8C()
{
  result = qword_27D027E00;
  if (!qword_27D027E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E00);
  }

  return result;
}

unint64_t sub_222C88CE4()
{
  result = qword_27D027E08;
  if (!qword_27D027E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E08);
  }

  return result;
}

unint64_t sub_222C88D3C()
{
  result = qword_27D027E10;
  if (!qword_27D027E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E10);
  }

  return result;
}

unint64_t sub_222C88D94()
{
  result = qword_27D027E18;
  if (!qword_27D027E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E18);
  }

  return result;
}

unint64_t sub_222C88DEC()
{
  result = qword_27D027E20;
  if (!qword_27D027E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E20);
  }

  return result;
}

unint64_t sub_222C88E44()
{
  result = qword_27D027E28;
  if (!qword_27D027E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E28);
  }

  return result;
}

unint64_t sub_222C88E9C()
{
  result = qword_27D027E30;
  if (!qword_27D027E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E30);
  }

  return result;
}

unint64_t sub_222C88EF4()
{
  result = qword_27D027E38;
  if (!qword_27D027E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E38);
  }

  return result;
}

uint64_t sub_222C88F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F6C61746163 && a2 == 0xE700000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t NowPlayingFeatures.MediaType.__allocating_init(value:)(__int128 *a1)
{
  return sub_222C8936C(a1, MEMORY[0x277D5FB90]);
}

{
  return sub_222C8936C(a1, MEMORY[0x277D5FB88]);
}

uint64_t NowPlayingFeatures.PlaybackState.init(value:)(char *a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t NowPlayingFeatures.PlaybackState.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C89200(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C89270(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t NowPlayingFeatures.MediaType.init(value:)(__int128 *a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C8936C(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  swift_allocObject();
  v5 = *a1;
  return a2(&v5);
}

uint64_t NowPlayingFeatures.ITunesStoreIdentifier.init(value:)(uint64_t a1, uint64_t a2)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C8951C(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C8958C(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference19NowPlayingMediaTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (!v5)
      {
        sub_222B831E4(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v3 == 1)
    {
      if (v5 == 1)
      {
        v8 = 1;
        sub_222B831E4(*a1, 1uLL);
        sub_222B831E4(v4, 1uLL);
        return v8;
      }

LABEL_18:
      sub_222B831C0(*a2, *(a2 + 8));
      sub_222B831C0(v2, v3);
      sub_222B831E4(v2, v3);
      sub_222B831E4(v4, v5);
      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        if (v5 == 2)
        {
          sub_222B831E4(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 3:
        if (v5 == 3)
        {
          sub_222B831E4(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_22;
        }

        goto LABEL_18;
      case 4:
        if (v5 == 4)
        {
          sub_222B831E4(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
LABEL_22:
          sub_222B831E4(v6, v7);
          return 1;
        }

        goto LABEL_18;
    }
  }

  if (v5 < 5)
  {
    goto LABEL_18;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_222B831C0(*a1, v3);
    sub_222B831C0(v2, v3);
    sub_222B831E4(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_22;
  }

  v10 = sub_222C951FC();
  sub_222B831C0(v4, v5);
  sub_222B831C0(v2, v3);
  sub_222B831E4(v2, v3);
  sub_222B831E4(v4, v5);
  return v10 & 1;
}

unint64_t sub_222C89850()
{
  result = qword_27D027E40;
  if (!qword_27D027E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E40);
  }

  return result;
}

unint64_t sub_222C898A8()
{
  result = qword_27D027E48;
  if (!qword_27D027E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027E48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference19NowPlayingMediaTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222C89B3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C89B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

Swift::Bool __swiftcall FeaturisedTurn.containsTaskInDomain(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = sub_222B41648(*(v1 + *(v4 + 24)));
  if (v5)
  {
    v6 = v5;
    v7 = (v5 + 40);
    v8 = -*(v5 + 16);
    v9 = -1;
    while (1)
    {
      v10 = v8 + v9 != -1;
      if (v8 + v9 == -1)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (++v9 >= *(v6 + 16))
      {
        break;
      }

      v11 = v7 + 2;
      v13 = *(v7 - 1);
      v12 = *v7;

      LOBYTE(v13) = sub_222B42DF0(countAndFlagsBits, object, v13, v12);

      v7 = v11;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
LABEL_8:
    LOBYTE(v5) = v10;
  }

  return v5;
}

uint64_t FeaturisedTurn.getPlusId()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  sub_222B42000(*(v1 + *(v4 + 32)), (&v23 - v8));
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222B86DA0(v9);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    sub_222B78534(v1, v6);
    v13 = sub_222C942FC();
    v14 = sub_222C94A4C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_222C9360C();
      v19 = v18;
      sub_222B73DD0(v6);
      v20 = sub_222B437C0(v17, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_222B39000, v13, v14, "Missing Plus ID for turn=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x223DCA8C0](v16, -1, -1);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    else
    {

      sub_222B73DD0(v6);
    }

    v21 = 1;
  }

  else
  {
    (*(v11 + 32))(a1, v9, v10);
    v21 = 0;
  }

  return (*(v11 + 56))(a1, v21, 1, v10);
}

uint64_t FeaturisedTurn.firstEventOf(type:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = type metadata accessor for FeaturisedTurn(0);
  v19 = *(v2 + *(result + 28));
  v18 = *(v19 + 16);
  if (v18)
  {
    v5 = 0;
    v6 = (v19 + 64);
    while (v5 < *(v19 + 16))
    {
      if (v3 > 1)
      {
        v8 = "INSendMessageIntent";
        if (v3 != 2)
        {
          v8 = "INPlayMediaIntent";
        }

        v7 = 0xD000000000000011;
      }

      else
      {
        v7 = 0xD000000000000011;
        v8 = "nerationTriggered";
        if (v3)
        {
          v7 = 0xD000000000000013;
          v8 = "INStartCallIntent";
        }
      }

      v10 = *(v6 - 4);
      v9 = *(v6 - 3);
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v14 = v8 | 0x8000000000000000;
      if (v12 == v7 && v14 == v13)
      {

LABEL_19:
        *a2 = v10;
        a2[1] = v9;
        a2[2] = v11;
        a2[3] = v12;
        a2[4] = v14;
        return result;
      }

      v16 = sub_222C951FC();

      if (v16)
      {
        v14 = v13;
        goto LABEL_19;
      }

      ++v5;

      v6 += 5;
      if (v18 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void sub_222C8A24C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  MEMORY[0x28223BE20](v51);
  v45 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = (v41.n128_u64 - v13);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = (v41.n128_u64 - v17);
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = *(v51 + 48);
    v22 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v49 = *(v16 + 72);
    v50 = v21;
    v18.n128_u64[0] = 136315650;
    v41 = v18;
    v43 = v11;
    v44 = a2;
    v42 = &v41 - v17;
    do
    {
      sub_222C1F2E0(v22, v19);
      v36 = v19[1];
      v37 = *(v51 + 48);
      *v14 = *v19;
      v14[1] = v36;
      sub_222B73D68(v19 + v50, v14 + v37, type metadata accessor for RuleResult);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v38 = sub_222C9431C();
      __swift_project_value_buffer(v38, qword_280FE2340);
      sub_222C1F2E0(v14, v11);
      sub_222C1F2E0(v14, v8);

      v39 = sub_222C942FC();
      v40 = sub_222C94A3C();

      if (os_log_type_enabled(v39, v40))
      {
        v23 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v52 = v48;
        *v23 = v41.n128_u32[0];
        *(v23 + 4) = sub_222B437C0(v46, a2, &v52);
        *(v23 + 12) = 2080;
        v24 = v11;
        v25 = v8;
        v26 = v45;
        sub_222C8B4B8(v24, v45);
        v27 = *v26;
        v28 = v26[1];
        v47 = v40;
        sub_222C8B528(v26 + *(v51 + 48), type metadata accessor for RuleResult);
        v29 = sub_222B437C0(v27, v28, &v52);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2080;
        sub_222C1F2E0(v25, v26);

        type metadata accessor for RuleResult(0);
        v8 = v25;
        v11 = v43;
        v30 = sub_222C944EC();
        v32 = v31;
        sub_222B4FCD4(v8, &qword_27D024CC8, &unk_222C96AA0);
        v33 = sub_222B437C0(v30, v32, &v52);

        *(v23 + 24) = v33;
        a2 = v44;
        _os_log_impl(&dword_222B39000, v39, v47, "%s%s: %s", v23, 0x20u);
        v34 = v48;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v34, -1, -1);
        v35 = v23;
        v19 = v42;
        MEMORY[0x223DCA8C0](v35, -1, -1);
      }

      else
      {

        sub_222B4FCD4(v8, &qword_27D024CC8, &unk_222C96AA0);
        sub_222B4FCD4(v11, &qword_27D024CC8, &unk_222C96AA0);
      }

      sub_222B4FCD4(v14, &qword_27D024CC8, &unk_222C96AA0);
      v22 += v49;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_222C8A6B4(uint64_t a1)
{
  type metadata accessor for PhoneCallAbandonmentClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027EF0, &qword_222CA7B98);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDD3A8 = 91;
  *algn_280FDD3B0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C8A740(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222CA7B20;
  v22 = v10;
  v11 = (v10 + v9);
  *v11 = 0xD00000000000001CLL;
  v11[1] = 0x8000000222CAAC90;
  swift_storeEnumTagMultiPayload();
  v12 = (v11 + v8);
  *v12 = 0xD00000000000001FLL;
  v12[1] = 0x8000000222CAE4B0;
  isSiriPhoneCall(_:)(a1);
  swift_storeEnumTagMultiPayload();
  sub_222B73D68(v6, v11 + v8 + *(v7 + 48), type metadata accessor for RuleResult);
  v13 = (v11 + 2 * v8);
  v14 = *(v7 + 48);
  *v13 = 0xD00000000000001CLL;
  v13[1] = 0x8000000222CA9B40;
  sub_222C432CC(a1, (v13 + v14));
  v15 = (v11 + 3 * v8);
  v16 = *(v7 + 48);
  *v15 = 0xD00000000000001CLL;
  v15[1] = 0x8000000222CAE4D0;
  sub_222C8AA44(a1, v15 + v16);
  v17 = (v11 + 4 * v8);
  *v17 = 0xD000000000000011;
  v17[1] = 0x8000000222CAC6E0;
  v18 = type metadata accessor for FeaturisedTurn(0);
  v19 = sub_222B41B30(*(a1 + *(v18 + 24)));
  if (v19)
  {
    if (v19 >> 62)
    {
      sub_222C94C6C();
    }
  }

  v20 = v23;
  swift_storeEnumTagMultiPayload();
  sub_222B73D68(v20, v17 + *(v7 + 48), type metadata accessor for RuleResult);
  return v22;
}

uint64_t sub_222C8AA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v20);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FeaturisedTurn(0);
  v5 = *(a1 + *(result + 28));
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_12:

    return swift_storeEnumTagMultiPayload();
  }

  v7 = 0;
  v8 = (v5 + 64);
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = *(v8 - 2);
    v11 = *(v8 - 1);
    v10 = *v8;

    v12 = sub_222B41F28(v9);
    if (v13)
    {
      goto LABEL_4;
    }

    if (v11 != 0xD000000000000011 || 0x8000000222CA8780 != v10)
    {
      break;
    }

    if (v12 == 1)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v7;

    v8 += 5;
    if (v6 == v7)
    {
      goto LABEL_12;
    }
  }

  v14 = v12;
  if ((sub_222C951FC() & 1) == 0 || v14 != 1)
  {
    goto LABEL_4;
  }

LABEL_11:

  v16 = sub_222B41CFC(v15);

  swift_bridgeObjectRelease_n();

  if (v16 == 2)
  {
    goto LABEL_12;
  }

  v17 = v19;
  swift_storeEnumTagMultiPayload();
  return sub_222B73D68(v17, v21, type metadata accessor for RuleResult);
}

unint64_t sub_222C8ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  sub_222C434E4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_222B4FCD4(v4, &qword_27D0253C8, &unk_222C98400);
    if (*(a1 + 16))
    {
LABEL_3:
      v12 = sub_222C9360C();
      v14 = v13;
LABEL_7:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v18 = sub_222C9431C();
      __swift_project_value_buffer(v18, qword_280FE2340);

      v19 = sub_222C942FC();
      v20 = sub_222C94A3C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v49 = v22;
        *v21 = 136315394;
        if (qword_280FDD3A0 != -1)
        {
          swift_once();
        }

        *(v21 + 4) = sub_222B437C0(qword_280FDD3A8, *algn_280FDD3B0, &v49);
        *(v21 + 12) = 2080;
        v23 = sub_222B437C0(v12, v14, &v49);

        *(v21 + 14) = v23;
        _os_log_impl(&dword_222B39000, v19, v20, "%s Skipping conversation with id=%s with no dismissal features", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v22, -1, -1);
        MEMORY[0x223DCA8C0](v21, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }

LABEL_6:
    v14 = 0x8000000222CA9B80;
    v12 = 0xD000000000000014;
    goto LABEL_7;
  }

  sub_222B73D68(v4, v11, type metadata accessor for FeaturisedTurn);
  v15 = *&v11[*(v5 + 24)];
  v16 = sub_222B41494(v15);
  if (v17)
  {
    sub_222C8B528(v11, type metadata accessor for FeaturisedTurn);
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v48 = v16;
  v25 = sub_222C8A740(v11);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v26 = sub_222C9431C();
  __swift_project_value_buffer(v26, qword_280FE2340);
  sub_222B78534(v11, v8);
  v27 = sub_222C942FC();
  v28 = sub_222C94A3C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = v30;
    *v29 = 136315394;
    if (qword_280FDD3A0 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_222B437C0(qword_280FDD3A8, *algn_280FDD3B0, &v49);
    *(v29 + 12) = 2080;
    sub_222C9367C();
    sub_222B9E5D0();
    v31 = sub_222C9517C();
    v33 = v32;
    sub_222C8B528(v8, type metadata accessor for FeaturisedTurn);
    v34 = sub_222B437C0(v31, v33, &v49);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_222B39000, v27, v28, "%s Rule Matrix for turnId=%s:", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v30, -1, -1);
    MEMORY[0x223DCA8C0](v29, -1, -1);
  }

  else
  {

    sub_222C8B528(v8, type metadata accessor for FeaturisedTurn);
  }

  sub_222C8A24C(8224, 0xE200000000000000, v25);
  v35 = sub_222C1EC00(v25);

  if (!v35)
  {
    sub_222C8B528(v11, type metadata accessor for FeaturisedTurn);
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v36 = swift_allocObject();
  v47 = xmmword_222C97C40;
  *(v36 + 16) = xmmword_222C97C40;
  result = sub_222B41B30(v15);
  if (!result)
  {
    goto LABEL_34;
  }

  v37 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    goto LABEL_33;
  }

  v39 = result;
  v40 = sub_222C94C6C();
  result = v39;
  if (!v40)
  {
LABEL_33:

LABEL_34:
    v38 = 0;
    goto LABEL_35;
  }

LABEL_27:
  if ((result & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x223DC9B30](0);
    goto LABEL_30;
  }

  if (*(v37 + 16))
  {
    v38 = *(result + 32);

LABEL_30:

LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v41 = sub_222C9367C();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v47;
    (*(v42 + 16))(v44 + v43, v11, v41);
    *(v36 + 56) = &type metadata for PhoneCallAbandonmentClassification;
    *(v36 + 64) = &protocol witness table for PhoneCallAbandonmentClassification;
    v45 = swift_allocObject();
    *(v36 + 32) = v45;
    v45[2] = v48;
    v45[3] = v38;
    v46 = MEMORY[0x277D84F90];
    v45[4] = v44;
    v45[5] = v46;
    sub_222C8B528(v11, type metadata accessor for FeaturisedTurn);
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C8B4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C8B528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AsyncCoreDuetEventStreamProcessor.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t sub_222C8B5B0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_222C8B5D0, 0, 0);
}

uint64_t sub_222C8B5D0()
{
  v34 = v0;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v1 = sub_222C9431C();
  __swift_project_value_buffer(v1, qword_280FE2340);

  v2 = sub_222C942FC();
  v3 = sub_222C94A5C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_222B437C0(*(v5 + 16), *(v5 + 24), &v33);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v4 + 16);

    _os_log_impl(&dword_222B39000, v2, v3, "%s Processing %ld events", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223DCA8C0](v7, -1, -1);
    MEMORY[0x223DCA8C0](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[13];
  v8 = v0[14];
  v10 = v8[7];
  v11 = v8[8];
  __swift_project_boxed_opaque_existential_1(v8 + 4, v10);
  v12 = *(v11 + 8);
  v13 = *(v12 + 24);
  v0[5] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[15] = AssociatedConformanceWitness;
  v0[6] = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v13(v10, v12);
  v15 = MEMORY[0x277D84F90];
  v0[12] = MEMORY[0x277D84F90];
  v16 = *(v9 + 16);
  v0[16] = v16;
  if (v16)
  {
    v17 = v0[13];
    v0[17] = v15;
    v0[18] = 0;
    v31 = v0[15];
    v18 = v17[5];
    v0[19] = v18;
    v19 = v17[6];
    v0[20] = v19;
    v20 = v17[8];
    v0[21] = v20;
    v21 = v17[7];
    v0[7] = v17[4];
    v0[8] = v18;
    v0[9] = v19;
    v0[10] = v21;
    v0[11] = v20;
    v22 = v0[5];
    v23 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v22);
    v24 = *(v31 + 24);

    v30 = (v24 + *v24);
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_222C8BA60;

    return v30(v0 + 7, v22, v23);
  }

  else
  {
    v0[25] = v15;
    v27 = v0[5];
    v28 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v27);
    v32 = (*(v28 + 32) + **(v28 + 32));
    v29 = swift_task_alloc();
    v0[26] = v29;
    *v29 = v0;
    v29[1] = sub_222C8BF3C;

    return v32(v27, v28);
  }
}

uint64_t sub_222C8BA60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_222C8C140;
  }

  else
  {

    v4 = sub_222C8BBA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_222C8BBA0()
{
  v1 = *(v0 + 184);
  result = *(v0 + 136);
  v3 = *(v1 + 16);
  v4 = *(result + 2);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 136);
  if (result && (v7 = *(v6 + 3) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = sub_222B4A35C(result, v11, 1, *(v0 + 136));
    v6 = result;
    v7 = *(result + 3) >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 2) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 2);
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          *(v6 + 2) = v10;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v12 = *(v0 + 128);
  v13 = *(v0 + 144) + 1;
  *(v0 + 96) = v6;
  if (v13 == v12)
  {
    *(v0 + 200) = v6;
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
    v27 = (*(v15 + 32) + **(v15 + 32));
    v16 = swift_task_alloc();
    *(v0 + 208) = v16;
    *v16 = v0;
    v16[1] = sub_222C8BF3C;

    return v27(v14, v15);
  }

  else
  {
    *(v0 + 136) = v6;
    *(v0 + 144) = v13;
    v28 = *(v0 + 120);
    v17 = (*(v0 + 104) + 40 * v13);
    v18 = v17[5];
    *(v0 + 152) = v18;
    v19 = v17[6];
    *(v0 + 160) = v19;
    v20 = v17[8];
    *(v0 + 168) = v20;
    v21 = v17[7];
    *(v0 + 56) = v17[4];
    *(v0 + 64) = v18;
    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v20;
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v22);
    v24 = *(v28 + 24);

    v26 = (v24 + *v24);
    v25 = swift_task_alloc();
    *(v0 + 176) = v25;
    *v25 = v0;
    v25[1] = sub_222C8BA60;

    return v26(v0 + 56, v22, v23);
  }
}

uint64_t sub_222C8BF3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {

    v5 = sub_222C8C1C0;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_222C8C06C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222C8C06C()
{
  v6 = v0;
  v1 = v0[27];
  sub_222B49224(v0[28]);
  v5 = v0[12];

  sub_222C8C978(&v5);
  if (v1)
  {
  }

  else
  {

    v3 = v5;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_222C8C140()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C8C1C0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t EventStreamContext.init(dateRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222C932BC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t EventStreamContext.dateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C932BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_222C8C2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_222C935EC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v37 = &v35 - v20;
  v21 = *(a1 + 16);
  v36 = *(a2 + 16);
  sub_222B41CB8(v21, v12);
  v22 = *(v17 + 48);
  if (v22(v12, 1, v16) == 1)
  {
    sub_222B41CE4(v21);
    if (v23)
    {
      v24 = 1;
    }

    else
    {
      sub_222C935AC();
      v24 = 0;
    }

    v25 = *(v17 + 56);
    v25(v15, v24, 1, v16);
    if (v22(v12, 1, v16) != 1)
    {
      sub_222BA2994(v12);
    }
  }

  else
  {
    (*(v17 + 32))(v15, v12, v16);
    v25 = *(v17 + 56);
    v25(v15, 0, 1, v16);
  }

  v26 = v22(v15, 1, v16);
  v27 = v37;
  if (v26 == 1)
  {
    sub_222C9353C();
    if (v22(v15, 1, v16) != 1)
    {
      sub_222BA2994(v15);
    }
  }

  else
  {
    (*(v17 + 32))(v37, v15, v16);
  }

  v28 = v36;
  sub_222B41CB8(v36, v6);
  if (v22(v6, 1, v16) == 1)
  {
    sub_222B41CE4(v28);
    if (v29)
    {
      v30 = 1;
    }

    else
    {
      sub_222C935AC();
      v30 = 0;
    }

    v25(v9, v30, 1, v16);
    if (v22(v6, 1, v16) != 1)
    {
      sub_222BA2994(v6);
    }
  }

  else
  {
    (*(v17 + 32))(v9, v6, v16);
    v25(v9, 0, 1, v16);
  }

  if (v22(v9, 1, v16) == 1)
  {
    v31 = v38;
    sub_222C9352C();
    if (v22(v9, 1, v16) != 1)
    {
      sub_222BA2994(v9);
    }
  }

  else
  {
    v31 = v38;
    (*(v17 + 32))(v38, v9, v16);
  }

  v32 = sub_222C9357C();
  v33 = *(v17 + 8);
  v33(v31, v16);
  v33(v27, v16);
  return v32 & 1;
}

uint64_t AsyncCoreDuetEventStreamProcessor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_222C8C7E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222C8C878;

  return sub_222C8B5B0(a1);
}

uint64_t sub_222C8C878(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_222C8C978(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_222C84878(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_222C8CD48(v4);
  *a1 = v2;
}

uint64_t type metadata accessor for EventStreamContext(uint64_t a1)
{
  result = qword_280FDF678;
  if (!qword_280FDF678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C8CA58(uint64_t a1)
{
  result = sub_222C932BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of EventStreamProcessing.process(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222C00D84;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncCoreDuetEventStreamProcessor.process(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222C00E84;

  return v6(a1);
}

void sub_222C8CD48(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_222C9514C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_222C9478C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_222C8D47C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_222C8CE40(0, v2, 1, a1);
  }
}

void sub_222C8CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v56 - v14);
  MEMORY[0x28223BE20](v16);
  v66 = &v56 - v17;
  v18 = sub_222C935EC();
  MEMORY[0x28223BE20](v18);
  v61 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v76 = &v56 - v22;
  v57 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v75 = (v21 + 32);
    v73 = (v21 + 48);
    v74 = (v21 + 56);
    v62 = (v21 + 8);
    v63 = v15;
    v64 = v12;
    v65 = v23;
    v24 = v23 + 40 * a3 - 40;
    v25 = a1 - a3;
LABEL_5:
    v59 = v24;
    v60 = a3;
    v26 = v65 + 40 * a3;
    v27 = *(v26 + 8);
    v28 = *(v26 + 16);
    v58 = v25;
    v29 = v25;
    v30 = v61;
    while (1)
    {
      v31 = *(v24 + 8);
      v77 = *(v24 + 16);
      v32 = *(v24 + 32);
      v71 = v27;

      v70 = v31;

      v69 = v32;

      sub_222B41CB8(v28, v15);
      v33 = *v73;
      v34 = (*v73)(v15, 1, v18);
      v72 = v29;
      if (v34 == 1)
      {
        sub_222B41CE4(v28);
        if (v35)
        {
          v36 = 1;
          v37 = v66;
        }

        else
        {
          v37 = v66;
          sub_222C935AC();
          v36 = 0;
        }

        v68 = *v74;
        v68(v37, v36, 1, v18);
        if (v33(v15, 1, v18) != 1)
        {
          sub_222BA2994(v15);
        }

        v38 = v66;
        v39 = v61;
      }

      else
      {
        v38 = v66;
        (*v75)();
        v68 = *v74;
        v68(v38, 0, 1, v18);
        v39 = v30;
      }

      if (v33(v38, 1, v18) == 1)
      {
        sub_222C9353C();
        if (v33(v38, 1, v18) != 1)
        {
          sub_222BA2994(v38);
        }
      }

      else
      {
        (*v75)(v76, v38, v18);
      }

      v40 = v67;
      v41 = v77;
      sub_222B41CB8(v77, v67);
      if (v33(v40, 1, v18) == 1)
      {
        sub_222B41CE4(v41);
        if (v42)
        {
          v43 = 1;
          v44 = v64;
        }

        else
        {
          v44 = v64;
          sub_222C935AC();
          v43 = 0;
        }

        v68(v44, v43, 1, v18);
        v45 = v67;
        if (v33(v67, 1, v18) != 1)
        {
          sub_222BA2994(v45);
        }
      }

      else
      {
        v44 = v64;
        (*v75)();
        v68(v44, 0, 1, v18);
      }

      if (v33(v44, 1, v18) == 1)
      {
        sub_222C9352C();
        if (v33(v44, 1, v18) != 1)
        {
          sub_222BA2994(v44);
        }
      }

      else
      {
        (*v75)(v39, v44, v18);
      }

      v46 = v76;
      v47 = sub_222C9357C();
      v48 = *v62;
      v30 = v39;
      (*v62)();
      (v48)(v46, v18);

      v15 = v63;
      v49 = v72;
      if ((v47 & 1) == 0)
      {
LABEL_4:
        a3 = v60 + 1;
        v24 = v59 + 40;
        v25 = v58 - 1;
        if (v60 + 1 == v57)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v65)
      {
        break;
      }

      v27 = *(v24 + 48);
      v28 = *(v24 + 56);
      v50 = *(v24 + 16);
      v52 = *(v24 + 32);
      v51 = *(v24 + 40);
      *(v24 + 40) = *v24;
      v53 = *(v24 + 64);
      v54 = *(v24 + 72);
      *(v24 + 56) = v50;
      *(v24 + 72) = v52;
      *v24 = v51;
      *(v24 + 8) = v27;
      *(v24 + 16) = v28;
      *(v24 + 24) = v53;
      *(v24 + 32) = v54;
      v24 -= 40;
      v55 = __CFADD__(v49, 1);
      v29 = v49 + 1;
      if (v55)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_222C8D47C(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v195 = a4;
  v196 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v191 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v191 - v14);
  MEMORY[0x28223BE20](v16);
  v213 = &v191 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v191 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v191 - v22;
  MEMORY[0x28223BE20](v24);
  v205 = &v191 - v25;
  MEMORY[0x28223BE20](v26);
  v204 = &v191 - v27;
  v221 = sub_222C935EC();
  MEMORY[0x28223BE20](v221);
  v209 = &v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v218 = &v191 - v30;
  MEMORY[0x28223BE20](v31);
  v202 = &v191 - v32;
  MEMORY[0x28223BE20](v33);
  v206 = &v191 - v35;
  v36 = a3[1];
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_141:
    v9 = *v196;
    if (!*v196)
    {
      goto LABEL_181;
    }

    v12 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v186 = v12;
    }

    else
    {
LABEL_175:
      v186 = sub_222C8492C(v12);
    }

    v230 = v186;
    v12 = *(v186 + 2);
    if (v12 >= 2)
    {
      while (*a3)
      {
        v187 = *&v186[16 * v12];
        v188 = v186;
        v189 = *&v186[16 * v12 + 24];
        sub_222C8E728((*a3 + 40 * v187), (*a3 + 40 * *&v186[16 * v12 + 16]), (*a3 + 40 * v189), v9);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v189 < v187)
        {
          goto LABEL_168;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = sub_222C8492C(v188);
        }

        if (v12 - 2 >= *(v188 + 2))
        {
          goto LABEL_169;
        }

        v190 = &v188[16 * v12];
        *v190 = v187;
        *(v190 + 1) = v189;
        v230 = v188;
        sub_222C848A0(v12 - 1);
        v186 = v230;
        v12 = *(v230 + 2);
        if (v12 <= 1)
        {
          goto LABEL_152;
        }
      }

      goto LABEL_179;
    }

    goto LABEL_152;
  }

  v37 = (v34 + 48);
  v219 = (v34 + 56);
  v220 = (v34 + 32);
  v212 = (v34 + 8);
  v38 = MEMORY[0x277D84F90];
  v192 = a3;
  v214 = v9;
  v39 = 0;
  v208 = v12;
  v210 = v15;
  v203 = v20;
  v201 = v23;
  v223 = v37;
  while (1)
  {
    v40 = v39;
    v41 = v39 + 1;
    v197 = v40;
    if (v41 < v36)
    {
      v207 = v36;
      v194 = v38;
      v42 = *a3;
      v43 = (*a3 + 40 * v41);
      v44 = v43[1];
      v46 = v43[2];
      v45 = v43[3];
      v47 = v43[4];
      v225 = *v43;
      v226 = v44;
      v227 = v46;
      v228 = v45;
      v229 = v47;
      v48 = (v42 + 40 * v40);
      v49 = v48[1];
      v51 = v48[2];
      v50 = v48[3];
      v52 = v48[4];
      v224[0] = *v48;
      v224[1] = v49;
      v224[2] = v51;
      v224[3] = v50;
      v224[4] = v52;

      LODWORD(v211) = sub_222C8C2F8(&v225, v224);
      if (!v5)
      {
        v193 = 0;

        v9 = v226;
        v12 = v227;

        v53 = v40 + 2;
        v200 = 40 * v40;
        v54 = (v42 + 40 * v40 + 56);
        while (1)
        {
          v57 = v207;
          v58 = v205;
          if (v207 == v53)
          {
            break;
          }

          v59 = v54[4];
          v60 = v54[5];
          v61 = v54[7];
          v62 = *(v54 - 1);
          v12 = *v54;
          v63 = v54[2];

          v215 = v61;

          v216 = v63;

          sub_222B41CB8(v60, v58);
          v64 = *v223;
          v65 = v221;
          v66 = (*v223)(v58, 1, v221);
          v222 = v62;
          v217 = v59;
          if (v66 == 1)
          {
            sub_222B41CE4(v60);
            if (v67)
            {
              v68 = 1;
              v69 = v204;
            }

            else
            {
              v69 = v204;
              sub_222C935AC();
              v68 = 0;
            }

            v71 = *v219;
            v72 = v221;
            (*v219)(v69, v68, 1, v221);
            v73 = v205;
            if (v64(v205, 1, v72) != 1)
            {
              sub_222BA2994(v73);
            }

            v70 = v204;
            v65 = v221;
          }

          else
          {
            v70 = v204;
            (*v220)();
            v71 = *v219;
            (*v219)(v70, 0, 1, v65);
          }

          if (v64(v70, 1, v65) == 1)
          {
            sub_222C9353C();
            if (v64(v70, 1, v65) != 1)
            {
              sub_222BA2994(v70);
            }
          }

          else
          {
            (*v220)(v206, v70, v65);
          }

          v74 = v203;
          sub_222B41CB8(v12, v203);
          if (v64(v74, 1, v65) == 1)
          {
            sub_222B41CE4(v12);
            if (v75)
            {
              v76 = 1;
              v77 = v201;
            }

            else
            {
              v77 = v201;
              sub_222C935AC();
              v76 = 0;
            }

            v65 = v221;
            v71(v77, v76, 1, v221);
            v78 = v203;
            if (v64(v203, 1, v65) != 1)
            {
              sub_222BA2994(v78);
            }
          }

          else
          {
            v77 = v201;
            (*v220)(v201, v74, v65);
            v71(v77, 0, 1, v65);
          }

          v79 = v64(v77, 1, v65);
          v80 = v202;
          if (v79 == 1)
          {
            sub_222C9352C();
            if (v64(v77, 1, v65) != 1)
            {
              sub_222BA2994(v77);
            }
          }

          else
          {
            (*v220)(v202, v77, v65);
          }

          v55 = v206;
          v9 = sub_222C9357C();
          v56 = *v212;
          (*v212)(v80, v65);
          v56(v55, v65);

          ++v53;
          v54 += 5;
          if ((v211 ^ v9))
          {
            v57 = v53 - 1;
            break;
          }
        }

        v5 = v193;
        a3 = v192;
        v82 = v196;
        v81 = v195;
        v38 = v194;
        v37 = v223;
        v15 = v210;
        if (v211)
        {
          v83 = v197;
          if (v57 < v197)
          {
            goto LABEL_174;
          }

          if (v197 < v57)
          {
            v84 = 40 * v57 - 16;
            v85 = v200 + 32;
            v86 = v57;
            do
            {
              if (v83 != --v86)
              {
                v95 = *a3;
                if (!*a3)
                {
                  goto LABEL_178;
                }

                v87 = (v95 + v85);
                v88 = *(v95 + v85 - 32);
                v89 = (v95 + v84);
                v90 = *(v87 - 1);
                v91 = *v87;
                v92 = *(v87 - 3);
                v93 = v89[1];
                v94 = *(v89 - 1);
                *(v87 - 2) = *(v89 - 3);
                *(v87 - 1) = v94;
                *v87 = v93;
                *(v89 - 3) = v88;
                *(v89 - 1) = v92;
                *v89 = v90;
                v89[1] = v91;
              }

              ++v83;
              v84 -= 40;
              v85 += 40;
            }

            while (v83 < v86);
          }
        }

        goto LABEL_43;
      }

LABEL_152:

      return;
    }

    v57 = v41;
    v81 = v195;
    v82 = v196;
LABEL_43:
    v96 = a3[1];
    if (v57 >= v96)
    {
      goto LABEL_53;
    }

    if (__OFSUB__(v57, v197))
    {
      goto LABEL_171;
    }

    if (v57 - v197 >= v81)
    {
LABEL_53:
      v99 = v57;
      goto LABEL_54;
    }

    if (__OFADD__(v197, v81))
    {
      goto LABEL_172;
    }

    if (v197 + v81 >= v96)
    {
      v97 = a3[1];
    }

    else
    {
      v97 = v197 + v81;
    }

    if (v97 < v197)
    {
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v98 = v197;
    if (v57 == v97)
    {
      v99 = v57;
      goto LABEL_55;
    }

    v194 = v38;
    v193 = v5;
    v211 = *a3;
    v149 = v211 + 40 * v57 - 40;
    v150 = v197 - v57;
    v151 = v221;
    v198 = v97;
LABEL_109:
    v207 = v57;
    v152 = v211 + 40 * v57;
    v9 = *(v152 + 8);
    v12 = *(v152 + 16);
    v199 = v150;
    v153 = v150;
    v200 = v149;
LABEL_110:
    v215 = v153;
    v154 = *(v149 + 8);
    v155 = *(v149 + 16);
    v156 = *(v149 + 32);

    v217 = v154;

    v222 = v155;

    v216 = v156;

    sub_222B41CB8(v12, v15);
    v157 = *v37;
    if ((*v37)(v15, 1, v151) == 1)
    {
      sub_222B41CE4(v12);
      if (v158)
      {
        v159 = 1;
        v160 = v213;
      }

      else
      {
        v160 = v213;
        sub_222C935AC();
        v159 = 0;
      }

      v162 = *v219;
      v163 = v160;
      v164 = v221;
      (*v219)(v163, v159, 1, v221);
      if (v157(v15, 1, v164) != 1)
      {
        sub_222BA2994(v15);
      }

      v161 = v213;
      v151 = v221;
    }

    else
    {
      v161 = v213;
      (*v220)(v213, v15, v151);
      v162 = *v219;
      (*v219)(v161, 0, 1, v151);
    }

    if (v157(v161, 1, v151) == 1)
    {
      sub_222C9353C();
      if (v157(v161, 1, v151) != 1)
      {
        sub_222BA2994(v161);
      }
    }

    else
    {
      (*v220)(v218, v161, v151);
    }

    v165 = v214;
    v166 = v222;
    sub_222B41CB8(v222, v214);
    if (v157(v165, 1, v151) == 1)
    {
      sub_222B41CE4(v166);
      if (v167)
      {
        v168 = 1;
        v169 = v208;
      }

      else
      {
        v169 = v208;
        sub_222C935AC();
        v168 = 0;
      }

      v151 = v221;
      v162(v169, v168, 1, v221);
      if (v157(v214, 1, v151) != 1)
      {
        sub_222BA2994(v214);
      }
    }

    else
    {
      v169 = v208;
      (*v220)();
      v162(v169, 0, 1, v151);
    }

    if (v157(v169, 1, v151) == 1)
    {
      v170 = v209;
      sub_222C9352C();
      v171 = v157(v169, 1, v151);
      v172 = v170;
      v173 = v151;
      if (v171 != 1)
      {
        sub_222BA2994(v169);
      }
    }

    else
    {
      v172 = v209;
      (*v220)(v209, v169, v151);
      v173 = v151;
    }

    v174 = v218;
    v175 = sub_222C9357C();
    v176 = v172;
    v177 = v175;
    v178 = *v212;
    (*v212)(v176, v173);
    v178(v174, v173);

    if (v177)
    {
      break;
    }

    v15 = v210;
    v151 = v221;
    v37 = v223;
LABEL_108:
    v57 = v207 + 1;
    v149 = v200 + 40;
    v150 = v199 - 1;
    v99 = v198;
    if (v207 + 1 != v198)
    {
      goto LABEL_109;
    }

    v5 = v193;
    a3 = v192;
    v82 = v196;
    v38 = v194;
LABEL_54:
    v98 = v197;
LABEL_55:
    if (v99 < v98)
    {
      goto LABEL_170;
    }

    v198 = v99;
    v100 = v38;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = v100;
    }

    else
    {
      v38 = sub_222B4B304(0, *(v100 + 2) + 1, 1, v100);
    }

    v102 = *(v38 + 2);
    v101 = *(v38 + 3);
    v12 = v102 + 1;
    v103 = v198;
    if (v102 >= v101 >> 1)
    {
      v38 = sub_222B4B304((v101 > 1), v102 + 1, 1, v38);
    }

    *(v38 + 2) = v12;
    v104 = &v38[16 * v102];
    *(v104 + 4) = v197;
    *(v104 + 5) = v103;
    v9 = *v82;
    if (!*v82)
    {
      goto LABEL_180;
    }

    if (v102)
    {
      while (2)
      {
        v105 = v12 - 1;
        if (v12 >= 4)
        {
          v110 = &v38[16 * v12 + 32];
          v111 = *(v110 - 64);
          v112 = *(v110 - 56);
          v116 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          if (v116)
          {
            goto LABEL_157;
          }

          v115 = *(v110 - 48);
          v114 = *(v110 - 40);
          v116 = __OFSUB__(v114, v115);
          v108 = v114 - v115;
          v109 = v116;
          if (v116)
          {
            goto LABEL_158;
          }

          v117 = &v38[16 * v12];
          v119 = *v117;
          v118 = *(v117 + 1);
          v116 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v116)
          {
            goto LABEL_160;
          }

          v116 = __OFADD__(v108, v120);
          v121 = v108 + v120;
          if (v116)
          {
            goto LABEL_163;
          }

          if (v121 >= v113)
          {
            v139 = &v38[16 * v105 + 32];
            v141 = *v139;
            v140 = *(v139 + 1);
            v116 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v116)
            {
              goto LABEL_167;
            }

            if (v108 < v142)
            {
              v105 = v12 - 2;
            }
          }

          else
          {
LABEL_75:
            if (v109)
            {
              goto LABEL_159;
            }

            v122 = &v38[16 * v12];
            v124 = *v122;
            v123 = *(v122 + 1);
            v125 = __OFSUB__(v123, v124);
            v126 = v123 - v124;
            v127 = v125;
            if (v125)
            {
              goto LABEL_162;
            }

            v128 = &v38[16 * v105 + 32];
            v130 = *v128;
            v129 = *(v128 + 1);
            v116 = __OFSUB__(v129, v130);
            v131 = v129 - v130;
            if (v116)
            {
              goto LABEL_165;
            }

            if (__OFADD__(v126, v131))
            {
              goto LABEL_166;
            }

            if (v126 + v131 < v108)
            {
              goto LABEL_89;
            }

            if (v108 < v131)
            {
              v105 = v12 - 2;
            }
          }
        }

        else
        {
          if (v12 == 3)
          {
            v106 = *(v38 + 4);
            v107 = *(v38 + 5);
            v116 = __OFSUB__(v107, v106);
            v108 = v107 - v106;
            v109 = v116;
            goto LABEL_75;
          }

          v132 = &v38[16 * v12];
          v134 = *v132;
          v133 = *(v132 + 1);
          v116 = __OFSUB__(v133, v134);
          v126 = v133 - v134;
          v127 = v116;
LABEL_89:
          if (v127)
          {
            goto LABEL_161;
          }

          v135 = &v38[16 * v105];
          v137 = *(v135 + 4);
          v136 = *(v135 + 5);
          v116 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v116)
          {
            goto LABEL_164;
          }

          if (v138 < v126)
          {
            break;
          }
        }

        v143 = v105 - 1;
        if (v105 - 1 >= v12)
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*a3)
        {
          goto LABEL_177;
        }

        v144 = v15;
        v145 = v38;
        v12 = *&v38[16 * v143 + 32];
        v146 = *&v38[16 * v105 + 40];
        sub_222C8E728((*a3 + 40 * v12), (*a3 + 40 * *&v38[16 * v105 + 32]), (*a3 + 40 * v146), v9);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v146 < v12)
        {
          goto LABEL_155;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v147 = v145;
        }

        else
        {
          v147 = sub_222C8492C(v145);
        }

        if (v143 >= *(v147 + 2))
        {
          goto LABEL_156;
        }

        v15 = v144;
        v148 = &v147[16 * v143];
        *(v148 + 4) = v12;
        *(v148 + 5) = v146;
        v230 = v147;
        sub_222C848A0(v105);
        v38 = v230;
        v12 = *(v230 + 2);
        v37 = v223;
        if (v12 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v36 = a3[1];
    v39 = v198;
    if (v198 >= v36)
    {
      goto LABEL_141;
    }
  }

  v15 = v210;
  v37 = v223;
  v179 = v215;
  if (v211)
  {
    v9 = *(v149 + 48);
    v12 = *(v149 + 56);
    v180 = *(v149 + 16);
    v182 = *(v149 + 32);
    v181 = *(v149 + 40);
    *(v149 + 40) = *v149;
    v183 = *(v149 + 64);
    v184 = *(v149 + 72);
    *(v149 + 56) = v180;
    *(v149 + 72) = v182;
    *v149 = v181;
    *(v149 + 8) = v9;
    *(v149 + 16) = v12;
    *(v149 + 24) = v183;
    *(v149 + 32) = v184;
    v149 -= 40;
    v185 = __CFADD__(v179, 1);
    v153 = v179 + 1;
    v151 = v221;
    if (v185)
    {
      goto LABEL_108;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
}

uint64_t sub_222C8E728(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 < v10)
  {
    v11 = __dst;
    if (__dst != __src || &__src[40 * v8] <= __dst)
    {
      memmove(__dst, __src, 40 * v8);
    }

    v12 = __src;
    v13 = &v11[40 * v8];
    if (v7 < 40)
    {
      v30 = v12;
      goto LABEL_42;
    }

    v14 = v74;
    if (v5 >= v4)
    {
LABEL_16:
      v30 = v12;
      goto LABEL_42;
    }

    while (1)
    {
      v15 = v4;
      v16 = *(v5 + 1);
      v18 = *(v5 + 2);
      v17 = *(v5 + 3);
      v19 = *(v5 + 4);
      v69 = *v5;
      v70 = v16;
      v71 = v18;
      v72 = v17;
      v73 = v19;
      v20 = *(v11 + 1);
      v22 = *(v11 + 2);
      v21 = *(v11 + 3);
      v23 = *(v11 + 4);
      v62 = v12;
      v64 = *v11;
      v65 = v20;
      v66 = v22;
      v67 = v21;
      v68 = v23;

      v24 = sub_222C8C2F8(&v69, &v64);
      if (v14)
      {

        v54 = (v13 - v11) / 40;
        v30 = v62;
        if (v62 < v11)
        {
          goto LABEL_45;
        }

LABEL_43:
        if (v30 >= &v11[40 * v54] || v30 != v11)
        {
LABEL_45:
          v57 = 40 * v54;
          v55 = v11;
LABEL_46:
          memmove(v30, v55, v57);
        }

        return 1;
      }

      v25 = v24;

      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v5;
      v27 = v62 == v5;
      v5 += 40;
      v4 = v15;
      if (!v27)
      {
        goto LABEL_13;
      }

LABEL_14:
      v12 = v62 + 40;
      if (v11 >= v13 || v5 >= v4)
      {
        goto LABEL_16;
      }
    }

    v26 = v11;
    v27 = v62 == v11;
    v11 += 40;
    v4 = v15;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_13:
    v28 = *v26;
    v29 = *(v26 + 1);
    *(v62 + 4) = *(v26 + 4);
    *v62 = v28;
    *(v62 + 1) = v29;
    goto LABEL_14;
  }

  if (__dst != a2 || &a2[40 * v10] <= __dst)
  {
    v31 = __dst;
    memmove(__dst, a2, 40 * v10);
    __dst = v31;
  }

  __srca = __dst;
  v13 = &__dst[40 * v10];
  if (v9 < 40 || v5 <= __src)
  {
    v30 = v5;
    v11 = __dst;
    goto LABEL_42;
  }

LABEL_22:
  v32 = 0;
  v33 = v13;
  v59 = v5 - 40;
  v60 = v4;
  while (1)
  {
    v34 = v33;
    v35 = &v33[v32];
    v36 = &v33[v32 - 40];
    v37 = *&v33[v32 - 32];
    v38 = *&v33[v32 - 24];
    v39 = *&v33[v32 - 16];
    v40 = *(v35 - 1);
    v69 = *v36;
    v70 = v37;
    v71 = v38;
    v72 = v39;
    v73 = v40;
    v41 = *(v5 - 4);
    v43 = *(v5 - 3);
    v42 = *(v5 - 2);
    v44 = *(v5 - 1);
    v64 = *(v5 - 5);
    v65 = v41;
    v66 = v43;
    v67 = v42;
    v68 = v44;

    v45 = v74;
    v46 = sub_222C8C2F8(&v69, &v64);
    v74 = v45;
    if (v45)
    {
      break;
    }

    v47 = v46;

    if (v47)
    {
      v30 = v5 - 40;
      v4 = &v60[v32 - 40];
      if (&v60[v32] != v5)
      {
        v51 = *v59;
        v52 = *(v5 - 24);
        *&v60[v32 - 8] = *(v5 - 1);
        *v4 = v51;
        *&v60[v32 - 24] = v52;
      }

      v53 = v34;
      v13 = &v34[v32];
      v11 = __srca;
      if (v13 <= __srca || (v5 -= 40, v59 <= __src))
      {
        v13 = &v53[v32];
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (&v60[v32] != v35)
    {
      v48 = &v60[v32 - 40];
      v49 = *v36;
      v50 = *(v36 + 16);
      *(v48 + 32) = *(v36 + 32);
      *v48 = v49;
      *(v48 + 16) = v50;
    }

    v32 -= 40;
    v33 = v34;
    v13 = &v34[v32];
    v11 = __srca;
    if (v13 <= __srca)
    {
      v30 = v5;
LABEL_42:
      v54 = (v13 - v11) / 40;
      if (v30 < v11)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }

  v55 = __srca;
  v56 = (v34 - __srca + v32) / 40;
  if (v5 < __srca || v5 >= &__srca[40 * v56])
  {
    memmove(v5, __srca, 40 * v56);
  }

  else if (v5 != __srca)
  {
    v57 = 40 * v56;
    v30 = v5;
    goto LABEL_46;
  }

  return 1;
}

uint64_t UsoPersonRecipients.__allocating_init(value:)(uint64_t a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C9BAE0;
  *(v2 + 32) = a1;
  type metadata accessor for UsoPersonRecipients(0);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

void *sub_222C8ECA4(uint64_t a1)
{
  if (!sub_222C93C3C())
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_222C8F310();

  return v1;
}

void *sub_222C8ED04(void *a1)
{
  if (!sub_222C93C3C())
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_222C8F310();

  return v1;
}

uint64_t UsoPersonRecipients.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t UsoPersonRecipients.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C8EEA0(uint64_t *a1)
{
  type metadata accessor for UsoPersonRecipients(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C8EEEC(uint64_t *a1)
{
  type metadata accessor for UsoPersonRecipients(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222C8EF38()
{
  v0 = sub_222C937CC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      return 1;
    }
  }

  v5 = sub_222C937BC();
  if (v5)
  {
    if (v5 >> 62)
    {
      v8 = sub_222C94C6C();

      if (v8)
      {
        return 1;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_222C8EFDC()
{
  v0 = sub_222C937AC();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    v22 = MEMORY[0x277D84F90];
    v3 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 >> 62)
    {
LABEL_35:
      v4 = sub_222C94C6C();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v17 = v4;
        v18 = v2 & 0xC000000000000001;
        v15 = v2;
        v16 = v3;
        do
        {
          v14 = v1;
          v6 = v5;
          while (1)
          {
            if (v18)
            {
              v7 = MEMORY[0x223DC9B30](v6, v2);
              v5 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v6 >= *(v3 + 16))
              {
                goto LABEL_34;
              }

              v7 = *(v2 + 8 * v6 + 32);

              v5 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }
            }

            sub_222C936DC();
            if (v20)
            {
              sub_222C936BC();
            }

            sub_222C9378C();
            sub_222C9381C();

            if (v21)
            {
              break;
            }

            v1 = v7;
            sub_222C936DC();
            if (v20)
            {
              v1 = v20;
              sub_222C9373C();
              if (v8)
              {
                sub_222C9394C();
                swift_allocObject();
                v9 = sub_222C9393C();
                sub_222C9392C();

                if (sub_222C9372C())
                {
                  sub_222C939BC();
                  v11 = v10;

                  if (v11)
                  {
                    sub_222C93ACC();
                    swift_allocObject();
                    sub_222C93ABC();
                    sub_222C93AAC();

                    sub_222C9391C();
                    v2 = v15;
                  }
                }

                v1 = MEMORY[0x223DC8590](v9);
                sub_222C9381C();

                v3 = v16;
                v4 = v17;
                if (v19)
                {
                  goto LABEL_26;
                }
              }

              else
              {

                v4 = v17;
              }
            }

            else
            {
            }

            ++v6;
            if (v5 == v4)
            {
              v1 = v14;
              goto LABEL_31;
            }
          }

LABEL_26:
          MEMORY[0x223DC94A0](v12);
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222C9475C();
            v2 = v15;
          }

          sub_222C947AC();
          v1 = v22;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

LABEL_31:
  }

  return v1;
}

void *sub_222C8F310()
{
  v3 = MEMORY[0x223DC84A0]();
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v30 = v3;
  v31 = sub_222C94C6C();
  v3 = v30;
  if (!v31)
  {
    goto LABEL_32;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC9B30](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_36:
      v25 = v4;
      if (sub_222C94C6C())
      {
        v32 = sub_222C94C6C();
        v4 = v25;
        v9 = v32;
        if (!v32)
        {
          v14 = MEMORY[0x277D84F90];
          goto LABEL_27;
        }

LABEL_11:
        v10 = v4;
        *&v38 = MEMORY[0x277D84F90];
        v11 = &v38;
        sub_222B4C418(0, v9 & ~(v9 >> 63), 0);
        if (v9 < 0)
        {
          __break(1u);
          goto LABEL_46;
        }

        v13 = 0;
        v14 = v38;
        v15 = v10;
        v16 = v10 & 0xC000000000000001;
        v17 = v10;
        do
        {
          if (v16)
          {
            MEMORY[0x223DC9B30](v13, v15);
          }

          else
          {
          }

          v18 = sub_222C9377C();
          v20 = v19;

          if (v20)
          {
            v21 = v18;
          }

          else
          {
            v21 = 0;
          }

          if (!v20)
          {
            v20 = 0xE000000000000000;
          }

          *&v38 = v14;
          v23 = *(v14 + 16);
          v22 = *(v14 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_222B4C418((v22 > 1), v23 + 1, 1);
            v14 = v38;
          }

          ++v13;
          *(v14 + 16) = v23 + 1;
          v24 = v14 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v20;
          v15 = v17;
        }

        while (v9 != v13);
        v25 = v17;
LABEL_27:
        v26 = type metadata accessor for SendMessageUSOFeature.RecipientNames(0);
        swift_allocObject();
        *&v38 = v14;
        v27 = sub_222C93EEC();
        v2 = sub_222B4A108(1, 2, 1, v37);
        v39 = v26;
        v40 = sub_222C8FA68(&qword_27D027F00, 255, type metadata accessor for SendMessageUSOFeature.RecipientNames, MEMORY[0x277D5FBA0]);
        *&v38 = v27;
        v2[2] = 2;
        sub_222B405A0(&v38, (v2 + 9));
        HasPayload = type metadata accessor for UsoPersonRecipients(0);
        swift_allocObject();
        *&v38 = v25;
        v11 = sub_222C93EEC();
        v0 = v2[2];
        v12 = v2[3];
        v10 = v0 + 1;
        if (v0 < v12 >> 1)
        {
          v28 = v2;
LABEL_29:

          sub_222BEB9B0(v42);
          v39 = HasPayload;
          v40 = sub_222C8FA68(&qword_27D026A30, 255, type metadata accessor for UsoPersonRecipients, MEMORY[0x277D5FBA0]);
          *&v38 = v11;
          v28[2] = v10;
          sub_222B405A0(&v38, &v28[5 * v0 + 4]);
          return v28;
        }

LABEL_46:
        v28 = sub_222B4A108((v12 > 1), v10, 1, v2);
        goto LABEL_29;
      }

      goto LABEL_39;
    }
  }

  sub_222C937DC();

  sub_222BEB940(v42, &v38);
  if (!v39)
  {
    sub_222BEB9B0(&v38);
    goto LABEL_26;
  }

  sub_222C938EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    sub_222BEB9B0(v42);
    return MEMORY[0x277D84F90];
  }

  v0 = v41;

  sub_222C9379C();

  if (!v38)
  {

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = sub_222C8EF38();
  HasPayload = type metadata accessor for SendMessageUSOFeature.MessageHasPayload(0);
  swift_allocObject();
  LOBYTE(v38) = v6 & 1;
  v7 = sub_222C93EEC();
  *(v5 + 56) = HasPayload;
  *(v5 + 64) = sub_222C8FA68(&qword_27D027EF8, 255, type metadata accessor for SendMessageUSOFeature.MessageHasPayload, MEMORY[0x277D5FBA0]);
  v37 = v5;
  *(v5 + 32) = v7;
  v8 = sub_222C8EFDC();
  v4 = v8;
  if (v8 >> 62)
  {
    goto LABEL_36;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_39:

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v33 = sub_222C9431C();
  __swift_project_value_buffer(v33, qword_280FE2340);
  v34 = sub_222C942FC();
  v35 = sub_222C94A2C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_222B39000, v34, v35, "Cannot extract message recipient features from turn: No recipients", v36, 2u);
    MEMORY[0x223DCA8C0](v36, -1, -1);
  }

  else
  {
  }

  sub_222BEB9B0(v42);
  return v37;
}

uint64_t type metadata accessor for UsoPersonRecipients(uint64_t a1)
{
  result = qword_280FDF228;
  if (!qword_280FDF228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C8FA68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t CommonInteractionFeatureExtractor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CommonInteractionFeatureExtractor.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CommonInteractionFeatureExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_222C8FB54()
{
  v0 = sub_222C935EC();
  v99 = *(v0 - 8);
  v100 = v0;
  MEMORY[0x28223BE20](v0);
  v93 = &v92 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v98 = &v92 - v5;
  MEMORY[0x28223BE20](v6);
  v95 = &v92 - v7;
  MEMORY[0x28223BE20](v8);
  v96 = &v92 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v92 - v19;
  v21 = sub_222C93CAC();
  v22 = [v21 identifier];
  v23 = sub_222C9449C();
  v25 = v24;

  v26 = type metadata accessor for CommonFeature.UniqueIdentifier(0);
  swift_allocObject();
  *&v109 = v23;
  *(&v109 + 1) = v25;
  v27 = sub_222C93EEC();
  v112[8] = v26;
  v28 = MEMORY[0x277D5FBA0];
  v112[9] = sub_222C90788(&qword_27D026468, 255, type metadata accessor for CommonFeature.UniqueIdentifier, MEMORY[0x277D5FBA0]);
  v112[5] = v27;
  LOBYTE(v27) = [v21 _donatedBySiri];
  v29 = type metadata accessor for CommonFeature.DonatedBySiri(0);
  swift_allocObject();
  LOBYTE(v109) = v27;
  v30 = sub_222C93EEC();
  v112[13] = v29;
  v112[14] = sub_222C90788(&qword_27D026F98, 255, type metadata accessor for CommonFeature.DonatedBySiri, v28);
  v112[10] = v30;
  v31 = sub_222C93CBC();
  v33 = v32;
  v34 = type metadata accessor for CommonFeature.BundleID(0);
  swift_allocObject();
  *&v109 = v31;
  *(&v109 + 1) = v33;
  v35 = sub_222C93EEC();
  v112[18] = v34;
  v112[19] = sub_222C90788(&qword_27D026470, 255, type metadata accessor for CommonFeature.BundleID, v28);
  v112[15] = v35;
  v36 = [v21 direction];
  v37 = type metadata accessor for CommonFeature.InteractionDirection(0);
  swift_allocObject();
  *&v109 = v36;
  v38 = sub_222C93EEC();
  v112[23] = v37;
  v112[24] = sub_222C90788(&qword_27D027F08, 255, type metadata accessor for CommonFeature.InteractionDirection, v28);
  v112[20] = v38;
  v39 = [v21 intentHandlingStatus];
  v40 = type metadata accessor for CommonFeature.IntentHandlingStatus(0);
  swift_allocObject();
  *&v109 = v39;
  v41 = sub_222C93EEC();
  v112[28] = v40;
  v112[29] = sub_222C90788(&qword_27D027F10, 255, type metadata accessor for CommonFeature.IntentHandlingStatus, v28);
  v112[25] = v41;
  v103 = v21;
  v42 = [v21 dateInterval];
  if (v42)
  {
    v43 = v42;
    sub_222C9326C();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = sub_222C932BC();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v48 = 1;
  v101 = v46 + 56;
  v102 = v47;
  v47(v12, v44, 1, v45);
  sub_222B812EC(v12, v15);
  v49 = *(v46 + 48);
  if (!v49(v15, 1, v45))
  {
    sub_222C9329C();
    v48 = 0;
  }

  sub_222B4FCD4(v15, &qword_27D025A08, &unk_222C99BD0);
  (*(v99 + 56))(v20, v48, 1, v100);
  v50 = type metadata accessor for CommonFeature.OrderingTimestamp(0);
  swift_allocObject();
  sub_222B4FC6C(v20, v94, &qword_27D025360, &unk_222C98300);
  v51 = sub_222C93EDC();
  sub_222B4FCD4(v20, &qword_27D025360, &unk_222C98300);
  if (v51)
  {
    v52 = sub_222C90788(&qword_27D026378, 255, type metadata accessor for CommonFeature.OrderingTimestamp, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v112[31] = 0;
    v112[32] = 0;
  }

  v53 = v95;
  v54 = v96;
  v112[30] = v51;
  v112[33] = v50;
  v112[34] = v52;
  v55 = [v103 dateInterval];
  if (v55)
  {
    v56 = v55;
    sub_222C9326C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = v98;
  v102(v53, v57, 1, v45);
  sub_222B812EC(v53, v54);
  v59 = v49(v54, 1, v45);
  if (v59)
  {
    sub_222B4FCD4(v54, &qword_27D025A08, &unk_222C99BD0);
    v60 = 0;
  }

  else
  {
    v61 = v93;
    sub_222C9329C();
    sub_222B4FCD4(v54, &qword_27D025A08, &unk_222C99BD0);
    sub_222C935BC();
    v60 = v62;
    (*(v99 + 8))(v61, v100);
  }

  v63 = v59 != 0;
  started = type metadata accessor for CommonFeature.StartTimestamp(0);
  swift_allocObject();
  *&v109 = v60;
  BYTE8(v109) = v63;
  v65 = sub_222C93EDC();
  v66 = v65;
  if (v65)
  {
    v65 = sub_222C90788(&unk_27D026380, 255, type metadata accessor for CommonFeature.StartTimestamp, MEMORY[0x277D5FBA0]);
  }

  else
  {
    started = 0;
    v112[37] = 0;
    v112[36] = 0;
  }

  v67 = v97;
  v112[35] = v66;
  v112[38] = started;
  v112[39] = v65;
  v68 = [v103 dateInterval];
  if (v68)
  {
    v69 = v68;
    sub_222C9326C();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v102(v67, v70, 1, v45);
  sub_222B812EC(v67, v58);
  v71 = v49(v58, 1, v45);
  if (v71)
  {
    sub_222B4FCD4(v58, &qword_27D025A08, &unk_222C99BD0);
    v72 = 0;
  }

  else
  {
    v73 = v93;
    sub_222C9327C();
    sub_222B4FCD4(v58, &qword_27D025A08, &unk_222C99BD0);
    sub_222C935BC();
    v72 = v74;
    (*(v99 + 8))(v73, v100);
  }

  v75 = v71 != 0;
  v76 = type metadata accessor for CommonFeature.EndTimestamp(0);
  swift_allocObject();
  *&v109 = v72;
  BYTE8(v109) = v75;
  v77 = sub_222C93EDC();
  v78 = v77;
  if (v77)
  {
    v77 = sub_222C90788(&qword_27D027F18, 255, type metadata accessor for CommonFeature.EndTimestamp, MEMORY[0x277D5FBA0]);
  }

  else
  {
    v76 = 0;
    v112[42] = 0;
    v112[41] = 0;
  }

  v112[40] = v78;
  v112[43] = v76;
  v79 = 4;
  v112[44] = v77;
  v80 = MEMORY[0x277D84F90];
  do
  {
    sub_222B4FC6C(&v112[v79 + 1], &v109, &qword_27D024860, &unk_222C962F0);
    v104[0] = v109;
    v104[1] = v110;
    v105 = v111;
    if (*(&v110 + 1))
    {
      sub_222B405A0(v104, v106);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112[0] = v80;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_222B4A108(0, v80[2] + 1, 1, v80);
        v112[0] = v80;
      }

      v83 = v80[2];
      v82 = v80[3];
      if (v83 >= v82 >> 1)
      {
        v80 = sub_222B4A108((v82 > 1), v83 + 1, 1, v80);
        v112[0] = v80;
      }

      v84 = v107;
      v85 = v108;
      v86 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
      v87 = MEMORY[0x28223BE20](v86);
      v89 = &v92 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v90 + 16))(v89, v87);
      sub_222B4F8F0(v83, v89, v112, v84, v85);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
    }

    else
    {
      sub_222B4FCD4(v104, &qword_27D024860, &unk_222C962F0);
    }

    v79 += 5;
  }

  while (v79 != 44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024860, &unk_222C962F0);
  swift_arrayDestroy();
  return v80;
}

uint64_t sub_222C90788(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id PlusMediaReferenceCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaReferenceCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaReferenceCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaReferenceCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaReferenceCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C909E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mediaId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C90A48(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_222C9448C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setMediaId_];
}

uint64_t sub_222C90AB8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id PlusMediaReferenceSourceAppCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaReferenceSourceAppCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaReferenceSourceAppCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaReferenceSourceAppCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C90D04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C90D6C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_222C9448C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setName_];
}

uint64_t sub_222C90DDC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id PlusMediaSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_222C90FA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastUpdated];
  *a2 = v4;
  return result;
}

id static PlusMediaSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_222C9105C()
{
  result = qword_27D027F20;
  if (!qword_27D027F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D026290, &qword_222C96B40);
    sub_222C910E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027F20);
  }

  return result;
}

unint64_t sub_222C910E0()
{
  result = qword_280FE02A8;
  if (!qword_280FE02A8)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE02A8);
  }

  return result;
}

uint64_t sub_222C91138@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    sub_222C9363C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C9367C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_222C911DC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222B5551C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222C9361C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

void sub_222C91308(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9350C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_222C9136C(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_222C934FC();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_222C913E4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 id];
  if (v3)
  {
    v4 = v3;
    sub_222C9363C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C9367C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id PlusMediaSuggestionStoreUpdateRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaSuggestionStoreUpdateRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaSuggestionStoreUpdateRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaSuggestionStoreUpdateRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C916C0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 source];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C91728(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_222C9448C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSource_];
}

uint64_t sub_222C91798@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 timestamp];
  if (v3)
  {
    v4 = v3;
    sub_222C935CC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222C935EC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_222C9183C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222B81ED0(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222C935EC();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222C9355C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setTimestamp_];
}

uint64_t sub_222C91968@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusMediaSuggestionStoreUpdateRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id PlusMediaSuggestionTagCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusMediaSuggestionTagCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusMediaSuggestionTagCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusMediaSuggestionTagCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_222C91B90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id PlusStorefrontCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusStorefrontCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusStorefrontCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusStorefrontCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusStorefrontCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusStorefrontCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C91DB8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9449C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_222C91E1C(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_222C9448C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_222C91E8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusStorefrontCoreDataRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id ThinMediaGroundTruthCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ThinMediaGroundTruthCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ThinMediaGroundTruthCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ThinMediaGroundTruthCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C920CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groundTruthSource];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9350C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C92134(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_222C934FC();
  }

  v4 = v3;
  [v2 setGroundTruthSource_];
}

void sub_222C921AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groundTruthType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222C9449C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222C92214(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_222C9448C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setGroundTruthType_];
}

void sub_222C92284(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222B5551C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222C9361C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

id PlusContactReferenceCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactReferenceCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactReferenceCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactReferenceCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactReferenceCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactReferenceCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_222C925AC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusContactReferenceCoreDataRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id PlusContactSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C927EC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222B5551C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222C9361C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

id PlusContactSuggestionStoreUpdateRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactSuggestionStoreUpdateRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactSuggestionStoreUpdateRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactSuggestionStoreUpdateRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C92B20(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222B81ED0(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222C935EC();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222C9355C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setTimestamp_];
}

uint64_t sub_222C92C4C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id PlusContactSuggestionTagCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PlusContactSuggestionTagCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PlusContactSuggestionTagCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PlusContactSuggestionTagCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_222C92E68@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  result = sub_222C94D2C();
  *a2 = result;
  return result;
}

id ThinContactGroundTruthCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ThinContactGroundTruthCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ThinContactGroundTruthCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ThinContactGroundTruthCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThinContactGroundTruthCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ThinContactGroundTruthCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222C93084(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222B5551C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222C9367C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222C9361C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}