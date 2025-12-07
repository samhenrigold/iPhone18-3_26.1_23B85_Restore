uint64_t AsyncChannel.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22FD83D80, 0, 0);
}

uint64_t sub_22FD83D80()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = *(v2 + 80);
  *v5 = v0;
  v5[1] = sub_22FD83E40;
  v7 = v0[2];
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];

  return sub_22FD89DB4(v7, v4, v3, v6, v8, v9);
}

uint64_t sub_22FD83E40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall AsyncChannel.finish()()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = 1;
  sub_22FD8A30C(&v4, v2, v3, *(v1 + 80), MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
}

uint64_t AsyncChannel.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AsyncChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD83FE8, 0, 0);
}

uint64_t sub_22FD83FE8()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = *(v2 + 16);
  *v5 = v0;
  v5[1] = sub_22FD840A8;
  v7 = v0[2];
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];

  return sub_22FD8A778(v7, v4, v3, v6, v8, v9);
}

uint64_t sub_22FD840A8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FD841DC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FD841F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD842A0;

  return AsyncChannel.Iterator.next()(a1, a2);
}

uint64_t sub_22FD842A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FD84398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FD84464;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v12);
}

uint64_t sub_22FD84464()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AsyncChannel.deinit()
{

  return v0;
}

uint64_t AsyncChannel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FD84600@<X0>(void *a1@<X8>)
{
  AsyncChannel.makeAsyncIterator()(a1);
}

uint64_t sub_22FD846C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD846FC(uint64_t *a1, int a2)
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

uint64_t sub_22FD84744(uint64_t result, int a2, int a3)
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

uint64_t Sequence.async.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t AsyncSyncSequence.Iterator.iterator.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_22FE43744();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AsyncSyncSequence.Iterator.iterator.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_22FE43744();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t AsyncSyncSequence.Iterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v10 = *(v7 + 56);
  v10(a4, 1, 1, AssociatedTypeWitness);
  v8 = sub_22FE43744();
  (*(*(v8 - 8) + 8))(a4, v8);
  (*(v7 + 32))(a4, a1, AssociatedTypeWitness);

  return (v10)(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t AsyncSyncSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 24);
  v3[5] = *(a2 + 16);
  v3[6] = swift_getAssociatedTypeWitness();
  v4 = sub_22FE43744();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD84C04, 0, 0);
}

uint64_t sub_22FD84C04()
{
  if (sub_22FE43424())
  {
    goto LABEL_6;
  }

  v1 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = (*(*(AssociatedTypeWitness - 8) + 48))(v1, 1, AssociatedTypeWitness);
  v4 = v0[9];
  v5 = v0[6];
  if (v3)
  {
    (*(*(v5 - 8) + 56))(v0[9], 1, 1, v0[6]);
LABEL_5:
    (*(v0[8] + 8))(v0[9], v0[7]);
LABEL_6:
    v7 = v0[6];
    v8 = v0[3];
    v9 = v0[2];
    v10 = swift_getAssociatedTypeWitness();
    v11 = sub_22FE43744();
    (*(*(v11 - 8) + 8))(v8, v11);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
    goto LABEL_7;
  }

  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    goto LABEL_5;
  }

  v14 = v0[6];
  v15 = v0[2];
  (*(v6 + 32))(v15, v0[9], v14);
  (*(v6 + 56))(v15, 0, 1, v14);
LABEL_7:

  v12 = v0[1];

  return v12();
}

uint64_t sub_22FD84EDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD842A0;

  return AsyncSyncSequence.Iterator.next()(a1, a2);
}

uint64_t AsyncSyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, v2, v4, v9);
  sub_22FE43184();
  return AsyncSyncSequence.Iterator.init(_:)(v11, a2);
}

uint64_t sub_22FD85120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncSyncSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_22FD85180(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FD851F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22FD85330(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_22FD85550(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_22FE43744();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FD855DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22FD8577C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
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
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

void *AsyncThrowingChannel.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = sub_22FD89CCC(*(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v0[3] = v1;
  return v0;
}

void *AsyncThrowingChannel.init()()
{
  v0[2] = sub_22FD89CCC(*(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v0[3] = v1;
  return v0;
}

uint64_t AsyncThrowingChannel.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22FD85B04, 0, 0);
}

uint64_t sub_22FD85B04()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = v2[10];
  v7 = v2[11];
  v8 = v2[12];
  *v5 = v0;
  v5[1] = sub_22FD83E40;
  v9 = v0[2];

  return sub_22FD89DB4(v9, v4, v3, v6, v7, v8);
}

void AsyncThrowingChannel.fail<>(_:)(void *a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v7 = a1;
  v6 = a1;
  sub_22FD8A30C(&v7, v4, v5, *(v3 + 80), *(v3 + 88), MEMORY[0x277D84950]);
}

Swift::Void __swiftcall AsyncThrowingChannel.finish()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_22FE43744();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = v0[2];
  v9 = v0[3];
  (*(*(v2 - 8) + 56))(&v10 - v6, 1, 1, v2, v5);
  sub_22FD8A30C(v7, v8, v9, *(v1 + 80), v2, *(v1 + 96));
  (*(v4 + 8))(v7, v3);
}

uint64_t AsyncThrowingChannel.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AsyncThrowingChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD85E00, 0, 0);
}

uint64_t sub_22FD85E00()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  *v5 = v0;
  v5[1] = sub_22FD83E40;
  v9 = v0[2];

  return sub_22FD8A778(v9, v4, v3, v6, v7, v8);
}

uint64_t sub_22FD85EB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD73F54;

  return AsyncThrowingChannel.Iterator.next()(a1, a2);
}

uint64_t sub_22FD85F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_22FD86030;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_22FD86030()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t AsyncThrowingChannel.deinit()
{

  return v0;
}

uint64_t AsyncThrowingChannel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FD861E0@<X0>(void *a1@<X8>)
{
  AsyncThrowingChannel.makeAsyncIterator()(a1);
}

uint64_t sub_22FD862A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD86320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_22FE43744();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v15 - v12;
  (*(*(a2 - 8) + 56))(&v15 - v12, 1, 1, a2, v11);
  return sub_22FD863FC(a1, 0, v13, a2, a3, a4, a5);
}

uint64_t sub_22FD863FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v9 = *(type metadata accessor for ChannelStateMachine.SuspendedProducer(0, a4, a5, a6) + 48);
  v10 = sub_22FE43744();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a7[v9], a3, v10);
}

uint64_t sub_22FD86494()
{
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](*v0);
  return sub_22FE43E04();
}

uint64_t sub_22FD864E0(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FD862F4();
  return sub_22FE43E04();
}

uint64_t sub_22FD86568(uint64_t a1)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  return sub_22FE43E04();
}

uint64_t sub_22FD865D8(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FD86534(v3, *v1);
  return sub_22FE43E04();
}

uint64_t sub_22FD86644(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  type metadata accessor for ChannelStateMachine.SuspendedConsumer(255, a1[2], a1[3], a1[4]);
  sub_22FE439D4();

  swift_getWitnessTable();
  if (sub_22FE43644())
  {

    return 1;
  }

  else
  {
    sub_22FD88228(v3, v4, v5, v6, v2, v7);
    swift_getWitnessTable();
    sub_22FE42914();
    sub_22FE428D4();
    result = v9;
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v7;
  }

  return result;
}

uint64_t sub_22FD867D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v47 = a2;
  v48 = a1;
  v8 = a4[2];
  v7 = a4[3];
  v49 = a4[4];
  v50 = v7;
  v9 = type metadata accessor for ChannelStateMachine.SuspendedProducer(255, v8, v7, v49);
  v10 = sub_22FE43744();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = sub_22FE43744();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  v19.n128_f64[0] = MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = v5[4];
  if (v22 < 0)
  {
    return 1;
  }

  v43 = v11;
  v44 = v10;
  v24 = *v5;
  v23 = v5[1];
  v45 = v5[5];
  v46 = v18;
  v25 = v5[2];
  v26 = v5[3];
  v41 = v23;
  v42 = v24;
  v56 = v24;
  v57 = v23;
  v54 = v22;
  v55 = v25;
  v53 = v26;
  v27 = *(v8 - 8);
  (*(v27 + 16))(v16, v47, v8, v19);
  (*(v27 + 56))(v16, 0, 1, v8);
  sub_22FD863FC(a3, v48, v16, v8, v50, v49, v21);
  swift_getWitnessTable();
  sub_22FE43554();
  sub_22FE43524();
  v28 = v46;
  if ((*(v46 + 48))(v13, 1, v9) == 1)
  {
    v48 = v26;
    (*(v43 + 8))(v13, v44);
    v51 = v22;
    type metadata accessor for ChannelStateMachine.SuspendedConsumer(255, v8, v50, v49);
    sub_22FE439D4();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {
      sub_22FE42914();
      sub_22FE42904();
      (*(v46 + 8))(v21, v9);
      v29 = v57;
      v30 = v55;
      *v5 = v56;
      v5[1] = v29;
      v31 = v48;
      v5[2] = v30;
      v5[3] = v31;
      v32 = v45;
      v5[4] = v22;
      v5[5] = v32;
      return 2;
    }

    else
    {
      swift_getWitnessTable();
      sub_22FE42914();
      sub_22FE428D4();
      (*(v46 + 8))(v21, v9);
      result = v52;
      v37 = v53;
      v39 = v54;
      v38 = v55;
      *v5 = v42;
      v5[1] = v41;
      v5[2] = v38;
      v5[3] = v37;
      v5[4] = v39;
      v5[5] = v45;
    }
  }

  else
  {
    (*(v28 + 8))(v21, v9);
    (*(v43 + 8))(v13, v44);
    v34 = v55;
    v35 = v41;
    *v5 = v42;
    v5[1] = v35;
    v5[2] = v34;
    v5[3] = v26;
    v36 = v45;
    v5[4] = v22;
    v5[5] = v36;
    return 1;
  }

  return result;
}

uint64_t sub_22FD86C28(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for ChannelStateMachine.SuspendedProducer(255, v5, v6, v7);
  v9 = sub_22FE43744();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v23 = &v50 - v19;
  v62 = *(v3 + 32);
  if (v62 < 0)
  {
    return 1;
  }

  v51 = v18;
  v52 = v17;
  v53 = v21;
  v54 = v20;
  v55 = v16;
  v24 = v6;
  v25 = a1;
  v27 = *v3;
  v26 = *(v3 + 8);
  v58 = v22;
  v28 = *(v3 + 16);
  v29 = *(v3 + 24);
  v30 = v5;
  v31 = *(v3 + 40);
  v64 = v27;
  v65 = v26;
  v63 = v28;
  sub_22FD86320(v25, v30, v24, v7, &v50 - v19);
  v60 = v29;

  v61 = v31;

  v56 = v27;

  v57 = v26;

  v59 = v28;
  v32 = v58;

  swift_getWitnessTable();
  sub_22FE42914();
  sub_22FE428F4();
  if ((*(v32 + 48))(v12, 1, v8) == 1)
  {
    v54 = *(v54 + 8);
    v33 = v12;
    v34 = v55;
    (v54)(v33, v55);
    (*(v32 + 16))(v52, v23, v8);
    sub_22FE43554();
    v35 = v53;
    sub_22FE43534();
    (v54)(v35, v34);
    (*(v32 + 8))(v23, v8);
    v36 = v60;
    v37 = v61;
    v38 = v62;
    sub_22FD88228(v56, v57, v59, v60, v62, v61);
    v39 = v65;
    v40 = v63;
    *v3 = v64;
    *(v3 + 8) = v39;
    *(v3 + 16) = v40;
    *(v3 + 24) = v36;
    *(v3 + 32) = v38;
    *(v3 + 40) = v37;
    return 1;
  }

  v42 = *(v32 + 8);
  v42(v23, v8);
  v43 = v51;
  (*(v32 + 32))(v51, v12, v8);
  v45 = v59;
  v44 = v60;
  v46 = v61;
  v47 = v62;
  sub_22FD88228(v56, v57, v59, v60, v62, v61);
  v48 = v65;
  *v3 = v64;
  *(v3 + 8) = v48;
  *(v3 + 16) = v45;
  *(v3 + 24) = v44;
  *(v3 + 32) = v47;
  *(v3 + 40) = v46;
  v49 = *(v43 + 8);
  v42(v43, v8);
  return v49;
}

uint64_t sub_22FD87034(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = sub_22FE43744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  if (v2[4] < 0)
  {
    return 0;
  }

  v43 = v2[4];
  v16 = v2[3];
  v41 = &v39 - v15;
  v42 = v16;
  v17 = *v2;
  v44 = v2[1];
  v45 = v17;

  (*(v7 + 16))(v9, a1, v6);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    v18 = (*(v7 + 8))(v9, v6);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_22FE49940;
    v19 = a2[2];
    v20 = a2[4];
  }

  else
  {
    v40 = v2;
    v22 = v41;
    v23 = v9;
    v24 = *(v10 + 32);
    v24(v41, v23, v5);
    v46 = v43;
    v19 = a2[2];
    v20 = a2[4];
    type metadata accessor for ChannelStateMachine.SuspendedConsumer(255, v19, v5, v20);
    sub_22FE439D4();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {
      (*(v10 + 16))(v13, v22, v5);
      v25 = sub_22FE43C64();
      v26 = v40;
      if (v25)
      {
        v27 = v25;
        v28 = *(v10 + 8);
        v28(v13, v5);
      }

      else
      {
        v27 = swift_allocError();
        v24(v29, v13, v5);
        v28 = *(v10 + 8);
      }

      v18 = (v28)(v41, v5);
      *v26 = v27;
      *(v26 + 1) = 0;
      *(v26 + 2) = 0;
      *(v26 + 3) = 0;
    }

    else
    {
      v18 = (*(v10 + 8))(v22, v5);
      v26 = v40;
      *v40 = 0u;
      v26[1] = 0u;
    }

    v26[2] = xmmword_22FE49940;
  }

  v46 = v45;
  v47 = v44;
  MEMORY[0x28223BE20](v18);
  *(&v39 - 4) = v19;
  *(&v39 - 3) = v5;
  *(&v39 - 2) = v20;
  type metadata accessor for ChannelStateMachine.SuspendedProducer(255, v19, v5, v20);
  swift_getWitnessTable();
  v30 = sub_22FE42914();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2E00, &unk_22FE49950);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_22FDA5834(sub_22FD797DC, (&v39 - 6), v30, v31, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v33);
  v41 = &v39;
  v46 = v42;
  v47 = v43;
  MEMORY[0x28223BE20](v21);
  *(&v39 - 4) = v19;
  *(&v39 - 3) = v5;
  *(&v39 - 2) = v20;
  type metadata accessor for ChannelStateMachine.SuspendedConsumer(255, v19, v5, v20);
  swift_getWitnessTable();
  v34 = sub_22FE42914();
  sub_22FE43744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43434();
  v35 = sub_22FE43744();
  v36 = swift_getWitnessTable();
  sub_22FDA5834(sub_22FD797DC, (&v39 - 6), v34, v35, MEMORY[0x277D84A98], v36, MEMORY[0x277D84AC0], v37);

  return v21;
}

uint64_t sub_22FD87628@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[2];
  v5 = type metadata accessor for ChannelStateMachine.SuspendedProducer(0, v4, a1[3], a1[4]);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = *v2;
  v9 = *(v2 + 32);
  if (v9 < 0)
  {
    if (v8)
    {
      *v2 = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = xmmword_22FE49940;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v17 = *(TupleTypeMetadata2 + 48);
      *a2 = 0;
      *&a2[v17] = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v26 = *(TupleTypeMetadata2 + 48);
      *a2 = 0;
      (*(*(v4 - 8) + 56))(&a2[v26], 1, 1, v4);
    }

    swift_storeEnumTagMultiPayload();
    v27 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v27(a2, 0, 1, TupleTypeMetadata2);
  }

  else
  {
    v29 = v7;
    v30 = v4;
    v11 = *(v2 + 8);
    v10 = *(v2 + 16);
    v12 = *(v2 + 24);
    v13 = *(v2 + 40);
    v31 = a2;
    v32 = v11;
    sub_22FE439D4();

    swift_getWitnessTable();
    if (sub_22FE43644())
    {

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      v14 = swift_getTupleTypeMetadata2();
      return (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
    }

    else
    {
      sub_22FD88228(v8, v11, v10, v12, v9, v13);
      v32 = v8;
      v33 = v11;
      swift_getWitnessTable();
      sub_22FE42914();
      v18 = v29;
      sub_22FE428D4();
      v19 = v33;
      *v2 = v32;
      *(v2 + 8) = v19;
      *(v2 + 16) = v10;
      *(v2 + 24) = v12;
      *(v2 + 32) = v9;
      *(v2 + 40) = v13;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      v20 = sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      v21 = swift_getTupleTypeMetadata2();
      v22 = *(v21 + 48);
      v23 = v18;
      v24 = *(v18 + 1);
      v25 = v31;
      *v31 = v24;
      (*(*(v20 - 8) + 32))(&v25[v22], &v23[*(v5 + 48)], v20);
      swift_storeEnumTagMultiPayload();
      return (*(*(v21 - 8) + 56))(v25, 0, 1, v21);
    }
  }
}

uint64_t sub_22FD87B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v10 = a3[2];
  v9 = a3[3];
  v11 = a3[4];
  v12 = type metadata accessor for ChannelStateMachine.SuspendedProducer(0, v10, v9, v11);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = *v5;
  v18 = v5[4];
  if (v18 < 0)
  {
    if (v17)
    {
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = xmmword_22FE49940;
      *a4 = v17;
    }

    else
    {
      (*(*(v10 - 8) + 56))(a4, 1, 1, v10, v14);
    }

    SuspendedAction = type metadata accessor for ChannelStateMachine.NextSuspendedAction(0, v10, v9, v11);
    swift_storeEnumTagMultiPayload();
    v45 = *(*(SuspendedAction - 8) + 56);

    return v45(a4, 0, 1, SuspendedAction);
  }

  else
  {
    v55 = a4;
    v56 = a2;
    v51 = v16;
    v52 = v13;
    v19 = v5[1];
    v53 = v5[2];
    v20 = v5[3];
    v21 = v5[5];
    v63 = v17;
    v64 = v19;
    v22 = v19;
    v61 = v20;
    v62 = v18;
    v60 = v21;
    v49 = a2;
    v50 = a1;
    v57 = a1;
    type metadata accessor for ChannelStateMachine.SuspendedConsumer(255, v10, v9, v11);
    v54 = v11;
    swift_getWitnessTable();
    sub_22FE43554();
    v23 = v9;
    sub_22FE43524();
    if (v59 == 1)
    {
      v46 = v20;
      v47 = v10;
      v48 = v9;
      v58 = v22;
      v24 = v52;
      sub_22FE439D4();
      swift_getWitnessTable();
      if (sub_22FE43644())
      {
        v58 = v49;
        v59 = v50;
        sub_22FE42914();
        sub_22FE42904();
        v25 = v61;
        v26 = v62;
        v27 = v60;
        *v5 = v17;
        v5[1] = v22;
        v28 = v54;
        v5[2] = v53;
        v5[3] = v25;
        v5[4] = v26;
        v5[5] = v27;
        v29 = type metadata accessor for ChannelStateMachine.NextSuspendedAction(0, v47, v48, v28);
        return (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
      }

      swift_getWitnessTable();
      sub_22FE42914();
      v37 = v51;
      sub_22FE428D4();
      v38 = v64;
      v39 = v60;
      *v5 = v63;
      v5[1] = v38;
      v40 = v46;
      v5[2] = v53;
      v5[3] = v40;
      v5[4] = v18;
      v5[5] = v39;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      v41 = v47;
      v42 = sub_22FE43744();
      v43 = *(swift_getTupleTypeMetadata2() + 48);
      v44 = v55;
      *v55 = *(v37 + 1);
      (*(*(v42 - 8) + 32))(&v44[v43], &v37[*(v24 + 48)], v42);
      v34 = type metadata accessor for ChannelStateMachine.NextSuspendedAction(0, v41, v48, v54);
      swift_storeEnumTagMultiPayload();
      v35 = *(*(v34 - 8) + 56);
      v36 = v44;
    }

    else
    {
      v32 = v60;
      *v5 = v17;
      v5[1] = v22;
      v5[2] = v53;
      v5[3] = v20;
      v5[4] = v18;
      v5[5] = v32;
      v33 = v55;
      (*(*(v10 - 8) + 56))(v55, 1, 1, v10);
      v34 = type metadata accessor for ChannelStateMachine.NextSuspendedAction(0, v10, v23, v54);
      swift_storeEnumTagMultiPayload();
      v35 = *(*(v34 - 8) + 56);
      v36 = v33;
    }

    return v35(v36, 0, 1, v34);
  }
}

uint64_t sub_22FD88084(uint64_t a1, void *a2)
{
  v3 = v2[4];
  if (v3 < 0)
  {
    return 1;
  }

  v4 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v4[3];
  v9 = v4[5];
  type metadata accessor for ChannelStateMachine.SuspendedConsumer(255, a2[2], a2[3], a2[4]);

  swift_getWitnessTable();
  sub_22FE42914();
  sub_22FE428F4();
  if (v11 == 1)
  {
    sub_22FE43554();
    sub_22FE43534();
    sub_22FD88228(v6, v5, v7, v8, v3, v9);
    *v4 = v6;
    v4[1] = v5;
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v3;
    v4[5] = v9;
    return 1;
  }

  sub_22FD88228(v6, v5, v7, v8, v3, v9);
  result = v11;
  *v4 = v6;
  v4[1] = v5;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v3;
  v4[5] = v9;
  return result;
}

void sub_22FD88228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_22FD882D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ChannelStateMachine.SuspendedProducer(0, a1, a2, a3);
  sub_22FE432D4();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_22FE428E4();
  v12 = v11;
  v13 = sub_22FE432D4();
  if (sub_22FE43304())
  {
    v14 = sub_22FD88470(v13, v8, WitnessTable);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v15 = type metadata accessor for ChannelStateMachine.SuspendedConsumer(0, a1, a2, a3);
  sub_22FE432D4();
  v16 = swift_getWitnessTable();
  v17 = sub_22FE428E4();
  v19 = v18;
  v20 = sub_22FE432D4();
  if (sub_22FE43304())
  {
    v21 = sub_22FD88470(v20, v15, v16);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *a4 = v10;
  a4[1] = v12;
  a4[2] = v14;
  a4[3] = v17;
  a4[4] = v19;
  a4[5] = v21;
  return result;
}

uint64_t sub_22FD88470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (sub_22FE43304())
  {
    sub_22FE438C4();
    v15 = sub_22FE438B4();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_22FE43304();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_22FE432F4();
    sub_22FE432B4();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_22FE43924();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_22FE42FD4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_22FE43024();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22FD88874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10PhotosFace19ChannelStateMachineV12FinishActionOyxq__G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22FD888E8(uint64_t a1)
{
  sub_22FE43744();
  if (v1 <= 0x3F)
  {
    sub_22FD88D10();
    if (v2 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FD889A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v4 > v5)
  {
    v5 = v4;
  }

  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 < 2)
    {
LABEL_30:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_19:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_22FD88B08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v6 > v7)
  {
    v7 = v6;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v7] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

void sub_22FD88D10()
{
  if (!qword_27DAE3A90)
  {
    v0 = sub_22FD88D58();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE3A90);
    }
  }
}

unint64_t sub_22FD88D58()
{
  result = qword_27DAE3A98[0];
  if (!qword_27DAE3A98[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27DAE3A98);
  }

  return result;
}

uint64_t sub_22FD88DD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
  sub_22FE43744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_22FD88E9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFE)
  {
    goto LABEL_28;
  }

  v5 = v4 + (((*(v3 + 80) & 0xF8) + 15) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v6 = 8 * v5;
  if (v5 > 3)
  {
    goto LABEL_9;
  }

  v9 = (a2 - 2147483645 + ~(-1 << v6)) >> v6;
  if (v9 > 0xFFFE)
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_28:
    v11 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v11) = -1;
    }

    if ((v11 + 1) < 2)
    {
      LODWORD(v11) = 0;
    }

    if (v11 >= 2)
    {
      return (v11 - 1);
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFE)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_9:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_28;
  }

LABEL_17:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 2147483646;
}

void sub_22FD89024(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((*(v5 + 80) & 0xF8) + 15) & ~(*(v5 + 80) & 0xF8) & 0x1F8;
  if (!*(v5 + 84))
  {
    ++v6;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = v6 + v7 + 1;
  if (a3 <= 0x7FFFFFFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = (a3 - 2147483645 + ~(-1 << (8 * v8))) >> (8 * v8);
    if (v12 > 0xFFFE)
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0xFF)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0x7FFFFFFD)
  {
    v10 = a2 - 2147483646;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_41:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      *a1 = a2 + 1;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_26;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

void sub_22FD89254(uint64_t a1)
{
  sub_22FD897CC(319);
  if (v1 <= 0x3F)
  {
    sub_22FE43744();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FD892EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_22FD894BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

void sub_22FD897CC(uint64_t a1)
{
  if (!qword_27DAE3C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE3C28, qword_22FE49AD8);
    v1 = sub_22FE43744();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAE3C20);
    }
  }
}

uint64_t sub_22FD89830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD8986C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22FD898C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FD89918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22FD899C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD89A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 48))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 32) >> 50) >> 13) | (2 * ((*(a1 + 32) >> 50) & 0x1C00 | ((*(a1 + 32) & 7) << 7) | (*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FD89A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_22FD89B10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_22FD89B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD89B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FD89BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_22FD89C28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_22FD89C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD89CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  sub_22FD882D0(a1, a2, a3, v13);
  v12[0] = v13[0];
  v12[1] = v13[1];
  v12[2] = v13[2];
  v7 = type metadata accessor for ChannelStateMachine(0, a1, a2, a3);
  v10 = sub_22FD8C8F8(v12, v7, v8, v9);
  (*(*(v7 - 8) + 8))(v13, v7);
  return v10;
}

uint64_t sub_22FD89DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_22FE43744();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD89E58, 0, 0);
}

uint64_t sub_22FD89E58()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  type metadata accessor for ChannelStateMachine(0, v3, v1, v2);
  type metadata accessor for ChannelStateMachine.SendAction(0, v3, v1, v2);
  sub_22FD8C780(sub_22FD8C4DC, v5, v4);

  v6 = v0[2];
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = v0[7];
      v7 = v0[8];
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];
      os_unfair_lock_lock((v10 + 24));
      v13 = *(v10 + 16);
      *(v10 + 16) = v13 + 1;
      os_unfair_lock_unlock((v10 + 24));
      v14 = swift_task_alloc();
      v0[12] = v14;
      v14[2] = v9;
      v14[3] = v8;
      v14[4] = v7;
      v14[5] = v12;
      v14[6] = v10;
      v14[7] = v11;
      v14[8] = v13;
      v15 = swift_task_alloc();
      v0[13] = v15;
      v15[2] = v9;
      v15[3] = v8;
      v15[4] = v7;
      v15[5] = v12;
      v15[6] = v10;
      v15[7] = v13;
      v16 = swift_task_alloc();
      v0[14] = v16;
      *v16 = v0;
      v16[1] = sub_22FD8A168;

      return MEMORY[0x282200830](v16, &unk_22FE49E60);
    }

    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];
    v20 = v0[6];
    v21 = *(v20 - 8);
    (*(v21 + 16))(v17, v0[3], v20);
    (*(v21 + 56))(v17, 0, 1, v20);
    (*(v18 + 32))(*(*(v6 + 64) + 40), v17, v19);
    swift_continuation_throwingResume();
  }

  v22 = v0[1];

  return v22();
}

void sub_22FD8A168()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22FD8A2AC, 0, 0);
  }
}

uint64_t sub_22FD8A2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22FD8A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22FE43744();
  v28 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a1;
  type metadata accessor for ChannelStateMachine(0, a4, a5, a6);
  type metadata accessor for ChannelStateMachine.FinishAction(0, a4, a5, a6);
  sub_22FD8C780(sub_22FD8C404, v29, a2);
  if (v34)
  {
    v26[0] = v17;
    v26[1] = 0;
    v18 = *(v34 + 16);
    v27 = v34;
    if (v18)
    {
      v19 = (v34 + 32);
      v20 = v35;

      do
      {
        if (*v19++)
        {
          swift_continuation_throwingResume();
        }

        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = v35;
    }

    v22 = v28;
    (*(v28 + 16))(v13, a1, v11);
    if ((*(v14 + 48))(v13, 1, a5) == 1)
    {
      v23 = (*(v22 + 8))(v13, v11);
      v34 = v20;
      MEMORY[0x28223BE20](v23);
      v26[-4] = a4;
      v26[-3] = a5;
      v26[-2] = a6;
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43434();
      sub_22FE43744();
      sub_22FE43354();
      swift_getWitnessTable();
      sub_22FE43224();
      sub_22FD8C47C(v27, v20);
    }

    else
    {
      v24 = v26[0];
      v25 = (*(v14 + 32))(v26[0], v13, a5);
      v34 = v20;
      MEMORY[0x28223BE20](v25);
      v26[-4] = a4;
      v26[-3] = a5;
      v26[-2] = a6;
      v26[-1] = v24;
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43434();
      sub_22FE43744();
      sub_22FE43354();
      swift_getWitnessTable();
      sub_22FE43224();
      sub_22FD8C47C(v27, v20);

      (*(v14 + 8))(v24, a5);
    }
  }
}

uint64_t sub_22FD8A778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = sub_22FE43744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v10 = sub_22FE43E14();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  Action = type metadata accessor for ChannelStateMachine.NextAction(0, a4, a5, a6);
  v6[12] = Action;
  v6[13] = *(Action - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8A900, 0, 0);
}

uint64_t sub_22FD8A900()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  type metadata accessor for ChannelStateMachine(0, v7, v6, v5);
  sub_22FD8C780(sub_22FD8B6EC, v9, v8);

  (*(v3 + 16))(v1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v1, 1, TupleTypeMetadata2) == 1)
  {
    v12 = v0[6];
    v11 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    *(v14 + 16) = v16 + 1;
    os_unfair_lock_unlock((v14 + 24));
    v17 = swift_task_alloc();
    v0[16] = v17;
    v17[2] = v13;
    v17[3] = v12;
    v17[4] = v11;
    v17[5] = v15;
    v17[6] = v14;
    v17[7] = v16;
    v18 = swift_task_alloc();
    v0[17] = v18;
    v18[2] = v13;
    v18[3] = v12;
    v18[4] = v11;
    v18[5] = v15;
    v18[6] = v14;
    v18[7] = v16;
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    v19[1] = sub_22FD8AC6C;
    v20 = v0[2];

    return MEMORY[0x282200830](v20, &unk_22FE49E40);
  }

  else
  {
    v21 = v0[14];
    v22 = *v21;
    (*(v0[10] + 32))(v0[11], &v21[*(TupleTypeMetadata2 + 48)], v0[9]);
    if (v22)
    {
      swift_continuation_throwingResume();
    }

    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[13];
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    WitnessTable = swift_getWitnessTable();
    sub_22FD8C9F4(v28, WitnessTable);
    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v23, v24);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_22FD8AC6C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_22FD8AE50;
  }

  else
  {
    v2 = sub_22FD8ADC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FD8ADC0()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FD8AE50()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FD8AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[10] = a2;
  return MEMORY[0x2822009F8](sub_22FD8AF14, 0, 0);
}

uint64_t sub_22FD8AF14()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22FD8AFE8;
  v8 = swift_continuation_init();
  sub_22FD8B0C4(v8, v7, v6, v5, v4, v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FD8AFE8()
{
  v1 = *(*v0 + 8);

  return v1();
}

void sub_22FD8B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_22FE43744();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21[-v17];
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a1;
  v26 = a4;
  v27 = a5;
  type metadata accessor for ChannelStateMachine(0, a6, a7, a8);
  type metadata accessor for ChannelStateMachine.SendSuspendedAction(255, a6, a7, a8);
  sub_22FE43744();
  sub_22FD8C780(sub_22FD8C6CC, v21, a2);
  v19 = v28;
  if (v28 != 2)
  {
    if (v28 != 1)
    {
      swift_continuation_throwingResume();
      if (!v19)
      {
        return;
      }

      v20 = *(a6 - 8);
      (*(v20 + 16))(v18, a4, a6);
      (*(v20 + 56))(v18, 0, 1, a6);
      (*(v16 + 32))(*(*(v19 + 64) + 40), v18, v15);
    }

    swift_continuation_throwingResume();
  }
}

unint64_t sub_22FD8B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a3;
  type metadata accessor for ChannelStateMachine(0, a4, a5, a6);
  type metadata accessor for ChannelStateMachine.SendCancelledAction(0, a4, a5, a6);
  sub_22FD8C780(sub_22FD8C638, v11, a1);
  result = v12;
  if (v12 >= 2)
  {
    return swift_continuation_throwingResume();
  }

  return result;
}

void sub_22FD8B3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  if (*v10)
  {
    (*(v6 + 16))(v9, v7);
    v12 = sub_22FE43C64();
    if (v12)
    {
      v13 = v12;
      (*(v6 + 8))(v9, a4);
    }

    else
    {
      v13 = swift_allocError();
      (*(v6 + 32))(v14, v9, a4);
    }

    v18 = v13;
    v15 = sub_22FE43744();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    sub_22FD8B52C(&v18, v11, v15, v16, MEMORY[0x277D84950]);
  }
}

uint64_t sub_22FD8B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

void sub_22FD8B5C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22FE43744();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v9 = *a1;
  if (v9)
  {
    (*(*(a2 - 8) + 56))(v8, 1, 1, a2, v6);
    (*(v5 + 32))(*(*(v9 + 64) + 40), v8, v4);
    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FD8B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD8B768, 0, 0);
}

uint64_t sub_22FD8B768()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_22FE43744();
  *v5 = v0;
  v5[1] = sub_22FD8B880;
  v6 = *(v0 + 16);

  return sub_22FD8BF5C(v6, 0, 0, sub_22FD8C38C, v3);
}

uint64_t sub_22FD8B880()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FD8B9BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FD8B9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FD8BA20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FD8B73C(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_22FD8BAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a2;
  v46 = sub_22FE43744();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v40 - v14;
  MEMORY[0x28223BE20](v15);
  v43 = &v40 - v16;
  SuspendedAction = type metadata accessor for ChannelStateMachine.NextSuspendedAction(255, a5, a6, a7);
  v18 = sub_22FE43744();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = a1;
  v45 = a1;
  v53 = a4;
  type metadata accessor for ChannelStateMachine(0, a5, a6, a7);
  sub_22FD8C780(sub_22FD8C39C, v48, v47);
  (*(v19 + 16))(v21, v24, v18);
  if ((*(*(SuspendedAction - 8) + 48))(v21, 1, SuspendedAction) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v26 = v46;
      if (EnumCaseMultiPayload == 1)
      {
        v54 = *v21;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
        sub_22FD8B52C(&v54, v45, v26, v27, MEMORY[0x277D84950]);
      }

      else
      {
        v33 = *v21;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v35 = *(v44 + 32);
        v36 = v42;
        v35(v42, v21 + *(TupleTypeMetadata2 + 48), v26);
        if (v33)
        {
          swift_continuation_throwingResume();
        }

        v38 = v43;
        v37 = v44;
        (*(v44 + 16))(v43, v36, v26);
        v35(*(*(v45 + 64) + 40), v38, v26);
        swift_continuation_throwingResume();
        (*(v37 + 8))(v36, v26);
      }
    }

    else
    {
      v29 = v43;
      v28 = v44;
      v30 = *(v44 + 32);
      v31 = v46;
      v30(v43, v21, v46);
      v32 = v41;
      (*(v28 + 16))(v41, v29, v31);
      v30(*(*(v45 + 64) + 40), v32, v31);
      swift_continuation_throwingResume();
      (*(v28 + 8))(v29, v31);
    }
  }

  return (*(v19 + 8))(v24, v18);
}

uint64_t sub_22FD8BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_22FE43374();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_22FD8BFF0, v6, v8);
}

uint64_t sub_22FD8BFF0()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_22FD8C098;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FD8C098()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

void sub_22FD8C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22FE43744();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16[-v13];
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a3;
  type metadata accessor for ChannelStateMachine(0, a4, a5, a6);
  type metadata accessor for ChannelStateMachine.NextCancelledAction(0, a4, a5, a6);
  sub_22FD8C780(sub_22FD8C360, v16, a1);
  v15 = v21;
  if (v21 >= 2)
  {
    (*(*(a4 - 8) + 56))(v14, 1, 1, a4);
    (*(v12 + 32))(*(*(v15 + 64) + 40), v14, v11);
    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FD8C39C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = type metadata accessor for ChannelStateMachine(0, v3, v4, v5);
  return sub_22FD87B74(v6, v7, v8, a1);
}

uint64_t sub_22FD8C404@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ChannelStateMachine(0, v3, v4, v5);
  result = sub_22FD87034(v6, v7);
  *a1 = result;
  a1[1] = v9;
  return result;
}

uint64_t sub_22FD8C47C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FD8C4DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ChannelStateMachine(0, v1[2], v1[3], v1[4]);
  result = sub_22FD86644(v3);
  *a1 = result;
  return result;
}

uint64_t sub_22FD8C52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FD8C738;

  return sub_22FD8AEE8(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_22FD8C664@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = type metadata accessor for ChannelStateMachine(0, v5, v6, v7);
  result = a1(v8, v9);
  *a2 = result;
  return result;
}

uint64_t sub_22FD8C6CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = type metadata accessor for ChannelStateMachine(0, v3, v4, v5);
  result = sub_22FD867D4(v6, v8, v7, v9);
  *a1 = result;
  return result;
}

void sub_22FD8C780(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_22FD8C838()
{
  MEMORY[0x23190B580]();

  return swift_deallocClassInstance();
}

uint64_t sub_22FD8C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD8C95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_22FD8CA1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  result = sub_22FD8CC28(a1, v11, a2);
  if (v2)
  {
    v17 = *(v6 + 32);
    v17(v8, v11, v5);
    if (sub_22FE43C64())
    {
      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_allocError();
      return (v17)(v18, v8, v5);
    }
  }

  return result;
}

uint64_t sub_22FD8CC28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_22FD8CCF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AlbumDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AlbumDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD8CE20, 0, 0);
}

uint64_t sub_22FD8CE20()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD8CE9C, v2, 0);
}

uint64_t sub_22FD8CE9C()
{
  sub_22FD914F4(1, sub_22FD8D134);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD8CF4C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49F70;
  v8 = v7 + v6;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + v5);
  v11 = (a2 + *(type metadata accessor for AlbumID(0) + 20));
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;

  v13._object = 0x800000022FE45460;
  v13._countAndFlagsBits = 0xD00000000000005ELL;
  DatabaseConnection.insert(sql:bindings:)(v13, inited);
  swift_setDeallocating();
  return sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
}

uint64_t AlbumDatabase.queryList()()
{
  v1[2] = v0;
  v2 = sub_22FE428C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for AlbumID(0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8D2A4, 0, 0);
}

uint64_t sub_22FD8D2A4()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 80) = v1;

  return MEMORY[0x2822009F8](sub_22FD8D338, v1, 0);
}

uint64_t sub_22FD8D338()
{
  v68 = v0;
  v67 = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v39 = 0;
      goto LABEL_48;
    }
  }

  *__dst = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_46:
    *__dst = v3;
    v54._countAndFlagsBits = 0x6B6361626C6C6F72;
    v54._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v54);
    if (v55)
    {

LABEL_49:

      v56 = v0[1];

      return v56();
    }

LABEL_48:
    swift_willThrow();
    goto LABEL_49;
  }

  *__dst = v3;
  v7 = sub_22FDB08B0(0xD00000000000002DLL, 0x800000022FE44B00);
  sub_22FDB31B8(MEMORY[0x277D84F90], v7);
  v62 = v0[6];
  v63 = v0[7];
  v8 = v0[4];
  sub_22FDB33A0(v7);
  v9 = MEMORY[0x277D84F90];
  v61 = (v8 + 32);
  while (1)
  {
    v10 = sqlite3_step(v7);
    if (v10 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v7, 0) == 5 || (v11 = sqlite3_column_blob(v7, 0)) == 0)
    {
      sub_22FD9172C();
      v6 = swift_allocError();
      *v42 = 0;
      *(v42 + 4) = 0;
      swift_willThrow();
      goto LABEL_44;
    }

    v12 = v11;
    v13 = sqlite3_column_bytes(v7, 0);
    if (!v13)
    {
      v15 = 0;
      v16 = 0xC000000000000000;
      goto LABEL_43;
    }

    v64 = v9;
    v14 = v13;
    if (v13 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v66 = v13;
      memcpy(__dst, v12, v13);
      v15 = *__dst;
      v14 = v66;
      v16 = v60 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v66 << 48);
      v60 = v16;
    }

    else
    {
      sub_22FE42694();
      swift_allocObject();
      if (v14 == 0x7FFFFFFF)
      {
        v52 = sub_22FE42644();
        sub_22FE427A4();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22FE49F80;
        v16 = v52 | 0x8000000000000000;
LABEL_43:
        sub_22FD91780();
        v6 = swift_allocError();
        *v53 = 1;
        swift_willThrow();
        sub_22FD917D4(v15, v16);
LABEL_44:

LABEL_45:
        sub_22FDB35E0(v7);
        goto LABEL_46;
      }

      v15 = v14 << 32;
      v16 = sub_22FE42644() | 0x4000000000000000;
    }

    if (v14 != 16)
    {
      goto LABEL_43;
    }

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(v15 + 16);
        v19 = sub_22FE42654();
        if (!v19)
        {
          sub_22FE42674();
LABEL_61:
          __break(1u);
LABEL_62:
          result = sub_22FE42674();
          __break(1u);
LABEL_63:
          __break(1u);
          return result;
        }

        v20 = v19;
        v21 = sub_22FE42684();
        if (__OFSUB__(v18, v21))
        {
          goto LABEL_58;
        }

        v22 = v18 - v21 + v20;
        sub_22FE42674();
        if (!v22)
        {
          goto LABEL_61;
        }
      }
    }

    else if (v17)
    {
      if (v15 > v15 >> 32)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
      }

      v23 = sub_22FE42654();
      if (!v23)
      {
        goto LABEL_62;
      }

      v24 = v23;
      v25 = sub_22FE42684();
      if (__OFSUB__(v15, v25))
      {
        goto LABEL_59;
      }

      v26 = v15 - v25 + v24;
      result = sub_22FE42674();
      if (!v26)
      {
        goto LABEL_63;
      }
    }

    sub_22FE42894();
    sub_22FD917D4(v15, v16);
    if (sqlite3_column_type(v7, 1) == 5 || !sqlite3_column_text(v7, 1))
    {
      v44 = v0[4];
      v43 = v0[5];
      v45 = v0[3];
      sub_22FD9172C();
      v6 = swift_allocError();
      *v46 = 1;
      *(v46 + 4) = 0;
      swift_willThrow();
      (*(v44 + 8))(v43, v45);
      goto LABEL_44;
    }

    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[5];
    v31 = v0[3];
    v32 = sub_22FE43114();
    v34 = v33;
    (*v61)(v28, v30, v31);
    v35 = (v28 + *(v62 + 20));
    *v35 = v32;
    v35[1] = v34;
    sub_22FD93B00(v28, v29, type metadata accessor for AlbumID);
    v9 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22FD920E8(0, v64[2] + 1, 1, v64, &qword_27DAE4118, &qword_22FE4A130, type metadata accessor for AlbumID);
    }

    v37 = v9[2];
    v36 = v9[3];
    if (v37 >= v36 >> 1)
    {
      v9 = sub_22FD920E8((v36 > 1), v37 + 1, 1, v9, &qword_27DAE4118, &qword_22FE4A130, type metadata accessor for AlbumID);
    }

    v38 = v0[8];
    sub_22FD93D84(v0[9], type metadata accessor for AlbumID);
    v9[2] = v37 + 1;
    sub_22FD93B68(v38, v9 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v37, type metadata accessor for AlbumID);
  }

  if (v10 != 101)
  {
    v47 = v10;

    v48 = v47;
    if (sqlite3_errstr(v47))
    {
      v49 = sub_22FE43104();
      v51 = v50;
    }

    else
    {
      v51 = 0xE300000000000000;
      v49 = 4271950;
    }

    v58 = v48 | 0xA000000000000000;
    sub_22FD916D8();
    v6 = swift_allocError();
    *v59 = v58;
    v59[1] = v49;
    v59[2] = v51;
    swift_willThrow();
    goto LABEL_45;
  }

  sub_22FDB35E0(v7);
  *__dst = v3;
  v40._countAndFlagsBits = 0x74696D6D6F63;
  v40._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v40);
  if (v41)
  {
    v6 = v41;

    goto LABEL_46;
  }

  v57 = v0[1];

  return v57(v9);
}

uint64_t AlbumDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for DatabaseBinding(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8DDAC, 0, 0);
}

uint64_t sub_22FD8DDAC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v28 = *(v0[3] + 16);
  v0[18] = v28;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000030DLL, 0x800000022FE44B30);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v27 = *(v5 + 48);
  v12 = v27(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD93B68(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD920E8(0, v14[2] + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD920E8((v15 > 1), v16 + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD93B68(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v27(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD93B68(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD920E8(0, v14[2] + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD920E8((v23 > 1), v24 + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD93B68(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8E2D4, v28, 0);
}

uint64_t sub_22FD8E2D4()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;

  return MEMORY[0x2822009F8](sub_22FD8E374, 0, 0);
}

void *sub_22FD8E374()
{
  v35 = v0[5];
  v42 = v0[4];
  v43 = v0[9];
  v1 = sub_22FD936E4(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v2 = sub_22FE43AE4();
  result = v1;
  v4 = 0;
  v5 = v1[8];
  v32 = v1 + 8;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v36 = v2;
  v37 = v2 + 8;
  v33 = v9;
  v34 = v1;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = result[6];
      v15 = *(v14 + 8 * v13);
      v16 = *(result[7] + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        v38 = *(v14 + 8 * v13);
        v39 = v13;
        v40 = v8;
        v41 = v4;
        v46 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v17, 0);
        v18 = v46;
        v19 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v44 = *(v35 + 72);
        do
        {
          v45 = v0[10];
          v20 = v0[7];
          v21 = v0[8];
          v22 = v0[6];
          sub_22FD764B4(v19, v21, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v21, v20, &qword_27DAE4068, &qword_22FE49FD8);
          v23 = *(v42 + 48);
          v24 = *(v20 + v23);
          sub_22FD93B68(v20, v22, type metadata accessor for StoredPhoto);
          *(v22 + v23) = v24;
          sub_22FD93B00(v22, v45, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
          v26 = *(v46 + 16);
          v25 = *(v46 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_22FD92408((v25 > 1), v26 + 1, 1);
          }

          v27 = v0[10];
          *(v46 + 16) = v26 + 1;
          sub_22FD93B68(v27, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, type metadata accessor for StoredPhoto);
          v19 += v44;
          --v17;
        }

        while (v17);

        v2 = v36;
        v9 = v33;
        result = v34;
        v8 = v40;
        v4 = v41;
        v15 = v38;
        v13 = v39;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      *(v37 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v2[6] + 8 * v13) = v15;
      *(v2[7] + 8 * v13) = v18;
      v28 = v2[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v2[2] = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = v32[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v31 = v0[1];

    return v31(v2);
  }

  return result;
}

uint64_t sub_22FD8E744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AlbumDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8E94C, 0, 0);
}

uint64_t sub_22FD8E94C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v24 = *(v0[4] + 16);
  v0[12] = v24;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000321, 0x800000022FE44E40);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v26 = v6;
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD93B68(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD920E8(0, v12[2] + 1, 1, v12, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD920E8((v20 > 1), v21 + 1, 1, v12, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD93B68(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v26;
    --v13;
  }

  while (v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48, v24, 0);
}

uint64_t sub_22FD8ED48()
{
  v1 = PhotosFaceDatabase.queryPhotos(sql:bindings:)(v0[13], v0[14], v0[16]);
  v0[15] = 0;
  v2 = v1;

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22FD8EE50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AlbumDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD8EF0C, 0, 0);
}

uint64_t sub_22FD8EF0C()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22FD8EF30, v1, 0);
}

uint64_t sub_22FD8EF30()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FD8F0EC(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FD8F0EC(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v114 = a3;
  v113 = a2;
  v105 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  MEMORY[0x28223BE20](v5);
  v108 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v102 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v109 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v111 = (v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v110 = v102 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v102 - v14;
  v112 = *a1;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000111, 0x800000022FE45340);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v16 = v117;
  v17 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v113;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v114;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v117 = v112;
  v23 = v115;
  v24 = sub_22FDB08B0(v16, v17);
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v111;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v116;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 0;
LABEL_50:
      *(v99 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v15 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v100 = 1;
      *(v100 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = v29[12];
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v93 = 2;
      *(v93 + 4) = 0;
      swift_willThrow();
      (*(v107 + 8))(&v15[v33], v106);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = sqlite3_column_bytes(v25, 2);
    v40 = sub_22FDB285C(v38, v39);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v40, v41);
    sub_22FD764B4(v15, v110, &qword_27DAE41A0, &qword_22FE4A1A0);
    v42 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_22FD91BBC(0, v30[2] + 1, 1, v30, &qword_27DAE4198, &qword_22FE4A198, &qword_27DAE41A0, &qword_22FE4A1A0);
    }

    v27 = v111;
    v44 = v42[2];
    v43 = v42[3];
    v45 = v42;
    if (v44 >= v43 >> 1)
    {
      v45 = sub_22FD91BBC((v43 > 1), v44 + 1, 1, v42, &qword_27DAE4198, &qword_22FE4A198, &qword_27DAE41A0, &qword_22FE4A1A0);
    }

    sub_22FD93E6C(v15, &qword_27DAE41A0, &qword_22FE4A1A0);
    v45[2] = v44 + 1;
    v26 = v45;
    sub_22FD93E04(v110, v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v44, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v94 = v28;

    v95 = v94;
    if (sqlite3_errstr(v94))
    {
      v96 = sub_22FE43104();
      v98 = v97;
    }

    else
    {
      v98 = 0xE300000000000000;
      v96 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v101 = v95 | 0xA000000000000000;
    v101[1] = v96;
    v101[2] = v98;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v46 = sub_22FD75328(MEMORY[0x277D84F90]);
  v112 = v26[2];
  v113 = v26;
  if (!v112)
  {
    v48 = 0;
    v50 = 0;
    v92 = v105;
LABEL_55:

    sub_22FD6EBD8(v48, 0);
    sub_22FD6EBD8(v50, 0);
    *v92 = v46;
    return;
  }

  v47 = v26;
  v48 = 0;
  v49 = v29;
  v50 = 0;
  v51 = 0;
  v110 = v49[12];
  v104 = v47 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v52 = v49[16];
  v53 = v106;
  v116 = (v107 + 32);
  v102[0] = v107 + 16;
  v102[1] = v107 + 8;
  v103 = v52;
  while (v51 < *(v113 + 16))
  {
    v54 = *(v109 + 72);
    v114 = v51;
    sub_22FD764B4(v104 + v54 * v51, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v55 = v27;
    v56 = *v27;
    v57 = *v116;
    (*v116)(v119, v55 + v110, v53);
    v115 = v57;
    v57(v108, v55 + v103, v53);
    sub_22FD6EBD8(v48, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v46;
    v60 = sub_22FD74718(v56);
    v61 = v46[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_59;
    }

    v64 = v59;
    if (v46[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v59)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v46 = v117;
        if (v64)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v63, isUniquelyReferenced_nonNull_native);
      v46 = v117;
      v65 = sub_22FD74718(v56);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_64;
      }

      v60 = v65;
      if (v64)
      {
        goto LABEL_28;
      }
    }

    v67 = sub_22FD75430(MEMORY[0x277D84F90]);
    v46[(v60 >> 6) + 8] |= 1 << v60;
    *(v46[6] + 8 * v60) = v56;
    *(v46[7] + 8 * v60) = v67;
    v68 = v46[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_61;
    }

    v46[2] = v70;
LABEL_28:
    v71 = v46[7];
    sub_22FD6EBD8(v50, 0);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v71 + 8 * v60);
    v73 = v117;
    *(v71 + 8 * v60) = 0x8000000000000000;
    v75 = sub_22FD747EC(v119);
    v76 = v73[2];
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_60;
    }

    v79 = v74;
    if (v73[3] >= v78)
    {
      if ((v72 & 1) == 0)
      {
        sub_22FDDEAFC();
        v73 = v117;
      }
    }

    else
    {
      sub_22FDDD8F4(v78, v72);
      v73 = v117;
      v80 = sub_22FD747EC(v119);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_63;
      }

      v75 = v80;
    }

    v53 = v106;
    *(v71 + 8 * v60) = v73;

    v82 = *(v71 + 8 * v60);
    v83 = v119;
    if ((v79 & 1) == 0)
    {
      v82[(v75 >> 6) + 8] |= 1 << v75;
      (*(v107 + 16))(v82[6] + *(v107 + 72) * v75, v83, v53);
      *(v82[7] + 8 * v75) = MEMORY[0x277D84F90];
      v84 = v82[2];
      v69 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v69)
      {
        goto LABEL_62;
      }

      v82[2] = v85;
    }

    v86 = v82[7];
    v87 = *(v86 + 8 * v75);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 8 * v75) = v87;
    if ((v88 & 1) == 0)
    {
      v87 = sub_22FD920E8(0, v87[2] + 1, 1, v87, &qword_27DAE4158, &qword_22FE4A168, MEMORY[0x277CC95F0]);
      *(v86 + 8 * v75) = v87;
    }

    v90 = v87[2];
    v89 = v87[3];
    if (v90 >= v89 >> 1)
    {
      v87 = sub_22FD920E8((v89 > 1), v90 + 1, 1, v87, &qword_27DAE4158, &qword_22FE4A168, MEMORY[0x277CC95F0]);
      *(v86 + 8 * v75) = v87;
    }

    v27 = v111;
    v51 = v114 + 1;
    v87[2] = v90 + 1;
    v91 = v107;
    v115(v87 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90, v108, v53);
    (*(v91 + 8))(v119, v53);
    v50 = sub_22FD8FDB0;
    v48 = sub_22FD8FD80;
    v92 = v105;
    if (v112 == v51)
    {
      goto LABEL_55;
    }
  }

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
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

unint64_t sub_22FD8FD80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22FD75430(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t AlbumDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD8FDE0, 0, 0);
}

uint64_t sub_22FD8FDE0()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD8FE5C, v2, 0);
}

uint64_t sub_22FD8FE5C()
{
  sub_22FD914F4(0, sub_22FD93BD0);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD8FF0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE45300;
  v7._countAndFlagsBits = 0xD000000000000030;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD93D84(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t AlbumDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD900B8, 0, 0);
}

uint64_t sub_22FD900B8()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD9013C, v2, 0);
}

uint64_t sub_22FD9013C()
{
  sub_22FD914F4(0, sub_22FD93BEC);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD90204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE45280;
  v5._countAndFlagsBits = 0xD000000000000078;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t sub_22FD90290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FA0;
  v9 = v8 + v7;
  v10 = sub_22FE428C4();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a2, v10);
  swift_storeEnumTagMultiPayload();
  v11(v9 + v6, a1, v10);
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a3;
  result = swift_storeEnumTagMultiPayload();
  *a4 = v8;
  return result;
}

uint64_t AlbumDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD9043C, 0, 0);
}

uint64_t sub_22FD9043C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD904C4, v3, 0);
}

uint64_t sub_22FD904C4()
{
  sub_22FD914F4(0, sub_22FD93C0C);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9058C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FB0;
  v9 = (v8 + v7);
  *v9 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v9 + v6) = 24;
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9 + 3 * v6, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11._object = 0x800000022FE451E0;
  v11._countAndFlagsBits = 0xD000000000000092;
  DatabaseConnection.delete(sql:bindings:)(v11, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t AlbumDatabase.clearPhotos(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD90788, 0, 0);
}

uint64_t sub_22FD90788()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90804, v2, 0);
}

uint64_t sub_22FD90804()
{
  sub_22FD914F4(0, sub_22FD93C28);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4, 0, 0);
}

uint64_t sub_22FD908E4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE451A0;
  v7._countAndFlagsBits = 0xD000000000000037;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD93D84(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t AlbumDatabase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FD90AC4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD90AE8, 0, 0);
}

uint64_t sub_22FD90AE8()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90B64, v2, 0);
}

uint64_t sub_22FD90B64()
{
  sub_22FD914F4(1, sub_22FD93EFC);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD90C14(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD90C38, 0, 0);
}

uint64_t sub_22FD90C38()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90CB4, v2, 0);
}

uint64_t sub_22FD90CB4()
{
  sub_22FD914F4(0, sub_22FD93EE4);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD90D64(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD90D88, 0, 0);
}

uint64_t sub_22FD90D88()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90E04, v2, 0);
}

uint64_t sub_22FD90E04()
{
  sub_22FD914F4(0, sub_22FD93ECC);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD90EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FD90EDC, 0, 0);
}

uint64_t sub_22FD90EDC()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD90F60, v2, 0);
}

uint64_t sub_22FD90F60()
{
  sub_22FD914F4(0, sub_22FD93F18);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD91010(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FD91038, 0, 0);
}

uint64_t sub_22FD91038()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD910C0, v3, 0);
}

uint64_t sub_22FD910C0()
{
  sub_22FD914F4(0, sub_22FD93F3C);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD9117C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FD93F54;

  return AlbumDatabase.queryList()();
}

uint64_t sub_22FD9120C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return AlbumDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FD912B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return AlbumDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FD9134C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD913F4;

  return AlbumDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

uint64_t sub_22FD913F4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_22FD914F4(char a1, void (*a2)(uint64_t *))
{
  v6 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v7 = *(v2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v7)
  {
    sub_22FD9E790();
    if (v3)
    {
      return;
    }

    v7 = *(v2 + v6);
    if (!v7)
    {
      sub_22FD91684();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      return;
    }
  }

  if ((a1 & 1) == 0 || (v15 = v7, sub_22FD9F438(&v15, 0), !v3))
  {
    v15 = v7;
    v8._countAndFlagsBits = 0x6E69676562;
    v8._object = 0xE500000000000000;
    DatabaseConnection.execute(sql:)(v8);
    if (v9 || (v15 = v7, a2(&v15), v15 = v7, v10._countAndFlagsBits = 0x74696D6D6F63, v10._object = 0xE600000000000000, DatabaseConnection.execute(sql:)(v10), v9))
    {
      v11 = v9;
      v15 = v7;
      v12._countAndFlagsBits = 0x6B6361626C6C6F72;
      v12._object = 0xE800000000000000;
      DatabaseConnection.execute(sql:)(v12);
      if (v13)
      {
      }

      else
      {
        if (a1)
        {
          v15 = v7;
          sub_22FD9F438(&v15, 1);
        }

        swift_willThrow();
      }
    }

    else if (a1)
    {
      v15 = v7;
      sub_22FD9F438(&v15, 1);
    }
  }
}

unint64_t sub_22FD91684()
{
  result = qword_27DAE4048;
  if (!qword_27DAE4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4048);
  }

  return result;
}

unint64_t sub_22FD916D8()
{
  result = qword_27DAE4050;
  if (!qword_27DAE4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4050);
  }

  return result;
}

unint64_t sub_22FD9172C()
{
  result = qword_27DAE4058;
  if (!qword_27DAE4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4058);
  }

  return result;
}

unint64_t sub_22FD91780()
{
  result = qword_27DAE4060;
  if (!qword_27DAE4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4060);
  }

  return result;
}

uint64_t sub_22FD917D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

char *sub_22FD91850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
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

void *sub_22FD91A64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4190, &qword_22FE4A190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FD91BBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
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

char *sub_22FD91DA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4148, &qword_22FE4A158);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22FD91EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
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

char *sub_22FD91FB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4110, &qword_22FE4A128);
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

void *sub_22FD920E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

void *sub_22FD922C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4158, &qword_22FE4A168, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_22FD92308(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92328(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FD92348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE41A8, &qword_22FE4A1A8, &qword_27DAE4068, &qword_22FE49FD8);
  *v3 = result;
  return result;
}

void *sub_22FD92388(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE4168, &qword_22FE4A178, &qword_27DAE2CE8, &unk_22FE4A850);
  *v3 = result;
  return result;
}

void *sub_22FD923C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE41B0, &unk_22FE4A860, &qword_27DAE41B8, &qword_22FE4A1B0);
  *v3 = result;
  return result;
}

void *sub_22FD92408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE40F8, &qword_22FE4B1F0, type metadata accessor for StoredPhoto);
  *v3 = result;
  return result;
}

void *sub_22FD9244C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FD9246C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE40F0, &qword_22FE4A110, type metadata accessor for ShuffleID);
  *v3 = result;
  return result;
}

void *sub_22FD924B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
  *v3 = result;
  return result;
}

void *sub_22FD924F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4098, &qword_22FE4A0C8, type metadata accessor for StoredPhotoProto);
  *v3 = result;
  return result;
}

char *sub_22FD92538(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92B60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92578(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92DA8(a1, a2, a3, *v3, &qword_27DAE4120, &qword_22FE4A138);
  *v3 = result;
  return result;
}

char *sub_22FD925A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92DA8(a1, a2, a3, *v3, &qword_27DAE40C8, &qword_22FE4A0E8);
  *v3 = result;
  return result;
}

void *sub_22FD925D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE4128, &unk_22FE4FC70, &qword_27DAE4130, &qword_22FE4A140);
  *v3 = result;
  return result;
}

char *sub_22FD92618(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92FEC(a1, a2, a3, *v3, &qword_27DAE4138, &qword_22FE4A148);
  *v3 = result;
  return result;
}

char *sub_22FD92648(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92DA8(a1, a2, a3, *v3, &qword_27DAE40C0, &qword_22FE4A0E0);
  *v3 = result;
  return result;
}

void *sub_22FD92678(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92EA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92698(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD92FEC(a1, a2, a3, *v3, &qword_27DAE40A8, &qword_22FE4A0D8);
  *v3 = result;
  return result;
}

void *sub_22FD926C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4118, &qword_22FE4A130, type metadata accessor for AlbumID);
  *v3 = result;
  return result;
}

void *sub_22FD9270C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD930E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FD9272C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE40E8, &qword_22FE4A108, type metadata accessor for DailyID);
  *v3 = result;
  return result;
}

void *sub_22FD92770(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4160, &qword_22FE4A170, type metadata accessor for StoredPhotoLayoutProto);
  *v3 = result;
  return result;
}

char *sub_22FD927B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD933F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FD927D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE40D8, &qword_22FE4A0F8, &qword_27DAE2CA8, &unk_22FE4BE90);
  *v3 = result;
  return result;
}

char *sub_22FD92814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4150, &qword_22FE4A160);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FD92920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
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

void *sub_22FD92A2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4190, &qword_22FE4A190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FD92B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
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

char *sub_22FD92C6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4140, &qword_22FE4A150);
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

char *sub_22FD92DA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

void *sub_22FD92EA4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B0, &qword_22FE4FC00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B8, &qword_22FE4FBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FD92FEC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_22FD930E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4100, &qword_22FE4A118);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4108, &qword_22FE4A120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FD9321C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_22FD933F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40D0, &qword_22FE4A0F0);
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

void *sub_22FD934FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
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

void *sub_22FD936E4(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v2);
  v48 = &v40 - v3;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v9;
  v10 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v42 = *(v7 + 80);
  v12 = *(v7 + 72);
  v44 = (v42 + 32) & ~v42;
  v13 = a1 + v44;
  v41 = xmmword_22FE49F60;
  v45 = v8;
  v43 = v12;
  while (1)
  {
    v15 = v49;
    sub_22FD764B4(v13, v49, &qword_27DAE4068, &qword_22FE49FD8);
    v16 = v47;
    sub_22FD764B4(v15, v47, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = *(v46 + 48);
    v18 = *(v16 + v17);
    v19 = v16;
    v20 = v48;
    sub_22FD93B68(v19, v48, type metadata accessor for StoredPhoto);
    *(v20 + v17) = v18;
    sub_22FD93E6C(v20, &qword_27DAE4068, &qword_22FE49FD8);
    v22 = sub_22FD74718(v18);
    v23 = v10[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v10[3] < v25)
    {
      sub_22FDDD204(v25, 1);
      v10 = v50;
      v27 = sub_22FD74718(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v10[7];
      sub_22FD93E04(v49, v45, &qword_27DAE4068, &qword_22FE49FD8);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22FD91BBC(0, v30[2] + 1, 1, v30, &qword_27DAE41A8, &qword_22FE4A1A8, &qword_27DAE4068, &qword_22FE49FD8);
        *(v29 + 8 * v22) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_22FD91BBC((v32 > 1), v33 + 1, 1, v30, &qword_27DAE41A8, &qword_22FE4A1A8, &qword_27DAE4068, &qword_22FE49FD8);
        *(v29 + 8 * v22) = v30;
      }

      v30[2] = v33 + 1;
      v14 = v43;
      sub_22FD93E04(v45, v30 + v44 + v33 * v43, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v34 = v44;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_22FD93E04(v49, v35 + v34, &qword_27DAE4068, &qword_22FE49FD8);
      v10[(v22 >> 6) + 8] |= 1 << v22;
      *(v10[6] + 8 * v22) = v18;
      *(v10[7] + 8 * v22) = v35;
      v36 = v10[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v10[2] = v38;
      v14 = v43;
    }

    v13 += v14;
    if (!--v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD93B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD93B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD93C44(uint64_t a1, uint64_t a2)
{
  result = sub_22FD93D0C(&qword_27DAE4088, a2, type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FD93D0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FD93D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FD93E04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FD93E6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DailyDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DailyDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD93FC0, 0, 0);
}

uint64_t sub_22FD93FC0()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9403C, v2, 0);
}

uint64_t sub_22FD9403C()
{
  sub_22FD914F4(1, sub_22FD9429C);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD940EC(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v6;
  v8._object = 0x800000022FE45E40;
  v8._countAndFlagsBits = 0xD00000000000004CLL;
  DatabaseConnection.insert(sql:bindings:)(v8, inited);
  swift_setDeallocating();
  return sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
}

uint64_t DailyDatabase.queryList()()
{
  v1[2] = v0;
  v2 = sub_22FE428C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = *(type metadata accessor for DailyID(0) - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD94408, 0, 0);
}

uint64_t sub_22FD94408()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 72) = v1;

  return MEMORY[0x2822009F8](sub_22FD9449C, v1, 0);
}

uint64_t sub_22FD9449C()
{
  v60 = v0;
  v59 = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v36 = 0;
      goto LABEL_47;
    }
  }

  *__dst = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_45:
    *__dst = v3;
    v47._countAndFlagsBits = 0x6B6361626C6C6F72;
    v47._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v47);
    if (v48)
    {

LABEL_48:

      v49 = v0[1];

      return v49();
    }

LABEL_47:
    swift_willThrow();
    goto LABEL_48;
  }

  *__dst = v3;
  v7 = sub_22FDB08B0(0xD000000000000026, 0x800000022FE454C0);
  sub_22FDB31B8(MEMORY[0x277D84F90], v7);
  v55 = v0[6];
  v8 = v0[4];
  sub_22FDB33A0(v7);
  v54 = (v8 + 32);
  v9 = MEMORY[0x277D84F90];
  v56 = v7;
  while (1)
  {
    v10 = sqlite3_step(v7);
    if (v10 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v7, 0) == 5 || (v11 = sqlite3_column_blob(v7, 0)) == 0)
    {
      sub_22FD9172C();
      v6 = swift_allocError();
      *v39 = 0;
      *(v39 + 4) = 0;
      swift_willThrow();
      goto LABEL_43;
    }

    v12 = v11;
    v13 = sqlite3_column_bytes(v7, 0);
    if (!v13)
    {
      v15 = 0;
      v16 = 0xC000000000000000;
LABEL_42:
      sub_22FD91780();
      v6 = swift_allocError();
      *v46 = 1;
      swift_willThrow();
      sub_22FD917D4(v15, v16);
LABEL_43:

LABEL_44:
      sub_22FDB35E0(v7);
      goto LABEL_45;
    }

    v14 = v13;
    if (v13 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v58 = v13;
      memcpy(__dst, v12, v13);
      v15 = *__dst;
      v14 = v58;
      v16 = v53 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v58 << 48);
      v53 = v16;
    }

    else
    {
      sub_22FE42694();
      swift_allocObject();
      if (v14 == 0x7FFFFFFF)
      {
        v45 = sub_22FE42644();
        sub_22FE427A4();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22FE49F80;
        v16 = v45 | 0x8000000000000000;
        goto LABEL_42;
      }

      v15 = v14 << 32;
      v16 = sub_22FE42644() | 0x4000000000000000;
    }

    if (v14 != 16)
    {
      goto LABEL_42;
    }

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v19 = *(v15 + 16);
        v20 = sub_22FE42654();
        if (!v20)
        {
          sub_22FE42674();
LABEL_60:
          __break(1u);
LABEL_61:
          result = sub_22FE42674();
          __break(1u);
LABEL_62:
          __break(1u);
          return result;
        }

        v21 = v20;
        v22 = sub_22FE42684();
        if (__OFSUB__(v19, v22))
        {
          goto LABEL_57;
        }

        v18 = v9;
        v23 = v19 - v22 + v21;
        sub_22FE42674();
        if (!v23)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v18 = v9;
      }
    }

    else if (v17)
    {
      if (v15 > v15 >> 32)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      v24 = sub_22FE42654();
      if (!v24)
      {
        goto LABEL_61;
      }

      v25 = v24;
      v26 = sub_22FE42684();
      if (__OFSUB__(v15, v26))
      {
        goto LABEL_58;
      }

      v18 = v9;
      v27 = v15 - v26 + v25;
      result = sub_22FE42674();
      if (!v27)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v18 = v9;
    }

    v30 = v0[7];
    v29 = v0[8];
    v31 = v0[5];
    v32 = v0[3];
    sub_22FE42894();
    sub_22FD917D4(v15, v16);
    (*v54)(v29, v31, v32);
    sub_22FD98B9C(v29, v30, type metadata accessor for DailyID);
    v9 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22FD91A14(0, v18[2] + 1, 1, v18);
    }

    v7 = v56;
    v34 = v9[2];
    v33 = v9[3];
    if (v34 >= v33 >> 1)
    {
      v9 = sub_22FD91A14((v33 > 1), v34 + 1, 1, v9);
    }

    v35 = v0[7];
    sub_22FD98EAC(v0[8], type metadata accessor for DailyID);
    v9[2] = v34 + 1;
    sub_22FD98C04(v35, v9 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v34, type metadata accessor for DailyID);
  }

  if (v10 != 101)
  {
    v40 = v10;

    v41 = v40;
    if (sqlite3_errstr(v40))
    {
      v42 = sub_22FE43104();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
      v42 = 4271950;
    }

    v51 = v41 | 0xA000000000000000;
    sub_22FD916D8();
    v6 = swift_allocError();
    *v52 = v51;
    v52[1] = v42;
    v52[2] = v44;
    swift_willThrow();
    goto LABEL_44;
  }

  sub_22FDB35E0(v7);
  *__dst = v3;
  v37._countAndFlagsBits = 0x74696D6D6F63;
  v37._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v37);
  if (v38)
  {
    v6 = v38;

    goto LABEL_45;
  }

  v50 = v0[1];

  return v50(v9);
}

uint64_t DailyDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for DatabaseBinding(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD94E3C, 0, 0);
}

uint64_t sub_22FD94E3C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v28 = *(v0[3] + 16);
  v0[18] = v28;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000030DLL, 0x800000022FE454F0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v27 = *(v5 + 48);
  v12 = v27(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD98C04(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD919C8((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD98C04(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v27(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD98C04(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD919C8((v23 > 1), v24 + 1, 1, v14);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD98C04(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD952D4, v28, 0);
}

uint64_t sub_22FD952D4()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;

  return MEMORY[0x2822009F8](sub_22FD95374, 0, 0);
}

void *sub_22FD95374()
{
  v35 = v0[5];
  v42 = v0[4];
  v43 = v0[9];
  v1 = sub_22FD987C0(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v2 = sub_22FE43AE4();
  result = v1;
  v4 = 0;
  v5 = v1[8];
  v32 = v1 + 8;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v36 = v2;
  v37 = v2 + 8;
  v33 = v9;
  v34 = v1;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = result[6];
      v15 = *(v14 + 8 * v13);
      v16 = *(result[7] + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        v38 = *(v14 + 8 * v13);
        v39 = v13;
        v40 = v8;
        v41 = v4;
        v46 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v17, 0);
        v18 = v46;
        v19 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v44 = *(v35 + 72);
        do
        {
          v45 = v0[10];
          v20 = v0[7];
          v21 = v0[8];
          v22 = v0[6];
          sub_22FD764B4(v19, v21, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v21, v20, &qword_27DAE4068, &qword_22FE49FD8);
          v23 = *(v42 + 48);
          v24 = *(v20 + v23);
          sub_22FD98C04(v20, v22, type metadata accessor for StoredPhoto);
          *(v22 + v23) = v24;
          sub_22FD98B9C(v22, v45, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
          v26 = *(v46 + 16);
          v25 = *(v46 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_22FD92408((v25 > 1), v26 + 1, 1);
          }

          v27 = v0[10];
          *(v46 + 16) = v26 + 1;
          sub_22FD98C04(v27, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, type metadata accessor for StoredPhoto);
          v19 += v44;
          --v17;
        }

        while (v17);

        v2 = v36;
        v9 = v33;
        result = v34;
        v8 = v40;
        v4 = v41;
        v15 = v38;
        v13 = v39;
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      *(v37 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v2[6] + 8 * v13) = v15;
      *(v2[7] + 8 * v13) = v18;
      v28 = v2[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v2[2] = v30;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = v32[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v31 = v0[1];

    return v31(v2);
  }

  return result;
}

uint64_t DailyDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9587C, 0, 0);
}

uint64_t sub_22FD9587C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v24 = *(v0[4] + 16);
  v0[12] = v24;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000321, 0x800000022FE45800);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD98C04(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD919C8(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD919C8((v20 > 1), v21 + 1, 1, v12);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD98C04(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v6;
    --v13;
  }

  while (v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48, v24, 0);
}

uint64_t DailyDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD95C54, 0, 0);
}

uint64_t sub_22FD95C54()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22FD95C78, v1, 0);
}

uint64_t sub_22FD95C78()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FD95E34(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FD95E34(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v114 = a3;
  v113 = a2;
  v105 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  MEMORY[0x28223BE20](v5);
  v108 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v102 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v109 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v111 = (v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v110 = v102 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v102 - v14;
  v112 = *a1;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000111, 0x800000022FE45D20);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v16 = v117;
  v17 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v113;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v114;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v117 = v112;
  v23 = v115;
  v24 = sub_22FDB08B0(v16, v17);
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v111;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v116;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 0;
LABEL_50:
      *(v99 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v15 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v99 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v100 = 1;
      *(v100 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = v29[12];
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v93 = 2;
      *(v93 + 4) = 0;
      swift_willThrow();
      (*(v107 + 8))(&v15[v33], v106);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = sqlite3_column_bytes(v25, 2);
    v40 = sub_22FDB285C(v38, v39);
    LOBYTE(v117) = 2;
    UUID.init(serialized:version:)(v40, v41);
    sub_22FD764B4(v15, v110, &qword_27DAE41A0, &qword_22FE4A1A0);
    v42 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_22FD919F0(0, v30[2] + 1, 1, v30);
    }

    v27 = v111;
    v44 = v42[2];
    v43 = v42[3];
    v45 = v42;
    if (v44 >= v43 >> 1)
    {
      v45 = sub_22FD919F0((v43 > 1), v44 + 1, 1, v42);
    }

    sub_22FD93E6C(v15, &qword_27DAE41A0, &qword_22FE4A1A0);
    v45[2] = v44 + 1;
    v26 = v45;
    sub_22FD93E04(v110, v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v44, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v94 = v28;

    v95 = v94;
    if (sqlite3_errstr(v94))
    {
      v96 = sub_22FE43104();
      v98 = v97;
    }

    else
    {
      v98 = 0xE300000000000000;
      v96 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v101 = v95 | 0xA000000000000000;
    v101[1] = v96;
    v101[2] = v98;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v46 = sub_22FD75328(MEMORY[0x277D84F90]);
  v112 = v26[2];
  v113 = v26;
  if (!v112)
  {
    v48 = 0;
    v50 = 0;
    v92 = v105;
LABEL_55:

    sub_22FD6EBD8(v48, 0);
    sub_22FD6EBD8(v50, 0);
    *v92 = v46;
    return;
  }

  v47 = v26;
  v48 = 0;
  v49 = v29;
  v50 = 0;
  v51 = 0;
  v110 = v49[12];
  v104 = v47 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v52 = v49[16];
  v53 = v106;
  v116 = (v107 + 32);
  v102[0] = v107 + 16;
  v102[1] = v107 + 8;
  v103 = v52;
  while (v51 < *(v113 + 16))
  {
    v54 = *(v109 + 72);
    v114 = v51;
    sub_22FD764B4(v104 + v54 * v51, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v55 = v27;
    v56 = *v27;
    v57 = *v116;
    (*v116)(v119, v55 + v110, v53);
    v115 = v57;
    v57(v108, v55 + v103, v53);
    sub_22FD6EBD8(v48, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v46;
    v60 = sub_22FD74718(v56);
    v61 = v46[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_59;
    }

    v64 = v59;
    if (v46[3] >= v63)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v59)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v46 = v117;
        if (v64)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v63, isUniquelyReferenced_nonNull_native);
      v46 = v117;
      v65 = sub_22FD74718(v56);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_64;
      }

      v60 = v65;
      if (v64)
      {
        goto LABEL_28;
      }
    }

    v67 = sub_22FD75430(MEMORY[0x277D84F90]);
    v46[(v60 >> 6) + 8] |= 1 << v60;
    *(v46[6] + 8 * v60) = v56;
    *(v46[7] + 8 * v60) = v67;
    v68 = v46[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_61;
    }

    v46[2] = v70;
LABEL_28:
    v71 = v46[7];
    sub_22FD6EBD8(v50, 0);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v71 + 8 * v60);
    v73 = v117;
    *(v71 + 8 * v60) = 0x8000000000000000;
    v75 = sub_22FD747EC(v119);
    v76 = v73[2];
    v77 = (v74 & 1) == 0;
    v78 = v76 + v77;
    if (__OFADD__(v76, v77))
    {
      goto LABEL_60;
    }

    v79 = v74;
    if (v73[3] >= v78)
    {
      if ((v72 & 1) == 0)
      {
        sub_22FDDEAFC();
        v73 = v117;
      }
    }

    else
    {
      sub_22FDDD8F4(v78, v72);
      v73 = v117;
      v80 = sub_22FD747EC(v119);
      if ((v79 & 1) != (v81 & 1))
      {
        goto LABEL_63;
      }

      v75 = v80;
    }

    v53 = v106;
    *(v71 + 8 * v60) = v73;

    v82 = *(v71 + 8 * v60);
    v83 = v119;
    if ((v79 & 1) == 0)
    {
      v82[(v75 >> 6) + 8] |= 1 << v75;
      (*(v107 + 16))(v82[6] + *(v107 + 72) * v75, v83, v53);
      *(v82[7] + 8 * v75) = MEMORY[0x277D84F90];
      v84 = v82[2];
      v69 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v69)
      {
        goto LABEL_62;
      }

      v82[2] = v85;
    }

    v86 = v82[7];
    v87 = *(v86 + 8 * v75);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    *(v86 + 8 * v75) = v87;
    if ((v88 & 1) == 0)
    {
      v87 = sub_22FD91828(0, v87[2] + 1, 1, v87);
      *(v86 + 8 * v75) = v87;
    }

    v90 = v87[2];
    v89 = v87[3];
    if (v90 >= v89 >> 1)
    {
      v87 = sub_22FD91828((v89 > 1), v90 + 1, 1, v87);
      *(v86 + 8 * v75) = v87;
    }

    v27 = v111;
    v51 = v114 + 1;
    v87[2] = v90 + 1;
    v91 = v107;
    v115(v87 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90, v108, v53);
    (*(v91 + 8))(v119, v53);
    v50 = sub_22FD8FDB0;
    v48 = sub_22FD8FD80;
    v92 = v105;
    if (v112 == v51)
    {
      goto LABEL_55;
    }
  }

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
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

uint64_t DailyDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD96A60, 0, 0);
}

uint64_t sub_22FD96A60()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD96ADC, v2, 0);
}

uint64_t sub_22FD96ADC()
{
  sub_22FD914F4(0, sub_22FD98C6C);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD96B8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v5 + v4, a2, v6);
  swift_storeEnumTagMultiPayload();
  v7._object = 0x800000022FE45CE0;
  v7._countAndFlagsBits = 0xD000000000000030;
  DatabaseConnection.delete(sql:bindings:)(v7, v5);
  swift_setDeallocating();
  sub_22FD98EAC(v5 + v4, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t DailyDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD96D38, 0, 0);
}

uint64_t sub_22FD96D38()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD96DBC, v2, 0);
}

uint64_t sub_22FD96DBC()
{
  sub_22FD914F4(0, sub_22FD98C88);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD96E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE45C60;
  v5._countAndFlagsBits = 0xD000000000000078;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t sub_22FD96EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v6 = *(type metadata accessor for DatabaseBinding(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22FE4A1C0;
  v10 = (v9 + v8);
  *v10 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v10 + v7) = 24;
  swift_storeEnumTagMultiPayload();
  *(v10 + 2 * v7) = a2;
  swift_storeEnumTagMultiPayload();
  *(v10 + 3 * v7) = 200000;
  swift_storeEnumTagMultiPayload();
  *(v10 + 4 * v7) = 24;
  swift_storeEnumTagMultiPayload();
  *(v10 + 5 * v7) = a3;
  swift_storeEnumTagMultiPayload();
  v11 = sub_22FE428C4();
  (*(*(v11 - 8) + 16))(v10 + 6 * v7, a4, v11);
  swift_storeEnumTagMultiPayload();
  v12._object = 0x800000022FE45B70;
  v12._countAndFlagsBits = 0xD0000000000000E7;
  DatabaseConnection.delete(sql:bindings:)(v12, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t DailyDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD97150, 0, 0);
}

uint64_t sub_22FD97150(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v3[2];
    v7 = *(v3[4] + 16);
    v3[5] = v7;
    v8 = swift_task_alloc();
    v3[6] = v8;
    v8[2] = 0;
    v8[3] = v5;
    v8[4] = v6;
    a1 = sub_22FD971EC;
    a2 = v7;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22FD971EC()
{
  sub_22FD914F4(0, sub_22FD98CA8);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4, 0, 0);
}

uint64_t DailyDatabase.clearPhotos(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22FE428C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9735C, 0, 0);
}

uint64_t sub_22FD9735C()
{
  v30 = v0;
  _s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ_0();
  v2 = v1;
  v0[7] = v1;
  if (qword_28148B120 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_22FE42D34();
  __swift_project_value_buffer(v7, qword_28148B128);
  (*(v3 + 16))(v4, v6, v5);
  v8 = sub_22FE42D14();
  v9 = sub_22FE436C4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v29 = swift_slowAlloc();
    v15 = v29;
    *v14 = 136315650;
    *(v14 + 4) = sub_22FD98218(0xD000000000000011, 0x800000022FE45B30, &v29);
    *(v14 + 12) = 2080;
    sub_22FD98D90(&qword_27DAE41D0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22FE43C24();
    v18 = v17;
    (*(v11 + 8))(v12, v13);
    v19 = sub_22FD98218(v16, v18, &v29);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = 1;
    _os_log_impl(&dword_22FD6D000, v8, v9, "%s: unrelating photos for %s older than %ld days", v14, 0x20u);
    swift_arrayDestroy();
    v20 = v15;
    v2 = v28;
    MEMORY[0x23190C380](v20, -1, -1);
    MEMORY[0x23190C380](v14, -1, -1);
  }

  else
  {

    v21 = (*(v11 + 8))(v12, v13);
  }

  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(v2 - 1, 1))
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x2822009F8](v21, v22, v23);
  }

  v24 = v0[2];
  v25 = *(v0[3] + 16);
  v0[8] = v25;
  v26 = swift_task_alloc();
  v0[9] = v26;
  v26[2] = 0;
  v26[3] = v2 - 2;
  v26[4] = v24;
  v21 = sub_22FD97630;
  v22 = v25;
  v23 = 0;

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22FD97630()
{
  sub_22FD914F4(0, sub_22FD98F3C);
  *(v0 + 80) = 0;

  return MEMORY[0x2822009F8](sub_22FD976E0, 0, 0);
}

uint64_t sub_22FD976E0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v1;
  v4[4] = v3;

  return MEMORY[0x2822009F8](sub_22FD97764, v2, 0);
}

uint64_t sub_22FD97764()
{
  v1 = *(v0 + 80);
  sub_22FD914F4(0, sub_22FD98F3C);
  *(v0 + 96) = v1;

  if (v1)
  {
    v2 = sub_22FD978DC;
  }

  else
  {
    v2 = sub_22FD97878;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FD97814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FD97878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FD978DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DailyDatabase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FD97998(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD979BC, 0, 0);
}

uint64_t sub_22FD979BC()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD97A38, v2, 0);
}

uint64_t sub_22FD97A38()
{
  sub_22FD914F4(1, sub_22FD98F24);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD97AE8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD97B0C, 0, 0);
}

uint64_t sub_22FD97B0C()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD97B88, v2, 0);
}

uint64_t sub_22FD97B88()
{
  sub_22FD914F4(0, sub_22FD98F0C);
  *(v0 + 48) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD97C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD73F54;

  return DailyDatabase.clearPhotos(for:)(a1);
}

uint64_t sub_22FD97CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FD97CF8, 0, 0);
}

uint64_t sub_22FD97CF8()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 16);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD97D7C, v2, 0);
}

uint64_t sub_22FD97D7C()
{
  sub_22FD914F4(0, sub_22FD98F54);
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD97E2C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FD97E54, 0, 0);
}

uint64_t sub_22FD97E54(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v3[2];
    v7 = *(v3[4] + 16);
    v3[5] = v7;
    v8 = swift_task_alloc();
    v3[6] = v8;
    v8[2] = 0;
    v8[3] = v5;
    v8[4] = v6;
    a1 = sub_22FD97EF0;
    a2 = v7;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22FD97EF0()
{
  sub_22FD914F4(0, sub_22FD98F3C);
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14, 0, 0);
}

uint64_t sub_22FD97FA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FD93F54;

  return DailyDatabase.queryList()();
}

uint64_t sub_22FD98030(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return DailyDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FD980D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return DailyDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FD98170(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD913F4;

  return DailyDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

unint64_t sub_22FD98218(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22FD982E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22FD98E50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22FD982E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22FD983F0(a5, a6);
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
    result = sub_22FE43994();
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

void *sub_22FD983F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_22FD9843C(a1, a2);
  sub_22FD9856C(&unk_2844CE6D8);
  return v3;
}

void *sub_22FD9843C(uint64_t a1, unint64_t a2)
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

  v6 = sub_22FD98658(v5, 0);
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

  result = sub_22FE43994();
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
        v10 = sub_22FE43124();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22FD98658(v10, 0);
        result = sub_22FE438D4();
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