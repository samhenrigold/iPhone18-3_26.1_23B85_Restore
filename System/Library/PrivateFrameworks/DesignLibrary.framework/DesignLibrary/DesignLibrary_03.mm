uint64_t sub_18AEBA3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v31 = a3;
  v8 = type metadata accessor for PopUpButton.PopUpButtonBody(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v30 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980B8, &qword_18AFD0110);
  v35 = v15;
  v34 = sub_18AEBB924();
  v40 = a2;
  v41 = v15;
  v42 = a3;
  v43 = v34;
  v32 = sub_18AFCC6A4();
  v16 = sub_18AFCCF94();
  v36 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  v23 = v8;
  (*(v11 + 16))(v14, a1 + *(v8 + 56), a2, v20);
  v24 = v33;
  (*(v9 + 16))(v33, a1, v8);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = a2;
  *(v26 + 24) = v27;
  (*(v9 + 32))(v26 + v25, v24, v23);
  sub_18AFCCF84();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v28 = *(v36 + 8);
  v28(v18, v16);
  sub_18AEADA5C();
  return (v28)(v22, v16);
}

void *sub_18AEBA728(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9980C8, &unk_18AFD0118);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_18AFCD4D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 24) & 1) != 0 || (v12 = *(a2 + 16), v12 < 0) || (sub_18AFCC564(), sub_18AEBB9E4(), sub_18AFCDFC4(), sub_18AFCDFE4(), v12 >= sub_18AFCDFD4()))
  {
    v14 = sub_18AFCC564();
    (*(*(v14 - 8) + 16))(v7, a1, v14);
    swift_storeEnumTagMultiPayload();
    return sub_18AFCC614();
  }

  else
  {
    sub_18AFCC574();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_18AFCC614();
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_18AEBA994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_18AEADA5C();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_18AEADA5C();
  return (v13)(v11, a4);
}

uint64_t PopUpButton.showsBorderOnlyOnRollover(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  *(a3 + 2) = v7;
  return result;
}

uint64_t PopUpButton.indicatorIdleBehavior(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + 2) = v5;
  return result;
}

uint64_t PopUpButtonIndicatorIdleBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

unint64_t sub_18AEBAC94()
{
  result = qword_1EA997F78;
  if (!qword_1EA997F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997F78);
  }

  return result;
}

void sub_18AEBACF0(uint64_t a1)
{
  sub_18AEBB738(319, &qword_1EA998000, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18AEBB1BC();
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

uint64_t sub_18AEBADD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      v15 = ((a1 + 27) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
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

void sub_18AEBAF64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  v19 = ((a1 + 27) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_18AEBB1BC()
{
  if (!qword_1EA998008[0])
  {
    v0 = sub_18AFCDFB4();
    if (!v1)
    {
      atomic_store(v0, qword_1EA998008);
    }
  }
}

void sub_18AEBB234(uint64_t a1)
{
  sub_18AEBB1BC();
  if (v1 <= 0x3F)
  {
    sub_18AEBB738(319, &qword_1EA998000, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_18AEBB738(319, &qword_1EA997C28, &type metadata for ControlContext, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_18AEBB738(319, &qword_1EA997C40, &type metadata for MacSizeClass, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_18AEBB738(319, &qword_1EA997C50, &type metadata for VerticalButtonSizingBehavior.Resolved, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18AEBB3D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 25) & ~v6) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_18AEBB540(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 25) & ~v9) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      v17 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_18AEBB738(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18AEBB78C()
{
  result = qword_1EA998090;
  if (!qword_1EA998090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998090);
  }

  return result;
}

unint64_t sub_18AEBB824()
{
  result = qword_1EA9980A0;
  if (!qword_1EA9980A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998098, &qword_18AFD0100);
    sub_18AEBB8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9980A0);
  }

  return result;
}

unint64_t sub_18AEBB8A8()
{
  result = qword_1EA9980A8;
  if (!qword_1EA9980A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980B0, &qword_18AFD0108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9980A8);
  }

  return result;
}

unint64_t sub_18AEBB924()
{
  result = qword_1EA9980C0;
  if (!qword_1EA9980C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980B8, &qword_18AFD0110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9980C0);
  }

  return result;
}

unint64_t sub_18AEBB9E4()
{
  result = qword_1EA9980D0;
  if (!qword_1EA9980D0)
  {
    sub_18AFCC564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9980D0);
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PopUpButton.PopUpButtonBody(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[16], v5);
  sub_18AE9B234(*(v7 + v6[17]), *(v7 + v6[17] + 8));
  sub_18AE9B234(*(v7 + v6[18]), *(v7 + v6[18] + 8));
  sub_18AE9B234(*(v7 + v6[19]), *(v7 + v6[19] + 8));

  return swift_deallocObject();
}

uint64_t sub_18AEBBBB4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PopUpButton.PopUpButtonBody(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_18AEBBC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for PopUpButton.PopUpButtonBody(0, *(v3 + 16), *(v3 + 24), a2) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_18AFCC564();

  return sub_18AEB8E00(a1, v3 + v7, a3);
}

unint64_t sub_18AEBBD64()
{
  result = qword_1EA9980E0;
  if (!qword_1EA9980E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980D8, &qword_18AFD0140);
    sub_18AEBBDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9980E0);
  }

  return result;
}

unint64_t sub_18AEBBDF0()
{
  result = qword_1EA9980E8;
  if (!qword_1EA9980E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9980E8);
  }

  return result;
}

BOOL static ProgressIndicator.ProgressValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t ProgressIndicator.ProgressValue.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x18CFED610](0);
  }

  v2 = *v0;
  MEMORY[0x18CFED610](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x18CFED640](v3);
}

uint64_t ProgressIndicator.ProgressValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18AFCE294();
  if (v2)
  {
    MEMORY[0x18CFED610](0);
  }

  else
  {
    MEMORY[0x18CFED610](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x18CFED640](v3);
  }

  return sub_18AFCE2E4();
}

BOOL sub_18AEBBF44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_18AEBBF84()
{
  if (v0[1])
  {
    return MEMORY[0x18CFED610](0);
  }

  v2 = *v0;
  MEMORY[0x18CFED610](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x18CFED640](v3);
}

uint64_t sub_18AEBBFD4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_18AFCE294();
  if (v3)
  {
    MEMORY[0x18CFED610](0);
  }

  else
  {
    MEMORY[0x18CFED610](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED640](v4);
  }

  return sub_18AFCE2E4();
}

uint64_t ProgressIndicator.Style.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AEBC0CC@<X0>(void *a1@<X8>)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ProgressIndicator(0);
  sub_18AE83A40(v1 + *(v10 + 32), v9, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_18AFCBB54();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ProgressIndicator.init(value:style:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  *a3 = 0;
  *(a3 + 7) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v7 = *(type metadata accessor for ProgressIndicator(0) + 32);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6;
  return result;
}

uint64_t ProgressIndicator.body.getter@<X0>(void *a1@<X8>)
{
  v93 = a1;
  v78 = type metadata accessor for iOSProgressView(0);
  MEMORY[0x1EEE9AC00](v78);
  v71 = (&v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9980F0, &qword_18AFD0220);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v68 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9980F8, &qword_18AFD0228);
  MEMORY[0x1EEE9AC00](v90);
  v79 = &v68 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998100, &qword_18AFD0230);
  MEMORY[0x1EEE9AC00](v89);
  v6 = &v68 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998108, &qword_18AFD0238);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v68 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998110, &qword_18AFD0240);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v68 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998118, &qword_18AFD0248);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v68 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998120, &qword_18AFD0250);
  MEMORY[0x1EEE9AC00](v85);
  v75 = &v68 - v10;
  v11 = sub_18AFCBB54();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for MacLinearProgressIndicator(0);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MacCircularProgressIndicator(0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998128, &qword_18AFD0258);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998130, &qword_18AFD0260);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v68 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998138, &qword_18AFD0268);
  MEMORY[0x1EEE9AC00](v96);
  v86 = &v68 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998140, &qword_18AFD0270);
  MEMORY[0x1EEE9AC00](v97);
  v23 = &v68 - v22;
  v24 = sub_18AFCC474();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v1[2];
  LODWORD(v27) = *(v1 + 24);
  v80 = v13;
  if (v27 == 1)
  {
    v30 = v29;
    LOBYTE(v98) = v29;
  }

  else
  {
    v69 = v26;

    sub_18AFCE024();
    v31 = sub_18AFCC7D4();
    v70 = v23;
    v32 = v31;
    sub_18AFCBA64();

    v23 = v70;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v29, 0);
    (*(v25 + 8))(v28, v69);
    v30 = v98;
  }

  v33 = *v1;
  v34 = *(v1 + 8);
  v35 = v95;
  if (v30 != 1)
  {
    if (*(v1 + 9))
    {
      if (v1[1])
      {
        *v84 = *(v1 + 10);
        swift_storeEnumTagMultiPayload();
        sub_18AEBD764();
        sub_18AEBD7B8(&qword_1EA998170, type metadata accessor for MacCircularProgressIndicator, &unk_18AFDA1B0);
        v37 = v86;
        sub_18AFCC614();
        sub_18AE83A40(v37, v6, &qword_1EA998138, &qword_18AFD0268);
        swift_storeEnumTagMultiPayload();
        sub_18AEBD6A8();
        sub_18AEBD800();
        sub_18AFCC614();
        sub_18AE7BA80(v37, &qword_1EA998138, &qword_18AFD0268);
LABEL_24:
        v61 = &qword_1EA998108;
        v62 = &qword_18AFD0238;
        sub_18AE83A40(v35, v91, &qword_1EA998108, &qword_18AFD0238);
        swift_storeEnumTagMultiPayload();
        sub_18AEBD9A0(&qword_1EA998180, &qword_1EA998140, &qword_18AFD0270, sub_18AEBD8EC);
        sub_18AEBD9A0(&qword_1EA998190, &qword_1EA998108, &qword_18AFD0238, sub_18AEBD800);
        sub_18AFCC614();
        v63 = v35;
        return sub_18AE7BA80(v63, v61, v62);
      }

      v55 = v74;
      sub_18AEBC0CC(&v74[*(v15 + 20)]);
      *v55 = v33;
      *(v55 + *(v15 + 24)) = 0x4014000000000000;
      v56 = type metadata accessor for MacCircularProgressIndicator;
      sub_18AEBDA24(v55, v84, type metadata accessor for MacCircularProgressIndicator);
      swift_storeEnumTagMultiPayload();
      sub_18AEBD764();
      sub_18AEBD7B8(&qword_1EA998170, type metadata accessor for MacCircularProgressIndicator, &unk_18AFDA1B0);
      v57 = v86;
      sub_18AFCC614();
      v58 = &qword_1EA998138;
      v59 = &qword_18AFD0268;
      sub_18AE83A40(v57, v6, &qword_1EA998138, &qword_18AFD0268);
    }

    else
    {
      if (v1[1])
      {
        v43 = v80;
        sub_18AEBC0CC(v80);
        v44 = *(v88 + 20);
        v46 = v81;
        v45 = v82;
        v47 = v83;
        (*(v81 + 104))(&v83[v44], *MEMORY[0x1E697DC28], v82);
        *v47 = 0x3FF0000000000000;
        (*(v46 + 40))(&v47[v44], v43, v45);
        sub_18AEBDA24(v47, v77, type metadata accessor for MacLinearProgressIndicator);
        swift_storeEnumTagMultiPayload();
        sub_18AEBD7B8(&qword_1EA998150, type metadata accessor for MacLinearProgressIndicator, &unk_18AFDA93C);
        sub_18AEBD7B8(&qword_1EA998158, type metadata accessor for iOSProgressView, &unk_18AFD5CE8);
        v48 = v79;
        sub_18AFCC614();
        sub_18AE83A40(v48, v6, &qword_1EA9980F8, &qword_18AFD0228);
        swift_storeEnumTagMultiPayload();
        sub_18AEBD6A8();
        sub_18AEBD800();
        sub_18AFCC614();
        sub_18AE7BA80(v48, &qword_1EA9980F8, &qword_18AFD0228);
        v49 = v47;
        v50 = type metadata accessor for MacLinearProgressIndicator;
LABEL_23:
        sub_18AEBDA8C(v49, v50);
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      v55 = v71;
      *v71 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
      swift_storeEnumTagMultiPayload();
      v65 = v78;
      v66 = *(v78 + 20);
      *(v55 + v66) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
      swift_storeEnumTagMultiPayload();
      *(v55 + v65[6]) = v33;
      *(v55 + v65[7]) = 0;
      *(v55 + v65[8]) = 0;
      *(v55 + v65[9]) = 0;
      *(v55 + v65[10]) = 0;
      v56 = type metadata accessor for iOSProgressView;
      sub_18AEBDA24(v55, v77, type metadata accessor for iOSProgressView);
      swift_storeEnumTagMultiPayload();
      sub_18AEBD7B8(&qword_1EA998150, type metadata accessor for MacLinearProgressIndicator, &unk_18AFDA93C);
      sub_18AEBD7B8(&qword_1EA998158, type metadata accessor for iOSProgressView, &unk_18AFD5CE8);
      v57 = v79;
      sub_18AFCC614();
      v58 = &qword_1EA9980F8;
      v59 = &qword_18AFD0228;
      sub_18AE83A40(v57, v6, &qword_1EA9980F8, &qword_18AFD0228);
    }

    swift_storeEnumTagMultiPayload();
    sub_18AEBD6A8();
    sub_18AEBD800();
    sub_18AFCC614();
    sub_18AE7BA80(v57, v58, v59);
    v49 = v55;
    v50 = v56;
    goto LABEL_23;
  }

  if (!*(v1 + 9))
  {
    v38 = v80;
    sub_18AEBC0CC(v80);
    v39 = *(v88 + 20);
    v40 = v82;
    v41 = v81 + 104;
    v42 = v83;
    (*(v81 + 104))(&v83[v39], *MEMORY[0x1E697DC28], v82);
    if (v34)
    {
      *v42 = 0x3FF0000000000000;
    }

    else
    {
      *v42 = v33;
    }

    (*(v41 - 64))(&v42[v39], v38, v40);
    sub_18AEBDA24(v42, v73, type metadata accessor for MacLinearProgressIndicator);
    swift_storeEnumTagMultiPayload();
    sub_18AEBD7B8(&qword_1EA998150, type metadata accessor for MacLinearProgressIndicator, &unk_18AFDA93C);
    v60 = v75;
    sub_18AFCC614();
    sub_18AE83A40(v60, v87, &qword_1EA998120, &qword_18AFD0250);
    swift_storeEnumTagMultiPayload();
    sub_18AEBD6A8();
    sub_18AEBD8EC();
    sub_18AFCC614();
    sub_18AE7BA80(v60, &qword_1EA998120, &qword_18AFD0250);
    v53 = v42;
    v54 = type metadata accessor for MacLinearProgressIndicator;
    goto LABEL_19;
  }

  if ((v1[1] & 1) == 0)
  {
    v51 = v74;
    sub_18AEBC0CC(&v74[*(v15 + 20)]);
    *v51 = v33;
    *(v51 + *(v15 + 24)) = 0x4014000000000000;
    sub_18AEBDA24(v51, v84, type metadata accessor for MacCircularProgressIndicator);
    swift_storeEnumTagMultiPayload();
    sub_18AEBD764();
    sub_18AEBD7B8(&qword_1EA998170, type metadata accessor for MacCircularProgressIndicator, &unk_18AFDA1B0);
    v52 = v86;
    sub_18AFCC614();
    sub_18AE83A40(v52, v87, &qword_1EA998138, &qword_18AFD0268);
    swift_storeEnumTagMultiPayload();
    sub_18AEBD6A8();
    sub_18AEBD8EC();
    sub_18AFCC614();
    sub_18AE7BA80(v52, &qword_1EA998138, &qword_18AFD0268);
    v53 = v51;
    v54 = type metadata accessor for MacCircularProgressIndicator;
LABEL_19:
    sub_18AEBDA8C(v53, v54);
    goto LABEL_20;
  }

  *v84 = *(v1 + 10);
  swift_storeEnumTagMultiPayload();
  sub_18AEBD764();
  sub_18AEBD7B8(&qword_1EA998170, type metadata accessor for MacCircularProgressIndicator, &unk_18AFDA1B0);
  v36 = v86;
  sub_18AFCC614();
  sub_18AE83A40(v36, v87, &qword_1EA998138, &qword_18AFD0268);
  swift_storeEnumTagMultiPayload();
  sub_18AEBD6A8();
  sub_18AEBD8EC();
  sub_18AFCC614();
  sub_18AE7BA80(v36, &qword_1EA998138, &qword_18AFD0268);
LABEL_20:
  v61 = &qword_1EA998140;
  v62 = &qword_18AFD0270;
  sub_18AE83A40(v23, v91, &qword_1EA998140, &qword_18AFD0270);
  swift_storeEnumTagMultiPayload();
  sub_18AEBD9A0(&qword_1EA998180, &qword_1EA998140, &qword_18AFD0270, sub_18AEBD8EC);
  sub_18AEBD9A0(&qword_1EA998190, &qword_1EA998108, &qword_18AFD0238, sub_18AEBD800);
  sub_18AFCC614();
  v63 = v23;
  return sub_18AE7BA80(v63, v61, v62);
}

uint64_t sub_18AEBD594(uint64_t a1)
{
  v2 = sub_18AFCBB34();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_18AFCC214();
}

uint64_t type metadata accessor for ProgressIndicator(uint64_t a1)
{
  result = qword_1EA9981A8;
  if (!qword_1EA9981A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18AEBD6A8()
{
  result = qword_1EA998160;
  if (!qword_1EA998160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998138, &qword_18AFD0268);
    sub_18AEBD764();
    sub_18AEBD7B8(&qword_1EA998170, type metadata accessor for MacCircularProgressIndicator, &unk_18AFDA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998160);
  }

  return result;
}

unint64_t sub_18AEBD764()
{
  result = qword_1EA998168;
  if (!qword_1EA998168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998168);
  }

  return result;
}

uint64_t sub_18AEBD7B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18AEBD800()
{
  result = qword_1EA998178;
  if (!qword_1EA998178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980F8, &qword_18AFD0228);
    sub_18AEBD7B8(&qword_1EA998150, type metadata accessor for MacLinearProgressIndicator, &unk_18AFDA93C);
    sub_18AEBD7B8(&qword_1EA998158, type metadata accessor for iOSProgressView, &unk_18AFD5CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998178);
  }

  return result;
}

unint64_t sub_18AEBD8EC()
{
  result = qword_1EA998188;
  if (!qword_1EA998188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998120, &qword_18AFD0250);
    sub_18AEBD7B8(&qword_1EA998150, type metadata accessor for MacLinearProgressIndicator, &unk_18AFDA93C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998188);
  }

  return result;
}

uint64_t sub_18AEBD9A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_18AEBD6A8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18AEBDA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AEBDA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18AEBDAF0()
{
  result = qword_1EA998198;
  if (!qword_1EA998198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998198);
  }

  return result;
}

unint64_t sub_18AEBDB48()
{
  result = qword_1EA9981A0;
  if (!qword_1EA9981A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9981A0);
  }

  return result;
}

void sub_18AEBDBE0(uint64_t a1)
{
  sub_18AEBDC8C();
  if (v1 <= 0x3F)
  {
    sub_18AEB316C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18AEBDC8C()
{
  if (!qword_1EA997C30)
  {
    v0 = sub_18AFCBB64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA997C30);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProgressIndicator.ProgressValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ProgressIndicator.ProgressValue(uint64_t result, int a2, int a3)
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

uint64_t sub_18AEBDD40(uint64_t a1)
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

uint64_t sub_18AEBDD5C(uint64_t result, int a2)
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

unint64_t sub_18AEBDD9C()
{
  result = qword_1EA9981B8;
  if (!qword_1EA9981B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA9981C0, &qword_18AFD0458);
    sub_18AEBD9A0(&qword_1EA998180, &qword_1EA998140, &qword_18AFD0270, sub_18AEBD8EC);
    sub_18AEBD9A0(&qword_1EA998190, &qword_1EA998108, &qword_18AFD0238, sub_18AEBD800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9981B8);
  }

  return result;
}

uint64_t RadioButton.init(interactionState:controlStateValue:radioPosition:label:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = type metadata accessor for RadioButton(0, a5, a6, a4);
  v13 = *(v12 + 48);
  *&a7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v14 = &a7[*(v12 + 52)];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *a7 = v9;
  a7[1] = v10;
  a7[2] = v11;
  return a4();
}

uint64_t RadioButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for MacLabeledCheckboxAndRadioPositioned(0, v5, v6, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-v12];
  v22 = v4[2];
  v21 = *v4;
  v20 = v4[1];
  v17 = v5;
  v18 = v6;
  v19 = v4;
  sub_18AF3F59C(&v22, 0, &v21, &v20, sub_18AEBE214, v5, v6, v10);
  swift_getWitnessTable();
  sub_18AEADA5C();
  v14 = *(v8 + 8);
  v14(v10, v7);
  sub_18AEADA5C();
  return (v14)(v13, v7);
}

uint64_t sub_18AEBE118(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RadioButton(0, v6, v7, v8);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t SearchField.init(interactionState:content:leadingAccessory:trailingAccessory:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, _BYTE *a6@<X8>, __int128 a7, __int128 a8, uint64_t a9)
{
  v13 = *a1;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v14 = &a6[*(type metadata accessor for SearchField(0, &v18) + 80)];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *a6 = v13;
  v15 = a2();
  v16 = a3(v15);
  return a4(v16);
}

uint64_t SearchField.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v44[0] = a1[2];
  v3 = v44[0];
  v44[1] = v4;
  v44[2] = v6;
  v44[3] = v5;
  v44[4] = v8;
  v44[5] = v7;
  v9 = type metadata accessor for MacEngineeringSearchField(0, v44);
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v20 = &v19 - v13;
  LOBYTE(v44[0]) = *v2;
  v37 = v3;
  v38 = v4;
  v39 = v6;
  v40 = v5;
  v41 = v8;
  v42 = v7;
  v43 = v2;
  v30 = v3;
  v31 = v4;
  v32 = v6;
  v33 = v5;
  v34 = v8;
  v35 = v7;
  v36 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v6;
  v26 = v5;
  v27 = v8;
  v28 = v7;
  v29 = v2;
  *(&v18 + 1) = v8;
  *(&v17 + 1) = v6;
  *&v18 = v5;
  *&v17 = v4;
  sub_18AF391F8(v44, sub_18AEBE690, sub_18AEBE7B4, sub_18AEBE8D8, v3, v11, v17, v18, v7);
  swift_getWitnessTable();
  v14 = v20;
  sub_18AEADA5C();
  v15 = *(v21 + 8);
  v15(v11, v9);
  sub_18AEADA5C();
  return v15(v14, v9);
}

uint64_t sub_18AEBE584(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  type metadata accessor for SearchField(0, v13);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_18AEBE6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  type metadata accessor for SearchField(0, v14);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_18AEBE7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  type metadata accessor for SearchField(0, v15);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v5 + 8))(v7, a4);
}

void sub_18AEBE964(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_18AEBF070();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEBEA34(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v6 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v5 + 80);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + v16;
  v19 = *(*(v7 - 8) + 64) + 7;
  if (v17 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((v19 + ((v18 + ((v14 + v15 + ((v13 + 1) & ~v13)) & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v21 = (a2 - v17 + 255) >> 8;
  if (v20 <= 3)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = a1[v20];
    if (!a1[v20])
    {
      goto LABEL_33;
    }

LABEL_29:
    v27 = (v25 - 1) << (8 * v20);
    if (v20 <= 3)
    {
      v28 = *a1;
    }

    else
    {
      v27 = 0;
      v28 = *a1;
    }

    return v17 + (v28 | v27) + 1;
  }

  if (v24 == 2)
  {
    v25 = *&a1[v20];
    if (*&a1[v20])
    {
      goto LABEL_29;
    }
  }

  else
  {
    v25 = *&a1[v20];
    if (v25)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v29 = &a1[v13 + 1] & ~v13;
  if (v6 != v17)
  {
    v31 = (v29 + v14 + v15) & ~v15;
    if (v9 == v17)
    {
      v32 = *(v8 + 48);
      v33 = *(v8 + 84);
      v34 = a3[3];
    }

    else
    {
      v31 = (v18 + v31) & ~v16;
      if (v12 != v17)
      {
        v35 = *(((v19 + v31) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v35 > 1)
        {
          return (v35 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v32 = *(v11 + 48);
      v33 = *(v11 + 84);
      v34 = a3[4];
    }

    return v32(v31, v33, v34);
  }

  v30 = *(v5 + 48);

  return v30(v29);
}

void sub_18AEBED0C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v9 + 80);
  v17 = *(*(v8 - 8) + 64);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v11 <= v13)
  {
    v20 = *(v12 + 84);
  }

  else
  {
    v20 = v11;
  }

  if (v20 <= 0xFE)
  {
    v20 = 254;
  }

  v21 = v17 + v18;
  v22 = ((v19 + 7 + ((v17 + v18 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v20 >= a3)
  {
    v25 = 0;
    if (v20 >= a2)
    {
      goto LABEL_21;
    }

LABEL_26:
    v26 = ~v20 + a2;
    bzero(a1, v22);
    if (v22 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v22 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_31:
        if (v25 == 2)
        {
          *&a1[v22] = v27;
        }

        else
        {
          *&a1[v22] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_31;
      }
    }

    if (v25)
    {
      a1[v22] = v27;
    }

    return;
  }

  v23 = (a3 - v20 + 255) >> 8;
  if (v22 <= 3)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 < 2)
  {
    v25 = 0;
  }

  if (v20 < a2)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v22] = 0;
  }

  else if (v25)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v28 = &a1[v14 + 1] & ~v14;
  if (v7 == v20)
  {
    v29 = *(v6 + 56);

LABEL_39:
    v29(v28);
    return;
  }

  v30 = (v28 + v15 + v16) & ~v16;
  if (v10 == v20)
  {
    v31 = *(v9 + 56);

    v31(v30);
  }

  else
  {
    v28 = (v21 + v30) & ~v18;
    if (v13 == v20)
    {
      v29 = *(v12 + 56);

      goto LABEL_39;
    }

    v32 = (v19 + 7 + v28) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFE)
    {
      *(v32 + 8) = 0;
      *v32 = a2 - 255;
    }

    else
    {
      *(v32 + 8) = -a2;
    }
  }
}

void sub_18AEBF070()
{
  if (!qword_1EA997C28)
  {
    v0 = sub_18AFCBB64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA997C28);
    }
  }
}

DesignLibrary::SegmentedControlMorphology __swiftcall SegmentedControlMorphology.glassLensingEffectEnabled(_:)(Swift::Bool a1)
{
  *v1 = *v2;
  v1[1] = a1;
  result.value = a1;
  return result;
}

uint64_t SegmentedControlMorphology.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AEBF22C()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AEBF2CC(uint64_t a1)
{
  v2 = *v1;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v2);
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

void sub_18AEBF328(uint64_t *a1@<X8>)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_18AEBF478()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_18AFCE024();
    v6 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

void *sub_18AEBF690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + *(a1 + 60));
  v6 = *v5;
  v7 = v5[1];
  sub_18AEC6034(*v5, v7);
  result = sub_18AEBF71C(a1, &v11);
  v9 = v11;
  v10 = v12;
  if (!((v11 != 0) | v12 & 1))
  {
    v9 = 2;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 17) = v10;
  return result;
}

uint64_t sub_18AEBF71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 56));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 1);
  v8 = v4[4];
  sub_18AEBF328(&v11);
  v9 = v11;
  result = sub_18AEBF478();
  *a2 = v5;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_18AEBF7A4@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = *a2;
  v30 = *a1;
  v16 = a2[1];
  v17 = *a3;
  v28 = *a4;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  v19 = type metadata accessor for SegmentedControl(0, a13, a14, v18);
  v20 = v19[10];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v21 = (a9 + v19[11]);
  type metadata accessor for SegmentedControlDragTrackingInfo(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 1;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 1;
  sub_18AFCB9E4();
  sub_18AEC3AF4(0, 0, 1);
  sub_18AFCD0B4();
  *v21 = v34;
  v23 = a9 + v19[12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998430, qword_18AFD09F8);
  sub_18AFCD0B4();
  *v23 = v34;
  *(v23 + 16) = v35;
  *(v23 + 24) = v36;
  v24 = a9 + v19[14];
  *v24 = v29;
  *(v24 + 1) = v16;
  *(v24 + 2) = v17;
  *(v24 + 3) = v28;
  *(v24 + 4) = v30;
  *(v24 + 8) = 0;
  *(v24 + 16) = 2;
  v25 = (a9 + v19[15]);
  *v25 = a8;
  v25[1] = a10;
  v26 = sub_18AEC6034(a8, a10);
  a11(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998528, &unk_18AFD1090);
  sub_18AFCD0C4();

  sub_18AEC3AF4(a5, a6, a7 & 1);
  sub_18AEC5630(a8, a10);
}

uint64_t SegmentedControl.init<A>(interactionState:morphology:distribution:trackingMode:trackingPoint:selectionViewModifier:content:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *a2;
  v19 = a2[1];
  v20 = *a3;
  v21 = *a4;
  v30 = *a1;
  v29[0] = v18;
  v29[1] = v19;
  v28 = v20;
  v27 = v21;
  v22 = swift_allocObject();
  v22[2] = a13;
  v22[3] = a14;
  v22[4] = a15;
  v22[5] = a16;
  v22[6] = a8;
  v22[7] = a10;

  sub_18AEBF7A4(&v30, v29, &v28, &v27, a5, a6, a7 & 1, sub_18AEBFBF4, a9, v22, a11, a12, a13, a15);
}

uint64_t sub_18AEBFB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v9[1];
  v13 = *v9;
  v14 = v10;
  v11(v8);
  return sub_18AFCD464();
}

uint64_t SegmentedControl.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982C8, &qword_18AFD05E0);
  v4 = *(a1 + 24);
  sub_18AEBFF3C();
  sub_18AFCC6A4();
  v5 = sub_18AFCCF94();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998308, &qword_18AFD0600);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998310, &qword_18AFD0608);
  v23[8] = swift_getWitnessTable();
  v23[0] = v5;
  v23[1] = v6;
  v23[2] = v7;
  v23[3] = &type metadata for SelectionViewModifier;
  v23[4] = swift_getWitnessTable();
  v23[5] = sub_18AEC00A4();
  v23[6] = sub_18AEC0158();
  v23[7] = sub_18AEC02C8();
  type metadata accessor for MacSegmentedControlComposer(255, v23);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998358, &qword_18AFD0618);
  sub_18AFCC044();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_18AE95F54(&qword_1EA998360, &qword_1EA998358, &qword_18AFD0618, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  v8 = sub_18AFCD134();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17[-v13];
  v18 = v3;
  v19 = v4;
  v20 = v1;
  sub_18AFCC504();
  sub_18AFCD124();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_18AEADA5C();
  return (v15)(v14, v8);
}

unint64_t sub_18AEBFF3C()
{
  result = qword_1EA9982D0;
  if (!qword_1EA9982D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982C8, &qword_18AFD05E0);
    sub_18AEBFFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9982D0);
  }

  return result;
}

unint64_t sub_18AEBFFC0()
{
  result = qword_1EA9982D8;
  if (!qword_1EA9982D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982E0, &qword_18AFD05E8);
    sub_18AE95F54(&qword_1EA9982E8, &qword_1EA9982F0, &qword_18AFD05F0, &unk_18AFD8454);
    sub_18AE95F54(&qword_1EA9982F8, &qword_1EA998300, &qword_18AFD05F8, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9982D8);
  }

  return result;
}

unint64_t sub_18AEC00A4()
{
  result = qword_1EA998318;
  if (!qword_1EA998318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998308, &qword_18AFD0600);
    sub_18AEC5EEC(&qword_1EA998320, type metadata accessor for MacSegmentedControlBackground, &unk_18AFD8220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998318);
  }

  return result;
}

unint64_t sub_18AEC0158()
{
  result = qword_1EA998328;
  if (!qword_1EA998328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998310, &qword_18AFD0608);
    sub_18AEC01DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998328);
  }

  return result;
}

unint64_t sub_18AEC01DC()
{
  result = qword_1EA998330;
  if (!qword_1EA998330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998338, &qword_18AFD0610);
    sub_18AEC5EEC(&qword_1EA998340, type metadata accessor for MacSegmentedControlNavigationSelectionView, &unk_18AFD8A5C);
    sub_18AEC5EEC(&qword_1EA998348, type metadata accessor for MacSegmentedControlContentSelectionView, &unk_18AFD82C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998330);
  }

  return result;
}

unint64_t sub_18AEC02C8()
{
  result = qword_1EA998350;
  if (!qword_1EA998350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998350);
  }

  return result;
}

uint64_t sub_18AEC031C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v68 = a4;
  v8 = type metadata accessor for SegmentedControl(0, a2, a3, a5);
  v54 = *(v8 - 8);
  v64 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982C8, &qword_18AFD05E0);
  v11 = sub_18AEBFF3C();
  *&v83 = a2;
  *(&v83 + 1) = v10;
  *&v84 = a3;
  *(&v84 + 1) = v11;
  sub_18AFCC6A4();
  v12 = sub_18AFCCF94();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998308, &qword_18AFD0600);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998310, &qword_18AFD0608);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = sub_18AEC00A4();
  v17 = sub_18AEC0158();
  v18 = sub_18AEC02C8();
  v58 = v12;
  *&v83 = v12;
  *(&v83 + 1) = v13;
  v57 = v13;
  v56 = v14;
  *&v84 = v14;
  *(&v84 + 1) = &type metadata for SelectionViewModifier;
  v55 = v15;
  v85 = v15;
  v86 = v16;
  v53 = v16;
  v51 = v17;
  v87 = v17;
  v88 = v18;
  v50 = v18;
  v19 = type metadata accessor for MacSegmentedControlComposer(0, &v83);
  v63 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v47 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998358, &qword_18AFD0618);
  v65 = v19;
  v66 = sub_18AFCC044();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v47 - v23;
  sub_18AFCDF14();
  v60 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_18AEBF71C(v8, v78);
  v73[0] = v78[0];
  v73[1] = v78[1];
  v74 = v79;
  v75 = v80;
  v76 = v81;
  v77 = v82;
  sub_18AEBF5C0();
  v49 = v84 == 2;
  v24 = *(&v83 + 1);
  if (v84 == 2)
  {
    v24 = 0;
  }

  v48 = v24;
  v25 = sub_18AEBF690(v8, &v83);
  v47 = &v47;
  v71 = v83;
  v72 = v84;
  MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = v54;
  v29 = v52;
  (*(v54 + 16))(v52, a1, v8, v27);
  v30 = v29;
  v31 = a3;
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = v31;
  (*(v28 + 32))(v33 + v32, v30, v8);
  *(&v46 + 1) = v53;
  *&v46 = v55;
  *(&v45 + 1) = v57;
  *&v45 = v58;
  v34 = v59;
  sub_18AF1FCC8(v73, v48, v49, &v71, sub_18AEC5978, sub_18AEC5984, v59, sub_18AEC5990, v33, v45, v56, &type metadata for SelectionViewModifier, v46, v51, v50);
  sub_18AEBF628();
  v35 = swift_allocObject();
  v36 = v84;
  *(v35 + 16) = v83;
  *(v35 + 32) = v36;
  *(v35 + 48) = v85;
  v37 = v65;
  v38 = swift_getWitnessTable();
  sub_18AEC5A24();
  sub_18AEC5A78();
  v39 = v61;
  sub_18AFCCB64();

  (*(v63 + 8))(v34, v37);
  v40 = sub_18AE95F54(&qword_1EA998360, &qword_1EA998358, &qword_18AFD0618, MEMORY[0x1E6980620]);
  v69 = v38;
  v70 = v40;
  v41 = v66;
  swift_getWitnessTable();
  v42 = v62;
  sub_18AEADA5C();
  v43 = *(v67 + 8);
  v43(v39, v41);
  sub_18AEADA5C();
  v43(v42, v41);
}

uint64_t sub_18AEC0AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v38 = a4;
  v31 = a3;
  v8 = type metadata accessor for SegmentedControl(0, a2, a3, a5);
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v30 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982C8, &qword_18AFD05E0);
  v35 = v15;
  v34 = sub_18AEBFF3C();
  v40 = a2;
  v41 = v15;
  v42 = a3;
  v43 = v34;
  v32 = sub_18AFCC6A4();
  v16 = sub_18AFCCF94();
  v36 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  v23 = v8;
  (*(v11 + 16))(v14, a1 + *(v8 + 52), a2, v20);
  v24 = v33;
  (*(v9 + 16))(v33, a1, v8);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = a2;
  *(v26 + 24) = v27;
  (*(v9 + 32))(v26 + v25, v24, v23);
  sub_18AFCCF84();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v28 = *(v36 + 8);
  v28(v18, v16);
  sub_18AEADA5C();
  return (v28)(v22, v16);
}

void *sub_18AEC0E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a2;
  v21 = a3;
  v25 = a5;
  v23 = a4;
  v24 = type metadata accessor for SegmentedControl(0, a3, a4, a4);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &KeyPath - v7;
  v9 = sub_18AFCC564();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v22 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_18AEC5EEC(&qword_1EA9980D0, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  sub_18AFCDFC4();
  result = sub_18AFCDFE4();
  if (v28 < v26)
  {
    __break(1u);
  }

  else
  {
    v27 = v28;
    KeyPath = swift_getKeyPath();
    (*(v10 + 16))(&KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v14 = v24;
    (*(v6 + 16))(v8, v20, v24);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = v23;
    *(v17 + 16) = v21;
    *(v17 + 24) = v18;
    (*(v10 + 32))(v17 + v15, v12, v9);
    (*(v6 + 32))(v17 + v16, v8, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9980D8, &qword_18AFD0140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9982E0, &qword_18AFD05E8);
    sub_18AEBBD64();
    sub_18AEBFFC0();
    sub_18AFCD4B4();
  }

  return result;
}

uint64_t sub_18AEC11D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v69 = a4;
  v65 = a5;
  v66 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9982F0, &qword_18AFD05F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47[-v8];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9982E0, &qword_18AFD05E8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v47[-v10];
  v68 = sub_18AFCBF74();
  v11 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_18AFCD4D4();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v67 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  sub_18AFCDF14();
  v62 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_18AFCC574();
  v17 = type metadata accessor for SegmentedControl(0, v66, v69, v16);
  sub_18AEC1914(v17, &v73);
  v59 = v73;
  sub_18AFCD4C4();
  sub_18AEC5924();
  sub_18AFCBF84();
  v66 = v15;
  v18 = a2;
  v19 = *(v11 + 8);
  v69 = v11 + 8;
  v20 = v68;
  v19(v13, v68);
  v58 = v73;
  sub_18AFCD4C4();
  sub_18AEC57D4();
  sub_18AFCBF84();
  v56 = v19;
  v19(v13, v20);
  v21 = v18;
  v22 = v73;
  v57 = v74;
  v23 = sub_18AFCC544();
  result = sub_18AFCC554();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v49 = result - 1;
    v55 = v22;
    sub_18AEBF71C(v17, &v73);
    v25 = v73;
    v54 = BYTE1(v73);
    sub_18AEBF71C(v17, v72);
    v53 = v72[3];
    sub_18AEBF71C(v17, v71);
    v52 = v71[16];
    v51 = sub_18AEC1A98(v21, v66, v17);
    sub_18AEBF71C(v17, v70);
    v26 = v23;
    if (v70[3])
    {
      v50 = 0;
    }

    else
    {
      sub_18AFCC564();
      sub_18AEC5EEC(&qword_1EA9980D0, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
      sub_18AFCDFC4();
      sub_18AFCDFE4();
      v50 = sub_18AFCDFD4() > 1;
    }

    v27 = v54;
    if ((v25 != 0) | v54 & 1)
    {
      v28 = v25;
    }

    else
    {
      v28 = 2;
    }

    v48 = v28;
    v29 = v66;
    v30 = v66 == v49;
    v31 = v66 == v26;
    v32 = v67;
    sub_18AFCD4C4();
    sub_18AEC587C();
    sub_18AFCBF84();
    v56(v13, v68);
    v33 = v70[0];
    *v9 = swift_getKeyPath();
    v9[8] = 0;
    *(v9 + 2) = swift_getKeyPath();
    v9[24] = 0;
    v34 = v7[10];
    *&v9[v34] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
    swift_storeEnumTagMultiPayload();
    v35 = v7[11];
    *&v9[v35] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
    swift_storeEnumTagMultiPayload();
    v36 = &v9[v7[12]];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = &v9[v7[13]];
    *v37 = v48;
    v37[1] = v27;
    v9[v7[14]] = v53;
    v38 = v59;
    v9[v7[15]] = v59;
    v9[v7[16]] = v52;
    v9[v7[17]] = v51;
    v39 = v58;
    v9[v7[18]] = v58;
    v9[v7[19]] = v50;
    v9[v7[20]] = v31;
    v9[v7[21]] = v30;
    v9[v7[22]] = v33;
    v40 = &v9[v7[23]];
    *v40 = v55;
    v40[8] = v57;
    (*(v60 + 32))(&v9[v7[24]], v32, v61);
    if (v39)
    {
      v41 = v29;
    }

    else
    {
      v38 = 0;
      v41 = 0;
    }

    if (v39)
    {
      v42 = v31 | (v30 << 8);
    }

    else
    {
      v42 = 2;
    }

    v43 = v9;
    v44 = v63;
    sub_18AE9A768(v43, v63, &qword_1EA9982F0, &qword_18AFD05F0);
    v45 = v65;
    v46 = &v44[*(v64 + 36)];
    *v46 = v38;
    *(v46 + 1) = v41;
    *(v46 + 8) = v42;
    sub_18AE9A768(v44, v45, &qword_1EA9982E0, &qword_18AFD05E8);
  }

  return result;
}

uint64_t sub_18AEC1914@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_18AFCBF74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_18AEBF71C(a1, v11);
  if (v11[4] == 1)
  {
    *a2 = 1;
  }

  else
  {
    sub_18AFCD4C4();
    sub_18AEC58D0();
    sub_18AFCBF84();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_18AEC1A58(uint64_t a1, uint64_t a2)
{
  sub_18AEC57D4();
  sub_18AFCBF84();
  return v3;
}

uint64_t sub_18AEC1A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18AFCD4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a2 < 1)
  {
    return 0;
  }

  sub_18AEBF71C(a3, v16);
  sub_18AFCC574();
  v10 = sub_18AEC2598(v9, v8, a3);
  v11 = *(v6 + 8);
  v11(v8, v5);
  result = 1;
  if ((v10 & 1) == 0)
  {
    sub_18AFCC574();
    v14 = sub_18AEC2598(v13, v8, a3);
    v11(v8, v5);
    if (v14)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_18AEC1C2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MacSegmentedControlBackground(0);
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for SegmentedControl(0, a1, a2, v9);
  sub_18AEBF71C(v10, v14);
  if (v14[8] & 1) != 0 && (v14[0] != 1 || (v14[1]))
  {
    v12 = *(v13 + 56);

    return v12(a3, 1, 1, v6);
  }

  else
  {
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
    swift_storeEnumTagMultiPayload();
    sub_18AEC5C34(v8, a3, type metadata accessor for MacSegmentedControlBackground);
    return (*(v13 + 56))(a3, 0, 1, v6);
  }
}

uint64_t sub_18AEC1DE0@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v51 = type metadata accessor for MacSegmentedControlContentSelectionView(0);
  MEMORY[0x1EEE9AC00](v51);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998518, &qword_18AFD0F78);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for MacSegmentedControlNavigationSelectionView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998338, &qword_18AFD0610);
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v19 = type metadata accessor for SegmentedControl(0, a1, v52, v18);
  sub_18AEBF71C(v19, v58);
  v20 = v53;
  v21 = v54;
  if (v58[3])
  {
LABEL_4:
    v24 = *(v21 + 56);

    return v24(v20, 1, 1, v15);
  }

  v45 = v11;
  v46 = v14;
  v47 = v5;
  v48 = v6;
  v49 = v17;
  v50 = v9;
  v52 = v8;
  v22 = v53;
  sub_18AEBF5C0();
  v23 = v59;
  if (v59 == 2)
  {
    v20 = v22;
    v21 = v54;
    goto LABEL_4;
  }

  v26 = v58[0];
  sub_18AEBF71C(v19, v58);
  if (v58[0] != 1 || (v58[1] & 1) != 0)
  {
    sub_18AEBF71C(v19, v58);
    v37 = v59;
    sub_18AEBF328(v56);
    v38 = v56[0];
    KeyPath = swift_getKeyPath();
    v40 = v47;
    *v47 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
    swift_storeEnumTagMultiPayload();
    v41 = v51;
    v42 = v40 + *(v51 + 20);
    *v42 = swift_getKeyPath();
    *(v42 + 8) = 0;
    v43 = v41[6];
    *(v40 + v43) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
    swift_storeEnumTagMultiPayload();
    v44 = v40 + v41[7];
    *v44 = swift_getKeyPath();
    *(v44 + 8) = 0;
    *(v40 + v41[8]) = v26;
    *(v40 + v41[9]) = v37;
    *(v40 + v41[10]) = v38 & 1;
    *(v40 + v41[11]) = v23 & 1;
    *(v40 + v41[12]) = HIBYTE(v23) & 1;
    *(v40 + v41[13]) = 1;
    v34 = type metadata accessor for MacSegmentedControlContentSelectionView;
    sub_18AEC5B6C(v40, v52, type metadata accessor for MacSegmentedControlContentSelectionView);
    swift_storeEnumTagMultiPayload();
    sub_18AEC5EEC(&qword_1EA998340, type metadata accessor for MacSegmentedControlNavigationSelectionView, &unk_18AFD8A5C);
    sub_18AEC5EEC(&qword_1EA998348, type metadata accessor for MacSegmentedControlContentSelectionView, &unk_18AFD82C8);
    v35 = v49;
    sub_18AFCC614();
    v36 = v40;
  }

  else
  {
    sub_18AEBF71C(v19, v56);
    v27 = v57;
    sub_18AEBF71C(v19, v55);
    v28 = v55[1];
    v29 = swift_getKeyPath();
    v30 = v45;
    *v45 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
    swift_storeEnumTagMultiPayload();
    v31 = v50;
    v32 = v50[5];
    *(v30 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
    swift_storeEnumTagMultiPayload();
    *(v30 + v31[6]) = v26;
    *(v30 + v31[7]) = v27;
    *(v30 + v31[8]) = 1;
    *(v30 + v31[9]) = v28;
    v33 = v46;
    sub_18AEC5C34(v30, v46, type metadata accessor for MacSegmentedControlNavigationSelectionView);
    v34 = type metadata accessor for MacSegmentedControlNavigationSelectionView;
    sub_18AEC5B6C(v33, v52, type metadata accessor for MacSegmentedControlNavigationSelectionView);
    swift_storeEnumTagMultiPayload();
    sub_18AEC5EEC(&qword_1EA998340, type metadata accessor for MacSegmentedControlNavigationSelectionView, &unk_18AFD8A5C);
    sub_18AEC5EEC(&qword_1EA998348, type metadata accessor for MacSegmentedControlContentSelectionView, &unk_18AFD82C8);
    v35 = v49;
    sub_18AFCC614();
    v36 = v33;
  }

  sub_18AEC5BD4(v36, v34);
  sub_18AE9A768(v35, v22, &qword_1EA998338, &qword_18AFD0610);
  return (*(v54 + 56))(v22, 0, 1, v15);
}

uint64_t sub_18AEC2448(uint64_t *a1, __int128 *a2, __n128 a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a2[1];
  v11 = *a2;
  v12 = v7;
  v13 = *(a2 + 16);
  v9[5] = v4;
  v9[6] = v5;
  v10 = v6;
  sub_18AEC5AFC(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998508, &qword_18AFD0F68);
  sub_18AFCD484();
}

void *sub_18AEC2550()
{
  sub_18AEC58D0();

  return sub_18AFCBF84();
}

uint64_t sub_18AEC2598(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18AFCBF74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_18AEBF71C(a3, v16);
  v11 = v16[8];
  sub_18AFCD4C4();
  sub_18AEC58D0();
  sub_18AFCBF84();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = v15[7];
  sub_18AFCD4C4();
  sub_18AEC5924();
  sub_18AFCBF84();
  v12(v7, v4);
  if (v13 < 2)
  {
    return v15[6];
  }

  if (v13 - 3 >= 2)
  {
    return v11 & 1;
  }

  return 1;
}

double sub_18AEC2738()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 1.0;
  if (v0[5] == 1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = *(v0 + 1);
    v9 = *(v0 + 3);
    v10 = v0[32];
    if ((v0[16] & 1) == 0)
    {

      sub_18AFCE024();
      v11 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v8, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v13[8];
    }

    if ((v8 & 1) == 0)
    {
      return 1.0;
    }

    if (!v10)
    {

      sub_18AFCE024();
      v12 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v9, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v9) = v13[7];
    }

    result = 0.0;
    if ((v9 & 1) != 0 && v6 != 1 && v7 != 1)
    {
      return 1.0;
    }
  }

  return result;
}

double sub_18AEC2958()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 1.0;
  if (v0[5] == 1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = *(v0 + 1);
    v9 = *(v0 + 3);
    v10 = v0[32];
    if ((v0[16] & 1) == 0)
    {

      sub_18AFCE024();
      v11 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v8, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v18[8];
    }

    v13 = v6 == 1 || v7 == 1;
    if (v8)
    {
      if (!v13)
      {
        if (!v10)
        {

          sub_18AFCE024();
          v17 = sub_18AFCC7D4();
          sub_18AFCBA64();

          sub_18AFCC464();
          swift_getAtKeyPath();
          sub_18AE9B234(v9, 0);
          (*(v2 + 8))(v4, v1);
          LOBYTE(v9) = v18[7];
        }

        v14 = (v9 & 1) == 0;
        result = 0.5;
        v16 = 1.0;
        goto LABEL_20;
      }

      if (!v10)
      {

        sub_18AFCE024();
        v15 = sub_18AFCC7D4();
        sub_18AFCBA64();

        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v9, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v9) = v18[6];
      }

      v14 = (v9 & 1) == 0;
      result = 0.2;
    }

    else
    {
      v14 = !v13;
      result = 1.0;
    }

    v16 = 0.5;
LABEL_20:
    if (!v14)
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_18AEC2C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18AEC2738();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9984A0, &qword_18AFD0EF0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9984A8, &qword_18AFD0EF8) + 36)) = v4;
  v6 = sub_18AEC2958();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9984B0, &qword_18AFD0F00);
  *(a2 + *(result + 36)) = v6;
  return result;
}

uint64_t View.segmentedControlFallbackStyleEffect(controlInteractionState:segmentInteractionState:morphology:isSelected:isEnabled:)(char *a1, char *a2, char *a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = a3[1];
  v18 = 0;
  v17 = 0;
  LOBYTE(v14) = v9;
  BYTE1(v14) = v10;
  BYTE2(v14) = v11;
  BYTE3(v14) = v12;
  BYTE4(v14) = a4;
  BYTE5(v14) = a5;
  *(&v14 + 1) = swift_getKeyPath();
  LOBYTE(v15) = 0;
  *(&v15 + 1) = swift_getKeyPath();
  v16 = 0;
  MEMORY[0x18CFEBFA0](&v14, a6, &type metadata for SegmentedControlFallbackStyle, a7);
  v19[0] = v14;
  v19[1] = v15;
  v20 = v16;
  return sub_18AEC43C8(v19);
}

void sub_18AEC2E58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v3 = sub_18AFCE154();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9984F0, &unk_18AFD0F58);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_18AEC2FDC(uint64_t a1)
{
  v2 = sub_18AEC5780();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t sub_18AEC3038(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_18AFCBF84();
  return v3;
}

uint64_t View.segmentState(isSelected:interactionState:)(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998368, &qword_18AFD0678);
  v8 = sub_18AFCC044();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = *a2;
  KeyPath = swift_getKeyPath();
  v19 = a1;
  sub_18AEC3240(KeyPath, &v19, a3, a4);

  v14 = swift_getKeyPath();
  v19 = v12;
  v15 = sub_18AE95F54(&qword_1EA998370, &qword_1EA998368, &qword_18AFD0678, MEMORY[0x1E69809F0]);
  v18[1] = a4;
  v18[2] = v15;
  WitnessTable = swift_getWitnessTable();
  sub_18AEC3240(v14, &v19, v8, WitnessTable);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18AEC3240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - v9;
  v11 = sub_18AFCC7B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v17 - v14);
  (*(v8 + 16))(v10, a2, v7, v13);
  sub_18AEC5640(a1, v10, v15);

  MEMORY[0x18CFEBFA0](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_18AEC342C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = a1;
  sub_18AEC3240(KeyPath, &v9, a2, a3);
}

uint64_t View.segmentFixedWidth(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v11 = a2 & 1;
  sub_18AEC3240(KeyPath, &v10, a3, a4);
}

void *sub_18AEC3524@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998488, &qword_18AFD0EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998490, &qword_18AFD0EE8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - v11);
  v13 = *v2;
  if (*v2)
  {
    v14 = *(v2 + 17);
    v19 = a2;
    v15 = *(v2 + 16);
    v16 = *(v2 + 8);
    (*(v6 + 16))(v8, a1, v5, v10);
    sub_18AE95F54(&qword_1EA998498, &qword_1EA998488, &qword_18AFD0EE0, MEMORY[0x1E697FDF8]);

    sub_18AFCD464();
    v20 = v15;
    v21 = v14;
    v17 = v13();

    *v12 = v17;
    swift_storeEnumTagMultiPayload();

    sub_18AFCC614();
    sub_18AEC5630(v13, v16);
  }

  else
  {
    (*(v6 + 16))(v12, a1, v5, v10);
    swift_storeEnumTagMultiPayload();
    sub_18AE95F54(&qword_1EA998498, &qword_1EA998488, &qword_18AFD0EE0, MEMORY[0x1E697FDF8]);
    return sub_18AFCC614();
  }
}

uint64_t sub_18AEC37C0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  MEMORY[0x18CFED610](v2);
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AEC3854()
{
  v1 = *(v0 + 1);
  MEMORY[0x18CFED610](*v0);
  MEMORY[0x18CFED610](v1);
  sub_18AFCE2B4();
  return sub_18AFCE2B4();
}

uint64_t sub_18AEC38B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_18AFCE294();
  MEMORY[0x18CFED610](v2);
  MEMORY[0x18CFED610](v3);
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

void sub_18AEC3938(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

double sub_18AEC3948(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v5);
  v4 = v6;
  if (v6 != 2)
  {
    result = *&v5;
    *a1 = v5;
    *(a1 + 16) = v4;
  }

  return result;
}

uint64_t sub_18AEC39A0()
{
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();

  return *(v0 + 16);
}

__n128 sub_18AEC3A44@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();

  v4 = v3[2].n128_u8[0];
  result = v3[1];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_18AEC3AF4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 32);
  if ((v4 & 1) == 0 && (a3 & 1) == 0)
  {
    if (*(v3 + 16) != *&a1 || *(v3 + 24) != *&a2)
    {
      goto LABEL_10;
    }

LABEL_8:
    *(v3 + 16) = *&a1;
    *(v3 + 24) = *&a2;
    *(v3 + 32) = a3 & 1;
    swift_getKeyPath();
    sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
    sub_18AFCB9B4();

    return sub_18AEC40A0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  }

  if (v4 & a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9A4();
}

uint64_t sub_18AEC3CC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4 & 1;
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();

  return sub_18AEC40A0(*(a1 + 16), *(a1 + 24), *(a1 + 32));
}

__n128 sub_18AEC3D84@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();

  v3 = *(v1 + 88);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v4;
  result = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 sub_18AEC3E40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();

  v4 = *(v3 + 88);
  v5 = *(v3 + 56);
  *a2 = *(v3 + 40);
  *(a2 + 16) = v5;
  result = *(v3 + 72);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_18AEC3EFC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9A4();
}

uint64_t sub_18AEC3FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 40) = *a2;
  *(a1 + 56) = v2;
  *(a1 + 72) = *(a2 + 32);
  *(a1 + 88) = *(a2 + 48);
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();
}

uint64_t sub_18AEC40A0(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_18AEC5EEC(&qword_1EA9984B8, type metadata accessor for SegmentedControlDragTrackingInfo, &unk_18AFD0E20);
  sub_18AFCB9B4();

  if (*(v3 + 88) == 1 && (a3 & 1) == 0 || (swift_getKeyPath(), sub_18AFCB9B4(), result = , (*(v3 + 88) & 1) == 0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18AFCB9A4();
  }

  return result;
}

uint64_t sub_18AEC432C()
{
  v1 = OBJC_IVAR____TtC13DesignLibrary32SegmentedControlDragTrackingInfo___observationRegistrar;
  v2 = sub_18AFCB9F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *keypath_get_6Tm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_18AFCBF84();
  *a3 = v5;
  return result;
}

unint64_t sub_18AEC44A8()
{
  result = qword_1EA998378;
  if (!qword_1EA998378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998378);
  }

  return result;
}

unint64_t sub_18AEC4500()
{
  result = qword_1EA998380;
  if (!qword_1EA998380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998380);
  }

  return result;
}

unint64_t sub_18AEC4558()
{
  result = qword_1EA998388;
  if (!qword_1EA998388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998388);
  }

  return result;
}

unint64_t sub_18AEC45F4()
{
  result = qword_1EA998390[0];
  if (!qword_1EA998390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA998390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentedControlMorphology(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentedControlMorphology(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_18AEC47D8(uint64_t a1)
{
  sub_18AEB1A48(319, &qword_1EA997C28, &type metadata for ControlContext);
  if (v1 <= 0x3F)
  {
    sub_18AEB1A48(319, &qword_1EA997C40, &type metadata for MacSizeClass);
    if (v2 <= 0x3F)
    {
      sub_18AEC4E20(319, &qword_1EA998418, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_18AEC4E20(319, &qword_1EA998420, type metadata accessor for SegmentedControlDragTrackingInfo, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_18AEC4ED0(319);
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18AEC4958(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_18AFCC5C4() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 8;
  v16 = v11 + 32;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((((v15 + ((v13 + 32) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = ((v15 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 25) & ~v14)) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v28 = *(v8 + 48);

    return v28((v16 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
  }

  else
  {
    v27 = *v26;
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_18AEC4B8C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  v9 = 8;
  v10 = *(*(a4 + 16) - 8);
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v10 + 84);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  v17 = v13 & 0xF8;
  v18 = v17 | 7;
  v19 = v9 + 8;
  v20 = ((v15 + ((v14 + 32 + ((((v19 + ((v17 + 32) & ~(v17 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v23 = 0;
    v24 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v15 + ((v14 + 32 + ((((v19 + ((v17 + 32) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v14) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v16 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_19:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v27 = ((v19 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v18 + 25) & ~v18)) & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0x80000000) != 0)
      {
        v28 = *(v11 + 56);

        v28((v14 + 32 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = (a2 - 1);
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v16 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_18AEC4E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for SegmentedControlDragTrackingInfo(uint64_t a1)
{
  result = qword_1EA998440;
  if (!qword_1EA998440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEC4ED0(uint64_t a1)
{
  if (!qword_1EA998428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998430, qword_18AFD09F8);
    v1 = sub_18AFCD0F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA998428);
    }
  }
}

uint64_t sub_18AEC4F4C(uint64_t a1)
{
  result = sub_18AFCB9F4();
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

unint64_t sub_18AEC4FF0()
{
  result = qword_1EA998450;
  if (!qword_1EA998450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998450);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_ContainerValueWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_18AFCC044();
  sub_18AE95F54(a4, a2, a3, MEMORY[0x1E69809F0]);
  return swift_getWitnessTable();
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

uint64_t sub_18AEC5104(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AEC5124(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary17SelectionViewKind33_13BDBD59307AD3593C2120BFBB91B155LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18AEC5184(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_18AEC51D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *result = a2;
    }
  }

  return result;
}

void *sub_18AEC5228(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SegmentedControlConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentedControlConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SelectedSegmentState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectedSegmentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18AEC53CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 3);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AEC5420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18AEC5478(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18AEC54D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_18AEC554C()
{
  result = qword_1EA998478;
  if (!qword_1EA998478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998478);
  }

  return result;
}

unint64_t sub_18AEC55A4()
{
  result = qword_1EA998480;
  if (!qword_1EA998480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998480);
  }

  return result;
}

uint64_t sub_18AEC5630(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18AEC5640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *a1;
  *a3 = a1;
  v7 = *(v6 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = sub_18AFCC7B4();
  v9 = *(*(v7 - 8) + 32);
  v10 = a3 + *(v8 + 28);

  return v9(v10, a2, v7);
}

unint64_t sub_18AEC5780()
{
  result = qword_1EA9984C0;
  if (!qword_1EA9984C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984C0);
  }

  return result;
}

unint64_t sub_18AEC57D4()
{
  result = qword_1EA9984C8;
  if (!qword_1EA9984C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984C8);
  }

  return result;
}

unint64_t sub_18AEC5828()
{
  result = qword_1EA9984D0;
  if (!qword_1EA9984D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984D0);
  }

  return result;
}

unint64_t sub_18AEC587C()
{
  result = qword_1EA9984D8;
  if (!qword_1EA9984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984D8);
  }

  return result;
}

unint64_t sub_18AEC58D0()
{
  result = qword_1EA9984E0;
  if (!qword_1EA9984E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984E0);
  }

  return result;
}

unint64_t sub_18AEC5924()
{
  result = qword_1EA9984E8;
  if (!qword_1EA9984E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984E8);
  }

  return result;
}

uint64_t sub_18AEC5990@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for SegmentedControl(0, v4, v5, a1);

  return sub_18AEC1DE0(v4, v5, a2);
}

unint64_t sub_18AEC5A24()
{
  result = qword_1EA9984F8;
  if (!qword_1EA9984F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9984F8);
  }

  return result;
}

unint64_t sub_18AEC5A78()
{
  result = qword_1EA998500;
  if (!qword_1EA998500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998430, qword_18AFD09F8);
    sub_18AEC55A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998500);
  }

  return result;
}

uint64_t sub_18AEC5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998508, &qword_18AFD0F68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEC5B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AEC5BD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AEC5C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_119Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for SegmentedControl(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  sub_18AE9B234(*v7, *(v7 + 8));
  sub_18AE9B234(*(v7 + 16), *(v7 + 24));
  v8 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_18AFCC5C4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + v6[13], v5);
  if (*(v7 + v6[15]))
  {
  }

  return swift_deallocObject();
}

void *sub_18AEC5E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SegmentedControl(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_18AEC0E5C(a1, v9, v6, v7, a3);
}

uint64_t sub_18AEC5EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AEC5F34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_18AFCC564() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  type metadata accessor for SegmentedControl(0, v5, v6, v9);

  return sub_18AEC11D0(a1, v2 + v8, v5, v6, a2);
}

uint64_t sub_18AEC6034(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18AEC6094()
{
  result = qword_1EA998530;
  if (!qword_1EA998530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998538, &qword_18AFD1138);
    sub_18AE95F54(&qword_1EA998498, &qword_1EA998488, &qword_18AFD0EE0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998530);
  }

  return result;
}

unint64_t sub_18AEC614C()
{
  result = qword_1EA998540;
  if (!qword_1EA998540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9984B0, &qword_18AFD0F00);
    sub_18AEC61D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998540);
  }

  return result;
}

unint64_t sub_18AEC61D8()
{
  result = qword_1EA998548;
  if (!qword_1EA998548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9984A8, &qword_18AFD0EF8);
    sub_18AE95F54(&qword_1EA998550, &qword_1EA9984A0, &qword_18AFD0EF0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998548);
  }

  return result;
}

uint64_t Slider.TickMark.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x18CFED640](*&v1);
}

uint64_t Slider.TickMark.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFED640](*&v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AEC6380()
{
  v1 = *v0;
  sub_18AFCE294();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFED640](*&v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AEC63DC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x18CFED640](*&v1);
}

uint64_t sub_18AEC6418(uint64_t a1)
{
  v2 = *v1;
  sub_18AFCE294();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x18CFED640](*&v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AEC648C(uint64_t a1)
{
  v2 = sub_18AEC86CC();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t static Slider.KnobRangeKey.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_18AEC6508(uint64_t a1)
{
  v2 = sub_18AEC8678();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t Slider.init<A>(normalizedValue:normalizedNeutralValue:interactionState:isVertical:useSquareKnob:tickMarks:knobModifier:)@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v21 = *a1;
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a5;
  v22[5] = a6;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = v21;
  *(a9 + 17) = a2;
  *(a9 + 18) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = sub_18AEC6640;
  *(a9 + 40) = v22;
  *(a9 + 48) = 0;
  *(a9 + 56) = KeyPath;
  *(a9 + 64) = 0;
  *(a9 + 72) = result;
  *(a9 + 80) = 0;
  return result;
}

uint64_t Slider.init<A>(normalizedValue:normalizedNeutralValue:interactionState:isVertical:tickMarks:knobModifier:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v19 = *a1;
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a4;
  v20[5] = a5;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a8 = a9;
  *(a8 + 8) = a10;
  *(a8 + 16) = v19;
  *(a8 + 17) = a2;
  *(a8 + 18) = 0;
  *(a8 + 24) = a3;
  *(a8 + 32) = sub_18AEC882C;
  *(a8 + 40) = v20;
  *(a8 + 48) = 0;
  *(a8 + 56) = KeyPath;
  *(a8 + 64) = 0;
  *(a8 + 72) = result;
  *(a8 + 80) = 0;
  return result;
}

uint64_t sub_18AEC6758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  return sub_18AFCD464();
}

uint64_t Slider.init(normalizedValue:normalizedNeutralValue:interactionState:isVertical:tickMarks:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *a1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = v11;
  *(a4 + 17) = a2;
  *(a4 + 18) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = a3;
  *(a4 + 48) = 0;
  *(a4 + 56) = KeyPath;
  *(a4 + 64) = 0;
  *(a4 + 72) = result;
  *(a4 + 80) = 0;
  return result;
}

uint64_t Slider.init(normalizedValue:normalizedNeutralValue:interactionState:isVertical:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = v9;
  *(a3 + 17) = a2;
  *(a3 + 18) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = v12;
  *(a3 + 48) = 0;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = 0;
  *(a3 + 72) = result;
  *(a3 + 80) = 0;
  return result;
}

void *sub_18AEC6934(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998618, &qword_18AFD19D8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998620, &qword_18AFD19E0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v17 - v13);
  if (a2)
  {
    (*(v8 + 16))(v10, a1, v7, v12);
    sub_18AE95F54(&qword_1EA998628, &qword_1EA998618, &qword_18AFD19D8, MEMORY[0x1E697FDF8]);

    sub_18AFCD464();
    v15 = a2();

    *v14 = v15;
    swift_storeEnumTagMultiPayload();

    sub_18AFCC614();
    sub_18AEC5630(a2, a3);
  }

  else
  {
    (*(v8 + 16))(v14, a1, v7, v12);
    swift_storeEnumTagMultiPayload();
    sub_18AE95F54(&qword_1EA998628, &qword_1EA998618, &qword_18AFD19D8, MEMORY[0x1E697FDF8]);
    return sub_18AFCC614();
  }
}

uint64_t Slider.body.getter()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998558, &qword_18AFD1288);
  MEMORY[0x1EEE9AC00](v56);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998560, &qword_18AFD1290);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998568, &qword_18AFD1298);
  MEMORY[0x1EEE9AC00](v54);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v51 - v11;
  v12 = sub_18AFCC474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[3];
  v61 = v1[2];
  v62 = v16;
  v63 = v1[4];
  v64 = *(v1 + 80);
  v17 = v1[1];
  v59 = *v1;
  v60 = v17;
  v66 = *(v1 + 64);
  v18 = *(v1 + 7);
  v65 = v18;
  if (v66 == 1)
  {
    v58 = v18;
  }

  else
  {
    sub_18AE83A40(&v65, v57, &qword_1EA998570, &qword_18AFD12A0);
    sub_18AFCE024();
    v19 = v6;
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v6 = v19;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v65, &qword_1EA998570, &qword_18AFD12A0);
    (*(v13 + 8))(v15, v12);
  }

  if (BYTE1(v60))
  {
    v68 = v64;
    v21 = BYTE8(v63);
    v67 = *(&v63 + 1);
    if (v64 != 1)
    {

      sub_18AFCE024();
      v22 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE7BA80(&v67, &qword_1EA998578, &qword_18AFD12A8);
      (*(v13 + 8))(v15, v12);
      v21 = v57[0];
    }

    v23 = v62;
    v24 = *(&v60 + 1);
    v25 = *(*(&v60 + 1) + 16);
    if (v25 > 0x3FF)
    {
      sub_18AEC7D7C(&v59, v57);
      sub_18AEC7A78(0, v25, v25 >> 10, &v59);
      v24 = v31;
      sub_18AEC7DB4(&v59);
    }

    else
    {
    }

    v32 = v60;
    v33 = BYTE2(v60);
    v34 = v61;
    *(v9 + 2) = v61;
    *v9 = v59;
    v9[16] = v32;
    v9[17] = v21 & 1;
    v9[18] = v33;
    v9[19] = v23 != 2;
    *(v9 + 3) = v24;
    v35 = v54;
    v36 = *(v54 + 104);
    *&v9[v36] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
    swift_storeEnumTagMultiPayload();
    v37 = &v9[*(v35 + 108)];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    v38 = v52;
    sub_18AE9A768(v9, v52, &qword_1EA998568, &qword_18AFD1298);
    sub_18AE83A40(v38, v55, &qword_1EA998568, &qword_18AFD1298);
    swift_storeEnumTagMultiPayload();
    sub_18AEC6034(v34, *(&v34 + 1));
    sub_18AE95F54(&qword_1EA998580, &qword_1EA998568, &qword_18AFD1298, &unk_18AFD78B8);
    sub_18AE95F54(&qword_1EA998588, &qword_1EA998558, &qword_18AFD1288, &unk_18AFD7298);
    sub_18AFCC614();
    v39 = v38;
    v40 = &qword_1EA998568;
    v41 = &qword_18AFD1298;
  }

  else
  {
    v68 = v64;
    v26 = BYTE8(v63);
    v67 = *(&v63 + 1);
    if (v64 != 1)
    {

      sub_18AFCE024();
      v27 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE7BA80(&v67, &qword_1EA998578, &qword_18AFD12A8);
      (*(v13 + 8))(v15, v12);
      v26 = v57[0];
    }

    v28 = v62;
    v29 = *(&v60 + 1);
    v30 = *(*(&v60 + 1) + 16);
    if (v30 > 0x3FF)
    {
      sub_18AEC7D7C(&v59, v57);
      sub_18AEC7A78(0, v30, v30 >> 10, &v59);
      v29 = v42;
      sub_18AEC7DB4(&v59);
    }

    else
    {
    }

    v43 = v60;
    v44 = BYTE2(v60);
    v45 = v61;
    *(v3 + 2) = v61;
    *v3 = v59;
    v3[16] = v43;
    v3[17] = v26 & 1;
    v3[18] = v44;
    v3[19] = v28 != 2;
    *(v3 + 3) = v29;
    v46 = v56;
    v47 = *(v56 + 104);
    *&v3[v47] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
    swift_storeEnumTagMultiPayload();
    v48 = &v3[*(v46 + 108)];
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = &v3[*(v46 + 112)];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    sub_18AE9A768(v3, v6, &qword_1EA998558, &qword_18AFD1288);
    sub_18AE83A40(v6, v55, &qword_1EA998558, &qword_18AFD1288);
    swift_storeEnumTagMultiPayload();
    sub_18AEC6034(v45, *(&v45 + 1));
    sub_18AE95F54(&qword_1EA998580, &qword_1EA998568, &qword_18AFD1298, &unk_18AFD78B8);
    sub_18AE95F54(&qword_1EA998588, &qword_1EA998558, &qword_18AFD1288, &unk_18AFD7298);
    sub_18AFCC614();
    v39 = v6;
    v40 = &qword_1EA998558;
    v41 = &qword_18AFD1288;
  }

  return sub_18AE7BA80(v39, v40, v41);
}

DesignLibrary::SliderTrack __swiftcall SliderTrack.init(normalizedValue:normalizedNeutralValue:interactionState:isVertical:)(Swift::Double normalizedValue, Swift::Double normalizedNeutralValue, DesignLibrary::InteractionState interactionState, Swift::Bool isVertical)
{
  v5 = *interactionState;
  *v4 = normalizedValue;
  *(v4 + 8) = normalizedNeutralValue;
  *(v4 + 16) = v5;
  *(v4 + 17) = isVertical;
  result.normalizedNeutralValue = normalizedNeutralValue;
  result.normalizedValue = normalizedValue;
  result.interactionState = interactionState;
  return result;
}

void *SliderTrack.body.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998590, &qword_18AFD1338);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998598, &qword_18AFD1340);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-v6];
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  if (*(v1 + 17) == 1)
  {
    KeyPath = swift_getKeyPath();
    v18 = 0;
    v12 = swift_getKeyPath();
    v17[0] = 0;
    v13 = v18;
    *v7 = v9;
    *(v7 + 1) = v8;
    v7[16] = v10;
    *(v7 + 3) = 0;
    *(v7 + 4) = KeyPath;
    v7[40] = v13;
    *(v7 + 6) = v12;
    v7[56] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9985A0, &qword_18AFD1380);
    sub_18AE95F54(&qword_1EA9985A8, &qword_1EA9985A0, &qword_18AFD1380, &unk_18AFD7868);
    sub_18AE95F54(&qword_1EA9985B0, &qword_1EA998590, &qword_18AFD1338, &unk_18AFD7248);
    return sub_18AFCC614();
  }

  else
  {
    *v4 = v9;
    *(v4 + 1) = v8;
    v4[16] = v10;
    *(v4 + 3) = 0;
    *(v4 + 4) = swift_getKeyPath();
    v4[40] = 0;
    v15 = *(v2 + 56);
    *&v4[v15] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
    swift_storeEnumTagMultiPayload();
    v16 = &v4[*(v2 + 60)];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_18AE83A40(v4, v7, &qword_1EA998590, &qword_18AFD1338);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9985A0, &qword_18AFD1380);
    sub_18AE95F54(&qword_1EA9985A8, &qword_1EA9985A0, &qword_18AFD1380, &unk_18AFD7868);
    sub_18AE95F54(&qword_1EA9985B0, &qword_1EA998590, &qword_18AFD1338, &unk_18AFD7248);
    sub_18AFCC614();
    return sub_18AE7BA80(v4, &qword_1EA998590, &qword_18AFD1338);
  }
}

DesignLibrary::SliderKnob __swiftcall SliderKnob.init(interactionState:knobSize:)(DesignLibrary::InteractionState interactionState, CGSize_optional knobSize)
{
  v5 = *&knobSize.is_nil;
  v6 = v2;
  if (v3)
  {
    v5 = 0.0;
  }

  *v4 = *interactionState;
  if (v3)
  {
    v6 = 0.0;
  }

  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  result.knobSize.height = v6;
  result.knobSize.width = v5;
  result.interactionState = interactionState;
  return result;
}

__n128 SliderKnob.body.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

__n128 sub_18AEC77AC@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

_BYTE *SliderTickMarks.init(interactionState:knobWidth:tickMarks:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

double SliderTickMarks.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  KeyPath = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = 0;

  return result;
}

double sub_18AEC7844@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  KeyPath = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = 0;

  return result;
}

uint64_t Slider.knobVisibilitiy(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 32);
  v6 = *(v2 + 64);
  v13 = *(v2 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v2 + 80);
  v7 = v15;
  v9 = *(v2 + 16);
  v12[0] = *v2;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 48) = v3;
  return sub_18AEC7D7C(v12, v11);
}

uint64_t SliderKnobVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AEC79BC@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEC8720();
  result = sub_18AFCC484();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

void sub_18AEC7A78(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = 0;
  v7 = a1;
  while (1)
  {
    v8 = v7 <= a2;
    if (a3 > 0)
    {
      v8 = v7 >= a2;
    }

    if (v8)
    {
      break;
    }

    v9 = __OFADD__(v7, a3);
    v7 += a3;
    if (v9)
    {
      v7 = (v7 >> 63) ^ 0x8000000000000000;
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      __break(1u);
      break;
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_18AFAB9F8(0, v6, 0);
  if (v6)
  {
    sub_18AFCDF14();
    v10 = *(a4 + 24);
    v24 = v10 + 32;
    v25 = *(v10 + 16);
    while (1)
    {
      v11 = v5 <= a2;
      if (a3 > 0)
      {
        v11 = v5 >= a2;
      }

      if (v11)
      {
        break;
      }

      if (__OFADD__(v5, a3))
      {
        v12 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v12 = v5 + a3;
      }

      sub_18AFCDF04();
      sub_18AFCDED4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v5 >= v25)
      {
        goto LABEL_44;
      }

      v13 = *(v24 + 8 * v5);

      v15 = *(v27 + 16);
      v14 = *(v27 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_18AFAB9F8((v14 > 1), v15 + 1, 1);
      }

      *(v27 + 16) = v15 + 1;
      *(v27 + 8 * v15 + 32) = v13;
      v5 = v12;
      if (!--v6)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v12 = v5;
LABEL_26:
  v16 = v12 <= a2;
  if (a3 > 0)
  {
    v16 = v12 >= a2;
  }

  if (!v16)
  {
    sub_18AFCDF14();
    while (1)
    {
      if (__OFADD__(v12, a3))
      {
        v17 = ((v12 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v12 + a3;
      }

      sub_18AFCDF04();
      sub_18AFCDED4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v12 < 0)
      {
        break;
      }

      v18 = *(a4 + 24);
      if (v12 >= *(v18 + 16))
      {
        goto LABEL_46;
      }

      v19 = *(v18 + 8 * v12 + 32);

      v21 = *(v27 + 16);
      v20 = *(v27 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_18AFAB9F8((v20 > 1), v21 + 1, 1);
      }

      *(v27 + 16) = v21 + 1;
      *(v27 + 8 * v21 + 32) = v19;
      v22 = v17 <= a2;
      if (a3 > 0)
      {
        v22 = v17 >= a2;
      }

      v12 = v17;
      if (v22)
      {
        return;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

unint64_t sub_18AEC7DE8()
{
  result = qword_1EA9985B8;
  if (!qword_1EA9985B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9985B8);
  }

  return result;
}

unint64_t sub_18AEC7E40()
{
  result = qword_1EA9985C0;
  if (!qword_1EA9985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9985C0);
  }

  return result;
}

unint64_t sub_18AEC7E98()
{
  result = qword_1EA9985C8;
  if (!qword_1EA9985C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9985C8);
  }

  return result;
}

unint64_t sub_18AEC7F60()
{
  result = qword_1EA9985D0;
  if (!qword_1EA9985D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9985D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary6SliderV4KnobO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18AEC7FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_18AEC8038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlContext(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ControlContext(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SliderTrack(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SliderTrack(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SliderKnob(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SliderKnob(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_18AEC8264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18AEC82AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_18AEC830C()
{
  result = qword_1EA9985D8;
  if (!qword_1EA9985D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9985E0, &qword_18AFD1868);
    sub_18AE95F54(&qword_1EA998580, &qword_1EA998568, &qword_18AFD1298, &unk_18AFD78B8);
    sub_18AE95F54(&qword_1EA998588, &qword_1EA998558, &qword_18AFD1288, &unk_18AFD7298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9985D8);
  }

  return result;
}

unint64_t sub_18AEC83F0()
{
  result = qword_1EA9985E8;
  if (!qword_1EA9985E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9985F0, &qword_18AFD1870);
    sub_18AE95F54(&qword_1EA9985A8, &qword_1EA9985A0, &qword_18AFD1380, &unk_18AFD7868);
    sub_18AE95F54(&qword_1EA9985B0, &qword_1EA998590, &qword_18AFD1338, &unk_18AFD7248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9985E8);
  }

  return result;
}

unint64_t sub_18AEC84D4()
{
  result = qword_1EA998608;
  if (!qword_1EA998608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998608);
  }

  return result;
}

uint64_t sub_18AEC8548(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18AEC85A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_18AEC8624()
{
  result = qword_1EA998610;
  if (!qword_1EA998610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998610);
  }

  return result;
}

unint64_t sub_18AEC8678()
{
  result = qword_1EA998630;
  if (!qword_1EA998630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998630);
  }

  return result;
}

unint64_t sub_18AEC86CC()
{
  result = qword_1EA998638;
  if (!qword_1EA998638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998638);
  }

  return result;
}

unint64_t sub_18AEC8720()
{
  result = qword_1EA998640;
  if (!qword_1EA998640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998640);
  }

  return result;
}

unint64_t sub_18AEC8774()
{
  result = qword_1EA998648;
  if (!qword_1EA998648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998650, &qword_18AFD19E8);
    sub_18AE95F54(&qword_1EA998628, &qword_1EA998618, &qword_18AFD19D8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998648);
  }

  return result;
}

uint64_t sub_18AEC8838@<X0>(void *a1@<X8>)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Stepper(0);
  sub_18AEB51F8(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_18AFCBB54();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_18AEC8A28()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for Stepper(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_18AFCE024();
    v7 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t Stepper.init(incrementState:decrementState:bordered:)@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = type metadata accessor for Stepper(0);
  v9 = v8[7];
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v10 = &a4[v8[8]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = &a4[v8[9]];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  a4[v8[10]] = 0;
  a4[v8[11]] = 0;
  a4[v8[12]] = 1;
  a4[v8[13]] = 1;
  *a4 = v6;
  a4[1] = v7;
  a4[2] = a3;
  return result;
}

uint64_t type metadata accessor for Stepper(uint64_t a1)
{
  result = qword_1EA998688;
  if (!qword_1EA998688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Stepper.init(incrementState:decrementState:)@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = type metadata accessor for Stepper(0);
  v7 = v6[7];
  *&a3[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v8 = &a3[v6[8]];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = &a3[v6[9]];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  a3[v6[10]] = 0;
  a3[v6[11]] = 0;
  a3[v6[12]] = 1;
  a3[v6[13]] = 1;
  *a3 = v4;
  a3[1] = v5;
  a3[2] = 1;
  return result;
}

void *Stepper.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCBB54();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v1[*(type metadata accessor for Stepper(0) + 36)];
  v11 = *v10;
  if (v10[8] == 1)
  {
    v12 = *v10;
    v24 = v11;
  }

  else
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v11, 0);
    (*(v7 + 8))(v9, v6);
    v12 = v24;
  }

  v14 = *v1;
  v15 = v1[1];
  if (v12 == 1)
  {
    sub_18AEC8838(v5);
    sub_18AEC8A28();
    v16 = (v14 | (v15 << 8)) & 0xFF00FFFF | (sub_18AFC66C0() << 16);
    if (v1[2])
    {
      v17 = 0x1000000;
    }

    else
    {
      v17 = 0;
    }

    v20 = v17 | v16;
    v21 = 0;
  }

  else
  {
    v20 = v14 | (v15 << 8);
    v21 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998658, &qword_18AFD1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998660, &qword_18AFD1A78);
  sub_18AE95F54(&qword_1EA998668, &qword_1EA998658, &qword_18AFD1A70, &unk_18AFD5110);
  sub_18AE95F54(&qword_1EA998670, &qword_1EA998660, &qword_18AFD1A78, &unk_18AFD2B90);
  result = sub_18AFCC614();
  v19 = v23;
  *a1 = v22;
  *(a1 + 4) = v19;
  return result;
}

uint64_t sub_18AEC9070(uint64_t a1)
{
  v2 = sub_18AEC9CC0();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t static Stepper.DecrementKey.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_18AEC90E4(uint64_t a1)
{
  v2 = sub_18AEC9C6C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

uint64_t Stepper.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 2) = 1;
  v2 = type metadata accessor for Stepper(0);
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[8];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[9];
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 1;
  *(a1 + v2[13]) = 1;
  *a1 = 0;
  return result;
}

uint64_t Stepper.interactionState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Stepper(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

int *Stepper.interactionState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = type metadata accessor for Stepper(0);
  v4 = result[10];
  v1[v4] = v2;
  if (v1[result[12]] == 1)
  {
    if ((v2 - 3) > 1)
    {
      v5 = 0;
    }

    else if (v1[result[11]])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  *v1 = v5;
  if (v1[result[13]] == 1)
  {
    if (v1[v4] - 3 > 1)
    {
      v6 = 0;
    }

    else if (v1[result[11]])
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  v1[1] = v6;
  return result;
}

int *(*Stepper.interactionState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *(type metadata accessor for Stepper(0) + 40));
  return sub_18AEC9334;
}

int *sub_18AEC9334(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return Stepper.interactionState.setter(v2);
}

int *Stepper.isIncrementing.setter(unsigned __int8 a1)
{
  result = type metadata accessor for Stepper(0);
  v1[result[11]] = a1;
  v4 = result[10];
  if (v1[result[12]] == 1)
  {
    if (((v1[v4] - 3 < 2) & a1) != 0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  *v1 = v5;
  if (v1[result[13]] == 1)
  {
    v6 = v1[v4] - 3;
    if (a1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    if (v6 >= 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 1;
  }

  v1[1] = v8;
  return result;
}

int *(*Stepper.isIncrementing.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for Stepper(0);
  *(a1 + 8) = v3;
  v4 = *(v3 + 44);
  *(a1 + 16) = v4;
  *(a1 + 20) = *(v1 + v4);
  return sub_18AEC94A0;
}

int *sub_18AEC94A0(uint64_t a1, char a2)
{
  result = *(a1 + 20);
  if (a2)
  {
    return Stepper.isIncrementing.setter(result);
  }

  v4 = *a1;
  v4[*(a1 + 16)] = result;
  v5 = *(a1 + 8);
  v6 = v5[10];
  if (v4[v5[12]] == 1)
  {
    if (((v4[v6] - 3 < 2) & result) != 0)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  *v4 = v7;
  if (v4[v5[13]] == 1)
  {
    v8 = v4[v6] - 3;
    if (result)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    if (v8 >= 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v4[1] = v10;
  }

  else
  {
    v4[1] = 1;
  }

  return result;
}

int *Stepper.canIncrement.setter(char a1)
{
  result = type metadata accessor for Stepper(0);
  v1[result[12]] = a1;
  v4 = result[10];
  if (a1)
  {
    if (v1[v4] - 3 > 1)
    {
      v5 = 0;
    }

    else if (v1[result[11]])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  *v1 = v5;
  if (v1[result[13]] == 1)
  {
    if (v1[v4] - 3 > 1)
    {
      v6 = 0;
    }

    else if (v1[result[11]])
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  v1[1] = v6;
  return result;
}

int *(*Stepper.canIncrement.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for Stepper(0);
  *(a1 + 8) = v3;
  v4 = *(v3 + 48);
  *(a1 + 16) = v4;
  *(a1 + 20) = *(v1 + v4);
  return sub_18AEC9694;
}

int *sub_18AEC9694(uint64_t a1, char a2)
{
  result = *(a1 + 20);
  if (a2)
  {
    return Stepper.canIncrement.setter(result);
  }

  v4 = *(a1 + 16);
  v7 = a1;
  v5 = *a1;
  v6 = *(v7 + 8);
  v5[v4] = result;
  v8 = v6[10];
  if (result)
  {
    if (v5[v8] - 3 > 1)
    {
      v9 = 0;
    }

    else if (v5[v6[11]])
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  *v5 = v9;
  if (v5[v6[13]] == 1)
  {
    if (v5[v8] - 3 > 1)
    {
      v5[1] = 0;
    }

    else
    {
      if (v5[v6[11]])
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }

      v5[1] = v10;
    }
  }

  else
  {
    v5[1] = 1;
  }

  return result;
}

int *Stepper.canDecrement.setter(char a1)
{
  result = type metadata accessor for Stepper(0);
  v1[result[13]] = a1;
  v4 = result[10];
  if (v1[result[12]] != 1)
  {
    *v1 = 1;
    if (a1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (v1[v4] - 3 > 1)
  {
    *v1 = 0;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_14:
    v6 = 1;
    goto LABEL_16;
  }

  if (v1[result[11]])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
  if ((a1 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v1[v4] - 3 > 1)
  {
    v6 = 0;
  }

  else if (v1[result[11]])
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

LABEL_16:
  v1[1] = v6;
  return result;
}

int *(*Stepper.canDecrement.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for Stepper(0);
  *(a1 + 8) = v3;
  v4 = *(v3 + 52);
  *(a1 + 16) = v4;
  *(a1 + 20) = *(v1 + v4);
  return sub_18AEC98A4;
}

int *sub_18AEC98A4(uint64_t a1, char a2)
{
  result = *(a1 + 20);
  if (a2)
  {
    return Stepper.canDecrement.setter(result);
  }

  v4 = *(a1 + 16);
  v6 = *a1;
  v5 = *(a1 + 8);
  v6[v4] = result;
  v7 = v5[10];
  if (v6[v5[12]] != 1)
  {
    *v6 = 1;
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v6[v7] - 3 > 1)
  {
    *v6 = 0;
    if (result)
    {
      goto LABEL_11;
    }

LABEL_17:
    v6[1] = 1;
    return result;
  }

  if (v6[v5[11]])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  *v6 = v8;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (v6[v7] - 3 > 1)
  {
    v6[1] = 0;
  }

  else
  {
    if (v6[v5[11]])
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    v6[1] = v9;
  }

  return result;
}

unint64_t sub_18AEC9984()
{
  result = qword_1EA998678;
  if (!qword_1EA998678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998678);
  }

  return result;
}

unint64_t sub_18AEC99DC()
{
  result = qword_1EA998680;
  if (!qword_1EA998680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998680);
  }

  return result;
}

void sub_18AEC9A74(uint64_t a1)
{
  sub_18AEB316C(319);
  if (v1 <= 0x3F)
  {
    sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C30, &type metadata for DesignIdiom);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_18AEC9B88()
{
  result = qword_1EA998698;
  if (!qword_1EA998698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9986A0, &unk_18AFD1BE0);
    sub_18AE95F54(&qword_1EA998668, &qword_1EA998658, &qword_18AFD1A70, &unk_18AFD5110);
    sub_18AE95F54(&qword_1EA998670, &qword_1EA998660, &qword_18AFD1A78, &unk_18AFD2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA998698);
  }

  return result;
}

unint64_t sub_18AEC9C6C()
{
  result = qword_1EA9986A8;
  if (!qword_1EA9986A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9986A8);
  }

  return result;
}

unint64_t sub_18AEC9CC0()
{
  result = qword_1EA9986B0;
  if (!qword_1EA9986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9986B0);
  }

  return result;
}

uint64_t (*Switch.isOn.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 25) - 1 < 2;
  return sub_18AEC9D6C;
}

uint64_t Switch.init(value:interactionState:onImage:offImage:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a5 = KeyPath;
  *(a5 + 8) = 0;
  *(a5 + 16) = result;
  *(a5 + 24) = 0;
  *(a5 + 25) = v8;
  *(a5 + 26) = v9;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = 0;
  return result;
}

uint64_t Switch.init<A>(value:interactionState:onImage:offImage:knob:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  return sub_18AEC9F04(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1EFE39DC8, sub_18AECF36C, 0);
}

{
  return sub_18AEC9F04(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1EFE39DF0, sub_18AECF370, 1);
}

uint64_t sub_18AEC9F04@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  v17 = *a1;
  v18 = *a2;
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a5;
  v19[5] = a6;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a9 = KeyPath;
  *(a9 + 8) = 0;
  *(a9 + 16) = result;
  *(a9 + 24) = 0;
  *(a9 + 25) = v17;
  *(a9 + 26) = v18;
  *(a9 + 32) = a11;
  *(a9 + 40) = v19;
  *(a9 + 48) = a12;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = 0;
  return result;
}

uint64_t Switch.body.getter@<X0>(void *a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for iOSSwitchEngineering(0);
  MEMORY[0x1EEE9AC00](v2);
  v51 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986B8, &qword_18AFD1CF0);
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986C0, &qword_18AFD1CF8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986C8, &qword_18AFD1D00);
  MEMORY[0x1EEE9AC00](v53);
  v13 = &v48 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986D0, &unk_18AFD1D08);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v48 - v14;
  v15 = sub_18AFCC474();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[1];
  v21 = v1[3];
  v63 = v1[2];
  *v64 = v21;
  *&v64[9] = *(v1 + 57);
  v61 = *v1;
  v62 = v20;
  v70 = *(v1 + 8);
  v22 = *v1;
  v69 = v22;
  if (v70 == 1)
  {
    v60 = v22;
  }

  else
  {
    v48 = v17;
    sub_18AE83A40(&v69, &v67, &qword_1EA998570, &qword_18AFD12A0);
    sub_18AFCE024();
    v23 = sub_18AFCC7D4();
    v49 = v6;
    v24 = v2;
    v25 = v11;
    v26 = v13;
    v27 = v23;
    sub_18AFCBA64();

    v13 = v26;
    v11 = v25;
    v2 = v24;
    v6 = v49;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v69, &qword_1EA998570, &qword_18AFD12A0);
    (*(v16 + 8))(v19, v48);
    LOBYTE(v22) = v60;
  }

  if (v22 == 1)
  {
    v33 = sub_18AFCDB14();
    v51 = v7;
    MEMORY[0x1EEE9AC00](v33);
    MEMORY[0x1EEE9AC00](v34);
    type metadata accessor for MacGladeSwitch(0);
    sub_18AECDB14();
    sub_18AECDB68(&qword_1EA9978A8, type metadata accessor for MacGladeSwitch, &unk_18AFD8C78);
    v35 = v50;
    sub_18AFCDB24();
    v36 = v52;
    v37 = v51;
    (*(v52 + 16))(v13, v35, v51);
    swift_storeEnumTagMultiPayload();
    sub_18AECD9F8();
    sub_18AECDA4C();
    v38 = v54;
    sub_18AFCC614();
    sub_18AE83A40(v38, v11, &qword_1EA9986D0, &unk_18AFD1D08);
    swift_storeEnumTagMultiPayload();
    sub_18AECD96C();
    sub_18AECDB68(&qword_1EA997860, type metadata accessor for iOSSwitchEngineering, &unk_18AFD5E38);
    sub_18AFCC614();
    sub_18AE7BA80(v38, &qword_1EA9986D0, &unk_18AFD1D08);
    return (*(v36 + 8))(v35, v37);
  }

  else if (v22 == 8)
  {
    v28 = BYTE9(v62) - 1 < 2;
    v29 = BYTE10(v62);
    KeyPath = swift_getKeyPath();
    *v13 = KeyPath;
    v13[8] = 0;
    v13[9] = v29;
    v13[10] = v28;
    swift_storeEnumTagMultiPayload();
    sub_18AECDBC0(KeyPath, 0);
    sub_18AECD9F8();
    sub_18AECDA4C();
    v31 = v54;
    sub_18AFCC614();
    sub_18AE83A40(v31, v11, &qword_1EA9986D0, &unk_18AFD1D08);
    swift_storeEnumTagMultiPayload();
    sub_18AECD96C();
    sub_18AECDB68(&qword_1EA997860, type metadata accessor for iOSSwitchEngineering, &unk_18AFD5E38);
    sub_18AFCC614();
    sub_18AE9B234(KeyPath, 0);
    return sub_18AE7BA80(v31, &qword_1EA9986D0, &unk_18AFD1D08);
  }

  else
  {
    v39 = BYTE9(v62) - 1 < 2;
    v67 = v63;
    v68 = v64[0];
    v40 = BYTE10(v62);
    v65 = *&v64[16];
    v66 = *&v64[8];
    v41 = v64[24];
    v59 = 0;
    sub_18AECD934(&v67, &v57);
    sub_18AE83A40(&v66, &v57, &qword_1EA9986D8, &qword_18AFD1D18);
    sub_18AE83A40(&v65, &v57, &qword_1EA9986D8, &qword_18AFD1D18);
    sub_18AFCD0B4();
    v42 = v58;
    v43 = v51;
    *v51 = v57;
    *(v43 + 8) = v42;
    LOBYTE(v59) = 0;
    sub_18AFCD0B4();
    v44 = v58;
    *(v43 + 16) = v57;
    *(v43 + 24) = v44;
    sub_18AECC260((v43 + v2[6]));
    *(v43 + v2[7]) = xmmword_18AFD1BF0;
    v45 = v43 + v2[8];
    *v45 = v67;
    *(v45 + 16) = v68;
    *(v43 + v2[9]) = v40;
    *(v43 + v2[10]) = v39;
    *(v43 + v2[11]) = v41;
    *(v43 + v2[12]) = 0;
    *(v43 + v2[13]) = 0;
    *(v43 + v2[14]) = 0;
    v46 = v65;
    *(v43 + v2[15]) = v66;
    *(v43 + v2[16]) = v46;
    v47 = v43 + v2[17];
    *v47 = swift_getKeyPath();
    *(v47 + 8) = 0;
    sub_18AECEE9C(v43, v6, type metadata accessor for iOSSwitchEngineering);
    sub_18AECED1C(v6, v11, type metadata accessor for iOSSwitchEngineering);
    swift_storeEnumTagMultiPayload();
    sub_18AECD96C();
    sub_18AECDB68(&qword_1EA997860, type metadata accessor for iOSSwitchEngineering, &unk_18AFD5E38);
    sub_18AFCC614();
    return sub_18AECED84(v6, type metadata accessor for iOSSwitchEngineering);
  }
}

double sub_18AECA9B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v5 = *(a1 + 26);
  v6 = *(a1 + 25);
  v12 = 0;
  sub_18AECD934(&v13, v10);
  sub_18AFCD0B4();

  v7 = v11;
  v8 = v14;
  *a2 = v10[0];
  *(a2 + 8) = v7;
  result = *&v13;
  *(a2 + 16) = v13;
  *(a2 + 32) = v8;
  *(a2 + 33) = v5;
  *(a2 + 34) = v6;
  return result;
}

uint64_t sub_18AECAAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MacGladeSwitch(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 25) - 1 < 2;
  v9 = *(a1 + 26);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v10 = v5[5];
  *(v7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v11 = v7 + v5[6];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v5[7];
  *(v7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v13 = v7 + v5[8];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v7 + v5[9];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *(v7 + v5[10]) = v9;
  *(v7 + v5[11]) = v8;
  sub_18AECEE9C(v7, a2, type metadata accessor for MacGladeSwitch);
}

double static Switch.preferredContentSize(for:)(_BYTE *a1)
{
  result = 68.0;
  if (*a1 == 5)
  {
    return 36.0;
  }

  return result;
}

uint64_t Switch.init(isOn:interactionState:onImage:offImage:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a5 = KeyPath;
  *(a5 + 8) = 0;
  *(a5 + 16) = result;
  *(a5 + 24) = 0;
  *(a5 + 25) = a1;
  *(a5 + 26) = v9;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = 0;
  return result;
}

uint64_t Switch.init<A>(isOn:interactionState:onImage:offImage:knob:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  return sub_18AECAE28(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1EFE39E18, sub_18AECF36C, 0);
}

{
  return sub_18AECAE28(a1, a2, a3, a4, a5, a6, a7, a8, a9, &unk_1EFE39E40, sub_18AECF370, 1);
}

uint64_t sub_18AECAE28@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  v18 = *a2;
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a5;
  v19[5] = a6;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a9 = KeyPath;
  *(a9 + 8) = 0;
  *(a9 + 16) = result;
  *(a9 + 24) = 0;
  *(a9 + 25) = a1;
  *(a9 + 26) = v18;
  *(a9 + 32) = a11;
  *(a9 + 40) = v19;
  *(a9 + 48) = a12;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = 0;
  return result;
}

uint64_t Switch.init(isOn:interactionState:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 25) = a1;
  *(a3 + 26) = v5;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 2;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t Switch.init<A>(isOn:interactionState:knob:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return sub_18AECB0A0(a1, a2, a3, a4, a5, a6, sub_18AECDBCC, a7, 0);
}

{
  return sub_18AECB0A0(a1, a2, a3, a4, a5, a6, sub_18AECDBEC, a7, 1);
}

uint64_t sub_18AECAFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  return sub_18AFCD464();
}

uint64_t sub_18AECB0A0@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v17 = *a2;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a3;
  v18[5] = a4;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a9 = KeyPath;
  *(a9 + 8) = 0;
  *(a9 + 16) = result;
  *(a9 + 24) = 0;
  *(a9 + 25) = a1;
  *(a9 + 26) = v17;
  *(a9 + 32) = a8;
  *(a9 + 40) = v18;
  *(a9 + 48) = a10;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t sub_18AECB174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_18AFCD464();
}

double sub_18AECB204()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SwitchSpecs(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_18AFCE024();
    v8 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  result = 38.0;
  if (v7 == 5)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_18AECB380(char a1)
{
  v2 = v1;
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SwitchSpecs(0);
  v9 = v1 + v8[7];
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    j__swift_release(v10);
    (*(v5 + 8))(v7, v4);
    v10 = v27;
  }

  if (!v10)
  {
    v10 = sub_18AECB764();
  }

  v27 = v10;
  v13 = sub_18AFCBCD4();
  v14 = v2 + v8[9];
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {

    if (!*(v15 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AECE16C(v15, 0);
    (*(v5 + 8))(v7, v4);
    v15 = v27;
    if (!*(v27 + 16))
    {
      goto LABEL_11;
    }
  }

  v17 = sub_18AECE2E8(1);
  if (v18)
  {
    v19 = *(*(v15 + 56) + 8 * v17);

    goto LABEL_12;
  }

LABEL_11:

  v19 = sub_18AECBCE4();
LABEL_12:
  if (a1)
  {
    v20 = v13;
  }

  else
  {
    v20 = v19;
  }

  v21 = v2 + v8[5];
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {

    sub_18AFCE024();
    v23 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v22, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v22) = v27;
  }

  v24 = 0.5;
  if (v22)
  {
    v24 = 1.0;
  }

  v27 = v20;
  v28 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998758, &qword_18AFD20F8);
  sub_18AE95F54(&qword_1EA998760, &qword_1EA998758, &qword_18AFD20F8, MEMORY[0x1E697F5B8]);
  v25 = sub_18AFCBCD4();

  return v25;
}

uint64_t sub_18AECB764()
{
  v1 = v0;
  v2 = sub_18AFCCCF4();
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  MEMORY[0x1EEE9AC00](v37);
  v6 = v33 - v5;
  v7 = sub_18AFCC5C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_18AFCBB34();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_18AFCC474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SwitchSpecs(0);
  v16 = v1 + *(v34 + 32);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_18AFCE024();
    v33[0] = v12;
    v28 = sub_18AFCC7D4();
    v33[1] = v1;
    v29 = v8;
    v30 = v4;
    v31 = v28;
    sub_18AFCBA64();

    v4 = v30;
    v8 = v29;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v17, 0);
    (*(v13 + 8))(v15, v33[0]);
    if (v41 != 5)
    {
      goto LABEL_3;
    }

    return sub_18AFCCD84();
  }

  v41 = *v16;
  if (v17 == 5)
  {
    return sub_18AFCCD84();
  }

LABEL_3:
  v18 = v35;
  sub_18AED2E48(v35);
  v19 = v36;
  sub_18AED2E70(v36);
  v20 = *(v37 + 48);
  v21 = v39;
  v22 = v18;
  v23 = v40;
  (*(v39 + 32))(v6, v22, v40);
  (*(v8 + 32))(&v6[v20], v19, v7);
  LODWORD(v19) = (*(v21 + 88))(v6, v23);
  v24 = *MEMORY[0x1E697DBA8];
  v25 = (*(v8 + 88))(&v6[v20], v7);
  v26 = *MEMORY[0x1E697F608];
  (*(v38 + 104))(v4, *MEMORY[0x1E69814D8], v2);
  if (v19 == v24)
  {
    if (v25 == v26)
    {
      return sub_18AFCCF44();
    }

    v32 = sub_18AFCCF44();
    (*(v8 + 8))(&v6[v20], v7);
  }

  else
  {
    if (v25 == v26)
    {
      v32 = sub_18AFCCF44();
    }

    else
    {
      v32 = sub_18AFCCF44();
      (*(v8 + 8))(&v6[v20], v7);
    }

    (*(v39 + 8))(v6, v40);
  }

  return v32;
}

uint64_t sub_18AECBCE4()
{
  v1 = v0;
  v2 = sub_18AFCCCF4();
  v40 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v33 - v5;
  v7 = sub_18AFCC5C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_18AFCBB34();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v37 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_18AFCC474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SwitchSpecs(0);
  v16 = v1 + *(v36 + 32);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v44 = *v16;
    if (v17 != 5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v27 = sub_18AFCCD44();
    goto LABEL_13;
  }

  sub_18AFCE024();
  v34 = v12;
  v28 = sub_18AFCC7D4();
  v35 = v2;
  v29 = v7;
  v30 = v6;
  v31 = v28;
  sub_18AFCBA64();

  v6 = v30;
  v7 = v29;
  v2 = v35;
  sub_18AFCC464();
  swift_getAtKeyPath();
  sub_18AE9B234(v17, 0);
  (*(v13 + 8))(v15, v34);
  if (v44 == 5)
  {
    goto LABEL_7;
  }

LABEL_3:
  v18 = v37;
  sub_18AED2E48(v37);
  v19 = v38;
  sub_18AED2E70(v38);
  v20 = *(v39 + 48);
  v21 = v41;
  v22 = v18;
  v23 = v42;
  (*(v41 + 32))(v6, v22, v42);
  (*(v8 + 32))(&v6[v20], v19, v7);
  LODWORD(v19) = (*(v21 + 88))(v6, v23);
  v24 = *MEMORY[0x1E697DBA8];
  v25 = (*(v8 + 88))(&v6[v20], v7);
  v26 = *MEMORY[0x1E697F608];
  (*(v40 + 104))(v4, *MEMORY[0x1E69814D8], v2);
  if (v19 == v24)
  {
    if (v25 == v26)
    {
      v27 = sub_18AFCCF44();
    }

    else
    {
      v27 = sub_18AFCCF44();
      (*(v8 + 8))(&v6[v20], v7);
    }
  }

  else
  {
    if (v25 == v26)
    {
      v27 = sub_18AFCCF44();
    }

    else
    {
      v27 = sub_18AFCCF44();
      (*(v8 + 8))(&v6[v20], v7);
    }

    (*(v41 + 8))(v6, v42);
  }

LABEL_13:
  v43 = v27;
  return sub_18AFCBCD4();
}

uint64_t sub_18AECC260@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SwitchSpecs(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a1 + v2[8];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *(a1 + v2[10]) = 0x4004000000000000;
  v8 = v2[11];
  *(a1 + v8) = sub_18AFCCD94();
  v9 = v2[12];
  *(a1 + v9) = sub_18AFCDB94();
  v10 = v2[13];
  result = sub_18AFCCD94();
  *(a1 + v10) = result;
  return result;
}

uint64_t sub_18AECC3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a4.n128_u64[0];
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a2 + 8) == 3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9987A0, &qword_18AFD23F0);
  (*(*(v9 - 8) + 16))(a3, a1, v9);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998798, &qword_18AFD23E8);
  v11 = a3 + *(result + 36);
  *v11 = v5;
  *(v11 + 8) = v8;
  return result;
}

uint64_t sub_18AECC4DC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998720, &qword_18AFD20A0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  KeyPath = swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998728, &qword_18AFD20C8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998730, &qword_18AFD20D0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998738, &qword_18AFD20D8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998740, &qword_18AFD20E0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998748, &qword_18AFD20E8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998750, &qword_18AFD20F0);
  v10 = sub_18AE95F54(&qword_1EA997800, &qword_1EA998738, &qword_18AFD20D8, MEMORY[0x1E697DE98]);
  v11 = sub_18AE95F54(&qword_1EA9977E0, &qword_1EA998750, &qword_18AFD20F0, MEMORY[0x1E697E530]);
  v12 = MEMORY[0x1E69E63B0];
  v26 = MEMORY[0x1E69E63B0];
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_18AE95F54(&qword_1EA9977E8, &qword_1EA998748, &qword_18AFD20E8, MEMORY[0x1E697E400]);
  v26 = v12;
  v27 = v21;
  v28 = v20;
  v29 = OpaqueTypeConformance2;
  v30 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v26 = v12;
  v27 = v22;
  v28 = v8;
  v29 = v15;
  v30 = v10;
  swift_getOpaqueTypeConformance2();
  sub_18AFCBD24();
  v16 = sub_18AE95F54(&qword_1EA9977F0, &qword_1EA998720, &qword_18AFD20A0, MEMORY[0x1E697E160]);
  MEMORY[0x18CFEB400](v4, &type metadata for SwitchKnobKeyframeAnimationModifier.TimelineValue, v1, v16);
  v17 = *(v2 + 8);
  v17(v4, v1);
  MEMORY[0x18CFEB420](v7, &type metadata for SwitchKnobKeyframeAnimationModifier.TimelineValue, v1, v16);
  MEMORY[0x18CFEB410](v4, &type metadata for SwitchKnobKeyframeAnimationModifier.TimelineValue, v1, v16);
  v17(v4, v1);
  return (v17)(v7, v1);
}

uint64_t sub_18AECC864@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998730, &qword_18AFD20D0);
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v44 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998740, &qword_18AFD20E0);
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v44 - v4;
  v5 = sub_18AFCDC44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998748, &qword_18AFD20E8);
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v44 - v9;
  v10 = sub_18AFCD1B4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998750, &qword_18AFD20F0);
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998738, &qword_18AFD20D8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v57 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v44 - v23;
  v65 = 0x3FF0000000000000;
  v24 = MEMORY[0x1E69E63B0];
  sub_18AFCBC04();
  v25 = sub_18AE95F54(&qword_1EA997800, &qword_1EA998738, &qword_18AFD20D8, MEMORY[0x1E697DE98]);
  MEMORY[0x18CFEBAE0](v21, v24, v16, v25);
  v26 = *(v17 + 8);
  v58 = v17 + 8;
  v59 = v26;
  v26(v21, v16);
  v70 = 0x3FF8CCCCCCCCCCCDLL;
  v65 = 0;
  LOBYTE(v66) = 1;
  sub_18AFCD1A4();
  sub_18AFCBEC4();
  v27 = sub_18AE95F54(&qword_1EA9977E0, &qword_1EA998750, &qword_18AFD20F0, MEMORY[0x1E697E530]);
  v54 = v11;
  MEMORY[0x18CFEBAE0](v13, v24, v11, v27);
  v28 = *(v63 + 8);
  v63 += 8;
  v45 = v28;
  v28(v13, v11);
  v65 = 0x3FF0000000000000;
  sub_18AFCDC34();
  v29 = v44;
  sub_18AFCBEA4();
  v30 = sub_18AE95F54(&qword_1EA9977E8, &qword_1EA998748, &qword_18AFD20E8, MEMORY[0x1E697E400]);
  v31 = v62;
  MEMORY[0x18CFEBAE0](v29, v24, v62, v30);
  v32 = *(v64 + 8);
  v64 += 8;
  v46 = v32;
  v32(v29, v31);
  v65 = 0x3FF0000000000000;
  v33 = v56;
  sub_18AFCBC04();
  MEMORY[0x18CFEBAE0](v33, v24, v16, v25);
  v59(v33, v16);
  MEMORY[0x18CFEBB00](v61, v24, v16, v25);
  v34 = v47;
  v35 = v54;
  sub_18AFCC784();
  v65 = v24;
  v66 = v16;
  v67 = v35;
  v68 = v25;
  v69 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v49;
  v38 = v48;
  v39 = v62;
  sub_18AFCC784();
  v65 = v24;
  v66 = v38;
  v67 = v39;
  v68 = OpaqueTypeConformance2;
  v69 = v30;
  swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = v51;
  sub_18AFCC784();
  (*(v52 + 8))(v37, v41);
  (*(v50 + 8))(v34, v38);
  v42 = v59;
  v59(v56, v16);
  v42(v40, v16);
  v46(v60, v39);
  v45(v55, v54);
  return (v42)(v61, v16);
}

uint64_t sub_18AECD0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_18AECDB68(&qword_1EA997828, type metadata accessor for SwitchKnobKeyframeAnimationModifier, &unk_18AFD2050);

  return MEMORY[0x1EEDDDD18](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_18AECD154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_18AECDB68(&qword_1EA997828, type metadata accessor for SwitchKnobKeyframeAnimationModifier, &unk_18AFD2050);

  return MEMORY[0x1EEDDDD20](a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_18AECD208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998770, &qword_18AFD2298);
  sub_18AFCC084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998790, &qword_18AFD23E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998798, &qword_18AFD23E8);
  sub_18AE95F54(&qword_1EA997778, &qword_1EA998790, &qword_18AFD23E0, MEMORY[0x1E697FDF8]);
  sub_18AECF234();
  return sub_18AFCCC54();
}

CGAffineTransform *sub_18AECD328@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>)
{
  if (result)
  {
    v6 = xmmword_18AFD1C00;
    v7 = xmmword_18AFD1C10;
    v8 = 0uLL;
  }

  else
  {
    v13.a = 1.0;
    v13.b = 0.0;
    v13.c = 0.0;
    v13.d = 1.0;
    v13.tx = 0.0;
    v13.ty = 0.0;
    CGAffineTransformTranslate(&v12, &v13, a3 * 0.5, a4 * 0.5);
    v13 = v12;
    CGAffineTransformScale(&v12, &v13, a5, a5);
    v13 = v12;
    result = CGAffineTransformTranslate(&v12, &v13, a3 * -0.5, a4 * -0.5);
    v7 = *&v12.a;
    v6 = *&v12.c;
    v8 = *&v12.tx;
  }

  *a2 = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 sub_18AECD428@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_18AECD328(*(v3 + 8), v7, a2, a3, *v3);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18AECD484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18AECF318();

  return MEMORY[0x1EEDDEA98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_18AECD500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18AECF318();

  return MEMORY[0x1EEDDEA80](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_18AECD5EC@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v3 = v5;
  result = (*(*(MEMORY[0x1E69E63B0] - 8) + 8))(&v5);
  *a1 = v3;
  return result;
}

double sub_18AECD65C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_18AECD668(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *v1;
  *a1 = *v1;
  (*(*(MEMORY[0x1E69E63B0] - 8) + 8))();
  a1[1] = v3;
  return sub_18AECF374;
}

uint64_t sub_18AECD6EC@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v3 = v5;
  sub_18AE960A0();
  result = (*(*(MEMORY[0x1E69E7DE0] - 8) + 8))(&v5);
  *a1 = v3;
  return result;
}

double (*sub_18AECD760(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *v1;
  *a1 = *v1;
  sub_18AE960A0();
  (*(*(MEMORY[0x1E69E7DE0] - 8) + 8))(a1);
  a1[1] = v3;
  return sub_18AECD7EC;
}

double sub_18AECD7EC(uint64_t a1)
{
  result = *(a1 + 8);
  **(a1 + 16) = result;
  return result;
}

uint64_t sub_18AECD7FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_18AFCC1C4();
  *a2 = result;
  return result;
}

uint64_t sub_18AECD854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AECD884@<X0>(void *a1@<X8>)
{
  sub_18AECEF04();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AECD8D4(uint64_t *a1)
{
  sub_18AECEF04();

  return sub_18AFCC494();
}

unint64_t sub_18AECD96C()
{
  result = qword_1EA997798;
  if (!qword_1EA997798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9986D0, &unk_18AFD1D08);
    sub_18AECD9F8();
    sub_18AECDA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997798);
  }

  return result;
}

unint64_t sub_18AECD9F8()
{
  result = qword_1EA997888;
  if (!qword_1EA997888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997888);
  }

  return result;
}

unint64_t sub_18AECDA4C()
{
  result = qword_1EA997760;
  if (!qword_1EA997760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9986B8, &qword_18AFD1CF0);
    sub_18AECDB14();
    sub_18AECDB68(&qword_1EA9978A8, type metadata accessor for MacGladeSwitch, &unk_18AFD8C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997760);
  }

  return result;
}

unint64_t sub_18AECDB14()
{
  result = qword_1EA997880;
  if (!qword_1EA997880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997880);
  }

  return result;
}

uint64_t sub_18AECDB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AECDBC0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary6SwitchV4KnobO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_18AECDC44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_18AECDCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_18AECDD18()
{
  result = qword_1EA997788;
  if (!qword_1EA997788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9986E0, &qword_18AFD1F18);
    sub_18AECD96C();
    sub_18AECDB68(&qword_1EA997860, type metadata accessor for iOSSwitchEngineering, &unk_18AFD5E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997788);
  }

  return result;
}

uint64_t sub_18AECDDD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_18AECDE1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AECDE60(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_18AECDED0(uint64_t a1)
{
  sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_18AECF058(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
      if (v3 <= 0x3F)
      {
        sub_18AECE0DC(319, &qword_1EA998700, &qword_1EA998708, qword_18AFD6070);
        if (v4 <= 0x3F)
        {
          sub_18AECF058(319, &qword_1EA997C30, &type metadata for DesignIdiom, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_18AECE0DC(319, &qword_1EA998710, &qword_1EA998718, qword_18AFD1FC0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_18AECE088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18AECE0DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_18AFCBB64();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_18AECE16C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_18AECE178(uint64_t a1)
{
  sub_18AFCE294();
  v2 = *(a1 + 13);
  v3 = *(a1 + 14);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 34);
  v9 = *(a1 + 40);
  sub_18AFB4928(v12, *a1, *(a1 + 8) | (*(a1 + 12) << 32));
  MEMORY[0x18CFED610](v2);
  MEMORY[0x18CFED610](v3);
  MEMORY[0x18CFED610](v4);
  MEMORY[0x18CFED610](v5);
  MEMORY[0x18CFED610](v6);
  MEMORY[0x18CFED610](v7);
  MEMORY[0x18CFED610](v8);
  MEMORY[0x18CFED610](v9);
  _s17ResolvedCompositeV3KeyVMa(0);
  sub_18AFCBB34();
  sub_18AECDB68(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_18AFCDDA4();
  v10 = sub_18AFCE2E4();

  return sub_18AECE3CC(a1, v10);
}

unint64_t sub_18AECE2E8(uint64_t a1)
{
  v1 = a1;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  v2 = sub_18AFCE2E4();

  return sub_18AECECAC(v1, v2);
}

unint64_t sub_18AECE354(uint64_t a1, uint64_t a2)
{
  sub_18AFCE294();
  sub_18AFCDE44();
  v4 = sub_18AFCE2E4();

  return sub_18AECEDE4(a1, a2, v4);
}

unint64_t sub_18AECE3CC(_OWORD *a1, uint64_t a2)
{
  v5 = _s17ResolvedCompositeV3KeyVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v69[2] = v6;
    v99 = ~v10;
    v12 = a1[1];
    v118[0] = *a1;
    v118[1] = v12;
    v13 = *&v118[0];
    v14 = *(v118 + 2);
    v15 = DWORD2(v118[0]) | (BYTE12(v118[0]) << 32);
    v16 = BYTE12(v118[0]) >> 6 < 3uLL;
    v17 = *&v118[0] != 20;
    v18 = *&v118[0] != 19;
    v19 = *&v118[0] != 18;
    v20 = *&v118[0] != 17;
    v69[1] = a1;
    v21 = *&v118[0] != 16;
    v119 = a1[2];
    v22 = *&v118[0] != 15;
    v101 = v7;
    v100 = BYTE13(v118[0]);
    v23 = *&v118[0] != 14;
    v96 = BYTE14(v118[0]);
    v24 = *&v118[0] != 13;
    v25 = *&v118[0] != 12;
    *&v95 = *(&v12 + 1);
    *(&v95 + 1) = v12;
    v26 = *&v118[0] != 11;
    v27 = *&v118[0] != 10;
    v28 = *&v118[0] != 9;
    v29 = *&v118[0] != 8;
    v30 = *&v118[0] != 7;
    v98 = v2 + 64;
    v31 = *&v118[0] != 6;
    v32 = *&v118[0] != 5;
    v33 = *&v118[0] != 4;
    v34 = *&v118[0] != 3;
    if (v15 != 0xC000000000)
    {
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v21 = 1;
      v22 = 1;
      v23 = 1;
      v24 = 1;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v28 = 1;
      v29 = 1;
      v30 = 1;
      v31 = 1;
      v32 = 1;
      v33 = 1;
      v34 = 1;
    }

    v93 = v16 || v17;
    v94 = v119;
    v92 = v16 || v18;
    v91 = v16 || v19;
    v90 = v16 || v20;
    v89 = v16 || v21;
    v88 = v16 || v22;
    v87 = v16 || v23;
    v86 = v16 || v24;
    v85 = v16 || v25;
    v84 = v16 || v26;
    v83 = v16 || v27;
    v82 = v16 || v28;
    v81 = v16 || v29;
    v80 = v16 || v30;
    v79 = v16 || v31;
    v78 = v16 || v32;
    v35 = v98;
    v36 = v99;
    v37 = v16 || v33;
    v38 = DWORD2(v118[0]) | (BYTE12(v118[0]) << 32);
    v76 = v16 || v34;
    v77 = v37;
    v72 = BYTE1(v119);
    v39 = *(v101 + 72);
    v40 = v15 == 0xC000000000 && *&v118[0] == 2;
    v41 = v15 == 0xC000000000 && *&v118[0] == 1;
    v74 = v41;
    v75 = v40;
    v42 = v15 == 0xC000000000 && *&v118[0] == 0;
    v73 = v42;
    v71 = BYTE2(v119);
    v70 = *(&v119 + 1);
    v101 = (BYTE12(v118[0]) << 32) & 0xC000000000;
    v97 = DWORD2(v118[0]) | (BYTE12(v118[0]) << 32);
    do
    {
      sub_18AECED1C(*(v2 + 48) + v39 * v11, v9, _s17ResolvedCompositeV3KeyVMa);
      v43 = v9[1];
      v115 = *v9;
      v116 = v43;
      v117 = v9[2];
      v44 = BYTE12(v115) >> 6;
      if (v44 > 1)
      {
        if (v44 != 2)
        {
          switch(v115)
          {
            case 1:
              if (!v74)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 2:
              if (!v75)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 3:
              if (v76)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 4:
              if (v77)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 5:
              if (v78)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 6:
              if (v79)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 7:
              if (v80)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 8:
              if (v81)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 9:
              if (v82)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 10:
              if (v83)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 11:
              if (v84)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 12:
              if (v85)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 13:
              if (v86)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 14:
              if (v87)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 15:
              if (v88)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 16:
              if (v89)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 17:
              if (v90)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 18:
              if (v91)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 19:
              if (v92)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            case 20:
              if (v93)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
            default:
              if (!v73)
              {
                goto LABEL_57;
              }

              goto LABEL_43;
          }
        }

        v45 = *(v115 + 32);
        v109 = *(v115 + 16);
        v110 = v45;
        v46 = *(v115 + 64);
        v111 = *(v115 + 48);
        v112 = v46;
        v47 = *(v115 + 96);
        v113 = *(v115 + 80);
        v114 = v47;
        if (v101 != 0x8000000000)
        {
          goto LABEL_58;
        }

        v48 = *(v13 + 32);
        v103 = *(v13 + 16);
        v104 = v48;
        v49 = *(v13 + 64);
        v105 = *(v13 + 48);
        v106 = v49;
        v50 = *(v13 + 96);
        v107 = *(v13 + 80);
        v108 = v50;
        v51 = *(v115 + 112);
        v52 = *(v13 + 112);
        v53 = v109;
        v54 = DWORD2(v109) | (BYTE12(v109) << 32);
        v55 = v103;
        v56 = DWORD2(v103) | (BYTE12(v103) << 32);
        sub_18AE90E8C(v118, v102);
        sub_18AE90E8C(&v115, v102);
        sub_18AE90E8C(&v109, v102);
        sub_18AE90E8C(&v103, v102);
        if (!sub_18AE93094(v53, v54, v55, v56) || BYTE13(v109) != BYTE13(v103) || BYTE14(v109) != BYTE14(v103) || v110 != v104 || v111 != v105)
        {
          sub_18AE920D8(&v103);
          v67 = &v109;
LABEL_62:
          sub_18AE920D8(v67);
LABEL_63:
          sub_18AE920D8(v118);
          sub_18AE920D8(&v115);
          v35 = v98;
          v36 = v99;
          v38 = v97;
          goto LABEL_58;
        }

        v36 = v99;
        v38 = v97;
        if (BYTE1(v111) != BYTE1(v105))
        {
          sub_18AE920D8(&v103);
          sub_18AE920D8(&v109);
LABEL_112:
          sub_18AE920D8(v118);
          sub_18AE920D8(&v115);
          v35 = v98;
          goto LABEL_58;
        }

        v57 = BYTE2(v111);
        v58 = BYTE2(v105);
        sub_18AE920D8(&v103);
        sub_18AE920D8(&v109);
        if (v57 != v58 || *(&v111 + 1) != *(&v105 + 1))
        {
          goto LABEL_112;
        }

        v59 = v112;
        v60 = DWORD2(v112) | (BYTE12(v112) << 32);
        v61 = v106;
        v62 = DWORD2(v106) | (BYTE12(v106) << 32);
        sub_18AE90E8C(&v112, v102);
        sub_18AE90E8C(&v106, v102);
        if (!sub_18AE93094(v59, v60, v61, v62) || BYTE13(v112) != BYTE13(v106) || BYTE14(v112) != BYTE14(v106) || v113 != v107 || v114 != v108 || BYTE1(v114) != BYTE1(v108))
        {
          sub_18AE920D8(&v106);
          v67 = &v112;
          goto LABEL_62;
        }

        v63 = BYTE2(v114);
        v64 = BYTE2(v108);
        sub_18AE920D8(&v106);
        sub_18AE920D8(&v112);
        if (v63 != v64 || *(&v114 + 1) != *(&v108 + 1) || v51 != v52)
        {
          goto LABEL_63;
        }

        v35 = v98;
        v36 = v99;
        v38 = v97;
      }

      else
      {
        if (v44)
        {
          if (v101 != 0x4000000000 || ((v115 ^ v13) & 1) != 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v38 >> 38)
          {
            goto LABEL_57;
          }

          if ((v115 & 0x100000000) != 0)
          {
            if ((v13 & 0x100000000) == 0)
            {
              goto LABEL_57;
            }
          }

          else if ((v13 & 0x100000000) != 0 || *&v115 != *&v13)
          {
            goto LABEL_57;
          }

          if (((BYTE12(v115) << 32) & 0x100000000) != 0)
          {
            if ((v38 & 0x100000000) == 0)
            {
              goto LABEL_57;
            }
          }

          else if ((v38 & 0x100000000) != 0 || *(&v115 + 2) != v14)
          {
            goto LABEL_57;
          }
        }

LABEL_43:
        sub_18AE90E8C(v118, &v112);
      }

      if (BYTE13(v115) != v100 || BYTE14(v115) != v96 || __PAIR128__(v116, *(&v116 + 1)) != v95 || v117 != v94 || BYTE1(v117) != v72)
      {
        sub_18AE920D8(v118);
LABEL_57:
        sub_18AE920D8(&v115);
        goto LABEL_58;
      }

      v65 = BYTE2(v117);
      sub_18AE920D8(v118);
      sub_18AE920D8(&v115);
      if (v65 == v71 && *(&v117 + 1) == v70)
      {
        v66 = sub_18AFCBB24();
        sub_18AECED84(v9, _s17ResolvedCompositeV3KeyVMa);
        if (v66)
        {
          return v11;
        }

        goto LABEL_59;
      }

LABEL_58:
      sub_18AECED84(v9, _s17ResolvedCompositeV3KeyVMa);
LABEL_59:
      v11 = (v11 + 1) & v36;
    }

    while (((*(v35 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_18AECECAC(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_18AECED1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AECED84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18AECEDE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18AFCE264())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_18AECEE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18AECEF04()
{
  result = qword_1EA9977B8;
  if (!qword_1EA9977B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9977B8);
  }

  return result;
}

void sub_18AECEFB0(uint64_t a1)
{
  sub_18AECF058(319, &qword_1EA9977C0, &type metadata for SwitchKnobKeyframeAnimationModifier.TimelineValue, MEMORY[0x1E697E9C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18AECF058(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ScaleEffect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScaleEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_18AECF160()
{
  result = qword_1EA9978C8;
  if (!qword_1EA9978C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9978C8);
  }

  return result;
}

unint64_t sub_18AECF1B8()
{
  result = qword_1EA9978C0;
  if (!qword_1EA9978C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9978C0);
  }

  return result;
}

unint64_t sub_18AECF234()
{
  result = qword_1EA9977D8;
  if (!qword_1EA9977D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998798, &qword_18AFD23E8);
    sub_18AE95F54(&qword_1EA997770, &qword_1EA9987A0, &qword_18AFD23F0, MEMORY[0x1E697FEC8]);
    sub_18AE95F54(&qword_1EA997768, &qword_1EA9987A8, &qword_18AFD23F8, MEMORY[0x1E697FF88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9977D8);
  }

  return result;
}

unint64_t sub_18AECF318()
{
  result = qword_1EA9987B0;
  if (!qword_1EA9987B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9987B0);
  }

  return result;
}

uint64_t TextField.init(interactionState:isEmpty:content:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>, uint64_t a7@<X3>)
{
  *a6 = *a1;
  a6[1] = 5;
  a6[2] = a2;
  type metadata accessor for TextField(0, a4, a5, a7);
  return a3();
}

uint64_t TextField.init(interactionState:disclosureButtonInteractionState:isEmpty:content:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  v8 = *a2;
  *a7 = *a1;
  a7[1] = v8;
  a7[2] = a3;
  type metadata accessor for TextField(0, a5, a6, a4);
  return a4();
}

uint64_t TextField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8, &qword_18AFD2400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = (&v38 - v5);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = type metadata accessor for UniversalTextField(0, v7, v6, v8);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9987B8, &qword_18AFD2408);
  v15 = sub_18AE95F54(&qword_1EA9987C0, &qword_1EA9987B8, &qword_18AFD2408, &unk_18AFE2E70);
  v50[0] = v7;
  v50[1] = v14;
  v39 = v14;
  v50[2] = v6;
  v50[3] = v15;
  v16 = type metadata accessor for MacCombobox(0, v50);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = sub_18AFCC624();
  v44 = *(v23 - 8);
  v45 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v43 = &v38 - v25;
  v26 = v2[1];
  LOBYTE(v50[0]) = *v2;
  if (v26 == 5)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v38 - 4) = v7;
    *(&v38 - 3) = v6;
    v37 = v2;
    v27 = v40;
    sub_18AF43FA0(v40);
    sub_18AF44000(v50, sub_18AECFB2C, v27, v7, v6, v11);
    swift_getWitnessTable();
    v28 = v41;
    sub_18AEADA5C();
    v29 = *(v42 + 8);
    v29(v11, v9);
    sub_18AEADA5C();
    swift_getWitnessTable();
    v30 = v43;
    sub_18AEB5360(v11, v16, v9);
    v29(v11, v9);
    v29(v28, v9);
  }

  else
  {
    v47 = v26;
    MEMORY[0x1EEE9AC00](v24);
    *(&v38 - 4) = v7;
    *(&v38 - 3) = v6;
    sub_18AEDCF78(v50, &v47, v31, sub_18AED01F0, v7, v39, v6, v19, v15);
    swift_getWitnessTable();
    sub_18AEADA5C();
    v32 = *(v17 + 8);
    v32(v19, v16);
    sub_18AEADA5C();
    swift_getWitnessTable();
    v30 = v43;
    sub_18AEB5268(v19, v16);
    v32(v19, v16);
    v32(v22, v16);
  }

  WitnessTable = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v48 = WitnessTable;
  v49 = v34;
  v35 = v45;
  swift_getWitnessTable();
  sub_18AEADA5C();
  return (*(v44 + 8))(v30, v35);
}

uint64_t sub_18AECFA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextField(0, v6, v7, v8);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t TextField.init(interactionState:content:)@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 1) = 261;
  type metadata accessor for TextField(0, a3, a4, a3);
  return a2();
}

uint64_t static TextFieldDisclosureButtonKey.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

unint64_t sub_18AECFC30()
{
  result = qword_1EA9987C8[0];
  if (!qword_1EA9987C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9987C8);
  }

  return result;
}

uint64_t sub_18AECFC84(uint64_t a1)
{
  v2 = sub_18AED019C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

void sub_18AECFCC8(uint64_t a1)
{
  sub_18AED013C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AECFD68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 3) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 3) & ~v6);
      }

      v15 = *(a1 + 2);
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
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

void sub_18AECFEF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 3) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 3] & ~v9;

    v19(v20);
  }

  else
  {
    a1[2] = a2 + 1;
  }
}