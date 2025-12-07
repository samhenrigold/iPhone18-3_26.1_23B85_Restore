void sub_1B8A0F340(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8A0E7BC(v6 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B8A0E470(&unk_1EBA921A0, &unk_1B8A28FE0);
      goto LABEL_12;
    }

    sub_1B8A0E5B0(v6 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
  }

  v8 = *v3;
  v9 = sub_1B8A243F4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1B8A24404();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B8A24994();
  __break(1u);
}

void sub_1B8A0F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 136);
  v8 = __swift_project_boxed_opaque_existential_0((v3 + 112), v7);
  v9 = sub_1B89AA114(v3, v45);
  v10 = *(v3 + 56);
  v11 = *(v3 + 88);
  v49[2] = *(v3 + 72);
  v49[3] = v11;
  v50 = *(v3 + 104);
  v49[0] = *(v3 + 40);
  v49[1] = v10;
  v12 = *(v3 + 56);
  v13 = *(v3 + 88);
  v43[2] = *(v3 + 72);
  v43[3] = v13;
  v44 = *(v3 + 104);
  v43[0] = *(v3 + 40);
  v43[1] = v12;
  MEMORY[0x1EEE9AC00](v9);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v8, v7);
  sub_1B89A8FB4(v49, v46);
  sub_1B89B09B0(v45, v43, v15, v7, v46);
  sub_1B89B0BC8(v3);
  if (!a2 || !a3)
  {
LABEL_69:
    v35 = v46[7];
    v36 = v47;
    *(a1 + 128) = v46[8];
    *(a1 + 144) = v36;
    v37 = v46[3];
    v38 = v46[5];
    v39 = v46[6];
    *(a1 + 64) = v46[4];
    *(a1 + 80) = v38;
    *(a1 + 96) = v39;
    *(a1 + 112) = v35;
    v40 = v46[1];
    v41 = v46[2];
    *a1 = v46[0];
    *(a1 + 16) = v40;
    *(a1 + 160) = v48;
    *(a1 + 32) = v41;
    *(a1 + 48) = v37;
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_79;
  }

  v17 = 0;
  v42[1] = a3;
  v18 = a3 - 1;
  do
  {
    v19 = *(&v47 + 1);
    v20 = *(&v47 + 1) >> 62;
    if (*(&v47 + 1) >> 62)
    {
      if (sub_1B8A24554())
      {
        if (!sub_1B8A24554())
        {
          goto LABEL_80;
        }

        if (!sub_1B8A24554())
        {
          goto LABEL_81;
        }

        goto LABEL_7;
      }

LABEL_31:
      sub_1B89B0C1C();
      v28 = *(&v47 + 1);
      v29 = *(&v47 + 1) >> 62;
      if (*(&v47 + 1) >> 62)
      {
        if (!sub_1B8A24554())
        {
LABEL_68:
          sub_1B89B44F4(0);
          goto LABEL_69;
        }

        if (!sub_1B8A24554())
        {
          goto LABEL_83;
        }

        if (!sub_1B8A24554())
        {
          goto LABEL_84;
        }
      }

      else if (!*((*(&v47 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1B8CC44E0](0, v28);
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v30 = *(v28 + 32);
      }

      v22 = v30;
      if (v29)
      {
        if (!sub_1B8A24554())
        {
          goto LABEL_77;
        }

        if (sub_1B8A24554() < 1)
        {
          goto LABEL_78;
        }

        v31 = sub_1B8A24554();
      }

      else
      {
        v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_77;
        }
      }

      v32 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        goto LABEL_74;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v29)
        {
          if (v32 <= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }
      }

      else if (!v29)
      {
LABEL_49:
        v28 = sub_1B8A24674();
        *(&v47 + 1) = v28;
LABEL_50:
        sub_1B89DD6CC(0, 1, 0);
        *(&v47 + 1) = v28;
        sub_1B89B44F4(v22);
        if (!v22)
        {
          goto LABEL_69;
        }

        goto LABEL_51;
      }

      sub_1B8A24554();
      goto LABEL_49;
    }

    if (!*((*(&v47 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_7:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1B8CC44E0](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v21 = *(v19 + 32);
    }

    v22 = v21;
    if (v20)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_75;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_76;
      }

      v23 = sub_1B8A24554();
    }

    else
    {
      v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_75;
      }
    }

    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_71;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v20)
      {
LABEL_22:
        sub_1B8A24554();
      }

LABEL_23:
      v19 = sub_1B8A24674();
      v25 = v19 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v20)
    {
      goto LABEL_22;
    }

    v25 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

LABEL_24:

    if (v19 >> 62)
    {
      v33 = sub_1B8A24554();
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_82;
      }

      memmove((v25 + 32), (v25 + 40), 8 * (v33 - 1));
      v34 = sub_1B8A24554();
      v27 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_72;
      }
    }

    else
    {
      v26 = *(v25 + 16);
      memmove((v25 + 32), (v25 + 40), 8 * v26 - 8);
      v27 = v26 - 1;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_72;
      }
    }

    *(v25 + 16) = v27;
    *(&v47 + 1) = v19;
LABEL_51:
    *(a2 + 8 * v17) = v22;
    if (v18 == v17)
    {
      goto LABEL_69;
    }

    ++v17;
  }

  while (!__OFADD__(v17, 1));
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_1B8A0FA28(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a2)
  {
LABEL_17:
    a3 = 0;
    goto LABEL_20;
  }

  if (!a3)
  {
LABEL_20:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    *(result + 24) = a7 & 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 1;
    v8 = a4;
    while (a7 & 1 | (a6 != 0))
    {
      v9 = a5 - v8;
      if (__OFSUB__(a5, v8))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v9 < 1)
      {
        a3 = v7 - 1;
        a4 = v8;
        goto LABEL_20;
      }

      v10 = a5;
      if ((a7 & 1) == 0)
      {
        v10 = a5;
        if (v9 > a6)
        {
          v10 = v8 + a6;
          if (__OFADD__(v8, a6))
          {
            goto LABEL_23;
          }

          if (v10 < v8)
          {
            goto LABEL_24;
          }

          if (v10 > a5)
          {
            goto LABEL_22;
          }
        }
      }

      *a2 = v8;
      a2[1] = v10;
      if (a3 == v7)
      {
        a4 = v10;
        goto LABEL_20;
      }

      a2 += 2;
      v8 = v10;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1B8A0FAF0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1B8A24514();
  sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
  sub_1B8A10234();
  result = sub_1B8A241F4();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1B8A24584())
      {
        goto LABEL_30;
      }

      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1B8A0FD0C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x1B8CC43F0](a1, a2, v7);
      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
    if (sub_1B8A24534() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B8A24544();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1B8A243F4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1B8A24404();

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

void sub_1B8A0FF30(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1B8A24554())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921A0, &unk_1B8A28FE0);
      v3 = sub_1B8A24614();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1B8A24554();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1B8CC44E0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1B8A243F4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1B8A24404();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1B8A243F4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1B8A24404();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1B8A10228(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1B8A10234()
{
  result = qword_1EBA921C8;
  if (!qword_1EBA921C8)
  {
    sub_1B89AB538(255, &qword_1EBA91160, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA921C8);
  }

  return result;
}

uint64_t sub_1B8A102F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B89BBE18;

  return sub_1B8A0C4D0(v0);
}

uint64_t sub_1B8A10380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921D8, &qword_1B8A29000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A1041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDebouncer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A10480(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDebouncer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8A10538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8A10588(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B8A105DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89C3E20;

  return sub_1B8A0DAF4(a1, v4, v5, v6);
}

uint64_t sub_1B8A10690(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A12C2C(a1, v4);
}

uint64_t sub_1B8A10748(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B89BBE18;

  return sub_1B8A12C2C(a1, v4);
}

uint64_t sub_1B8A10800(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t RangeGenerator.init(offset:limit:batchSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a3)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_5:
    *a6 = result;
    *(a6 + 8) = v6;
    *(a6 + 16) = a4;
    *(a6 + 24) = a5 & 1;
    return result;
  }

  v6 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if (v6 >= result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8A10868()
{
  result = qword_1ED82E298;
  if (!qword_1ED82E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82E298);
  }

  return result;
}

uint64_t sub_1B8A10910(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8A10930(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

id ImageGlyphRecencyObjCFacade.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageGlyphRecencyObjCFacade.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *&v0[v2] = v3;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ImageGlyphRecencyObjCFacade.didUse(emoji:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A10B10, 0, 0);
}

uint64_t sub_1B8A10B10()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1B8A13234;
  v3 = v0[2];
  v2 = v0[3];

  return ImageGlyphRecency.recordEngagement(for:)(v3, v2);
}

uint64_t sub_1B8A10D40(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B8A23F24();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A10DCC, 0, 0);
}

uint64_t sub_1B8A10DCC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8A10E74;
  v3 = v0[4];
  v2 = v0[5];

  return ImageGlyphRecency.recordEngagement(for:)(v3, v2);
}

uint64_t sub_1B8A10E74(double a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A13230, 0, 0);
  }

  else
  {
    v5 = *(v4 + 24);

    (*(v5 + 16))(v5, 0, a1);
    _Block_release(*(v4 + 24));
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t ImageGlyphRecencyObjCFacade.didUse(sticker:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A1100C, 0, 0);
}

uint64_t sub_1B8A1100C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___STKSticker_identifier;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1B8A110C8;

  return ImageGlyphRecency.recordEngagement(for:)(v1 + v2);
}

uint64_t sub_1B8A110C8(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

uint64_t sub_1B8A11350(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A113DC, 0, 0);
}

uint64_t sub_1B8A113DC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___STKSticker_identifier;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1B8A11498;

  return ImageGlyphRecency.recordEngagement(for:)(v1 + v2);
}

uint64_t sub_1B8A11498(double a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A1160C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 24);
    v5 = *(v4 + 32);

    (*(v5 + 16))(v5, 0, a1);
    _Block_release(*(v4 + 32));
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1B8A1160C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_1B8A23664();
  (*(v2 + 16))(v2, v4, 0.0);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t ImageGlyphRecencyObjCFacade.didUseCharacter(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A116DC, 0, 0);
}

uint64_t sub_1B8A116DC()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1B8A11784;
  v3 = v0[2];
  v2 = v0[3];

  return ImageGlyphRecency.recordEngagement(forCharacter:)(v3, v2);
}

uint64_t sub_1B8A11784(double a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4.n128_f64[0] = a1;
  }

  return v5(v4);
}

uint64_t sub_1B8A11A0C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B8A23F24();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A11A98, 0, 0);
}

uint64_t sub_1B8A11A98()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8A11B40;
  v3 = v0[4];
  v2 = v0[5];

  return ImageGlyphRecency.recordEngagement(forCharacter:)(v3, v2);
}

uint64_t sub_1B8A11B40(double a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A11CB8, 0, 0);
  }

  else
  {
    v5 = *(v4 + 24);

    (*(v5 + 16))(v5, 0, a1);
    _Block_release(*(v4 + 24));
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1B8A11CB8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = sub_1B8A23664();

  (*(v2 + 16))(v2, v3, 0.0);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t ImageGlyphRecencyObjCFacade.resetRecents()()
{
  v1[2] = v0;
  v2 = sub_1B8A239C4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1B8A23A24();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A11E84, 0, 0);
}

uint64_t sub_1B8A11E84()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A11EB0, v1, 0);
}

uint64_t sub_1B8A11EB0()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A11ED4, v1, 0);
}

uint64_t sub_1B8A11ED4()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D47A0], v0[3]);
  sub_1B8A239E4();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B8A11FA8;
  v2 = v0[8];

  return sub_1B89EAD90(v2);
}

uint64_t sub_1B8A11FA8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1B8A120D4;
  }

  else
  {
    v4 = sub_1B89E7198;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8A120D4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8A122D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B8A12378;

  return ImageGlyphRecencyObjCFacade.resetRecents()();
}

uint64_t sub_1B8A12378()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1B8A23664();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id ImageGlyphRecencyObjCFacade.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A12568()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B89BBE18;

  return sub_1B8A122D0(v2, v3);
}

uint64_t sub_1B8A12614(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B89C3E20;

  return v6();
}

uint64_t sub_1B8A126FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A12614(v2, v3, v4);
}

uint64_t sub_1B8A127BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B89BBE18;

  return v7();
}

uint64_t sub_1B8A128A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89C3E20;

  return sub_1B8A127BC(a1, v4, v5, v6);
}

uint64_t sub_1B8A12970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B89C3D6C(a3, v23 - v10);
  v12 = sub_1B8A24184();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B8A08578(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B8A24174();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B8A24154();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B8A23F64() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B8A08578(a3);

    return v21;
  }

LABEL_8:
  sub_1B8A08578(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B8A12C2C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B8A12D24;

  return v6(a1);
}

uint64_t sub_1B8A12D24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B8A12E1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A12C2C(a1, v4);
}

uint64_t sub_1B8A12ED4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B89BBE18;

  return sub_1B8A12C2C(a1, v4);
}

uint64_t sub_1B8A12F8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A11A0C(v2, v3, v4);
}

uint64_t sub_1B8A13040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A11350(v2, v3, v4);
}

uint64_t objectdestroy_33Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8A1313C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A10D40(v2, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t StickerSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v2 + 136);
  v5 = __swift_project_boxed_opaque_existential_0((v2 + 112), v4);
  v6 = sub_1B89AA114(v2, v19);
  v7 = *(v2 + 56);
  v8 = *(v2 + 88);
  v20[2] = *(v2 + 72);
  v20[3] = v8;
  v21 = *(v2 + 104);
  v20[0] = *(v2 + 40);
  v20[1] = v7;
  v9 = *(v2 + 56);
  v10 = *(v2 + 88);
  v17[2] = *(v2 + 72);
  v17[3] = v10;
  v18 = *(v2 + 104);
  v17[0] = *(v2 + 40);
  v17[1] = v9;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v5, v4);
  sub_1B89A8FB4(v20, &v16);
  return sub_1B89B09B0(v19, v17, v12, v4, a1);
}

void StickerSequenceIterator.next()()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    if (sub_1B8A24554())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1B89DCCEC();
    return;
  }

  sub_1B89B0C1C();
  v2 = *(v0 + 152);
  if (v2 >> 62)
  {
    if (sub_1B8A24554())
    {
      goto LABEL_7;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1B89DCCEC();
  v4 = v3;
LABEL_10:
  sub_1B89B44F4(v4);
}

uint64_t sub_1B8A1343C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = __swift_project_boxed_opaque_existential_0((v1 + 112), v3);
  v5 = sub_1B89AA114(v1, v18);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v19[2] = *(v1 + 72);
  v19[3] = v7;
  v20 = *(v1 + 104);
  v19[0] = *(v1 + 40);
  v19[1] = v6;
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v16[2] = *(v1 + 72);
  v16[3] = v9;
  v17 = *(v1 + 104);
  v16[0] = *(v1 + 40);
  v16[1] = v8;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, v3);
  sub_1B89A8FB4(v19, &v15);
  sub_1B89B09B0(v18, v16, v11, v3, a1);
  return sub_1B89B0BC8(v1);
}

uint64_t sub_1B8A135C8()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1ED830390);
  __swift_project_value_buffer(v0, qword_1ED830390);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A1364C()
{
  v0 = sub_1B8A23BC4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = type metadata accessor for StickerSignposter(0);
  __swift_allocate_value_buffer(v7, qword_1ED8303A8);
  __swift_project_value_buffer(v7, qword_1ED8303A8);
  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1ED830390);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v4, v6, v0);
  sub_1B8A23B24();
  return (*(v1 + 8))(v6, v0);
}

unint64_t sub_1B8A137E8()
{
  result = qword_1EBA91558;
  if (!qword_1EBA91558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91558);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B8A13870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1B8A138B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B8A13958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1B8A139A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ManagedSticker.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSticker.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSticker();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSticker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSticker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id Sticker.Representation.__allocating_init(data:uti:size:role:isPreferred:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8)
{
  v9 = v8;
  HIDWORD(v36) = a6;
  v17 = sub_1B8A23904();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v9);
  sub_1B8A238F4();
  (*(v18 + 32))(&v21[OBJC_IVAR___STKStickerRepresentation_identifier], v20, v17);
  v22 = &v21[OBJC_IVAR___STKStickerRepresentation_data];
  *v22 = a1;
  v22[1] = a2;
  v23 = OBJC_IVAR___STKStickerRepresentation_uti;
  v24 = sub_1B8A23AD4();
  v25 = *(v24 - 8);
  result = (*(v25 + 16))(&v21[v23], a3, v24);
  v27 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_11;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_10:
      sub_1B89B4A18(a1, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v28 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  if (v27)
  {
    goto LABEL_8;
  }

  v28 = BYTE6(a2);
LABEL_11:
  *&v21[OBJC_IVAR___STKStickerRepresentation_byteCount] = v28;
  v31 = &v21[OBJC_IVAR___STKStickerRepresentation_size];
  *v31 = a7;
  v31[1] = a8;
  v32 = &v21[OBJC_IVAR___STKStickerRepresentation_role];
  *v32 = a4;
  v32[1] = a5;
  v21[OBJC_IVAR___STKStickerRepresentation_isPreferred] = BYTE4(v36) & 1;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v33 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  swift_beginAccess();
  v34 = *v33;
  if (*(v33 + 8))
  {
    v34 = 1;
  }

  *&v21[OBJC_IVAR___STKStickerRepresentation_version] = v34;
  v37.receiver = v21;
  v37.super_class = v9;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  sub_1B89AFC38(a1, a2);
  (*(v25 + 8))(a3, v24);
  return v35;
}

uint64_t sub_1B8A13F1C()
{
  v1 = v0 + OBJC_IVAR___STKStickerRepresentation_data;
  swift_beginAccess();
  v2 = *v1;
  sub_1B89B4A18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1B8A13FF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  result = sub_1B89AFC38(v6, v7);
  v9 = *v5;
  v10 = v5[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = v9 + 16;
    v9 = *(v9 + 16);
    v13 = *(v14 + 8);
    v12 = v13 - v9;
    if (!__OFSUB__(v13, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v10);
LABEL_10:
    v17 = OBJC_IVAR___STKStickerRepresentation_byteCount;
    result = swift_beginAccess();
    *(v2 + v17) = v12;
    return result;
  }

  v15 = __OFSUB__(HIDWORD(v9), v9);
  v16 = HIDWORD(v9) - v9;
  if (!v15)
  {
    v12 = v16;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8A140C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B89B4A18(v4, v5);
}

uint64_t (*sub_1B8A14118(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___STKStickerRepresentation_data;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1B8A141A0;
}

void sub_1B8A141A0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v11 = v6 + 16;
      v6 = *(v6 + 16);
      v10 = *(v11 + 8);
      v9 = v10 - v6;
      if (!__OFSUB__(v10, v6))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v9 = BYTE6(v7);
LABEL_12:
      v14 = OBJC_IVAR___STKStickerRepresentation_byteCount;
      swift_beginAccess();
      *(v4 + v14) = v9;
      goto LABEL_13;
    }

    v12 = __OFSUB__(HIDWORD(v6), v6);
    v13 = HIDWORD(v6) - v6;
    if (v12)
    {
      __break(1u);
      return;
    }

    v9 = v13;
    goto LABEL_12;
  }

LABEL_13:

  free(v3);
}

id sub_1B8A14298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = (*(v9 + 16))(&v15 - v10, a1 + *a4, v8);
  v13 = a5(v12);
  (*(v9 + 8))(v11, v8);

  return v13;
}

uint64_t sub_1B8A143CC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1B8A1448C()
{
  v1 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8A145C8()
{
  v1 = (v0 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B8A1468C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8A146EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8A14800()
{
  v1 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8A14920()
{
  v1 = (v0 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  if (*v1 == 0xD000000000000020 && 0x80000001B8A2A290 == v1[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1B8A24954();
  }

  return v3 & 1;
}

id Sticker.Representation.init(data:uti:size:role:isPreferred:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v17 = sub_1B8A23904();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A238F4();
  (*(v18 + 32))(&v8[OBJC_IVAR___STKStickerRepresentation_identifier], v20, v17);
  v21 = &v8[OBJC_IVAR___STKStickerRepresentation_data];
  *v21 = a1;
  v21[1] = a2;
  v22 = OBJC_IVAR___STKStickerRepresentation_uti;
  v23 = sub_1B8A23AD4();
  v24 = *(v23 - 8);
  result = (*(v24 + 16))(&v8[v22], a3, v23);
  v26 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v27 = 0;
    if (v26 != 2)
    {
      goto LABEL_11;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v27 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
LABEL_10:
      sub_1B89B4A18(a1, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v27 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  if (v26)
  {
    goto LABEL_8;
  }

  v27 = BYTE6(a2);
LABEL_11:
  *&v8[OBJC_IVAR___STKStickerRepresentation_byteCount] = v27;
  v30 = &v8[OBJC_IVAR___STKStickerRepresentation_size];
  *v30 = a7;
  v30[1] = a8;
  v31 = &v8[OBJC_IVAR___STKStickerRepresentation_role];
  *v31 = a4;
  v31[1] = a5;
  v8[OBJC_IVAR___STKStickerRepresentation_isPreferred] = a6 & 1;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v32 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  swift_beginAccess();
  v33 = *v32;
  if (*(v32 + 8))
  {
    v33 = 1;
  }

  *&v8[OBJC_IVAR___STKStickerRepresentation_version] = v33;
  v34 = type metadata accessor for Sticker.Representation(0);
  v37.receiver = v8;
  v37.super_class = v34;
  v35 = objc_msgSendSuper2(&v37, sel_init);
  sub_1B89AFC38(a1, a2);
  (*(v24 + 8))(a3, v23);
  return v35;
}

uint64_t type metadata accessor for Sticker.Representation(uint64_t a1)
{
  result = qword_1ED82EB78;
  if (!qword_1ED82EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Sticker.Representation.__allocating_init(identifier:data:uti:byteCount:size:role:isPreferred:version:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, char a11, uint64_t a12, char a13)
{
  v23 = objc_allocWithZone(v13);
  v24 = OBJC_IVAR___STKStickerRepresentation_identifier;
  v25 = sub_1B8A23904();
  v26 = *(v25 - 8);
  v45 = v25;
  v46 = a1;
  (*(v26 + 16))(&v23[v24], a1);
  v27 = &v23[OBJC_IVAR___STKStickerRepresentation_data];
  *v27 = a2;
  v27[1] = a3;
  v28 = OBJC_IVAR___STKStickerRepresentation_uti;
  v29 = sub_1B8A23AD4();
  v30 = *(v29 - 8);
  v31 = &v23[v28];
  v32 = a4;
  v33 = v29;
  result = (*(v30 + 16))(v31, v32, v29);
  v35 = a5;
  if ((a6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v36 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v36 != 2)
    {
      v35 = 0;
      goto LABEL_12;
    }

    v38 = *(a2 + 16);
    v37 = *(a2 + 24);
    v35 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v36)
  {
    v35 = BYTE6(a3);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    return result;
  }

  v35 = HIDWORD(a2) - a2;
LABEL_12:
  *&v23[OBJC_IVAR___STKStickerRepresentation_byteCount] = v35;
  v39 = &v23[OBJC_IVAR___STKStickerRepresentation_size];
  *v39 = a9;
  v39[1] = a10;
  v40 = &v23[OBJC_IVAR___STKStickerRepresentation_role];
  *v40 = a7;
  v40[1] = a8;
  v23[OBJC_IVAR___STKStickerRepresentation_isPreferred] = a11 & 1;
  sub_1B89B4A18(a2, a3);
  if (a13)
  {
    if (qword_1EBA91590 != -1)
    {
      swift_once();
    }

    v41 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
    swift_beginAccess();
    v42 = *v41;
    if (*(v41 + 8))
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = a12;
  }

  *&v23[OBJC_IVAR___STKStickerRepresentation_version] = v42;
  v48.receiver = v23;
  v48.super_class = v44;
  v43 = objc_msgSendSuper2(&v48, sel_init);
  sub_1B89AFC38(a2, a3);
  (*(v30 + 8))(v32, v33);
  (*(v26 + 8))(v46, v45);
  return v43;
}

id Sticker.Representation.init(identifier:data:uti:byteCount:size:role:isPreferred:version:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, char a11, uint64_t a12, char a13)
{
  v23 = OBJC_IVAR___STKStickerRepresentation_identifier;
  v24 = sub_1B8A23904();
  v39 = *(v24 - 8);
  v40 = v24;
  v41 = a1;
  (*(v39 + 16))(&v13[v23], a1);
  v25 = &v13[OBJC_IVAR___STKStickerRepresentation_data];
  *v25 = a2;
  v25[1] = a3;
  v26 = OBJC_IVAR___STKStickerRepresentation_uti;
  v27 = sub_1B8A23AD4();
  v28 = *(v27 - 8);
  result = (*(v28 + 16))(&v13[v26], a4, v27);
  v30 = a5;
  if ((a6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v31 != 2)
    {
      v30 = 0;
      goto LABEL_12;
    }

    v33 = *(a2 + 16);
    v32 = *(a2 + 24);
    v30 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v30 = BYTE6(a3);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    return result;
  }

  v30 = HIDWORD(a2) - a2;
LABEL_12:
  *&v13[OBJC_IVAR___STKStickerRepresentation_byteCount] = v30;
  v34 = &v13[OBJC_IVAR___STKStickerRepresentation_size];
  *v34 = a9;
  v34[1] = a10;
  v35 = &v13[OBJC_IVAR___STKStickerRepresentation_role];
  *v35 = a7;
  v35[1] = a8;
  v13[OBJC_IVAR___STKStickerRepresentation_isPreferred] = a11 & 1;
  sub_1B89B4A18(a2, a3);
  if (a13)
  {
    if (qword_1EBA91590 != -1)
    {
      swift_once();
    }

    v36 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
    swift_beginAccess();
    v37 = *v36;
    if (*(v36 + 8))
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = a12;
  }

  *&v13[OBJC_IVAR___STKStickerRepresentation_version] = v37;
  v43.receiver = v13;
  v43.super_class = type metadata accessor for Sticker.Representation(0);
  v38 = objc_msgSendSuper2(&v43, sel_init);
  sub_1B89AFC38(a2, a3);
  (*(v28 + 8))(a4, v27);
  (*(v39 + 8))(v41, v40);
  return v38;
}

BOOL sub_1B8A152AC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1B8A23AD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B8A23904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B8A1571C(a1, v33);
  if (!v34)
  {
    sub_1B89A8A78(v33, &unk_1EBA91F50, &unk_1B8A26500);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v12 = v32;
  if (*(v2 + OBJC_IVAR___STKStickerRepresentation_version) != *&v32[OBJC_IVAR___STKStickerRepresentation_version] || ((*(v9 + 16))(v11, &v32[OBJC_IVAR___STKStickerRepresentation_identifier], v8), sub_1B8A17660(&qword_1EBA91640, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]), v13 = sub_1B8A23ED4(), (*(v9 + 8))(v11, v8), (v13 & 1) == 0) || (v14 = (v2 + OBJC_IVAR___STKStickerRepresentation_data), swift_beginAccess(), v16 = *v14, v15 = v14[1], v17 = &v12[OBJC_IVAR___STKStickerRepresentation_data], swift_beginAccess(), v19 = *v17, v18 = v17[1], sub_1B89B4A18(v16, v15), sub_1B89B4A18(v19, v18), v20 = sub_1B8A0495C(v16, v15, v19, v18), sub_1B89AFC38(v19, v18), sub_1B89AFC38(v16, v15), !v20) || ((*(v5 + 16))(v7, &v12[OBJC_IVAR___STKStickerRepresentation_uti], v4), sub_1B8A17660(&unk_1EBA91450, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]), v21 = sub_1B8A23ED4(), (*(v5 + 8))(v7, v4), (v21 & 1) == 0) || (v22 = OBJC_IVAR___STKStickerRepresentation_byteCount, swift_beginAccess(), v23 = *(v2 + v22), v24 = OBJC_IVAR___STKStickerRepresentation_byteCount, swift_beginAccess(), v23 != *&v12[v24]) || *(v2 + OBJC_IVAR___STKStickerRepresentation_size) != *&v12[OBJC_IVAR___STKStickerRepresentation_size] || *(v2 + OBJC_IVAR___STKStickerRepresentation_size + 8) != *&v12[OBJC_IVAR___STKStickerRepresentation_size + 8])
  {

    return 0;
  }

  v25 = (v2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v28 = &v12[OBJC_IVAR___STKStickerRepresentation_role];
  swift_beginAccess();
  if (v26 == *v28 && v27 == *(v28 + 1))
  {

    return 1;
  }

  else
  {
    v30 = sub_1B8A24954();

    return (v30 & 1) != 0;
  }
}

uint64_t sub_1B8A1571C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F50, &unk_1B8A26500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id Sticker.Representation.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v49 - v5;
  v6 = sub_1B8A23AD4();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_1B8A23904();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  v19 = sub_1B8A243B4();
  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = v19;
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_1B8A17660(&qword_1EBA92230, MEMORY[0x1E69695A8], MEMORY[0x1E69695D8]);
  sub_1B8A24784();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  v21 = *(v13 + 32);
  v21(v16, v11, v12);
  v56 = v21;
  v21(v18, v16, v12);
  sub_1B89AB538(0, &qword_1EBA91F78, 0x1E695DEF0);
  v22 = sub_1B8A243B4();
  if (!v22 || (v61 = xmmword_1B8A26F80, v23 = v22, sub_1B8A237B4(), v23, *(&v61 + 1) >> 60 == 15))
  {
    (*(v13 + 8))(v18, v12);
LABEL_6:

LABEL_7:
    type metadata accessor for Sticker.Representation(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v55 = *(&v61 + 1);
  v25 = v61;
  sub_1B89AB538(0, &qword_1EBA91F70, 0x1E696AEC0);
  v26 = sub_1B8A243B4();
  if (!v26)
  {
    (*(v13 + 8))(v18, v12);
    sub_1B89B4A04(v25, v55);
    goto LABEL_6;
  }

  v54 = v25;
  v61 = 0uLL;
  v27 = v26;
  sub_1B8A23F14();

  if (!*(&v61 + 1))
  {
    sub_1B89B4A04(v54, v55);

LABEL_18:
    (*(v13 + 8))(v18, v12);
    goto LABEL_7;
  }

  v53 = v61;
  v28 = sub_1B8A23EF4();
  v52 = [a1 decodeIntegerForKey_];

  v29 = sub_1B8A23EF4();
  [a1 decodeSizeForKey_];
  v31 = v30;
  v33 = v32;

  v34 = sub_1B8A243B4();
  if (!v34)
  {
    (*(v13 + 8))(v18, v12);
    sub_1B89B4A04(v54, v55);

    goto LABEL_7;
  }

  v61 = 0uLL;
  v35 = v34;
  sub_1B8A23F14();

  if (!*(&v61 + 1))
  {
    sub_1B89B4A04(v54, v55);

    goto LABEL_18;
  }

  v51 = v61;
  v36 = sub_1B8A23EF4();
  v50 = [a1 decodeBoolForKey_];

  v37 = sub_1B8A23EF4();
  v49 = [a1 decodeIntegerForKey_];

  v38 = v59;
  sub_1B8A23AE4();
  v39 = v57;
  v40 = v58;
  if ((*(v57 + 48))(v38, 1, v58) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_1B89B4A04(v54, v55);

    sub_1B89A8A78(v38, &qword_1EBA91EB8, &unk_1B8A28100);
    goto LABEL_7;
  }

  v41 = *(v39 + 32);
  v41(v8, v38, v40);
  v56(&v2[OBJC_IVAR___STKStickerRepresentation_identifier], v18, v12);
  v42 = &v2[OBJC_IVAR___STKStickerRepresentation_data];
  v43 = v55;
  *v42 = v54;
  v42[1] = v43;
  v41(&v2[OBJC_IVAR___STKStickerRepresentation_uti], v8, v40);
  *&v2[OBJC_IVAR___STKStickerRepresentation_byteCount] = v52;
  v44 = &v2[OBJC_IVAR___STKStickerRepresentation_size];
  *v44 = v31;
  v44[1] = v33;
  v45 = &v2[OBJC_IVAR___STKStickerRepresentation_role];
  v46 = *(&v51 + 1);
  *v45 = v51;
  v45[1] = v46;
  v2[OBJC_IVAR___STKStickerRepresentation_isPreferred] = v50;
  *&v2[OBJC_IVAR___STKStickerRepresentation_version] = v49;
  v47 = type metadata accessor for Sticker.Representation(0);
  v60.receiver = v2;
  v60.super_class = v47;
  v48 = objc_msgSendSuper2(&v60, sel_init);

  return v48;
}

void sub_1B8A16060(void *a1)
{
  v2 = v1;
  v4 = sub_1B8A238B4();
  v5 = sub_1B8A23EF4();
  [a1 encodeObject:v4 forKey:v5];

  v6 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  sub_1B89B4A18(v8, v7);
  v9 = sub_1B8A237A4();
  sub_1B89AFC38(v8, v7);
  v10 = sub_1B8A23EF4();
  [a1 encodeObject:v9 forKey:v10];

  sub_1B8A23AB4();
  v11 = sub_1B8A23EF4();

  v12 = sub_1B8A23EF4();
  [a1 encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = sub_1B8A23EF4();
  [a1 encodeInteger:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR___STKStickerRepresentation_size);
  v17 = *(v2 + OBJC_IVAR___STKStickerRepresentation_size + 8);
  v18 = sub_1B8A23EF4();
  [a1 encodeSize:v18 forKey:{v16, v17}];

  swift_beginAccess();

  v19 = sub_1B8A23EF4();

  v20 = sub_1B8A23EF4();
  [a1 encodeObject:v19 forKey:v20];

  v21 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v23 = sub_1B8A23EF4();
  [a1 encodeBool:v22 forKey:v23];

  v24 = *(v2 + OBJC_IVAR___STKStickerRepresentation_version);
  v25 = sub_1B8A23EF4();
  [a1 encodeInteger:v24 forKey:v25];
}

uint64_t sub_1B8A1644C()
{
  v1 = v0;
  sub_1B8A24634();

  sub_1B8A23904();
  sub_1B8A17660(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v2);

  MEMORY[0x1B8CC3E20](0x756F436574796220, 0xEC000000223D746ELL);
  v3 = objc_opt_self();
  v4 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  v5 = [v3 stringFromByteCount:*(v1 + v4) countStyle:0];
  v6 = sub_1B8A23F24();
  v8 = v7;

  MEMORY[0x1B8CC3E20](v6, v8);

  MEMORY[0x1B8CC3E20](0x223D657079742022, 0xE800000000000000);
  sub_1B8A23AD4();
  sub_1B8A17660(&qword_1EBA91610, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
  v9 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v9);

  MEMORY[0x1B8CC3E20](0x223D657A69732022, 0xE800000000000000);
  v10 = sub_1B8A24194();
  MEMORY[0x1B8CC3E20](v10);

  MEMORY[0x1B8CC3E20](120, 0xE100000000000000);
  v11 = sub_1B8A24194();
  MEMORY[0x1B8CC3E20](v11);

  MEMORY[0x1B8CC3E20](15906, 0xE200000000000000);
  return 60;
}

id Sticker.Representation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B8A167BC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7265666572507369;
  if (v1 != 6)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 1702521203;
  if (v1 != 4)
  {
    v4 = 1701605234;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 6911093;
  if (v1 != 2)
  {
    v5 = 0x6E756F4365747962;
  }

  if (*v0)
  {
    v2 = 1635017060;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8A168A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8A17D10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8A168DC(uint64_t a1)
{
  v2 = sub_1B8A1760C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A16918(uint64_t a1)
{
  v2 = sub_1B8A1760C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Sticker.Representation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sticker.Representation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A16A60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92238, &qword_1B8A29410);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A1760C();
  sub_1B8A24A64();
  v17 = 0;
  sub_1B8A23904();
  sub_1B8A17660(&unk_1EBA91650, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B8A248F4();
  if (!v2)
  {
    v9 = (v3 + OBJC_IVAR___STKStickerRepresentation_data);
    swift_beginAccess();
    v10 = v9[1];
    v15 = *v9;
    v16 = v10;
    LOBYTE(v14) = 1;
    sub_1B89B4A18(v15, v10);
    sub_1B89CDFE4();
    sub_1B8A248F4();
    sub_1B89AFC38(v15, v16);
    LOBYTE(v15) = 2;
    sub_1B8A23AD4();
    sub_1B8A17660(&qword_1EBA91618, MEMORY[0x1E69E8450], MEMORY[0x1E69E8458]);
    sub_1B8A248F4();
    swift_beginAccess();
    LOBYTE(v14) = 3;
    sub_1B8A248E4();
    v14 = *(v3 + OBJC_IVAR___STKStickerRepresentation_size);
    v13 = 4;
    type metadata accessor for CGSize(0);
    sub_1B8A17660(&qword_1EBA91490, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1B8A248F4();
    swift_beginAccess();
    v13 = 5;

    sub_1B8A248B4();

    swift_beginAccess();
    HIBYTE(v12) = 6;
    sub_1B8A248C4();
    HIBYTE(v12) = 7;
    sub_1B8A248E4();
  }

  return (*(v6 + 8))(v8, v5);
}

void *Sticker.Representation.init(from:)(void *a1)
{
  v2 = sub_1B8A23AD4();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8A23904();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92248, &qword_1B8A29418);
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v21 - v9;
  v11 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_1B8A1760C();
  v24 = v10;
  v12 = v26;
  sub_1B8A24A54();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    v20 = v27;
    type metadata accessor for Sticker.Representation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    LOBYTE(v30) = 0;
    sub_1B8A17660(&qword_1ED82DE80, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B8A24854();
    v15 = v27;
    (*(v23 + 32))(v27 + OBJC_IVAR___STKStickerRepresentation_identifier, v7, v5);
    v31 = 1;
    sub_1B89ADF2C();
    sub_1B8A24854();
    v21 = v2;
    *&v15[OBJC_IVAR___STKStickerRepresentation_data] = v30;
    LOBYTE(v30) = 2;
    sub_1B8A17660(&qword_1ED82DE70, MEMORY[0x1E69E8450], MEMORY[0x1E69E8470]);
    v26 = 0;
    sub_1B8A24854();
    (*(v22 + 32))(&v15[OBJC_IVAR___STKStickerRepresentation_uti], v4, v2);
    LOBYTE(v30) = 3;
    *&v15[OBJC_IVAR___STKStickerRepresentation_byteCount] = sub_1B8A24844();
    type metadata accessor for CGSize(0);
    v31 = 4;
    sub_1B8A17660(&qword_1ED82DBB8, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1B8A24854();
    *&v15[OBJC_IVAR___STKStickerRepresentation_size] = v30;
    LOBYTE(v30) = 5;
    v16 = sub_1B8A24814();
    v17 = &v15[OBJC_IVAR___STKStickerRepresentation_role];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v30) = 6;
    v15[OBJC_IVAR___STKStickerRepresentation_isPreferred] = sub_1B8A24824() & 1;
    LOBYTE(v30) = 7;
    *&v15[OBJC_IVAR___STKStickerRepresentation_version] = sub_1B8A24844();
    v19 = type metadata accessor for Sticker.Representation(0);
    v29.receiver = v15;
    v29.super_class = v19;
    v20 = objc_msgSendSuper2(&v29, sel_init);
    (*(v13 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return v20;
}

void *sub_1B8A17590@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Sticker.Representation(0));
  result = Sticker.Representation.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B8A1760C()
{
  result = qword_1ED82DC50;
  if (!qword_1ED82DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC50);
  }

  return result;
}

uint64_t sub_1B8A17660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8A176B0(uint64_t a1)
{
  result = sub_1B8A23904();
  if (v2 <= 0x3F)
  {
    result = sub_1B8A23AD4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s14RepresentationC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14RepresentationC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8A17C0C()
{
  result = qword_1EBA92258;
  if (!qword_1EBA92258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92258);
  }

  return result;
}

unint64_t sub_1B8A17C64()
{
  result = qword_1ED82DC40;
  if (!qword_1ED82DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC40);
  }

  return result;
}

unint64_t sub_1B8A17CBC()
{
  result = qword_1ED82DC48;
  if (!qword_1ED82DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC48);
  }

  return result;
}

uint64_t sub_1B8A17D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6911093 && a2 == 0xE300000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F4365747962 && a2 == 0xE900000000000074 || (sub_1B8A24954() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265666572507369 && a2 == 0xEB00000000646572 || (sub_1B8A24954() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B8A17FE0(uint64_t a1, NSObject *a2)
{
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  if (qword_1ED82E688 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v55 = v6;
    v9 = sub_1B8A23BC4();
    __swift_project_value_buffer(v9, qword_1ED8303C0);
    v10 = sub_1B8A23BA4();
    v11 = sub_1B8A24214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B89A7000, v10, v11, "BEGIN addSticker(_:)", v12, 2u);
      MEMORY[0x1B8CC5170](v12, -1, -1);
    }

    v13 = a2;
    v14 = sub_1B8A23BA4();
    v15 = sub_1B8A24214();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v58[0] = v17;
      *v16 = 136315138;
      sub_1B8A23904();
      sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = sub_1B8A24934();
      v20 = sub_1B89A907C(v18, v19, v58);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B89A7000, v14, v15, " - identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CC5170](v17, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    v21 = v13;
    v22 = sub_1B8A23BA4();
    v23 = sub_1B8A24214();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58[0] = v25;
      *v24 = 136315138;
      v26 = objc_opt_self();
      v27 = OBJC_IVAR___STKSticker_byteCount;
      swift_beginAccess();
      v28 = [v26 stringFromByteCount:*(&v21->isa + v27) countStyle:0];
      v29 = sub_1B8A23F24();
      v31 = v30;

      v32 = sub_1B89A907C(v29, v31, v58);

      *(v24 + 4) = v32;
      _os_log_impl(&dword_1B89A7000, v22, v23, " - byteCount: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B8CC5170](v25, -1, -1);
      MEMORY[0x1B8CC5170](v24, -1, -1);
    }

    a2 = v21;
    v33 = sub_1B8A23BA4();
    v34 = sub_1B8A24214();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v37 = *(&a2->isa + v36);
      v38 = v37 >> 62 ? sub_1B8A24554() : *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v35 + 4) = v38;

      _os_log_impl(&dword_1B89A7000, v33, v34, " - representations (%ld):", v35, 0xCu);
      MEMORY[0x1B8CC5170](v35, -1, -1);
    }

    else
    {

      v33 = a2;
    }

    v39 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v40 = *(&a2->isa + v39);
    v41 = v40 >> 62 ? sub_1B8A24554() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v41)
    {
      break;
    }

    v42 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CC44E0](v42, v40);
      }

      else
      {
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v6 = *(v40 + 8 * v42 + 32);
      }

      a2 = v6;
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      sub_1B8A1A7B4(v42, v6);

      ++v42;
      if (v43 == v41)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v54 = v6;
    swift_once();
    v6 = v54;
  }

LABEL_24:

  v44 = [objc_opt_self() currentEnvironment];
  v45 = [v44 timeProvider];

  [v45 timestamp];
  swift_unknownObjectRelease();
  v46 = v55;
  isa_low = SLODWORD(v55[6].isa);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v48, qword_1ED8303D8);
  *&v8[isa_low] = sub_1B89A99D4(v8, "add sticker", v49, 2);
  v50 = v56;
  sub_1B89A9E58(v8, v56);
  v51 = *(v50 + SLODWORD(v46[6].isa));
  v52 = sub_1B8A23B14();
  (*(*(v52 - 8) + 32))(v57, v50, v52);
  return v51;
}

uint64_t sub_1B8A18688(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v74 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v2 = MEMORY[0x1EEE9AC00](v72);
  v73 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v70 - v4;
  v80 = sub_1B8A23904();
  v5 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED82E688 != -1)
  {
LABEL_51:
    swift_once();
  }

  v7 = sub_1B8A23BC4();
  v8 = __swift_project_value_buffer(v7, qword_1ED8303C0);
  v9 = sub_1B8A23BA4();
  v10 = sub_1B8A24214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B89A7000, v9, v10, "BEGIN addSticker(_:)", v11, 2u);
    MEMORY[0x1B8CC5170](v11, -1, -1);
  }

  v13 = 0;
  v14 = v75 & 0xFFFFFFFFFFFFFF8;
  if (v75 < 0)
  {
    v15 = v75;
  }

  else
  {
    v15 = v75 & 0xFFFFFFFFFFFFFF8;
  }

  v81 = v15;
  v85 = v75 & 0xC000000000000001;
  v83 = v75 + 32;
  v78 = (v5 + 16);
  v77 = (v5 + 8);
  v86 = v75 >> 62;
  *&v12 = 136315138;
  v84 = v12;
  *&v12 = 134217984;
  v76 = v12;
  while (!v86)
  {
    if (v13 == *(v14 + 16))
    {
      goto LABEL_44;
    }

LABEL_13:
    if (v85)
    {
      v16 = MEMORY[0x1B8CC44E0](v13, v75);
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_50;
      }

      v16 = *(v83 + 8 * v13);
    }

    v5 = v16;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_49;
    }

    v87 = v13 + 1;
    if (v13)
    {
      v17 = sub_1B8A23BA4();
      v18 = sub_1B8A24214();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1B89A7000, v17, v18, " ----- Next sticker:", v19, 2u);
        MEMORY[0x1B8CC5170](v19, -1, -1);
      }
    }

    v20 = v5;
    v21 = sub_1B8A23BA4();
    v22 = sub_1B8A24214();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v88 = v82;
      *v23 = v84;
      v24 = v79;
      v25 = v80;
      (*v78)(v79, &v20[OBJC_IVAR___STKSticker_identifier], v80);
      sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = v14;
      v27 = v8;
      v28 = sub_1B8A24934();
      v30 = v29;
      (*v77)(v24, v25);
      v31 = v28;
      v8 = v27;
      v14 = v26;
      v32 = sub_1B89A907C(v31, v30, &v88);

      *(v23 + 4) = v32;
      _os_log_impl(&dword_1B89A7000, v21, v22, " - identifier: %s", v23, 0xCu);
      v33 = v82;
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1B8CC5170](v33, -1, -1);
      MEMORY[0x1B8CC5170](v23, -1, -1);
    }

    v34 = v20;
    v35 = sub_1B8A23BA4();
    v36 = sub_1B8A24214();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v88 = v38;
      *v37 = v84;
      v39 = objc_opt_self();
      v40 = OBJC_IVAR___STKSticker_byteCount;
      swift_beginAccess();
      v41 = [v39 stringFromByteCount:*&v34[v40] countStyle:0];
      v42 = sub_1B8A23F24();
      v44 = v43;

      v45 = sub_1B89A907C(v42, v44, &v88);

      *(v37 + 4) = v45;
      _os_log_impl(&dword_1B89A7000, v35, v36, " - byteCount: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B8CC5170](v38, -1, -1);
      MEMORY[0x1B8CC5170](v37, -1, -1);
    }

    v46 = v34;
    v47 = sub_1B8A23BA4();
    v48 = sub_1B8A24214();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = v76;
      v50 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v51 = *(&v46->isa + v50);
      if (v51 >> 62)
      {
        v52 = sub_1B8A24554();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v49 + 4) = v52;

      _os_log_impl(&dword_1B89A7000, v47, v48, " - representations (%ld):", v49, 0xCu);
      MEMORY[0x1B8CC5170](v49, -1, -1);
    }

    else
    {

      v47 = v46;
    }

    v53 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v54 = *(&v46->isa + v53);
    if (v54 >> 62)
    {
      v5 = sub_1B8A24554();
    }

    else
    {
      v5 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v55 = 0;
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x1B8CC44E0](v55, v54);
        }

        else
        {
          if (v55 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v56 = *(v54 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = (v55 + 1);
        if (__OFADD__(v55, 1))
        {
          break;
        }

        sub_1B8A1A7B4(v55, v56);

        ++v55;
        if (v58 == v5)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_8:

    v13 = v87;
  }

  if (v13 != sub_1B8A24554())
  {
    goto LABEL_13;
  }

LABEL_44:
  v59 = [objc_opt_self() currentEnvironment];
  v60 = [v59 timeProvider];

  [v60 timestamp];
  swift_unknownObjectRelease();
  v61 = v72;
  v62 = *(v72 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v63, qword_1ED8303D8);
  v64 = v71;
  *(v64 + v62) = sub_1B89A99D4(v71, "add stickers", v65, 2);
  v66 = v73;
  sub_1B89A9E58(v64, v73);
  v67 = *(v66 + *(v61 + 48));
  v68 = sub_1B8A23B14();
  (*(*(v68 - 8) + 32))(v74, v66, v68);
  return v67;
}

uint64_t sub_1B8A18F94(uint64_t a1, uint64_t a2)
{
  v57 = sub_1B8A23904();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8A23BC4();
  v14 = __swift_project_value_buffer(v13, qword_1ED8303C0);

  v56 = v14;
  v15 = sub_1B8A23BA4();
  v16 = sub_1B8A24214();
  v17 = os_log_type_enabled(v15, v16);
  v50 = v10;
  v51 = a1;
  v48 = v12;
  v49 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1B89A7000, v15, v16, "BEGIN removeStickers(identifiers:) (%ld)", v18, 0xCu);
    MEMORY[0x1B8CC5170](v18, -1, -1);
  }

  else
  {
  }

  v20 = *(a2 + 16);
  v21 = v57;
  if (v20)
  {
    v22 = v4 + 16;
    v23 = *(v4 + 16);
    v55 = (v4 + 8);
    v24 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25 = *(v4 + 72);
    *&v19 = 136315138;
    v52 = v19;
    v53 = v25;
    v54 = v23;
    v23(v6, v24, v57);
    while (1)
    {
      v35 = sub_1B8A23BA4();
      v36 = sub_1B8A24214();
      if (os_log_type_enabled(v35, v36))
      {
        v26 = swift_slowAlloc();
        v27 = v22;
        v28 = swift_slowAlloc();
        v58 = v28;
        *v26 = v52;
        sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v29 = sub_1B8A24934();
        v31 = v30;
        (*v55)(v6, v57);
        v32 = sub_1B89A907C(v29, v31, &v58);
        v21 = v57;

        *(v26 + 4) = v32;
        _os_log_impl(&dword_1B89A7000, v35, v36, " - identifier: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v33 = v28;
        v22 = v27;
        v25 = v53;
        MEMORY[0x1B8CC5170](v33, -1, -1);
        v34 = v26;
        v23 = v54;
        MEMORY[0x1B8CC5170](v34, -1, -1);
      }

      else
      {

        (*v55)(v6, v21);
      }

      v24 += v25;
      if (!--v20)
      {
        break;
      }

      v23(v6, v24, v21);
    }
  }

  v37 = [objc_opt_self() currentEnvironment];
  v38 = [v37 timeProvider];

  [v38 timestamp];
  swift_unknownObjectRelease();
  v39 = v49;
  v40 = *(v49 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v41, qword_1ED8303D8);
  v42 = v48;
  *(v42 + v40) = sub_1B89A99D4(v48, "remove stickers", v43, 2);
  v44 = v50;
  sub_1B89A9E58(v42, v50);
  v45 = *(v44 + *(v39 + 48));
  v46 = sub_1B8A23B14();
  (*(*(v46 - 8) + 32))(v51, v44, v46);
  return v45;
}

uint64_t sub_1B8A194B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8A23BC4();
  __swift_project_value_buffer(v10, qword_1ED8303C0);
  v11 = sub_1B8A23BA4();
  v12 = sub_1B8A24214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B89A7000, v11, v12, "BEGIN updateSticker(_:)", v13, 2u);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  v14 = a2;
  v15 = sub_1B8A23BA4();
  v16 = sub_1B8A24214();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = a1;
    v33 = v18;
    v19 = v18;
    *v17 = 136315138;
    sub_1B8A23904();
    sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1B8A24934();
    v22 = sub_1B89A907C(v20, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1B89A7000, v15, v16, " - identifier: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v23 = v19;
    a1 = v32;
    MEMORY[0x1B8CC5170](v23, -1, -1);
    MEMORY[0x1B8CC5170](v17, -1, -1);
  }

  v24 = [objc_opt_self() currentEnvironment];
  v25 = [v24 timeProvider];

  [v25 timestamp];
  swift_unknownObjectRelease();
  v26 = *(v4 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v27, qword_1ED8303D8);
  *&v9[v26] = sub_1B89A99D4(v9, "update sticker", v28, 2);
  sub_1B89A9E58(v9, v7);
  v29 = *&v7[*(v4 + 48)];
  v30 = sub_1B8A23B14();
  (*(*(v30 - 8) + 32))(a1, v7, v30);
  return v29;
}

uint64_t sub_1B8A19874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v12 = sub_1B8A23BC4();
  __swift_project_value_buffer(v12, qword_1ED8303C0);
  v13 = sub_1B8A23BA4();
  v14 = sub_1B8A24214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = a2;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a3;
    _os_log_impl(&dword_1B89A7000, v13, v14, "BEGIN moveSticker(at:to:) (%ld --> %ld", v15, 0x16u);
    MEMORY[0x1B8CC5170](v15, -1, -1);
  }

  v16 = [objc_opt_self() currentEnvironment];
  v17 = [v16 timeProvider];

  [v17 timestamp];
  swift_unknownObjectRelease();
  v18 = *(v6 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v19, qword_1ED8303D8);
  *&v11[v18] = sub_1B89A99D4(v11, "move sticker", v20, 2);
  sub_1B89A9E58(v11, v9);
  v21 = *&v9[*(v6 + 48)];
  v22 = sub_1B8A23B14();
  (*(*(v22 - 8) + 32))(a1, v9, v22);
  return v21;
}

uint64_t sub_1B8A19B24(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = sub_1B8A23B14();
  (*(*(v13 - 8) + 16))(v12, a4, v13);
  *&v12[*(v10 + 56)] = a5;

  v14 = sub_1B8A23B34();
  v15 = sub_1B8A24364();
  result = sub_1B8A24434();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1B8A23B04();
      _os_signpost_emit_with_name_impl(&dword_1B89A7000, v14, v15, v18, a1, "", v17, 2u);
      MEMORY[0x1B8CC5170](v17, -1, -1);
LABEL_10:

      return sub_1B89A8A78(v12, &qword_1EBA91A58, &qword_1B8A29640);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1B8A19CDC(uint64_t a1, unint64_t a2)
{
  v44 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v3 = MEMORY[0x1EEE9AC00](v42);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v41 - v5;
  v51 = sub_1B8A23904();
  v6 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8A23BC4();
  v9 = __swift_project_value_buffer(v8, qword_1ED8303C0);
  v10 = sub_1B8A23BA4();
  v11 = sub_1B8A24214();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B89A7000, v10, v11, "BEGIN touchStickers(_:)", v12, 2u);
    MEMORY[0x1B8CC5170](v12, -1, -1);
  }

  if (a2 >> 62)
  {
    v14 = sub_1B8A24554();
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  v15 = 0;
  v16 = a2 & 0xC000000000000001;
  v46 = (v6 + 8);
  v47 = (v6 + 16);
  *&v13 = 136315138;
  v45 = v13;
  v48 = v14;
  v49 = a2;
  do
  {
    if (v16)
    {
      v29 = MEMORY[0x1B8CC44E0](v15, a2);
    }

    else
    {
      v29 = *(a2 + 8 * v15 + 32);
    }

    v30 = v29;
    v31 = sub_1B8A23BA4();
    v32 = sub_1B8A24214();

    if (os_log_type_enabled(v31, v32))
    {
      v17 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v17 = v45;
      v18 = v50;
      v19 = v51;
      (*v47)(v50, &v30[OBJC_IVAR___STKSticker_identifier], v51);
      sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = sub_1B8A24934();
      v52 = v30;
      v21 = v16;
      v22 = v9;
      v24 = v23;
      v25 = v19;
      v14 = v48;
      (*v46)(v18, v25);
      v26 = sub_1B89A907C(v20, v24, &v54);
      v9 = v22;
      v16 = v21;

      *(v17 + 4) = v26;
      _os_log_impl(&dword_1B89A7000, v31, v32, " - identifier: %s", v17, 0xCu);
      v27 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1B8CC5170](v27, -1, -1);
      v28 = v17;
      a2 = v49;
      MEMORY[0x1B8CC5170](v28, -1, -1);
    }

    else
    {
    }

    ++v15;
  }

  while (v14 != v15);
LABEL_17:
  v33 = [objc_opt_self() currentEnvironment];
  v34 = [v33 timeProvider];

  [v34 timestamp];
  swift_unknownObjectRelease();
  v35 = *(v42 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v36, qword_1ED8303D8);
  v37 = v41;
  *(v37 + v35) = sub_1B89A99D4(v41, "touch stickers", v38, 2);
  v39 = v43;
  sub_1B89A9E58(v37, v43);
  v40 = sub_1B8A23B14();
  (*(*(v40 - 8) + 32))(v44, v39, v40);
}

uint64_t sub_1B8A1A224()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1ED8303C0);
  __swift_project_value_buffer(v0, qword_1ED8303C0);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A1A2C8(double *a1, uint64_t a2, const char *a3, const char *a4, double a5, ...)
{
  v49 = a4;
  v50 = a3;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v49 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  v23 = sub_1B8A23B14();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v22, v51, v23);
  *&v22[*(v14 + 48)] = a2;
  *v13 = a5;
  sub_1B89A9E58(v22, v13 + *(v8 + 56));
  v51 = v13;
  v25 = v13;
  v26 = v20;
  sub_1B89AF268(v25, v11, &qword_1EBA91BD0, qword_1B8A26FF0);
  v27 = *v11;
  v28 = *(v11 + *(v8 + 56) + *(v14 + 48));
  v29 = *(v24 + 32);
  v29(v17);
  v30 = *(v14 + 48);
  (v29)(v26, v17, v23);
  *(v26 + v30) = v28;
  v31 = qword_1ED82E690;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for StickerSignposter(0);
  __swift_project_value_buffer(v32, qword_1ED8303D8);
  sub_1B89AF268(v26, v17, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8(v50, v33, 2, v17, *&v17[*(v14 + 48)]);

  (*(v24 + 8))(v17, v23);
  v34 = [objc_opt_self() currentEnvironment];
  v35 = [v34 timeProvider];

  [v35 timestamp];
  v37 = v36;
  swift_unknownObjectRelease();
  v38 = [objc_opt_self() stringForTimeInterval_];
  v39 = sub_1B8A23F24();
  v41 = v40;

  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v42 = sub_1B8A23BC4();
  __swift_project_value_buffer(v42, qword_1ED8303C0);

  v43 = sub_1B8A23BA4();
  v44 = sub_1B8A24214();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v45 = 136315138;
    v47 = sub_1B89A907C(v39, v41, &v52);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_1B89A7000, v43, v44, v49, v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x1B8CC5170](v46, -1, -1);
    MEMORY[0x1B8CC5170](v45, -1, -1);
  }

  else
  {
  }

  sub_1B89A8A78(v26, &qword_1EBA91A58, &qword_1B8A29640);
  return sub_1B89A8A78(v51, &qword_1EBA91BD0, qword_1B8A26FF0);
}

void sub_1B8A1A7B4(uint64_t a1, void *a2)
{
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8A23BC4();
  __swift_project_value_buffer(v4, qword_1ED8303C0);
  v22 = a2;
  v5 = sub_1B8A23BA4();
  v6 = sub_1B8A24214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134219010;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2080;
    sub_1B8A23AD4();
    sub_1B8A1AB7C(&qword_1EBA91610, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
    v9 = sub_1B8A24934();
    v11 = sub_1B89A907C(v9, v10, &v23);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2080;
    v12 = objc_opt_self();
    v13 = OBJC_IVAR___STKStickerRepresentation_byteCount;
    swift_beginAccess();
    v14 = [v12 stringFromByteCount:*&v22[v13] countStyle:0];
    v15 = sub_1B8A23F24();
    v17 = v16;

    v18 = sub_1B89A907C(v15, v17, &v23);

    *(v7 + 24) = v18;
    *(v7 + 32) = 2048;
    v19 = &v22[OBJC_IVAR___STKStickerRepresentation_size];
    v20 = *&v22[OBJC_IVAR___STKStickerRepresentation_size];

    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        *(v7 + 34) = v20;

        *(v7 + 42) = 2048;
        v21 = v19[1];

        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v21 > -9.22337204e18)
          {
            if (v21 < 9.22337204e18)
            {
              *(v7 + 44) = v21;

              _os_log_impl(&dword_1B89A7000, v5, v6, "   [%ld] %s %s %ldx%ld", v7, 0x34u);
              swift_arrayDestroy();
              MEMORY[0x1B8CC5170](v8, -1, -1);
              MEMORY[0x1B8CC5170](v7, -1, -1);

              return;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1B8A1AB7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8A1ABC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v19 - v8;
  v10 = *(v7 + 48);
  *(v19 + v10 - v8) = sub_1B89A99D4(v19 - v8, "remove stickers", 15, 2);
  v11 = sub_1B8A1AEA8(a1);
  if (v1)
  {
    sub_1B89C4F2C(v9, v6);
    sub_1B89AF7B8("remove stickers", 15, 2, v6, *&v6[*(v3 + 48)]);

    sub_1B89A8A78(v9, &qword_1EBA91A58, &qword_1B8A29640);
    v12 = sub_1B8A23B14();
    return (*(*(v12 - 8) + 8))(v6, v12);
  }

  v14 = v11;
  sub_1B89C4F2C(v9, v6);
  sub_1B8A19B24("stickers fetched", 16, 2, v6, *&v6[*(v3 + 48)]);

  v15 = sub_1B8A23B14();
  v16 = *(v15 - 8);
  v20 = *(v16 + 8);
  v19[1] = v16 + 8;
  v20(v6, v15);
  v17 = v14;
  if (v14 >> 62)
  {
    v18 = sub_1B8A24554();
    v17 = v14;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1B8A1B1A8(v17);

  sub_1B8A1B2B4();
LABEL_8:
  sub_1B89C4F2C(v9, v6);
  sub_1B89AF7B8("remove stickers", 15, 2, v6, *&v6[*(v3 + 48)]);

  sub_1B89A8A78(v9, &qword_1EBA91A58, &qword_1B8A29640);
  return (v20)(v6, v15);
}

NSObject *sub_1B8A1AEA8(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_1B8A23EF4();
  v4 = [v2 initWithEntityName_];

  sub_1B89CDF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8A26570;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B89AEE6C();
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  *(v5 + 104) = sub_1B8A1B598();
  *(v5 + 72) = a1;

  v6 = sub_1B8A24204();
  [v4 setPredicate_];

  v21[0] = 0;
  v7 = [v4 execute_];
  v8 = v21[0];
  if (v7)
  {
    v9 = v7;
    type metadata accessor for ManagedSticker();
    v10 = sub_1B8A240F4();
    v11 = v8;
  }

  else
  {
    v12 = v21[0];
    v13 = sub_1B8A23674();

    swift_willThrow();
    v14 = v13;
    v10 = sub_1B8A23BA4();
    v15 = sub_1B8A24234();

    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1B89A7000, v10, v15, "Could not fetch stickers to delete: %@", v16, 0xCu);
      sub_1B89A8A78(v17, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v17, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    swift_willThrow();
  }

  return v10;
}

void sub_1B8A1B1A8(unint64_t a1)
{
  v3 = *(v1 + 16);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v8 = v3;
    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8CC44E0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v8 deleteObject_];

      ++v3;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_12:
}

void sub_1B8A1B2B4()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v12[0] = 0;
  if ([v1 save_])
  {
    v2 = v12[0];
  }

  else
  {
    v3 = v12[0];
    v4 = sub_1B8A23674();

    swift_willThrow();
    v5 = v4;
    v6 = sub_1B8A23BA4();
    v7 = sub_1B8A24234();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1B89A7000, v6, v7, "Could not save after deleting stickers: %@", v8, 0xCu);
      sub_1B89A8A78(v9, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v9, -1, -1);
      MEMORY[0x1B8CC5170](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B8A1B48C()
{
  v1 = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger;
  v2 = sub_1B8A23BC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B89C4E70(v0 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper6Remove_signposter);

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F373DB19C6RemoveCMa(uint64_t a1)
{
  result = qword_1EBA913F8;
  if (!qword_1EBA913F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8A1B598()
{
  result = qword_1EBA91AC0;
  if (!qword_1EBA91AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91AB8, &unk_1B8A265F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91AC0);
  }

  return result;
}

id sub_1B8A1B600(__int128 *a1)
{
  v2 = a1[3];
  v18 = a1[2];
  v19 = v2;
  v20 = *(a1 + 64);
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_1B8A23EF4();
  v6 = [v4 initWithEntityName_];

  if (*(&v17 + 1))
  {
    v10 = *a1;
    v11 = *(a1 + 2);
    v12 = *(&v17 + 1);
    v7 = a1[3];
    v13 = a1[2];
    v14 = v7;
    v15 = *(a1 + 64);
    sub_1B8A1B6EC(&v16, v9);
    sub_1B89AE6C8(&v10, v6);
    sub_1B8A1B75C(&v16);
  }

  return v6;
}

uint64_t sub_1B8A1B6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92260, &qword_1B8A29650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A1B75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92260, &qword_1B8A29650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Sticker.AttributionInfo.__allocating_init(adamID:bundleIdentifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v11[OBJC_IVAR___STKStickerAttributionInfo_adamID] = a1;
  swift_beginAccess();
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR___STKStickerAttributionInfo_name];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

void *Sticker.AttributionInfo.adamID.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  v2 = v1;
  return v1;
}

uint64_t sub_1B8A1B948()
{
  v1 = (v0 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B8A1BA1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8A1BA7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t Sticker.AttributionInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerAttributionInfo_name);

  return v1;
}

uint64_t sub_1B8A1BBF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001B8A29B50;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001B8A29B50;
  }

  else
  {
    v3 = 1701667182;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x44496D616461;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x44496D616461;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8A24954();
  }

  return v11 & 1;
}

uint64_t sub_1B8A1BCDC()
{
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

uint64_t sub_1B8A1BD78(uint64_t a1)
{
  sub_1B8A23F94();
}

uint64_t sub_1B8A1BE00(uint64_t a1)
{
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

unint64_t sub_1B8A1BE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8A1D4DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B8A1BEC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x80000001B8A29B50;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x44496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B8A1BF20()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496D616461;
  }
}

unint64_t sub_1B8A1BF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8A1D4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8A1BF9C(uint64_t a1)
{
  v2 = sub_1B8A1C9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A1BFD8(uint64_t a1)
{
  v2 = sub_1B8A1C9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Sticker.AttributionInfo.init(adamID:bundleIdentifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = &v5[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR___STKStickerAttributionInfo_adamID] = a1;
  swift_beginAccess();
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = &v5[OBJC_IVAR___STKStickerAttributionInfo_name];
  *v11 = a4;
  *(v11 + 1) = a5;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for Sticker.AttributionInfo();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1B8A1C0D8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_1B8A1571C(a1, v21);
  if (!v22)
  {
    sub_1B8A0B308(v21);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  v5 = *&v20[OBJC_IVAR___STKStickerAttributionInfo_adamID];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_23;
    }

    sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
    v6 = v5;
    v7 = v4;
    v8 = sub_1B8A24404();

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v5)
  {
    goto LABEL_23;
  }

  v9 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = &v20[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  swift_beginAccess();
  v13 = *(v12 + 1);
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v10 == *v12 && v11 == v13;
    if (!v14 && (sub_1B8A24954() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v13)
  {
    goto LABEL_23;
  }

  v15 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_name);
  v16 = *(v2 + OBJC_IVAR___STKStickerAttributionInfo_name + 8);
  v17 = *&v20[OBJC_IVAR___STKStickerAttributionInfo_name + 8];
  if (!v16)
  {

    if (v17)
    {

      return 0;
    }

    return 1;
  }

  if (!v17)
  {
LABEL_23:

    return 0;
  }

  if (*v15 == *&v20[OBJC_IVAR___STKStickerAttributionInfo_name] && v16 == v17)
  {

    return 1;
  }

  v19 = sub_1B8A24954();

  result = 0;
  if (v19)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B8A1C37C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___STKStickerAttributionInfo_adamID))
  {
    v2 = sub_1B8A24424();
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v3 = MEMORY[0x1B8CC3E90](*(v0 + OBJC_IVAR___STKStickerAttributionInfo_name));
  }

  else
  {
    v3 = 0;
  }

  v4 = (v1 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = MEMORY[0x1B8CC3E90](v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v3 ^ v2 ^ v7;
}

id Sticker.AttributionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
  *v4 = 0;
  v4[1] = 0;
  v5 = sub_1B8A243B4();
  if (v5)
  {
    v6 = v5;
    sub_1B89AB538(0, &qword_1EBA91F70, 0x1E696AEC0);
    v7 = sub_1B8A243B4();
    if (v7)
    {
      v10 = 0;
      v8 = v7;
      sub_1B8A23F14();
    }
  }

  else
  {
  }

  type metadata accessor for Sticker.AttributionInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

char *Sticker.AttributionInfo.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92290, &qword_1B8A29658);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = v1;
  v8 = &v1[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = v8;
  v10 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_1B8A1C9A0();
  sub_1B8A24A54();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);

    type metadata accessor for Sticker.AttributionInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v25;
    v28 = 0;
    v12 = sub_1B8A24804();
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    }

    *&v1[OBJC_IVAR___STKStickerAttributionInfo_adamID] = v15;
    v28 = 1;
    v16 = sub_1B8A247C4();
    v18 = v17;
    swift_beginAccess();
    *v9 = v16;
    v9[1] = v18;

    v29 = 2;
    v19 = sub_1B8A247C4();
    v21 = v20;
    (*(v11 + 8))(v6, v4);
    v22 = &v7[OBJC_IVAR___STKStickerAttributionInfo_name];
    *v22 = v19;
    v22[1] = v21;
    v23 = type metadata accessor for Sticker.AttributionInfo();
    v27.receiver = v7;
    v27.super_class = v23;
    v7 = objc_msgSendSuper2(&v27, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return v7;
}

unint64_t sub_1B8A1C9A0()
{
  result = qword_1ED82DC28;
  if (!qword_1ED82DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC28);
  }

  return result;
}

void sub_1B8A1C9F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  v4 = sub_1B8A23EF4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = v1 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier;
  swift_beginAccess();
  if (*(v5 + 8))
  {

    v6 = sub_1B8A23EF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1B8A23EF4();
  [a1 encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v8 = sub_1B8A23EF4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1B8A23EF4();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

void sub_1B8A1CBC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922A0, &qword_1B8A29660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A1C9A0();
  sub_1B8A24A64();
  v9 = *(v3 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  if (v9)
  {
    v10 = v9;
    [v10 longLongValue];
    v15 = 0;
    sub_1B8A24904();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);

      return;
    }
  }

  v11 = OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier;
  swift_beginAccess();
  v14 = *(v3 + v11);
  v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922A8, &qword_1B8A29668);
  sub_1B8A1CDF8();
  sub_1B8A248F4();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR___STKStickerAttributionInfo_name);
    v13 = 2;
    sub_1B8A248F4();
  }

  (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B8A1CDF8()
{
  result = qword_1EBA911C0;
  if (!qword_1EBA911C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA922A8, &qword_1B8A29668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA911C0);
  }

  return result;
}

unint64_t sub_1B8A1CEDC()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  sub_1B8A24634();

  v3 = (v0 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v4, v5);

  MEMORY[0x1B8CC3E20](0x223D656D616E20, 0xE700000000000000);
  if (*(v1 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v6 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_name);
    v7 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_name + 8);
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v6, v7);

  MEMORY[0x1B8CC3E20](0x496D616461202229, 0xEB00000000223D44);
  v8 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  if (v8)
  {
    v9 = [v8 description];
    v2 = sub_1B8A23F24();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B8CC3E20](v2, v11);

  MEMORY[0x1B8CC3E20](15906, 0xE200000000000000);
  return 0xD000000000000012;
}

id Sticker.AttributionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Sticker.AttributionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sticker.AttributionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B8A1D1CC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Sticker.AttributionInfo());
  result = Sticker.AttributionInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B8A1D3D8()
{
  result = qword_1EBA922B0;
  if (!qword_1EBA922B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA922B0);
  }

  return result;
}

unint64_t sub_1B8A1D430()
{
  result = qword_1ED82DC08;
  if (!qword_1ED82DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC08);
  }

  return result;
}

unint64_t sub_1B8A1D488()
{
  result = qword_1ED82DC10[0];
  if (!qword_1ED82DC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED82DC10);
  }

  return result;
}

unint64_t sub_1B8A1D4DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8A24794();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8A1D528()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA95ED8);
  __swift_project_value_buffer(v0, qword_1EBA95ED8);
  return sub_1B8A23BB4();
}

id sub_1B8A1D5FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v50 = *(v0 - 1);
  v51 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v48 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v43 - v3;
  v4 = sub_1B8A23784();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = CPSharedResourcesDirectory();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B8A23F34();
    v14 = v13;
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1B8A24634();

    v53 = v12;
    v54 = v14;
    MEMORY[0x1B8CC3E20](0xD00000000000001ELL, 0x80000001B8A2BF60);
    sub_1B8A236C4();

    v15 = OBJC_IVAR___STKStickerUsageManager_serializationLocation;
    v16 = v5[4];
    v17 = v49;
    v16(&v49[OBJC_IVAR___STKStickerUsageManager_serializationLocation], v9, v4);
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1B8A24634();

    v53 = v12;
    v54 = v14;
    MEMORY[0x1B8CC3E20](0xD00000000000002CLL, 0x80000001B8A2BF80);
    sub_1B8A236C4();

    v16(&v17[OBJC_IVAR___STKStickerUsageManager_serializationContextLocation], v9, v4);
    v18 = [objc_opt_self() defaultManager];
    v19 = v9;
    v20 = v5[2];
    v20(v19, &v17[v15], v4);
    sub_1B8A23734();
    v21 = v5[1];
    v43 = v19;
    v46 = v21;
    v47 = v5 + 1;
    v21(v19, v4);
    v22 = sub_1B8A23EF4();

    LODWORD(v14) = [v18 fileExistsAtPath_];

    v23 = v17;
    if (v14)
    {
      v24 = v44;
      v20(v44, &v17[v15], v4);
      sub_1B8A23794();
      v46(v24, v4);
      sub_1B8A1F0C0();
      v25 = v45;
      v26 = v51;
      sub_1B8A23E04();
      (*(v50 + 32))(&v17[OBJC_IVAR___STKStickerUsageManager_dictionary], v25, v26);
    }

    else
    {
      v27 = v4;
      sub_1B8A23E54();
      sub_1B8A1F078(&qword_1EBA911D0, MEMORY[0x1E69954A8], MEMORY[0x1E69954A0]);
      v28 = v48;
      sub_1B8A23D94();
      (*(v50 + 32))(&v17[OBJC_IVAR___STKStickerUsageManager_dictionary], v28, v51);
      if (qword_1EBA91318 != -1)
      {
        swift_once();
      }

      v29 = sub_1B8A23BC4();
      __swift_project_value_buffer(v29, qword_1EBA95ED8);
      v30 = v17;
      v31 = sub_1B8A23BA4();
      v32 = sub_1B8A24214();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v33 = 136315138;
        v34 = &v17[v15];
        v35 = v43;
        v20(v43, v34, v27);
        sub_1B8A1F078(&qword_1EBA91468, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v36 = sub_1B8A24934();
        v38 = v37;
        v46(v35, v27);
        v39 = sub_1B89A907C(v36, v38, &v53);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_1B89A7000, v31, v32, "StickerUsageManager init no file exists at: %s", v33, 0xCu);
        v40 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x1B8CC5170](v40, -1, -1);
        MEMORY[0x1B8CC5170](v33, -1, -1);
      }
    }

    v41 = type metadata accessor for StickerUsageManager(0);
    v52.receiver = v23;
    v52.super_class = v41;
    return objc_msgSendSuper2(&v52, sel_init);
  }

  else
  {
    __break(1u);
    v46(v5, v4);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_1B8A1DE90()
{
  result = [objc_allocWithZone(type metadata accessor for StickerUsageManager(0)) init];
  qword_1EBA91348 = result;
  return result;
}

id static StickerUsageManager.sharedManager.getter()
{
  if (qword_1EBA91340 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBA91348;

  return v1;
}

void sub_1B8A1DF20(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922B8, &qword_1B8A29840);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v38[0] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - v15;
  if (qword_1EBA91318 != -1)
  {
    swift_once();
  }

  v17 = sub_1B8A23BC4();
  __swift_project_value_buffer(v17, qword_1EBA95ED8);

  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24244();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = v22;
    v41[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1B89A907C(v23, a2, v41);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1B89A907C(v39, a4, v41);
    _os_log_impl(&dword_1B89A7000, v18, v19, "StickerUsageManager logSticker %s bundleIdentifier %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC5170](v24, -1, -1);
    v25 = v21;
    a3 = v39;
    MEMORY[0x1B8CC5170](v25, -1, -1);
  }

  v26 = OBJC_IVAR___STKStickerUsageManager_dictionary;
  v27 = v38[1];
  swift_beginAccess();
  (*(v14 + 16))(v16, v27 + v26, v13);
  v41[0] = a3;
  v41[1] = a4;
  sub_1B8A23DC4();
  (*(v14 + 8))(v16, v13);
  v28 = sub_1B8A23E54();
  v29 = *(v28 - 8);
  v39 = v13;
  v30 = a3;
  v31 = v29;
  v32 = *(v29 + 48);
  v33 = v32(v12, 1, v28);
  sub_1B89A8A78(v12, &qword_1EBA922B8, &qword_1B8A29840);
  if (v33 == 1)
  {

    v34 = v38[0];
    sub_1B8A23E64();
    (*(v31 + 56))(v34, 0, 1, v28);
    v40[0] = v30;
    v40[1] = a4;
    swift_beginAccess();
    sub_1B8A23DD4();
    swift_endAccess();
  }

  v35 = sub_1B8A1D59C(v41);
  v40[4] = v30;
  v40[5] = a4;
  v36 = sub_1B8A23DB4();
  if (!v32(v37, 1, v28))
  {
    sub_1B8A23E44();
  }

  v36(v40, 0);

  (v35)(v41, 0);
  sub_1B8A1E78C();
}

uint64_t sub_1B8A1E44C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_1B8A23E54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922B8, &qword_1B8A29840);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = OBJC_IVAR___STKStickerUsageManager_dictionary;
  swift_beginAccess();
  (*(v14 + 16))(v16, v2 + v17, v13);
  v23 = v21;
  v24 = v22;
  sub_1B8A23DC4();
  (*(v14 + 8))(v16, v13);
  sub_1B8A1EDAC(v12, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_1B89A8A78(v12, &qword_1EBA922B8, &qword_1B8A29840);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    v19 = sub_1B8A23E34();
    (*(v4 + 8))(v6, v3);
    sub_1B89A8A78(v12, &qword_1EBA922B8, &qword_1B8A29840);
    result = v19;
    if (v19 < 0)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1B8A1E78C()
{
  v1 = v0;
  v2 = sub_1B8A23DE4();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1B8A23784();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A23E24();
  (*(v12 + 16))(v14, v1 + OBJC_IVAR___STKStickerUsageManager_serializationContextLocation, v11);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  (*(v12 + 56))(v10, 1, 1, v11);
  v15 = sub_1B8A23E14();
  v16 = OBJC_IVAR___STKStickerUsageManager_dictionary;
  swift_beginAccess();
  (*(v23 + 16))(v7, v1 + v16, v5);
  v17 = v22;
  (*(v22 + 104))(v4, *MEMORY[0x1E6995288], v2);
  sub_1B8A1F0C0();
  v18 = sub_1B8A23DF4();
  v20 = v19;
  (*(v17 + 8))(v4, v2);
  (*(v23 + 8))(v7, v5);
  sub_1B8A237D4();
  sub_1B89AFC38(v18, v20);
}

id StickerUsageManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerUsageManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A1EDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922B8, &qword_1B8A29840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StickerUsageManager(uint64_t a1)
{
  result = qword_1EBA91308;
  if (!qword_1EBA91308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A1EE70(uint64_t a1)
{
  sub_1B8A1EFBC(319);
  if (v1 <= 0x3F)
  {
    sub_1B8A23784();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B8A1EFBC(uint64_t a1)
{
  if (!qword_1EBA911D8)
  {
    sub_1B8A23E54();
    sub_1B8A1F078(&qword_1EBA911D0, MEMORY[0x1E69954A8], MEMORY[0x1E69954A0]);
    v1 = sub_1B8A23DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA911D8);
    }
  }
}

uint64_t sub_1B8A1F078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8A1F0C0()
{
  result = qword_1EBA922C8;
  if (!qword_1EBA922C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA922C0, &qword_1B8A29848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA922C8);
  }

  return result;
}

uint64_t sub_1B8A1F124()
{
  type metadata accessor for EmojiRecency();
  v0 = swift_allocObject();
  result = EmojiRecency.init()();
  qword_1ED82DE60 = v0;
  return result;
}

uint64_t EmojiRecency.__allocating_init()()
{
  v0 = swift_allocObject();
  EmojiRecency.init()();
  return v0;
}

uint64_t static EmojiRecency.shared.getter()
{
  if (qword_1ED82DE58 != -1)
  {
    swift_once();
  }
}

uint64_t EmojiRecency.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E699BAF0]) initWithMachName_];
  type metadata accessor for RecencyChangeObservers();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_1B8A1F5F0(sub_1B8A1F548, v2);

  return v0;
}

uint64_t sub_1B8A1F2D8(unint64_t a1)
{
  [*(v1 + 16) readEmojiDefaults];
  v3 = [*(v1 + 16) recentEmojis];
  sub_1B8A1F6CC();
  v4 = sub_1B8A240F4();

  sub_1B89E042C(a1, v4, sub_1B8A1F3AC, 0, &v8);
  v11[0] = v8;
  v11[1] = v9;
  sub_1B89DE67C(*(&v8 + 1), v9, *(&v9 + 1), v10);
  v6 = v5;
  sub_1B8A1F7D0(v11);

  return v6;
}

void sub_1B8A1F3AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B8A23F24();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1B8A1F40C()
{
  v1 = sub_1B8A23994();
  if ([*(v0 + 16) respondsToSelector_])
  {
    [*(v0 + 16) performSelector_];
  }

  v2 = *(v0 + 16);

  return [v2 readEmojiDefaults];
}

uint64_t sub_1B8A1F494(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1B8A23994();
    if ([*(v3 + 16) respondsToSelector_])
    {
      [*(v3 + 16) performSelector_];
    }

    [*(v3 + 16) readEmojiDefaults];
  }

  return result;
}

uint64_t EmojiRecency.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A1F5B8()
{
  result = sub_1B8A23EF4();
  qword_1ED82DD68 = result;
  return result;
}

void sub_1B8A1F5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v2[2] = a1;
  v2[3] = a2;

  sub_1B8A10800(v3, v4);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v5)
  {
    v6 = qword_1ED82DD60;
    v7 = v5;
    v8 = v7;
    if (v6 != -1)
    {
      swift_once();
      v7 = v8;
    }

    CFNotificationCenterAddObserver(v7, v2, sub_1B8A1F718, qword_1ED82DD68, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B8A1F6CC()
{
  result = qword_1EBA91E50;
  if (!qword_1EBA91E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91E50);
  }

  return result;
}

void sub_1B8A1F718(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_1B8A1F8D0(a2, a3);
}

uint64_t sub_1B8A1F798()
{
  sub_1B8A10800(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A1F7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922D0, &qword_1B8A29890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B8A1F8D0(uint64_t a1, void *a2)
{
  v4 = sub_1B8A23584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    memset(v11, 0, sizeof(v11));
    v8 = a2;
    sub_1B8A23564();
    if (a1)
    {
      v9 = *(a1 + 16);

      if (v9)
      {
        v10 = *(a1 + 24);

        v9(v7);
        sub_1B8A10800(v9, v10);

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B8A1FA3C(uint64_t a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8A23904();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v6 = sub_1B8A23EF4();
  v7 = [v5 initWithEntityName_];

  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26570;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B89AEE6C();
  *(v8 + 32) = 0x696669746E656469;
  *(v8 + 40) = 0xEA00000000007265;
  v9 = sub_1B8A238B4();
  *(v8 + 96) = sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  *(v8 + 104) = sub_1B89CD424();
  *(v8 + 72) = v9;
  v10 = sub_1B8A24204();
  [v7 setPredicate_];

  v40[0] = 0;
  v11 = [v7 execute_];
  v12 = v40[0];
  if (!v11)
  {
    v18 = v40[0];
    v19 = sub_1B8A23674();

    swift_willThrow();
    v20 = v19;
    v21 = sub_1B8A23BA4();
    v2 = sub_1B8A24234();

    if (os_log_type_enabled(v21, v2))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v19;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1B89A7000, v21, v2, "Could not fetch sticker: %@", v22, 0xCu);
      sub_1B89CCCE0(v23);
      MEMORY[0x1B8CC5170](v23, -1, -1);
      MEMORY[0x1B8CC5170](v22, -1, -1);
    }

    goto LABEL_16;
  }

  v13 = v11;
  type metadata accessor for ManagedSticker();
  v14 = sub_1B8A240F4();
  v15 = v12;

  if (v14 >> 62)
  {
    v26 = sub_1B8A24554();
    v16 = v39;
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v16 = v39;
  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    (*(v16 + 16))(v4, a1, v2);
    v27 = sub_1B8A23BA4();
    v28 = sub_1B8A24234();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v16;
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v29 = 136315138;
      sub_1B89C4ECC();
      v32 = sub_1B8A24934();
      v34 = v33;
      (*(v30 + 8))(v4, v2);
      v35 = sub_1B89A907C(v32, v34, v40);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1B89A7000, v27, v28, "Unknown sticker %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B8CC5170](v31, -1, -1);
      MEMORY[0x1B8CC5170](v29, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v4, v2);
    }

    sub_1B89C353C();
    swift_allocError();
    *v36 = 2;
LABEL_16:
    swift_willThrow();
    return v2;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8CC44E0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v14 + 32);
  }

  v2 = v17;

  return v2;
}

void sub_1B8A1FFB4()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v12[0] = 0;
  if ([v1 save_])
  {
    v2 = v12[0];
  }

  else
  {
    v3 = v12[0];
    v4 = sub_1B8A23674();

    swift_willThrow();
    v5 = v4;
    v6 = sub_1B8A23BA4();
    v7 = sub_1B8A24234();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1B89A7000, v6, v7, "Could not save sticker: %@", v8, 0xCu);
      sub_1B89CCCE0(v9);
      MEMORY[0x1B8CC5170](v9, -1, -1);
      MEMORY[0x1B8CC5170](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t _s14descr1F373DB19C6UpdateCMa(uint64_t a1)
{
  result = qword_1EBA915B8;
  if (!qword_1EBA915B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8A201C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B89C3D6C(a3, v25 - v10);
  v12 = sub_1B8A24184();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B89A8A78(v11, &qword_1EBA92200, &qword_1B8A28000);
  }

  else
  {
    sub_1B8A24174();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B8A24154();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B8A23F64() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B8A20470()
{
  if (qword_1EBA91238 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8A23BC4();
  __swift_project_value_buffer(v0, qword_1EBA91240);
  v1 = sub_1B8A23BA4();
  v2 = sub_1B8A24224();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B89A7000, v1, v2, "Sending activity signal. Restarting timer.", v3, 2u);
    MEMORY[0x1B8CC5170](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922E0, &qword_1B8A29968);
  sub_1B89CCD90(&qword_1EBA91430, &qword_1EBA922E0, &qword_1B8A29968, MEMORY[0x1E695BF80]);
  return sub_1B8A23CA4();
}

uint64_t sub_1B8A205A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = a3;
  v40 = a1;
  v35 = a2;
  v33 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922E8, &qword_1B8A29970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922F0, &qword_1B8A29978);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v36 = v30 - v8;
  v31 = sub_1B8A242C4();
  v9 = *(v31 - 1);
  MEMORY[0x1EEE9AC00](v31);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8A24284();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B8A23D24();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v32 = sub_1B8A20DC8();
  v30[1] = "Actor";
  sub_1B8A23D04();
  v42[0] = MEMORY[0x1E69E7CC0];
  sub_1B8A214B8(&qword_1EBA91158, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921B0, &qword_1B8A29980);
  sub_1B89CCD90(&qword_1EBA91198, &unk_1EBA921B0, &qword_1B8A29980, MEMORY[0x1E69E6328]);
  sub_1B8A244C4();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8090], v31);
  v14 = sub_1B8A242E4();
  v15 = v33;
  *v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922E0, &qword_1B8A29968);
  swift_allocObject();
  v16 = v14;
  v17 = sub_1B8A23C84();
  v15[1] = v17;
  v18 = type metadata accessor for ActivityDebouncer(0);
  *(v15 + 2) = 0u;
  v15[6] = 0;
  *(v15 + 1) = 0u;
  v31 = v15 + 2;
  v19 = *(v18 + 28);
  v20 = sub_1B8A242B4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15 + v19, v40, v20);
  type metadata accessor for ActivityDebouncer.DebouncerActor();
  v22 = swift_allocObject();

  v23 = v39;

  swift_defaultActor_initialize();
  *(v22 + 112) = v35;
  *(v22 + 120) = v23;
  v41 = v16;
  v42[0] = v17;
  v24 = sub_1B8A24294();
  v25 = v34;
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  sub_1B89CCD90(&qword_1EBA91428, &qword_1EBA922E0, &qword_1B8A29968, MEMORY[0x1E695BF88]);
  sub_1B8A214B8(&unk_1EBA91148, sub_1B8A20DC8, MEMORY[0x1E69E8028]);
  v26 = v36;
  sub_1B8A23CB4();
  sub_1B89A8A78(v25, &qword_1EBA922E8, &qword_1B8A29970);

  sub_1B89CCD90(&unk_1EBA91440, &qword_1EBA922F0, &qword_1B8A29978, MEMORY[0x1E695BE50]);

  v27 = v37;
  v28 = sub_1B8A23CC4();

  (*(v38 + 8))(v26, v27);
  v42[3] = sub_1B8A23C74();
  v42[4] = MEMORY[0x1E695BF08];

  v42[0] = v28;
  (*(v21 + 8))(v40, v20);
  return sub_1B8A21508(v42, v31);
}

uint64_t sub_1B8A20BC4()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91240);
  __swift_project_value_buffer(v0, qword_1EBA91240);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A20C44()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ActivityDebouncer(uint64_t a1)
{
  result = qword_1EBA91360;
  if (!qword_1EBA91360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A20D14(uint64_t a1)
{
  sub_1B8A20DC8();
  if (v1 <= 0x3F)
  {
    sub_1B8A20E14();
    if (v2 <= 0x3F)
    {
      sub_1B8A20E78(319);
      if (v3 <= 0x3F)
      {
        sub_1B8A242B4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8A20DC8()
{
  result = qword_1EBA91140;
  if (!qword_1EBA91140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91140);
  }

  return result;
}

void sub_1B8A20E14()
{
  if (!qword_1EBA91420)
  {
    v0 = sub_1B8A23C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA91420);
    }
  }
}

void sub_1B8A20E78(uint64_t a1)
{
  if (!qword_1EBA91438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA922D8, "xX");
    v1 = sub_1B8A24444();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA91438);
    }
  }
}

uint64_t sub_1B8A20EDC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  if (qword_1EBA91238 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8A23BC4();
  __swift_project_value_buffer(v6, qword_1EBA91240);
  v7 = sub_1B8A23BA4();
  v8 = sub_1B8A24224();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B89A7000, v7, v8, "Debounce timer fired", v9, 2u);
    MEMORY[0x1B8CC5170](v9, -1, -1);
  }

  v10 = sub_1B8A24184();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_1B8A201C0(0, 0, v5, &unk_1B8A299A0, v11);

  return sub_1B89A8A78(v5, &qword_1EBA92200, &qword_1B8A28000);
}

uint64_t sub_1B8A210DC()
{
  if (qword_1EBA91238 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1EBA91240);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Debounce task will execute", v4, 2u);
    MEMORY[0x1B8CC5170](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B8A21200, v5, 0);
}

uint64_t sub_1B8A21200()
{
  v3 = (*(*(v0 + 16) + 112) + **(*(v0 + 16) + 112));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8A212EC;

  return v3();
}

uint64_t sub_1B8A212EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8A213E8, 0, 0);
}

uint64_t sub_1B8A213E8(uint64_t a1)
{
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Debounce task did execute", v4, 2u);
    MEMORY[0x1B8CC5170](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1B8A214B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8A21508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922F8, &unk_1B8A29988);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A21578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89BBE18;

  return sub_1B8A210BC(a1, v4, v5, v6);
}

void sub_1B8A2162C()
{
  v0 = sub_1B8A23884();
  __swift_allocate_value_buffer(v0, qword_1EBA92300);
  v1 = __swift_project_value_buffer(v0, qword_1EBA92300);
  sub_1B8A21694(v1);
}

void sub_1B8A21694(uint64_t a3@<X8>)
{
  v20[1] = a3;
  v3 = sub_1B8A23884();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v20 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v14 = sub_1B8A23EF4();
  [v13 setDateFormat_];

  v15 = objc_allocWithZone(MEMORY[0x1E695DF58]);
  v16 = sub_1B8A23EF4();
  v17 = [v15 initWithLocaleIdentifier_];

  [v13 setLocale_];
  v18 = sub_1B8A23EF4();
  v19 = [v13 dateFromString_];

  if (v19)
  {

    sub_1B8A23864();

    (*(v4 + 32))(v12, v10, v3);
    (*(v4 + 16))(v7, v12, v3);
    sub_1B8A23804();

    (*(v4 + 8))(v12, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Sticker.kGenmojiFirstBetaReleaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBA916E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23884();
  v3 = __swift_project_value_buffer(v2, qword_1EBA92300);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Sticker.RestrictedDistributionType.predicate.getter()
{
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8A28040;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1B89AEE6C();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "creationDate");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  if (qword_1EBA916E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B8A23884();
  __swift_project_value_buffer(v3, qword_1EBA92300);
  v4 = sub_1B8A23834();
  *(v0 + 96) = sub_1B89AB538(0, &qword_1EBA92318, 0x1E695DF00);
  v5 = sub_1B8A21BA4();
  *(v0 + 72) = v4;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 104) = v5;
  *(v0 + 112) = 0x6554686372616573;
  *(v0 + 120) = 0xEA00000000007478;
  return sub_1B8A24204();
}

unint64_t sub_1B8A21BA4()
{
  result = qword_1EBA92320;
  if (!qword_1EBA92320)
  {
    sub_1B89AB538(255, &qword_1EBA92318, 0x1E695DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92320);
  }

  return result;
}

uint64_t Sticker.distributionIsRestricted.getter()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return [v0 canDistribute] ^ 1;
  }

  return result;
}

BOOL Sticker.canDistribute.getter()
{
  if (!os_variant_has_internal_content())
  {
    return 1;
  }

  v0 = *(Sticker.distributionRestrictions.getter() + 2);

  return v0 == 0;
}

char *Sticker.distributionRestrictions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92328, &qword_1B8A299C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8A26260;
  sub_1B8A21E38((inited + 32));
  v1 = *(inited + 32);

  v2 = MEMORY[0x1E69E7CC0];
  if (v1 != 1)
  {
    v2 = sub_1B89DD420(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1B89DD420((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v5;
  }

  return v2;
}

void sub_1B8A21E38(BOOL *a1@<X8>)
{
  if (os_variant_has_internal_content() && (v3 = (v1 + OBJC_IVAR___STKSticker_searchText), swift_beginAccess(), (v4 = v3[1]) != 0) && ((v4 & 0x2000000000000000) != 0 ? (v5 = HIBYTE(v4) & 0xF) : (v5 = *v3 & 0xFFFFFFFFFFFFLL), v5))
  {
    v6 = OBJC_IVAR___STKSticker_creationDate;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (qword_1EBA916E0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B8A23884();
    __swift_project_value_buffer(v8, qword_1EBA92300);
    sub_1B8A237F4();
    v10 = v7 >= v9;
  }

  else
  {
    v10 = 1;
  }

  *a1 = v10;
}

uint64_t Sticker.distributionRestrictions_ObjC.getter()
{
  v0 = *(Sticker.distributionRestrictions.getter() + 2);
  if (v0)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B8A0394C(0, v0, 0);
    v1 = v5;
    v2 = *(v5 + 16);
    do
    {
      v3 = *(v5 + 24);
      if (v2 >= v3 >> 1)
      {
        sub_1B8A0394C((v3 > 1), v2 + 1, 1);
      }

      *(v5 + 16) = v2 + 1;
      *(v5 + 8 * v2++ + 32) = 0;
      --v0;
    }

    while (v0);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

unint64_t sub_1B8A22088()
{
  result = qword_1EBA92330;
  if (!qword_1EBA92330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92330);
  }

  return result;
}

char *sub_1B8A220FC()
{
  v1 = OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager;
  if (*&v0[OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager];
  }

  else
  {
    type metadata accessor for SpotlightFailedIndexingManager(0);
    swift_allocObject();
    v3 = v0;
    v2 = sub_1B8A0BBE8(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_1B8A22184(void *a1)
{
  type metadata accessor for ManagedRepresentation();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
LABEL_9:
    v12 = a1;
    v13 = sub_1B8A23BA4();
    v14 = sub_1B8A24224();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136315138;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_1B8A23F24();
      v21 = v20;

      v22 = sub_1B89A907C(v19, v21, &v45);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1B89A7000, v13, v14, "Ignoring indexing of sticker object since it is not a still formatted representation: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CC5170](v16, -1, -1);
      MEMORY[0x1B8CC5170](v15, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  v4 = a1;
  v5 = [v3 role];
  if (!v5)
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_1B8A23F24();
  v9 = v8;

  if (v7 == 0xD00000000000001DLL && 0x80000001B8A2A270 == v9)
  {
  }

  else
  {
    v11 = sub_1B8A24954();

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v24 = [v3 sticker];
  if (!v24)
  {
    v39 = v4;
    v40 = sub_1B8A23BA4();
    v41 = sub_1B8A24224();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v3;
      *v43 = v3;
      v44 = v39;
      _os_log_impl(&dword_1B89A7000, v40, v41, "Parent object unavailable; will queue for future reindexing: %@", v42, 0xCu);
      sub_1B89A8A78(v43, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v43, -1, -1);
      MEMORY[0x1B8CC5170](v42, -1, -1);
    }

    sub_1B8A220FC();
    sub_1B8A0CD64(v3);

    return 0;
  }

  v25 = v24;
  v26 = [v3 sticker];
  if (!v26 || (v27 = v26, v28 = [v26 type], v27, v28 != 1))
  {
    v36 = sub_1B8A23BA4();
    v37 = sub_1B8A24224();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B89A7000, v36, v37, "Item is not a user sticker. Ignoring request for attributes.", v38, 2u);
      MEMORY[0x1B8CC5170](v38, -1, -1);
    }

    return 0;
  }

  v29 = v4;
  v30 = sub_1B8A23BA4();
  v31 = sub_1B8A24224();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v3;
    *v33 = v3;
    v34 = v29;
    _os_log_impl(&dword_1B89A7000, v30, v31, "Will index %@", v32, 0xCu);
    sub_1B89A8A78(v33, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v33, -1, -1);
    MEMORY[0x1B8CC5170](v32, -1, -1);
  }

  v35 = sub_1B8A226A8(v3);
  return v35;
}

void *sub_1B8A226A8(void *a1)
{
  v3 = sub_1B8A23884();
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8A23904();
  v95 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v94 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v89 - v11;
  v13 = sub_1B8A23AD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 uti];
  if (!v17)
  {
    v23 = sub_1B8A23BA4();
    v31 = sub_1B8A24234();
    if (!os_log_type_enabled(v23, v31))
    {
LABEL_18:

      return 0;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1B89A7000, v23, v31, ".uti is nil -- this record is probably syncing down for the first time", v32, 2u);
    v30 = v32;
LABEL_7:
    MEMORY[0x1B8CC5170](v30, -1, -1);
    goto LABEL_18;
  }

  v18 = v17;
  v91 = v6;
  v92 = v16;
  v19 = sub_1B8A23F24();
  v21 = v20;

  sub_1B8A23AE4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B89A8A78(v12, &qword_1EBA91EB8, &unk_1B8A28100);

    v22 = a1;
    v23 = sub_1B8A23BA4();
    v24 = sub_1B8A24234();

    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_18;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v97 = v27;
    *v25 = 136315394;
    v28 = sub_1B89A907C(v19, v21, &v97);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v22;
    v29 = v22;
    _os_log_impl(&dword_1B89A7000, v23, v24, "Could not create UTType from %s for %@", v25, 0x16u);
    sub_1B89A8A78(v26, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B8CC5170](v27, -1, -1);
    v30 = v25;
    goto LABEL_7;
  }

  v33 = v92;
  (*(v14 + 32))(v92, v12, v13);
  v34 = [a1 identifier];
  if (!v34)
  {
    v73 = a1;
    v74 = sub_1B8A23BA4();
    v75 = sub_1B8A24234();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = v14;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v73;
      *v78 = v73;
      v79 = v73;
      _os_log_impl(&dword_1B89A7000, v74, v75, ".identifier is nil -- this record is probably syncing down for the first time: %@", v77, 0xCu);
      sub_1B89A8A78(v78, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v78, -1, -1);
      v80 = v77;
      v14 = v76;
      v33 = v92;
      MEMORY[0x1B8CC5170](v80, -1, -1);
    }

    goto LABEL_29;
  }

  v35 = v34;
  sub_1B8A238D4();

  v36 = [a1 sticker];
  if (!v36)
  {
    v81 = sub_1B8A23BA4();
    v82 = sub_1B8A24234();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1B89A7000, v81, v82, ".sticker is nil -- this record is probably syncing down for the first time", v83, 2u);
      MEMORY[0x1B8CC5170](v83, -1, -1);
    }

    goto LABEL_28;
  }

  v37 = v36;
  v38 = [v36 identifier];
  if (!v38)
  {
    v84 = sub_1B8A23BA4();
    v85 = sub_1B8A24234();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1B89A7000, v84, v85, "sticker.identifier is nil -- this record is probably syncing down for the first time", v86, 2u);
      MEMORY[0x1B8CC5170](v86, -1, -1);
    }

LABEL_28:
    (*(v95 + 8))(v96, v91);
LABEL_29:
    (*(v14 + 8))(v33, v13);
    return 0;
  }

  v89[1] = v1;
  v90 = v14;
  v39 = v38;
  sub_1B8A238D4();

  v40 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v41 = sub_1B8A23AC4();
  v42 = v37;
  v43 = [v40 initWithContentType_];

  sub_1B8A238A4();
  v44 = sub_1B8A23EF4();

  [v43 setIdentifier_];

  sub_1B8A238A4();
  v45 = sub_1B8A23EF4();

  v46 = sub_1B8A23EF4();
  [v43 setAttribute:v45 forKey:v46];

  [a1 byteCount];
  v47 = sub_1B8A24A04();
  v48 = sub_1B8A23EF4();
  [v43 setAttribute:v47 forKey:v48];

  sub_1B89AEE20();
  v49 = sub_1B8A243D4();
  [v43 setEligibleForPhotosProcessing_];

  [v42 lastUsedDate];
  sub_1B8A237E4();
  v50 = sub_1B8A23834();
  v51 = v93[1];
  v51(v5, v3);
  [v43 setLastUsedDate_];

  [v42 creationDate];
  sub_1B8A237E4();
  v52 = sub_1B8A23834();
  v51(v5, v3);
  [v43 setContentCreationDate_];

  v93 = v42;
  v53 = [v42 searchText];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1B8A23EF4();
    [v43 setAttribute:v54 forKey:v55];
  }

  v56 = [v93 accessibilityName];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1B8A23EF4();
    [v43 setAttribute:v57 forKey:v58];
  }

  v59 = v43;
  v60 = sub_1B8A23BA4();
  v61 = sub_1B8A24224();
  v62 = v59;

  if (os_log_type_enabled(v60, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v97 = v64;
    *v63 = 136315138;
    v89[0] = v62;
    v65 = [v62 attributeDictionary];
    sub_1B8A23E74();

    v66 = sub_1B8A23E84();
    v68 = v67;

    v69 = sub_1B89A907C(v66, v68, &v97);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_1B89A7000, v60, v61, "Attributes: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1B8CC5170](v64, -1, -1);
    MEMORY[0x1B8CC5170](v63, -1, -1);

    v70 = *(v95 + 8);
    v71 = v91;
    v70(v94, v91);
    v70(v96, v71);
    (*(v90 + 8))(v92, v13);
    return v89[0];
  }

  else
  {

    v87 = *(v95 + 8);
    v88 = v91;
    v87(v94, v91);
    v87(v96, v88);
    (*(v90 + 8))(v92, v13);
    return v62;
  }
}

id sub_1B8A2334C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerSpotlightDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StickerSpotlightDelegate(uint64_t a1)
{
  result = qword_1EBA91548;
  if (!qword_1EBA91548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8A23454(uint64_t a1)
{
  result = sub_1B8A23BC4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}