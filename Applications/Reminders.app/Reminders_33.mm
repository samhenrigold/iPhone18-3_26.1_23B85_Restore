void *sub_10039FB74(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v2) + 0x50);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v16 = result;
  sub_10019CB14(a1, v14, v15, v8);

  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v9 + 32))(v12, v8, v4);
  v17 = *(v2 + qword_100780CB0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v18 = result;
  v19 = sub_1001893F4();

  v20 = v17(v19, v12);
  (*(v9 + 8))(v12, v4);
  return v20;
}

uint64_t sub_10039FDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100780EE0, &unk_10063CB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039FE60(uint64_t a1)
{
  v2 = type metadata accessor for TTRITreeViewDropProposal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039FEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039FF24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039FF8C(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char **sub_1003A0068(char **a1, char **a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if ((v12 | v8) <= 7 && ((*(v11 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((((-9 - v8) | v8) - v9 - v12) | v12) - *(*(v10 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = v6;
    v17 = *a2;
    *a1 = *a2;
    v18 = a2 + v8;
    v19 = (a1 + v8 + 8) & ~v8;
    v20 = (v18 + 8) & ~v8;
    v21 = *(v7 + 16);
    v22 = v17;
    v21(v19, v20, v16);
    (*(v11 + 16))((v19 + v9 + v12) & ~v12, (v20 + v9 + v12) & ~v12, v10);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)];
  }

  return a1;
}

uint64_t sub_1003A0224(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v5 + 8))(v7, v4);
  v8 = *(*(a2 + 16) - 8);
  v9 = *(v8 + 8);
  v10 = (v7 + *(v6 + 56) + *(v8 + 80)) & ~*(v8 + 80);

  return v9(v10);
}

void **sub_1003A02EC(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (a1 + v11 + 8) & ~v11;
  v13 = (a2 + v11 + 8) & ~v11;
  v14 = v6;
  v9(v12, v13, v7);
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 16))((*(v10 + 48) + *(v15 + 80) + v12) & ~*(v15 + 80), (*(v10 + 48) + *(v15 + 80) + v13) & ~*(v15 + 80));
  return a1;
}

void **sub_1003A03DC(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (a1 + v12 + 8) & ~v12;
  v14 = (a2 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14, v9);
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 24))((*(v11 + 40) + *(v15 + 80) + v13) & ~*(v15 + 80), (*(v11 + 40) + *(v15 + 80) + v14) & ~*(v15 + 80));
  return a1;
}

void *sub_1003A04C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 8) & ~v9;
  v11 = (a2 + v9 + 8) & ~v9;
  (*(v7 + 32))(v10, v11, v6);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 32))((*(v8 + 32) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 32) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

void **sub_1003A05A8(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 8) & ~v10;
  v12 = (a2 + v10 + 8) & ~v10;
  (*(v8 + 40))(v11, v12, v7);
  v13 = *(*(a3 + 16) - 8);
  (*(v13 + 40))((*(v9 + 24) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v9 + 24) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t sub_1003A0690(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((a1 + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((a1 + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1003A0918(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
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
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v25 = *(v8 + 56);

      v25(&a1[v12 + 8] & ~v12, a2);
    }

    else
    {
      v26 = *(v10 + 56);

      v26(((&a1[v12 + 8] & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *a1 = v24;
  }
}

void sub_1003A0C4C(uint64_t a1)
{
  sub_1001C3488(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void **sub_1003A0D30(void **a1, char **a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v9 = *(v7 + 64);
  }

  else
  {
    v9 = *(v7 + 64) + 1;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v12;
  if (*(v11 + 84))
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = *(v11 + 64) + 1;
  }

  v15 = v14 + 7;
  v16 = (v12 | *(v7 + 80)) & 0x100000;
  v17 = *a2;
  *a1 = *a2;
  if ((v12 | v8) > 7 || v16 != 0 || ((v14 + 7 + ((v9 + ((v8 + 8) & ~v8) + v12) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v20 = &v17[((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)];
  }

  else
  {
    v33 = v10;
    v34 = a1;
    v21 = ~v8;
    __n = v14;
    v32 = ~v12;
    v22 = a1 + v8;
    v23 = a2 + v8;
    v24 = ((v22 + 8) & v21);
    v25 = ((v23 + 8) & v21);
    v26 = *(v7 + 48);
    v27 = v17;
    if (v26(v25, 1, v6))
    {
      memcpy(v24, v25, v9);
    }

    else
    {
      (*(v7 + 16))(v24, v25, v6);
      (*(v7 + 56))(v24, 0, 1, v6);
    }

    v28 = ((v24 + v9 + v13) & v32);
    v29 = ((v25 + v9 + v13) & v32);
    v20 = v34;
    if ((*(v11 + 48))(v29, 1, v33))
    {
      memcpy(v28, v29, __n);
    }

    else
    {
      (*(v11 + 16))(v28, v29, v33);
      (*(v11 + 56))(v28, 0, 1, v33);
    }

    *((v28 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v20;
}

uint64_t sub_1003A0FF8(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = (a1 + *(v5 + 80) + 8) & ~*(v5 + 80);
  if (!(*(v5 + 48))(v6, 1, v4))
  {
    (*(v5 + 8))(v6, v4);
  }

  v7 = *(a2 + 16);
  v13 = *(v7 - 8);
  v8 = *(v13 + 80);
  v9 = *(v5 + 64) + v6;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  v10 = v9 + v8;
  result = (*(*(v7 - 8) + 48))((v9 + v8) & ~v8, 1, v7);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & ~v8, v7);
  }

  return result;
}

void **sub_1003A1190(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((a1 + v9 + 8) & ~v9);
  v11 = ((a2 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  v13 = v6;
  if (v12(v11, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v10, v11, v16);
  }

  else
  {
    (*(v8 + 16))(v10, v11, v7);
    v18 = *(v8 + 56);
    v17 = v8 + 56;
    v18(v10, 0, 1, v7);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v19 + v22;
  v24 = ((v10 + v23) & ~v22);
  v25 = ((v11 + v23) & ~v22);
  if ((*(v21 + 48))(v25, 1, v20))
  {
    v26 = *(v21 + 84);
    v27 = *(v21 + 64);
    if (v26)
    {
      v28 = *(v21 + 64);
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v21 + 16))(v24, v25, v20);
    v30 = *(v21 + 56);
    v29 = v21 + 56;
    v30(v24, 0, 1, v20);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  *((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void **sub_1003A13F0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((a1 + v11 + 8) & ~v11);
  v13 = ((a2 + v11 + 8) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  v20 = *(v10 + 64);
  if (!*(v10 + 84))
  {
    ++v20;
  }

  v21 = *(a3 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = v20 + v23;
  v25 = ((v12 + v24) & ~v23);
  v26 = ((v13 + v24) & ~v23);
  v27 = *(v22 + 48);
  v28 = v27(v25, 1, v21);
  v29 = v27(v26, 1, v21);
  if (v28)
  {
    if (!v29)
    {
      (*(v22 + 16))(v25, v26, v21);
      (*(v22 + 56))(v25, 0, 1, v21);
      goto LABEL_25;
    }

    v30 = *(v22 + 84);
    v31 = *(v22 + 64);
  }

  else
  {
    if (!v29)
    {
      (*(v22 + 24))(v25, v26, v21);
      goto LABEL_25;
    }

    (*(v22 + 8))(v25, v21);
    v30 = *(v22 + 84);
    v31 = *(v22 + 64);
  }

  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 + 1;
  }

  memcpy(v25, v26, v32);
LABEL_25:
  if (*(v22 + 84))
  {
    v33 = *(v22 + 64);
  }

  else
  {
    v33 = *(v22 + 64) + 1;
  }

  v34 = ((v25 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v34[1] = v35[1];
  return a1;
}

void *sub_1003A1730(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + v8 + 8) & ~v8);
  v10 = ((a2 + v8 + 8) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = *(a3 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = ((v9 + v20) & ~v19);
  v22 = ((v10 + v20) & ~v19);
  if ((*(v18 + 48))(v22, 1, v17))
  {
    v23 = *(v18 + 84);
    v24 = *(v18 + 64);
    if (v23)
    {
      v25 = *(v18 + 64);
    }

    else
    {
      v25 = v24 + 1;
    }

    memcpy(v21, v22, v25);
  }

  else
  {
    (*(v18 + 32))(v21, v22, v17);
    v27 = *(v18 + 56);
    v26 = v18 + 56;
    v27(v21, 0, 1, v17);
    v23 = *(v26 + 28);
    v24 = *(v26 + 8);
  }

  if (v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  *((v21 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void **sub_1003A197C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((a1 + v9 + 8) & ~v9);
  v11 = ((a2 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, v7);
  v14 = v12(v11, 1, v7);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 32))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 40))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  v18 = *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v18;
  }

  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = v18 + v21;
  v23 = ((v10 + v22) & ~v21);
  v24 = ((v11 + v22) & ~v21);
  v25 = *(v20 + 48);
  v26 = v25(v23, 1, v19);
  v27 = v25(v24, 1, v19);
  if (v26)
  {
    if (!v27)
    {
      (*(v20 + 32))(v23, v24, v19);
      (*(v20 + 56))(v23, 0, 1, v19);
      goto LABEL_25;
    }

    v28 = *(v20 + 84);
    v29 = *(v20 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v20 + 40))(v23, v24, v19);
      goto LABEL_25;
    }

    (*(v20 + 8))(v23, v19);
    v28 = *(v20 + 84);
    v29 = *(v20 + 64);
  }

  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 + 1;
  }

  memcpy(v23, v24, v30);
LABEL_25:
  if (*(v20 + 84))
  {
    v31 = *(v20 + 64);
  }

  else
  {
    v31 = *(v20 + 64) + 1;
  }

  v32 = ((v23 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v32[1] = v33[1];
  return a1;
}

uint64_t sub_1003A1CB8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = 7;
  if (!v11)
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 < a2)
  {
    v21 = ((v20 + v19 + ((v17 + ((v15 + 8) & ~v15) + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v14 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v21);
      if (v26)
      {
LABEL_33:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          LODWORD(v22) = *a1;
        }

        return v14 + (v22 | v27) + 1;
      }
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
    if (v10 == v14)
    {
      if (v8 >= 2)
      {
        v30 = (*(v7 + 48))((a1 + v15 + 8) & ~v15);
        goto LABEL_50;
      }
    }

    else if (v11 >= 2)
    {
      v30 = (*(*(*(a3 + 16) - 8) + 48))((((a1 + v15 + 8) & ~v15) + v17 + v18) & ~v18, v11);
LABEL_50:
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void sub_1003A1F0C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v10)
  {
    v20 = v14;
  }

  else
  {
    v20 = v14 + 1;
  }

  if (v13)
  {
    v21 = *(v12 + 64);
  }

  else
  {
    v21 = *(v12 + 64) + 1;
  }

  v22 = ((v21 + ((v20 + ((v15 + 8) & ~v15) + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v21 + ((v20 + ((v15 + 8) & ~v15) + v16) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = a3 - v19 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a2 > v19)
  {
    if (v22)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v19;
    }

    if (v22)
    {
      v28 = ~v19 + a2;
      bzero(a1, v22);
      *a1 = v28;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v22) = 0;
LABEL_49:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!v26)
  {
    goto LABEL_49;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_50:
  if ((v18 & 0x80000000) != 0)
  {
    v30 = (a1 + v15 + 8) & ~v15;
    if (v11 == v19)
    {
      if (v10 >= 2)
      {
        v31 = *(v9 + 56);

        v31(v30, a2 + 1);
      }
    }

    else if (v13 >= 2)
    {
      v32 = *(v12 + 56);

      v32((v30 + v20 + v16) & ~v16, a2 + 1, v13);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v29 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v29 = a2 - 1;
    }

    *a1 = v29;
  }
}

uint64_t sub_1003A21E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v6 = &v5;
    swift_getTupleTypeLayout2();
    v7 = &v4;
    swift_getTupleTypeLayout2();
    v8 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1003A22C8(uint64_t *__dst, uint64_t *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 9;
  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));

    return v3;
  }

  v12 = v6 + 8;
  v13 = (v6 + 8) & 0xFFFFFFF8;
  v14 = *(a2 + v6 + 8);
  if (v13)
  {
    v15 = v14 >= 3;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v14 = *a2 + 3;
  }

  switch(v14)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(v3 + v12) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(v3 + v12) = 1;
      return v3;
    case 0u:
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(v3 + v12) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v7);
}

_DWORD *sub_1003A24A4(_DWORD *result, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v3 = v2;
  v4 = *(result + v2);
  if (v4 >= 3 && v3 != 0)
  {
    v4 = *result + 3;
  }

  if (v4 <= 2)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_1003A2530(_BYTE *__dst, _DWORD *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = *(a2 + v6 + 8);
  if (v8 >= 3 && v6 != -8)
  {
    v8 = *a2 + 3;
  }

  switch(v8)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 2;
      goto LABEL_12;
    case 1u:
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 1;
LABEL_12:
      __dst[v7] = v12;
      return __dst;
    case 0u:
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      __dst[v7] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v6 + 9);
}

unsigned __int8 *sub_1003A26C8(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = __dst[v8 + 8];
  if (v10 >= 3 && v8 != -8)
  {
    v10 = *__dst + 3;
  }

  if (v10 <= 2)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v12 = __src[v9];
  if (v8 != -8 && v12 >= 3)
  {
    v12 = *__src + 3;
  }

  switch(v12)
  {
    case 2u:
      (*(v6 + 16))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 2;
      goto LABEL_21;
    case 1u:
      (*(v6 + 16))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 1;
LABEL_21:
      __dst[v9] = v14;
      return __dst;
    case 0u:
      (*(v6 + 16))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v8 + 9);
}

_BYTE *sub_1003A28D0(_BYTE *__dst, _DWORD *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = *(a2 + v6 + 8);
  if (v8 >= 3 && v6 != -8)
  {
    v8 = *a2 + 3;
  }

  switch(v8)
  {
    case 2u:
      (*(v4 + 32))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 2;
      goto LABEL_12;
    case 1u:
      (*(v4 + 32))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 1;
LABEL_12:
      __dst[v7] = v12;
      return __dst;
    case 0u:
      (*(v4 + 32))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      __dst[v7] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v6 + 9);
}

unsigned __int8 *sub_1003A2A68(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = __dst[v8 + 8];
  if (v10 >= 3 && v8 != -8)
  {
    v10 = *__dst + 3;
  }

  if (v10 <= 2)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v12 = __src[v9];
  if (v8 != -8 && v12 >= 3)
  {
    v12 = *__src + 3;
  }

  switch(v12)
  {
    case 2u:
      (*(v6 + 32))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 2;
      goto LABEL_21;
    case 1u:
      (*(v6 + 32))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 1;
LABEL_21:
      __dst[v9] = v14;
      return __dst;
    case 0u:
      (*(v6 + 32))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v8 + 9);
}

uint64_t sub_1003A2C70(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v4 = v3 + 9;
  if ((v3 + 9) <= 3)
  {
    v5 = ((a2 + 3) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    v12 = a1[v3 + 8];
    if (v12 >= 4)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_25;
  }

LABEL_21:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 253;
}

void sub_1003A2D50(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  if (a3 < 0xFD)
  {
    v9 = 0;
    if (a2 > 0xFC)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v5 + 8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 3) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFC)
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = a2 - 253;
  v11 = (a2 - 253) >> 8;
  bzero(a1, v5 + 9);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_19:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_19;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_1003A2E90(_DWORD *a1, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v3 = v2;
  v4 = *(a1 + v2);
  if (v4 >= 3 && v3 != 0)
  {
    return (*a1 + 3);
  }

  return v4;
}

void sub_1003A2ED8(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 > 2)
  {
    v4 = v3 + 8;
    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v5 = a2;
    }

    *(a1 + v4) = v5;
    if (v4)
    {
      v6 = a2 - 3;
      bzero(a1, v4);
      *a1 = v6;
    }
  }

  else
  {
    *(a1 + v3 + 8) = a2;
  }
}

uint64_t sub_1003A2F74(uint64_t a1)
{
  v7 = a1;
  v8 = sub_1003A3020();
  v3 = sub_1000317B8(v6);
  (*(*(a1 - 8) + 16))(v3, v1, a1);
  sub_10000C36C(v6, v7);
  v4 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  sub_100004758(v6);
  return v4;
}

unint64_t sub_1003A3020()
{
  result = qword_100781080;
  if (!qword_100781080)
  {
    type metadata accessor for TTRRemindersListViewModel.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781080);
  }

  return result;
}

id sub_1003A3078(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a4;
  v112 = a3;
  v113 = a1;
  v102 = a2;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v116 = *(v4 - 8);
  v117 = v4;
  __chkstk_darwin(v4);
  v96 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v110 = &v95 - v7;
  __chkstk_darwin(v8);
  v95 = &v95 - v9;
  __chkstk_darwin(v10);
  v108 = &v95 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v106 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v104 = &v95 - v15;
  v103 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v103);
  v115 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for TTRListType.SortingCapability();
  v101 = *(v105 - 1);
  __chkstk_darwin(v105);
  v100 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for TTRRemindersListDefaultListType();
  v99 = *(v111 - 8);
  __chkstk_darwin(v111);
  v98 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v19 - 8);
  v97 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v21 - 8);
  v114 = (&v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v23 = *(v109 - 8);
  __chkstk_darwin(v109);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v31 = *(v30 - 1);
  __chkstk_darwin(v30);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v37 = &v95 - v36;
  (*(v27 + 104))(v29, enum case for TTRListType.PredefinedSmartListType.all(_:), v26, v35);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v27 + 8))(v29, v26);
  v38 = v102;
  v39 = *v102;
  (*(v23 + 104))(v25, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v109);
  v40 = *(v31 + 16);
  v109 = v37;
  v40(v33, v37, v30);
  type metadata accessor for TTRShowGroupDataModelSource();
  swift_allocObject();
  v41 = v39;
  v42 = v112;
  v43 = TTRShowGroupDataModelSource.init(group:store:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v44 = v38;
  v45 = v114;
  sub_10010BD5C(v38, v114, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v46 = v97;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v47 = v98;
  (*(v99 + 104))(v98, enum case for TTRRemindersListDefaultListType.any(_:), v111);
  v48 = v45;
  v49 = sub_10007786C(v45, v46, v47, v124);
  v50 = v124[0];
  v111 = v31;
  v112 = v30;
  v51 = v100;
  (*(v31 + 104))(v100, enum case for REMRemindersListDataView.SortingStyle.default(_:), v30, v49);
  (*(v101 + 104))(v51, enum case for TTRListType.SortingCapability.notSupported(_:), v105);
  type metadata accessor for TTRShowGroupViewModelSource(0);
  v52 = swift_allocObject();

  v105 = v50;
  v53 = sub_1003A6800(v43, v105, v51, 0, v52);
  sub_10010BD5C(v44, v48, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v124, v121);
  v54 = sub_1003A9060(&qword_1007810B0, type metadata accessor for TTRShowGroupViewModelSource, &unk_100646FD0);
  v55 = v115;
  sub_10010BD5C(v48, v115, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v56 = v103;
  sub_10010BCAC(v121, v55 + *(v103 + 28));
  v57 = (v55 + *(v56 + 32));
  *v57 = v53;
  v57[1] = v54;
  v58 = v121[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v123, v120, &qword_100769608, &unk_1006302F0);
  v60 = *(v120[5] + 8);
  *(v59 + 32) = v120[4];
  *(v59 + 40) = v60;
  sub_10000794C(&v122, v118, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v61 = v58;
  swift_unknownObjectRelease();
  *(v59 + 48) = v119;
  sub_100004758(v118);
  sub_100004758(v120);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v62 = swift_allocObject();
  v63 = sub_1003A6F44(v61, v53, v59, v62, &qword_1007810B0, type metadata accessor for TTRShowGroupViewModelSource, sub_1003A6DC8);
  v101 = v53;

  sub_10010BD08(v121);
  sub_10010BE0C(v114, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v64 = *(v56 + 36);
  v102 = v63;
  *(v55 + v64) = v63;
  v65 = v104;
  sub_100078BBC(v104);
  v103 = type metadata accessor for TTRIShowGroupPresenter(0);
  v66 = swift_allocObject();
  v67 = (v66 + OBJC_IVAR____TtC9Reminders22TTRIShowGroupPresenter_dataModelSource);
  *v67 = v43;
  v67[1] = &protocol witness table for TTRShowGroupDataModelSource;
  v68 = v106;
  sub_10010BD5C(v65, v106, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v114 = v43;

  v69 = v107;
  swift_unknownObjectRetain();
  v70 = sub_1003A579C(v68, v69, v66, &off_100721128, sub_10022E03C, sub_10022E044, sub_10022E04C, sub_10022E054);
  sub_10010BE0C(v65, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v71 = *(v70 + 144);
  ObjectType = swift_getObjectType();
  v73 = *(v71 + 112);

  if (v73(ObjectType, v71))
  {
    swift_getObjectType();
    v74 = v95;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v75 = v108;
    (*(v116 + 32))(v108, v74, v117);
  }

  else
  {
    v75 = v108;
    (*(v116 + 104))(v108, enum case for TTRRemindersListLayout.list(_:), v117);
  }

  v76 = sub_1003A4A1C(v75, v70);
  v107 = v77;
  v79 = v78;
  (*(v116 + 8))(v75, v117);
  v108 = swift_getObjectType();
  *(v70 + 24) = *(v79 + 8);
  swift_unknownObjectWeakAssign();
  v80 = *(v70 + 144);
  v81 = swift_getObjectType();
  v82 = *(v80 + 112);

  if (v82(v81, v80))
  {
    swift_getObjectType();
    v83 = v96;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v84 = v110;
    (*(v116 + 32))(v110, v83, v117);
  }

  else
  {

    v84 = v110;
    (*(v116 + 104))(v110, enum case for TTRRemindersListLayout.list(_:), v117);
  }

  v85 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v86 = v76;
  v87 = sub_1003A71D4(v70, v86, v107, v84, 0, 1, 0, v85, type metadata accessor for TTRIShowGroupPresenter);

  v88 = *(v79 + 32);
  v89 = v87;
  v88(v87, &off_100723D78, v108, v79);
  sub_1003A9060(&qword_1007810B8, type metadata accessor for TTRIShowGroupPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1003A9060(&qword_1007810C0, type metadata accessor for TTRShowGroupViewModelSource, &unk_100631D80);

  v90 = v89;
  dispatch thunk of TTRShowGroupDataModelSource.delegate.setter();

  sub_10056FEB0(v91, &off_10071A9B0);

  *(v102 + 24) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v125, v121, &qword_100769600, &qword_10062E0A0);
  v92 = v121[4];
  swift_unknownObjectRelease();
  *(v92 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v121);
  sub_10000794C(&v126, v121, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_1003A9060(&qword_1007810C8, type metadata accessor for TTRIShowGroupPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v121);
  v93 = v113;
  v113[3] = v103;
  v93[4] = &off_100714530;

  swift_unknownObjectRelease();
  *v93 = v70;
  (*(v111 + 8))(v109, v112);
  sub_10010BE0C(v115, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v124);
  return v90;
}

id TTRIShowGroupAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowGroupAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowGroupAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowGroupAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003A3F9C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v23[3] = type metadata accessor for TTRIRemindersListPresenter_collectionView();
  v23[4] = &off_10071FB40;
  v23[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate] = 0;
  v6 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_preferredChromelessBarStates;
  v21 = 0;
  sub_100058000(&unk_100781980, &unk_10063CC90);
  swift_allocObject();
  *&a2[v6] = TTRObservableViewModel.init(value:)();
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu] = _swiftEmptyArrayStorage;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController] = 0;
  v7 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *&a2[v7] = TTRRemindersListItemStateTracker.init()();
  v8 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *&a2[v8] = v9;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_chromelessToolbarUpdater] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropCoordinator] = 0;
  v10 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_prefetchExtender;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&a2[v10] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_accessibilityController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController] = 0;
  v11 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_contextMenuOriginatorItem;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(*(v12 - 8) + 56);
  v13(&a2[v11], 1, 1, v12);
  v13(&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore], 1, 1, v12);
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemCollapsedStatesOverrideCancellable] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell] = 0;
  v14 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_listInfo;
  v15 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___completedTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___incompleteTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___overdueTasksRotor] = 0;
  sub_10000B0D8(v23, &a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter]);
  sub_1000A96A0();
  v16 = static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRIDebouncedHoverAction();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510, &unk_10062BD00);
  swift_allocObject();
  v17[6] = PassthroughSubject.init()();
  v17[7] = 0;
  v17[4] = v16;
  v17[5] = 0x3FF8000000000000;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction] = v17;
  v22.receiver = a2;
  v22.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0, v21);
  sub_100004758(v23);
  v19 = *&v18[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction];
  swift_beginAccess();
  *(v19 + 24) = &off_10072CF18;
  swift_unknownObjectWeakAssign();
  return v18;
}

char *sub_1003A4350(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v22[4] = &off_100727510;
  v22[3] = type metadata accessor for TTRIRemindersListPresenter();
  v22[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_preferredChromelessBarStates;
  v20 = 0;
  sub_100058000(&unk_100781980, &unk_10063CC90);
  swift_allocObject();
  *&a2[v6] = TTRObservableViewModel.init(value:)();
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController] = 0;
  v7 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *&a2[v7] = TTRRemindersListItemStateTracker.init()();
  v8 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *&a2[v8] = v9;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] = 0;
  v10 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_canMoveItemReturnValueTempOverrides;
  type metadata accessor for TTRIRemindersListTemporaryItemSet();
  v11 = swift_allocObject();
  *(v11 + 24) = &_swiftEmptySetSingleton;
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v11 + 16) = TTRDeferredAction.init(queue:)();
  sub_1003A9060(&qword_1007810E0, type metadata accessor for TTRIRemindersListTemporaryItemSet, &unk_10063E814);

  TTRDeferredAction.delegate.setter();

  *&a2[v10] = v11;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController] = 0;
  v12 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(*(v13 - 8) + 56);
  v14(&a2[v12], 1, 1, v13);
  a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] = 0;
  a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically] = 0;
  v14(&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore], 1, 1, v13);
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___completedTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___incompleteTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___overdueTasksRotor] = 0;
  sub_10000B0D8(v22, &a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter]);
  v15 = static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRIDebouncedHoverAction();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510, &unk_10062BD00);
  swift_allocObject();
  v16[6] = PassthroughSubject.init()();
  v16[7] = 0;
  v16[4] = v15;
  v16[5] = 0x3FF8000000000000;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction] = v16;
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0, v20);
  sub_100004758(v22);
  v18 = *&v17[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction];
  swift_beginAccess();
  *(v18 + 24) = &off_1007250E0;
  swift_unknownObjectWeakAssign();
  return v17;
}

id sub_1003A4708(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v20[4] = &off_1007177D0;
  v20[3] = type metadata accessor for TTRIRemindersBoardPresenter();
  v20[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_preferredChromelessBarStates;
  v19 = 0;
  sub_100058000(&unk_100781980, &unk_10063CC90);
  swift_allocObject();
  *&a2[v6] = TTRObservableViewModel.init(value:)();
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu] = _swiftEmptyArrayStorage;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource] = 0;
  v7 = &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers];
  sub_100058000(&qword_100772768, &qword_100634AF0);
  swift_allocObject();
  v8 = PassthroughSubject.init()();
  swift_allocObject();
  v9 = PassthroughSubject.init()();
  *v7 = v8;
  *(v7 + 1) = v9;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController] = 0;
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *&a2[v10] = TTRRemindersListItemStateTracker.init()();
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable] = 0;
  v11 = &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedHeaderViewState];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
  v13 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
  v15 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  sub_10000B0D8(v20, &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter]);
  v18.receiver = a2;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  sub_100004758(v20);
  return v16;
}

void *sub_1003A4A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v61[4] = &off_10071AA70;
  v61[5] = &off_10071AB98;
  v61[3] = v12;
  v61[0] = a2;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRRemindersListLayout.list(_:))
  {
    (*(v5 + 104))(v7, enum case for REMFeatureFlags.collectionView(_:), v4);

    v14 = REMFeatureFlags.isEnabled.getter();
    (*(v5 + 8))(v7, v4);
    if ((v14 & 1) != 0 && (type metadata accessor for TTRUserDefaults(), v15 = static TTRUserDefaults.appUserDefaults.getter(), TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter(), v15, TTRUserDefaultsObservableProperty.value.getter(), , (v58 & 1) == 0))
    {
      sub_1003A7670(v61, &v58);
      v43 = type metadata accessor for TTRIRemindersListPresenter_collectionView();
      v44 = swift_allocObject();
      v45 = sub_10000AE84(&v58, v59);
      v46 = __chkstk_darwin(v45);
      v48 = (&v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v49 + 16))(v48, v46);
      v50 = sub_1003A5410(*v48, v44);
      sub_100004758(&v58);
      v59 = v43;
      v60 = &off_10071FB40;
      *&v58 = v50;
      v51 = objc_allocWithZone(type metadata accessor for TTRIRemindersListContentViewController_collectionView(0));
      v52 = sub_10000AE84(&v58, v59);
      v53 = __chkstk_darwin(v52);
      v55 = (&v58 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v56 + 16))(v55, v53);
      v57 = *v55;

      v25 = sub_1003A3F9C(v57, v51);
      sub_100004758(&v58);
      v50[5] = &off_10072CF28;
      swift_unknownObjectWeakAssign();
    }

    else
    {
      sub_1003A7670(v61, &v58);
      v16 = type metadata accessor for TTRIRemindersListPresenter();
      v17 = swift_allocObject();
      *(v17 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v17 + 40) = 0;
      swift_unknownObjectWeakInit();
      sub_1003A76D4(&v58, (v17 + 48));
      v59 = v16;
      v60 = &off_100727510;
      *&v58 = v17;
      v18 = objc_allocWithZone(type metadata accessor for TTRIRemindersListContentViewController(0));
      v19 = sub_10000AE84(&v58, v59);
      v20 = __chkstk_darwin(v19);
      v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22, v20);
      v24 = *v22;

      v25 = sub_1003A4350(v24, v18);
      sub_100004758(&v58);
      *(v17 + 40) = &off_100725120;
      swift_unknownObjectWeakAssign();
    }

    goto LABEL_7;
  }

  if (v13 == enum case for TTRRemindersListLayout.columns(_:))
  {
    sub_1003A7670(v61, &v58);
    v26 = type metadata accessor for TTRIRemindersBoardPresenter();
    v27 = swift_allocObject();
    v28 = sub_10000AE84(&v58, v59);
    v29 = __chkstk_darwin(v28);
    v31 = (&v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = *v31;

    v34 = sub_1003A51F4(v33, v27);
    sub_100004758(&v58);
    v59 = v26;
    v60 = &off_1007177D0;
    *&v58 = v34;
    v35 = objc_allocWithZone(type metadata accessor for TTRIRemindersBoardMainViewController(0));
    v36 = sub_10000AE84(&v58, v59);
    v37 = __chkstk_darwin(v36);
    v39 = (&v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39, v37);
    v41 = *v39;

    v25 = sub_1003A4708(v41, v35);
    sub_100004758(&v58);
    swift_beginAccess();
    *(v34 + 40) = &off_10072A2A8;
    swift_unknownObjectWeakAssign();
LABEL_7:
    sub_100004758(v61);
    return v25;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003A51F4(uint64_t a1, uint64_t a2)
{
  v5[4] = &off_10071AA70;
  v5[5] = &off_10071AB98;
  v5[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v5[0] = a1;
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability();
  swift_allocObject();
  *(a2 + 96) = TTRRemindersBoardPresentationTreesManagementPresenterCapability.init()();
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  swift_allocObject();
  *(a2 + 104) = TTRRemindersBoardCollapsedStatesPresenterCapability.init()();
  type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();
  swift_allocObject();
  *(a2 + 112) = TTRRemindersBoardCellPresentationStatesPresenterCapability.init(showsInfoButtonWhenSelected:)();
  *(a2 + 120) = 0;
  sub_1003A7670(v5, a2 + 48);
  sub_1003A9060(&qword_1007810E8, type metadata accessor for TTRIRemindersBoardPresenter, &unk_100631B7C);

  TTRRemindersBoardPresentationTreesManagementPresenterCapability.delegate.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStateDidChangeExplicitly.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter();
  sub_100004758(v5);

  return a2;
}

void *sub_1003A5410(uint64_t a1, void *a2)
{
  v5[4] = &off_10071AA70;
  v5[5] = &off_10071AB98;
  v5[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v5[0] = a1;
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  a2[5] = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_1007810D0, &unk_10063CCA0);
  swift_allocObject();
  a2[12] = TTRICollectionViewPresentationTreeManagementPresenterCapability.init()();
  sub_100058000(&qword_10077C860, &qword_100644F30);
  swift_allocObject();
  a2[13] = TTRICollectionViewCollapsedStatesPresenterCapability.init(loggingPrefix:)();
  type metadata accessor for TTRIRemindersListCellPresentationStatesPresenterCapability();
  swift_allocObject();
  a2[14] = TTRIRemindersListCellPresentationStatesPresenterCapability.init()();
  sub_1003A7670(v5, (a2 + 6));
  sub_1003A9060(&qword_1007810D8, type metadata accessor for TTRIRemindersListPresenter_collectionView, &unk_10063AB1C);

  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.delegate.setter();

  swift_allocObject();
  swift_weakInit();

  TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStateDidChange.setter();

  swift_allocObject();
  swift_weakInit();

  TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter();
  sub_100004758(v5);

  return a2;
}

uint64_t sub_1003A5654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = type metadata accessor for TTRIShowRemindersUndoManagerObserver();
  v8[4] = &off_10072E078;
  v8[0] = a2;
  *(a3 + 120) = a1;

  sub_10000B0D8(v8, v7);

  sub_1005A7098(v7);
  return sub_100004758(v8);
}

uint64_t sub_1003A579C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v84 = a5;
  v85 = a6;
  v81 = a4;
  v10 = (a1 + 408);
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v13 = v73 - v12;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 160) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo;
  v15 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  v16 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentHashtagEditorModuleEventHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = 0;
  v19 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_showRemindersAsOverdueObserver;
  type metadata accessor for TTRUserDefaultsShowRemindersAsOverdueObserver();
  swift_allocObject();
  *(a3 + v20) = TTRUserDefaultsShowRemindersAsOverdueObserver.init()();
  v21 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_autoCategorizationActivityMonitor;
  type metadata accessor for TTRRemindersListAutoCategorizationActivityMonitor();
  swift_allocObject();
  *(a3 + v21) = TTRRemindersListAutoCategorizationActivityMonitor.init()();
  v22 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_reminderChangeItemForShowDetailsCancellable) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_localeChangedObserver) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_timeZoneOverrideChangedObserver) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_needsRefreshItemsWhenSceneEntersForeground) = 0;
  v23 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
  v24 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator) = 0;
  v25 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertion;
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v83 = sub_100058000(&qword_100775588, &unk_10063CCB0);
  swift_allocObject();
  *(a3 + v25) = CurrentValueSubject.init(_:)();
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertionCancellable) = 0;
  v28 = a1[1];
  v80 = *a1;
  v27 = *(&v80 + 1);
  v77 = v28;
  v78 = v80;
  *(a3 + 72) = v80;
  v82 = v27;
  *(a3 + 88) = v28;
  v29 = a1[2];
  v79 = v29;
  *(a3 + 136) = v29;
  v76 = *(&v29 + 1);
  sub_10000794C((a1 + 16), &v98, &unk_100775590, &qword_100635200);
  v30 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar;
  v90 = v100;
  sub_100007DD8(&v98, (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar));
  *(v30 + 32) = v90;
  sub_10000794C((a1 + 19), &v98, &qword_100769608, &unk_1006302F0);
  v31 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar;
  v90 = v100;
  sub_100007DD8(&v98, (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar));
  *(v31 + 32) = v90;
  sub_10000B0D8((a1 + 10), a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_titleAttributesInteractor);
  v33 = *(a1 + 44);
  v88 = *(a1 + 45);
  v32 = v88;
  v34 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  *v34 = v33;
  v34[1] = v32;
  v35 = v10[1];
  v74 = *v10;
  v75 = v35;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationQuickPicksInteractor) = v74;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_listPickerInteractor) = v35;
  v36 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v37 = *(v36 + 108);
  v38 = v36;
  *&v90 = v36;
  *(a3 + 168) = *(a1 + v37);
  *(a3 + 160) = v81;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  *&v77 = *(a1 + 12);
  v39 = *(a1 + 19);
  v73[1] = *(a1 + 18);
  *&v75 = v39;
  sub_10000B0D8(a1 + 200, &v98);
  v40 = *(a1 + 31);
  v73[0] = *(a1 + 30);
  *&v74 = v40;
  v89 = a1;
  sub_10000B0D8((a1 + 23), v97);
  sub_10000B0D8(a1 + *(v38 + 100), v96);
  sub_10000B0D8((a1 + 3), v95);
  v41 = *(a1 + 17);
  v94[3] = type metadata accessor for TTRIPrivacyChecker();
  v94[4] = &protocol witness table for TTRIPrivacyChecker;
  v94[0] = v41;
  v81 = v41;
  type metadata accessor for TTRRemindersListPresenterCapability(0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + 32) = 0x4000000000000000;
  v43 = objc_allocWithZone(NSCache);

  *(v42 + 240) = [v43 init];
  v44 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL;
  v45 = type metadata accessor for URL();
  (*(*(v45 - 8) + 56))(v42 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsPassthroughSubject;
  sub_100058000(&unk_1007755A0, &qword_100635CF0);
  swift_allocObject();
  *(v42 + v46) = PassthroughSubject.init()();
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsCancellable) = 0;
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID) = 0;
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle) = 0;
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection) = &_swiftEmptySetSingleton;
  v76 = *(v76 + 8);
  sub_10000B0D8(&v98, &v93);
  sub_10000B0D8(v97, &v92);
  sub_10000B0D8(v95, &v91);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v47 = v33;
  *(v42 + 40) = TTRRemindersListPresenterCapabilityCore.init(viewModelSource:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:editingPresenter:avatarProvider:geoService:)();
  v48 = v79;
  *(v42 + 48) = v80;
  *(v42 + 64) = v48;
  v49 = v77;
  *(v42 + 80) = v77;
  sub_10000B0D8(&v98, v42 + 88);
  v50 = v88;
  *(v42 + 128) = v47;
  *(v42 + 136) = v50;
  sub_10000B0D8(v96, v42 + 144);
  sub_10000B0D8(v94, v42 + 184);
  type metadata accessor for TTRDeleteRemindersPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v51 = v49;
  *(v42 + 224) = TTRDeleteRemindersPresenterCapability.init(interactor:)();
  type metadata accessor for TTRSetReminderCompletedPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v42 + 232) = TTRSetReminderCompletedPresenterCapability.init(interactor:)();
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDebouncedAction();
  swift_allocObject();
  *(v42 + 248) = TTRDebouncedAction.init(interval:queue:)();
  sub_1003A9060(&qword_1007755B0, type metadata accessor for TTRRemindersListPresenterCapability, &unk_100636740);

  TTRRemindersListPresenterCapabilityCore.delegate.setter();

  sub_1003A9060(&qword_1007755B8, type metadata accessor for TTRRemindersListPresenterCapability, &unk_100636718);

  TTRDebouncedAction.delegate.setter();
  sub_100004758(v95);
  sub_100004758(v96);
  sub_100004758(v97);
  sub_100004758(&v98);
  sub_100004758(v94);
  *(a3 + 104) = v42;
  v52 = v89;
  *(a3 + 112) = *(v89 + 120);
  v53 = v81;
  *(a3 + 120) = *(v52 + 128);
  *(a3 + 128) = v53;
  sub_10000B0D8(v52 + *(v90 + 104), a3 + 32);
  *(v42 + 24) = &off_10071AA40;
  swift_unknownObjectWeakAssign();
  v54 = objc_opt_self();

  v55 = [v54 defaultCenter];
  v98 = 0u;
  v99 = 0u;
  v56 = objc_opt_self();
  v57 = [v56 mainQueue];
  swift_allocObject();
  swift_weakInit();

  v58 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v98, &qword_10076AE40, &qword_10062EE50);

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_localeChangedObserver) = v58;

  v59 = [v54 defaultCenter];
  v60 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v98 = 0u;
  v99 = 0u;
  v61 = [v56 mainQueue];
  swift_allocObject();
  swift_weakInit();

  v62 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v98, &qword_10076AE40, &qword_10062EE50);

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_timeZoneOverrideChangedObserver) = v62;

  v63 = *(v90 + 96);
  v64 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
  swift_beginAccess();
  v65 = v89;
  sub_1003A770C(v89 + v63, a3 + v64);
  swift_endAccess();
  v66 = *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar + 32);
  swift_beginAccess();
  v67 = sub_10000C36C((a3 + 32), *(a3 + 56));
  sub_1003A5654(v42, *v67, v66);
  *&v98 = *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertion);
  swift_allocObject();
  swift_weakInit();
  sub_1003A777C();

  v68 = Publisher<>.sink(receiveValue:)();

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertionCancellable) = v68;

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.setter();

  v69 = type metadata accessor for TTRUserDefaults();
  v70 = static TTRUserDefaults.appUserDefaults.getter();
  *(&v99 + 1) = v69;
  *&v100 = &protocol witness table for TTRUserDefaults;

  *&v98 = v70;
  sub_10010BE0C(v65, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v71 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  swift_beginAccess();
  sub_1003A77E0(&v98, a3 + v71);
  swift_endAccess();
  return a3;
}

uint64_t sub_1003A64B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  *(a4 + 16) = TTRModuleState.init(name:)();
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  type metadata accessor for TTRRemindersListTreeViewModel();
  type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  *(a4 + v7) = TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)();
  v8 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
  v9 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v10 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v11 = *(*(v10 - 8) + 104);
  v11(a4 + v8, v9, v10);
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID) = &_swiftEmptyDictionarySingleton;
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  v13 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_currentTipCapability;
  type metadata accessor for TTRRemindersListCurrentTipCapability();
  swift_allocObject();
  *(a4 + v14) = TTRRemindersListCurrentTipCapability.init()();
  v11(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedEmptyListMessaging, v9, v10);
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides) = &_swiftEmptyDictionarySingleton;
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements) = _swiftEmptyArrayStorage;
  v15 = a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions;
  *v15 = 257;
  *(v15 + 2) = 0;
  v16 = (a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_dataModelSource);
  *v16 = a1;
  v16[1] = &protocol witness table for TTRRemindersListDataModelSourceBase;
  v17 = (a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_interactor);
  *v17 = a2;
  v17[1] = &protocol witness table for TTRRemindersListInteractor;
  v18 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  v19 = type metadata accessor for TTRListType.SortingCapability();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a4 + v18, a3, v19);
  swift_allocObject();
  swift_weakInit();

  TTRRemindersListCurrentTipCapability.visibleTipDidChange.setter();

  (*(v20 + 8))(a3, v19);

  return a4;
}

uint64_t sub_1003A6800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v36 = a3;
  v37 = v10;
  v38 = type metadata accessor for REMAnalyticsEvent();
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v35 = type metadata accessor for TTRListType.SortingCapability();
  v17 = *(v35 - 8);
  v18 = __chkstk_darwin(v35);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropUtils) = 0;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  v21 = a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_completedRemindersCount;
  *v21 = 0;
  v21[8] = 1;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance) = 0;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group) = 0;
  v22 = (a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_groupDataModelSource);
  *v22 = a1;
  v22[1] = &protocol witness table for TTRShowGroupDataModelSource;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_hasDefaultNewReminderButton) = a4;
  (*(v17 + 16))(v20, a3, v18);

  v24 = sub_1003A64B4(v23, a2, v20, a5, sub_1003A7860);

  sub_10013F4C8(v16);
  sub_10056F540(v16);
  sub_1000079B4(v16, &unk_10078A380, &qword_10062DE60);
  type metadata accessor for TTRUserDefaults();
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v26 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v27 = &v13[*(v26 + 48)];
  v28 = &v13[*(v26 + 80)];
  v29 = enum case for REMRemindersOpenUserOperation.group(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v30 - 8) + 104))(v13, v29, v30);
  *v27 = TTRUserDefaults.activitySessionId.getter();
  v27[1] = v31;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v28 = _typeName(_:qualified:)();
  v28[1] = v32;
  v33 = v38;
  (*(v11 + 104))(v13, enum case for REMAnalyticsEvent.openListUserOperation(_:), v38);
  REMAnalyticsManager.post(event:)();

  (*(v17 + 8))(v36, v35);
  (*(v11 + 8))(v13, v33);
  return v24;
}

void *sub_1003A6BE4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781100, type metadata accessor for TTRShowRemindersInListViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A6DC8(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_1007810B0, type metadata accessor for TTRShowGroupViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A6F44(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(id, uint64_t, uint64_t))
{
  v11 = sub_1003A9060(a5, a6, &unk_100646FD0);
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[9] = &_swiftEmptyDictionarySingleton;
  a4[11] = 0;
  v12 = a4 + OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  v13 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v12[*(type metadata accessor for TTRReminderListEditingPresenter.EditingState(0) + 20)] = 0;
  a4[6] = a1;
  a4[7] = &protocol witness table for TTRRemindersListInteractor;
  a4[4] = a2;
  a4[5] = v11;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper();
  swift_allocObject();
  v14 = a1;

  a4[12] = TTRInCellEditingPresenterManagingHelper.init(reminderEditingComponents:)();
  type metadata accessor for TTRRemindersListEditingSessionProvider();
  v15 = swift_allocObject();

  v16 = a7(v14, a2, v15);

  a4[8] = v16;
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  a4[10] = TTRDeferredAction.init(queue:)();
  sub_1003A9060(&qword_1007810F0, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644138);

  TTRInCellEditingPresenterManagingHelper.delegate.setter();

  *(a4[8] + 24) = &off_10072C850;
  swift_unknownObjectWeakAssign();
  sub_1003A9060(&qword_1007810F8, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644168);

  TTRDeferredAction.delegate.setter();

  return a4;
}

id sub_1003A71D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8, uint64_t (*a9)(void, __n128))
{
  v50 = a7;
  v49 = a6;
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a9(0, v17);
  v52[4] = &off_10071AB98;
  v52[0] = a1;
  v20 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator;
  *&a8[v20] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___toolbar] = 1;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint] = 0;
  a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 0;
  v21 = &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions];
  *v21 = xmmword_10062E1C0;
  v21[16] = 0;
  v22 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
  v23 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v24 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v24 - 8) + 104))(&a8[v22], v23, v24);
  (*(v16 + 104))(v19, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:), v15);
  TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)();
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController] = 0;
  v25 = &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_lastSetLargeTitleColor];
  *v25 = 0;
  v25[8] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController] = 0;
  v26 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
  v27 = type metadata accessor for TTRSharedWithYouHighlight();
  (*(*(v27 - 8) + 56))(&a8[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
  v29 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v29 - 8) + 56))(&a8[v28], 1, 1, v29);
  sub_10000B0D8(v52, &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter]);
  v30 = &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v32 = v44;
  v31 = v45;
  *v30 = v44;
  v30[1] = v31;
  v33 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
  v34 = type metadata accessor for TTRRemindersListLayout();
  v35 = *(v34 - 8);
  v36 = &a8[v33];
  v37 = v46;
  (*(v35 + 16))(v36, v46, v34);
  v38 = v32;
  TTRRemindersListViewModel.ListInfo.init()();
  (*(v12 + 32))(&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo], v14, v11);
  v39 = *v21;
  v40 = *(v21 + 1);
  v41 = v49;
  *v21 = v47;
  *(v21 + 1) = v41;
  v21[16] = v50;
  sub_1001133CC(v39, v40);
  v51.receiver = a8;
  v51.super_class = ObjectType;
  v42 = objc_msgSendSuper2(&v51, "initWithNibName:bundle:", 0, 0);
  (*(v35 + 8))(v37, v34);
  sub_100004758(v52);
  return v42;
}

uint64_t sub_1003A7670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1003A76D4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1003A770C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A777C()
{
  result = qword_1007755C0;
  if (!qword_1007755C0)
  {
    sub_10005D20C(&qword_100775588, &unk_10063CCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007755C0);
  }

  return result;
}

uint64_t sub_1003A77E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007755C8, &qword_100635CF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1003A7868(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781120, type metadata accessor for TTRShowCustomSmartListViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7A4C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781108, type metadata accessor for TTRShowRecentlyDeletedViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7C30(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781118, type metadata accessor for TTRShowSiriFoundInAppsViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7E14(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100770958, type metadata accessor for TTRShowAssignedViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7FC4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10077FA00, type metadata accessor for TTRShowCompletedViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A81A8(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10077E8A8, type metadata accessor for TTRShowTodayViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A838C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_1007712A0, type metadata accessor for TTRShowScheduledViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A853C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781110, type metadata accessor for TTRShowAllRemindersViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A86EC(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100777990, type metadata accessor for TTRShowFlaggedViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A889C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781128, type metadata accessor for TTRShowTaggedViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A8A80(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10077FE40, type metadata accessor for TTRIShowSearchResultViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A8C64(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10076C228, type metadata accessor for TTRShowPublicTemplateViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A8E7C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781130, type metadata accessor for TTRShowTemplateViewModelSource, &unk_100646FD0);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

uint64_t sub_1003A9060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TTRLocalizableStringResources.AppIntents.Intent.searchReminders.getter()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003A94BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003A96C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1003AB294(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003AF478(&type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_1007812A0, &unk_10063CE80);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1003ACF24(v5, v7, &type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  *v2 = v7;
  return v10;
}

uint64_t sub_1003A97F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1003AB730(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003AF478(&type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_100781238, &unk_10063CE00);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1003ACF24(v5, v7, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
  *v2 = v7;
  return v10;
}

uint64_t sub_1003A9928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1003AB730(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003AFDB0(&type metadata accessor for TTRAccountsListsViewModel.PinnedList, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_100781240, &unk_10063CE10);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1003AD394(v7, v9, &type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003A9B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1003AB730(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003AFDB0(&type metadata accessor for REMHashtagLabelSpecifier, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_100781248, &unk_100645BC0);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for REMHashtagLabelSpecifier();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1003AD394(v7, v9, &type metadata accessor for REMHashtagLabelSpecifier);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for REMHashtagLabelSpecifier();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003A9D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v6 = sub_1003AB804(a1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003AFDB0(&type metadata accessor for TTRUserDefaults.SmartListVersionWarning, &type metadata accessor for UUID, &qword_100781328, &qword_10063CF18);
      v10 = v22;
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v10 + 56);
    v14 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v21 = *(v14 - 8);
    (*(v21 + 32))(a2, v13 + *(v21 + 72) * v8, v14);
    sub_1003AD8A8(v8, v10);
    *v4 = v10;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

void sub_1003A9ED8(uint64_t *a1)
{
  v2 = *(sub_100058000(&unk_10076BE60, &unk_100645EB0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000EF35C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1003B12E4(v5);
  *a1 = v3;
}

uint64_t *TTRSmartListVersionWarningInteractor.__allocating_init(userDefaults:maxStoredValues:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000AE84(a1, v5);
  v8 = sub_1003B3B84(v7, a2, v2, v5, v6);
  sub_100004758(a1);
  return v8;
}

void *TTRSmartListVersionWarningInteractor.init(userDefaults:maxStoredValues:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000AE84(a1, v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1003B3B0C(v10, a2, v2, v5, v6);
  sub_100004758(a1);
  return v12;
}

BOOL TTRSmartListVersionWarningInteractor.hasVersionWarningAlertShown(for:supportedVersion:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v24 - v14;
  v16 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_10000B0D8(v2 + 16, v26);
  v17 = v27;
  v18 = v28;
  sub_10000C36C(v26, v27);
  v19 = (*(v18 + 8))(v17, v18);
  sub_100004758(v26);
  if (*(v19 + 16) && (v20 = sub_1003AB804(v7), (v21 & 1) != 0))
  {
    (*(v9 + 16))(v11, *(v19 + 56) + *(v9 + 72) * v20, v8);
    (*(v5 + 8))(v7, v4);

    (*(v9 + 32))(v15, v11, v8);
    v22 = TTRUserDefaults.SmartListVersionWarning.supportedVersion.getter();
    (*(v9 + 8))(v15, v8);
    return v22 >= v25;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

void TTRSmartListVersionWarningInteractor.setVersionWarningAlertShown(for:supportedVersion:)(char *a1, void (**a2)(char *, uint64_t))
{
  v3 = v2;
  v81 = a1;
  v82 = a2;
  v4 = sub_100058000(&qword_100781138, &qword_10063CD20);
  __chkstk_darwin(v4 - 8);
  v76 = v65 - v5;
  v84 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  v6 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = v65 - v9;
  __chkstk_darwin(v10);
  v77 = v65 - v11;
  v12 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v12 - 8);
  v85 = v65 - v13;
  v14 = type metadata accessor for Date();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v80 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v83 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v65 - v21;
  swift_beginAccess();
  sub_10000B0D8((v2 + 2), &v86);
  v23 = v87;
  v24 = v88;
  sub_10000C36C(&v86, v87);
  v25 = v24[1](v23, v24);
  sub_100004758(&v86);
  v26 = [v81 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  v27 = v80;
  TTRUserDefaults.SmartListVersionWarning.init(creationDate:supportedVersion:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v25;
  sub_100127B1C(v27, v22, isUniquelyReferenced_nonNull_native);
  v66 = v18;
  v29 = *(v18 + 8);
  v78 = v17;
  v79 = v29;
  v80 = (v18 + 8);
  v29(v22, v17);
  v30 = v86;
  v31 = v86[2];
  if (v31)
  {
    v32 = sub_1003AC754(v86[2], 0);
    sub_1003B3850(&v86, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v31, v30);
    v34 = v33;
    v35 = v86;
    v81 = v88;
    v82 = v87;

    sub_10008BA48(v35);
    if (v34 == v31)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_5:
  v86 = v32;
  sub_1003A9ED8(&v86);
  v36 = v86;
  v37 = v30[2];
  v73 = v3[7];
  if (v73 >= v37)
  {

LABEL_25:
    swift_beginAccess();
    v63 = v3[5];
    v64 = v3[6];
    sub_10000AE84((v3 + 2), v63);
    (*(v64 + 16))(v30, v63, v64);
    swift_endAccess();
  }

  else
  {
    v65[0] = v3;
    v38 = (v66 + 32);
    v72 = (v66 + 56);
    v82 = (v67 + 8);
    v71 = (v66 + 48);
    v70 = (v67 + 56);
    v65[1] = v67 + 32;
    v69 = v6;
    v68 = (v66 + 32);
    while (1)
    {
      v39 = *(v36 + 16);
      if (!v39)
      {
        (*v72)(v85, 1, 1, v78);
LABEL_23:

        sub_1000079B4(v85, &unk_10077D160, &qword_10063C8E0);
LABEL_24:
        v3 = v65[0];
        goto LABEL_25;
      }

      v40 = v36;
      v81 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v41 = *(v6 + 72);
      v42 = v15;
      v43 = v85;
      v44 = v77;
      sub_1003B3C98(v81 + v36 + v41 * (v39 - 1), v77);
      v45 = *(v84 + 48);
      v46 = *v38;
      v47 = v78;
      (*v38)(v43, v44, v78);
      (*v72)(v43, 0, 1, v47);
      v48 = (v44 + v45);
      v49 = v43;
      v15 = v42;
      v50 = *v82;
      (*v82)(v48, v42);
      if ((*v71)(v49, 1, v47) == 1)
      {
        goto LABEL_23;
      }

      v51 = v83;
      v46(v83, v85, v47);
      v52 = sub_1003AB804(v51);
      if (v53)
      {
        v54 = v52;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v86 = v30;
        v56 = v76;
        if (!v55)
        {
          sub_1003AFDB0(&type metadata accessor for TTRUserDefaults.SmartListVersionWarning, &type metadata accessor for UUID, &qword_100781328, &qword_10063CF18);
          v30 = v86;
        }

        v79(v30[6] + *(v66 + 72) * v54, v47);
        (*(v67 + 32))(v56, v30[7] + *(v67 + 72) * v54, v15);
        sub_1003AD8A8(v54, v30);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v56 = v76;
      }

      (*v70)(v56, v57, 1, v15);
      sub_1000079B4(v56, &qword_100781138, &qword_10063CD20);
      if (!v40[2])
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v58 = v40[2];
        if (!v58)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v40 = sub_1003B2F70(v40);
        v58 = v40[2];
        if (!v58)
        {
          goto LABEL_27;
        }
      }

      v59 = v58 - 1;
      v60 = v75;
      sub_1003B3D08(v81 + v40 + (v58 - 1) * v41, v75);
      v40[2] = v59;
      v61 = v79;
      v79(v83, v47);
      v62 = v74;
      sub_1003B3D08(v60, v74);
      v50((v62 + *(v84 + 48)), v15);
      v61(v62, v47);
      v36 = v40;
      v6 = v69;
      v38 = v68;
      if (v73 >= v30[2])
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);

    __break(1u);
  }
}

double TTRSmartListVersionWarningInteractor.moveVersionWarningAlertShown(from:to:)(void *a1, void *a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_100058000(&qword_100781138, &qword_10063CD20);
  __chkstk_darwin(v5 - 8);
  v49 = &v46 - v6;
  v54 = type metadata accessor for UUID();
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  __chkstk_darwin(v13);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v53 = &v46 - v20;
  swift_beginAccess();
  sub_10000B0D8(v2 + 16, v55);
  v22 = v56;
  v21 = v57;
  sub_10000C36C(v55, v56);
  v23 = (*(v21 + 8))(v22, v21);
  sub_100004758(v55);
  v58 = v23;
  v24 = a1;
  v25 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v23 + 16) && (v26 = sub_1003AB804(v12), (v27 & 1) != 0))
  {
    v28 = *(v23 + 56) + *(v52 + 72) * v26;
    v29 = v52;
    v46 = *(v52 + 16);
    v47 = v3;
    v30 = v51;
    v46(v18, v28);
    v31 = *(v7 + 8);
    v32 = v54;
    v31(v12, v54);
    (*(v29 + 32))(v53, v18, v30);
    v33 = [v24 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v49;
    sub_1003A9D00(v9, v49);
    v31(v9, v32);
    sub_1000079B4(v34, &qword_100781138, &qword_10063CD20);
    v35 = [v50 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v48;
    v37 = v53;
    (v46)(v48, v53, v30);
    v38 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v38;
    sub_100127B1C(v36, v9, isUniquelyReferenced_nonNull_native);
    v31(v9, v32);
    v40 = v47;
    swift_beginAccess();
    v41 = *(v40 + 40);
    v42 = *(v40 + 48);
    sub_10000AE84(v40 + 16, v41);
    v43 = *(v42 + 16);

    v43(v44, v41, v42);
    swift_endAccess();
    (*(v52 + 8))(v37, v30);
  }

  else
  {
    (*(v7 + 8))(v12, v54);
  }

  return result;
}

uint64_t TTRSmartListVersionWarningInteractor.__deallocating_deinit()
{
  sub_100004758((v0 + 16));

  return swift_deallocClassInstance();
}

void (*sub_1003AB220(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRUserDefaults.smartListVersionWarnings.modify();
  return sub_1001861BC;
}

unint64_t sub_1003AB294(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_100014E74(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
}

unint64_t sub_1003AB368(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_1003ABB3C(v1, v2);
}

unint64_t sub_1003AB3D4(Swift::UInt a1, uint64_t a2)
{
  v2 = a2;
  Hasher.init(_seed:)();
  sub_1002F2A34(v6, a1, v2);
  v4 = Hasher._finalize()();

  return sub_1003ABBAC(a1, v2, v4);
}

unint64_t sub_1003AB44C(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1003ABD04(a1, v2);
}

unint64_t sub_1003AB490(uint64_t a1)
{
  type metadata accessor for TTRRemindersListPostponeType();
  sub_100014E74(&qword_100781290, &type metadata accessor for TTRRemindersListPostponeType, &protocol conformance descriptor for TTRRemindersListPostponeType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRRemindersListPostponeType, &unk_100780968, &type metadata accessor for TTRRemindersListPostponeType, &protocol conformance descriptor for TTRRemindersListPostponeType);
}

unint64_t sub_1003AB564(void *a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v2 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();

  return sub_1003ABD70(a1, v3);
}

unint64_t sub_1003AB5F4(uint64_t a1)
{
  type metadata accessor for TTRSectionID();
  sub_100014E74(&qword_1007758E0, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRSectionID, &qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
}

unint64_t sub_1003AB6C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  v2 = Hasher._finalize()();
  return sub_1003ABE74(a1, v2);
}

unint64_t sub_1003AB730(uint64_t a1)
{
  type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  sub_100014E74(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
}

unint64_t sub_1003AB804(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100014E74(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for UUID, &qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1003AB8D8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1003AC29C(a1, v2);
}

unint64_t sub_1003AB968(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003AC088(a1, v4);
}

unint64_t sub_1003AB9AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyListEntityID.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return sub_1003AC150(a1, v2);
}

unint64_t sub_1003ABA18(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1003ABD04(a1, v2);
}

unint64_t sub_1003ABA84(uint64_t a1, char a2, double a3, double a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  sub_100602B5C(a3, a4);
  v9 = Hasher._finalize()();
  return sub_1003AC3A0(a1, a2 & 1, v9, a3, a4);
}

unint64_t sub_1003ABB3C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABBAC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = a2 == 2;
    v9 = a1 == 7 && a2 == 2;
    v10 = a1 == 6 && a2 == 2;
    v11 = a1 == 5 && a2 == 2;
    v12 = a1 == 4 && a2 == 2;
    v13 = a1 == 3 && a2 == 2;
    v14 = a1 == 2 && a2 == 2;
    v15 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v8 = 0;
    }

    do
    {
      v16 = *(v3 + 48) + 16 * result;
      v17 = *v16;
      v18 = *(v16 + 8);
      if (v18)
      {
        if (v18 == 1)
        {
          if (a2 == 1)
          {
LABEL_27:
            if (v17 == a1)
            {
              return result;
            }
          }
        }

        else if (v17 > 3)
        {
          if (v17 > 5)
          {
            if (v17 == 6)
            {
              if (v10)
              {
                return result;
              }
            }

            else if (v9)
            {
              return result;
            }
          }

          else if (v17 == 4)
          {
            if (v12)
            {
              return result;
            }
          }

          else if (v11)
          {
            return result;
          }
        }

        else if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (v14)
            {
              return result;
            }
          }

          else if (v13)
          {
            return result;
          }
        }

        else if (v17)
        {
          if (v15)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if (!a2)
      {
        goto LABEL_27;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABD04(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABD70(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
          v10 = v9;
          v11 = a1;
          v12 = static NSObject.== infix(_:_:)();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1003ABE74(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    do
    {
      if (*(*(*(v2 + 48) + 8 * result) + 16) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_100014E74(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1003AC088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1001D3A20(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100077654(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003AC150(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AnyListEntityID(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1003B3E04(*(v2 + 48) + v12 * v10, v8, type metadata accessor for AnyListEntityID);
      v13 = _s9Reminders15AnyListEntityIDO21__derived_enum_equalsySbAC_ACtFZ_0(v8, a1);
      sub_100292420(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1003AC29C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1003AC3A0(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v7 = -1 << *(v5 + 32);
  result = a3 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = *&a1;
    do
    {
      v12 = *(v5 + 48) + 32 * result;
      v13 = *(v12 + 16);
      if (*(v12 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_7;
        }

        v14 = v13 == a4;
      }

      else
      {
        if (a2)
        {
          goto LABEL_7;
        }

        v14 = *v12 == v10 && v13 == a4;
      }

      if (v14 && *(v12 + 24) == a5)
      {
        return result;
      }

LABEL_7:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1003AC440(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100058000(&unk_100771E10, &qword_100634270);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
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

void *sub_1003AC4C4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_100772150, &unk_100635D00);
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003AC5C0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_1007812E8, &unk_10063CED0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1003AC658(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_1007812B0, &unk_10063CE90);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1003AC6CC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1003AC754(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100058000(&qword_100781330, qword_10063CF20);
  v4 = *(sub_100058000(&unk_10076BE60, &unk_100645EB0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003AC8A4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003ACA38(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1003ACBC4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int sub_1003ACD50(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v9 + 16));
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003ACF24(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = _HashTable.previousHole(before:)();
    v17 = v15;
    v40 = (v16 + 1) & v15;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v44 = *(v18 + 56);
    v38 = (v18 - 8);
    v39 = v19;
    do
    {
      v20 = v44 * v14;
      v21 = v17;
      v22 = v18;
      v39(v11, *(a2 + 48) + v44 * v14, v8);
      sub_100014E74(v41, v42, v43);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v11, v8);
      v17 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v20 + v44;
          v30 = v44 * a1 < v20 || v28 >= v29;
          v18 = v22;
          if (!v30)
          {
            if (v44 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v17 = v21;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v14);
            if (a1 != v14 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v14;
            }

            goto LABEL_4;
          }

          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v18 = v22;
LABEL_4:
      v14 = (v14 + 1) & v17;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

Swift::Int sub_1003AD1D8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v9 + 16));
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003AD394(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_100014E74(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(v37(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

void sub_1003AD6E4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 56 * v3;
        v19 = (v17 + 56 * v6);
        if (v3 != v6 || v18 >= v19 + 56)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[2];
          *(v18 + 48) = *(v19 + 6);
          *(v18 + 16) = v10;
          *(v18 + 32) = v11;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1003AD8A8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_100014E74(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for TTRUserDefaults.SmartListVersionWarning() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_1003ADBEC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1003ADDB4(int64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = _HashTable.previousHole(before:)();
    v12 = v10;
    v33 = (v11 + 1) & v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v31 = a2 + 64;
    v32 = v14;
    v15 = *(v13 + 56);
    v30 = (v13 - 8);
    v35 = v12;
    v16 = v34;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v13;
      v32(v6, v19, v16);
      sub_100014E74(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v30)(v6, v16);
      v22 = v35;
      v23 = v21 & v35;
      if (a1 >= v33)
      {
        if (v23 >= v33 && a1 >= v23)
        {
LABEL_15:
          v13 = v20;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = 32 * a1;
          v7 = v31;
          if (32 * a1 < (32 * v9) || *(a2 + 56) + 32 * a1 >= *(a2 + 56) + 32 * v9 + 32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v9;
            v22 = v35;
          }

          else
          {
            a1 = v9;
            v22 = v35;
            if (v26 != 32 * v9)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v35;
              a1 = v9;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v33 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v13 = v20;
      v7 = v31;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v22;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_1003AE128()
{
  v1 = v0;
  sub_100058000(&unk_10076B980, &unk_10063CE20);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1003AE29C()
{
  v1 = v0;
  sub_100058000(&qword_100781260, &qword_10063CE38);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        v22 = v20;
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
}

void sub_1003AE434()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781278, &unk_100645C50);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_1003B3E04(v26 + v28, v37, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        sub_1003B3E6C(v29, *(v18 + 56) + v28, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1003AE758()
{
  v1 = v0;
  sub_100058000(&qword_100781308, &qword_10063CEF0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

void sub_1003AE8BC()
{
  v1 = v0;
  sub_100058000(&qword_100775FE8, &qword_10063F9C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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
}

void sub_1003AEA2C()
{
  v1 = v0;
  v31 = type metadata accessor for TTRRemindersListPostponeType();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781300, &unk_10063F9E0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1003AEC9C()
{
  v1 = v0;
  sub_100058000(&qword_1007812F8, &unk_10063CEE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

void sub_1003AEDF8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007812C8, &unk_10063CEB0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v27;
        v23 = *(v28 + 72) * v20;
        sub_1003B3E04(*(v4 + 56) + v23, v27, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        v24 = v29;
        *(*(v29 + 48) + 8 * v20) = v21;
        sub_1003B3E6C(v22, *(v24 + 56) + v23, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        v25 = v21;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v6 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1003AF070()
{
  v1 = v0;
  v35 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781280, &qword_10063CE60);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1003AF304(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1003AF478(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_100058000(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1003AF708(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1003AF8E0()
{
  sub_100058000(&qword_100781258, &qword_10063CE30);
  v31 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 56;
        v21 = *(v1 + 56) + v16;
        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        v25 = *(v21 + 32);
        v24 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = (*(v3 + 48) + v17);
        v28 = *v21;
        *v27 = v19;
        v27[1] = v20;
        v29 = *(v3 + 56) + v16;
        *v29 = v28;
        *(v29 + 16) = v23;
        *(v29 + 24) = v22;
        *(v29 + 32) = v25;
        *(v29 + 40) = v24;
        *(v29 + 48) = v26;

        v30 = v24;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v31 = v3;
  }
}

void sub_1003AFAA4()
{
  v1 = v0;
  sub_100058000(&qword_1007812F0, &qword_100645E20);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        v20 = v18;
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
}

void sub_1003AFC14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(v4 + 56) + 16 * v19;
        v21 = *v20;
        LOBYTE(v20) = *(v20 + 8);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        v22 = *(v6 + 56) + 16 * v19;
        *v22 = v21;
        *(v22 + 8) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1003AFDB0(uint64_t (*a1)(void), uint64_t (*a2)(void, __n128), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v49 = a1(0);
  v52 = *(v49 - 8);
  v9 = __chkstk_darwin(v49);
  v48 = &v38 - v10;
  v47 = a2(0, v9);
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v38 - v11;
  sub_100058000(a3, a4);
  v12 = *v4;
  v13 = static _DictionaryStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v8;
    v39 = v12 + 64;
    if (v14 != v12 || v15 >= &v16[8 * v17])
    {
      memmove(v15, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v8 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v14;
  }
}

void sub_1003B010C()
{
  v1 = v0;
  sub_100058000(&qword_100781338, &qword_100645EC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_1003B02A0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = v33 - v7;
  sub_100058000(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v33[0] = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v33[1] = v38 + 32;
    v33[2] = v38 + 16;
    for (i = v8; v19; v8 = i)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = v21 | (v15 << 6);
      v25 = *(v8 + 56);
      v26 = *(*(v8 + 48) + 8 * v24);
      v27 = v38;
      v28 = *(v38 + 72) * v24;
      v30 = v35;
      v29 = v36;
      (*(v38 + 16))(v35, v25 + v28, v36);
      v31 = v37;
      *(*(v37 + 48) + 8 * v24) = v26;
      (*(v27 + 32))(*(v31 + 56) + v28, v30, v29);
      v32 = v26;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v33[0];
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void sub_1003B050C()
{
  v1 = v0;
  v26 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007812D0, &unk_100645DA0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_10016A5B4(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        sub_10016A43C(v30, *(v23 + 56) + v18);
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1003B0790()
{
  v1 = v0;
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007812D8, &unk_10063CEC0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    v27 = v32 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
      swift_unknownObjectRetain();
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1003B0A10()
{
  v1 = v0;
  sub_100058000(&qword_100781288, &qword_10063CE68);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_1003B0B9C()
{
  v1 = v0;
  v2 = type metadata accessor for AnyListEntity(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyListEntityID(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781318, &qword_10063CF00);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1003B3E04(*(v6 + 48) + v23, v29, type metadata accessor for AnyListEntityID);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_1003B3E04(*(v6 + 56) + v25, v31, type metadata accessor for AnyListEntity);
        v26 = v33;
        sub_1003B3E6C(v22, *(v33 + 48) + v23, type metadata accessor for AnyListEntityID);
        sub_1003B3E6C(v24, *(v26 + 56) + v25, type metadata accessor for AnyListEntity);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1003B0EA4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        v23 = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1003B1008(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100058000(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + v22) = v25)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = 32 * v16;
      v20 = *(v4 + 48) + 32 * v16;
      v21 = *(v20 + 8);
      v22 = 16 * v16;
      v23 = *(v6 + 48) + v19;
      v24 = *(v20 + 16);
      v25 = *(*(v4 + 56) + v22);
      *v23 = *v20;
      *(v23 + 8) = v21;
      *(v23 + 16) = v24;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1003B1164()
{
  v1 = v0;
  sub_100058000(&qword_1007812B8, &unk_10063CEA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000046FC(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100007DD8(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void sub_1003B12E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100058000(&unk_10076BE60, &unk_100645EB0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100058000(&unk_10076BE60, &unk_100645EB0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003B1890(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_1003B1428(0, v2, 1, a1);
  }
}

void sub_1003B1428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = type metadata accessor for Date();
  v8 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v50 - v11;
  v12 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  __chkstk_darwin(v12);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v50 - v15;
  __chkstk_darwin(v16);
  v71 = &v50 - v17;
  __chkstk_darwin(v18);
  v70 = &v50 - v19;
  __chkstk_darwin(v20);
  v69 = &v50 - v22;
  v52 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v60 = (v8 + 8);
    v61 = v12;
    v25 = v23 + v24 * (a3 - 1);
    v57 = -v24;
    v58 = v23;
    v26 = a1 - a3;
    v51 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v55 = v25;
    v56 = a3;
    v53 = v27;
    v54 = v26;
    v66 = v26;
    while (1)
    {
      v67 = v25;
      v68 = v27;
      v28 = v69;
      sub_1003B3C98(v27, v69);
      v29 = v70;
      sub_1003B3C98(v25, v70);
      v30 = v28;
      v31 = v71;
      sub_1003B3C98(v30, v71);
      v32 = *(v12 + 48);
      v33 = v63;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v34 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      v35 = *(*(v34 - 8) + 8);
      v35(v31 + v32, v34);
      v36 = v29;
      v37 = v62;
      sub_1003B3C98(v36, v62);
      v38 = *(v12 + 48);
      v39 = v64;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v35(v37 + v38, v34);
      v40 = static Date.> infix(_:_:)();
      v41 = *v60;
      v42 = v39;
      v12 = v61;
      v43 = v65;
      (*v60)(v42, v65);
      v41(v33, v43);
      v44 = type metadata accessor for UUID();
      v45 = *(*(v44 - 8) + 8);
      v45(v37, v44);
      v45(v71, v44);
      v46 = v67;
      sub_1000079B4(v70, &unk_10076BE60, &unk_100645EB0);
      v47 = v68;
      sub_1000079B4(v69, &unk_10076BE60, &unk_100645EB0);
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v56 + 1;
        v25 = v55 + v51;
        v26 = v54 - 1;
        v27 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v48 = v59;
      sub_1003B3D08(v47, v59);
      swift_arrayInitWithTakeFrontToBack();
      sub_1003B3D08(v48, v46);
      v25 = v46 + v57;
      v27 = v47 + v57;
      if (__CFADD__(v66++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003B1890(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v180 = type metadata accessor for Date();
  v8 = *(v180 - 8);
  __chkstk_darwin(v180);
  v179 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v178 = &v157 - v11;
  v12 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  v171 = *(v12 - 8);
  __chkstk_darwin(v12);
  v157 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v175 = &v157 - v15;
  __chkstk_darwin(v16);
  v177 = &v157 - v17;
  __chkstk_darwin(v18);
  v185 = &v157 - v19;
  __chkstk_darwin(v20);
  v187 = &v157 - v21;
  __chkstk_darwin(v22);
  v186 = &v157 - v23;
  v24 = a3[1];
  v161 = a3;
  if (v24 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_96:
    v26 = *v160;
    if (!*v160)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v188 = v27;
      v152 = *(v27 + 2);
      if (v152 >= 2)
      {
        do
        {
          v153 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = (v152 - 1);
          v154 = *&v27[16 * v152];
          v155 = *&v27[16 * v152 + 24];
          sub_1003B2634(&v153[*(v171 + 72) * v154], &v153[*(v171 + 72) * *&v27[16 * v152 + 16]], &v153[*(v171 + 72) * v155], v26);
          if (v5)
          {
            break;
          }

          if (v155 < v154)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1000ED7BC(v27);
          }

          if (v152 - 2 >= *(v27 + 2))
          {
            goto LABEL_122;
          }

          v156 = &v27[16 * v152];
          *v156 = v154;
          *(v156 + 1) = v155;
          v188 = v27;
          sub_1000ED730(a3);
          v27 = v188;
          v152 = *(v188 + 2);
          a3 = v161;
        }

        while (v152 > 1);
      }

LABEL_106:

      return;
    }

LABEL_128:
    v27 = sub_1000ED7BC(v27);
    goto LABEL_98;
  }

  v25 = v24;
  v158 = a4;
  v26 = 0;
  v176 = (v8 + 8);
  v27 = _swiftEmptyArrayStorage;
  v181 = v12;
  while (1)
  {
    v28 = v26 + 1;
    v162 = v27;
    v170 = v26;
    if ((v26 + 1) >= v25)
    {
      v50 = v26;
      v53 = (v26 + 1);
    }

    else
    {
      v172 = v25;
      v159 = v5;
      v184 = *a3;
      v29 = v184;
      v30 = *(v171 + 72);
      v174 = v30;
      v31 = &v184[v30 * v28];
      v32 = v186;
      sub_1003B3C98(v31, v186);
      sub_1003B3C98(&v29[v30 * v170], v187);
      v33 = v185;
      sub_1003B3C98(v32, v185);
      v34 = *(v12 + 48);
      v35 = v33;
      v36 = v178;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v37 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      v38 = *(v37 - 8);
      v39 = *(v38 + 8);
      v40 = v38 + 8;
      v39(v35 + v34, v37);
      v41 = v177;
      sub_1003B3C98(v187, v177);
      v42 = *(v12 + 48);
      v43 = v179;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v168 = v39;
      v169 = v37;
      v167 = v40;
      v39(v41 + v42, v37);
      LODWORD(v173) = static Date.> infix(_:_:)();
      v44 = *v176;
      v45 = v180;
      (*v176)(v43, v180);
      v166 = v44;
      v44(v36, v45);
      v46 = type metadata accessor for UUID();
      v47 = *(v46 - 8);
      v48 = *(v47 + 8);
      v49 = v47 + 8;
      v48(v41, v46);
      v165 = v46;
      v164 = v48;
      v163 = v49;
      v48(v185, v46);
      v26 = &unk_10076BE60;
      sub_1000079B4(v187, &unk_10076BE60, &unk_100645EB0);
      v50 = v170;
      sub_1000079B4(v186, &unk_10076BE60, &unk_100645EB0);
      v51 = v50 + 2;
      v52 = &v184[v174 * (v50 + 2)];
      while (1)
      {
        v53 = v172;
        if (v172 == v51)
        {
          break;
        }

        v183 = v51;
        v184 = v52;
        v54 = v186;
        sub_1003B3C98(v52, v186);
        v182 = v31;
        v55 = v187;
        sub_1003B3C98(v31, v187);
        v56 = v185;
        sub_1003B3C98(v54, v185);
        v57 = v181;
        v58 = *(v181 + 48);
        v59 = v178;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v61 = v168;
        v60 = v169;
        (v168)(v56 + v58, v169);
        v62 = v55;
        v63 = v177;
        sub_1003B3C98(v62, v177);
        v64 = *(v57 + 48);
        v65 = v179;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v61(v63 + v64, v60);
        v66 = static Date.> infix(_:_:)() & 1;
        v67 = v180;
        v68 = v166;
        (v166)(v65, v180);
        (v68)(v59, v67);
        v69 = v165;
        v70 = v164;
        v164(v63, v165);
        v70(v56, v69);
        v50 = v170;
        v26 = &unk_10076BE60;
        sub_1000079B4(v187, &unk_10076BE60, &unk_100645EB0);
        sub_1000079B4(v186, &unk_10076BE60, &unk_100645EB0);
        v51 = v183 + 1;
        v52 = &v184[v174];
        v31 = v182 + v174;
        if ((v173 & 1) != v66)
        {
          v53 = v183;
          break;
        }
      }

      v12 = v181;
      v5 = v159;
      v27 = v162;
      a3 = v161;
      if (v173)
      {
        v26 = v157;
        if (v53 < v50)
        {
          goto LABEL_125;
        }

        if (v50 < v53)
        {
          v71 = v53;
          v72 = v174 * (v53 - 1);
          v73 = v53 * v174;
          v172 = v53;
          v74 = v50 * v174;
          do
          {
            if (v50 != --v71)
            {
              v75 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              sub_1003B3D08(&v75[v74], v26);
              if (v74 < v72 || &v75[v74] >= &v75[v73])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v74 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1003B3D08(v26, &v75[v72]);
              v27 = v162;
            }

            ++v50;
            v72 -= v174;
            v73 -= v174;
            v74 += v174;
          }

          while (v50 < v71);
          v5 = v159;
          v12 = v181;
          v50 = v170;
          v53 = v172;
        }
      }
    }

    v76 = a3[1];
    if (v53 >= v76)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v53, v50))
    {
      goto LABEL_124;
    }

    if (v53 - v50 >= v158)
    {
LABEL_32:
      v26 = v53;
      if (v53 < v50)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v50, v158))
    {
      goto LABEL_126;
    }

    if (v50 + v158 >= v76)
    {
      v26 = a3[1];
    }

    else
    {
      v26 = (v50 + v158);
    }

    if (v26 < v50)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v53 == v26)
    {
      goto LABEL_32;
    }

    v159 = v5;
    v124 = *a3;
    v125 = *(v171 + 72);
    v126 = *a3 + v125 * (v53 - 1);
    v173 = -v125;
    v174 = v124;
    v127 = (v50 - v53);
    v165 = v125;
    v128 = &v124[v53 * v125];
    v166 = v26;
LABEL_87:
    v172 = v53;
    v167 = v128;
    v168 = v127;
    v129 = v127;
    v169 = v126;
LABEL_88:
    v183 = v128;
    v184 = v129;
    v130 = v186;
    sub_1003B3C98(v128, v186);
    v182 = v126;
    v131 = v187;
    sub_1003B3C98(v126, v187);
    v132 = v130;
    v133 = v185;
    sub_1003B3C98(v132, v185);
    v134 = *(v12 + 48);
    v135 = v178;
    TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
    v136 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v137 = *(*(v136 - 8) + 8);
    v137(v133 + v134, v136);
    v138 = v131;
    v139 = v177;
    sub_1003B3C98(v138, v177);
    v140 = *(v12 + 48);
    v141 = v179;
    TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
    v137(v139 + v140, v136);
    v142 = static Date.> infix(_:_:)();
    v143 = *v176;
    v144 = v180;
    (*v176)(v141, v180);
    v143(v135, v144);
    v145 = type metadata accessor for UUID();
    v146 = *(*(v145 - 8) + 8);
    v146(v139, v145);
    v146(v185, v145);
    sub_1000079B4(v187, &unk_10076BE60, &unk_100645EB0);
    sub_1000079B4(v186, &unk_10076BE60, &unk_100645EB0);
    if (v142)
    {
      break;
    }

    v12 = v181;
LABEL_86:
    v53 = v172 + 1;
    v126 = v169 + v165;
    v127 = v168 - 1;
    v128 = v167 + v165;
    v26 = v166;
    if ((v172 + 1) != v166)
    {
      goto LABEL_87;
    }

    v5 = v159;
    a3 = v161;
    v27 = v162;
    v50 = v170;
    if (v166 < v170)
    {
      goto LABEL_123;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100546DD8(0, *(v27 + 2) + 1, 1, v27);
    }

    v78 = *(v27 + 2);
    v77 = *(v27 + 3);
    v79 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v27 = sub_100546DD8((v77 > 1), v78 + 1, 1, v27);
    }

    *(v27 + 2) = v79;
    v80 = &v27[16 * v78];
    *(v80 + 4) = v50;
    *(v80 + 5) = v26;
    if (!*v160)
    {
      goto LABEL_133;
    }

    if (v78)
    {
      v81 = *v160;
      while (1)
      {
        v82 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v83 = *(v27 + 4);
          v84 = *(v27 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_53:
          if (v86)
          {
            goto LABEL_112;
          }

          v99 = &v27[16 * v79];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_115;
          }

          v105 = &v27[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_119;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v79 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v109 = &v27[16 * v79];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_67:
        if (v104)
        {
          goto LABEL_114;
        }

        v112 = &v27[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_117;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_74:
        v120 = v82 - 1;
        if (v82 - 1 >= v79)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v121 = *&v27[16 * v120 + 32];
        v122 = *&v27[16 * v82 + 40];
        sub_1003B2634(*a3 + *(v171 + 72) * v121, *a3 + *(v171 + 72) * *&v27[16 * v82 + 32], *a3 + *(v171 + 72) * v122, v81);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v122 < v121)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000ED7BC(v27);
        }

        if (v120 >= *(v27 + 2))
        {
          goto LABEL_109;
        }

        v123 = &v27[16 * v120];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        v188 = v27;
        sub_1000ED730(v82);
        v27 = v188;
        v79 = *(v188 + 2);
        v12 = v181;
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v27[16 * v79 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_110;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_111;
      }

      v94 = &v27[16 * v79];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_113;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_116;
      }

      if (v98 >= v90)
      {
        v116 = &v27[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_120;
        }

        if (v85 < v119)
        {
          v82 = v79 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v25 = a3[1];
    if (v26 >= v25)
    {
      goto LABEL_96;
    }
  }

  v147 = v184;
  if (v174)
  {
    v148 = v183;
    v149 = v175;
    sub_1003B3D08(v183, v175);
    v12 = v181;
    v150 = v182;
    swift_arrayInitWithTakeFrontToBack();
    sub_1003B3D08(v149, v150);
    v126 = v150 + v173;
    v128 = v148 + v173;
    v151 = __CFADD__(v147, 1);
    v129 = v147 + 1;
    if (v151)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
}

void sub_1003B2634(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = type metadata accessor for Date();
  v8 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = v72 - v11;
  v90 = sub_100058000(&unk_10076BE60, &unk_100645EB0);
  __chkstk_darwin(v90);
  v80 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = v72 - v14;
  __chkstk_darwin(v15);
  v89 = v72 - v16;
  __chkstk_darwin(v17);
  v91 = v72 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v94 = a1;
  v93 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v24;
    if (v24 >= 1)
    {
      v47 = -v20;
      v74 = (v8 + 8);
      v75 = -v20;
      v48 = v46;
      v86 = a4;
      v87 = a1;
      v49 = v89;
      while (2)
      {
        while (1)
        {
          v72[0] = v46;
          v50 = a2 + v47;
          v88 = a2 + v47;
          v76 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v94 = a2;
              v92 = v72[0];
              goto LABEL_58;
            }

            v73 = v46;
            v84 = a3 + v47;
            v52 = v48 + v47;
            v77 = (v48 + v47);
            v53 = v91;
            v79 = a3;
            sub_1003B3C98(v52, v91);
            sub_1003B3C98(v50, v49);
            v54 = v53;
            v55 = v85;
            sub_1003B3C98(v54, v85);
            v56 = v90;
            v57 = *(v90 + 48);
            v58 = v81;
            TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
            v59 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
            v60 = *(v59 - 8);
            v78 = v48;
            v61 = *(v60 + 8);
            v61(v55 + v57, v59);
            v62 = v80;
            sub_1003B3C98(v49, v80);
            v63 = *(v56 + 48);
            v64 = v82;
            TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
            v61(v62 + v63, v59);
            v65 = static Date.> infix(_:_:)();
            v66 = *v74;
            v67 = v83;
            (*v74)(v64, v83);
            v66(v58, v67);
            v68 = type metadata accessor for UUID();
            v69 = *(*(v68 - 8) + 8);
            v69(v62, v68);
            v69(v85, v68);
            sub_1000079B4(v49, &unk_10076BE60, &unk_100645EB0);
            sub_1000079B4(v91, &unk_10076BE60, &unk_100645EB0);
            if (v65)
            {
              break;
            }

            v70 = v77;
            v46 = v77;
            a3 = v84;
            if (v79 < v78 || v84 >= v78)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v87;
              v50 = v88;
              v47 = v75;
            }

            else
            {
              a1 = v87;
              v50 = v88;
              v47 = v75;
              if (v79 != v78)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v46;
            v51 = v70 > v86;
            a2 = v76;
            if (!v51)
            {
              goto LABEL_56;
            }
          }

          v48 = v78;
          a3 = v84;
          v71 = v86;
          if (v79 < v76 || v84 >= v76)
          {
            break;
          }

          a1 = v87;
          a2 = v88;
          v46 = v73;
          v47 = v75;
          if (v79 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v48 <= v71)
          {
            goto LABEL_56;
          }
        }

        a2 = v88;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v87;
        v46 = v73;
        v47 = v75;
        if (v48 > v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v94 = a2;
    v92 = v46;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v23;
    v92 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v77 = (v8 + 8);
      v78 = v20;
      v84 = a3;
      do
      {
        v86 = a4;
        v87 = a1;
        v88 = a2;
        v26 = v91;
        sub_1003B3C98(a2, v91);
        v27 = v89;
        sub_1003B3C98(a4, v89);
        v28 = v85;
        sub_1003B3C98(v26, v85);
        v29 = v90;
        v30 = *(v90 + 48);
        v31 = v81;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v32 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
        v33 = *(*(v32 - 8) + 8);
        v33(v28 + v30, v32);
        v34 = v27;
        v35 = v80;
        sub_1003B3C98(v34, v80);
        v36 = *(v29 + 48);
        v37 = v82;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v33(v35 + v36, v32);
        v38 = static Date.> infix(_:_:)();
        v39 = *v77;
        v40 = v83;
        (*v77)(v37, v83);
        v39(v31, v40);
        v41 = type metadata accessor for UUID();
        v42 = *(*(v41 - 8) + 8);
        v42(v35, v41);
        v42(v28, v41);
        sub_1000079B4(v89, &unk_10076BE60, &unk_100645EB0);
        sub_1000079B4(v91, &unk_10076BE60, &unk_100645EB0);
        if (v38)
        {
          v43 = v78;
          v44 = v87;
          a2 = v88 + v78;
          a4 = v86;
          if (v87 < v88 || v87 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v84;
          }

          else
          {
            v45 = v84;
            if (v87 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v44 = v87;
          a2 = v88;
          v43 = v78;
          a4 = v86 + v78;
          if (v87 < v86 || v87 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v84;
          }

          else
          {
            v45 = v84;
            if (v87 != v86)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93 = a4;
        }

        a1 = v44 + v43;
        v94 = a1;
      }

      while (a4 < v79 && a2 < v45);
    }
  }

LABEL_58:
  sub_1000ED8DC(&v94, &v93, &v92);
}

uint64_t sub_1003B2EE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *sub_1003B2F84(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1003B30DC(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v7 &= v7 - 1;
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(v15 + 48);
      *v8 = *v15;
      *(v8 + 16) = v17;
      *(v8 + 24) = v16;
      *(v8 + 32) = v19;
      *(v8 + 40) = v18;
      *(v8 + 48) = v20;
      if (v11 == v27)
      {

        v24 = v18;
        a4 = v14;
        v5 = v25;
        result = v26;
        a3 = v27;
        goto LABEL_24;
      }

      v8 += 56;

      v21 = v18;
      result = v11;
      v22 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v23 = v9 + 1;
    }

    else
    {
      v23 = v10;
    }

    v9 = v23 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}