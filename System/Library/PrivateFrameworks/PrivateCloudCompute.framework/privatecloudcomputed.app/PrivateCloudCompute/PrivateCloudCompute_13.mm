void sub_1001477F0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 9) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

unint64_t sub_1001479FC()
{
  result = qword_10022F450[0];
  if (!qword_10022F450[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_10022F450);
  }

  return result;
}

unint64_t sub_100147A4C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1001479FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100147AD4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100147C18(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_100147DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_1001D1C90();
  sub_100147F60(v14, *(v3 + *(a1 + 36)), *(v3 + *(a1 + 36) + 8), *(v3 + *(a1 + 40)), *(v3 + *(a1 + 40) + 8), v6, v11, a2);
}

uint64_t sub_100147F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = type metadata accessor for OnResponseHeadSequence.AsyncIterator(0, a6, a7, a4);
  *(a8 + v14[9]) = 1;
  *(a8 + v14[10]) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v17 = (a8 + v14[11]);
  *v17 = a2;
  v17[1] = a3;
  v18 = (a8 + v14[12]);
  *v18 = a4;
  v18[1] = a5;
  return result;
}

uint64_t sub_100148050(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_100011AC0(&qword_1002295C0, &qword_1001D6910);
  v2[14] = swift_task_alloc();
  v3 = sub_1001D0FF0();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10014818C, 0, 0);
}

uint64_t sub_10014818C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v1 + 40);
  *(v0 + 44) = v3;
  if (*(v2 + v3))
  {

    v4 = *(v0 + 8);

    return v4(0, 0xF000000000000000);
  }

  else
  {
    v6 = *(v1 + 36);
    if (*(v2 + v6))
    {
      *(v2 + v6) = 0;
      *(v0 + 144) = *(v1 + 24);
      *(v0 + 152) = *(v1 + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_1001483C0;
      v10 = v0 + 48;
    }

    else
    {
      v11 = *(v1 + 24);
      *(v0 + 240) = *(v1 + 16);
      *(v0 + 248) = v11;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v12 = swift_task_alloc();
      *(v0 + 256) = v12;
      *v12 = v0;
      v12[1] = sub_100149084;
      v10 = v0 + 16;
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1001483C0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100149710;
  }

  else
  {
    v2 = sub_1001484D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001484D4()
{
  *(v0 + 176) = *(v0 + 48);
  v1 = *(v0 + 64);
  *(v0 + 192) = v1;
  *(v0 + 41) = *(v0 + 72);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0;
      v3 = 0xF000000000000000;
LABEL_24:

      v33 = *(v0 + 8);

      return v33(v2, v3);
    }

    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);

    sub_1001D1050();

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);
      (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
      v35 = (*(v20 + *(v19 + 44)) + **(v20 + *(v19 + 44)));
      v21 = swift_task_alloc();
      *(v0 + 200) = v21;
      *v21 = v0;
      v21[1] = sub_1001489D4;
      v18 = *(v0 + 136);
      goto LABEL_16;
    }
  }

  else
  {
    (*(*(v0 + 128) + 56))(*(v0 + 112), 1, 1, *(v0 + 120));
  }

  sub_100011F00(*(v0 + 112), &qword_1002295C0, &qword_1001D6910);
  v7 = *(v0 + 184);
  if (v7 >> 60 == 15)
  {
    sub_100089D40(*(v0 + 176), v7, *(v0 + 192));
    v8 = *(v0 + 144);
    *(v0 + 240) = *(v0 + 152);
    *(v0 + 248) = v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_100149084;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v12 = *(v0 + 41);
  *(*(v0 + 88) + *(v0 + 44)) = v12 & 1;
  if ((v12 & 1) == 0)
  {
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = *(v0 + 176);
    sub_100089C38(v24, v22);
    v25 = v24;
    v26 = v22;
    v27 = v23;
LABEL_23:
    sub_100089D40(v25, v26, v27);
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    goto LABEL_24;
  }

  if (!*(v0 + 192))
  {
    v28 = *(v0 + 176);
    v29 = *(v0 + 184);
    sub_100089C38(v28, v29);
    v25 = v28;
    v26 = v29;
    v27 = 0;
    goto LABEL_23;
  }

  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  sub_1001D12A0();
  sub_100012038(v14, v13);
  sub_1001D1250();
  v15 = sub_1001D1070();
  *(v0 + 216) = v15;

  if (!v15)
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v25 = *(v0 + 176);
    goto LABEL_23;
  }

  sub_1001D1290();
  if (!swift_dynamicCastClass())
  {
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    v25 = v32;
    v26 = v31;
    v27 = v30;
    goto LABEL_23;
  }

  v16 = *(*(v0 + 88) + *(*(v0 + 80) + 48));
  sub_1001D1280();
  v35 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 224) = v17;
  *v17 = v0;
  v17[1] = sub_100148E88;
  v18 = *(v0 + 104);
LABEL_16:

  return v35(v18);
}

uint64_t sub_1001489D4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10014979C;
  }

  else
  {
    v2 = sub_100148AE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100148AE8()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 184);
  if (v1 >> 60 == 15)
  {
    sub_100089D40(*(v0 + 176), v1, *(v0 + 192));
    v2 = *(v0 + 144);
    *(v0 + 240) = *(v0 + 152);
    *(v0 + 248) = v2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = sub_100149084;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v6 = *(v0 + 41);
  *(*(v0 + 88) + *(v0 + 44)) = v6 & 1;
  if (v6)
  {
    if (*(v0 + 192))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      sub_1001D12A0();
      sub_100012038(v8, v7);
      sub_1001D1250();
      v9 = sub_1001D1070();
      *(v0 + 216) = v9;

      if (v9)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v10 = *(*(v0 + 88) + *(*(v0 + 80) + 48));
          sub_1001D1280();
          v28 = (v10 + *v10);
          v11 = swift_task_alloc();
          *(v0 + 224) = v11;
          *v11 = v0;
          v11[1] = sub_100148E88;
          v12 = *(v0 + 104);

          return v28(v12);
        }

        v22 = *(v0 + 184);
        v21 = *(v0 + 192);
        v23 = *(v0 + 176);

        v16 = v23;
        v17 = v22;
        v18 = v21;
      }

      else
      {
        v17 = *(v0 + 184);
        v18 = *(v0 + 192);
        v16 = *(v0 + 176);
      }
    }

    else
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      sub_100089C38(v19, v20);
      v16 = v19;
      v17 = v20;
      v18 = 0;
    }
  }

  else
  {
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    sub_100089C38(v15, v13);
    v16 = v15;
    v17 = v13;
    v18 = v14;
  }

  sub_100089D40(v16, v17, v18);
  v24 = *(v0 + 176);
  v25 = *(v0 + 184);

  v26 = *(v0 + 8);

  return v26(v24, v25);
}

uint64_t sub_100148E88()
{
  v2 = *(*v1 + 104);
  *(*v1 + 232) = v0;

  sub_100011F00(v2, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v3 = sub_100149858;
  }

  else
  {
    v3 = sub_100148FC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100148FC8()
{
  sub_100089D40(v0[22], v0[23], v0[24]);

  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100149084()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100149918;
  }

  else
  {
    v2 = sub_100149198;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149198()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;
  *(v0 + 288) = v3;
  v4 = *(v0 + 40);
  *(v0 + 42) = v4;
  if (v3 == 1)
  {
    v2 = 0;
    v1 = 0xF000000000000000;
LABEL_17:

    v16 = *(v0 + 8);

    return v16(v2, v1);
  }

  if (v4)
  {
    *(*(v0 + 88) + *(v0 + 44)) = 1;
    if (v3)
    {
      sub_1001D12A0();
      sub_1001D1250();
      v5 = sub_1001D1070();
      *(v0 + 296) = v5;

      if (v5)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v6 = *(*(v0 + 88) + *(*(v0 + 80) + 48));
          sub_1001D1280();
          v17 = (v6 + *v6);
          v7 = swift_task_alloc();
          *(v0 + 304) = v7;
          *v7 = v0;
          v7[1] = sub_1001494FC;
          v8 = *(v0 + 96);

          return v17(v8);
        }
      }
    }

    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = *(v0 + 272);
    sub_100089C38(v15, v13);
    sub_100089D40(v15, v13, v14);
    v2 = *(v0 + 272);
    v1 = *(v0 + 280);
    goto LABEL_17;
  }

  if (v1 >> 60 != 15)
  {
    sub_100089C38(v2, v1);
    sub_100089D40(v2, v1, v3);
    goto LABEL_17;
  }

  sub_100089D40(v2, v1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  *v12 = v0;
  v12[1] = sub_100149084;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1001494FC()
{
  v2 = *(*v1 + 96);
  *(*v1 + 312) = v0;

  sub_100011F00(v2, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v3 = sub_1001499A4;
  }

  else
  {
    v3 = sub_10014963C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10014963C()
{

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  sub_100089C38(v3, v1);
  sub_100089D40(v3, v1, v2);
  v4 = v0[34];
  v5 = v0[35];

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_100149710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014979C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_100089D40(v0[22], v0[23], v0[24]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100149858()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  sub_10002683C(v3, v1);
  sub_100089D40(v3, v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100149918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001499A4()
{
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];

  sub_100089D40(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100149A54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100149AEC;

  return sub_100148050(a2);
}

uint64_t sub_100149AEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100149C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100147DE4(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t NWConnection.withActivity<A>(activity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1001D0F00();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100149D5C, 0, 0);
}

uint64_t sub_100149D5C()
{
  v1 = v0[4];
  sub_1001D1030();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100149E5C;
  v3 = v0[2];

  return v5(v3);
}

uint64_t sub_100149E5C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10014A030;
  }

  else
  {
    v2 = sub_100149F70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149F70()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, enum case for NWActivity.CompletionReason.success(_:), v3);
  sub_1001D0F20();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10014A030()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, enum case for NWActivity.CompletionReason.failure(_:), v3);
  sub_1001D0F20();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

Swift::Int sub_10014A114()
{
  sub_1001D2580();
  sub_1001D2590(0x37uLL);
  return sub_1001D25C0();
}

Swift::Int sub_10014A180()
{
  sub_1001D2580();
  sub_1001D2590(0x37uLL);
  return sub_1001D25C0();
}

Swift::Int sub_10014A1F0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1 + 1);
  return sub_1001D25C0();
}

Swift::Int sub_10014A268()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1 + 1);
  return sub_1001D25C0();
}

uint64_t sub_10014A2AC@<X0>(Swift::Int *a1@<X0>, privatecloudcomputed::TC2NetworkActivityLabel_optional *a2@<X8>)
{
  result = _s20privatecloudcomputed23TC2NetworkActivityLabelO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t _s20privatecloudcomputed23TC2NetworkActivityLabelO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_10014A310()
{
  result = qword_10022F4D8;
  if (!qword_10022F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F4D8);
  }

  return result;
}

unint64_t sub_10014A368()
{
  result = qword_10022F4E0;
  if (!qword_10022F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F4E0);
  }

  return result;
}

unint64_t sub_10014A3C0()
{
  result = qword_10022F4E8;
  if (!qword_10022F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F4E8);
  }

  return result;
}

void sub_10014A444()
{
  v1 = v0;
  v2 = sub_1001D0E60();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v22 = *(v3 + 16);
  v22(&v21 - v7, v1, v2);
  v9 = sub_1001D0E50();
  v10 = sub_1001D1E00();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "acquirePowerAssertion", v11, 2u);
  }

  v21 = *(v3 + 8);
  v21(v8, v2);
  AssertionID = 0;
  v12 = sub_1001D17A0();
  v13 = type metadata accessor for PowerAssertion(0);
  v14 = sub_1001D17A0();
  v15 = sub_1001D17A0();
  v16 = IOPMAssertionCreateWithDescription(v12, v14, v15, 0, 0, 10.0, 0, &AssertionID);

  if (v16)
  {
    v22(v6, v1, v2);
    v17 = sub_1001D0E50();
    v18 = sub_1001D1DE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "failed to create assertion for trusted request", v19, 2u);
    }

    v21(v6, v2);
    v20 = 0;
  }

  else
  {
    v20 = AssertionID;
  }

  *(v1 + *(v13 + 24)) = v20;
}

uint64_t sub_10014A754()
{
  v1 = v0;
  v2 = sub_1001D0E60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "releasePowerAssertion", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(type metadata accessor for PowerAssertion(0) + 24);
  result = *(v1 + v9);
  if (result)
  {
    result = IOPMAssertionRelease(result);
    *(v1 + v9) = 0;
  }

  return result;
}

uint64_t type metadata accessor for PowerAssertion(uint64_t a1)
{
  result = qword_10022F548;
  if (!qword_10022F548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014A928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D0E60();
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

    return (v10 + 1);
  }
}

uint64_t sub_10014A9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001D0E60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10014AAB8(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10014AB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncEvent.EventState(255, *(a1 + 80), a3, a4);
  result = sub_1001CFF60();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014ABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncEvent.EventState(255, *(*v4 + 80), a3, a4);
  sub_1001CFF60();
  v5 = sub_1001CFF70();
  sub_10015607C(v5);
  return v4;
}

uint64_t sub_10014AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10014ABDC(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

char *sub_10014ACF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for AsyncEvent.EventState(255, *a1, a3, a4);
  return sub_1001CFF60();
}

uint64_t sub_10014AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CancellableContinuation(255, *(a1 + 16), a3, a4);
  result = sub_1001D1A60();
  if (v5 <= 0x3F)
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    result = sub_1001D25D0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014ADE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 8;
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
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

  return (v5 | v10) + 255;
}

void sub_10014AF0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_10014B0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10014B10C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014B13C(uint64_t a1)
{
  sub_100011DF4(&qword_100227A58, &qword_1001D3600);
  sub_1001D1AB0();
  sub_1001D1F00();
  result = sub_1001CFF60();
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

uint64_t sub_10014B20C()
{
  sub_100011DF4(&qword_100227A58, &qword_1001D3600);
  sub_1001D1AB0();
  sub_1001D1F00();
  sub_1001CFF60();
  v1 = sub_1001CFF70();
  sub_10015607C(v1);
  return v0;
}

uint64_t sub_10014B2C8()
{
  sub_10014B20C();

  return swift_deallocClassInstance();
}

char *sub_10014B338(uint64_t *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  sub_100011DF4(&qword_100227A58, &qword_1001D3600);
  sub_1001D1AB0();
  sub_1001D1F00();
  return sub_1001CFF60();
}

uint64_t Error.telemetryString.getter@<X0>(unint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = Error._telemetryString.getter(a2, a3);
  a1[1] = v4;
  v5 = enum case for EventValue.string(_:);
  v6 = sub_1001CFEE0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

unint64_t Error._telemetryString.getter(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v65 = sub_1001D1310();
  v61 = *(v65 - 8);
  v3 = __chkstk_darwin(v65);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v64 = &v57 - v5;
  v69 = sub_1001D0950();
  v63 = *(v69 - 8);
  v6 = __chkstk_darwin(v69);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = &v57 - v8;
  v73 = sub_1001D0960();
  v67 = *(v73 - 8);
  v9 = __chkstk_darwin(v73);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v57 - v11;
  v77 = sub_1001D0050();
  v71 = *(v77 - 8);
  v12 = __chkstk_darwin(v77);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v57 - v14;
  v80 = sub_1001D0060();
  v75 = *(v80 - 8);
  v15 = __chkstk_darwin(v80);
  v74 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v57 - v17;
  v18 = sub_1001CFFC0();
  v78 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  v24 = sub_1001D0200();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v57 - v30;
  v32 = *(a1 - 8);
  v33 = __chkstk_darwin(v29);
  v59 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v57 - v35;
  v82 = v32;
  v58 = *(v32 + 16);
  v58(&v57 - v35, v83, a1);
  if (swift_dynamicCast())
  {
    (*(v25 + 32))(v28, v31, v24);
    v37 = sub_1001D0190();
    (*(v25 + 8))(v28, v24);
    v38 = v82;
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v37 = sub_1001281A0(v84, v85);

    v38 = v82;
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v39 = v78;
    (*(v78 + 32))(v21, v23, v18);
    v37 = sub_10014BDF4(v21);
    (*(v39 + 8))(v21, v18);
LABEL_9:
    v38 = v82;
    goto LABEL_19;
  }

  v41 = v79;
  v40 = v80;
  if (swift_dynamicCast())
  {
    v43 = v74;
    v42 = v75;
    (*(v75 + 32))(v74, v41, v40);
    v37 = sub_10014C25C(v43);
    (*(v42 + 8))(v43, v40);
    goto LABEL_9;
  }

  v45 = v76;
  v44 = v77;
  v46 = swift_dynamicCast();
  v38 = v82;
  if (v46)
  {
    v48 = v70;
    v47 = v71;
    (*(v71 + 32))(v70, v45, v44);
    v49 = sub_10014C758(v48);
LABEL_18:
    v37 = v49;
    (*(v47 + 8))(v48, v44);
    goto LABEL_19;
  }

  v50 = v72;
  v44 = v73;
  if (swift_dynamicCast())
  {
    v48 = v66;
    v47 = v67;
    (*(v67 + 32))(v66, v50, v44);
    v49 = sub_10014CA0C(v48);
    goto LABEL_18;
  }

  v51 = v68;
  v44 = v69;
  if (swift_dynamicCast())
  {
    v47 = v63;
    v48 = v62;
    (*(v63 + 32))(v62, v51, v44);
    v49 = sub_10014CB78(v48);
    goto LABEL_18;
  }

  v52 = v64;
  v44 = v65;
  if (swift_dynamicCast())
  {
    v47 = v61;
    v48 = v60;
    (*(v61 + 32))(v60, v52, v44);
    v49 = sub_10014CDA8(v48);
    goto LABEL_18;
  }

  v54 = v59;
  v58(v59, v83, a1);
  if (sub_1001D2430())
  {
    (*(v38 + 8))(v54, a1);
  }

  else
  {
    swift_allocError();
    (*(v38 + 32))(v55, v54, a1);
  }

  v56 = sub_1001CFA10();

  v37 = sub_100127B28(v56);

LABEL_19:
  (*(v38 + 8))(v36, a1);
  return v37;
}

unint64_t sub_10014BDF4(uint64_t a1)
{
  v2 = sub_1001CFFC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for CloudAttestationError.unexpected(_:))
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v7 = v5[1];
    v9 = v8 == 0xD000000000000017 && 0x80000001001E5DD0 == v7;
    if (v9 || (sub_1001D2470() & 1) != 0)
    {

      return 0xD000000000000035;
    }

    else if (v8 == 0x6C706D6920746F4ELL && v7 == 0xEF6465746E656D65)
    {

      return 0xD00000000000002FLL;
    }

    else
    {
      v12 = sub_1001D2470();

      if (v12)
      {
        return 0xD00000000000002FLL;
      }

      else
      {
        return 0xD000000000000020;
      }
    }
  }

  else if (v6 == enum case for CloudAttestationError.attestError(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000021;
  }

  else if (v6 == enum case for CloudAttestationError.validateError(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000023;
  }

  else if (v6 == enum case for CloudAttestationError.expired(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = sub_1001CFD60();
    (*(*(v13 - 8) + 8))(v5, v13);
    return 0xD00000000000001DLL;
  }

  else if (v6 == enum case for CloudAttestationError.missingSealedHash(_:))
  {
    (*(v3 + 96))(v5, v2);
    v14 = sub_1001CFDA0();
    (*(*(v14 - 8) + 8))(v5, v14);
    return 0xD000000000000027;
  }

  else if (v6 == enum case for CloudAttestationError.invalidNonce(_:))
  {
    return 0xD000000000000022;
  }

  else
  {
    v15 = v6;
    result = 0xD00000000000002BLL;
    if (v15 != enum case for CloudAttestationError.emptyCertificateChain(_:) && v15 != enum case for CloudAttestationError.malformedSecureConfig(_:))
    {
      if (v15 == enum case for CloudAttestationError.missingAttestingKey(_:))
      {
        return 0xD000000000000029;
      }

      else
      {
        result = 0xD000000000000026;
        if (v15 != enum case for CloudAttestationError.untrustedAppData(_:))
        {
          (*(v3 + 8))(v5, v2);
          return 0xD000000000000026;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10014C25C(uint64_t a1)
{
  v2 = 0xD000000000000022;
  v3 = sub_1001D0060();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TransparencyLogError.httpError(_:))
  {
    v8 = *(v4 + 96);
    v4 += 96;
    v7 = v8(v6, v3);
    v9 = *v6;
    v22 = 0xD00000000000001FLL;
    v23 = 0x80000001001E60D0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v20 = v9;
LABEL_7:
      v12._countAndFlagsBits = sub_1001D23A0();
      object = v12._object;
LABEL_18:
      v12._object = object;
      sub_1001D18B0(v12);

      return v22;
    }

    v20 = 78;
    v21 = 0xE100000000000000;
    v14 = __OFSUB__(0, v9);
    v15 = -v9;
    if (!v14)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v7 != enum case for TransparencyLogError.unrecognized(_:))
  {
    if (v7 == enum case for TransparencyLogError.unknown(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD00000000000001CLL;
    }

LABEL_14:
    if (v7 == enum case for TransparencyLogError.clientError(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD000000000000020;
    }

    if (v7 == enum case for TransparencyLogError.pendingExpiration(_:))
    {
      (*(v4 + 96))(v6, v3);
      v16 = *(sub_100011AC0(&qword_10022E320, &qword_1001DEF58) + 48);
      v17 = sub_1001CFD60();
      v18 = *(*(v17 - 8) + 8);
      v18(v6 + v16, v17);
      v18(v6, v17);
      return 0xD000000000000026;
    }

    if (v7 == enum case for TransparencyLogError.internalError(_:))
    {
      return v2;
    }

    if (v7 == enum case for TransparencyLogError.mutationPending(_:))
    {
      return 0xD000000000000024;
    }

    if (v7 == enum case for TransparencyLogError.invalidRequest(_:))
    {
      return 0xD000000000000023;
    }

    if (v7 == enum case for TransparencyLogError.notFound(_:))
    {
      return 0xD00000000000001DLL;
    }

    if (v7 == enum case for TransparencyLogError.invalidProof(_:))
    {
      return 0xD000000000000021;
    }

    if (v7 == enum case for TransparencyLogError.unknownStatus(_:))
    {
      return v2;
    }

    if (v7 == enum case for TransparencyLogError.insertFailed(_:))
    {
      return 0xD000000000000021;
    }

    if (v7 != enum case for TransparencyLogError.expired(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD000000000000025;
    }

    return 0xD00000000000001CLL;
  }

  (*(v4 + 96))(v6, v3);
  v10 = *v6;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1001D2030(18);

  v22 = 0xD000000000000022;
  v23 = 0x80000001001E5F90;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = v10;
    goto LABEL_7;
  }

  v20 = 78;
  v21 = 0xE100000000000000;
  v15 = -v10;
  if (!__OFSUB__(0, v10))
  {
LABEL_17:
    v19[1] = v15;
    v24._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v24);

    v12._countAndFlagsBits = v20;
    object = v21;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_10014C758(uint64_t a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = sub_1001D0050();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TransparencyPolicy.Error.malformedRelease(_:))
  {
    (*(v4 + 96))(v6, v3);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1001D2030(22);

    v8 = 0x80000001001E61B0;
    v9 = 0xD000000000000029;
LABEL_5:
    v15 = v9;
    v16 = v8;
    v10 = sub_1001CFA10();
    v11 = sub_100127B28(v10);
    v13 = v12;

    v17._countAndFlagsBits = v11;
    v17._object = v13;
    sub_1001D18B0(v17);

    return v15;
  }

  if (v7 == enum case for TransparencyPolicy.Error.unknown(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = 0x80000001001E6120;
    v9 = 0xD000000000000020;
    goto LABEL_5;
  }

  if (v7 == enum case for TransparencyPolicy.Error.missingProofs(_:))
  {
    return 0xD000000000000025;
  }

  if (v7 == enum case for TransparencyPolicy.Error.notIncluded(_:))
  {
    return 0xD000000000000023;
  }

  if (v7 != enum case for TransparencyPolicy.Error.expired(_:))
  {
    (*(v4 + 8))(v6, v3);
    return 0xD000000000000028;
  }

  return v2;
}

unint64_t sub_10014CA0C(uint64_t a1)
{
  v2 = 0xD000000000000024;
  v3 = sub_1001D0960();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for BinaryEncodingError.anyTranscodeFailure(_:))
  {
    return 0xD000000000000027;
  }

  if (v7 == enum case for BinaryEncodingError.missingRequiredFields(_:))
  {
    return 0xD000000000000029;
  }

  (*(v4 + 8))(v6, v3);
  return v2;
}

unint64_t sub_10014CB78(uint64_t a1)
{
  v2 = 0xD000000000000025;
  v3 = sub_1001D0950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for BinaryDecodingError.trailingGarbage(_:))
  {
    return 0xD000000000000023;
  }

  if (v7 == enum case for BinaryDecodingError.truncated(_:))
  {
    return 0xD00000000000001DLL;
  }

  if (v7 == enum case for BinaryDecodingError.invalidUTF8(_:))
  {
    return 0xD00000000000001FLL;
  }

  if (v7 != enum case for BinaryDecodingError.malformedProtobuf(_:))
  {
    if (v7 == enum case for BinaryDecodingError.missingRequiredFields(_:))
    {
      return 0xD000000000000029;
    }

    else if (v7 == enum case for BinaryDecodingError.internalExtensionError(_:))
    {
      return 0xD00000000000002ALL;
    }

    else if (v7 != enum case for BinaryDecodingError.messageDepthLimit(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD000000000000024;
    }
  }

  return v2;
}

uint64_t sub_10014CDA8(uint64_t a1)
{
  v2 = sub_1001D1310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for NWError.posix(_:))
  {
    (*(v3 + 96))(v5, v2);
    strcpy(v17, "NWError_posix_");
    HIBYTE(v17[1]) = -18;
    result = sub_1001D0EA0();
    if ((result & 0x80000000) == 0)
    {
      LODWORD(v15) = result;
LABEL_19:
      v12._countAndFlagsBits = sub_1001D23A0();
      object = v12._object;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v6 == enum case for NWError.dns(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v6 = v8(v5, v2);
    v9 = *v5;
    strcpy(v17, "NWError_dns_");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = 78;
    v16 = 0xE100000000000000;
    v10 = __OFSUB__(0, v9);
    v11 = -v9;
    if (!v10)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v6 != enum case for NWError.tls(_:))
  {
    if (v6 != enum case for NWError.wifiAware(_:))
    {
      (*(v3 + 8))(v5, v2);
      return 0xD000000000000018;
    }

    result = (*(v3 + 96))(v5, v2);
    v9 = *v5;
    v17[0] = 0xD000000000000012;
    v17[1] = 0x80000001001E6380;
    if (v9 < 0)
    {
      v15 = 78;
      v16 = 0xE100000000000000;
      v10 = __OFSUB__(0, v9);
      v11 = -v9;
      if (!v10)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    LODWORD(v15) = v9;
    goto LABEL_19;
  }

  result = (*(v3 + 96))(v5, v2);
  v9 = *v5;
  strcpy(v17, "NWError_tls_");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v15 = 78;
  v16 = 0xE100000000000000;
  v10 = __OFSUB__(0, v9);
  v11 = -v9;
  if (!v10)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v15 = 78;
  v16 = 0xE100000000000000;
  v11 = -result;
  if (__OFSUB__(0, result))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14[3] = v11;
  v18._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v18);

  v12._countAndFlagsBits = v15;
  object = v16;
LABEL_20:
  v12._object = object;
  sub_1001D18B0(v12);

  return v17[0];
}

uint64_t FeatureFlagChecker.isEnabled(_:)(uint64_t a1)
{
  v2 = sub_1001D0180();
  v5[3] = v2;
  v5[4] = sub_10014D188();
  v3 = sub_10003B47C(v5);
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  LOBYTE(a1) = sub_1001CFEC0();
  sub_100011CF0(v5);
  return a1 & 1;
}

unint64_t sub_10014D188()
{
  result = qword_100229588;
  if (!qword_100229588)
  {
    sub_1001D0180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229588);
  }

  return result;
}

uint64_t *blockingIOQueue.unsafeMutableAddressor()
{
  if (qword_100227960 != -1)
  {
    swift_once();
  }

  return &blockingIOQueue;
}

void sub_10014D240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFB10();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  v11 = sub_1001D02F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001D0E60();
  v58 = *(v15 - 8);
  v59 = v15;
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for TC2LogCategory.daemon(_:), v11);
  sub_1001D08B0();
  (*(v12 + 8))(v14, v11);
  v18 = [objc_opt_self() defaultManager];
  v19 = *(v5 + 16);
  v55 = a1;
  v19(v10, a1, v4);
  v54 = v8;
  v56 = a2;
  v19(v8, a2, v4);
  v57 = v17;
  v20 = sub_1001D0E50();
  v21 = sub_1001D1DD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60 = v52;
    *v22 = 136315394;
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_1001D23A0();
    v53 = v18;
    v25 = v24;
    v26 = *(v5 + 8);
    v26(v10, v4);
    v27 = sub_1000954E0(v23, v25, &v60);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = v54;
    v29 = sub_1001D23A0();
    v31 = v30;
    v26(v28, v4);
    v32 = sub_1000954E0(v29, v31, &v60);
    v18 = v53;

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "migrating file source=%s destination=%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = *(v5 + 8);
    v34(v54, v4);
    v34(v10, v4);
  }

  sub_1001CFA80(v33);
  v36 = v35;
  sub_1001CFA80(v37);
  v39 = v38;
  v60 = 0;
  v40 = [v18 moveItemAtURL:v36 toURL:v38 error:&v60];

  v41 = v57;
  if (v40)
  {
    v42 = *(v58 + 8);
    v43 = v60;
    v42(v41, v59);
  }

  else
  {
    v44 = v60;
    sub_1001CFA20();

    swift_willThrow();
    swift_errorRetain();
    v45 = sub_1001D0E50();
    v46 = sub_1001D1DE0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v18;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v45, v46, "migration failed error=%@", v48, 0xCu);
      sub_100011F00(v49, &unk_1002301D0, &qword_1001D4F50);
    }

    else
    {
    }

    (*(v58 + 8))(v41, v59);
  }
}

void sub_10014D874(uint64_t a1)
{
  v2 = sub_1001CFB10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D02F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001D0E60();
  v39 = *(v10 - 8);
  v40 = v10;
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [objc_opt_self() defaultManager];
  sub_1001CFA30();
  v13 = sub_1001D17A0();

  v14 = [v41 fileExistsAtPath:v13];

  if (v14)
  {
    (*(v7 + 104))(v9, enum case for TC2LogCategory.daemon(_:), v6);
    sub_1001D08B0();
    (*(v7 + 8))(v9, v6);
    (*(v3 + 16))(v5, a1, v2);
    v38 = v12;
    v15 = sub_1001D0E50();
    v16 = sub_1001D1DD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136315138;
      v19 = sub_1001CFA50();
      v21 = v20;
      (*(v3 + 8))(v5, v2);
      v22 = sub_1000954E0(v19, v21, &v42);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "deleting file url=%s", v17, 0xCu);
      sub_100011CF0(v18);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_1001CFA80(v23);
    v26 = v25;
    v42 = 0;
    v27 = [v41 removeItemAtURL:v25 error:&v42];

    v28 = v38;
    if (v27)
    {
      v29 = *(v39 + 8);
      v30 = v42;
      v29(v28, v40);
    }

    else
    {
      v31 = v42;
      sub_1001CFA20();

      swift_willThrow();
      swift_errorRetain();
      v32 = sub_1001D0E50();
      v33 = sub_1001D1DE0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "deletion failed error=%@", v34, 0xCu);
        sub_100011F00(v35, &unk_1002301D0, &qword_1001D4F50);
      }

      else
      {
      }

      (*(v39 + 8))(v28, v40);
    }
  }

  else
  {
    v24 = v41;
  }
}

uint64_t sub_10014DE14()
{
  v0 = sub_1001D1E30();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001D1410();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001D1E20();
  __chkstk_darwin(v5 - 8);
  sub_10005A1A4();
  sub_1001D1E10();
  sub_1001D1400();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_1001D1E60();
  blockingIOQueue = result;
  return result;
}

uint64_t sub_10014DFC4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v103 = a4;
  v106 = a3;
  v111 = a2;
  v104 = a1;
  v4 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  __chkstk_darwin(v4 - 8);
  v6 = (&v92 - v5);
  v95 = sub_1001CFA40();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v9 = __chkstk_darwin(v8 - 8);
  v98 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v107 = &v92 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v92 - v14;
  v15 = __chkstk_darwin(v13);
  v96 = &v92 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v92 - v18;
  __chkstk_darwin(v17);
  v109 = &v92 - v20;
  v21 = sub_1001CFB10();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v100 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v97 = &v92 - v26;
  v27 = __chkstk_darwin(v25);
  v112 = &v92 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v92 - v30;
  __chkstk_darwin(v29);
  v33 = &v92 - v32;
  v34 = sub_1001D02F0();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1001D0E60();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v39 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 104))(v37, enum case for TC2LogCategory.daemon(_:), v34);
  v108 = v39;
  sub_1001D08B0();
  (*(v35 + 8))(v37, v34);
  v40 = v22;
  v41 = [objc_opt_self() defaultManager];
  sub_10001208C(v106, v19, &unk_100230170, &unk_1001E0D90);
  v105 = *(v22 + 48);
  v106 = v22 + 48;
  v42 = v105(v19, 1, v21);
  v110 = v41;
  if (v42 != 1)
  {
    (*(v22 + 32))(v31, v19, v21);
    v113 = 0x7972617262694CLL;
    v114 = 0xE700000000000000;
    v50 = v94;
    v51 = v93;
    v52 = v95;
    (*(v94 + 104))(v93, enum case for URL.DirectoryHint.isDirectory(_:), v95);
    sub_100011EAC();
    sub_1001CFB00();
    (*(v50 + 8))(v51, v52);
    v113 = 0;
    v53 = [v41 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v113];
    v54 = v113;
    if (v53)
    {
      v55 = v40;
      v56 = v53;
      v46 = v33;
      v57 = v96;
      sub_1001CFAB0();
      v58 = v54;

      (*(v55 + 8))(v31, v21);
      v48 = *(v55 + 56);
      v48(v57, 0, 1, v21);
      v49 = v109;
      sub_100150730(v57, v109);
      v40 = v55;
      goto LABEL_6;
    }

LABEL_18:
    v91 = v113;
    sub_1001CFA20();

    swift_willThrow();
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_1001D2030(44);
    v115._object = 0x80000001001E70C0;
    v115._countAndFlagsBits = 0xD00000000000002ALL;
    sub_1001D18B0(v115);
    swift_getErrorValue();
    sub_1001D2440();
    result = sub_1001D2180();
    __break(1u);
    return result;
  }

  sub_100011F00(v19, &unk_100230170, &unk_1001E0D90);
  v113 = 0;
  v43 = [v41 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v113];
  v44 = v113;
  if (!v43)
  {
    goto LABEL_18;
  }

  v45 = v43;
  v46 = v33;
  sub_1001CFAB0();
  v47 = v44;

  v48 = *(v22 + 56);
  v49 = v109;
  v48(v109, 1, 1, v21);
LABEL_6:
  v59 = sub_1001D02E0();
  v60 = *(v59 - 8);
  (*(v60 + 16))(v6, v103, v59);
  v61 = *(v60 + 56);
  v62 = 1;
  v61(v6, 0, 1, v59);
  sub_10014EDCC(v6, v110, v112);
  sub_100011F00(v6, &unk_100230300, &qword_1001D7138);
  v63 = v49;
  v64 = v99;
  sub_10001208C(v63, v99, &unk_100230170, &unk_1001E0D90);
  if (v105(v64, 1, v21) != 1)
  {
    v65 = v97;
    (*(v40 + 32))(v97, v64, v21);
    v61(v6, 1, 1, v59);
    sub_10014EDCC(v6, v110, v111);
    sub_100011F00(v6, &unk_100230300, &qword_1001D7138);
    (*(v40 + 8))(v65, v21);
    v62 = 0;
  }

  v103 = v46;
  v48(v111, v62, 1, v21);
  v66 = v100;
  (*(v40 + 16))(v100, v112, v21);
  v67 = v108;
  v68 = sub_1001D0E50();
  v69 = sub_1001D1DD0();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v40;
    v72 = swift_slowAlloc();
    v113 = v72;
    *v70 = 136315138;
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v73 = sub_1001D23A0();
    v74 = v66;
    v75 = v73;
    v77 = v76;
    v78 = *(v71 + 8);
    v78(v74, v21);
    v79 = sub_1000954E0(v75, v77, &v113);

    *(v70 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v68, v69, "daemonDir=%s", v70, 0xCu);
    sub_100011CF0(v72);
    v40 = v71;

    v67 = v108;
  }

  else
  {

    v78 = *(v40 + 8);
    v78(v66, v21);
  }

  v80 = v107;
  sub_10001208C(v111, v107, &unk_100230170, &unk_1001E0D90);
  v81 = sub_1001D0E50();
  v82 = sub_1001D1DD0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v113 = v84;
    *v83 = 136315138;
    v85 = v98;
    sub_10001208C(v80, v98, &unk_100230170, &unk_1001E0D90);
    if (v105(v85, 1, v21) == 1)
    {
      sub_100011F00(v85, &unk_100230170, &unk_1001E0D90);
      v86 = 0;
      v87 = 0xE000000000000000;
    }

    else
    {
      v86 = sub_1001CFA50();
      v87 = v88;
      v78(v85, v21);
    }

    sub_100011F00(v107, &unk_100230170, &unk_1001E0D90);
    v89 = sub_1000954E0(v86, v87, &v113);

    *(v83 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v81, v82, "migrateFrom=%s", v83, 0xCu);
    sub_100011CF0(v84);

    sub_100011F00(v109, &unk_100230170, &unk_1001E0D90);
    v78(v103, v21);
    (*(v101 + 8))(v108, v102);
  }

  else
  {

    sub_100011F00(v80, &unk_100230170, &unk_1001E0D90);
    sub_100011F00(v109, &unk_100230170, &unk_1001E0D90);
    v78(v103, v21);
    (*(v101 + 8))(v67, v102);
  }

  return (*(v40 + 32))(v104, v112, v21);
}

char *sub_10014EDCC@<X0>(void (*a1)(char *, uint64_t)@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v40 = a1;
  v3 = sub_1001CFA40();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  __chkstk_darwin(v5 - 8);
  v7 = v36 - v6;
  v8 = sub_1001D02E0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = v36 - v13;
  v14 = sub_1001CFB10();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v36 - v19;
  sub_1001CFAD0();
  sub_1001CFA60();

  sub_1001CFA90();
  v21 = *(v15 + 8);
  v41 = v14;
  v21(v18, v14);
  sub_10001208C(v40, v7, &unk_100230300, &qword_1001D7138);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100011F00(v7, &unk_100230300, &qword_1001D7138);
LABEL_5:
    v25 = v41;
    goto LABEL_7;
  }

  v40 = v21;
  (*(v9 + 32))(v44, v7, v8);
  (*(v9 + 104))(v12, enum case for TC2Environment.production(_:), v8);
  sub_1001507A0(&qword_10022F788, &type metadata accessor for TC2Environment, &protocol conformance descriptor for TC2Environment);
  v23 = sub_1001D1790();
  v24 = *(v9 + 8);
  v24(v12, v8);
  if (v23)
  {
    v24(v44, v8);
    goto LABEL_5;
  }

  v26 = sub_1001D02B0();
  v36[1] = v27;
  v45 = v26;
  v46 = v27;
  v29 = v37;
  v28 = v38;
  (*(v38 + 104))(v37, enum case for URL.DirectoryHint.isDirectory(_:), v39);
  sub_100011EAC();
  sub_1001CFB00();
  (*(v28 + 8))(v29, v39);

  v24(v44, v8);
  v25 = v41;
  v40(v20, v41);
  (*(v15 + 32))(v20, v18, v25);
LABEL_7:
  sub_1001CFA80(v22);
  v31 = v30;
  v45 = 0;
  v32 = [v42 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v45];

  v44 = v45;
  if (v32)
  {
    (*(v15 + 32))(v43, v20, v25);
    v33 = v44;

    return v33;
  }

  else
  {
    v35 = v44;
    sub_1001CFA20();

    swift_willThrow();
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1001D2030(43);
    v48._countAndFlagsBits = 0xD00000000000001FLL;
    v48._object = 0x80000001001E7110;
    sub_1001D18B0(v48);
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v49._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v49);

    v50._countAndFlagsBits = 0x3D726F72726520;
    v50._object = 0xE700000000000000;
    sub_1001D18B0(v50);
    swift_getErrorValue();
    sub_1001D2440();
    v51._countAndFlagsBits = 32;
    v51._object = 0xE100000000000000;
    sub_1001D18B0(v51);
    result = sub_1001D2180();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F450(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  v3 = sub_1001D1810();
  v116 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFB10();
  v118 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v115 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v117 = &v112 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v112 - v12;
  __chkstk_darwin(v11);
  v120 = &v112 - v14;
  v15 = sub_1001D02F0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001D0E60();
  v20 = *(v19 - 8);
  v123 = v19;
  v124 = v20;
  __chkstk_darwin(v19);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for TC2LogCategory.daemon(_:), v15);
  sub_1001D08B0();
  (*(v16 + 8))(v18, v15);
  v23 = [objc_opt_self() defaultManager];
  v119 = a2;
  sub_1001CFA80(v24);
  v26 = v25;
  v125 = 0;
  v27 = [v23 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:0 options:0 error:&v125];

  v28 = v125;
  if (!v27)
  {
    v41 = v125;
    sub_1001CFA20();

    swift_willThrow();
    swift_errorRetain();
    v42 = sub_1001D0E50();
    v43 = sub_1001D1DE0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "failed destination migration check error=%@", v44, 0xCu);
      sub_100011F00(v45, &unk_1002301D0, &qword_1001D4F50);
    }

    else
    {
    }

    return (*(v124 + 8))(v22, v123);
  }

  v122 = v23;
  v29 = sub_1001D19D0();
  v30 = v28;

  if (*(v29 + 16))
  {

    v31 = v22;
    v32 = sub_1001D0E50();
    v33 = sub_1001D1DD0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v125 = v35;
      *v34 = 136315138;
      v36 = sub_1001D19E0();
      v38 = v37;

      v39 = sub_1000954E0(v36, v38, &v125);

      *(v34 + 4) = v39;
      v40 = "skipping migration due to destinationContents=%s";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v32, v33, v40, v34, 0xCu);
      sub_100011CF0(v35);

      return (*(v124 + 8))(v31, v123);
    }

    goto LABEL_20;
  }

  v114 = v6;
  sub_1001CFA80(0);
  v48 = v47;
  v125 = 0;
  v49 = [v122 contentsOfDirectoryAtURL:v47 includingPropertiesForKeys:0 options:0 error:&v125];

  v50 = v125;
  if (!v49)
  {
    v60 = v125;
    sub_1001CFA20();

    swift_willThrow();
    swift_errorRetain();
    v31 = v22;
    v61 = sub_1001D0E50();
    v62 = sub_1001D1DE0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v65;
      *v64 = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "failed source migration check error=%@", v63, 0xCu);
      sub_100011F00(v64, &unk_1002301D0, &qword_1001D4F50);
    }

LABEL_17:

    v32 = sub_1001D0E50();
    v33 = sub_1001D1DD0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v125 = v35;
      *v34 = 136315138;
      v66 = sub_1001D19E0();
      v68 = v67;

      v69 = sub_1000954E0(v66, v68, &v125);

      *(v34 + 4) = v69;
      v40 = "skipping migration due to sourceContents=%s";
      goto LABEL_19;
    }

LABEL_20:

    return (*(v124 + 8))(v31, v123);
  }

  v51 = sub_1001D19D0();
  v52 = v50;

  v31 = v22;
  if (!*(v51 + 16))
  {
    goto LABEL_17;
  }

  v53 = v120;
  sub_1001CFAA0();
  sub_1001D1800();
  v54 = sub_1001D17E0();
  v56 = v55;
  result = (*(v116 + 8))(v5, v3);
  if (v56 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1001CFC20();
    v58 = v54;
    v59 = v114;
    v112 = v58;
    v115 = v56;
    v70 = v118;
    v113 = *(v118 + 16);
    v113(v13, v53, v114);
    v71 = sub_1001D0E50();
    v72 = sub_1001D1DD0();
    if (os_log_type_enabled(v71, v72))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v125 = v75;
      *v74 = 136315138;
      sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v76 = sub_1001D23A0();
      v78 = v77;
      v116 = *(v70 + 8);
      (v116)(v13, v114);
      v79 = sub_1000954E0(v76, v78, &v125);
      v59 = v114;

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v71, v72, "wrote migrationSemaphoreFile=%s", v74, 0xCu);
      sub_100011CF0(v75);

      sub_10002683C(v112, v115);
    }

    else
    {
      sub_10002683C(v112, v115);

      v116 = *(v70 + 8);
      (v116)(v13, v59);
    }

    v80 = v121;
    v81 = v122;
    v82 = v117;
    v83 = v113;
    v84 = v119;
    sub_1000268C8(v121, v119);
    sub_1000F4588(v80, v84);
    sub_100108538(v80, v84);
    sub_1001504A4(v80, v84);
    sub_10003D6F0(v80, v84);
    sub_1001CFA80(v85);
    v86 = v80;
    v88 = v87;
    v125 = 0;
    LODWORD(v84) = [v81 removeItemAtURL:v87 error:&v125];

    v89 = v125;
    if (!v84)
    {
      v102 = v125;
      sub_1001CFA20();

      swift_willThrow();
      swift_errorRetain();
      v103 = sub_1001D0E50();
      v104 = sub_1001D1DE0();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = v59;
        v107 = swift_slowAlloc();
        *v105 = 138412290;
        swift_errorRetain();
        v108 = _swift_stdlib_bridgeErrorToNSError();
        *(v105 + 4) = v108;
        *v107 = v108;
        _os_log_impl(&_mh_execute_header, v103, v104, "unable to delete migration source error=%@", v105, 0xCu);
        sub_100011F00(v107, &unk_1002301D0, &qword_1001D4F50);

        v109 = v120;
        v110 = v106;
      }

      else
      {

        v109 = v120;
        v110 = v59;
      }

      (v116)(v109, v110);
      return (*(v124 + 8))(v31, v123);
    }

    v83(v82, v86, v59);
    v90 = v89;
    v91 = sub_1001D0E50();
    v92 = sub_1001D1DD0();
    if (!os_log_type_enabled(v91, v92))
    {

      v111 = v116;
      (v116)(v82, v59);
      v111(v120, v59);
      return (*(v124 + 8))(v31, v123);
    }

    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v125 = v94;
    *v93 = 136315138;
    sub_1001507A0(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v95 = sub_1001D23A0();
    v96 = v59;
    v98 = v97;
    v99 = v82;
    v100 = v116;
    (v116)(v99, v96);
    v101 = sub_1000954E0(v95, v98, &v125);

    *(v93 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v91, v92, "deleted migration source=%s", v93, 0xCu);
    sub_100011CF0(v94);

    v100(v120, v96);
    return (*(v124 + 8))(v31, v123);
  }

  return result;
}

uint64_t sub_1001504A4(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_1001CFA40();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFB10();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = __chkstk_darwin(v6);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v27 = 0xD000000000000016;
  v28 = 0x80000001001E7070;
  v11 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v13 = *(v3 + 8);
  v14 = v22;
  v13(v5, v22);
  v27 = 0xD000000000000016;
  v28 = 0x80000001001E7070;
  v12(v5, v11, v14);
  v15 = v23;
  sub_1001CFB00();
  v13(v5, v14);
  v16 = v15;
  sub_10014D240(v10, v15);
  v17 = *(v24 + 8);
  v18 = v16;
  v19 = v25;
  v17(v18, v25);
  return (v17)(v10, v19);
}

uint64_t sub_100150730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001507A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HTTPFields.loggingDescription.getter()
{
  v1 = v0;
  v2 = sub_1001D1380();
  v45 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = sub_1001D13D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D0ED0();
  v12 = sub_100151518(&qword_100229338, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  v13 = sub_1001D1D00();
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = v13;
    v49 = _swiftEmptyArrayStorage;
    sub_1001514F8(0, v13 & ~(v13 >> 63), 0);
    v46 = v49;
    sub_1001D1CF0();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v39 = v15;
      v40 = v12;
      v16 = 0;
      v17 = v8;
      v18 = (v8 + 16);
      v19 = (v45 + 8);
      v36 = (v17 + 8);
      v42 = v2;
      v43 = v1;
      v37 = (v45 + 8);
      v38 = v18;
      v41 = v11;
      while (!__OFADD__(v16, 1))
      {
        v45 = v16 + 1;
        v20 = sub_1001D1D40();
        (*v38)(v10);
        (v20)(&v47, 0);
        sub_1001D13B0();
        v21 = v44;
        sub_1001D1340();
        LOBYTE(v20) = sub_1001D1350();
        v22 = *v19;
        (*v19)(v21, v2);
        v22(v6, v2);
        sub_1001D13B0();
        sub_100151518(&qword_100229340, &type metadata accessor for HTTPField.Name, &protocol conformance descriptor for HTTPField.Name);
        v47 = sub_1001D23A0();
        v48 = v23;
        v22(v6, v2);
        if (v20)
        {
          v24._countAndFlagsBits = 0x544341444552203ALL;
          v24._object = 0xEB000000000A4445;
        }

        else
        {
          v50._countAndFlagsBits = 8250;
          v50._object = 0xE200000000000000;
          sub_1001D18B0(v50);
          v51._countAndFlagsBits = sub_1001D13C0();
          sub_1001D18B0(v51);

          v24._countAndFlagsBits = 10;
          v24._object = 0xE100000000000000;
        }

        sub_1001D18B0(v24);
        v26 = v47;
        v25 = v48;
        v27 = v10;
        v28 = v10;
        v29 = v7;
        (*v36)(v28, v7);
        v30 = v46;
        v49 = v46;
        v32 = v46[2];
        v31 = v46[3];
        if (v32 >= v31 >> 1)
        {
          sub_1001514F8((v31 > 1), v32 + 1, 1);
          v30 = v49;
        }

        v30[2] = v32 + 1;
        v46 = v30;
        v33 = &v30[2 * v32];
        v33[4] = v26;
        v33[5] = v25;
        sub_1001D1D20();
        ++v16;
        v2 = v42;
        v7 = v29;
        v10 = v27;
        v19 = v37;
        if (v45 == v39)
        {
          v14 = v46;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
    v47 = v14;

    sub_100152064(&v47);

    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100021D90();
    v34 = sub_1001D1750();

    return v34;
  }

  return result;
}

void *sub_100150D38()
{
  v1 = sub_1001D1380();
  v87 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v79 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v78 = &v77 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v77 - v7;
  __chkstk_darwin(v6);
  v93 = &v77 - v9;
  v10 = sub_1001D13D0();
  v85 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v77 - v14;
  v15 = sub_100011AC0(&qword_10022E648, &qword_1001DF4F8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = sub_1000D65D4(_swiftEmptyArrayStorage);
  v20 = sub_1001D0ED0();
  (*(*(v20 - 8) + 16))(v18, v0, v20);
  v21 = *(v16 + 44);
  v22 = sub_100151518(&qword_100229338, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1CF0();
  sub_1001D1D10();
  if (*&v18[v21] == v94)
  {
LABEL_2:
    sub_100152B3C(v18);
    return v19;
  }

  v90 = v10;
  v91 = v8;
  v88 = (v85 + 4);
  v89 = (v85 + 2);
  v86 = v22;
  ++v87;
  v84 = v13;
  ++v85;
  v82 = v20;
  v83 = v18;
  v81 = v21;
  while (1)
  {
    v27 = sub_1001D1D40();
    v28 = v90;
    v29 = v1;
    v30 = v92;
    (*v89)(v92);
    (v27)(&v94, 0);
    sub_1001D1D20();
    v31 = v30;
    v1 = v29;
    (*v88)(v13, v31, v28);
    v32 = v93;
    sub_1001D13B0();
    v33 = v91;
    sub_1001D1340();
    LOBYTE(v27) = sub_1001D1350();
    v34 = *v87;
    (*v87)(v33, v29);
    v34(v32, v29);
    if (v27)
    {
      break;
    }

    v48 = v28;
    v49 = v79;
    sub_1001D13B0();
    v50 = sub_1001D1320();
    v52 = v51;
    v53 = v1;
    v34(v49, v1);
    v54 = sub_1001D13C0();
    v80 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v19;
    v58 = sub_100006028(v50, v52);
    v59 = v19[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_28;
    }

    v62 = v57;
    if (v19[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100010C9C();
      }
    }

    else
    {
      sub_10000E1D8(v61, isUniquelyReferenced_nonNull_native);
      v63 = sub_100006028(v50, v52);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_31;
      }

      v58 = v63;
    }

    v1 = v53;
    if (v62)
    {

      v19 = v94;
      v24 = (v94[7] + 16 * v58);
      v25 = v80;
      *v24 = v54;
      v24[1] = v25;

      v13 = v84;
      (*v85)(v84, v48);
LABEL_5:
      v18 = v83;
      goto LABEL_6;
    }

    v19 = v94;
    v94[(v58 >> 6) + 8] |= 1 << v58;
    v67 = (v19[6] + 16 * v58);
    *v67 = v50;
    v67[1] = v52;
    v68 = (v19[7] + 16 * v58);
    v69 = v80;
    *v68 = v54;
    v68[1] = v69;
    v13 = v84;
    (*v85)(v84, v48);
    v70 = v19[2];
    v44 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    v18 = v83;
    if (v44)
    {
      goto LABEL_30;
    }

    v19[2] = v71;
LABEL_6:
    v26 = v81;
    sub_1001D1D10();
    if (*&v18[v26] == v94)
    {
      goto LABEL_2;
    }
  }

  v35 = v78;
  sub_1001D13B0();
  v36 = sub_1001D1320();
  v38 = v37;
  v34(v35, v29);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v19;
  v40 = sub_100006028(v36, v38);
  v42 = v19[2];
  v43 = (v41 & 1) == 0;
  v44 = __OFADD__(v42, v43);
  v45 = v42 + v43;
  if (!v44)
  {
    v46 = v41;
    if (v19[3] >= v45)
    {
      if ((v39 & 1) == 0)
      {
        v72 = v40;
        sub_100010C9C();
        v40 = v72;
        v13 = v84;
        if (v46)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_10000E1D8(v45, v39);
      v40 = sub_100006028(v36, v38);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_31;
      }
    }

    v13 = v84;
    if (v46)
    {
LABEL_18:
      v65 = v40;

      v19 = v94;
      v66 = (v94[7] + 16 * v65);
      *v66 = 0x4445544341444552;
      v66[1] = 0xE800000000000000;

      (*v85)(v13, v28);
      goto LABEL_5;
    }

LABEL_25:
    v19 = v94;
    v94[(v40 >> 6) + 8] |= 1 << v40;
    v73 = (v19[6] + 16 * v40);
    *v73 = v36;
    v73[1] = v38;
    v74 = (v19[7] + 16 * v40);
    *v74 = 0x4445544341444552;
    v74[1] = 0xE800000000000000;
    (*v85)(v13, v28);
    v75 = v19[2];
    v44 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v44)
    {
      goto LABEL_29;
    }

    v19[2] = v76;
    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

char *sub_1001514D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001514F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100151518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100151560(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100151580(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151CA0(a1, a2, a3, *v3, &qword_100227AB8, &qword_1001D3658, &unk_100230260, &qword_1001D3660);
  *v3 = result;
  return result;
}

void *sub_1001515C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F798, &qword_1001E0D28, &type metadata accessor for Workload);
  *v3 = result;
  return result;
}

char *sub_100151604(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100151624(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7C8, &qword_1001E0D58, &type metadata accessor for RateLimitInfo.WorkloadTag);
  *v3 = result;
  return result;
}

void *sub_100151668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7A8, &qword_1001E0D38, &type metadata accessor for TrustedCloudComputeRateLimit);
  *v3 = result;
  return result;
}

void *sub_1001516AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7B0, &qword_1001E0D40, &type metadata accessor for TrustedCloudComputeRateLimit.WorkloadParameter);
  *v3 = result;
  return result;
}

void *sub_1001516F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151CA0(a1, a2, a3, *v3, &qword_10022D8E0, &qword_1001DE698, &qword_100227B38, &qword_1001D36D0);
  *v3 = result;
  return result;
}

void *sub_100151730(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7C0, &qword_1001E0D50, type metadata accessor for ValidatedAttestationOrAttestation);
  *v3 = result;
  return result;
}

void *sub_100151774(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_10022F7B8, &qword_1001E0D48, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping);
  *v3 = result;
  return result;
}

void *sub_1001517B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_100227B08, &qword_1001D36A0, &type metadata accessor for TrustedRequestEndpointMetadata);
  *v3 = result;
  return result;
}

void *sub_1001517FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100151E88(a1, a2, a3, *v3, &qword_100227B10, &qword_1001D36A8, &type metadata accessor for TC2TrustedRequestMetadata);
  *v3 = result;
  return result;
}

char *sub_100151840(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_10022F790, &qword_1001E0D20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100151960(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&unk_100230270, &unk_1001D3610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100151A6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_10022F7A0, &qword_1001E0D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100151B94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100011AC0(&qword_100227AA8, &qword_1001D3648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100151CA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011AC0(a5, a6);
  v16 = *(sub_100011AC0(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
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
  v21 = *(sub_100011AC0(a7, a8) - 8);
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

void *sub_100151E88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100011AC0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

Swift::Int sub_100152064(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10003BBD0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001520D0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001520D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001D2370(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1001D1A10();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100152298(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001521C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001521C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1001D2470(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100152298(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100152B28(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100152874((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1001D2470();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1001D2470();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100009048(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100009048((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100152874((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100152B28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100152A9C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1001D2470(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_100152874(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1001D2470() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1001D2470() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_100152A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100152B28(v3);
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

uint64_t sub_100152B3C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022E648, &qword_1001DF4F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100152BE0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v13 - v6;
  v8 = *(v3 - 8);
  __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v7, v2, v11);
  sub_1001CFF50();
  (*(v8 + 8))(v10, v3);
  return sub_1001D1EE0();
}

uint64_t sub_100152D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100152D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

char *sub_100152D90()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022F7D0, qword_1001E0D60);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t LRUCache.__allocating_init(maxCount:maxAge:storeURL:)(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  LRUCache.init(maxCount:maxAge:storeURL:)(a1, a2, a3);
  return v6;
}

uint64_t LRUCache.loadState(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_1001CFB10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100154A04(v2 + qword_10022F7D8, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100011F00(v7, &unk_100230170, &unk_1001E0D90);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = [objc_opt_self() defaultManager];
  sub_1001CFAD0();
  v14 = sub_1001D17A0();

  v15 = [v13 fileExistsAtPath:v14];

  if (!v15)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v16 = sub_1001CFB30();
  v17 = v4[11];
  v18 = v4[12];
  v19 = v4[13];
  v42 = v4[10];
  v48 = v42;
  v49 = v17;
  v43 = v17;
  v44 = a1;
  v45 = v18;
  v46 = v19;
  v50 = v18;
  v51 = v19;
  v21 = v20;
  v22 = v16;
  type metadata accessor for LRUCache.DatedValue(255, &v48);
  v23 = sub_1001D1A60();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1001CF900();
  v39 = v23;
  v40 = v22;
  v41 = v21;
  v24 = v52;

  v25 = sub_1001D1A30();

  v26 = v2[2];
  if (v26 >= v25)
  {
    v29 = v44;
  }

  else
  {

    v27 = sub_1001D0E50();
    v38 = sub_1001D1E00();
    v28 = os_log_type_enabled(v27, v38);
    v29 = v44;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v37 = v27;
      v31 = v30;
      *v30 = 134218240;

      v32 = sub_1001D1A30();

      *(v31 + 1) = v32;
      *(v31 + 6) = 2048;
      *(v31 + 14) = v26;

      v33 = v37;
      _os_log_impl(&_mh_execute_header, v37, v38, "trimming archive, count=%ld, maxCount=%ld", v31, 0x16u);
    }

    else
    {
    }

    v48 = v24;

    swift_getWitnessTable();
    v34 = sub_1001D1940();

    v24 = v34;
  }

  v35 = (v2 + qword_10022F7E8);

  os_unfair_lock_lock(v35);

  *&v35[2]._os_unfair_lock_opaque = v24;
  sub_100154A74(&v35[2], v29);
  v48 = v42;
  v49 = v43;
  v50 = v45;
  v51 = v46;
  type metadata accessor for LRUCache.State(0, &v48);
  os_unfair_lock_unlock(v35);
  sub_100011E48(v40, v41);

  (*(v9 + 8))(v11, v8);
}

uint64_t LRUCache.getCachedEntries(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = (v2 + qword_10022F7E8);
  os_unfair_lock_lock((v2 + qword_10022F7E8));
  sub_100155320(v5 + 1, v2, a1, &v11);
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v10[0] = v4[10];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  type metadata accessor for LRUCache.State(0, v10);
  sub_1001D1A60();
  os_unfair_lock_unlock(v5);
  return v11;
}

uint64_t LRUCache.addToCache(now:value:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = (v2 + qword_10022F7E8);
  os_unfair_lock_lock((v2 + qword_10022F7E8));
  sub_100154C5C(v7 + 1, v2, a1, a2, v6, &v14);
  v8 = v5[11];
  v9 = v5[12];
  v10 = v5[13];
  v13[0] = v5[10];
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  type metadata accessor for LRUCache.State(0, v13);
  os_unfair_lock_unlock(v7);
  v11 = v14;
  LRUCache.saveState(now:)(a1);
  return v11;
}

uint64_t sub_100153670(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1001D2470();

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

uint64_t sub_100153738(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_100153764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1001CFD30())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for LRUCache.DatedValue(0, v12);
    v10 = sub_1001D1790();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1001537F0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v10[0] = *(a2 + 32);
  v10[1] = v3;
  v11[0] = v3;
  v11[1] = v10[0];
  type metadata accessor for LRUCache.DatedValue.CodingKeys(255, v11);
  swift_getWitnessTable();
  v4 = sub_1001D2350();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_100024DC8(a1, a1[3]);
  sub_1001D25F0();
  LOBYTE(v11[0]) = 0;
  sub_1001CFD60();
  sub_100156888(&qword_100228918, &protocol conformance descriptor for Date);
  v8 = v12;
  sub_1001D2340();
  if (!v8)
  {
    LOBYTE(v11[0]) = 1;
    sub_1001D2340();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001539D4(uint64_t a1, uint64_t a2)
{
  sub_1001CFD60();
  sub_100156888(&qword_100229788, &protocol conformance descriptor for Date);
  sub_1001D1740();
  return sub_1001D1740();
}

Swift::Int sub_100153A54(uint64_t a1)
{
  sub_1001D2580();
  sub_1001539D4(v3, a1);
  return sub_1001D25C0();
}

uint64_t sub_100153A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1001CFD60();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = type metadata accessor for LRUCache.DatedValue(0, v17);
  return (*(*(a3 - 8) + 32))(a7 + *(v15 + 52), a2, a3);
}

uint64_t sub_100153B7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v31 = *(a2 - 8);
  __chkstk_darwin(a1);
  v36 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1001CFD60();
  v35 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  type metadata accessor for LRUCache.DatedValue.CodingKeys(255, &v43);
  swift_getWitnessTable();
  v42 = sub_1001D22A0();
  v34 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v29 - v13;
  v37 = a2;
  v43 = a2;
  v44 = a3;
  v39 = a3;
  v45 = a4;
  v46 = a5;
  v15 = type metadata accessor for LRUCache.DatedValue(0, &v43);
  v33 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_100024DC8(a1, a1[3]);
  v38 = v14;
  v18 = v47;
  sub_1001D25E0();
  if (v18)
  {
    return sub_100011CF0(a1);
  }

  v20 = v33;
  v19 = v34;
  v47 = a1;
  v30 = v15;
  v21 = v35;
  v23 = v36;
  v22 = v37;
  LOBYTE(v43) = 0;
  sub_100156888(&qword_100228910, &protocol conformance descriptor for Date);
  v24 = v38;
  sub_1001D2290();
  v25 = *(v21 + 32);
  v29 = v17;
  v25(v17, v40, v41);
  LOBYTE(v43) = 1;
  sub_1001D2290();
  (*(v19 + 8))(v24, v42);
  v26 = v30;
  v27 = v29;
  (*(v31 + 32))(&v29[*(v30 + 52)], v23, v22);
  (*(v20 + 16))(v32, v27, v26);
  sub_100011CF0(v47);
  return (*(v20 + 8))(v27, v26);
}

Swift::Int sub_100154024()
{
  sub_1001D2580();
  TC2NetworkActivityResult.hash(into:)(v2, *v0);
  return sub_1001D25C0();
}

uint64_t sub_100154084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100153670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001540B8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100156A60();
  *a2 = result;
  return result;
}

uint64_t sub_1001540EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100154140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_10015419C(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  sub_1001539D4(v4, a2);
  return sub_1001D25C0();
}

uint64_t LRUCache.init(maxCount:maxAge:storeURL:)(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, double a3)
{
  v4 = v3;
  v64 = a2;
  v6 = *v3;
  v61 = a1;
  v62 = v6;
  v7 = sub_1001CFA40();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v10 = __chkstk_darwin(v9 - 8);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v55 = &v51 - v13;
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = sub_1001CFB10();
  v63 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v51 - v19;
  v21 = sub_1001D02F0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = qword_10022F7F0;
  sub_1001CF960();
  swift_allocObject();
  *(v3 + v25) = sub_1001CF950();
  v26 = qword_10022F7E0;
  sub_1001CF920();
  swift_allocObject();
  *(v3 + v26) = sub_1001CF910();
  (*(v22 + 104))(v24, enum case for TC2LogCategory.daemon(_:), v21);
  sub_1001D08B0();
  (*(v22 + 8))(v24, v21);
  *(v3 + 16) = v61;
  *(v3 + 24) = a3;

  sub_1001CF930();
  v27 = v63;

  sub_100154A04(v64, v15);
  v61 = *(v27 + 48);
  if (v61(v15, 1, v16) == 1)
  {
    sub_100011F00(v15, &unk_100230170, &unk_1001E0D90);
    (*(v27 + 56))(v3 + qword_10022F7D8, 1, 1, v16);
  }

  else
  {
    v28 = v20;
    (*(v27 + 32))(v20, v15, v16);
    v67 = 0xD000000000000016;
    v68 = 0x80000001001E7070;
    v53 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v29 = v58;
    v52 = *(v58 + 104);
    v30 = v56;
    v31 = v59;
    v52(v56);
    v51 = sub_100011EAC();
    v32 = v55;
    v54 = v27 + 48;
    sub_1001CFB00();
    v58 = *(v29 + 8);
    (v58)(v30, v31);
    (*(v27 + 56))(v32, 0, 1, v16);
    sub_100150730(v32, v4 + qword_10022F7D8);
    v67 = 0x656863616375726CLL;
    v68 = 0xEF7473696C702E33;
    (v52)(v30, v53, v31);
    v33 = v57;
    sub_1001CFB00();
    (v58)(v30, v31);
    sub_10014D874(v33);
    v34 = *(v27 + 8);
    v34(v33, v16);
    v34(v28, v16);
  }

  v36 = v62[11];
  v37 = v62[12];
  v38 = v62[13];
  v67 = v62[10];
  v35 = v67;
  v68 = v36;
  v69 = v37;
  v70 = v38;
  type metadata accessor for LRUCache.DatedValue(0, &v67);
  v65 = sub_1001D1A00();
  LODWORD(v66) = 0;
  *(&v66 + 1) = 0;
  v67 = v35;
  v68 = v36;
  v69 = v37;
  v70 = v38;
  v39 = type metadata accessor for LRUCache.State(0, &v67);
  (*(*(v39 - 8) + 32))(&v66 + 8, &v65, v39);
  *(v4 + qword_10022F7E8) = v66;

  v40 = sub_1001D0E50();
  v41 = sub_1001D1DD0();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v67 = v43;
    *v42 = 136315138;
    v44 = v60;
    sub_100154A04(v4 + qword_10022F7D8, v60);
    if (v61(v44, 1, v16) == 1)
    {
      sub_100011F00(v44, &unk_100230170, &unk_1001E0D90);
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    else
    {
      v47 = sub_1001CFA50();
      v46 = v48;
      (*(v63 + 8))(v44, v16);
      v45 = v47;
    }

    v49 = sub_1000954E0(v45, v46, &v67);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "initialized workloadcache, file=%s", v42, 0xCu);
    sub_100011CF0(v43);
  }

  sub_100011F00(v64, &unk_100230170, &unk_1001E0D90);
  return v4;
}

uint64_t sub_100154A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100154A74(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v5[0] = *(*v2 + 80);
  v5[1] = v3;
  type metadata accessor for LRUCache.DatedValue(255, v5);
  sub_1001D1A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1001D1D70();
}

uint64_t sub_100154B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1001CFD60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CFCF0();
  v7 = sub_1001CFCD0();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_100154C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v27 = a5;
  v36 = a6;
  v9 = *a2;
  v10 = *a2;
  v11 = *(*a2 + 80);
  v33 = *(v11 - 8);
  __chkstk_darwin(a1);
  v32 = &v26 - v12;
  v31 = sub_1001CFD60();
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 104);
  v37 = *(v10 + 88);
  *&v15 = vdupq_laneq_s64(v37, 1).u64[0];
  v16.i64[0] = v11;
  *(&v15 + 1) = v14;
  v42[0] = vzip1q_s64(v16, v37);
  v42[1] = v15;
  v17 = type metadata accessor for LRUCache.DatedValue(0, v42);
  v26 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  v34 = a3;
  sub_100154A74(a1, a3);
  v43 = *a1;
  v38 = v11;
  v39 = v37;
  v30 = v14;
  v40 = v14;
  v41 = a4;
  v35 = a4;
  sub_1001D1A60();

  swift_getWitnessTable();
  sub_1001D1D30();

  if (BYTE8(v42[0]) != 1)
  {
    sub_1001D1A50();
    (*(v26 + 8))(v19, v17);
    v23 = 1;
    goto LABEL_8;
  }

  result = sub_1001D1A30();
  v21 = result - v27;
  if (result < v27)
  {
LABEL_6:
    v23 = 0;
LABEL_8:
    v24 = v29;
    (*(v28 + 16))(v29, v34, v31);
    v25 = v32;
    (*(v33 + 16))(v32, v35, v11);
    sub_100153A9C(v24, v25, v11, v37.i64[0], v37.i64[1], v30, v19);
    result = sub_1001D1A40();
    *v36 = v23;
    return result;
  }

  if (__OFSUB__(result, v27))
  {
    __break(1u);
  }

  else
  {
    v22 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      swift_getWitnessTable();
      sub_1001D1D60(v22);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void LRUCache.saveState(now:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = sub_1001CFB10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100154A04(v1 + qword_10022F7D8, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &unk_100230170, &unk_1001E0D90);
    v11 = sub_1001D0E50();
    v12 = sub_1001D1DC0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "declining to persist lrucache without location", v13, 2u);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v14 = (v1 + qword_10022F7E8);
    os_unfair_lock_lock((v1 + qword_10022F7E8));
    sub_100155480(v14 + 1, v1, a1, v10);
    v15 = v3[11];
    v17 = v3[12];
    v16 = v3[13];
    v19[0] = v3[10];
    v19[1] = v15;
    v19[2] = v17;
    v19[3] = v16;
    type metadata accessor for LRUCache.State(0, v19);
    os_unfair_lock_unlock(v14);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100155320@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a2;
  sub_100154A74(a1, a3);
  v17[5] = *a1;
  v13 = v6[10];
  v14 = v6[11];
  v15 = v6[12];
  v16 = v6[13];

  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
  type metadata accessor for LRUCache.DatedValue(255, v17);
  v7 = sub_1001D1A60();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_100020070(sub_10015697C, &v12, v7, v13, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);

  *a4 = v10;
  return result;
}

void sub_100155480(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  sub_100154A74(a1, a3);
  v18 = *a1;

  v7 = *(v6 + 96);
  v17[0] = *(v6 + 80);
  v17[1] = v7;
  type metadata accessor for LRUCache.DatedValue(255, v17);
  sub_1001D1A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1001CF940();
  if (v4)
  {

    swift_errorRetain();
    v12 = sub_1001D0E50();
    v13 = sub_1001D1DE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "failed to archive LRUCache: %@", v14, 0xCu);
      sub_100011F00(v15, &unk_1002301D0, &qword_1001D4F50);
    }

    else
    {
    }
  }

  else
  {
    v10 = v8;
    v11 = v9;

    sub_1001CFC20();
    sub_100011E48(v10, v11);
  }
}

Swift::Void __swiftcall LRUCache.deleteSavedState()()
{
  v1 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v1 - 8);
  v3 = &v23[-v2];
  v4 = sub_1001CFB10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100154A04(v0 + qword_10022F7D8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100011F00(v3, &unk_100230170, &unk_1001E0D90);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  sub_1001CFAD0();
  v10 = sub_1001D17A0();

  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v8 defaultManager];
    sub_1001CFA80(v13);
    v15 = v14;
    v24 = 0;
    v16 = [v12 removeItemAtURL:v14 error:&v24];

    if (v16)
    {
      v17 = *(v5 + 8);
      v18 = v24;
      v17(v7, v4);
      return;
    }

    v19 = v24;
    sub_1001CFA20();

    swift_willThrow();
    v20 = sub_1001D0E50();
    v21 = sub_1001D1E00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "failed to delete archive", v22, 2u);
    }
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t LRUCache.statistics(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2 + qword_10022F7E8;
  os_unfair_lock_lock((v2 + qword_10022F7E8));
  sub_100155B04((v5 + 8), v2, a1, &v9);
  v6 = *(v4 + 96);
  v8[0] = *(v4 + 80);
  v8[1] = v6;
  type metadata accessor for LRUCache.State(0, v8);
  os_unfair_lock_unlock(v5);
  return v9;
}

uint64_t sub_100155B04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a4;
  v7 = *(*a2 + 88);
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 104);
  v44[0] = *(*a2 + 80);
  v6 = v44[0];
  v44[1] = v7;
  v44[2] = v8;
  v44[3] = v9;
  v10 = type metadata accessor for LRUCache.DatedValue(255, v44);
  v11 = sub_1001D1F00();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_1001CFD60();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = __chkstk_darwin(v14);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v33 = &v31 - v17;
  v38 = a3;
  sub_100154A74(a1, a3);
  v18 = *a1;
  v19 = sub_1001D1A30();
  v43 = v9;
  v44[0] = v18;
  v40 = v6;
  v41 = v7;
  v42 = v8;
  sub_1001D1A60();

  swift_getWitnessTable();
  sub_1001D1930();

  v20 = *(v10 - 8);
  if ((*(v20 + 48))(v13, 1, v10) == 1)
  {
    result = (*(v34 + 8))(v13, v35);
    v22 = 0;
LABEL_7:
    v30 = v39;
    *v39 = v19;
    v30[1] = v22;
    return result;
  }

  v24 = v36;
  v23 = v37;
  v25 = v32;
  (*(v36 + 16))(v32, v13, v37);
  (*(v20 + 8))(v13, v10);
  v26 = v33;
  (*(v24 + 32))(v33, v25, v23);
  sub_1001CFC90();
  v28 = v27;
  result = (*(v24 + 8))(v26, v23);
  v29 = v28 / 86400.0;
  if (COERCE__INT64(fabs(v28 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v29 < 9.22337204e18)
  {
    v22 = v29;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

char *LRUCache.deinit()
{
  v1 = *v0;
  sub_100011F00(&v0[qword_10022F7D8], &unk_100230170, &unk_1001E0D90);

  v2 = qword_100243568;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v4;
  type metadata accessor for LRUCache.State(255, v6);
  sub_1001CFF70();
  sub_1001D1EE0();
  return v0;
}

uint64_t LRUCache.__deallocating_deinit()
{
  LRUCache.deinit();

  return swift_deallocClassInstance();
}

void sub_1001560A4(uint64_t a1)
{
  sub_1001561B0(319);
  if (v1 <= 0x3F)
  {
    sub_1001D0E60();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1001561B0(uint64_t a1)
{
  if (!qword_10022F8D0[0])
  {
    sub_1001CFB10();
    v1 = sub_1001D1F00();
    if (!v2)
    {
      atomic_store(v1, qword_10022F8D0);
    }
  }
}

char *sub_100156208(_OWORD *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for LRUCache.State(255, v3);
  return sub_1001CFF60();
}

uint64_t sub_100156264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001562A0(uint64_t a1)
{
  result = sub_1001CFD60();
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

uint64_t sub_100156328(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1001CFD60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
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

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100156568(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1001CFD60() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
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

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_100156888(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001CFD60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001568F8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 16);
  v6 = v2;
  v7 = v3;
  type metadata accessor for LRUCache.DatedValue(0, &v5);
  return sub_1001D1790() & 1;
}

uint64_t sub_10015697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v8 = *&v9[0];
  v9[1] = v5;
  v6 = type metadata accessor for LRUCache.DatedValue(0, v9);
  return (*(*(v8 - 8) + 16))(a2, a1 + *(v6 + 52));
}

uint64_t Message.loggingDescription.getter(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v6 = sub_1001D1830();
  v7._countAndFlagsBits = 2618;
  v7._object = 0xE200000000000000;
  sub_1001D18B0(v7);
  v2 = sub_1001D0B30();
  v4 = v3;

  v8._countAndFlagsBits = v2;
  v8._object = v4;
  sub_1001D18B0(v8);

  return v6;
}

uint64_t sub_100156B30(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1001D1F00();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t *sub_100156C40()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(*v0 + 80));
  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  v2 = sub_1001D1F00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100156D4C()
{
  sub_100156C40();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100156D90()
{

  return swift_deallocClassInstance();
}

char *sub_100156DEC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022FB78, &qword_1001E1128);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_100156E1C@<X0>(void **a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1001D17A0();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    sub_1001D1F90();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_100096954(v10);
    goto LABEL_8;
  }

  sub_100011AC0(&qword_10022FB80, &qword_1001E1148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = sub_1000DB37C(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  result = v7;
LABEL_9:
  *a2 = result;
  return result;
}

uint64_t (*sub_100156F28(void *a1))()
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  sub_100156E1C((v1 + 24), &v4);
  os_unfair_lock_unlock((v1 + 16));
  *a1 = v4;
  return sub_100156FA0;
}

void sub_100156FA0(void *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v2 + 16));
    v3 = *(v2 + 24);
    sub_1001CFD60();
    isa = sub_1001D16F0().super.isa;

    v5 = sub_1001D17A0();
    [v3 setValue:isa forKey:v5];

    os_unfair_lock_unlock((v2 + 16));
  }

  else
  {
    os_unfair_lock_lock((v2 + 16));
    v6 = *(v2 + 24);
    sub_1001CFD60();
    v7 = sub_1001D16F0().super.isa;

    v8 = sub_1001D17A0();
    [v6 setValue:v7 forKey:v8];

    os_unfair_lock_unlock((v2 + 16));
  }
}

uint64_t static PrivateCloudComputeError.wrapAny(error:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v4 - 8);
  v35 = &v31 - v5;
  v6 = sub_1001D01B0();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D1310();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = sub_1001D0200();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    (*(v16 + 32))(a2, v18, v15);
  }

  v38 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_100157688(v36);
  }

  else
  {

    v36 = a1;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      (*(v9 + 32))(v12, v14, v8);
      sub_100157914(v12, a2);
      (*(v9 + 8))(v12, v8);
    }

    v20 = sub_1001CFA10();
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1001D2030(38);

    v36 = 0x20726F727245534ELL;
    v37 = 0xEF3D6E69616D6F64;
    v21 = [v20 domain];
    v22 = sub_1001D17D0();
    v24 = v23;

    v39._countAndFlagsBits = v22;
    v39._object = v24;
    sub_1001D18B0(v39);

    v40._countAndFlagsBits = 0x3D65646F63202CLL;
    v40._object = 0xE700000000000000;
    sub_1001D18B0(v40);
    v38 = [v20 code];
    v41._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v41);

    v42._countAndFlagsBits = 0x67617373656D202CLL;
    v42._object = 0xEA00000000003D65;
    sub_1001D18B0(v42);
    v25 = [v20 localizedDescription];
    v26 = sub_1001D17D0();
    v28 = v27;

    v43._countAndFlagsBits = v26;
    v43._object = v28;
    sub_1001D18B0(v43);

    (*(v32 + 104))(v34, enum case for PrivateCloudComputeError.Code.internalError(_:), v33);
    v29 = sub_1001CFD60();
    (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
    sub_100011AC0(&qword_100227B70, &qword_1001D3718);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1001D39F0;
    *(v30 + 32) = v20;
    return sub_1001D01D0();
  }
}

uint64_t sub_100157688(__int16 a1)
{
  v2 = HIBYTE(a1);
  v3 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = sub_1001D01B0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v18[-v12];
  __chkstk_darwin(v11);
  v15 = &v18[-v14];
  (*(v7 + 104))(v13, **(&off_1002222E0 + a1), v6);
  (*(v7 + 32))(v15, v13, v6);
  if (v2 != 23)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    v18[15] = HIBYTE(a1);
    sub_1001D2120();
  }

  (*(v7 + 16))(v10, v15, v6);
  v16 = sub_1001CFD60();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_1001D01E0();
  sub_1001D01D0();
  return (*(v7 + 8))(v15, v6);
}

uint64_t sub_100157914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v21 = sub_1001D01B0();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D1310();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v10 + 16);
  v22(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for NWError.posix(_:))
  {
    if (v13 == enum case for NWError.dns(_:))
    {
      (*(v10 + 96))(v12, v9);
      v14 = *v12;
      v15 = 1601400420;
    }

    else
    {
      if (v13 != enum case for NWError.tls(_:))
      {
        if (v13 != enum case for NWError.wifiAware(_:))
        {
          (*(v10 + 8))(v12, v9);
          goto LABEL_10;
        }

        (*(v10 + 96))(v12, v9);
        v14 = *v12;
        v15 = 0x7261774169666977;
        v16 = 0xEA00000000005F65;
        goto LABEL_8;
      }

      (*(v10 + 96))(v12, v9);
      v14 = *v12;
      v15 = 1601399924;
    }

    v16 = 0xE400000000000000;
LABEL_8:
    v25 = v15;
    v26 = v16;
    v24 = v14;
    goto LABEL_9;
  }

  (*(v10 + 96))(v12, v9);
  v25 = 0x5F7869736F70;
  v26 = 0xE600000000000000;
  LODWORD(v24) = sub_1001D0EA0();
LABEL_9:
  v27._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v27);

LABEL_10:
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1001D2120();
  (*(v6 + 104))(v8, enum case for PrivateCloudComputeError.Code.networkFailure(_:), v21);
  v17 = sub_1001CFD60();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_100011AC0(&qword_100227B70, &qword_1001D3718);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001D39F0;
  sub_100157D7C();
  *(v18 + 32) = swift_allocError();
  v22(v19, a1, v9);
  return sub_1001D01D0();
}

unint64_t sub_100157D7C()
{
  result = qword_10022F3A8;
  if (!qword_10022F3A8)
  {
    sub_1001D1310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022F3A8);
  }

  return result;
}

uint64_t sub_100157DD4(uint64_t *a1, size_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(kSecRandomDefault, a2, &bytes);
    }

    sub_100011E48(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    sub_1001CFB20();
    v9 = *(&bytes + 1);
    v10 = *(bytes + 16);
    result = sub_1001CF870();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v11 = result;
    v12 = sub_1001CF8A0();
    v13 = __OFSUB__(v10, v12);
    v14 = v10 - v12;
    if (!v13)
    {
      sub_1001CF890();
      result = SecRandomCopyBytes(kSecRandomDefault, a2, (v11 + v14));
      *a1 = bytes;
      a1[1] = v9 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_100011E48(v4, v3);
    *&bytes = v4;
    WORD4(bytes) = v3;
    BYTE10(bytes) = BYTE2(v3);
    BYTE11(bytes) = BYTE3(v3);
    BYTE12(bytes) = BYTE4(v3);
    BYTE13(bytes) = BYTE5(v3);
    BYTE14(bytes) = BYTE6(v3);
    result = SecRandomCopyBytes(kSecRandomDefault, a2, &bytes);
    v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v7;
    return result;
  }

  v15 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100011E48(v4, v3);
  *a1 = xmmword_1001D3A00;
  sub_100011E48(0, 0xC000000000000000);
  v16 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v16 < v4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_1001CF870() && __OFSUB__(v4, sub_1001CF8A0()))
    {
LABEL_23:
      __break(1u);
    }

    sub_1001CF8C0();
    swift_allocObject();
    v17 = sub_1001CF850();

    v15 = v17;
  }

  if (v16 < v4)
  {
    goto LABEL_20;
  }

  result = sub_1001CF870();
  if (result)
  {
    v18 = result;
    v19 = sub_1001CF8A0();
    v20 = v4 - v19;
    if (!__OFSUB__(v4, v19))
    {
      sub_1001CF890();
      v21 = SecRandomCopyBytes(kSecRandomDefault, a2, (v18 + v20));

      *a1 = v4;
      a1[1] = v15 | 0x4000000000000000;
      return v21;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100158160(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10005971C(result);
    }

    else
    {
      sub_1001CF8C0();
      swift_allocObject();
      sub_1001CF880();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1001CFB80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100158200(uint64_t a1)
{
  v9 = sub_100011AC0(&qword_10022FB88, &unk_1001E1150);
  v10 = sub_1001586FC();
  v8[0] = a1;
  v2 = sub_100024DC8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100059688(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100011CF0(v8);
  return v5;
}

char *sub_1001582B0(uint64_t a1)
{
  v3 = a1;
  if (a1 >= 128)
  {
    v1 = sub_100009294(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v1 + 2);
    do
    {
      v5 = *(v1 + 3);
      if (v4 >= v5 >> 1)
      {
        v1 = sub_100009294((v5 > 1), v4 + 1, 1, v1);
      }

      *(v1 + 2) = v4 + 1;
      v1[v4 + 32] = v3 | 0x80;
      v2 = v3 >> 7;
      v6 = v3 >> 14;
      ++v4;
      v3 >>= 7;
    }

    while (v6);
LABEL_9:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v1 = _swiftEmptyArrayStorage;
    LOBYTE(v2) = a1;
    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  v1 = sub_100009294(0, *(v1 + 2) + 1, 1, v1);
LABEL_10:
  v8 = *(v1 + 2);
  v7 = *(v1 + 3);
  if (v8 >= v7 >> 1)
  {
    v1 = sub_100009294((v7 > 1), v8 + 1, 1, v1);
  }

  *(v1 + 2) = v8 + 1;
  v1[v8 + 32] = v2;
  return v1;
}

uint64_t sub_1001583E0(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  v34 = sub_100158160(a1);
  v35 = v2;
  v3 = sub_100157DD4(&v34, a1);
  v4 = v34;
  v5 = v35;
  if (v3)
  {
    sub_100011E48(v34, v35);
    return 0;
  }

  v38 = sub_100158200(&off_10021CEF8);
  v39 = v7;
  v8 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v5);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v9 = HIDWORD(v4) - v4;
  }

LABEL_15:
  if (*(sub_1001582B0(v9) + 2))
  {
    sub_1001CFBB0();
  }

  v36 = &type metadata for Data;
  v37 = &protocol witness table for Data;
  v34 = v4;
  v35 = v5;
  v12 = sub_100024DC8(&v34, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v32, 0, 14);
      sub_100012038(v4, v5);
      v16 = v32;
      v17 = v32;
      goto LABEL_39;
    }

    v18 = *(v13 + 16);
    v19 = *(v13 + 24);
    sub_100012038(v4, v5);
    v20 = sub_1001CF870();
    if (v20)
    {
      v21 = sub_1001CF8A0();
      v13 = v18 - v21;
      if (__OFSUB__(v18, v21))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v20 += v13;
    }

    v22 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (!v22)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15)
  {
LABEL_27:
    v24 = v13;
    v25 = v13 >> 32;
    v23 = v25 - v24;
    if (v25 >= v24)
    {
      sub_100012038(v4, v5);
      v20 = sub_1001CF870();
      if (!v20)
      {
LABEL_31:
        v27 = sub_1001CF890();
        if (v27 >= v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = v27;
        }

        v29 = (v28 + v20);
        if (v20)
        {
          v17 = v29;
        }

        else
        {
          v17 = 0;
        }

        v16 = v20;
        goto LABEL_39;
      }

      v26 = sub_1001CF8A0();
      if (!__OFSUB__(v24, v26))
      {
        v20 += v24 - v26;
        goto LABEL_31;
      }

LABEL_44:
      __break(1u);
    }

    goto LABEL_42;
  }

  v32[0] = *v12;
  LOWORD(v32[1]) = v14;
  BYTE2(v32[1]) = BYTE2(v14);
  BYTE3(v32[1]) = BYTE3(v14);
  BYTE4(v32[1]) = BYTE4(v14);
  BYTE5(v32[1]) = BYTE5(v14);
  sub_100012038(v4, v5);
  v16 = v32;
  v17 = v32 + BYTE6(v14);
LABEL_39:
  sub_100059688(v16, v17, v33);
  v30 = v33[0];
  v31 = v33[1];
  sub_100011CF0(&v34);
  sub_1001CFC30();
  sub_100011E48(v4, v5);
  sub_100011E48(v30, v31);
  return v38;
}

unint64_t sub_1001586FC()
{
  result = qword_10022FB90;
  if (!qword_10022FB90)
  {
    sub_100011DF4(&qword_10022FB88, &unk_1001E1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FB90);
  }

  return result;
}

uint64_t SystemInfoProtocol.uniqueDeviceIDPercentile.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D1470();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001D1460();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001D1810();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(a1, a2);
  sub_1001D1800();
  v14 = sub_1001D17E0();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    result = sub_1001D2180();
    __break(1u);
  }

  else
  {

    sub_100158AB8();
    sub_1001D1440();
    sub_100012038(v14, v16);
    sub_100158DE0(v14, v16, v6);
    sub_10002683C(v14, v16);
    sub_1001D1430();
    (*(v19 + 8))(v6, v4);
    sub_1001D1450();
    sub_10002683C(v14, v16);
    return (*(v20 + 8))(v9, v21);
  }

  return result;
}

unint64_t sub_100158AB8()
{
  result = qword_100229378;
  if (!qword_100229378)
  {
    sub_1001D1470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229378);
  }

  return result;
}

uint64_t SystemInfo.marketingProductName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SystemInfo.marketingDeviceFamilyName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t SystemInfo.productName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SystemInfo.productVersion.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t SystemInfo.productType.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SystemInfo.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t SystemInfo.buildVersion.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t SystemInfo.buildVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t SystemInfo.automatedDeviceGroup.getter()
{
  v0 = [objc_opt_self() automatedDeviceGroup];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1001D17D0();

  return v2;
}

uint64_t SystemInfo.osInfo.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t SystemInfo.osInfoWithDeviceModel.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

void *sub_100158DCC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100158DE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1001D1470();
      sub_100158AB8();
      return sub_1001D1420();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100158F60(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_100158F60(v5, v6);
  }

  sub_1001D1470();
  sub_100158AB8();
  return sub_1001D1420();
}

uint64_t sub_100158F60(uint64_t a1, uint64_t a2)
{
  result = sub_1001CF870();
  if (!result || (result = sub_1001CF8A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1001CF890();
      sub_1001D1470();
      sub_100158AB8();
      return sub_1001D1420();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100159010(uint64_t a1, void *a2)
{
  v19 = 0;
  v4 = sub_1001D1840();
  v5 = sysctlbyname((v4 + 32), 0, &v19, 0, 0);

  if (v5)
  {
    v14 = sub_1001D0EB0();
    if (strerror(v14))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v15 = sub_1001D0EB0();
    if (!strerror(v15))
    {
      __break(1u);
    }

    while (1)
    {
LABEL_15:
      v16 = sub_1001D18C0();
      v18 = v17;
      sub_1001D2030(30);

      v23._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v23);

      v24._countAndFlagsBits = 8250;
      v24._object = 0xE200000000000000;
      sub_1001D18B0(v24);
      v25._countAndFlagsBits = v16;
      v25._object = v18;
      sub_1001D18B0(v25);
LABEL_14:
      sub_1001D2180();
      __break(1u);
    }
  }

  v6 = v19;
  if (v19 < 1)
  {
    sub_1001D2030(42);

    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_1001D18B0(v20);
    v21._countAndFlagsBits = 0x656E727574657220;
    v21._object = 0xEF3D657A69732064;
    sub_1001D18B0(v21);
    v22._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v22);

    goto LABEL_14;
  }

  v7 = sub_1001D1A10();
  *(v7 + 16) = v6;
  bzero((v7 + 32), v6);
  v8 = sub_1001D1840();
  v9 = sysctlbyname((v8 + 32), (v7 + 32), &v19, 0, 0);

  if (v9)
  {
    goto LABEL_11;
  }

  v10 = *(v7 + 16);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (!*(v7 + 32 + i))
      {
        break;
      }
    }
  }

  v12 = sub_1001D1860();

  return v12;
}

__n128 sub_1001593AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1001593E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100159428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001594A4(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = [a1 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    v70 = sub_1001D17D0();
    v8 = v7;
  }

  else
  {
    v70 = 0;
    v8 = 0;
  }

  v9 = [a1 infoDictionary];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = sub_1001D1700();

  if (!*(v11 + 16) || (v12 = sub_100006028(0x656C646E75424643, 0xEF6E6F6973726556), (v13 & 1) == 0))
  {

LABEL_14:
    v15 = 0;
    v16 = 0;
    goto LABEL_15;
  }

  sub_100089F9C(*(v11 + 56) + 32 * v12, &v73);

  v14 = swift_dynamicCast();
  if (v14)
  {
    v15 = v71;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v72;
  }

  else
  {
    v16 = 0;
  }

LABEL_15:

  v17 = MobileGestalt_copy_uniqueDeviceID_obj();
  if (!v17)
  {
    __break(1u);
    goto LABEL_36;
  }

  v18 = v17;
  v19 = sub_1001D17D0();
  v21 = v20;

  v22 = MobileGestalt_copy_marketingProductName_obj();
  if (!v22)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  v24 = sub_1001D17D0();
  v63 = v25;

  v26 = MobileGestalt_copy_marketingDeviceFamilyName_obj();
  if (!v26)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v27 = v26;
  v62 = v24;
  v69 = sub_1001D17D0();
  v29 = v28;

  v68 = v29;

  v30 = MobileGestalt_copy_productName_obj();
  if (!v30)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v31 = v30;
  v67 = sub_1001D17D0();
  v33 = v32;

  v34 = MobileGestalt_copy_productVersion_obj();
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v34;
  v66 = v33;
  v60 = v21;
  v61 = v19;
  v36 = sub_1001D17D0();
  v38 = v37;

  v59 = v38;

  v39 = MobileGestalt_copy_productType_obj();
  if (!v39)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v40 = v39;
  v65 = v36;
  v64 = sub_1001D17D0();
  v42 = v41;

  v58 = v42;

  v43 = MobileGestalt_copy_buildVersion_obj();
  if (!v43)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = sub_1001D17D0();
  v47 = v46;

  v48 = v8;
  if (v8)
  {
    v49 = v70;
  }

  else
  {
    v49 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v50 = v8;
  }

  else
  {
    v50 = 0xE700000000000000;
  }

  if (v16)
  {
    v51 = v15;
  }

  else
  {
    v51 = 0x6E776F6E6B6E75;
  }

  v57 = v48;
  if (v16)
  {
    v52 = v16;
  }

  else
  {
    v52 = 0xE700000000000000;
  }

  v73 = 0;
  v74 = 0xE000000000000000;

  sub_1001D2030(23);

  v73 = 60;
  v74 = 0xE100000000000000;
  v75._countAndFlagsBits = v69;
  v75._object = v68;
  sub_1001D18B0(v75);

  v76._countAndFlagsBits = 3940414;
  v76._object = 0xE300000000000000;
  sub_1001D18B0(v76);
  v77._object = v66;
  v77._countAndFlagsBits = v67;
  sub_1001D18B0(v77);
  v78._countAndFlagsBits = 59;
  v78._object = 0xE100000000000000;
  sub_1001D18B0(v78);
  v79._countAndFlagsBits = v65;
  v79._object = v59;
  sub_1001D18B0(v79);
  v80._countAndFlagsBits = 59;
  v80._object = 0xE100000000000000;
  sub_1001D18B0(v80);
  v81._countAndFlagsBits = v45;
  v81._object = v47;
  sub_1001D18B0(v81);
  v82._countAndFlagsBits = 3940414;
  v82._object = 0xE300000000000000;
  sub_1001D18B0(v82);
  v83._countAndFlagsBits = v49;
  v83._object = v50;
  sub_1001D18B0(v83);
  v84._countAndFlagsBits = 47;
  v84._object = 0xE100000000000000;
  sub_1001D18B0(v84);
  v85._countAndFlagsBits = v51;
  v85._object = v52;
  sub_1001D18B0(v85);
  v86._countAndFlagsBits = 62;
  v86._object = 0xE100000000000000;
  sub_1001D18B0(v86);
  v55 = v74;
  v56 = v73;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1001D2030(23);

  v73 = 60;
  v74 = 0xE100000000000000;
  v87._countAndFlagsBits = v64;
  v87._object = v58;
  sub_1001D18B0(v87);

  v88._countAndFlagsBits = 3940414;
  v88._object = 0xE300000000000000;
  sub_1001D18B0(v88);
  v89._countAndFlagsBits = v67;
  v89._object = v66;
  sub_1001D18B0(v89);

  v90._countAndFlagsBits = 59;
  v90._object = 0xE100000000000000;
  sub_1001D18B0(v90);
  v91._countAndFlagsBits = v65;
  v91._object = v59;
  sub_1001D18B0(v91);

  v92._countAndFlagsBits = 59;
  v92._object = 0xE100000000000000;
  sub_1001D18B0(v92);
  v93._countAndFlagsBits = v45;
  v93._object = v47;
  sub_1001D18B0(v93);

  v94._countAndFlagsBits = 3940414;
  v94._object = 0xE300000000000000;
  sub_1001D18B0(v94);
  v95._countAndFlagsBits = v49;
  v95._object = v50;
  sub_1001D18B0(v95);

  v96._countAndFlagsBits = 47;
  v96._object = 0xE100000000000000;
  sub_1001D18B0(v96);
  v97._countAndFlagsBits = v51;
  v97._object = v52;
  sub_1001D18B0(v97);

  v98._countAndFlagsBits = 62;
  v98._object = 0xE100000000000000;
  sub_1001D18B0(v98);
  v53 = v73;
  v54 = v74;
  *a3 = v70;
  a3[1] = v57;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v61;
  a3[5] = v60;
  a3[6] = v62;
  a3[7] = v63;
  a3[8] = v69;
  a3[9] = v68;
  a3[10] = v67;
  a3[11] = v66;
  a3[12] = v65;
  a3[13] = v59;
  a3[14] = v64;
  a3[15] = v58;
  a3[16] = v45;
  a3[17] = v47;
  a3[18] = v56;
  a3[19] = v55;
  a3[20] = v53;
  a3[21] = v54;
}

uint64_t sub_100159A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  v6 = sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  *v5 = v3;
  v5[1] = sub_100159ADC;

  return Task.value.getter(v6, a1, &type metadata for () + 8, v6, &protocol self-conformance witness table for Error);
}

uint64_t sub_100159ADC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100159C54;
  }

  else
  {
    v2 = sub_100159BF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100159BF0()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100159C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for PrivateCloudComputeEntitlement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100159E14()
{
  result = qword_10022FBA0;
  if (!qword_10022FBA0)
  {
    sub_100011DF4(&qword_10022FBA8, qword_1001E12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FBA0);
  }

  return result;
}

Swift::Int sub_100159E78(unsigned __int8 a1)
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100159F7C(uint64_t a1)
{
  sub_1001D1880();
}

unint64_t sub_10015A05C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015A1A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10015A08C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002DLL;
  v3 = *v1;
  v4 = "ecloudcompute.prefetchRequest";
  v5 = "ecloudcompute.knownRateLimits";
  v6 = 0xD000000000000036;
  if (v3 != 4)
  {
    v6 = 0xD00000000000002FLL;
    v5 = "ndleIdentifierOverride";
  }

  if (v3 == 3)
  {
    v6 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = v5;
  }

  v7 = "ecloudcompute.admin";
  if (v3 == 1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v7 = "ecloudcompute.requests";
  }

  if (*v1)
  {
    v8 = v7;
  }

  else
  {
    v2 = 0xD000000000000023;
    v8 = "";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v6;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_10015A14C()
{
  result = qword_10022FBB0[0];
  if (!qword_10022FBB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10022FBB0);
  }

  return result;
}

unint64_t sub_10015A1A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CFB0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10015A1EC(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_10015A2E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_100151604(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1001D1FB0();
    v5 = 0;
    v6 = *(v2 + 36);
    v24 = v2 + 72;
    v25 = v1;
    v26 = v6;
    v27 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v28 = v5;
      v9 = (*(v2 + 48) + 16 * v4);
      v10 = v9[1];
      v11 = (*(v2 + 56) + 16 * v4);
      v29 = *v11;
      v30 = *v9;
      v12 = v2;
      v13 = v11[1];
      v14 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];

      if (v14 >= v15 >> 1)
      {
        sub_100151604((v15 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v16 = &_swiftEmptyArrayStorage[4 * v14];
      v16[4] = v30;
      v16[5] = v10;
      v16[6] = v29;
      v16[7] = v13;
      v7 = 1 << *(v12 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v2 = v12;
      v3 = v27;
      v17 = *(v27 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v26;
      if (v26 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_10001202C(v4, v26, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_10001202C(v4, v26, 0);
      }

LABEL_4:
      v5 = v28 + 1;
      v4 = v7;
      if (v28 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void *sub_10015A550(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1001514F8(0, v2, 0);
    v34 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    result = sub_1001D1FB0();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v29 = v1 + 72;
    v30 = v2;
    v31 = v7;
    v32 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v33 = v6;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v5);
      v12 = v1;
      v13 = *v11;
      v14 = v11[1];
      v15 = (v10 + 16 * v5);
      v17 = *v15;
      v16 = v15[1];

      v35._countAndFlagsBits = v13;
      v35._object = v14;
      sub_1001D18B0(v35);
      v36._countAndFlagsBits = 8250;
      v36._object = 0xE200000000000000;
      sub_1001D18B0(v36);
      v37._countAndFlagsBits = v17;
      v37._object = v16;
      sub_1001D18B0(v37);

      v18 = v34;
      v20 = v34[2];
      v19 = v34[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1001514F8((v19 > 1), v20 + 1, 1);
        v18 = v34;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = 9;
      v21[5] = 0xE100000000000000;
      v8 = 1 << *(v12 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v1 = v12;
      v4 = v32;
      v22 = *(v32 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v34 = v18;
      v7 = v31;
      if (v31 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v29 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10001202C(v5, v31, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10001202C(v5, v31, 0);
      }

LABEL_4:
      v6 = v33 + 1;
      v5 = v8;
      if (v33 + 1 == v30)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_10015A808(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15)
{
  v232 = a6;
  v233 = a8;
  v221 = a7;
  v230 = a5;
  v231 = a4;
  v237 = a1;
  v223 = a9;
  v17 = sub_100011AC0(&qword_10022FCF0, &qword_1001E1698);
  __chkstk_darwin(v17 - 8);
  v218 = &v213 - v18;
  v216 = sub_1001CFB10();
  v213 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v213 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1001D0200();
  v217 = *(v220 - 8);
  v20 = __chkstk_darwin(v220);
  v22 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v219 = &v213 - v23;
  v24 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  __chkstk_darwin(v24);
  v226 = &v213 - v25;
  v26 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v26 - 8);
  v242 = (&v213 - v27);
  sub_100011AC0(&qword_10022FCF8, &unk_1001E16B0);
  v28 = sub_100011AC0(&qword_10022BCD8, &qword_1001DB7D8);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001D3AF0;
  v229 = v31;
  v32 = v31 + v30;
  v33 = (v31 + v30 + *(v28 + 48));
  *(v31 + v30) = 4;
  v224 = a2;
  *v33 = a2;
  v33[1] = a3;
  v34 = enum case for EventValue.string(_:);
  v35 = sub_1001CFEE0();
  v241 = *(v35 - 8);
  v36 = *(v241 + 104);
  v234 = v34;
  v245 = v35;
  v246 = v241 + 104;
  v243 = v36;
  (v36)(v33, v34);
  v238 = v29;
  v239 = v32;
  v37 = v32 + v29;
  v38 = *(v28 + 48);
  *(v32 + v29) = 0;
  v225 = a3;

  sub_1001CFD20();
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v222 = v24;
  v214 = v22;
  v240 = a15;
  v235 = a13;
  v236 = a12;
  v228 = a11;
  *(v37 + v38) = v39;
  v244 = enum case for EventValue.int(_:);
  v40 = v245;
  v41 = v243;
  (v243)(v37 + v38);
  v42 = v238;
  v43 = v239 + 2 * v238;
  v44 = v239;
  v45 = *(v28 + 48);
  v227 = v28;
  *v43 = 1;
  v46 = &v43[v45];
  v47 = v230;
  *v46 = v231;
  v46[1] = v47;
  v48 = v234;
  v41();
  v49 = v44 + 3 * v42;
  v50 = &v49[*(v28 + 48)];
  *v49 = 2;
  v51 = v232;
  v53 = *(v232 + 20);
  v52 = *(v232 + 21);

  sub_100088D84(v51);
  *v50 = v53;
  v50[1] = v52;
  (v41)(v50, v48, v40);
  v54 = v42;
  v55 = v239;
  v56 = v227;
  v57 = (&v239[v54] + *(v227 + 48));
  LOBYTE(v239[v54]) = 6;
  *v57 = sub_1001CFDB0();
  v57[1] = v58;
  (v41)(v57, v48, v40);
  v59 = &v55[v54] + v238;
  v60 = &v59[*(v56 + 48)];
  *v59 = 7;
  *v60 = sub_1001CFD70();
  v60[1] = v61;
  (v41)(v60, v48, v40);
  v62 = sub_1000D5F00(v229);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v267 = v62;
  v64 = v241;
  v63 = v242;
  v65 = v233;
  if (v233)
  {
    *v242 = v221;
    v63[1] = v65;
    (v41)(v63, v48, v40);
    (*(v64 + 56))(v63, 0, 1, v40);
    sub_1000172F0(v63, 3);
  }

  v66 = v228;
  if (v228)
  {
    *v63 = a10;
    v63[1] = v66;
    (v41)(v63, v48, v40);
    (*(v64 + 56))(v63, 0, 1, v40);
    sub_1000172F0(v63, 5);
  }

  v67 = v240;
  sub_10001208C(v240, &v261, &qword_10022FD00, &qword_1001E16C0);
  if (!v266)
  {
    v251[0] = v263;
    v251[1] = v264;
    v252 = v265;
    sub_1001CFED0();
    v72 = *(v64 + 56);
    v72(v63, 0, 1, v40);
    sub_1000172F0(v63, 18);
    v73 = sub_1001D2600();
    v74 = 1000 * v73;
    if ((v73 * 1000) >> 64 != (1000 * v73) >> 63)
    {
      goto LABEL_132;
    }

    sub_1001D2600();
    if (__OFADD__(v74, v75 / 1000000000000000))
    {
      goto LABEL_134;
    }

    *v63 = v74 + v75 / 1000000000000000;
    (v243)(v63, v244, v40);
    v72(v63, 0, 1, v40);
    sub_1000172F0(v63, 17);
    sub_10001208C(v251, &v247, &qword_10022FD10, &qword_1001E16D0);
    if (!v248)
    {
      sub_100011F00(v251, &qword_10022FD10, &qword_1001E16D0);
      sub_100011F00(&v247, &qword_10022FD10, &qword_1001E16D0);
      goto LABEL_26;
    }

    sub_1000446FC(&v247, v249);
    sub_100024DC8(v249, v250);
    v76 = v218;
    sub_1001D10C0();
    v77 = sub_1001D0F40();
    v78 = *(v77 - 8);
    if ((*(v78 + 48))(v76, 1, v77) == 1)
    {
      sub_100011F00(v76, &qword_10022FCF0, &qword_1001E1698);
    }

    else if ((*(v78 + 88))(v76, v77) == enum case for NWEndpoint.url(_:))
    {
      (*(v78 + 96))(v76, v77);
      v79 = v213;
      (*(v213 + 32))();
      *v63 = sub_1001CFA50();
      v63[1] = v80;
      (v243)(v63, v234, v40);
      v72(v63, 0, 1, v40);
      sub_1000172F0(v63, 20);
      (*(v79 + 8))(v215, v216);
    }

    else
    {
      (*(v78 + 8))(v76, v77);
    }

    sub_100024DC8(v249, v250);
    sub_1001D10D0();
    v82 = v81 * 1000.0;
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_147;
    }

    if (v82 <= -9.22337204e18)
    {
LABEL_148:
      __break(1u);
    }

    else if (v82 < 9.22337204e18)
    {
      *v63 = v82;
      (v243)(v63, v244, v40);
      v72(v63, 0, 1, v40);
      sub_1000172F0(v63, 21);
      sub_100011F00(v251, &qword_10022FD10, &qword_1001E16D0);
      sub_100011CF0(v249);
      goto LABEL_26;
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v266 == 1)
  {
    sub_1001CFED0();
    v68 = *(v64 + 56);
    v68(v63, 0, 1, v40);
    sub_1000172F0(v63, 18);
    v69 = sub_1001D2600();
    v70 = 1000 * v69;
    if ((v69 * 1000) >> 64 != (1000 * v69) >> 63)
    {
      goto LABEL_131;
    }

    sub_1001D2600();
    if (__OFADD__(v70, v71 / 1000000000000000))
    {
      goto LABEL_133;
    }

    *v63 = v70 + v71 / 1000000000000000;
    (v243)(v63, v244, v40);
    v68(v63, 0, 1, v40);
    sub_1000172F0(v63, 17);
    swift_getErrorValue();
    Error.telemetryString.getter(v63, v259, v260);
    v68(v63, 0, 1, v40);
    sub_1000172F0(v63, 19);

    v67 = v240;
  }

LABEL_26:
  v83 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v84 = v67 + v83[26];
  v85 = *v84;
  v86 = *(v84 + 8);
  if (*(v84 + 24))
  {
    if (*(v84 + 24) != 1)
    {
      goto LABEL_35;
    }

    v87 = *(v84 + 16);
    swift_errorRetain();
    sub_1001CFED0();
    v88 = v40;
    v89 = *(v64 + 56);
    v89(v63, 0, 1, v88);
    sub_1000172F0(v63, 12);
    v90 = sub_1001D2600();
    v91 = 1000 * v90;
    if ((v90 * 1000) >> 64 != (1000 * v90) >> 63)
    {
      goto LABEL_135;
    }

    sub_1001D2600();
    if (__OFADD__(v91, v92 / 1000000000000000))
    {
      goto LABEL_137;
    }

    *v63 = v91 + v92 / 1000000000000000;
    v93 = v245;
    (v243)(v63, v244, v245);
    v89(v63, 0, 1, v93);
    sub_1000172F0(v63, 11);
    swift_getErrorValue();
    Error.telemetryString.getter(v63, v257, v258);
    v89(v63, 0, 1, v93);
    v40 = v93;
    v64 = v241;
    sub_1000172F0(v63, 13);
    sub_100128734(v85, v86, v87, 1);
  }

  else
  {
    sub_1001CFED0();
    v94 = *(v64 + 56);
    v94(v63, 0, 1, v40);
    sub_1000172F0(v63, 12);
    v95 = sub_1001D2600();
    v96 = 1000 * v95;
    if ((v95 * 1000) >> 64 != (1000 * v95) >> 63)
    {
      goto LABEL_136;
    }

    sub_1001D2600();
    if (__OFADD__(v96, v97 / 1000000000000000))
    {
      goto LABEL_138;
    }

    *v63 = v96 + v97 / 1000000000000000;
    (v243)(v63, v244, v40);
    v94(v63, 0, 1, v40);
    sub_1000172F0(v63, 11);
  }

  v67 = v240;
LABEL_35:
  v98 = v67 + v83[27];
  v99 = *v98;
  v100 = *(v98 + 8);
  if (*(v98 + 24))
  {
    if (*(v98 + 24) == 1)
    {
      v101 = *(v98 + 16);
      swift_errorRetain();
      v102 = sub_1001D2600();
      v103 = 1000 * v102;
      if ((v102 * 1000) >> 64 != (1000 * v102) >> 63)
      {
        goto LABEL_139;
      }

      sub_1001D2600();
      if (__OFADD__(v103, v104 / 1000000000000000))
      {
        goto LABEL_141;
      }

      *v63 = v103 + v104 / 1000000000000000;
      (v243)(v63, v244, v40);
      v105 = *(v64 + 56);
      v105(v63, 0, 1, v245);
      sub_1000172F0(v63, 14);
      sub_1001CFED0();
      v105(v63, 0, 1, v245);
      sub_1000172F0(v63, 15);
      swift_getErrorValue();
      Error.telemetryString.getter(v63, v255, v256);
      v105(v63, 0, 1, v245);
      v40 = v245;
      v67 = v240;
      sub_1000172F0(v63, 16);
      sub_100128734(v99, v100, v101, 1);
    }
  }

  else
  {
    v106 = sub_1001D2600();
    v107 = 1000 * v106;
    if ((v106 * 1000) >> 64 != (1000 * v106) >> 63)
    {
      goto LABEL_140;
    }

    sub_1001D2600();
    if (__OFADD__(v107, v108 / 1000000000000000))
    {
      goto LABEL_142;
    }

    *v63 = v107 + v108 / 1000000000000000;
    (v243)(v63, v244, v40);
    v109 = *(v64 + 56);
    v109(v63, 0, 1, v40);
    sub_1000172F0(v63, 14);
    sub_1001CFED0();
    v109(v63, 0, 1, v40);
    sub_1000172F0(v63, 15);
  }

  if ((*(v67 + v83[29] + 24) & 1) == 0)
  {
    v110 = sub_1001D2600();
    v111 = 1000 * v110;
    if ((v110 * 1000) >> 64 != (1000 * v110) >> 63)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    sub_1001D2600();
    if (__OFADD__(v111, v112 / 1000000000000000))
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    *v63 = v111 + v112 / 1000000000000000;
    (v243)(v63, v244, v40);
    v113 = *(v64 + 56);
    v113(v63, 0, 1, v40);
    sub_1000172F0(v63, 27);
    sub_1001CFED0();
    v113(v63, 0, 1, v40);
    sub_1000172F0(v63, 28);
  }

  v114 = v67 + v83[22];
  v115 = *v114;
  v116 = *(v114 + 8);
  if (*(v114 + 24))
  {
    if (*(v114 + 24) == 1)
    {
      v117 = *(v114 + 16);
      swift_errorRetain();
      v118 = sub_1001D2600();
      v119 = 1000 * v118;
      if ((v118 * 1000) >> 64 != (1000 * v118) >> 63)
      {
        goto LABEL_143;
      }

      sub_1001D2600();
      if (__OFADD__(v119, v120 / 1000000000000000))
      {
        goto LABEL_145;
      }

      *v63 = v119 + v120 / 1000000000000000;
      (v243)(v63, v244, v40);
      v121 = *(v64 + 56);
      v121(v63, 0, 1, v245);
      sub_1000172F0(v63, 22);
      sub_1001CFED0();
      v121(v63, 0, 1, v245);
      sub_1000172F0(v63, 23);
      swift_getErrorValue();
      Error.telemetryString.getter(v63, v253, v254);
      v121(v63, 0, 1, v245);
      v40 = v245;
      v67 = v240;
      sub_1000172F0(v63, 24);
      sub_100128734(v115, v116, v117, 1);
    }
  }

  else
  {
    v122 = sub_1001D2600();
    v123 = 1000 * v122;
    if ((v122 * 1000) >> 64 != (1000 * v122) >> 63)
    {
      goto LABEL_144;
    }

    sub_1001D2600();
    if (__OFADD__(v123, v124 / 1000000000000000))
    {
      goto LABEL_146;
    }

    *v63 = v123 + v124 / 1000000000000000;
    (v243)(v63, v244, v40);
    v125 = *(v64 + 56);
    v125(v63, 0, 1, v40);
    sub_1000172F0(v63, 22);
    sub_1001CFED0();
    v125(v63, 0, 1, v40);
    sub_1000172F0(v63, 23);
  }

  if ((*(v67 + v83[31] + 16) & 1) == 0)
  {
    v126 = sub_1001D2600();
    v127 = 1000 * v126;
    if ((v126 * 1000) >> 64 != (1000 * v126) >> 63)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    sub_1001D2600();
    if (__OFADD__(v127, v128 / 1000000000000000))
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    *v63 = v127 + v128 / 1000000000000000;
    (v243)(v63, v244, v40);
    (*(v64 + 56))(v63, 0, 1, v40);
    sub_1000172F0(v63, 34);
  }

  v129 = 0;
  v130 = v67;
  v131 = 0;
  v132 = *(v130 + v83[36]);
  v133 = 1 << *(v132 + 32);
  v134 = -1;
  if (v133 < 64)
  {
    v134 = ~(-1 << v133);
  }

  v135 = v132 + 64;
  v136 = v134 & *(v132 + 64);
  v137 = (v133 + 63) >> 6;
  while (2)
  {
    if (v136)
    {
      v138 = v129;
      goto LABEL_68;
    }

    do
    {
      v138 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        __break(1u);
        goto LABEL_115;
      }

      if (v138 >= v137)
      {
        goto LABEL_71;
      }

      v136 = *(v135 + 8 * v138);
      ++v129;
    }

    while (!v136);
    v129 = v138;
LABEL_68:
    v139 = __clz(__rbit64(v136));
    v136 &= v136 - 1;
    v140 = *(*(v132 + 56) + ((v138 << 13) | (v139 << 7)) + 40) >> 60 == 15;
    v141 = __OFADD__(v131, v140);
    v131 += v140;
    if (!v141)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_71:
  LODWORD(v233) = a14;
  v239 = v83;
  *v63 = v131 > 0;
  LODWORD(v238) = enum case for EventValue.BOOL(_:);
  v142 = v243;
  (v243)(v63);
  v143 = v40;
  v144 = *(v241 + 56);
  v241 += 56;
  v144(v242, 0, 1, v143);
  sub_1000172F0(v242, 30);
  *v242 = v131;
  (v142)(v242, v244, v143);
  v145 = v242;
  v144(v242, 0, 1, v143);
  sub_1000172F0(v145, 31);
  v146 = 0;
  v147 = 0;
  v148 = 1 << *(v132 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = v149 & *(v132 + 64);
  v151 = (v148 + 63) >> 6;
  v152 = v240;
  while (2)
  {
    while (2)
    {
      if (!v150)
      {
        while (1)
        {
          v153 = v146 + 1;
          if (__OFADD__(v146, 1))
          {
            break;
          }

          if (v153 >= v151)
          {
            goto LABEL_85;
          }

          v150 = *(v135 + 8 * v153);
          ++v146;
          if (v150)
          {
            v146 = v153;
            goto LABEL_79;
          }
        }

LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

LABEL_79:
      v154 = __clz(__rbit64(v150));
      v150 &= v150 - 1;
      v155 = (*(v132 + 56) + ((v146 << 13) | (v154 << 7)));
      v156 = *v155 >> 62;
      if (!v156 || v156 == 3 && !(*v155 & 0xFFFFFFFFFFFFFFFELL ^ 0xC000000000000000 | v155[1]))
      {
        continue;
      }

      break;
    }

    v141 = __OFADD__(v147++, 1);
    if (!v141)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_85:
  *v145 = v147;
  v157 = v245;
  (v142)(v145, v244, v245);
  v144(v145, 0, 1, v157);
  sub_1000172F0(v145, 29);
  v158 = v239;
  v159 = *(v152 + v239[28] + 16);
  if (v159 != 2)
  {
    *v145 = v159 & 1;
    (v142)(v145, v238, v157);
    v144(v145, 0, 1, v157);
    sub_1000172F0(v145, 26);
    v160 = sub_1001D2600();
    v161 = 1000 * v160;
    if ((v160 * 1000) >> 64 != (1000 * v160) >> 63)
    {
      goto LABEL_123;
    }

    sub_1001D2600();
    if (!__OFADD__(v161, v162 / 1000000000000000))
    {
      *v145 = v161 + v162 / 1000000000000000;
      v163 = v245;
      v142 = v243;
      (v243)(v145, v244, v245);
      v144(v145, 0, 1, v163);
      sub_1000172F0(v145, 25);
      v158 = v239;
      goto LABEL_89;
    }

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
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

LABEL_89:
  v164 = v142;
  if ((*(v152 + v158[32] + 16) & 1) == 0)
  {
    v165 = sub_1001D2600();
    v166 = 1000 * v165;
    if ((v165 * 1000) >> 64 != (1000 * v165) >> 63)
    {
      goto LABEL_124;
    }

    sub_1001D2600();
    if (__OFADD__(v166, v167 / 1000000000000000))
    {
      goto LABEL_127;
    }

    *v145 = v166 + v167 / 1000000000000000;
    v168 = v245;
    (v142)(v145, v244, v245);
    v144(v145, 0, 1, v168);
    sub_1000172F0(v145, 35);
    v158 = v239;
  }

  v169 = v158;
  if ((*(v152 + v158[33] + 16) & 1) == 0)
  {
    v170 = sub_1001D2600();
    v171 = 1000 * v170;
    if ((v170 * 1000) >> 64 != (1000 * v170) >> 63)
    {
      goto LABEL_126;
    }

    sub_1001D2600();
    if (__OFADD__(v171, v172 / 1000000000000000))
    {
      goto LABEL_128;
    }

    *v145 = v171 + v172 / 1000000000000000;
    v173 = v245;
    (v164)(v145, v244, v245);
    v144(v145, 0, 1, v173);
    sub_1000172F0(v145, 36);
  }

  v174 = v152 + v169[21];
  v175 = v226;
  sub_10001208C(v174, v226, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    sub_100011F00(v175, &unk_100230130, &unk_1001E16A0);
    goto LABEL_107;
  }

  if ((EnumCaseMultiPayload - 5) < 2)
  {
LABEL_107:
    v193 = v239;
    v194 = v152 + v239[30];
    if ((*(v194 + 24) & 1) == 0)
    {
      v195 = *(v194 + 16);
      v196 = sub_1001D2600();
      v197 = 1000 * v196;
      if ((v196 * 1000) >> 64 != (1000 * v196) >> 63)
      {
        goto LABEL_129;
      }

      sub_1001D2600();
      if (__OFADD__(v197, v198 / 1000000000000000))
      {
        goto LABEL_130;
      }

      *v145 = v197 + v198 / 1000000000000000;
      v199 = v244;
      v200 = v245;
      v164 = v243;
      (v243)(v145, v244, v245);
      v144(v145, 0, 1, v200);
      sub_1000172F0(v145, 32);
      *v145 = v195;
      v201 = v199;
      v193 = v239;
      (v164)(v145, v201, v200);
      v144(v145, 0, 1, v200);
      sub_1000172F0(v145, 33);
      v152 = v240;
    }

    v202 = *(v152 + v193[38]);
    if (v202 != 2)
    {
      v261 = 0;
      v262 = 0xE000000000000000;
      LOBYTE(v251[0]) = v202 & 1;
      sub_1001D2120();
      v203 = v262;
      *v145 = v261;
      v145[1] = v203;
      v204 = v245;
      (v164)(v145, v234, v245);
      v144(v145, 0, 1, v204);
      sub_1000172F0(v145, 37);
    }

    *v145 = v233 & 1;
    v205 = v245;
    (v164)(v145, v238, v245);
    v144(v145, 0, 1, v205);
    sub_1000172F0(v145, 38);
    v206 = sub_1001CFDA0();
    (*(*(v206 - 8) + 8))(v235, v206);
    v207 = sub_1001CFDD0();
    (*(*(v207 - 8) + 8))(v236, v207);
    v208 = sub_1001CFD60();
    (*(*(v208 - 8) + 8))(v237, v208);
    sub_100011F00(v152, &unk_100230120, &qword_1001DEF40);
    v209 = v267;
    v210 = v223;
    *v223 = 0xD000000000000015;
    v210[1] = 0x80000001001E7500;
    v212 = v224;
    v211 = v225;
    v210[2] = v209;
    v210[3] = v212;
    v210[4] = v211;
    return;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100011AC0(&qword_10022FD08, &qword_1001E16C8);
    (*(v217 + 32))(v219, v175, v220);
    v181 = sub_1001D2600();
    v182 = 1000 * v181;
    if ((v181 * 1000) >> 64 != (1000 * v181) >> 63)
    {
      goto LABEL_151;
    }

    sub_1001D2600();
    if (__OFADD__(v182, v183 / 1000000000000000))
    {
      goto LABEL_153;
    }

    *v145 = v182 + v183 / 1000000000000000;
    v184 = v245;
    (v243)(v145, v244, v245);
    v144(v242, 0, 1, v184);
    sub_1000172F0(v242, 9);
    v185 = v217;
    v186 = v214;
    v187 = v220;
    (*(v217 + 16))(v214, v219, v220);
    v188 = sub_1001D0190();
    v189 = *(v185 + 8);
    v231 = v190;
    v232 = v189;
    v189(v186, v187);
    v191 = v243;
    *v242 = v188;
    v242[1] = v231;
    v145 = v242;
    (v191)(v242, v234, v184);
    v144(v145, 0, 1, v184);
    sub_1000172F0(v145, 10);
    sub_1001CFED0();
    v192 = v184;
    v164 = v191;
    v144(v145, 0, 1, v192);
    sub_1000172F0(v145, 8);
    v232(v219, v220);
    goto LABEL_107;
  }

  v177 = sub_1001D2600();
  v178 = 1000 * v177;
  if ((v177 * 1000) >> 64 != (1000 * v177) >> 63)
  {
    goto LABEL_150;
  }

  sub_1001D2600();
  if (!__OFADD__(v178, v179 / 1000000000000000))
  {
    *v145 = v178 + v179 / 1000000000000000;
    v180 = v245;
    (v164)(v145, v244, v245);
    v144(v145, 0, 1, v180);
    sub_1000172F0(v145, 9);
    sub_1001CFED0();
    v144(v145, 0, 1, v180);
    sub_1000172F0(v145, 8);
    goto LABEL_107;
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_10015C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v26[0] = a7;
  v10 = v7;
  v14 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - v15;
  sub_10001208C(a1, v26 - v15, &qword_100229350, &unk_1001D6BA0);
  v17 = sub_1001D1BA0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100011F00(v16, &qword_100229350, &unk_1001D6BA0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1001D1A70();
      v21 = v20;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1001D1B90();
    (*(v18 + 8))(v16, v17);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  v21 = 0;
LABEL_6:
  v22 = *v10;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  sub_100011AC0(a5, a6);
  v24 = (v21 | v19);
  if (v21 | v19)
  {
    v27[0] = 0;
    v27[1] = 0;
    v24 = v27;
    v27[2] = v19;
    v27[3] = v21;
  }

  v26[1] = 1;
  v26[2] = v24;
  v26[3] = v22;
  swift_task_create();
}