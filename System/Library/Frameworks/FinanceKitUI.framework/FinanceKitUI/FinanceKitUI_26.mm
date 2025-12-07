void sub_238708B1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v41 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  MEMORY[0x28223BE20](v41);
  v42 = (v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (v37 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_23870F694(v30, v11, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v42;
          sub_23870F694(v32, v42, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
          v35 = sub_2384A3F7C(v34, v33);
          v36 = v34;
          v11 = v33;
          sub_23870F348(v36);
          sub_23870F348(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_23870F694(a2, v11, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v20 = v42;
        sub_23870F694(a4, v42, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v21 = sub_2384A3F7C(v20, v11);
        sub_23870F348(v20);
        sub_23870F348(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_238709038(&v46, &v45, &v44, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
}

uint64_t sub_238709038(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_238709120(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238759D30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
  v33 = a2;
  v11 = sub_23875E950();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_238710C38(&qword_27DF0B0E8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA8]);
      v21 = sub_23875E9E0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23870BB5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_238709400(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
  v33 = a2;
  v11 = sub_23875E950();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_238710C38(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
      v21 = sub_23875E9E0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23870BE24(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2387096E0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23875BCB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_23875E950();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_238710C38(&qword_27DF0A788, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_23875E9E0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23870C0EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2387099C0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
  v33 = a2;
  v11 = sub_23875E950();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_238710C38(&qword_27DF0D430, MEMORY[0x277CC7678], MEMORY[0x277CC7688]);
      v21 = sub_23875E9E0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23870C3B4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_238709CA0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238757AD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
  v33 = a2;
  v11 = sub_23875E950();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_238710C38(&qword_27DF0CA28, MEMORY[0x277CC6B60], MEMORY[0x277CC6B70]);
      v21 = sub_23875E9E0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23870C67C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_238709FC8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_23875F3B0();

    if (v17)
    {

      sub_238449184(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_23875F3A0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_23870A38C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_23870B658(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_23870BAD8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_238449184(0, a3, a4);
    v19 = sub_23875F1A0();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_23875F1B0();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_23870C944(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23870A23C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23875F700();
  sub_23875EB30();
  v8 = sub_23875F760();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23875F630() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23870CAD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23870A38C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_23875F440();
    v23 = v10;
    sub_23875F360();
    if (sub_23875F3D0())
    {
      sub_238449184(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_23870B658(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_23875F1A0();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_23875F3D0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

void sub_23870A58C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238759D30();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E90, &unk_238782460);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_23870A8E8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238758680();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EA0, &qword_238782470);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_23870AC44(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23875BCB0();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F48, &qword_2387825A8);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_23870AFA0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238758F50();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F38, &qword_238782598);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_23870B2FC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238757AD0();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F60, &qword_238782608);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_23870B658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_23875F1A0();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_23870B878(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC8, &qword_2387826E8);
  v4 = sub_23875F430();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23875F700();
      sub_23875EB30();
      v21 = sub_23875F760();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_23870BAD8(uint64_t a1, uint64_t a2)
{
  sub_23875F1A0();
  result = sub_23875F340();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23870BB5C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_238759D30();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870A58C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23870CCA4(MEMORY[0x277CC7C98], &qword_27DF14E90, &unk_238782460);
      goto LABEL_12;
    }

    sub_23870D178(v11 + 1);
  }

  v13 = *v3;
  sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
  v14 = sub_23875E950();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_238710C38(&qword_27DF0B0E8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA8]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870BE24(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870A8E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23870CCA4(MEMORY[0x277CC6F70], &qword_27DF14EA0, &qword_238782470);
      goto LABEL_12;
    }

    sub_23870D494(v11 + 1);
  }

  v13 = *v3;
  sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
  v14 = sub_23875E950();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_238710C38(&qword_27DF09538, MEMORY[0x277CC6F70], MEMORY[0x277CC6F80]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870C0EC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_23875BCB0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870AC44(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23870CCA4(MEMORY[0x277CC95F0], &qword_27DF14F48, &qword_2387825A8);
      goto LABEL_12;
    }

    sub_23870D7B0(v11 + 1);
  }

  v13 = *v3;
  sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_23875E950();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_238710C38(&qword_27DF0A788, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870C3B4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870AFA0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23870CCA4(MEMORY[0x277CC7678], &qword_27DF14F38, &qword_238782598);
      goto LABEL_12;
    }

    sub_23870DACC(v11 + 1);
  }

  v13 = *v3;
  sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
  v14 = sub_23875E950();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_238710C38(&qword_27DF0D430, MEMORY[0x277CC7678], MEMORY[0x277CC7688]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870C67C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_238757AD0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870B2FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23870CCA4(MEMORY[0x277CC6B60], &qword_27DF14F60, &qword_238782608);
      goto LABEL_12;
    }

    sub_23870DDE8(v11 + 1);
  }

  v13 = *v3;
  sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
  v14 = sub_23875E950();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_238710C38(&qword_27DF0CA28, MEMORY[0x277CC6B60], MEMORY[0x277CC6B70]);
      v22 = sub_23875E9E0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

void sub_23870C944(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_23870B658(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23870CEDC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_23870E104(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_23875F1A0();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_238449184(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_23875F1B0();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23875F670();
  __break(1u);
}

void sub_23870CAD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23870B878(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_23870D01C();
      goto LABEL_16;
    }

    sub_23870E310(v8 + 1);
  }

  v10 = *v4;
  sub_23875F700();
  sub_23875EB30();
  v11 = sub_23875F760();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_23875F670();
  __break(1u);
}

void sub_23870CCA4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_23875F420();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_23870CEDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23875F420();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void sub_23870D01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC8, &qword_2387826E8);
  v2 = *v0;
  v3 = sub_23875F420();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_23870D178(uint64_t a1)
{
  v2 = v1;
  v34 = sub_238759D30();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E90, &unk_238782460);
  v7 = sub_23875F430();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_23870D494(uint64_t a1)
{
  v2 = v1;
  v34 = sub_238758680();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EA0, &qword_238782470);
  v7 = sub_23875F430();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70], MEMORY[0x277CC6F78]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_23870D7B0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_23875BCB0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F48, &qword_2387825A8);
  v7 = sub_23875F430();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_23870DACC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_238758F50();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F38, &qword_238782598);
  v7 = sub_23875F430();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678], MEMORY[0x277CC7680]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_23870DDE8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_238757AD0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F60, &qword_238782608);
  v7 = sub_23875F430();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60], MEMORY[0x277CC6B68]);
      v21 = sub_23875E950();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_23870E104(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_23875F430();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_23875F1A0();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_23870E310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC8, &qword_2387826E8);
  v4 = sub_23875F430();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_23875F700();

      sub_23875EB30();
      v20 = sub_23875F760();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_23870E548(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (sub_238518A64(a1, a3))
  {
    if (a2)
    {
      v6 = 0x63697373616C63;
    }

    else
    {
      v6 = 1818845549;
    }

    if (a2)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (a4)
    {
      v8 = 0x63697373616C63;
    }

    else
    {
      v8 = 1818845549;
    }

    if (a4)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_23875F630();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void *sub_23870E600(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8;
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v38 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v38 + 32) & ~v38;
  v11 = a1 + v40;
  v37 = xmmword_2387632F0;
  v41 = v5;
  v39 = v10;
  while (1)
  {
    sub_23870F694(v11, v7, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v14 = *(v7 + 8);
    v15 = *(v7 + 9);

    v17 = sub_23853B46C(v14, v15);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_238548C74(v20, 1);
      v8 = v42;
      v22 = sub_23853B46C(v14, v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v8[7];
      sub_23870F6FC(v7, v41, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_238498610(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_238498610((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v25[2] = v28 + 1;
      v12 = v25 + v40 + v28 * v39;
      v13 = v39;
      sub_23870F6FC(v41, v12, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF28, &unk_238767540);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v37;
      sub_23870F6FC(v7, v30 + v29, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      v31 = (v8[6] + 16 * v17);
      *v31 = v14;
      v31[1] = v15;
      *(v8[7] + 8 * v17) = v30;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v8[2] = v34;
      v13 = v39;
    }

    v11 += v13;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_23875F680();
  __break(1u);
  return result;
}

void *sub_23870E94C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB18, &unk_238770F50);
  MEMORY[0x28223BE20](v6 - 8);
  v107 = &v104 - v7;
  v8 = sub_238759D30();
  v108 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v104 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v104 - v15;
  v123 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v115 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v104 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  v114 = a3 & 1;
  sub_2387025A8(a1, v114);
  v25 = v24;
  v122 = 0;

  if (*(v25 + 16))
  {

LABEL_3:
    v26 = v122;
    goto LABEL_26;
  }

  v27 = v108;
  v113 = v23;
  v121 = v20;

  if (a2 >> 62)
  {
    v28 = sub_23875F3A0();
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_48:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_48;
  }

LABEL_6:
  v126[0] = MEMORY[0x277D84F90];
  result = sub_2385FECC0(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
    return result;
  }

  v30 = 0;
  v109 = a2 & 0xC000000000000001;
  v120 = v126[0];
  v105 = a2 + 32;
  v106 = v27 + 16;
  v31 = (v27 + 8);
  v110 = v28;
  v111 = v16;
  v32 = v121;
  v112 = a2;
  do
  {
    v119 = v30;
    if (v109)
    {
      v33 = MEMORY[0x23EE63F70]();
    }

    else
    {
      v33 = *(v105 + 8 * v30);
    }

    v34 = v33;
    v124 = v33;
    v35 = v123;
    v36 = *(v123 + 32);
    v37 = sub_23875B940();
    (*(*(v37 - 8) + 56))(&v32[v36], 1, 1, v37);
    v38 = v32;
    v39 = [v34 messageID];
    v40 = sub_23875EA80();
    v42 = v41;

    v38[8] = v40;
    v38[9] = v42;
    v43 = [v124 dateSent];
    sub_23875BBE0();

    v44 = v111;
    sub_238759670();
    sub_2384A475C(v44, v38 + v36);
    v45 = [v124 senderDomain];
    v46 = sub_23875EA80();
    v48 = v47;

    v49 = (v38 + *(v35 + 36));
    *v49 = v46;
    v49[1] = v48;
    v50 = [v124 fromEmailAddress];
    v51 = sub_23875EA80();
    v53 = v52;

    v38[10] = v51;
    v38[11] = v53;
    v54 = v124;
    v55 = [v124 fromEmailAddress];
    v56 = sub_23875EA80();
    v117 = v57;
    v118 = v56;

    v58 = [v54 fromDisplayName];
    if (v58)
    {
      v59 = v58;
      v116 = sub_23875EA80();
      v61 = v60;
    }

    else
    {
      v116 = 0;
      v61 = 0;
    }

    v62 = v122;
    v63 = [v54 subject];
    if (v63)
    {
      v64 = v63;
      v65 = sub_23875EA80();
      v67 = v66;
    }

    else
    {
      v65 = 0;
      v67 = 0;
    }

    v68 = v121;
    v69 = v117;
    *v121 = v118;
    v68[1] = v69;
    v68[2] = v116;
    v68[3] = v61;
    v68[4] = v65;
    v68[5] = v67;
    *(v68 + 56) = 2;
    v70 = sub_238759680();
    sub_23851EAE0(sub_2384A68C0, 0, v70);
    v72 = v71;
    v122 = v62;

    v73 = *(v72 + 16);
    v74 = sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98], MEMORY[0x277CC7CA0]);
    v75 = MEMORY[0x23EE63960](v73, v8, v74);
    v125 = v75;
    v76 = *(v72 + 16);
    if (v76)
    {
      v77 = *(v108 + 80);
      v118 = v72;
      v78 = v72 + ((v77 + 32) & ~v77);
      v79 = *(v108 + 72);
      v80 = *(v108 + 16);
      do
      {
        v80(v10, v78, v8);
        sub_238709120(v13, v10);
        (*v31)(v13, v8);
        v78 += v79;
        --v76;
      }

      while (v76);

      v81 = v125;
    }

    else
    {
      v81 = v75;
    }

    v82 = v113;
    v83 = v123;
    v84 = v121;
    *(v121 + *(v123 + 40)) = v81;
    v32 = v84;
    *(v84 + *(v83 + 44)) = v114;
    *(v84 + *(v83 + 48)) = 4;
    sub_23870F6FC(v84, v82, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v85 = v120;
    v126[0] = v120;
    v87 = *(v120 + 16);
    v86 = *(v120 + 24);
    if (v87 >= v86 >> 1)
    {
      sub_2385FECC0((v86 > 1), v87 + 1, 1);
      v32 = v121;
      v85 = v126[0];
    }

    v88 = v119 + 1;
    *(v85 + 16) = v87 + 1;
    v89 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v120 = v85;
    sub_23870F6FC(v82, v85 + v89 + *(v115 + 72) * v87, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v30 = v88;
  }

  while (v88 != v110);

  v26 = v122;
  v25 = v120;
LABEL_26:
  v90 = sub_23870E600(v25);
  v124 = v26;

  swift_getKeyPath(a8_7);
  v91 = 1 << *(v90 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & v90[8];
  v94 = (v91 + 63) >> 6;
  v95 = (v115 + 48);

  v96 = 0;
  v97 = MEMORY[0x277D84F90];
  while (1)
  {
    v98 = v96;
    if (!v93)
    {
      break;
    }

LABEL_33:
    v99 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v126[0] = *(v90[7] + ((v96 << 9) | (8 * v99)));

    v100 = v107;
    swift_getAtKeyPath();

    if ((*v95)(v100, 1, v123) == 1)
    {
      sub_238439884(v100, &qword_27DF0EB18, &unk_238770F50);
    }

    else
    {
      sub_23870F6FC(v100, v104, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_238498610(0, v97[2] + 1, 1, v97);
      }

      v102 = v97[2];
      v101 = v97[3];
      if (v102 >= v101 >> 1)
      {
        v97 = sub_238498610((v101 > 1), v102 + 1, 1, v97);
      }

      v97[2] = v102 + 1;
      sub_23870F6FC(v104, v97 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v102, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }
  }

  while (1)
  {
    v96 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v96 >= v94)
    {
      break;
    }

    v93 = v90[v96 + 8];
    ++v98;
    if (v93)
    {
      goto LABEL_33;
    }
  }

  if (v97[2])
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_42:
      v103 = v97[2];
      v126[0] = v97 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v126[1] = v103;
      sub_238706978(v126);
      return v97;
    }

LABEL_46:
    v97 = sub_23852F0F0(v97);
    goto LABEL_42;
  }

  return 0;
}

uint64_t sub_23870F348(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23870F45C()
{
  result = qword_27DF14EC8;
  if (!qword_27DF14EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EC0, &qword_238782490);
    sub_23870F4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14EC8);
  }

  return result;
}

unint64_t sub_23870F4F4()
{
  result = qword_27DF14ED0;
  if (!qword_27DF14ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14ED8, &unk_238782498);
    sub_238710C38(&qword_27DF14EE0, type metadata accessor for OrderDetailsRelatedEmailView, &unk_238767978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14ED0);
  }

  return result;
}

unint64_t sub_23870F5B0()
{
  result = qword_27DF14EF0;
  if (!qword_27DF14EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EA8, &qword_238782478);
    sub_23843A3E8(&qword_27DF14EF8, &qword_27DF14F00, &qword_2387824E0, MEMORY[0x277CDE5A0]);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14EF0);
  }

  return result;
}

uint64_t sub_23870F694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23870F6FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_34()
{
  v1 = (type metadata accessor for AllRelatedEmailsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C600();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23870F8B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AllRelatedEmailsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23870F944()
{
  result = qword_27DF14F58;
  if (!qword_27DF14F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F18, &qword_2387824F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EB8, &qword_238782488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EB0, &qword_238782480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EA8, &qword_238782478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EE8, &qword_2387824D8);
    sub_23870F5B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F08, &unk_2387824E8);
    sub_23843A3E8(&qword_27DF14F10, &qword_27DF14F08, &unk_2387824E8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2384397A8(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14F58);
  }

  return result;
}

void *sub_23870FB60(uint64_t a1)
{
  v2 = sub_238758520();
  MEMORY[0x28223BE20](v2);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v42 - v6;
  v7 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v5 + 16);
  v9 = v5 + 16;
  v44 = *(v9 + 64);
  v11 = *(v9 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v10;
  v12 = a1 + v47;
  v51 = (v9 + 16);
  v43 = xmmword_2387632F0;
  v45 = v2;
  v46 = v9;
  v50 = v11;
  while (1)
  {
    v52 = v8;
    v14 = v9;
    v48(v53, v12, v2);
    v18 = sub_238758510();
    v20 = v19;
    v22 = sub_23853B46C(v18, v19);
    v23 = v7[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v7[3] < v25)
    {
      sub_238548C88(v25, 1);
      v7 = v54;
      v27 = sub_23853B46C(v18, v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v7[7];
      v30 = *v51;
      (*v51)(v49, v53, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_23849865C(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_23849865C((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v46;
      v13 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v13 + v34 * v50;
      v2 = v45;
      v17 = v52;
      v30(v16, v49, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AFB8, &unk_238767600);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v53, v2);
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v37 = (v7[6] + 16 * v22);
      *v37 = v18;
      v37[1] = v20;
      *(v7[7] + 8 * v22) = v36;
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v7[2] = v40;
      v15 = v50;
      v17 = v52;
    }

    v12 += v15;
    v8 = v17 - 1;
    v9 = v14;
    if (!v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_23875F680();
  __break(1u);
  return result;
}

char *sub_23870FED4(uint64_t a1, int a2)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v74 - v4;
  v80 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F68, &qword_238782610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v74 - v8;
  v84 = sub_238758520();
  v10 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v17);
  v86 = &v74 - v18;
  v19 = sub_23870FB60(a1);

  KeyPath = swift_getKeyPath(byte_238782620);
  v88 = v19;
  v20 = v19 + 8;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19[8];
  v24 = (v21 + 63) >> 6;
  v25 = (v10 + 48);
  v83 = v10;
  v85 = (v10 + 32);

  v26 = 0;
  v76 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v26;
    if (!v23)
    {
      break;
    }

LABEL_8:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v89[0] = *(*(v88 + 7) + ((v26 << 9) | (8 * v28)));

    swift_getAtKeyPath();

    if ((*v25)(v9, 1, v84) == 1)
    {
      sub_238439884(v9, &qword_27DF14F68, &qword_238782610);
    }

    else
    {
      v77 = *v85;
      (v77)(v86, v9, v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_23849865C(0, v76[2] + 1, 1, v76);
      }

      v30 = v76[2];
      v29 = v76[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v74 = v30 + 1;
        v33 = sub_23849865C((v29 > 1), v30 + 1, 1, v76);
        v31 = v74;
        v76 = v33;
      }

      v32 = v76;
      v76[2] = v31;
      (v77)(v32 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v30, v86, v84);
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = v20[v26];
    ++v27;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  v89[0] = MEMORY[0x277D84F90];
  v34 = v76;
  v35 = v76[2];
  if (v35)
  {
    v36 = v84;
    v37 = *(v83 + 16);
    v38 = v76 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v86 = *(v83 + 72);
    KeyPath = v37;
    LODWORD(v85) = v75 & 1;
    v88 = (v83 + 16);
    v39 = (v83 + 8);
    do
    {
      KeyPath(v16, v38, v36);
      v40 = sub_238758480();
      MEMORY[0x28223BE20](v40);
      *(&v74 - 2) = v16;
      *(&v74 - 8) = v85;
      sub_23857F7D0(sub_23871073C, (&v74 - 4), v40);
      v42 = v41;

      (*v39)(v16, v36);
      sub_238569AF8(v42);
      v38 = &v86[v38];
      --v35;
    }

    while (v35);
    v16 = v89[0];
    v34 = v76;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v43 = v84;
  if (!*(v16 + 2))
  {
    v74 = 0;

    v45 = v34[2];
    if (v45)
    {
      v89[0] = MEMORY[0x277D84F90];
      sub_2385FECC0(0, v45, 0);
      v16 = v89[0];
      v46 = *(v83 + 16);
      v47 = v34 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v86 = *(v83 + 72);
      KeyPath = v46;
      v83 += 16;
      v85 = (v83 - 8);
      LODWORD(v77) = v75 & 1;
      do
      {
        v88 = v16;
        v48 = v78;
        v49 = KeyPath;
        KeyPath(v78, v47, v43);
        v50 = v79;
        v49(v79, v48, v43);
        v51 = v80;
        v52 = *(v80 + 32);
        v53 = sub_23875B940();
        (*(*(v53 - 8) + 56))(&v6[v52], 1, 1, v53);
        *(v6 + 8) = sub_238758510();
        *(v6 + 9) = v54;
        sub_238758500();
        v55 = v81;
        sub_2387583A0();
        sub_2384A475C(v55, &v6[v52]);
        v56 = sub_238758490();
        v57 = &v6[v51[9]];
        *v57 = v56;
        v57[1] = v58;
        *(v6 + 10) = sub_2387584C0();
        *(v6 + 11) = v59;
        v60 = sub_2387584C0();
        v62 = v61;
        v63 = sub_2387584B0();
        v65 = v64;
        v66 = sub_2387584F0();
        *v6 = v60;
        *(v6 + 1) = v62;
        *(v6 + 2) = v63;
        *(v6 + 3) = v65;
        v43 = v84;
        *(v6 + 4) = v66;
        *(v6 + 5) = v67;
        v6[56] = 2;
        v68 = sub_2387584D0();
        v69 = *v85;
        (*v85)(v50, v43);
        v69(v48, v43);
        *&v6[v51[10]] = v68;
        v6[v51[11]] = v77;
        v70 = v51[12];
        v16 = v88;
        v6[v70] = 4;
        v89[0] = v16;
        v72 = *(v16 + 2);
        v71 = *(v16 + 3);
        if (v72 >= v71 >> 1)
        {
          sub_2385FECC0((v71 > 1), v72 + 1, 1);
          v16 = v89[0];
        }

        *(v16 + 2) = v72 + 1;
        sub_23870F6FC(v6, &v16[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v72], type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v47 = &v86[v47];
        --v45;
      }

      while (v45);
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    if (!*(v16 + 2))
    {
      goto LABEL_32;
    }

LABEL_22:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v44 = *(v16 + 2);
      v89[0] = &v16[(*(v82 + 80) + 32) & ~*(v82 + 80)];
      v89[1] = v44;
      sub_238706978(v89);
      return v16;
    }

LABEL_35:
    v16 = sub_23852F0F0(v16);
    goto LABEL_23;
  }

  if (*(v16 + 2))
  {
    goto LABEL_22;
  }

LABEL_32:

  return 0;
}

unint64_t sub_238710774()
{
  result = qword_27DF14FA0;
  if (!qword_27DF14FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F88, &unk_238782668);
    sub_23871082C();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FA0);
  }

  return result;
}

unint64_t sub_23871082C()
{
  result = qword_27DF14FA8;
  if (!qword_27DF14FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F98, &qword_238782678);
    sub_2387108E4();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FA8);
  }

  return result;
}

unint64_t sub_2387108E4()
{
  result = qword_27DF14FB0;
  if (!qword_27DF14FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14FB8, &unk_2387826B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08EA8, &unk_238761D30);
    sub_23843A3E8(&qword_27DF14F90, &qword_27DF08EA8, &unk_238761D30, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_23870F4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FB0);
  }

  return result;
}

uint64_t sub_2387109EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_2387043E0(v2, v3, v4, v5);
}

uint64_t objectdestroy_49Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_238710B20()
{
  result = qword_27DF14FF8;
  if (!qword_27DF14FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14FD0, &qword_2387826F0);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FF8);
  }

  return result;
}

uint64_t sub_238710C38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_238710C80(uint64_t *a1)
{
  v2 = *(sub_238758680() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238491594(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_238715378(v5, MEMORY[0x277CC6F70], sub_238715DF0, sub_2387154C8);
  *a1 = v3;
}

void sub_238710D64(uint64_t *a1)
{
  v2 = *(sub_238759300() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2384915A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_238715378(v5, MEMORY[0x277CC7840], sub_238717074, sub_238715B2C);
  *a1 = v3;
}

uint64_t AppSettingsProvider.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AppSettingsProvider.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_238567F60;
}

uint64_t AppSettingsProvider.bundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double AppSettingsProvider.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id AppSettingsProvider.__allocating_init(bundleIdentifier:delegate:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_23871872C(a1, a2, a3, a4, a5, v5, ObjectType);
}

id AppSettingsProvider.init(bundleIdentifier:delegate:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_2387187A4(a1, a2, a3, a4, a5, v5);
}

id AppSettingsProvider.init(bundleIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_23875EA50();

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_23875EA80();
    v11 = sub_23875EA50();
  }

  v12 = [v4 initWithBundleIdentifier:v6 delegate:a3 localizedTitle:v11];

  swift_unknownObjectRelease();
  return v12;
}

void AppSettingsProvider.specifiers.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v45 - v3;
  v5 = sub_238758850();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v0[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  swift_beginAccess();

  sub_238758830();
  v10 = sub_23875A410();

  (*(v6 + 8))(v8, v5);
  if (!v10)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator;
  if (*&v0[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator])
  {

    sub_23875AA50();
  }

  v12 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers;
  v13 = *&v0[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers];
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!sub_23875F3A0())
  {
LABEL_6:
    v14 = sub_23875ED80();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_23875ED50();
    v15 = v0;
    v16 = sub_23875ED40();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_2386C3BA4(0, 0, v4, &unk_238782760, v17);
  }

LABEL_7:
  if (*&v1[v11])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_23875AA50();
  }

  v19 = *&v1[v12];
  if (v19 >> 62)
  {
    if (!sub_23875F3A0())
    {
      return;
    }
  }

  else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (!*&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle + 8])
  {
    goto LABEL_14;
  }

  v20 = objc_opt_self();
  v21 = sub_23875EA50();
  v22 = [v20 groupSpecifierWithName_];

  if (!v22)
  {
    __break(1u);
LABEL_14:
    v23 = objc_opt_self();
    v24 = sub_23875EA50();
    v22 = [v23 groupSpecifierWithID_];

    if (!v22)
    {
      __break(1u);
      return;
    }
  }

  v25 = *v9;
  v26 = v9[1];
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v27 = sub_2386CB5C4(v25, v26, 0);
  if (v27)
  {
    v28 = v27;
    v29 = [v27 localizedName];
    v30 = sub_23875EA80();
    v32 = v31;

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v33 = qword_2814F1B90;
    v34 = sub_23875EA50();
    v35 = sub_23875EA50();
    v36 = sub_23875EA50();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    sub_23875EA80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2387632F0;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_238448C58(v38, v39, v40);
    *(v38 + 32) = v30;
    *(v38 + 40) = v32;
    sub_23875EAB0();

    v41 = sub_23875EA50();

    [v22 setProperty:v41 forKey:*MEMORY[0x277D3FF88]];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_238763E70;
  *(v42 + 32) = v22;
  v45[1] = v42;

  sub_238569B24(v44, v43);
}

uint64_t sub_238711D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_23875ED50();
  v4[7] = sub_23875ED40();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_238711DB8;

  return sub_238712028();
}

uint64_t sub_238711DB8()
{
  *(*v1 + 72) = v0;

  v3 = sub_23875ECE0();
  if (v0)
  {
    v4 = sub_238711FBC;
  }

  else
  {
    v4 = sub_238711F14;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_238711F14()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong providerReloadSpecifiers_];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238711FBC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238712028()
{
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v1[14] = swift_task_alloc();
  v2 = sub_238757FD0();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = sub_23875BCB0();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_238757FC0();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_238758A00();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = sub_238758680();
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v7 = sub_238759300();
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238712384, 0, 0);
}

uint64_t sub_238712384()
{
  v1 = v0[13];
  v0[11] = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  v0[39] = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x277D84F98];

  sub_2387579D0();
  v0[40] = sub_2387579A0();
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_238712470;

  return MEMORY[0x282116E40]();
}

uint64_t sub_238712470(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_23871335C;
  }

  else
  {
    v4 = sub_2387125AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2387125AC()
{
  v114 = v0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  v76 = v2;
  if (v2)
  {
    v3 = *(v0 + 296);
    v4 = sub_238569FAC(v2, 0);
    sub_23856BD44(v113, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);
    v6 = v5;
    v7 = v113[0];
    swift_bridgeObjectRetain_n();
    sub_238434840(v7);
    if (v6 != v2)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 344);
  v112 = v4;
  sub_238710D64(&v112);
  if (v8)
  {

    return;
  }

  v9 = v112;
  v83 = v112[2];
  if (!v83)
  {

    v15 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v75 = *(v0 + 336);
  v82 = v1;
  v10 = 0;
  v11 = *(v0 + 296);
  v80 = v112 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v12 = *(v0 + 272);
  v13 = *(v0 + 240);
  v101 = (v13 + 8);
  v102 = (v13 + 104);
  v91 = (*(v0 + 216) + 8);
  v100 = (*(v0 + 192) + 8);
  v14 = *(v0 + 128);
  v98 = (v14 + 56);
  v99 = (v14 + 104);
  v84 = (v14 + 32);
  v90 = (v14 + 8);
  v96 = (v12 + 56);
  v103 = v12;
  v95 = (v12 + 8);
  v15 = MEMORY[0x277D84F90];
  v94 = *MEMORY[0x277CC7158];
  v89 = *MEMORY[0x277D3FE58];
  v81 = v11;
  v78 = v112;
  v79 = (v11 + 8);
  v87 = *MEMORY[0x277D40160];
  v88 = *MEMORY[0x277D40158];
  v93 = *MEMORY[0x277CC6D50];
  v86 = *MEMORY[0x277D3FF38];
  v92 = *(v0 + 144);
  v97 = (v14 + 48);
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_46;
    }

    v85 = v10;
    (*(v81 + 16))(*(v0 + 304), &v80[*(v81 + 72) * v10], *(v0 + 288));
    if (*(v82 + 16))
    {
      v16 = sub_238547C90(*(v0 + 304));
      if (v17)
      {
        break;
      }
    }

    (*v79)(*(v0 + 304), *(v0 + 288));
LABEL_10:
    v10 = v85 + 1;
    v9 = v78;
    if (v85 + 1 == v83)
    {

LABEL_40:
      v70 = *(v0 + 104);
      v71 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers;
      v72 = *(v70 + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers);

      v73 = sub_23851A150(v15, v72);

      if ((v73 & 1) == 0)
      {
        *(v70 + v71) = v15;
      }

      v74 = *(v0 + 8);

      v74();
      return;
    }
  }

  v113[0] = *(*(v75 + 56) + 8 * v16);
  swift_bridgeObjectRetain_n();
  sub_238710C80(v113);

  v18 = v113[0];
  v19 = objc_opt_self();
  sub_2387592F0();
  v20 = sub_23875EA50();

  v106 = v19;
  v21 = [v19 groupSpecifierWithID_];

  if (!v21)
  {
    goto LABEL_49;
  }

  if (v76 >= 2)
  {
    sub_2387592F0();
    v22 = sub_23875EA50();

    [v21 setName_];
  }

  v23 = v21;
  MEMORY[0x23EE63730]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23875EC90();
  }

  v77 = v23;
  sub_23875ECB0();
  v15 = *(v0 + 88);
  v24 = *(v18 + 16);
  swift_beginAccess();
  v105 = v24;
  if (!v24)
  {
LABEL_37:
    (*v79)(*(v0 + 304), *(v0 + 288));

    goto LABEL_10;
  }

  v25 = 0;
  v104 = v18;
  while (v25 < *(v18 + 16))
  {
    v26 = *(v0 + 104);
    v109 = v25;
    v27 = *(v103 + 16);
    v27(*(v0 + 280), v18 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v25, *(v0 + 264));
    sub_2387585B0();
    v28 = sub_23875EA50();

    v29 = [v106 preferenceSpecifierNamed:v28 target:v26 set:0 get:sel_accountLinked_ detail:0 cell:2 edit:0];

    if (!v29)
    {
      goto LABEL_48;
    }

    v108 = v27;
    v31 = *(v0 + 248);
    v30 = *(v0 + 256);
    v32 = *(v0 + 232);
    [v29 setButtonAction_];
    sub_238758580();
    (*v102)(v31, v94, v32);
    sub_238718A90(&unk_27DF0B400, MEMORY[0x277CC7180], MEMORY[0x277CC7198]);
    sub_23875EC40();
    sub_23875EC40();
    v33 = *v101;
    (*v101)(v31, v32);
    v33(v30, v32);
    if (*(v0 + 352) == *(v0 + 354))
    {
      v34 = *(v0 + 224);
      v35 = *(v0 + 208);
      *(v0 + 96) = sub_238449184(0, &qword_27DF15050, 0x277D3FB00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15058, &qword_2387827B8);
      [v29 setProperty:sub_23875F660() forKey:v89];
      swift_unknownObjectRelease();
      v36 = [objc_opt_self() secondaryLabelColor];
      [v29 setProperty:v36 forKey:v88];

      sub_2387585C0();
      sub_238757FB0();
      (*v91)(v34, v35);
      v37 = sub_23875EA50();

      [v29 setProperty:v37 forKey:v87];
    }

    v38 = *(v0 + 200);
    v39 = *(v0 + 184);
    v107 = *(v0 + 176);
    v40 = *(v0 + 168);
    v41 = *(v0 + 152);
    v42 = *(v0 + 120);
    sub_2387585B0();
    v43 = sub_23875EA50();

    v44 = sub_23875EA50();
    [v29 setProperty:v43 forKey:v44];

    sub_238758640();
    v45 = sub_23875BC60();
    (*v100)(v38, v39);
    v46 = sub_23875EA50();
    [v29 setProperty:v45 forKey:v46];

    v47 = sub_23875EA50();

    v48 = sub_23875EA50();
    [v29 setProperty:v47 forKey:v48];

    sub_2387585D0();
    (*v99)(v40, v93, v42);
    (*v98)(v40, 0, 1, v42);
    v49 = *(v92 + 48);
    sub_238718AD8(v107, v41);
    sub_238718AD8(v40, v41 + v49);
    v50 = *v97;
    v51 = (*v97)(v41, 1, v42);
    v52 = *(v0 + 120);
    v110 = v29;
    if (v51 == 1)
    {
      v53 = *(v0 + 176);
      sub_238439884(*(v0 + 168), &qword_27DF11628, &qword_238778B70);
      sub_238439884(v53, &qword_27DF11628, &qword_238778B70);
      if (v50(v41 + v49, 1, v52) == 1)
      {
        sub_238439884(*(v0 + 152), &qword_27DF11628, &qword_238778B70);
LABEL_32:
        v64 = sub_23875ECD0();
        [v110 setProperty:v64 forKey:v86];

        goto LABEL_33;
      }

      goto LABEL_30;
    }

    sub_238718AD8(*(v0 + 152), *(v0 + 160));
    v54 = v50(v41 + v49, 1, v52);
    v56 = *(v0 + 168);
    v55 = *(v0 + 176);
    v57 = *(v0 + 160);
    if (v54 == 1)
    {
      v58 = *(v0 + 120);
      sub_238439884(*(v0 + 168), &qword_27DF11628, &qword_238778B70);
      sub_238439884(v55, &qword_27DF11628, &qword_238778B70);
      (*v90)(v57, v58);
LABEL_30:
      sub_238439884(*(v0 + 152), &qword_27DF11620, &qword_238778B68);
      goto LABEL_33;
    }

    v59 = *(v0 + 152);
    v60 = *(v0 + 136);
    v61 = *(v0 + 120);
    (*v84)(v60, v41 + v49, v61);
    sub_238718A90(&qword_27DF11630, MEMORY[0x277CC6D60], MEMORY[0x277CC6D68]);
    v62 = sub_23875E9E0();
    v63 = *v90;
    (*v90)(v60, v61);
    sub_238439884(v56, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v55, &qword_27DF11628, &qword_238778B70);
    v63(v57, v61);
    sub_238439884(v59, &qword_27DF11628, &qword_238778B70);
    if (v62)
    {
      goto LABEL_32;
    }

LABEL_33:
    v65 = v110;
    MEMORY[0x23EE63730]();
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23875EC90();
    }

    v25 = v109 + 1;
    v66 = *(v0 + 280);
    v67 = *(v0 + 264);
    v68 = *(v0 + 112);
    sub_23875ECB0();
    v111 = v65;
    v69 = *(v0 + 88);
    v108(v68, v66, v67);
    (*v96)(v68, 0, 1, v67);
    swift_beginAccess();
    sub_2386C4464(v68, v111);
    swift_endAccess();
    (*v95)(v66, v67);
    v18 = v104;
    if (v105 == v109 + 1)
    {
      v15 = v69;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_23871335C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_23871345C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_23875ED80();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_23875ED50();

  v6 = sub_23875ED40();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_2386C3BA4(0, 0, v4, &unk_2387827C8, v7);

  return result;
}

uint64_t sub_238713580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_23875ED50();
  *(v4 + 72) = sub_23875ED40();
  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238713618, v6, v5);
}

uint64_t sub_238713618()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      [v4 providerReloadSpecifiers_];
      swift_unknownObjectRelease();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_238713790(void *a1)
{
  v2 = v1;
  v104 = a1;
  v3 = sub_23875C1E0();
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v88 - v9;
  v10 = sub_23875BC40();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v92 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BCB0();
  v98 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238758850();
  v97 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v88 - v19;
  v21 = sub_2387587E0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v96 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_238758680();
  MEMORY[0x28223BE20](v24);
  v28 = *&v2[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator];
  if (!v28)
  {
    sub_23875C120();
    v47 = sub_23875C1B0();
    v48 = sub_23875EFE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2383F8000, v47, v48, "Expected store coordinator", v49, 2u);
      MEMORY[0x23EE64DF0](v49, -1, -1);
    }

    (*(v102 + 8))(v5, v103);
    return 0;
  }

  v88 = v22;
  v89 = v21;
  v90 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v27;
  v99 = v25;
  v29 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  swift_beginAccess();
  v30 = *&v2[v29];
  v31 = *(v30 + 16);
  v100 = v28;

  if (!v31 || (v32 = sub_238547BE0(v104), (v33 & 1) == 0))
  {
    swift_endAccess();
    v34 = v101;
    sub_23875C120();
    v35 = v104;
    v36 = v2;
    v37 = sub_23875C1B0();
    v38 = sub_23875EFE0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v105[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
      sub_238718A28();
      v42 = v35;

      v43 = sub_23875E930();
      v45 = v44;

      v46 = sub_2384615AC(v43, v45, v105);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_2383F8000, v37, v38, "Inconsistent state for specifier: %@ dict: %s", v39, 0x16u);
      sub_238439884(v40, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x23EE64DF0](v41, -1, -1);
      MEMORY[0x23EE64DF0](v39, -1, -1);
    }

    (*(v102 + 8))(v34, v103);
    return 0;
  }

  (*(v91 + 16))(v90, *(v30 + 56) + *(v91 + 72) * v32, v99);
  swift_endAccess();
  swift_beginAccess();

  sub_238758830();
  sub_238758640();
  sub_23875AA60();
  v51 = v99;
  (*(v98 + 8))(v14, v12);
  (*(v97 + 8))(v17, v15);
  v53 = v88;
  v52 = v89;
  if ((*(v88 + 48))(v20, 1, v89) == 1)
  {
    sub_238439884(v20, &qword_27DF0B328, &qword_238768050);
    v54 = v51;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v55 = qword_2814F1B90;
    v56 = sub_23875EA50();
    v57 = sub_23875EA50();
    v58 = sub_23875EA50();
    v59 = [v55 localizedStringForKey:v56 value:v57 table:v58];

    v60 = sub_23875EA80();

    (*(v91 + 8))(v90, v54);
    return v60;
  }

  v61 = v96;
  (*(v53 + 32))(v96, v20, v52);
  if (sub_2387587D0())
  {
    v62 = v51;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v63 = qword_2814F1B90;
    v64 = sub_23875EA50();
    v65 = sub_23875EA50();
    v66 = sub_23875EA50();
    v67 = [v63 localizedStringForKey:v64 value:v65 table:v66];

    v60 = sub_23875EA80();

    (*(v53 + 8))(v61, v52);
    (*(v91 + 8))(v90, v62);
    return v60;
  }

  v68 = v93;
  sub_2387587B0();
  v70 = v94;
  v69 = v95;
  if ((*(v94 + 48))(v68, 1, v95) == 1)
  {

    (*(v53 + 8))(v61, v52);
    (*(v91 + 8))(v90, v51);
    sub_238439884(v68, &qword_27DF12E00, &unk_238763FC0);
    return 0;
  }

  v71 = v92;
  (*(v70 + 32))(v92, v68, v69);
  v72 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v72 setDateStyle_];
  [v72 setTimeStyle_];
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v73 = qword_2814F1B90;
  v74 = sub_23875EA50();
  v75 = sub_23875EA50();
  v76 = sub_23875EA50();
  v77 = [v73 localizedStringForKey:v74 value:v75 table:v76];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_2387632F0;
  v79 = sub_23875BB40();
  v80 = [v72 stringFromDate_];

  v81 = sub_23875EA80();
  v83 = v82;

  *(v78 + 56) = MEMORY[0x277D837D0];
  *(v78 + 64) = sub_238448C58(v84, v85, v86);
  *(v78 + 32) = v81;
  *(v78 + 40) = v83;
  v87 = sub_23875EAB0();

  (*(v70 + 8))(v71, v95);
  (*(v88 + 8))(v61, v89);
  (*(v91 + 8))(v90, v99);
  return v87;
}

id AppSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238714698(uint64_t a1, uint64_t a2)
{
  v4 = sub_238757FC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2387585B0();
  v10 = v9;
  v43[3] = a2;
  if (v8 == sub_2387585B0() && v10 == v11)
  {

    goto LABEL_5;
  }

  v12 = sub_23875F630();

  if (v12)
  {
LABEL_5:
    v43[1] = v2;
    sub_2387585C0();
    v13 = sub_238757FB0();
    v15 = v14;
    v16 = *(v5 + 8);
    v16(v7, v4);
    v17 = sub_238718B48(4uLL, v13, v15);
    v43[0] = v18;
    v20 = v19;
    v22 = v21;

    sub_2387585C0();
    v23 = sub_238757FB0();
    v25 = v24;
    v16(v7, v4);
    v26 = sub_238718B48(4uLL, v23, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    if (v20 != v30 || v22 != v32 || v17 >> 16 != v26 >> 16 || v43[0] >> 16 != v28 >> 16)
    {
      v36 = sub_23875F5F0();

      return v36 & 1;
    }

LABEL_18:

    v36 = 0;
    return v36 & 1;
  }

  v37 = sub_2387585B0();
  v39 = v38;
  if (v37 == sub_2387585B0() && v39 == v40)
  {
    goto LABEL_18;
  }

  v42 = sub_23875F630();

  return v42 & 1;
}

uint64_t sub_238714984(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v52 - v8;
  v9 = sub_238758A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238758680();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  swift_beginAccess();
  v55 = v2;
  v18 = *(v2 + v17);
  if (!*(v18 + 16) || (v19 = sub_238547BE0(a1), (v20 & 1) == 0))
  {
    swift_endAccess();
    sub_23875C120();
    v24 = a1;
    v25 = sub_23875C1B0();
    v26 = sub_23875EFE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_2383F8000, v25, v26, "Could not find account for specifier: %@ in handleAccountTap.", v27, 0xCu);
      sub_238439884(v28, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v28, -1, -1);
      MEMORY[0x23EE64DF0](v27, -1, -1);
    }

    (*(v53 + 8))(v6, v54);
LABEL_8:
    v23 = 55;
    goto LABEL_9;
  }

  (*(v14 + 16))(v16, *(v18 + 56) + *(v14 + 72) * v19, v13);
  swift_endAccess();
  sub_238758580();
  v21 = v10;
  v22 = (*(v10 + 88))(v12, v9);
  if (v22 != *MEMORY[0x277CC7158])
  {
    if (v22 == *MEMORY[0x277CC7170])
    {
      (*(v14 + 8))(v16, v13);
      v23 = 50;
      goto LABEL_9;
    }

    if (v22 == *MEMORY[0x277CC7178])
    {
      (*(v14 + 8))(v16, v13);
      v23 = 51;
      goto LABEL_9;
    }

    if (v22 == *MEMORY[0x277CC7168])
    {
      (*(v14 + 8))(v16, v13);
      v23 = 52;
      goto LABEL_9;
    }

    v46 = v52;
    sub_23875C120();
    v47 = sub_23875C1B0();
    v48 = sub_23875EFE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = v48;
      v51 = v49;
      _os_log_impl(&dword_2383F8000, v47, v50, "Unknown account originType for analytics.", v49, 2u);
      MEMORY[0x23EE64DF0](v51, -1, -1);
    }

    (*(v53 + 8))(v46, v54);
    (*(v14 + 8))(v16, v13);
    (*(v21 + 8))(v12, v9);
    goto LABEL_8;
  }

  (*(v14 + 8))(v16, v13);
  v23 = 53;
LABEL_9:
  v30 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v32 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v33;
  v34 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = sub_23844B4DC(v23);
  *(inited + 72) = v35;
  v36 = *MEMORY[0x277D384B8];
  *(inited + 80) = *MEMORY[0x277D384B8];
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x8000000238785020;
  v37 = v32;
  v38 = v34;
  v39 = v36;
  v40 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v40;
  sub_2385C33E4(v30, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v56);

  v42 = *MEMORY[0x277D38568];
  v43 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238718A90(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v44 = sub_23875E910();

  [v43 subject:v42 sendEvent:v44];

  return sub_238715064(a1);
}

uint64_t sub_238715064(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 navigationController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for SingleAccountSharingChoiceController(0);
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v9 setSpecifier_];
        if ([v8 _pk_settings_useStateDrivenNavigation])
        {
          [v8 _pk_settings_pushViewController_];
        }

        else
        {
          [v8 pushViewController:v9 animated:1];
        }

        return swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  sub_23875C120();
  v10 = sub_23875C1B0();
  v11 = sub_23875EFE0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2383F8000, v10, v11, "Could not navigate: Missing detail controller class, delegate, or navigation controller.", v12, 2u);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_238715378(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_23875F5E0();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_23875ECA0();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_2387154C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v89 = sub_238757FC0();
  v8 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v88 = &v78[-v11];
  v12 = sub_238758680();
  MEMORY[0x28223BE20](v12);
  v93 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v101 = &v78[-v15];
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v20 = &v78[-v19];
  v80 = a2;
  if (a3 == a2)
  {
    return;
  }

  v21 = *a4;
  v23 = *(v17 + 16);
  v22 = v17 + 16;
  v24 = *(v22 + 56);
  v25 = (v8 + 8);
  v94 = (v22 - 8);
  v95 = v23;
  v96 = v22;
  v91 = (v22 + 16);
  v92 = v21;
  v26 = v21 + v24 * (a3 - 1);
  v90 = -v24;
  v27 = a1 - a3;
  v79 = v24;
  v28 = v21 + v24 * a3;
  v85 = v20;
  v86 = v12;
LABEL_7:
  v83 = v26;
  v84 = a3;
  v81 = v28;
  v82 = v27;
  v31 = v27;
  v102 = v26;
  while (1)
  {
    v100 = v31;
    v32 = v95;
    (v95)(v20, v28, v12, v18);
    v32(v101, v102, v12);
    v33 = sub_2387585B0();
    v35 = v34;
    if (v33 == sub_2387585B0() && v35 == v36)
    {
    }

    else
    {
      v37 = sub_23875F630();

      if ((v37 & 1) == 0)
      {
        v68 = sub_2387585B0();
        v70 = v69;
        v29 = v101;
        if (v68 == sub_2387585B0() && v70 == v71)
        {
          goto LABEL_5;
        }

        v67 = sub_23875F630();
        goto LABEL_32;
      }
    }

    v97 = v28;
    v38 = v88;
    sub_2387585C0();
    v39 = sub_238757FB0();
    v41 = v40;
    v42 = *v25;
    v43 = v89;
    (*v25)(v38, v89);
    v44 = v25;
    if ((v41 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v41) & 0xF;
    }

    else
    {
      v45 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v46 = sub_23875EB60();
    if (v47)
    {
      v46 = 15;
    }

    if (4 * v45 < v46 >> 14)
    {
      break;
    }

    v48 = sub_23875EC00();
    v98 = v49;
    v99 = v50;
    v52 = v51;

    v53 = v87;
    sub_2387585C0();
    v54 = sub_238757FB0();
    v56 = v55;
    v42(v53, v43);
    if ((v56 & 0x2000000000000000) != 0)
    {
      v57 = HIBYTE(v56) & 0xF;
    }

    else
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    v58 = sub_23875EB60();
    if (v59)
    {
      v58 = 15;
    }

    if (4 * v57 < v58 >> 14)
    {
      goto LABEL_38;
    }

    v60 = sub_23875EC00();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    if (v52 == v64 && v99 == v66 && v48 >> 16 == v60 >> 16 && v98 >> 16 == v62 >> 16)
    {
      v20 = v85;
      v12 = v86;
      v29 = v101;
      v25 = v44;
LABEL_5:

      v30 = *v94;
      (*v94)(v29, v12);
      v30(v20, v12);
LABEL_6:
      a3 = v84 + 1;
      v26 = v83 + v79;
      v27 = v82 - 1;
      v28 = v81 + v79;
      if (v84 + 1 == v80)
      {
        return;
      }

      goto LABEL_7;
    }

    v67 = sub_23875F5F0();
    v20 = v85;
    v12 = v86;
    v29 = v101;
    v25 = v44;
    v28 = v97;
LABEL_32:

    v72 = *v94;
    (*v94)(v29, v12);
    v72(v20, v12);
    v73 = v100;
    if (v67)
    {
      if (!v92)
      {
        goto LABEL_39;
      }

      v74 = *v91;
      v75 = v93;
      (*v91)(v93, v28, v12);
      v76 = v102;
      swift_arrayInitWithTakeFrontToBack();
      v74(v76, v75, v12);
      v102 = v76 + v90;
      v28 += v90;
      v77 = __CFADD__(v73, 1);
      v31 = v73 + 1;
      if (!v77)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238715B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_238759300();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840], MEMORY[0x277CC7850]);
      v26 = sub_23875E9A0();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_238715DF0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v195 = a4;
  v191 = a1;
  v5 = sub_238757FC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v209 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v210 = &v189 - v9;
  MEMORY[0x28223BE20](v10);
  v200 = &v189 - v11;
  MEMORY[0x28223BE20](v12);
  v201 = &v189 - v13;
  v14 = sub_238758680();
  MEMORY[0x28223BE20](v14);
  v196 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v215 = &v189 - v17;
  MEMORY[0x28223BE20](v18);
  v227 = &v189 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v189 - v21;
  MEMORY[0x28223BE20](v23);
  v207 = &v189 - v24;
  MEMORY[0x28223BE20](v25);
  v208 = &v189 - v26;
  MEMORY[0x28223BE20](v27);
  v32.n128_f64[0] = MEMORY[0x28223BE20](v28);
  v204 = a3;
  v33 = *(a3 + 8);
  v203 = v31;
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_152:
    a3 = *v191;
    if (!*v191)
    {
      goto LABEL_198;
    }

    v6 = v35;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v181 = v6;
      goto LABEL_155;
    }

LABEL_192:
    v181 = sub_238490ED4(v6);
LABEL_155:
    v228 = v181;
    v6 = *(v181 + 2);
    v182 = v203;
    if (v6 >= 2)
    {
      while (*v204)
      {
        v183 = *&v181[16 * v6];
        v184 = v181;
        v185 = *&v181[16 * v6 + 24];
        v186 = v206;
        sub_238717A9C(&(*v204)[*(v182 + 72) * v183], &(*v204)[*(v182 + 72) * *&v181[16 * v6 + 16]], &(*v204)[*(v182 + 72) * v185], a3);
        v206 = v186;
        if (v186)
        {
          goto LABEL_166;
        }

        if (v185 < v183)
        {
          goto LABEL_185;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_238490ED4(v184);
        }

        if (v6 - 2 >= *(v184 + 2))
        {
          goto LABEL_186;
        }

        v187 = &v184[16 * v6];
        *v187 = v183;
        *(v187 + 1) = v185;
        v228 = v184;
        sub_238490E48(v6 - 1);
        v181 = v228;
        v6 = *(v228 + 2);
        v182 = v203;
        if (v6 <= 1)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_196;
    }

    goto LABEL_166;
  }

  v189 = &v189 - v29;
  v190 = v30;
  v34 = 0;
  v220 = (v31 + 8);
  v221 = v31 + 16;
  v211 = (v6 + 8);
  v218 = (v31 + 32);
  v35 = MEMORY[0x277D84F90];
  v219 = v5;
  v217 = v14;
  v212 = v22;
  while (1)
  {
    v36 = v34 + 1;
    v197 = v35;
    v192 = v34;
    if (v34 + 1 >= v33)
    {
      v46 = v34 + 1;
      v82 = v195;
      goto LABEL_53;
    }

    v37 = v34;
    v205 = v33;
    v38 = *v204;
    v39 = *(v31 + 72);
    v40 = *(v31 + 16);
    v41 = v189;
    v224 = &(*v204)[v39 * v36];
    v40(v189, v32);
    v226 = v38;
    v42 = &v38[v39 * v37];
    v6 = v190;
    v213 = v40;
    (v40)(v190, v42, v14);
    v43 = v206;
    LODWORD(v216) = sub_238714698(v41, v6);
    v206 = v43;
    if (v43)
    {
      v188 = *v220;
      (*v220)(v6, v14);
      v188(v41, v14);
LABEL_166:

      return;
    }

    a3 = *v220;
    (*v220)(v6, v14);
    v202 = a3;
    (a3)(v41, v14);
    v44 = (v37 + 2);
    v45 = &v226[v39 * (v37 + 2)];
    v46 = v205;
    v214 = v39;
    v47 = v224;
    while (v46 != v44)
    {
      v225 = v45;
      v226 = v44;
      v49 = v213;
      (v213)(v208);
      v49(v207, v47, v14);
      v50 = sub_2387585B0();
      v52 = v51;
      if (v50 == sub_2387585B0() && v52 == v53)
      {

LABEL_15:
        v224 = v47;
        v55 = v201;
        sub_2387585C0();
        v6 = sub_238757FB0();
        a3 = v56;
        v57 = *v211;
        (*v211)(v55, v5);
        if ((a3 & 0x2000000000000000) != 0)
        {
          v58 = HIBYTE(a3) & 0xF;
        }

        else
        {
          v58 = v6 & 0xFFFFFFFFFFFFLL;
        }

        v59 = sub_23875EB60();
        if (v60)
        {
          v59 = 15;
        }

        if (4 * v58 < v59 >> 14)
        {
          goto LABEL_172;
        }

        v61 = sub_23875EC00();
        v222 = v62;
        v223 = v63;
        v65 = v64;

        v66 = v200;
        sub_2387585C0();
        v6 = sub_238757FB0();
        a3 = v67;
        v57(v66, v5);
        if ((a3 & 0x2000000000000000) != 0)
        {
          v68 = HIBYTE(a3) & 0xF;
        }

        else
        {
          v68 = v6 & 0xFFFFFFFFFFFFLL;
        }

        v69 = sub_23875EB60();
        if (v70)
        {
          v69 = 15;
        }

        if (4 * v68 < v69 >> 14)
        {
          goto LABEL_173;
        }

        v71 = sub_23875EC00();
        v73 = v72;
        v75 = v74;
        v77 = v76;

        if (v65 == v75 && v223 == v77 && v61 >> 16 == v71 >> 16 && v222 >> 16 == v73 >> 16)
        {
          a3 = 0;
        }

        else
        {
          a3 = sub_23875F5F0();
        }

        v5 = v219;
        v14 = v217;
        v22 = v212;
        v46 = v205;
        v39 = v214;
        v47 = v224;
        goto LABEL_9;
      }

      v54 = sub_23875F630();

      if (v54)
      {
        goto LABEL_15;
      }

      v78 = sub_2387585B0();
      v80 = v79;
      if (v78 == sub_2387585B0() && v80 == v81)
      {
        a3 = 0;
      }

      else
      {
        a3 = sub_23875F630();
      }

      v46 = v205;
LABEL_9:

      v6 = v220;
      v48 = v202;
      (v202)(v207, v14);
      v48(v208, v14);
      v44 = v226 + 1;
      v45 = &v39[v225];
      v47 += v39;
      if ((v216 ^ a3))
      {
        v46 = v226;
        break;
      }
    }

    v31 = v203;
    v82 = v195;
    v83 = v197;
    if ((v216 & 1) == 0)
    {
      goto LABEL_53;
    }

    if (v46 < v192)
    {
      goto LABEL_191;
    }

    if (v192 < v46)
    {
      v6 = v39 * (v46 - 1);
      v84 = v46 * v39;
      v205 = v46;
      v85 = v192;
      v86 = v192 * v39;
      do
      {
        if (v85 != --v46)
        {
          v88 = *v204;
          if (!*v204)
          {
            goto LABEL_195;
          }

          a3 = &v88[v86];
          v89 = *v218;
          (*v218)(v196, &v88[v86], v217, v83);
          if (v86 < v6 || a3 >= &v88[v84])
          {
            v87 = v217;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v87 = v217;
            if (v86 != v6)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v89(&v88[v6], v196, v87);
          v31 = v203;
          v82 = v195;
          v5 = v219;
          v83 = v197;
          v39 = v214;
        }

        ++v85;
        v6 -= v39;
        v84 -= v39;
        v86 += v39;
      }

      while (v85 < v46);
      v14 = v217;
      v22 = v212;
      v46 = v205;
    }

LABEL_53:
    v90 = v204[1];
    if (v46 < v90)
    {
      if (__OFSUB__(v46, v192))
      {
        goto LABEL_188;
      }

      if (v46 - v192 < v82)
      {
        break;
      }
    }

LABEL_62:
    v34 = v46;
LABEL_63:
    v92 = v192;
    if (v34 < v192)
    {
      goto LABEL_187;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v35 = v197;
    }

    else
    {
      v35 = sub_238490EE8(0, *(v197 + 2) + 1, 1, v197);
    }

    a3 = *(v35 + 2);
    v93 = *(v35 + 3);
    v6 = a3 + 1;
    v31 = v203;
    if (a3 >= v93 >> 1)
    {
      v180 = sub_238490EE8((v93 > 1), a3 + 1, 1, v35);
      v31 = v203;
      v35 = v180;
    }

    *(v35 + 2) = v6;
    v94 = &v35[16 * a3];
    *(v94 + 4) = v92;
    *(v94 + 5) = v34;
    v95 = *v191;
    if (!*v191)
    {
      goto LABEL_197;
    }

    if (a3)
    {
      while (1)
      {
        v96 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v97 = *(v35 + 4);
          v98 = *(v35 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_83:
          if (v100)
          {
            goto LABEL_176;
          }

          v113 = &v35[16 * v6];
          v115 = *v113;
          v114 = *(v113 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_179;
          }

          v119 = &v35[16 * v96 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v107 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v107)
          {
            goto LABEL_182;
          }

          if (__OFADD__(v117, v122))
          {
            goto LABEL_183;
          }

          if (v117 + v122 >= v99)
          {
            if (v99 < v122)
            {
              v96 = v6 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v123 = &v35[16 * v6];
        v125 = *v123;
        v124 = *(v123 + 1);
        v107 = __OFSUB__(v124, v125);
        v117 = v124 - v125;
        v118 = v107;
LABEL_97:
        if (v118)
        {
          goto LABEL_178;
        }

        v126 = &v35[16 * v96];
        v128 = *(v126 + 4);
        v127 = *(v126 + 5);
        v107 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v107)
        {
          goto LABEL_181;
        }

        if (v129 < v117)
        {
          goto LABEL_3;
        }

LABEL_104:
        a3 = v96 - 1;
        if (v96 - 1 >= v6)
        {
          goto LABEL_169;
        }

        if (!*v204)
        {
          goto LABEL_194;
        }

        v134 = v35;
        v6 = *&v35[16 * a3 + 32];
        v135 = *&v35[16 * v96 + 40];
        v136 = v206;
        sub_238717A9C(&(*v204)[*(v31 + 72) * v6], &(*v204)[*(v31 + 72) * *&v35[16 * v96 + 32]], &(*v204)[*(v31 + 72) * v135], v95);
        v206 = v136;
        if (v136)
        {
          goto LABEL_166;
        }

        if (v135 < v6)
        {
          goto LABEL_170;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_238490ED4(v134);
        }

        if (a3 >= *(v134 + 2))
        {
          goto LABEL_171;
        }

        v137 = &v134[16 * a3];
        *(v137 + 4) = v6;
        *(v137 + 5) = v135;
        v228 = v134;
        sub_238490E48(v96);
        v35 = v228;
        v6 = *(v228 + 2);
        v31 = v203;
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v101 = &v35[16 * v6 + 32];
      v102 = *(v101 - 64);
      v103 = *(v101 - 56);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_174;
      }

      v106 = *(v101 - 48);
      v105 = *(v101 - 40);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_175;
      }

      v108 = &v35[16 * v6];
      v110 = *v108;
      v109 = *(v108 + 1);
      v107 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v107)
      {
        goto LABEL_177;
      }

      v107 = __OFADD__(v99, v111);
      v112 = v99 + v111;
      if (v107)
      {
        goto LABEL_180;
      }

      if (v112 >= v104)
      {
        v130 = &v35[16 * v96 + 32];
        v132 = *v130;
        v131 = *(v130 + 1);
        v107 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v107)
        {
          goto LABEL_184;
        }

        if (v99 < v133)
        {
          v96 = v6 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v33 = v204[1];
    v5 = v219;
    v22 = v212;
    if (v34 >= v33)
    {
      goto LABEL_152;
    }
  }

  if (__OFADD__(v192, v82))
  {
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  if (v192 + v82 >= v90)
  {
    v91 = v204[1];
  }

  else
  {
    v91 = v192 + v82;
  }

  if (v91 < v192)
  {
    goto LABEL_190;
  }

  if (v46 == v91)
  {
    goto LABEL_62;
  }

  v138 = *v204;
  v139 = *(v31 + 72);
  v216 = *(v31 + 16);
  v140 = &v138[v139 * (v46 - 1)];
  v213 = -v139;
  v141 = v192 - v46;
  v214 = v138;
  v193 = v139;
  v142 = &v138[v46 * v139];
  v194 = v91;
  while (2)
  {
    v205 = v46;
    v198 = v142;
    v143 = v142;
    v199 = v141;
    v144 = v141;
    v202 = v140;
LABEL_117:
    v145 = v216;
    (v216)(v22, v143, v14, v32);
    v226 = v140;
    v145(v227, v140, v14);
    v146 = sub_2387585B0();
    v148 = v147;
    if (v146 == sub_2387585B0() && v148 == v149)
    {

      goto LABEL_121;
    }

    v150 = sub_23875F630();

    if ((v150 & 1) == 0)
    {
      v174 = sub_2387585B0();
      v176 = v175;
      if (v174 == sub_2387585B0() && v176 == v177)
      {
        goto LABEL_147;
      }

      a3 = sub_23875F630();
      goto LABEL_141;
    }

LABEL_121:
    v223 = v144;
    v151 = v210;
    sub_2387585C0();
    a3 = sub_238757FB0();
    v6 = v152;
    v153 = *v211;
    (*v211)(v151, v5);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v154 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v154 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v155 = sub_23875EB60();
    if (v156)
    {
      v155 = 15;
    }

    if (4 * v154 < v155 >> 14)
    {
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
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
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
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    v222 = v143;
    v157 = sub_23875EC00();
    v224 = v158;
    v225 = v159;
    v161 = v160;

    v162 = v209;
    sub_2387585C0();
    v6 = sub_238757FB0();
    a3 = v163;
    v153(v162, v5);
    if ((a3 & 0x2000000000000000) != 0)
    {
      v164 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v164 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v165 = sub_23875EB60();
    if (v166)
    {
      v165 = 15;
    }

    if (4 * v164 < v165 >> 14)
    {
      goto LABEL_168;
    }

    v167 = sub_23875EC00();
    v169 = v168;
    v171 = v170;
    v173 = v172;

    if (v161 == v171 && v225 == v173 && v157 >> 16 == v167 >> 16 && v224 >> 16 == v169 >> 16)
    {
      v5 = v219;
      v14 = v217;
      v22 = v212;
LABEL_147:

      v6 = v220;
      a3 = *v220;
      (*v220)(v227, v14);
      (a3)(v22, v14);
LABEL_115:
      v46 = v205 + 1;
      v140 = &v202[v193];
      v141 = v199 - 1;
      v142 = &v198[v193];
      v34 = v194;
      if (v205 + 1 == v194)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  a3 = sub_23875F5F0();
  v14 = v217;
  v22 = v212;
  v143 = v222;
  v144 = v223;
LABEL_141:

  v6 = *v220;
  (*v220)(v227, v14);
  (v6)(v22, v14);
  if ((a3 & 1) == 0)
  {
    v5 = v219;
    goto LABEL_115;
  }

  if (v214)
  {
    a3 = *v218;
    v6 = v215;
    (*v218)(v215, v143, v14);
    v178 = v226;
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v178, v6, v14);
    v140 = &v178[v213];
    v143 += v213;
    v179 = __CFADD__(v144++, 1);
    v5 = v219;
    if (v179)
    {
      goto LABEL_115;
    }

    goto LABEL_117;
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
}

void sub_238717074(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_238759300();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_238490ED4(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_238718138(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_238490ED4(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_238490E48(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840], MEMORY[0x277CC7850]);
      LODWORD(v133) = sub_23875E9A0();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_23875E9A0() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_238490EE8(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_238490EE8((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_238718138(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_238490ED4(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_238490E48(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840], MEMORY[0x277CC7850]);
    v109 = sub_23875E9A0();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_238717A9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_238758680();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v13;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_238714698(v37, v50);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = v16;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_238714698(v30, v31);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_238709008(&v79, &v78, &v77);
}

void sub_238718138(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_238759300();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840], MEMORY[0x277CC7850]);
          LOBYTE(v34) = sub_23875E9A0();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840], MEMORY[0x277CC7850]);
        LOBYTE(v21) = sub_23875E9A0();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_238709020(&v54, &v53, &v52);
}

id sub_23871872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class a6, uint64_t a7)
{
  v12 = objc_allocWithZone(a6);

  return sub_2387187A4(a1, a2, a3, a4, a5, v12);
}

id sub_2387187A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_authorizationStateManager;
  v20[3] = sub_2387588D0();
  v20[4] = MEMORY[0x277CC70E0];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_2387588C0();
  sub_23875A460();
  swift_allocObject();
  *&a6[v12] = sub_23875A420();
  v13 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator;
  sub_23875AA80();
  swift_allocObject();
  *&a6[v13] = sub_23875AA70();
  v14 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  v15 = MEMORY[0x277D84F90];
  *&a6[v14] = sub_23854C324(MEMORY[0x277D84F90]);
  *&a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers] = v15;
  v16 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  *v16 = a1;
  *(v16 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v17 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle];
  *v17 = a4;
  *(v17 + 1) = a5;
  v19.receiver = a6;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_238718924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_238711D08(a1, v4, v5, v6);
}

unint64_t sub_238718A28()
{
  result = qword_27DF15048;
  if (!qword_27DF15048)
  {
    sub_238449184(255, &qword_27DF0AE38, 0x277D3FAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15048);
  }

  return result;
}

uint64_t sub_238718A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238718AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238718B48(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_23875EB60();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_23875EC00();
}

uint64_t sub_238718C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238713580(a1, v4, v5, v6);
}

uint64_t sub_238718CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  return v1;
}

uint64_t sub_238718D28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF151D8, &unk_238782AC8);
  sub_23875E310();
  return v1;
}

double TransactionPicker.init(selection:label:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  sub_23875E1A0();
  *a7 = v17;
  *(a7 + 8) = v18;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  type metadata accessor for TransactionPicker(0, a5, a6, v14);

  a4(v15);

  return result;
}

uint64_t TransactionPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = sub_23875E240();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
  v45 = v11;
  WitnessTable = swift_getWitnessTable();
  v39 = WitnessTable;
  v44 = sub_2387192A0();
  v51 = v9;
  v52 = v11;
  v53 = WitnessTable;
  v54 = v44;
  v42 = MEMORY[0x277CDEF68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v40 = &v36 - v16;
  (*(v4 + 16))(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v15);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v8;
  (*(v4 + 32))(v18 + v17, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v48 = v7;
  v49 = v8;
  v50 = v2;
  v19 = v38;
  sub_23875E200();
  v20 = sub_238718CCC();
  v22 = v21;
  LOBYTE(v7) = v23;
  v24 = sub_238718D28();
  v26 = v25;
  v27 = v7 & 1;
  v28 = v37;
  v29 = v39;
  View.transactionPicker(isPresented:selection:)(v20, v22, v27, v24, v30, v26, v9, v39);

  (*(v46 + 8))(v19, v9);
  v51 = v9;
  v52 = v45;
  v53 = v29;
  v54 = v44;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  v32 = v28;
  v33 = OpaqueTypeMetadata2;
  sub_23844EA0C();
  v34 = *(v43 + 8);
  v34(v32, v33);
  sub_23844EA0C();
  return (v34)(v31, v33);
}

unint64_t sub_2387192A0()
{
  result = qword_27DF15078;
  if (!qword_27DF15078)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
    sub_23871932C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15078);
  }

  return result;
}

unint64_t sub_23871932C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF15080[0];
  if (!qword_27DF15080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF15080);
  }

  return result;
}

double sub_238719380(char *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();

  return result;
}

double sub_238719488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for TransactionPicker(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return sub_238719380(v6);
}

double sub_23871950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TransactionPicker(0, a2, a3, v8);
  sub_23844EA0C();
  sub_23844EA0C();
  (*(v5 + 8))(v7, a2);

  return result;
}

double View.transactionPicker(isPresented:selection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v11;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15070, &qword_2387827F0);
  sub_2387192A0();
  sub_23875DF40();

  return result;
}

void sub_2387197B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_23875D7A0();

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v14;
}

uint64_t sub_2387198CC()
{

  return swift_deallocClassInstance();
}

id sub_238719944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151C8, &unk_238782AB8);
  sub_23875D710();
  v0 = objc_allocWithZone(type metadata accessor for TransactionPickerHostViewController());
  v1 = sub_23871B7A0(v3, v0);
  sub_238719D34();
  return v1;
}

double sub_2387199B0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  type metadata accessor for TransactionPickerRepresentableViewController.Coordinator();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *a1 = v9;

  return result;
}

uint64_t sub_238719A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23871BF84(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238719AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23871BF84(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238719B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23871BF84(a1, a2, a3);
  sub_23875D6B0();
  __break(1u);
}

void sub_238719C2C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TransactionPickerHostViewController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_238719D34()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_activityIndicator;
  [v4 addSubview_];

  [*&v0[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763E60;
  v8 = [*&v0[v6] centerXAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 centerXAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [*&v0[v6] centerYAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v15 centerYAnchor];

  v18 = [v13 constraintEqualToAnchor_];
  *(v7 + 40) = v18;
  sub_23871BFF8();
  v19 = sub_23875EC60();

  [v16 activateConstraints_];

  [*&v0[v6] startAnimating];
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v21 = v0;
  sub_23871A3F4(sub_23871C044, v20, v22);
}

void sub_23871A000(void *a1, void *a2, char *a3)
{
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for TransactionPickerRemoteViewController();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = a1;
    }

    v12 = *&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController];
    *&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController] = v10;
    v13 = a1;
    v14 = v10;

    if (v10)
    {
      *&v14[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate] = *&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_delegate];
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
    }

    v15 = v13;
    [a3 addChildViewController_];
    v16 = [a3 view];
    if (v16)
    {
      v17 = v16;
      v18 = [v15 view];

      if (v18)
      {
        [v17 addSubview_];

        v19 = [a3 view];
        if (v19)
        {
          v20 = v19;
          [v19 setNeedsLayout];

          v21 = [a3 view];
          if (v21)
          {
            v22 = v21;
            [v21 layoutIfNeeded];

            [v15 didMoveToParentViewController_];
            [*&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_activityIndicator] stopAnimating];
            v23 = [a3 view];
            if (v23)
            {
              v24 = v23;
              v35 = [objc_opt_self() clearColor];
              [v24 setBackgroundColor_];

              v25 = v35;

              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_23875C130();
  v26 = a2;
  v27 = sub_23875C1B0();
  v28 = sub_23875EFE0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    if (a2)
    {
      v31 = a2;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v32;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    *(v29 + 4) = v32;
    *v30 = v33;
    _os_log_impl(&dword_2383F8000, v27, v28, "Unable to create remoteViewController: %@", v29, 0xCu);
    sub_238455DD4(v30);
    MEMORY[0x23EE64DF0](v30, -1, -1);
    MEMORY[0x23EE64DF0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  [a3 dismissViewControllerAnimated:1 completion:0];
}

double sub_23871A3F4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  type metadata accessor for TransactionPickerRemoteViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v13[4] = a1;
  v13[5] = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23871A59C;
  v13[3] = &block_descriptor_20;
  v10 = _Block_copy(v13);

  v11 = [ObjCClassFromMetadata requestViewController:v8 fromServiceWithBundleIdentifier:v9 connectionHandler:v10];
  _Block_release(v10);

  *(swift_allocObject() + 16) = v11;
  sub_23875C220();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_transactionPickerCancellable) = sub_23875C230();

  return result;
}

void sub_23871A59C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_23871A628(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 invoke];
}

id static TransactionPickerExportedInterfaces.serviceProtocol()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

void sub_23871AA68(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v8 = a1;
  v9 = sub_23875C1B0();
  v10 = sub_23875EFE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 4) = v14;
    *v12 = v15;
    _os_log_impl(&dword_2383F8000, v9, v10, "Transaction picker view service terminated with error: %@", v11, 0xCu);
    sub_238455DD4(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = [v2 presentingViewController];
  if (v16)
  {
    v17 = v16;
    [v16 dismissViewControllerAnimated:0 completion:0];
  }

  if (a1)
  {
    v18 = sub_23875B720();
  }

  else
  {
    v18 = 0;
  }

  v19 = type metadata accessor for TransactionPickerRemoteViewController();
  v20.receiver = v2;
  v20.super_class = v19;
  objc_msgSendSuper2(&v20, sel_viewServiceDidTerminateWithError_, v18);
}

id sub_23871AFA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23871AFF0(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v8 = a1;
  v9 = sub_23875C1B0();
  v10 = sub_23875F000();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    v12 = *(sub_238757D10() + 16);

    *(v11 + 4) = v12;

    _os_log_impl(&dword_2383F8000, v9, v10, "Transaction picker completed with %ld transactions", v11, 0xCu);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&v2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate];
  if (v13)
  {
    swift_unknownObjectRetain();
    v14 = sub_238757D10();
    v15 = *(v13 + 40);
    v20 = v14;
    v21 = v15;
    v22 = *(v13 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF151D8, &unk_238782AC8);
    sub_23875E2F0();
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v21 = *(v13 + 16);
    *&v22 = v16;
    BYTE8(v22) = v17;
    LOBYTE(v20) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
    sub_23875E2F0();

    swift_unknownObjectRelease();
  }

  v18 = [v2 presentingViewController];
  if (v18)
  {
    v19 = v18;
    [v18 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_23871B26C()
{
  v1 = v0;
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v6 = sub_23875C1B0();
  v7 = sub_23875F000();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2383F8000, v6, v7, "Transaction picker cancelled", v8, 2u);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [v1 presentingViewController];
  if (v9)
  {
    v10 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_23871B400(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_23871B4CC(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v8 = a1;
  v9 = sub_23875C1B0();
  v10 = sub_23875EFE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_2383F8000, v9, v10, "Transaction picker failed with error: %@", v11, 0xCu);
    sub_238455DD4(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = [v2 presentingViewController];
  if (v14)
  {
    v15 = v14;
    [v14 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_23871B6B4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

id sub_23871B7A0(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_delegate];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController] = 0;
  *&a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_transactionPickerCancellable] = 0;
  *v3 = a1;
  *(v3 + 1) = &off_284B30D68;
  v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  *&a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_activityIndicator] = v4;
  v6.receiver = a2;
  v6.super_class = type metadata accessor for TransactionPickerHostViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t _s12FinanceKitUI35TransactionPickerExportedInterfacesO14remoteProtocolSo14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = sub_238757D20();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15200, &qword_238782AD8);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v3 = sub_23875EC60();

  [v2 initWithArray_];

  result = sub_23875EE50();
  __break(1u);
  return result;
}

void sub_23871BA08(uint64_t a1)
{
  sub_2384B49C4();
  if (v1 <= 0x3F)
  {
    sub_23871BE90(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23871BAA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      v15 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 24) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

void sub_23871BC34(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  v19 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 24) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v19[1] = 0;
    v19[2] = 0;
    *v19 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

void sub_23871BE90(uint64_t a1)
{
  if (!qword_27DF15110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF15118, qword_238782878);
    v1 = sub_23875E340();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF15110);
    }
  }
}

unint64_t sub_23871BF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF151C0;
  if (!qword_27DF151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF151C0);
  }

  return result;
}

unint64_t sub_23871BFF8()
{
  result = qword_27DF151F0;
  if (!qword_27DF151F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF151F0);
  }

  return result;
}

uint64_t type metadata accessor for TransactionSearchList(uint64_t a1)
{
  result = qword_27DF15208;
  if (!qword_27DF15208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23871C0C0(uint64_t a1)
{
  sub_2384DCE28(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210);
  if (v1 <= 0x3F)
  {
    sub_2384DCE28(319, &qword_27DF0C470, &qword_27DF0B5D0, &qword_23877B640);
    if (v2 <= 0x3F)
    {
      sub_2384B4864(319);
      if (v3 <= 0x3F)
      {
        sub_238663B5C(319);
        if (v4 <= 0x3F)
        {
          sub_2384DCD94(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23871C1D8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_23875D310();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15218, &qword_238782B48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15220, &qword_238782B50);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15228, &qword_238782B58);
  sub_23843A3E8(&qword_27DF15230, &qword_27DF15228, &qword_238782B58, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  sub_23875D300();
  v13 = sub_23843A3E8(&qword_27DF15238, &qword_27DF15218, &qword_238782B48, MEMORY[0x277CDE5A0]);
  v14 = MEMORY[0x277CDE0D0];
  sub_23875DF50();
  (*(v26 + 8))(v4, v2);
  (*(v6 + 8))(v8, v5);
  v29 = v5;
  v30 = v2;
  v31 = v13;
  v32 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v27;
  v16 = v24;
  sub_23875DE10();
  (*(v25 + 8))(v12, v16);
  v17 = sub_23875E4A0();
  v19 = v18;
  v20 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15240, &qword_238782B60) + 36);
  sub_23871EA3C(v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15248, &qword_238782B68);
  v22 = (v20 + *(result + 36));
  *v22 = v17;
  v22[1] = v19;
  return result;
}

double sub_23871C55C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_23875CE00();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15268, &qword_238782CB0);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v86 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15270, &qword_238782CB8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v86 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15278, &qword_238782CC0);
  v106 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v90 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15280, &qword_238782CC8);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v86 - v15;
  v16 = sub_23875C400();
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x28223BE20](v16);
  v99 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15288, &qword_238782CD0);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v19 = &v86 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15290, &qword_238782CD8);
  v20 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15298, &qword_238782CE0);
  MEMORY[0x28223BE20](v23 - 8);
  v104 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v111 = &v86 - v26;
  sub_23875ED50();
  v103 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v109 = a1;
  swift_getKeyPath(byte_238782C68);
  swift_getKeyPath("شzE");
  sub_23875C2D0();

  v27 = *(v113 + 16);

  if (v27 && (swift_getKeyPath(a0_16), swift_getKeyPath(byte_238782C48), sub_23875C2D0(), , , (v113 & 1) == 0))
  {
    v86 = v9;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v30 = qword_2814F1B90;
    v31 = sub_23875EA50();
    v32 = sub_23875EA50();
    v33 = sub_23875EA50();
    v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

    v35 = sub_23875EA80();
    v37 = v36;

    v113 = v35;
    v114 = v37;
    sub_2384397A8(v38, v39, v40);
    v113 = sub_23875DAA0();
    v114 = v41;
    v115 = v42 & 1;
    v116 = v43;
    MEMORY[0x28223BE20](v113);
    *(&v86 - 2) = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152A0, &qword_238782CE8);
    sub_23871FB0C();
    v44 = v19;
    sub_23875E3B0();
    v46 = v99;
    v45 = v100;
    v47 = v101;
    (*(v100 + 104))(v99, *MEMORY[0x277CDF350], v101);
    sub_23871FEEC(&qword_27DF152E0, &qword_27DF15288, &qword_238782CD0, sub_23871FB0C);
    v48 = v87;
    sub_23875DC80();
    (*(v45 + 8))(v46, v47);
    (*(v88 + 8))(v44, v48);
    v49 = v102;
    (*(v20 + 32))(v111, v22, v102);
    v29 = v49;
    v28 = 0;
    v9 = v86;
  }

  else
  {
    v28 = 1;
    v29 = v102;
  }

  v50 = 1;
  (*(v20 + 56))(v111, v28, 1, v29);
  type metadata accessor for TransactionSearchList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF15260, &qword_27DF12940, &qword_23877B698, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  (*(v9 + 8))(v11, v8);
  v51 = v110;
  v53 = v105;
  v52 = v106;
  if (v113 != v112)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v54 = qword_2814F1B90;
    v55 = sub_23875EA50();
    v56 = sub_23875EA50();
    v57 = sub_23875EA50();
    v58 = [v54 localizedStringForKey:v55 value:v56 table:v57];

    v59 = sub_23875EA80();
    v61 = v60;

    v113 = v59;
    v114 = v61;
    sub_2384397A8(v62, v63, v64);
    v113 = sub_23875DAA0();
    v114 = v65;
    v115 = v66 & 1;
    v116 = v67;
    MEMORY[0x28223BE20](v113);
    *(&v86 - 2) = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152E8, &qword_238782D10);
    sub_23871FD8C();
    v68 = v89;
    sub_23875E3B0();
    v70 = v99;
    v69 = v100;
    v71 = v101;
    (*(v100 + 104))(v99, *MEMORY[0x277CDF350], v101);
    v72 = sub_23871FEEC(&qword_27DF15308, &qword_27DF15268, &qword_238782CB0, sub_23871FD8C);
    v73 = v92;
    v74 = v93;
    sub_23875DC80();
    (*(v69 + 8))(v70, v71);
    (*(v91 + 8))(v68, v74);
    v76 = v96;
    v75 = v97;
    v77 = v98;
    (*(v97 + 104))(v96, *MEMORY[0x277CDDDC0], v98);
    v113 = v74;
    v114 = v72;
    swift_getOpaqueTypeConformance2();
    v78 = v90;
    v79 = v95;
    sub_23875DE50();
    (*(v75 + 8))(v76, v77);
    (*(v94 + 8))(v73, v79);
    v51 = v110;
    (*(v52 + 32))(v53, v78, v110);
    v50 = 0;
  }

  (*(v52 + 56))(v53, v50, 1, v51);
  v80 = v111;
  v81 = v104;
  sub_23843981C(v111, v104, &qword_27DF15298, &qword_238782CE0);
  v82 = v107;
  sub_23843981C(v53, v107, &qword_27DF15280, &qword_238782CC8);
  v83 = v108;
  sub_23843981C(v81, v108, &qword_27DF15298, &qword_238782CE0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15310, qword_238782D28);
  sub_23843981C(v82, v83 + *(v84 + 48), &qword_27DF15280, &qword_238782CC8);
  sub_238439884(v53, &qword_27DF15280, &qword_238782CC8);
  sub_238439884(v80, &qword_27DF15298, &qword_238782CE0);
  sub_238439884(v82, &qword_27DF15280, &qword_238782CC8);
  sub_238439884(v81, &qword_27DF15298, &qword_238782CE0);

  return result;
}

double sub_23871D350(uint64_t a1)
{
  v2 = type metadata accessor for TransactionSearchList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(byte_238782C68);
  swift_getKeyPath("شzE");
  sub_23875C2D0();

  sub_23871FF7C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23872019C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TransactionSearchList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
  sub_23875BCB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152B8, &qword_238782CF0);
  sub_23843A3E8(&qword_27DF0B670, &qword_27DF0B660, &unk_238768630, MEMORY[0x277D83980]);
  v7 = sub_23871FE3C(&qword_27DF152B0, &qword_27DF152B8, &qword_238782CF0, sub_23871FBBC);
  sub_2384B4E44(v7, v8, v9);
  sub_23875E380();

  return result;
}

double sub_23871D5F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v29 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152D0, &unk_238782D00);
  MEMORY[0x28223BE20](v36);
  v6 = &v29 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15318, &qword_238782DC8);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v29 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152C8, &qword_238782CF8);
  MEMORY[0x28223BE20](v30);
  v10 = &v29 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152B8, &qword_238782CF0);
  MEMORY[0x28223BE20](v35);
  v12 = &v29 - v11;
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385BA5E8(v40);
  v14 = v40[2];
  v13 = v40[3];

  sub_2384B5DE4(v40);
  *&v42 = v14;
  *(&v42 + 1) = v13;
  sub_2385BA5E8(v41);

  v15 = sub_2384B5DE4(v41);
  sub_2384397A8(v15, v16, v17);
  sub_23875E190();
  sub_23875E4A0();
  sub_23875C9C0();
  (*(v2 + 32))(v6, v4, v33);
  v18 = &v6[*(v36 + 36)];
  v19 = v47;
  *(v18 + 4) = v46;
  *(v18 + 5) = v19;
  *(v18 + 6) = v48;
  v20 = v43;
  *v18 = v42;
  *(v18 + 1) = v20;
  v21 = v45;
  *(v18 + 2) = v44;
  *(v18 + 3) = v21;
  v22 = sub_23871FCCC();
  sub_2384B4E44(v22, v23, v24);
  sub_23875DCC0();
  sub_238439884(v6, &qword_27DF152D0, &unk_238782D00);
  (*(v32 + 32))(v10, v8, v34);
  v25 = &v10[*(v30 + 36)];
  v25[32] = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = [objc_opt_self() systemBackgroundColor];
  v39 = sub_23875DFB0();
  v27 = sub_23875E2D0();
  sub_2384396E4(v10, v12, &qword_27DF152C8, &qword_238782CF8);
  *&v12[*(v35 + 36)] = v27;
  sub_2384396E4(v12, v38, &qword_27DF152B8, &qword_238782CF0);

  return result;
}

double sub_23871DAB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a2;
  v3 = type metadata accessor for TransactionSearchList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  MEMORY[0x28223BE20](v6);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  sub_23875C500();
  swift_getKeyPath(a0_17);
  sub_23871FF7C(a1, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_23872019C(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TransactionSearchList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15300, &unk_238782D18);
  sub_23843A3E8(&qword_27DF12998, &qword_27DF12940, &qword_23877B698, MEMORY[0x277CDD8D0]);
  sub_238720060(&qword_27DF0B110, sub_2384FF9D8, MEMORY[0x277D85378]);
  sub_23871FE3C(&qword_27DF152F8, &qword_27DF15300, &unk_238782D18, sub_2384DD238);
  sub_23875E370();

  return result;
}

void sub_23871DDA4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v68 = a2;
  v70 = type metadata accessor for TransactionSearchList(0);
  v58 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v59 = v4;
  v60 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v53[-v6];
  v62 = type metadata accessor for TransactionView(0);
  MEMORY[0x28223BE20](v62);
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C518, &unk_23876A9D0);
  MEMORY[0x28223BE20](v63);
  v66 = &v53[-v9];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15300, &unk_238782D18);
  MEMORY[0x28223BE20](v65);
  v64 = &v53[-v10];
  v11 = sub_238758F50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v53[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v53[-v18];
  v20 = *a1;
  sub_23875ED50();
  v61 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v20;
  sub_238758F60();
  v69 = v12;
  v22 = *(v12 + 16);
  v55 = v16;
  v23 = v22(v16, v19, v11);
  v24 = v68;
  MEMORY[0x28223BE20](v23);
  *&v53[-16] = v19;
  v25 = v71;
  sub_23854CF80(sub_2387200A8, v26, v71);
  v27 = sub_238758680();
  v28 = *(v27 - 8);
  v70 = v19;
  v56 = v11;
  v29 = v28;
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    __break(1u);
  }

  else
  {
    v73 = *v24;
    v74 = *(v24 + 8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v72, v30);
    v31 = v70;
    v54 = sub_23860E62C(v70, v72);

    v32 = v60;
    sub_23871FF7C(v24, v60);
    v33 = v57;
    v34 = v31;
    v35 = v56;
    v22(v57, v34, v56);
    v36 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v37 = v69;
    v38 = (v59 + *(v69 + 80) + v36) & ~*(v69 + 80);
    v39 = swift_allocObject();
    sub_23872019C(v32, v39 + v36, type metadata accessor for TransactionSearchList);
    v40 = *(v37 + 32);
    v40(v39 + v38, v33, v35);
    *v8 = swift_getKeyPath(byte_238782D68);
    v8[8] = 0;
    v41 = v62;
    v42 = *(v62 + 20);
    *&v8[v42] = swift_getKeyPath(byte_238782D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v40(&v8[v41[6]], v55, v35);
    (*(v29 + 32))(&v8[v41[7]], v71, v27);
    v8[v41[8]] = v54 & 1;
    v43 = &v8[v41[9]];
    *v43 = sub_2387200C8;
    v43[1] = v39;
    v44 = v41[10];
    v45 = *MEMORY[0x277CDFA00];
    v46 = sub_23875C880();
    (*(*(v46 - 8) + 104))(&v8[v44], v45, v46);
    v47 = v66;
    sub_23872019C(v8, v66, type metadata accessor for TransactionView);
    v48 = &v47[*(v63 + 36)];
    *v48 = xmmword_23876A640;
    *(v48 + 1) = xmmword_23876A640;
    v48[32] = 0;
    v49 = v69;
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v73 = qword_27DF2F920;

    v50 = sub_23875E2D0();
    v51 = v47;
    v52 = v64;
    sub_2384396E4(v51, v64, &qword_27DF0C518, &unk_23876A9D0);
    *&v52[*(v65 + 36)] = v50;
    sub_2384396E4(v52, v67, &qword_27DF15300, &unk_238782D18);
    (*(v49 + 8))(v70, v35);
  }
}