void sub_1C47F6F60(uint64_t a1)
{
  if (!qword_1EC0BD690[0])
  {
    sub_1C4EFDAB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EC0BD690);
    }
  }
}

uint64_t sub_1C47F6FCC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEB && *(a1 + 56))
    {
      v2 = *a1 + 234;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 0x15)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47F700C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 235;
    if (a3 >= 0xEB)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEB)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1C47F706C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C47F7414();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C47F70F4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C47F7230(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C47F7414()
{
  if (!qword_1EC0BD718[0])
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, qword_1EC0BD718);
    }
  }
}

uint64_t sub_1C47F7464(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C44157D4(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
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
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C47F762C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C440BAA8(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C47F7A9C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_1C44F9918(v6, a3);
  v7 = sub_1C442B738(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_1C47F7B34(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_1C47F7B40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B63616264656566 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7542746E65696C63 && a2 == 0xEC000000656C646ELL;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47F7D74(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x6B63616264656566;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x746E6169726176;
      break;
    case 5:
      result = 0x7542746E65696C63;
      break;
    case 6:
      result = 0x6449746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C47F7E38(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0BD8B0, &qword_1C4F2FDF8);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE61C();
  sub_1C4417F50(a1, a1[3]);
  v8 = sub_1C47FEC80();
  sub_1C440F61C(&type metadata for FeedbackLogDatabase.FeedbackLogDatabaseEntry.CodingKeys, v9, v8);
  sub_1C43FBF44();
  sub_1C4F02788();
  if (!v1)
  {
    v10 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
    sub_1C4EF9CD8();
    sub_1C44003AC();
    sub_1C47FAA94(v11, v12, MEMORY[0x1E6969538]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v15 = sub_1C4401774(v10[6]);
    v16 = v13;
    sub_1C44344B8(v15, v13);
    sub_1C446E5F8();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4434000(v15, v16);
    sub_1C4401774(v10[7]);
    sub_1C44171C0(3);
    sub_1C4F02798();
    sub_1C4401774(v10[8]);
    sub_1C44171C0(4);
    sub_1C4F02738();
    sub_1C4401774(v10[9]);
    sub_1C44171C0(5);
    sub_1C4F02738();
    sub_1C43FBF44();
    sub_1C4F027F8();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C47F808C()
{
  sub_1C43FE96C();
  v3 = v2;
  v26 = v4;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v27 = v6;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C456902C(&qword_1EC0BD8A0, &qword_1C4F2FDF0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4422338();
  v30 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(v8);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v11 = v10;
  v29 = v3;
  sub_1C4417F50(v3, v3[3]);
  sub_1C47FEC80();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C4426B50();
    sub_1C440962C(v3);
    if (v3)
    {
    }
  }

  else
  {
    sub_1C43FC360();
    *v11 = sub_1C4F02668();
    *(v11 + 8) = v12 & 1;
    LOBYTE(v31) = 1;
    sub_1C44003AC();
    sub_1C47FAA94(v13, v14, MEMORY[0x1E6969558]);
    sub_1C43FC360();
    sub_1C4F026C8();
    (*(v27 + 32))(v11 + v30[5], v1, v28);
    sub_1C444C16C();
    sub_1C43FC360();
    sub_1C4F026C8();
    *(v11 + v30[6]) = v31;
    sub_1C440F6A0(3);
    v15 = sub_1C4F02678();
    sub_1C44160B4(v15, v16, v30[7]);
    sub_1C440F6A0(4);
    v17 = sub_1C4F02618();
    sub_1C44160B4(v17, v18, v30[8]);
    sub_1C440F6A0(5);
    v19 = sub_1C4F02618();
    sub_1C44160B4(v19, v20, v30[9]);
    sub_1C440F6A0(6);
    v21 = sub_1C4F026D8();
    v22 = sub_1C44333AC();
    v23(v22);
    *(v11 + v30[10]) = v21;
    sub_1C4411CF4();
    sub_1C44FD704(v11, v26, v24);
    sub_1C440962C(v29);
    sub_1C4419720();
    sub_1C47FAADC(v11, v25);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47F8510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47F7B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47F8538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C460B424();
  *a1 = result;
  return result;
}

uint64_t sub_1C47F8560(uint64_t a1)
{
  v2 = sub_1C47FEC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47F859C(uint64_t a1)
{
  v2 = sub_1C47FEC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47F8608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47FAA94(&qword_1EC0BD858, type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry, &unk_1C4F2F9C0);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C47F86D4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_1C47F8814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47FAA94(&qword_1EC0BD8B8, type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry, &unk_1C4F2F998);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C47F88D0()
{
  v0 = *aFeedback_4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

uint64_t sub_1C47F8914(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4EFBF38();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = sub_1C4EFBAF8();
  sub_1C44F9918(v13, a2);
  sub_1C442B738(v13, a2);
  v14 = *MEMORY[0x1E69A00C8];
  v15 = *(v5 + 104);
  v15(v12, v14, v3);
  v15(v9, v14, v3);
  return sub_1C4EFBAE8();
}

uint64_t sub_1C47F8A48()
{
  v0 = sub_1C456902C(&qword_1EC0BD8D0, &qword_1C4F2FE10);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C456902C(&qword_1EC0BD7D0, &qword_1C4F2F6F8);
  sub_1C44F9918(v3, qword_1EDE2CCC0);
  sub_1C442B738(v3, qword_1EDE2CCC0);
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
  v4 = sub_1C4EFA748();
  sub_1C440BAA8(v2, 1, 1, v4);
  sub_1C47FB308();
  sub_1C47FAA94(qword_1EDDE5398, type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry, &unk_1C4F2FDA8);
  sub_1C4EFAE78();
  return sub_1C4420C3C(v2, &qword_1EC0BD8D0, &qword_1C4F2FE10);
}

uint64_t sub_1C47F8BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F737365636F7270 && a2 == 0xED0000656D614E72;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEA00000000006449)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C47F8C80(char a1)
{
  if (a1)
  {
    return 0x6B63616264656566;
  }

  else
  {
    return 0x6F737365636F7270;
  }
}

void sub_1C47F8CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v33[1] = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0BD878, &qword_1C4F2FDE0);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v33 - v31;
  sub_1C4417F50(v26, v26[3]);
  sub_1C47FEB30();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    sub_1C4F027F8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1C43FBC80();
}

uint64_t sub_1C47F8E1C(void *a1)
{
  sub_1C456902C(&qword_1EC0BD868, &qword_1C4F2FDD8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440DED0();
  v4 = a1[4];
  sub_1C4417F50(a1, a1[3]);
  sub_1C47FEB30();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C4F026D8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C47F8FC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B63616264656566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61727265666564 && a2 == 0xED00007972746E45)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C47F9094(char a1)
{
  if (a1)
  {
    return 0x6C61727265666564;
  }

  else
  {
    return 0x6B63616264656566;
  }
}

void sub_1C47F90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v27 = v26;
  v41 = v28;
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v44 = v30;
  sub_1C456902C(&qword_1EC0BD890, &qword_1C4F2FDE8);
  sub_1C43FCDF8();
  v42 = v32;
  v43 = v31;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v34 = sub_1C4402274();
  v35 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback(v34);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C4417F50(v27, v27[3]);
  sub_1C47FEC2C();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v27);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_1C4406E8C();
    sub_1C47FAA94(v37, v38, &unk_1C4F2F9C0);
    sub_1C4F026C8();
    sub_1C43FD798();
    sub_1C47FB35C(v44, v24, v39);
    sub_1C47FEB84();
    sub_1C4F026C8();
    (*(v42 + 8))(v25, v43);
    v40 = v24 + *(v35 + 20);
    *v40 = v45;
    *(v40 + 16) = v46;
    sub_1C44FD704(v24, v41, type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback);
    sub_1C440962C(v27);
    sub_1C47FAADC(v24, type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47F93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47F8BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47F93D8(uint64_t a1)
{
  v2 = sub_1C47FEB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47F9414(uint64_t a1)
{
  v2 = sub_1C47FEB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47F9450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C47F8E1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C47F94A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47FEB84();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C47F953C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_1C442B738(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1C47F95E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C47FB634();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C47F96D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47FEBD8();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C47F9728()
{
  v0 = *aDeferred_1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

uint64_t sub_1C47F9760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47F97B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47F8FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47F97DC(uint64_t a1)
{
  v2 = sub_1C47FEC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47F9818(uint64_t a1)
{
  v2 = sub_1C47FEC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47F986C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47FAA94(&qword_1EC0BD860, type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback, &unk_1C4F2F9E8);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C47F9900()
{
  sub_1C43FE96C();
  v111 = v0;
  v95[2] = v2;
  v4 = v3;
  v109 = v5;
  v110 = v6;
  v103 = type metadata accessor for FeedbackLogEntry(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v112 = v8;
  v9 = sub_1C456902C(&unk_1EC0BCA48, &qword_1C4F29BB0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4402274();
  v12 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(v11);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  v118 = v95 - v15;
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v108 = v95 - v18;
  sub_1C43FBE44();
  v106 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v96 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v100 = v21;
  sub_1C43FBE44();
  v22 = sub_1C4EFBD38();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v105 = sub_1C456902C(&qword_1EC0BD7C0, &qword_1C4F2F6F0);
  sub_1C43FCDF8();
  v104 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v95 - v27;
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v29 = swift_allocObject();
  v101 = xmmword_1C4F0D130;
  *(v29 + 16) = xmmword_1C4F0D130;
  v30 = sub_1C43FC144();
  sub_1C4418A94(v30);
  v31 = sub_1C4EFADA8();
  v32 = MEMORY[0x1E699FDA8];
  *(v29 + 56) = v31;
  *(v29 + 64) = v32;
  sub_1C4422F90((v29 + 32));
  v33 = MEMORY[0x1E69A0050];
  sub_1C4EFB908();
  v34 = sub_1C43FD168();
  v35(v34);
  v36 = v106;
  sub_1C4406E8C();
  sub_1C47FAA94(v37, v38, &unk_1C4F2FDA8);
  v107 = v28;
  v39 = v108;
  sub_1C4EFAE08();

  sub_1C4467FE0(v109, v39);
  if (sub_1C44157D4(v39, 1, v36) == 1)
  {
    sub_1C4420C3C(v39, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C441D210();
  }

  else
  {
    v40 = v96;
    sub_1C44333BC();
    v41 = v33;
    v42 = v100;
    v43(v100, v39, v36);
    v114[3] = v22;
    v114[4] = v41;
    sub_1C4422F90(v114);
    v44 = sub_1C43FC144();
    sub_1C4418A94(v44);
    v113[3] = v36;
    v113[4] = MEMORY[0x1E699FD80];
    v45 = sub_1C4422F90(v113);
    v40[2](v45, v42, v36);
    v116 = sub_1C4EFB298();
    v117 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v115);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v113);
    sub_1C440962C(v114);
    sub_1C43FD7B0(&qword_1EC0BD7C8, &qword_1EC0BD7C0, &qword_1C4F2F6F0);
    v46 = v95[1];
    v22 = v105;
    v47 = v107;
    sub_1C4EFB438();
    (v40[1])(v42, v36);
    v48 = sub_1C43FD168();
    v49(v48);
    sub_1C440962C(&v115);
    sub_1C44333BC();
    v50(v47, v46, v22);
  }

  sub_1C4403190(&qword_1EDDF00D8, &qword_1EC0BD7C0, &qword_1C4F2F6F0);
  sub_1C4406E8C();
  sub_1C47FAA94(v51, v52, &unk_1C4F2FD60);
  sub_1C44022DC();
  v53 = v111;
  v54 = sub_1C4EFAFD8();
  if (v53)
  {
    v55 = sub_1C44250CC();
    v56(v55, v22);
  }

  else
  {
    v111 = 0;
    v96 += 2;
    v99 = v4;
    v98 = v1;
    v97 = v12;
    v100 = v54;
    while (1)
    {
      v57 = v111;
      sub_1C47884E0();
      if (v57)
      {
        v91 = sub_1C44250CC();
        v92(v91, v22);

        goto LABEL_16;
      }

      if (sub_1C44157D4(v1, 1, v12) == 1)
      {
        break;
      }

      v111 = 0;
      sub_1C43FD798();
      sub_1C47FB35C(v1, v118, v58);
      sub_1C4411CF4();
      v59 = v102;
      sub_1C44FD704(v118, v102, v60);
      v61 = v112;
      (*v96)(v112, v59 + v12[5], v36);
      v62 = (v59 + v12[6]);
      v63 = *v62;
      v22 = v62[1];
      v64 = (v59 + v12[7]);
      v65 = *v64;
      v66 = v64[1];
      v67 = (v59 + v12[8]);
      v68 = *v67;
      v69 = v67[1];
      v70 = (v59 + v12[9]);
      v71 = v70[1];
      v109 = *v70;
      v110 = v65;
      v72 = *(v59 + v12[10]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v73 = sub_1C43FD168();
      sub_1C44344B8(v73, v74);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4419720();
      sub_1C47FAADC(v59, v75);
      v76 = v103;
      v77 = (v61 + *(v103 + 20));
      *v77 = v63;
      v77[1] = v22;
      v78 = v61;
      v79 = v109;
      v80 = v110;
      v81 = (v78 + v76[6]);
      *v81 = v110;
      v81[1] = v66;
      v108 = v66;
      v82 = (v78 + v76[7]);
      *v82 = v68;
      v82[1] = v69;
      v83 = (v78 + v76[8]);
      *v83 = v79;
      v83[1] = v71;
      *(v78 + v76[9]) = v72;
      sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
      v84 = swift_allocObject();
      *(v84 + 16) = v101;
      strcpy(&v115, "Feedback for ");
      HIWORD(v115) = -4864;
      v114[0] = v72;
      v85 = sub_1C4F02858();
      MEMORY[0x1C6940010](v85);
      v86 = v99;

      v87 = v115;
      *(v84 + 56) = MEMORY[0x1E69E6158];
      *(v84 + 32) = v87;
      sub_1C4460240(v84);

      if (*(v86 + 16))
      {
        sub_1C445FAA8(v80, v108);
        if (v88)
        {
          sub_1C4802E34();
        }
      }

      sub_1C441FA28();
      sub_1C47FAADC(v112, v89);
      sub_1C4419720();
      sub_1C47FAADC(v118, v90);
      v1 = v98;
      v12 = v97;
      v36 = v106;
      sub_1C441D210();
    }

    v93 = sub_1C44250CC();
    v94(v93, v22);

    sub_1C4420C3C(v1, &unk_1EC0BCA48, &qword_1C4F29BB0);
  }

LABEL_16:
  sub_1C43FBC80();
}

void sub_1C47FA1E8()
{
  sub_1C43FE96C();
  v100 = v0;
  v94 = v4;
  v93 = v5;
  v98 = v6;
  v92 = type metadata accessor for FeedbackLogEntry(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v8 = sub_1C456902C(&unk_1EC0BCA48, &qword_1C4F29BB0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C4402274();
  v11 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(v10);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v85 - v18;
  sub_1C43FBE44();
  v95 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v88 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v99 = v21;
  sub_1C43FBE44();
  v22 = sub_1C4EFBD38();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v86 = sub_1C456902C(&qword_1EC0BD7C0, &qword_1C4F2F6F0);
  sub_1C43FCDF8();
  v96 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C4F0D130;
  v30 = sub_1C43FC144();
  sub_1C4418A94(v30);
  v31 = sub_1C4EFADA8();
  v32 = MEMORY[0x1E699FDA8];
  *(v29 + 56) = v31;
  *(v29 + 64) = v32;
  sub_1C4422F90((v29 + 32));
  sub_1C4EFB908();
  v33 = sub_1C43FD168();
  v34(v33);
  v35 = v95;
  sub_1C4406E8C();
  sub_1C47FAA94(v36, v37, &unk_1C4F2FDA8);
  v97 = v28;
  v38 = v90;
  sub_1C4EFAE08();

  sub_1C4467FE0(v98, v38);
  if (sub_1C44157D4(v38, 1, v35) == 1)
  {
    sub_1C4420C3C(v38, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v39 = v88;
    sub_1C44333BC();
    v40 = v99;
    v41(v99, v38, v35);
    v102[3] = v22;
    v102[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(v102);
    v42 = sub_1C43FC144();
    sub_1C4418A94(v42);
    v101[3] = v35;
    v101[4] = MEMORY[0x1E699FD80];
    v43 = sub_1C4422F90(v101);
    v39[2](v43, v40, v35);
    v103[3] = sub_1C4EFB298();
    v103[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v103);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v101);
    sub_1C440962C(v102);
    sub_1C43FD7B0(&qword_1EC0BD7C8, &qword_1EC0BD7C0, &qword_1C4F2F6F0);
    v44 = v85;
    v45 = v86;
    v46 = v97;
    sub_1C4EFB438();
    (v39[1])(v99, v35);
    v47 = sub_1C43FD168();
    v48(v47);
    sub_1C440962C(v103);
    sub_1C44333BC();
    v49(v46, v44, v45);
  }

  sub_1C4403190(&qword_1EDDF00D8, &qword_1EC0BD7C0, &qword_1C4F2F6F0);
  sub_1C4406E8C();
  sub_1C47FAA94(v50, v51, &unk_1C4F2FD60);
  sub_1C44022DC();
  v52 = sub_1C4EFAFD8();
  if (v1)
  {
    v53 = sub_1C44250CC();
    v54(v53);
  }

  else
  {
    v88 += 2;
    v87 = v3;
    v89 = v15;
    v90 = v52;
    while (1)
    {
      sub_1C47884E0();
      if (sub_1C44157D4(v3, 1, v11) == 1)
      {
        break;
      }

      sub_1C43FD798();
      sub_1C47FB35C(v3, v15, v55);
      sub_1C4411CF4();
      v56 = v15;
      v57 = v91;
      sub_1C44FD704(v56, v91, v58);
      (*v88)(v2, v57 + v11[5], v35);
      v59 = (v57 + v11[6]);
      v60 = *v59;
      v61 = v59[1];
      v62 = (v57 + v11[7]);
      v63 = v62[1];
      v104 = *v62;
      v64 = (v57 + v11[8]);
      v65 = *v64;
      v66 = v64[1];
      v67 = (v57 + v11[9]);
      v68 = v67[1];
      v100 = *v67;
      v69 = *(v57 + v11[10]);
      v98 = v65;
      v99 = v69;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44344B8(v60, v61);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4419720();
      sub_1C47FAADC(v57, v70);
      v71 = v92;
      v72 = (v2 + *(v92 + 20));
      *v72 = v60;
      v72[1] = v61;
      v73 = (v2 + v71[6]);
      *v73 = v104;
      v73[1] = v63;
      v74 = (v2 + v71[7]);
      *v74 = v98;
      v74[1] = v66;
      v75 = (v2 + v71[8]);
      *v75 = v100;
      v75[1] = v68;
      v76 = v89;
      *(v2 + v71[9]) = v99;
      if (v76[8])
      {
        v77 = 0;
      }

      else
      {
        v77 = *v76;
      }

      v15 = v76;
      v78 = v93(v77, &v76[v11[5]], v2, 0, 0);
      sub_1C441FA28();
      sub_1C47FAADC(v2, v79);
      sub_1C4419720();
      sub_1C47FAADC(v15, v80);
      v3 = v87;
      v35 = v95;
      v81 = v96;
      v82 = v97;
      sub_1C442B9BC();
      if ((v78 & 1) == 0)
      {
        (*(v81 + 8))(v82, v86);

        goto LABEL_14;
      }
    }

    v83 = sub_1C44250CC();
    v84(v83, v86);
    sub_1C442B9BC();

    sub_1C4420C3C(v3, &unk_1EC0BCA48, &qword_1C4F29BB0);
  }

LABEL_14:
  sub_1C43FBC80();
}

uint64_t sub_1C47FAA94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47FAADC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C47FAB34()
{
  sub_1C43FE96C();
  v92 = v0;
  v87 = v2;
  v88 = v3;
  v86 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v85 = v5;
  v6 = sub_1C43FBE44();
  v84 = type metadata accessor for FeedbackLogEntry(v6);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v83 = v8;
  v9 = sub_1C456902C(&unk_1EC0BCA28, &qword_1C4F29BA0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - v11;
  v13 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v89 = v15;
  sub_1C43FBE44();
  v16 = sub_1C4EFBD38();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C456902C(&qword_1EC0BD7D0, &qword_1C4F2F6F8);
  sub_1C43FCDF8();
  v81 = v24;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  sub_1C456902C(&qword_1EC0BD7D8, &qword_1C4F2F700);
  sub_1C43FCDF8();
  v78 = v29;
  v79 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  sub_1C456902C(&qword_1EC0BD7E0, &qword_1C4F2F708);
  sub_1C43FCDF8();
  v90 = v34;
  v91 = v33;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  v77 = &v75 - v36;
  if (qword_1EDDE5440 != -1)
  {
    swift_once();
  }

  v76 = sub_1C442B738(v23, qword_1EDE2CCC0);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v37 = swift_allocObject();
  v75 = xmmword_1C4F0D130;
  *(v37 + 16) = xmmword_1C4F0D130;
  v38 = sub_1C43FC144();
  sub_1C4418A94(v38);
  v39 = sub_1C4EFADA8();
  v40 = MEMORY[0x1E699FDA8];
  *(v37 + 56) = v39;
  *(v37 + 64) = v40;
  sub_1C4422F90((v37 + 32));
  sub_1C4EFB908();
  (*(v18 + 8))(v22, v16);
  sub_1C4401CBC(&qword_1EDDF0120, &qword_1EC0BD7D0, &qword_1C4F2F6F8, MEMORY[0x1E699FF40]);
  sub_1C4EFB2F8();

  sub_1C47FB308();
  sub_1C4401CBC(&qword_1EDDF0128, &qword_1EC0BD7D0, &qword_1C4F2F6F8, MEMORY[0x1E699FF30]);
  sub_1C4EFAE98();
  (*(v81 + 8))(v27, v23);
  v41 = v77;
  v42 = v79;
  sub_1C4EFB858();
  (*(v78 + 8))(v32, v42);
  sub_1C4403190(&qword_1EDDF00E0, &qword_1EC0BD7E0, &qword_1C4F2F708);
  sub_1C47FAA94(&qword_1EDDE5430, type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback, &unk_1C4F2FCE8);
  v43 = v91;
  v44 = sub_1C4EFAFD8();
  (*(v90 + 8))(v41, v43);
  if (!v1)
  {
    v45 = v89;
    v80 = v12;
    v81 = v44;
    v82 = v13;
    while (1)
    {
      sub_1C478864C();
      if (sub_1C44157D4(v12, 1, v13) == 1)
      {
        break;
      }

      sub_1C47FB35C(v12, v45, type metadata accessor for FeedbackLogDatabase.FeedbackLogDeferralEntryWithFeedback);
      sub_1C4411CF4();
      v46 = v85;
      sub_1C44FD704(v45, v85, v47);
      v48 = v86;
      v49 = *(v86 + 20);
      sub_1C4EF9CD8();
      sub_1C43FBCE0();
      v51 = v83;
      (*(v50 + 16))(v83, v46 + v49);
      v52 = (v46 + v48[6]);
      v53 = *v52;
      v54 = v52[1];
      v55 = (v46 + v48[7]);
      v56 = v55[1];
      v93 = *v55;
      v57 = (v46 + v48[8]);
      v58 = *v57;
      v59 = v57[1];
      v60 = (v46 + v48[9]);
      v61 = v60[1];
      v92 = *v60;
      v62 = *(v46 + v48[10]);
      v90 = v58;
      v91 = v62;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44344B8(v53, v54);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4419720();
      v63 = v46;
      v13 = v82;
      sub_1C47FAADC(v63, v64);
      v65 = v84;
      v66 = (v51 + *(v84 + 20));
      *v66 = v53;
      v66[1] = v54;
      v67 = (v51 + v65[6]);
      *v67 = v93;
      v67[1] = v56;
      v68 = (v51 + v65[7]);
      *v68 = v90;
      v68[1] = v59;
      v69 = (v51 + v65[8]);
      *v69 = v92;
      v69[1] = v61;
      v45 = v89;
      *(v51 + v65[9]) = v91;
      if (*(v45 + 8))
      {
        v70 = 0;
      }

      else
      {
        v70 = *v45;
      }

      v71 = v87(v70, v45 + v48[5], v51, *(v45 + *(v13 + 20)), *(v45 + *(v13 + 20) + 8));
      sub_1C441FA28();
      sub_1C47FAADC(v51, v72);
      sub_1C4405BF8();
      v12 = v80;
      if ((v71 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_1C4420C3C(v12, &unk_1EC0BCA28, &qword_1C4F29BA0);
LABEL_12:
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v73 = swift_allocObject();
    v74 = MEMORY[0x1E69E6158];
    *(v73 + 16) = v75;
    *(v73 + 56) = v74;
    *(v73 + 32) = 1701736260;
    *(v73 + 40) = 0xE400000000000000;
    sub_1C4460240(v73);
  }

  sub_1C43FBC80();
}

unint64_t sub_1C47FB308()
{
  result = qword_1EDDE5438;
  if (!qword_1EDDE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE5438);
  }

  return result;
}

uint64_t sub_1C47FB35C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t FeedbackLogDatabase.Reader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C47FB414(uint64_t a1)
{
  v3 = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v6 = *(v5 + 20);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v7 + 16))(v1 + v6, a1);
  v8 = type metadata accessor for FeedbackLogEntry(0);
  v9 = (a1 + v8[5]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v8[6]);
  v13 = *v12;
  v14 = v12[1];
  v15 = (a1 + v8[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = (a1 + v8[8]);
  v19 = *(a1 + v8[9]);
  v20 = *v18;
  v21 = v18[1];
  *v1 = 0;
  *(v1 + 8) = 1;
  v22 = (v1 + v3[6]);
  *v22 = v11;
  v22[1] = v10;
  v23 = (v1 + v3[7]);
  *v23 = v13;
  v23[1] = v14;
  v24 = (v1 + v3[8]);
  *v24 = v16;
  v24[1] = v17;
  v25 = (v1 + v3[9]);
  *v25 = v20;
  v25[1] = v21;
  *(v1 + v3[10]) = v19;
  sub_1C44344B8(v11, v10);
  sub_1C4406E8C();
  sub_1C47FAA94(v26, v27, &unk_1C4F2FCA8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB6C8();
  sub_1C4419720();
  return sub_1C47FAADC(v1, v28);
}

uint64_t sub_1C47FB5B8()
{
  sub_1C47FB634();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB6C8();
}

unint64_t sub_1C47FB634()
{
  result = qword_1EC0BD7F0;
  if (!qword_1EC0BD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD7F0);
  }

  return result;
}

void sub_1C47FB688()
{
  sub_1C43FE96C();
  v2 = v1;
  v13 = v3;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0BD7D8, &qword_1C4F2F700);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440DED0();
  v10 = sub_1C4EFBD38();
  v20 = v10;
  v21 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v19);
  sub_1C4EFBD48();
  v16 = MEMORY[0x1E69E7360];
  v17 = MEMORY[0x1E69A01C8];
  v15[0] = v5;
  v11 = sub_1C4EFB298();
  v12 = MEMORY[0x1E699FE60];
  v18[3] = v11;
  v18[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v18);
  sub_1C4EFBB28();
  sub_1C4420C3C(v15, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v19);
  v20 = v10;
  v21 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v19);
  sub_1C4EFBD48();
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = MEMORY[0x1E69A0130];
  v14[0] = v13;
  v14[1] = v2;
  v16 = v11;
  v17 = v12;
  sub_1C4422F90(v15);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(v14, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v19);
  v20 = v11;
  v21 = v12;
  sub_1C4422F90(v19);
  sub_1C440C4CC();
  sub_1C4EFBB08();
  sub_1C440962C(v15);
  sub_1C440962C(v18);
  sub_1C47FB308();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4EFB898();
  (*(v8 + 8))(v0, v6);
  sub_1C43FBC80();
}

uint64_t FeedbackLogDatabase.__allocating_init(config:)()
{
  v0 = swift_allocObject();
  FeedbackLogDatabase.init(config:)();
  return v0;
}

uint64_t sub_1C47FB994(uint64_t a1)
{
  v2 = sub_1C4EFB078();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v14 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFB0B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  *&v18[0] = MEMORY[0x1E69E7CC0];
  sub_1C47FAA94(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v17 = a1;
  v11 = v20;
  sub_1C4EFBFC8();
  if (v11)
  {
    return (*(v5 + 8))(v10, v4);
  }

  v20 = *(v5 + 8);
  v20(v10, v4);
  *&v18[0] = MEMORY[0x1E69E7CC0];
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v20(v7, v4);
  v13 = v14;
  sub_1C4EFB068();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1C4EFBFB8();
  sub_1C4420C3C(v18, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v15 + 8))(v13, v16);
}

uint64_t sub_1C47FBD44()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = *MEMORY[0x1E69A00C8];
  v7 = sub_1C4EFBF38();
  v8 = *(v7 - 8);
  v19 = *(v8 + 104);
  v18 = v8 + 104;
  v19(v5, v6, v7);
  sub_1C440BAA8(v5, 0, 1, v7);
  sub_1C4EFB488();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE18();
  v16 = sub_1C4EFBE38();
  sub_1C440BAA8(v2, 0, 1, v16);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v17 = v6;
  v15 = v7;
  v9 = v19;
  v19(v5, v6, v7);
  sub_1C440BAA8(v5, 0, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFB528();

  sub_1C4EFBDD8();
  v10 = v16;
  sub_1C440BAA8(v2, 0, 1, v16);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v11 = v6;
  v12 = v15;
  v9(v5, v11, v15);
  sub_1C440BAA8(v5, 0, 1, v12);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v2, 0, 1, v10);
  sub_1C4EFB498();

  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBE08();
  sub_1C440BAA8(v2, 0, 1, v10);
  sub_1C4EFB498();

  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v2, 0, 1, v10);
  sub_1C4EFB498();

  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v2, 0, 1, v10);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v19(v5, v17, v12);
  sub_1C440BAA8(v5, 0, 1, v12);
  sub_1C4EFB538();

  return sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C47FC200(uint64_t a1)
{
  v21 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD8C8, &qword_1C4F2FE08);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  sub_1C4EFBE08();
  v20 = sub_1C4EFBE38();
  sub_1C440BAA8(v12, 0, 1, v20);
  sub_1C4EFB498();
  sub_1C4420C3C(v12, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v19 = *MEMORY[0x1E69A00C8];
  v13 = v19;
  v14 = sub_1C4EFBF38();
  v18 = *(*(v14 - 8) + 104);
  v18(v9, v13, v14);
  sub_1C440BAA8(v9, 0, 1, v14);
  sub_1C4EFB538();

  sub_1C4420C3C(v9, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFB528();

  v15 = *MEMORY[0x1E69A00B8];
  v16 = sub_1C4EFBEF8();
  (*(*(v16 - 8) + 104))(v6, v15, v16);
  sub_1C440BAA8(v6, 0, 1, v16);
  sub_1C440BAA8(v3, 1, 1, v16);
  sub_1C4EFB508();

  sub_1C4420C3C(v3, &qword_1EC0BD8C8, &qword_1C4F2FE08);
  sub_1C4420C3C(v6, &qword_1EC0BD8C8, &qword_1C4F2FE08);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v12, 0, 1, v20);
  sub_1C4EFB498();
  sub_1C4420C3C(v12, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v18(v9, v19, v14);
  sub_1C440BAA8(v9, 0, 1, v14);
  sub_1C4EFB538();

  return sub_1C4420C3C(v9, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedbackLogDatabase.prune()()
{
  v2 = v0;
  v79 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v77 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v76 - v9;
  v19 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - v20;
  v21 = 0;
  v22 = 1.25;
  v19.n128_u64[0] = 134218496;
  v80 = v19;
  while (1)
  {
    sub_1C442BB40(v11, v12, v13, v14, v15, v16, v17, v18);
    if (v25)
    {
      break;
    }

    v26 = v23;
    if (v23 < 25000001 || v21 > 2)
    {
      break;
    }

    v28 = v24;
    v29 = ceil((v23 - 25000000) / (v23 / v24 / 1.25));
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v1 = v29;
    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CD8();
    if (sub_1C43FEB2C(v32))
    {
      v33 = swift_slowAlloc();
      v81 = v2;
      *v33 = v80.n128_u32[0];
      *(v33 + 4) = v26;
      *(v33 + 12) = 2048;
      *(v33 + 14) = v28;
      *(v33 + 22) = 2048;
      *(v33 + 24) = v1;
      _os_log_impl(&dword_1C43F8000, v31, v32, "Feedback Log is %lld bytes with %lld items. Deleting %ld items.", v33, 0x20u);
      v2 = v81;
      sub_1C43FBE2C();
    }

    MEMORY[0x1EEE9AC00](v34);
    *(&v76 - 2) = v1;
    sub_1C446C37C(sub_1C47FE284, (&v76 - 4));
    v21 = (v21 + 1);
    v11 = sub_1C4F01968();
    if (v2)
    {
      return;
    }
  }

  v35 = v76;
  sub_1C4EF9CC8();
  v1 = v78;
  sub_1C4EF9BE8();
  v21 = v77;
  v28 = v79;
  v81 = v77[1];
  v81(v35, v79);
  sub_1C4EF9AD8();
  v22 = v36;
  if (qword_1EDDFECB0 == -1)
  {
    goto LABEL_17;
  }

LABEL_37:
  sub_1C44064A8();
  swift_once();
LABEL_17:
  v37 = sub_1C4F00978();
  v38 = sub_1C442B738(v37, qword_1EDDFECB8);
  (v21[2])(v7, v1, v28);
  v80.n128_u64[0] = v38;
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CB8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v76 = v41;
    v77 = swift_slowAlloc();
    v82 = v77;
    *v41 = 136315138;
    sub_1C44003AC();
    sub_1C47FAA94(v42, v43, MEMORY[0x1E6969570]);
    v44 = sub_1C4F02858();
    v46 = v45;
    v47 = v7;
    v48 = v78;
    v81(v47, v28);
    v49 = sub_1C441D828(v44, v46, &v82);
    v1 = v48;

    v50 = v76;
    *(v76 + 4) = v49;
    _os_log_impl(&dword_1C43F8000, v39, v40, "Pruning Feedback Log horizon to %s", v50, 0xCu);
    sub_1C440962C(v77);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v51 = (v81)(v7, v28);
  }

  MEMORY[0x1EEE9AC00](v51);
  *(&v76 - 2) = v22;
  v52 = sub_1C443DD50(sub_1C47FE268, (&v76 - 4));
  if (v52 >= 1)
  {
    v60 = v52;
    v61 = sub_1C4F00968();
    v62 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      *(v63 + 4) = v60;
      _os_log_impl(&dword_1C43F8000, v61, v62, "Pruning Feedback Log expired %ld items.", v63, 0xCu);
      sub_1C43FBE2C();
    }
  }

  sub_1C442BB40(v52, v53, v54, v55, v56, v57, v58, v59);
  if (v65)
  {
    goto LABEL_30;
  }

  v66 = v64;
  if (v64 < 100000001)
  {
    goto LABEL_30;
  }

  v67 = sub_1C4F00968();
  v68 = sub_1C4F01CB8();
  if (sub_1C43FEB2C(v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134218240;
    *(v69 + 4) = v66;
    *(v69 + 12) = 2048;
    *(v69 + 14) = 100000000;
    _os_log_impl(&dword_1C43F8000, v67, v68, "Disk size %lld exceeds limit %lld. Vacuuming.", v69, 0x16u);
    sub_1C43FBE2C();
  }

  type metadata accessor for ErrorHandlingDatabasePool(0);
  sub_1C4435048();
  sub_1C47FAA94(v70, v71, &unk_1C4F244D0);
  sub_1C4EFB2E8();
  if (!v2)
  {
LABEL_30:
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CB8();
    if (sub_1C43FEB2C(v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1C43F8000, v73, v74, "Done pruning Feedback Log", v75, 2u);
      sub_1C43FBE2C();
    }

    v72 = v1;
  }

  else
  {
    v72 = v1;
  }

  v81(v72, v79);
}

uint64_t sub_1C47FCD08(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFBC98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFB678();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-1] - v12;
  sub_1C4EFB648();
  sub_1C4EFB638();
  v16[3] = MEMORY[0x1E69E6530];
  v16[4] = MEMORY[0x1E69A0178];
  v16[0] = a2;
  sub_1C4EFB658();
  sub_1C4420C3C(v16, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C4EFB638();
  (*(v8 + 32))(v10, v13, v7);
  sub_1C4EFBC88();
  sub_1C4EFC008();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C47FCF30@<X0>(uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = sub_1C456902C(&qword_1EC0BD7C0, &qword_1C4F2F6F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(0);
  v14[3] = sub_1C4EFBD38();
  v14[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v14);
  sub_1C4EFBD48();
  v13[3] = MEMORY[0x1E69E63B0];
  v13[4] = MEMORY[0x1E69A0160];
  *v13 = a3;
  v15[3] = sub_1C4EFB298();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v15);
  sub_1C4EFB818();
  sub_1C440962C(v13);
  sub_1C440962C(v14);
  sub_1C47FAA94(qword_1EDDE5398, type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry, &unk_1C4F2FDA8);
  sub_1C4EFAE28();
  sub_1C440962C(v15);
  v10 = sub_1C4EFB898();
  result = (*(v7 + 8))(v9, v6);
  if (!v3)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1C47FD134@<X0>(uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_1C4EFB768();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  sub_1C4EFBC58();
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_1C4EFB758();
  v12 = sub_1C4EFBC38();
  if (v2)
  {
    (*(v3 + 8))(v11, v32);
    return sub_1C4420C3C(&v33, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  v29 = v5;
  v30 = v12;
  v13 = v31;
  v14 = v11;
  v15 = *(v3 + 8);
  v15(v14, v32);
  sub_1C4420C3C(&v33, &unk_1EC0BC770, &qword_1C4F10DC0);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_1C4EFB758();
  v28 = sub_1C4EFBC38();
  v15(v8, v32);
  sub_1C4420C3C(&v33, &unk_1EC0BC770, &qword_1C4F10DC0);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v16 = v29;
  sub_1C4EFB758();
  v18 = sub_1C4EFBC38();
  v15(v16, v32);
  sub_1C4420C3C(&v33, &unk_1EC0BC770, &qword_1C4F10DC0);
  if (!v30)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v19 = v13;
    goto LABEL_14;
  }

  sub_1C4EFBC68();

  v19 = v13;
  if (!*(&v34 + 1))
  {
    goto LABEL_14;
  }

  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v28)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_14;
  }

  v20 = v36;

  sub_1C4EFBC68();

  if (!*(&v34 + 1))
  {
LABEL_14:
    sub_1C4420C3C(&v33, &qword_1EC0B9038, &unk_1C4F231C0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v18)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_22;
  }

  v21 = v36;

  sub_1C4EFBC68();

  if (!*(&v34 + 1))
  {
LABEL_22:
    sub_1C4420C3C(&v33, &qword_1EC0B9038, &unk_1C4F231C0);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {

    v22 = v36;
    *v13 = v21;
    *(v13 + 8) = v20;
    *(v13 + 16) = v22;
    *(v13 + 24) = 0;
    return result;
  }

LABEL_15:
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v23 = sub_1C4F00978();
  sub_1C442B738(v23, qword_1EDE2E088);
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CE8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1C43F8000, v24, v25, "Could not cast size stats for feedback log.", v26, 2u);
    MEMORY[0x1C6942830](v26, -1, -1);
  }

  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  return result;
}

uint64_t FeedbackLogDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore19FeedbackLogDatabase_url;
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  sub_1C4403178();
  sub_1C47FAADC(v0 + v3, v4);
  return v0;
}

uint64_t FeedbackLogDatabase.__deallocating_deinit()
{
  FeedbackLogDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C47FD794()
{
  if (qword_1EDDFF168[0] != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C47FD808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B63616264656566 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7542746E65696C63 && a2 == 0xEC000000656C646ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47FD9FC(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6B63616264656566;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x746E6169726176;
      break;
    case 4:
      result = 0x7542746E65696C63;
      break;
    case 5:
      result = 0x6449746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C47FDAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47FDB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47FD808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47FDB30(uint64_t a1)
{
  v2 = sub_1C47FE2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47FDB6C(uint64_t a1)
{
  v2 = sub_1C47FE2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedbackLogEntry.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0BD7F8, &qword_1C4F2F710);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FE61C();
  sub_1C4417F50(a1, a1[3]);
  v8 = sub_1C47FE2A0();
  sub_1C440F61C(&type metadata for FeedbackLogEntry.CodingKeys, v9, v8);
  sub_1C4EF9CD8();
  sub_1C44003AC();
  sub_1C47FAA94(v10, v11, MEMORY[0x1E6969538]);
  sub_1C4F027E8();
  if (!v1)
  {
    v12 = type metadata accessor for FeedbackLogEntry(0);
    v15 = sub_1C4404338(v12[5]);
    v16 = v13;
    sub_1C44344B8(v15, v13);
    sub_1C446E5F8();
    sub_1C4F027E8();
    sub_1C4434000(v15, v16);
    sub_1C4404338(v12[6]);
    sub_1C44171C0(2);
    sub_1C4F02798();
    sub_1C4404338(v12[7]);
    sub_1C44171C0(3);
    sub_1C4F02738();
    sub_1C4404338(v12[8]);
    sub_1C44171C0(4);
    sub_1C4F02738();
    sub_1C4F027F8();
  }

  return (*(v6 + 8))(v2, v4);
}

void FeedbackLogEntry.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v26 = v3;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v28 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C456902C(&qword_1EC0BD808, &qword_1C4F2F718);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4422338();
  v27 = type metadata accessor for FeedbackLogEntry(v11);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v29 = v13;
  sub_1C4417F50(v2, v2[3]);
  sub_1C47FE2A0();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1C44003AC();
    sub_1C47FAA94(v14, v15, MEMORY[0x1E6969558]);
    sub_1C43FC360();
    sub_1C4F026C8();
    (*(v28 + 32))(v29, v9, v4);
    sub_1C444C16C();
    sub_1C43FC360();
    sub_1C4F026C8();
    *(v29 + v27[5]) = v30;
    sub_1C43FC360();
    v16 = sub_1C4F02678();
    sub_1C44160B4(v16, v17, v27[6]);
    sub_1C4425B8C(3);
    v18 = sub_1C4F02618();
    sub_1C44160B4(v18, v19, v27[7]);
    sub_1C4425B8C(4);
    v20 = sub_1C4F02618();
    sub_1C44160B4(v20, v21, v27[8]);
    sub_1C4425B8C(5);
    v22 = sub_1C4F026D8();
    v23 = sub_1C442FDA4();
    v24(v23);
    *(v29 + v27[9]) = v22;
    sub_1C44FD704(v29, v26, type metadata accessor for FeedbackLogEntry);
    sub_1C440962C(v2);
    sub_1C441FA28();
    sub_1C47FAADC(v29, v25);
  }

  sub_1C43FBC80();
}

unint64_t sub_1C47FE2A0()
{
  result = qword_1EC0BD800;
  if (!qword_1EC0BD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD800);
  }

  return result;
}

void sub_1C47FE4E0(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FeedbackLogEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C47FE6A8(uint64_t a1)
{
  result = type metadata accessor for FeedbackLogDatabase.FeedbackLogDatabaseEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C47FE744(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
  if (v1 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C47FE8B0()
{
  result = qword_1EC0BD818;
  if (!qword_1EC0BD818)
  {
    sub_1C4572308(&qword_1EC0BD820, qword_1C4F2F958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD818);
  }

  return result;
}

unint64_t sub_1C47FE930()
{
  result = qword_1EC0BD828;
  if (!qword_1EC0BD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD828);
  }

  return result;
}

unint64_t sub_1C47FE98C()
{
  result = qword_1EC0BD830;
  if (!qword_1EC0BD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD830);
  }

  return result;
}

unint64_t sub_1C47FE9E4()
{
  result = qword_1EC0BD838;
  if (!qword_1EC0BD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD838);
  }

  return result;
}

unint64_t sub_1C47FEA3C()
{
  result = qword_1EC0BD840;
  if (!qword_1EC0BD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD840);
  }

  return result;
}

unint64_t sub_1C47FEA94()
{
  result = qword_1EC0BD848;
  if (!qword_1EC0BD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD848);
  }

  return result;
}

unint64_t sub_1C47FEB30()
{
  result = qword_1EC0BD870;
  if (!qword_1EC0BD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD870);
  }

  return result;
}

unint64_t sub_1C47FEB84()
{
  result = qword_1EC0BD880;
  if (!qword_1EC0BD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD880);
  }

  return result;
}

unint64_t sub_1C47FEBD8()
{
  result = qword_1EC0BD888;
  if (!qword_1EC0BD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD888);
  }

  return result;
}

unint64_t sub_1C47FEC2C()
{
  result = qword_1EC0BD898;
  if (!qword_1EC0BD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD898);
  }

  return result;
}

unint64_t sub_1C47FEC80()
{
  result = qword_1EC0BD8A8;
  if (!qword_1EC0BD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD8A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackLogDatabase.FeedbackLogDatabaseEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C47FEDC0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C47FEEA0()
{
  result = qword_1EC0BD8D8;
  if (!qword_1EC0BD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD8D8);
  }

  return result;
}

unint64_t sub_1C47FEEF8()
{
  result = qword_1EC0BD8E0;
  if (!qword_1EC0BD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD8E0);
  }

  return result;
}

unint64_t sub_1C47FEF50()
{
  result = qword_1EC0BD8E8;
  if (!qword_1EC0BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD8E8);
  }

  return result;
}

unint64_t sub_1C47FEFA8()
{
  result = qword_1EC0BD8F0;
  if (!qword_1EC0BD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD8F0);
  }

  return result;
}

unint64_t sub_1C47FF000()
{
  result = qword_1EC0BD8F8;
  if (!qword_1EC0BD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD8F8);
  }

  return result;
}

unint64_t sub_1C47FF058()
{
  result = qword_1EC0BD900;
  if (!qword_1EC0BD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD900);
  }

  return result;
}

unint64_t sub_1C47FF0B0()
{
  result = qword_1EC0BD908;
  if (!qword_1EC0BD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD908);
  }

  return result;
}

unint64_t sub_1C47FF108()
{
  result = qword_1EC0BD910;
  if (!qword_1EC0BD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD910);
  }

  return result;
}

unint64_t sub_1C47FF160()
{
  result = qword_1EC0BD918;
  if (!qword_1EC0BD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD918);
  }

  return result;
}

uint64_t FeedbackProcessorResult.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t EventMetadata.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventMetadata(0) + 20);
  v4 = sub_1C4EF9CD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EventMetadata(uint64_t a1)
{
  result = qword_1EC0BD928;
  if (!qword_1EC0BD928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventMetadata.clientBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventMetadata(0) + 36));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t FeedbackMetadata.clientBundleId.getter()
{
  v1 = *(v0 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C47FF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a6(AssociatedTypeWitness, AssociatedConformanceWitness);
}

unint64_t sub_1C47FF524()
{
  result = qword_1EC0BD920;
  if (!qword_1EC0BD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD920);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackProcessorResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1C47FF6B8(uint64_t a1)
{
  type metadata accessor for EventLogDatabase.Reader();
  if (v1 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0]);
      if (v3 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
        if (v4 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C47FF850(uint64_t a1)
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

uint64_t sub_1C47FF8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C4F02938(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C47FF990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4F01298();

  return sub_1C4F01298();
}

uint64_t sub_1C47FF9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C47FFA68()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C4F02AF8();
  sub_1C47FF990(v6, v1, v2, v4, v3);
  return sub_1C4F02B68();
}

void sub_1C47FFB54(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = v3;
  v45 = a1;
  v8 = *v3;
  v9 = *(*v3 + 88);
  v10 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1C4F01F48();
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v36 - v13;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v19 = *(a2 + 16);
  if (!v19)
  {
LABEL_12:
    *a3 = 0;
    return;
  }

  v36 = v18;
  v37 = v17;
  v38 = v16;
  v40 = a3;
  v41 = v4;
  v20 = *(a2 + 8);
  v21 = v19;
  v22 = swift_allocObject();
  v39 = v10;
  v22[2] = v10;
  v22[3] = v9;
  v43 = v9;
  v44 = v22;
  v22[4] = *(v8 + 96);
  v51 = v45;
  v23 = *(v8 + 112);
  sub_1C44003C4();
  swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v5 + v23);
  v24 = v49;
  *(v5 + v23) = 0x8000000000000000;
  v46 = v20;
  v47 = v21;
  sub_1C445FAA8(v20, v21);
  if (__OFADD__(*(v24 + 16), (v25 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v26 = v25;
    sub_1C4F02498();
    v27 = sub_1C4F02458();
    v28 = v49;
    if ((v27 & 1) == 0 || (sub_1C445FAA8(v46, v47), (v26 & 1) == (v29 & 1)))
    {
      *(v5 + v23) = v28;
      if ((v26 & 1) == 0)
      {
        sub_1C480024C();
        v49 = v46;
        v50 = v47;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F02488();
      }

      v30 = v39;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v32 = (*(AssociatedConformanceWitness + 16))(&v51, AssociatedTypeWitness, AssociatedConformanceWitness);
      swift_endAccess();
      a3 = v40;
      if (v32)
      {
        v49 = v46;
        v50 = v47;
        sub_1C44003C4();
        sub_1C4F00FA8();
        v33 = v42;
        sub_1C4F00EF8();
        swift_endAccess();
        if (sub_1C44157D4(v33, 1, AssociatedTypeWitness) == 1)
        {
          (*(v37 + 8))(v33, v38);
        }

        else
        {
          v34 = v48;
          v35 = v36;
          (*(v48 + 32))(v36, v33, AssociatedTypeWitness);
          (*(v43 + 40))(v35, v46, v47, v30);
          (*(v34 + 8))(v35, AssociatedTypeWitness);
        }
      }

      goto LABEL_12;
    }
  }

  sub_1C4F029F8();
  __break(1u);
}

uint64_t sub_1C47FFFE8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1C4800084()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1C4800110()
{
  sub_1C4800084();

  return swift_deallocClassInstance();
}

unint64_t sub_1C48001A4()
{
  result = qword_1EC0BD9B8;
  if (!qword_1EC0BD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD9B8);
  }

  return result;
}

void *sub_1C4800258(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v55 = MEMORY[0x1E69E7CC8];
  v44 = *(a1 + 16);
  v45 = a1;
  v3 = a1 + 32;
  v43 = xmmword_1C4F0D130;
  while (1)
  {
    if (v44 == v1)
    {

      return v2;
    }

    if (v1 >= *(v45 + 16))
    {
      break;
    }

    sub_1C442E860(v3, &v50);
    v4 = v52;
    v5 = v53;
    v6 = sub_1C4409678(&v50, v52);
    v9 = FeedbackEventProcessor.eventTypeCode.getter(v4, v5, v6, v7, v8);
    v11 = v10;
    sub_1C4409678(&v50, v52);
    v12 = FeedbackEventProcessor.feedbackTypeCode.getter();
    v14 = v13;
    v22 = sub_1C457EB3C();
    v23 = v2[2];
    v24 = (v15 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v15;
    if (v2[3] < v25)
    {
      sub_1C467AF58(v25, 1, v16, v17, v18, v19, v20, v21, v41, v42, v43, *(&v43 + 1), v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
      v2 = v55;
      v27 = sub_1C457EB3C();
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_21;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v2[7];
      sub_1C441D670(&v50, &v46);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458D76C();
        v30 = v38;
        *(v29 + 8 * v22) = v38;
      }

      v32 = *(v30 + 16);
      if (v32 >= *(v30 + 24) >> 1)
      {
        sub_1C458D76C();
        v30 = v39;
        *(v29 + 8 * v22) = v39;
      }

      *(v30 + 16) = v32 + 1;
      sub_1C441D670(&v46, v30 + 40 * v32 + 32);
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8C58, &unk_1C4F0E090);
      v33 = swift_allocObject();
      *(v33 + 16) = v43;
      sub_1C441D670(&v50, v33 + 32);
      v2[(v22 >> 6) + 8] |= 1 << v22;
      v34 = (v2[6] + 32 * v22);
      *v34 = v9;
      v34[1] = v11;
      v34[2] = v12;
      v34[3] = v14;
      *(v2[7] + 8 * v22) = v33;
      v35 = v2[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v2[2] = v37;
    }

    v3 += 40;
    ++v1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C4800524(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v49 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v37 = xmmword_1C4F0D130;
  v39 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    sub_1C442E860(v5, &v44);
    sub_1C4409678(&v44, v46);
    v6 = PureFeedbackProcessor.feedbackTypeCode.getter();
    v8 = v7;
    v16 = sub_1C445FAA8(v6, v7);
    v17 = v3[2];
    v18 = (v9 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v9;
    if (v3[3] < v19)
    {
      sub_1C467AF44(v19, 1, v10, v11, v12, v13, v14, v15, v35, v36, v37, *(&v37 + 1), v38, v39, v40, *(&v40 + 1), v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      v3 = v49;
      v21 = sub_1C445FAA8(v6, v8);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {

      v23 = v3[7];
      sub_1C441D670(&v44, &v40);
      v24 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458D6B0();
        v24 = v32;
        *(v23 + 8 * v16) = v32;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_1C458D6B0();
        v24 = v33;
        *(v23 + 8 * v16) = v33;
      }

      *(v24 + 16) = v26 + 1;
      sub_1C441D670(&v40, v24 + 40 * v26 + 32);
      v4 = v39;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B8C68, &unk_1C4F0E0A0);
      v27 = swift_allocObject();
      *(v27 + 16) = v37;
      sub_1C441D670(&v44, v27 + 32);
      v3[(v16 >> 6) + 8] |= 1 << v16;
      v28 = (v3[6] + 16 * v16);
      *v28 = v6;
      v28[1] = v8;
      *(v3[7] + 8 * v16) = v27;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_20;
      }

      v3[2] = v31;
    }

    v5 += 40;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C48007A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BAB78, &qword_1C4F30630);
    v3 = sub_1C4F02558();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C4806934(a1, 1, &v6, sub_1C467B174, &unk_1EC0BD9F0, &qword_1C4F30638);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C480085C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BAB70, &unk_1C4F16CA0);
    v3 = sub_1C4F02558();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C4806934(a1, 1, &v6, sub_1C467B188, &qword_1EC0BD9E8, &unk_1C4F30620);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C4800918(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for EventLogDatabase.Reader();
  swift_allocObject();

  sub_1C478F054();

  a2(&v6, v4);

  if (v2)
  {
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {

    return v6;
  }

  else
  {
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4800A2C(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for EventLogDatabase.Reader();
  swift_allocObject();

  sub_1C478F054();

  a2(v4);

  if (v2 || swift_isUniquelyReferenced_nonNull_native())
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4800B20(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for FeedbackLogDatabase.Reader();
  *(swift_allocObject() + 16) = a1;

  a2(v5);

  if (v2 || swift_isUniquelyReferenced_nonNull_native())
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t FeedbackWalker.__allocating_init(config:processors:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  sub_1C4404CE0();
  FeedbackWalker.init(config:processors:)();
  return v2;
}

void FeedbackWalker.init(config:processors:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Configuration(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EF96B8();
  sub_1C44099C4(v12);
  v0[6] = sub_1C4EF96A8();
  v13 = sub_1C4EF93D8();
  sub_1C44099C4(v13);
  v0[7] = sub_1C4EF93C8();
  if (qword_1EDDFF248 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4ABF944();
  if (v1)
  {

    sub_1C4419738();
    sub_1C4453DEC(v6, v15);

    v19 = type metadata accessor for FeedbackWalker();
    sub_1C43FC384(v19);
    goto LABEL_6;
  }

  v0[2] = v14;
  sub_1C4406EAC();
  sub_1C4430B8C(v6, v11, v16);
  v17 = type metadata accessor for FeedbackLogDatabase(0);
  sub_1C44099C4(v17);
  FeedbackLogDatabase.init(config:)();
  v38 = v6;
  v0[3] = v18;
  v20 = *(v4 + 16);
  v44 = v4;
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v4 + 32;
    for (i = *(v4 + 16); i; --i)
    {
      sub_1C442E860(v22, v43);
      sub_1C441D670(v43, v42);
      sub_1C456902C(&qword_1EC0B8C40, &unk_1C4F0EF60);
      v24 = sub_1C456902C(&qword_1EC0B8C60, &unk_1C4F0EF70);
      if (sub_1C440F6CC(v24))
      {
        if (*(&v40 + 1))
        {
          sub_1C441D670(&v39, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FF010();
            sub_1C458D76C();
            v21 = v27;
          }

          v26 = *(v21 + 16);
          v25 = *(v21 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1C43FCFE8(v25);
            sub_1C43FF010();
            sub_1C458D76C();
            v21 = v28;
          }

          *(v21 + 16) = v26 + 1;
          sub_1C441D670(v42, v21 + 40 * v26 + 32);
          goto LABEL_18;
        }
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
      }

      sub_1C4420C3C(&v39, &qword_1EC0BD9C0, &unk_1C4F30450);
LABEL_18:
      v22 += 40;
    }
  }

  v2[4] = sub_1C4800258(v21);
  if (v20)
  {
    v29 = v44 + 32;
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C442E860(v29, v43);
      sub_1C441D670(v43, v42);
      sub_1C456902C(&qword_1EC0B8C40, &unk_1C4F0EF60);
      v31 = sub_1C456902C(&qword_1EC0B8C70, &qword_1C4F0EF80);
      if (sub_1C440F6CC(v31))
      {
        if (*(&v40 + 1))
        {
          sub_1C441D670(&v39, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458D6B0();
            v30 = v34;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1C43FCFE8(v32);
            sub_1C458D6B0();
            v30 = v35;
          }

          *(v30 + 16) = v33 + 1;
          sub_1C441D670(v42, v30 + 40 * v33 + 32);
          goto LABEL_30;
        }
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
      }

      sub_1C4420C3C(&v39, &qword_1EC0BD9C8, &qword_1C4F30460);
LABEL_30:
      v29 += 40;
      if (!--v20)
      {
        goto LABEL_33;
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v36 = sub_1C4800524(v30);
  sub_1C4419738();
  sub_1C4453DEC(v38, v37);
  v2[5] = v36;
LABEL_6:
  sub_1C43FBC80();
}

uint64_t sub_1C480113C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v8 = a1;
  v9 = a2;
  v6[2] = a3;
  v6[3] = &v7;
  return a5(a4, v6);
}

uint64_t sub_1C4801194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v7[2] = a5;
  v7[3] = &v8;
  return sub_1C4465390(a6, v7);
}

uint64_t sub_1C4801268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v96 = a2;
  v101 = *MEMORY[0x1E69E9840];
  v6 = sub_1C456902C(&qword_1EC0BC788, &unk_1C4F30600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = (v84 - v7);
  v95 = type metadata accessor for EventLogEvent(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = (v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v99 = MEMORY[0x1E69E7CC0];
    sub_1C459E4B0(0, v9, 0);
    v10 = v99;
    v11 = (a3 + 32);
    do
    {
      v97 = *v11;
      v12 = sub_1C4EFE068();
      v14 = v13;
      v99 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C459E4B0(v15 > 1, v16 + 1, 1);
        v10 = v99;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 32 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      *(v17 + 48) = v97;
      ++v11;
      --v9;
    }

    while (v9);
  }

  v18 = sub_1C48007A0(v10);
  v19 = v4;
  sub_1C456902C(&qword_1EC0B8C48, &qword_1C4F0E080);
  inited = swift_initStackObject();
  v97 = xmmword_1C4F0D130;
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  while (1)
  {
    while (1)
    {
      v27 = *(inited + 16);
      if (!v27)
      {
LABEL_33:
      }

      v28 = v27 - 1;
      v29 = inited + 32 + 24 * v28;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      *(inited + 16) = v28;
      if (!v32)
      {
        sub_1C4791AA4(v30, v31, v20, v21, v22, v23, v24, v25, v84[0], v84[1], v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
        if (v19)
        {
          goto LABEL_33;
        }

        sub_1C4801B44(v33);
        v32 = v34;
      }

      if (*(v32 + 16))
      {
        break;
      }

      if (*(inited + 16) == 1)
      {
        sub_1C4F02AC8();
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C48348D8();
      v32 = v80;
    }

    v35 = v93;
    v36 = *(v32 + 16);
    if (!v36)
    {
      __break(1u);
    }

    v37 = v36 - 1;
    v38 = *(v32 + 8 * v37 + 32);
    *(v32 + 16) = v37;
    v89 = v38;
    sub_1C4790868(v38, v35);
    if (v19)
    {
      break;
    }

    v90 = v18;
    v39 = v95;
    if (sub_1C44157D4(v35, 1, v95) == 1)
    {
      sub_1C4420C3C(v35, &qword_1EC0BC788, &unk_1C4F30600);
    }

    else
    {
      v40 = v35;
      v41 = v94;
      sub_1C4806B0C(v40, v94, type metadata accessor for EventLogEvent);
      v42 = (v41 + *(v39 + 40));
      v43 = v42[1];
      v87 = *v42;
      v86 = v43;
      if (sub_1C465C7F4(v87, v43, v90) && (v44 = sub_1C4802C78(), v45))
      {
        v84[0] = v44;
        v84[1] = v45;
      }

      else
      {
        strcpy(v84, "Unknown Event");
        HIWORD(v84[1]) = -4864;
      }

      v91 = sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
      v46 = swift_allocObject();
      *(v46 + 16) = v97;
      v92 = *(inited + 16);
      v99 = sub_1C4F01418();
      v100 = v47;
      MEMORY[0x1C6940010](0x203A4449202DLL, 0xE600000000000000);
      v98 = *v41;
      v48 = sub_1C4F02858();
      MEMORY[0x1C6940010](v48);

      MEMORY[0x1C6940010](8250, 0xE200000000000000);
      MEMORY[0x1C6940010](*(v41 + *(v95 + 28)), *(v41 + *(v95 + 28) + 8));
      v49 = v99;
      v50 = v100;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 32) = v49;
      *(v46 + 40) = v50;
      sub_1C4F02AC8();

      v85 = swift_allocObject();
      *(v85 + 16) = v97;
      v99 = 0;
      v100 = 0xE000000000000000;
      sub_1C4F02248();
      v51 = sub_1C4F01418();
      MEMORY[0x1C6940010](v51);

      MEMORY[0x1C6940010](8224, 0xE200000000000000);
      v52 = v95;
      sub_1C4EF9CD8();
      sub_1C45C2A2C();
      v53 = v94;
      v54 = sub_1C4F02858();
      MEMORY[0x1C6940010](v54);

      MEMORY[0x1C6940010](0x20726F6620, 0xE500000000000000);
      v55 = v53;
      sub_1C4F01A28();
      MEMORY[0x1C6940010](6514035, 0xE300000000000000);
      v56 = v99;
      v57 = v100;
      v58 = v85;
      *(v85 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 32) = v56;
      *(v58 + 40) = v57;
      sub_1C4F02AC8();

      v59 = swift_allocObject();
      *(v59 + 16) = v97;
      v99 = sub_1C4F01418();
      v100 = v60;
      MEMORY[0x1C6940010](8224, 0xE200000000000000);
      MEMORY[0x1C6940010](v87, v86);
      MEMORY[0x1C6940010](8250, 0xE200000000000000);
      v61 = (v55 + *(v52 + 44));
      if (v61[1])
      {
        v62 = *v61;
        v63 = v61[1];
      }

      else
      {
        v63 = 0xEA0000000000746ELL;
        v62 = 0x6169726176206F4ELL;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v62, v63);

      v64 = v99;
      v65 = v100;
      *(v59 + 56) = MEMORY[0x1E69E6158];
      *(v59 + 32) = v64;
      *(v59 + 40) = v65;
      sub_1C4F02AC8();

      v66 = swift_allocObject();
      *(v66 + 16) = v97;
      v99 = sub_1C4F01418();
      v100 = v67;
      MEMORY[0x1C6940010](8224, 0xE200000000000000);
      MEMORY[0x1C6940010](v84[0], v84[1]);

      v68 = v99;
      v69 = v100;
      v70 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      *(v66 + 32) = v68;
      *(v66 + 40) = v69;
      sub_1C4F02AC8();

      v71 = swift_allocObject();
      *(v71 + 16) = v97;
      v72 = sub_1C4F01418();
      *(v71 + 56) = v70;
      *(v71 + 32) = v72;
      *(v71 + 40) = v73;
      sub_1C4F02AC8();

      sub_1C4453DEC(v94, type metadata accessor for EventLogEvent);
    }

    v74 = *(inited + 16);
    v75 = *(inited + 24) >> 1;
    v76 = v74 + 1;
    if (v75 <= v74)
    {
      sub_1C458D828();
      inited = v81;
      v75 = *(v81 + 24) >> 1;
    }

    *(inited + 16) = v76;
    v77 = inited + 24 * v74;
    *(v77 + 32) = v30;
    *(v77 + 40) = v31;
    *(v77 + 48) = v32;
    v78 = v74 + 2;
    if (v75 < v78)
    {
      sub_1C458D828();
      inited = v82;
    }

    *(inited + 16) = v78;
    v79 = inited + 24 * v76;
    v18 = v90;
    *(v79 + 32) = v89;
    *(v79 + 40) = 0;
    *(v79 + 48) = 0;
  }
}

void sub_1C4801B44(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C48348D8();
      v1 = v9;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1C4801BFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C459E4F0(0, v2, 0);
    v3 = v19;
    v5 = (a1 + 32);
    do
    {
      v18 = *v5;
      v6 = sub_1C4EFF118();
      v8 = v7;
      v19 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = sub_1C43FCFE8(v9);
        sub_1C459E4F0(v12, v10 + 1, 1);
        v3 = v19;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 32 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      *(v11 + 48) = v18;
      ++v5;
      --v2;
    }

    while (v2);
  }

  v13 = sub_1C480085C(v3);
  MEMORY[0x1EEE9AC00](v13);
  v17[6] = v14;
  v17[7] = v1;
  MEMORY[0x1EEE9AC00](v14);
  v17[2] = sub_1C4806574;
  v17[3] = v15;
  sub_1C4465390(sub_1C4806590, v17);
}

uint64_t sub_1C4801D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1C4EF9CD8();
  sub_1C440BAA8(v5, 1, 1, v6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C47F9900();
  return sub_1C4420C3C(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
}

uint64_t sub_1C4801E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C4EF9CD8();
  sub_1C440BAA8(a2, 1, 1, v5);
  v7[2] = a1;
  v8 = v2;
  v9 = a2;
  return sub_1C480113C(sub_1C48065AC, v7, sub_1C4806B6C, sub_1C4806BB4, sub_1C446C37C);
}

uint64_t sub_1C4801F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v29 - v11;
  sub_1C445FFF0(a3, v29 - v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  type metadata accessor for FeedbackStandardProcessor(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_bookmark;
  v15 = sub_1C4EF9CD8();
  sub_1C440BAA8(v13 + v14, 1, 1, v15);
  sub_1C45B69E4(v12, v13 + OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_start);
  v17 = *(a4 + 32);
  v16 = *(a4 + 40);
  type metadata accessor for FeedbackCoreProcessor();
  v18 = swift_allocObject();
  sub_1C4EF96B8();
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v18[6] = sub_1C4EF96A8();
  v18[8] = 0;
  swift_unknownObjectWeakInit();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = v17;
  v18[5] = v16;
  v18[8] = &off_1F43ED3F8;
  swift_unknownObjectWeakAssign();

  sub_1C480215C(v19, v20, v21, v22, v23, v24, v25, v26, v29[0], v29[1], v29[2], v29[3], v29[4], v30, v31, v32, v33, v34, v35, v36);

  if (v5)
  {
  }

  v28 = OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_bookmark;
  swift_beginAccess();
  sub_1C445FFF0(v13 + v28, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);

  return sub_1C45AD734(v12, v30);
}

void sub_1C480215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v103 = v22;
  v105 = v21;
  sub_1C440AB18();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  v108 = v31;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v28)
  {
LABEL_7:
    sub_1C4432324();
    v35 = *(v20 + 16);
    v36 = *(v33 + 16);
    if (__OFADD__(v36, v35))
    {
      goto LABEL_64;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v36 + v35 > *(v33 + 24) >> 1)
    {
      sub_1C43FF010();
      sub_1C458D76C();
      v33 = v37;
    }

    v28 &= v28 - 1;
    if (*(v20 + 16))
    {
      if ((*(v33 + 24) >> 1) - *(v33 + 16) < v35)
      {
        goto LABEL_66;
      }

      sub_1C456902C(&qword_1EC0B8C60, &unk_1C4F0EF70);
      swift_arrayInitWithCopy();

      if (v35)
      {
        v38 = *(v33 + 16);
        v39 = __OFADD__(v38, v35);
        v40 = v38 + v35;
        if (v39)
        {
          goto LABEL_68;
        }

        *(v33 + 16) = v40;
      }
    }

    else
    {

      if (v35)
      {
        __break(1u);
LABEL_18:
        v41 = v108;
        v104 = v33;

        v42 = *(v33 + 16);
        if (v42)
        {
          a10 = MEMORY[0x1E69E7CC0];
          sub_1C459E530();
          v23 = a10;
          v43 = v33 + 32;
          do
          {
            sub_1C442E860(v43, v109);
            v44 = v110;
            v45 = sub_1C4409678(v109, v110);
            v112 = v44;
            v41 = sub_1C44333C8();
            v46 = *(*(v44 - 8) + 16);
            v46(v41, v45, v44);
            v47 = sub_1C440962C(v109);
            a10 = v23;
            v48 = v23;
            v49 = *(v23 + 16);
            v50 = *(v48 + 24);
            if (v49 >= v50 >> 1)
            {
              sub_1C43FCFE8(v50);
              sub_1C459E530();
            }

            v107 = &v103;
            MEMORY[0x1EEE9AC00](v47);
            sub_1C43FBCC4();
            v53 = v52 - v51;
            v46((v52 - v51), v41, v44);
            sub_1C44FDC24(v49, v53, &a10, v44, v108);
            sub_1C440962C(v111);
            v23 = a10;
            v43 += 40;
            --v42;
          }

          while (v42);
          v106 = a10;
        }

        else
        {

          v106 = MEMORY[0x1E69E7CC0];
        }

        sub_1C440AB18();
        v56 = v55 & v54;
        v58 = (v57 + 63) >> 6;
        v108 = v59;
        swift_bridgeObjectRetain_n();
        v60 = 0;
        v61 = MEMORY[0x1E69E7CC0];
        while (v56)
        {
LABEL_31:
          sub_1C4432324();
          v63 = v41[2];
          v64 = *(v61 + 16);
          if (__OFADD__(v64, v63))
          {
            goto LABEL_65;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (!swift_isUniquelyReferenced_nonNull_native() || v64 + v63 > *(v61 + 24) >> 1)
          {
            sub_1C43FF010();
            sub_1C458D6B0();
            v61 = v65;
          }

          v56 &= v56 - 1;
          if (v41[2])
          {
            if ((*(v61 + 24) >> 1) - *(v61 + 16) < v63)
            {
              goto LABEL_67;
            }

            sub_1C456902C(&qword_1EC0B8C70, &qword_1C4F0EF80);
            swift_arrayInitWithCopy();

            if (v63)
            {
              v66 = *(v61 + 16);
              v39 = __OFADD__(v66, v63);
              v67 = v66 + v63;
              if (v39)
              {
                goto LABEL_69;
              }

              *(v61 + 16) = v67;
            }
          }

          else
          {

            if (v63)
            {
              __break(1u);
LABEL_42:
              v104 = v61;

              v68 = *(v104 + 16);
              if (v68)
              {
                a10 = MEMORY[0x1E69E7CC0];
                v69 = v104;
                sub_1C459E530();
                v70 = a10;
                v71 = v69 + 32;
                do
                {
                  sub_1C442E860(v71, v109);
                  v72 = v110;
                  v73 = sub_1C4409678(v109, v110);
                  v112 = v72;
                  v74 = sub_1C44333C8();
                  v75 = *(*(v72 - 8) + 16);
                  v75(v74, v73, v72);
                  v76 = sub_1C440962C(v109);
                  a10 = v70;
                  v77 = v70;
                  v78 = *(v70 + 16);
                  v79 = *(v77 + 24);
                  if (v78 >= v79 >> 1)
                  {
                    sub_1C43FCFE8(v79);
                    sub_1C459E530();
                  }

                  v107 = &v103;
                  MEMORY[0x1EEE9AC00](v76);
                  sub_1C43FBCC4();
                  v82 = v81 - v80;
                  v75((v81 - v80), v74, v72);
                  sub_1C44FDC24(v78, v82, &a10, v72, v108);
                  sub_1C440962C(v111);
                  v70 = a10;
                  v71 += 40;
                  --v68;
                }

                while (v68);
              }

              else
              {

                v70 = MEMORY[0x1E69E7CC0];
              }

              v83 = v106;
              v111[0] = v106;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v84 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C49D451C(v84);
              v85 = *(v111[0] + 16);
              v86 = v103;
              v87 = v105;
              if (v85)
              {
                v88 = v70;
                v89 = v111[0] + 32;
                do
                {
                  sub_1C442E860(v89, v111);
                  v90 = v113;
                  sub_1C4409678(v111, v112);
                  v91 = sub_1C4404CE0();
                  v92(v91, v90);
                  sub_1C440962C(v111);
                  v89 += 40;
                  --v85;
                }

                while (v85);

                v83 = v106;
                v70 = v88;
              }

              else
              {
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v93 = v70;
                v94 = *(v87 + 64);
                ObjectType = swift_getObjectType();
                v96 = *(v87 + 24);
                v97 = *(v94 + 8);

                v97(v96, sub_1C4806AF0, v87, ObjectType, v94);
                if (v86)
                {
                  swift_unknownObjectRelease();

LABEL_61:

                  sub_1C43FBC80();
                  return;
                }

                swift_unknownObjectRelease();
                v83 = v106;
                v70 = v93;
              }

              v111[0] = v83;
              sub_1C49D451C(v70);
              v98 = *(v111[0] + 16);
              if (v98)
              {
                v99 = v111[0] + 32;
                do
                {
                  sub_1C442E860(v99, v111);
                  v100 = v113;
                  sub_1C4409678(v111, v112);
                  v101 = sub_1C4404CE0();
                  v102(v101, v100);
                  sub_1C440962C(v111);
                  v99 += 40;
                  --v98;
                }

                while (v98);
              }

              goto LABEL_61;
            }
          }
        }

        while (1)
        {
          v62 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_63;
          }

          if (v62 >= v58)
          {
            goto LABEL_42;
          }

          v56 = *(v23 + 8 * v62);
          ++v60;
          if (v56)
          {
            v60 = v62;
            goto LABEL_31;
          }
        }
      }
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v30)
    {
      goto LABEL_18;
    }

    v28 = *(v23 + 8 * v34);
    ++v32;
    if (v28)
    {
      v32 = v34;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_1C4802C78()
{
  v0 = sub_1C44171D4();
  v1 = sub_1C4413190();
  sub_1C4802CD4(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v5;
}

void sub_1C4802CD4(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  sub_1C4EF9698();
  if (v3)
  {

    v12 = 0;
    v13 = 0;
  }

  else
  {
    (*(v6 + 16))(v8, v11, a2);
    v12 = sub_1C4F01198();
    v13 = v14;
    (*(v6 + 8))(v11, a2);
  }

  *a3 = v12;
  a3[1] = v13;
}

void sub_1C4802E34()
{
  v0 = sub_1C44171D4();
  v1 = sub_1C4413190();
  sub_1C4802E94(v1, v2, v3, v4, v5, v6);

  objc_autoreleasePoolPop(v0);
}

void sub_1C4802E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C4EF9698();
  if (v6)
  {
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C4F0D130;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0xD00000000000001ELL;
    *(v9 + 40) = 0x80000001C4F9BCE0;
    sub_1C4F02AC8();
  }

  else
  {
    v10 = sub_1C4EF93B8();
    v12 = v11;
    sub_1C4F01178();
    v13 = sub_1C4F01158();
    v15 = v14;
    sub_1C4434000(v10, v12);
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C4F0CE60;
    *(v16 + 32) = v19;
    *(v16 + 88) = MEMORY[0x1E69E6158];
    v17 = 32123;
    if (v15)
    {
      v17 = v13;
    }

    v18 = 0xE200000000000000;
    if (v15)
    {
      v18 = v15;
    }

    *(v16 + 56) = a5;
    *(v16 + 64) = v17;
    *(v16 + 72) = v18;
    swift_unknownObjectRetain();
    sub_1C4F02AC8();
    swift_unknownObjectRelease();
  }
}

uint64_t FeedbackWalker.deinit()
{

  return v0;
}

uint64_t FeedbackWalker.__deallocating_deinit()
{
  FeedbackWalker.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4803164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v120 = a5;
  *&v119 = a4;
  v115 = a1;
  v9 = sub_1C456902C(&qword_1EC0BC788, &unk_1C4F30600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v108 - v10);
  v12 = type metadata accessor for EventLogEvent(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v6[2];
  v16 = type metadata accessor for FeedbackLogEntry(0);
  v17 = v122;
  sub_1C4790868(*(a3 + *(v16 + 36)), v11);
  if (v17)
  {
    return v18 & 1;
  }

  v116 = v14;
  v113 = v16;
  v19 = sub_1C44157D4(v11, 1, v12);
  v20 = a3;
  v117 = a3;
  v118 = a2;
  v121 = v6;
  v122 = v15;
  if (v19 != 1)
  {
    v21 = v116;
    sub_1C4806B0C(v11, v116, type metadata accessor for EventLogEvent);
    v22 = v6[4];
    v23 = (v21 + *(v12 + 40));
    v24 = *v23;
    v25 = v23[1];
    v26 = (a3 + *(v113 + 24));
    v27 = *v26;
    v28 = v26[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C465C848(v24, v25, v27, v28, v22);

    if (!v29)
    {
      sub_1C4453DEC(v21, type metadata accessor for EventLogEvent);
      a2 = v118;
      v6 = v121;
      v15 = v122;
      goto LABEL_44;
    }

    if (v120)
    {
      v31 = 0;
      v32 = *(v29 + 16);
      v33 = v29 + 32;
      v34 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v32 == v31)
        {

          goto LABEL_25;
        }

        if (v31 >= *(v29 + 16))
        {
          goto LABEL_92;
        }

        sub_1C442E860(v33, &v126);
        v36 = v127;
        v35 = v128;
        sub_1C4409678(&v126, v127);
        v37 = (*(*(v35 + 8) + 8))(v36);
        if (v37 == v119 && v38 == v120)
        {
        }

        else
        {
          v40 = sub_1C4F02938();

          if ((v40 & 1) == 0)
          {
            sub_1C440962C(&v126);
            goto LABEL_21;
          }
        }

        sub_1C441D670(&v126, &v123);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v129 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C459E5B0();
          v34 = v129;
        }

        v42 = *(v34 + 16);
        if (v42 >= *(v34 + 24) >> 1)
        {
          sub_1C459E5B0();
          v34 = v129;
        }

        *(v34 + 16) = v42 + 1;
        sub_1C441D670(&v123, v34 + 40 * v42 + 32);
        v21 = v116;
LABEL_21:
        v33 += 40;
        ++v31;
      }
    }

    v34 = v29;
LABEL_25:
    v15 = v122;
    v114 = *(v34 + 16);
    if (!v114)
    {
LABEL_43:

      sub_1C4453DEC(v21, type metadata accessor for EventLogEvent);
      v20 = v117;
      a2 = v118;
      v6 = v121;
      goto LABEL_44;
    }

    v43 = 0;
    v44 = v34 + 32;
    *&v30 = 134218498;
    v108 = v30;
    *&v30 = 138412290;
    v112 = v30;
    while (1)
    {
      if (v43 >= *(v34 + 16))
      {
        goto LABEL_91;
      }

      sub_1C442E860(v44, &v126);
      v45 = v127;
      v46 = v128;
      v47 = sub_1C4409678(&v126, v127);
      sub_1C48047FC(v47, v15, v21, v118, v117, v45, v46, &v123);
      if (v123 == 1)
      {
        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        v48 = sub_1C4F00978();
        v111 = sub_1C442B738(v48, qword_1EDDFECB8);
        v49 = sub_1C4F00968();
        v50 = sub_1C4F01CB8();
        v51 = os_log_type_enabled(v49, v50);
        v52 = v121;
        if (v51)
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1C43F8000, v49, v50, "Deferring feedback processing", v53, 2u);
          MEMORY[0x1C6942830](v53, -1, -1);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          v15 = v122;
          goto LABEL_41;
        }

        v54 = v52[8];
        ObjectType = swift_getObjectType();
        v109 = v52[3];
        v56 = v127;
        v55 = v128;
        v57 = sub_1C4409678(&v126, v127);
        v124 = v56;
        v125 = *(v55 + 8);
        v58 = sub_1C4422F90(&v123);
        (*(*(v56 - 8) + 16))(v58, v57, v56);
        (*(v54 + 24))(v109, v115, &v123, ObjectType, v54);
      }

      else
      {
        v59 = v121;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          v15 = v122;
          goto LABEL_35;
        }

        v60 = v59[8];
        v111 = swift_getObjectType();
        ObjectType = v59[3];
        v62 = v127;
        v61 = v128;
        v63 = sub_1C4409678(&v126, v127);
        v124 = v62;
        v125 = *(v61 + 8);
        v64 = sub_1C4422F90(&v123);
        (*(*(v62 - 8) + 16))(v64, v63, v62);
        (*(v60 + 32))(ObjectType, v115, &v123, v111, v60);
      }

      swift_unknownObjectRelease();
      sub_1C440962C(&v123);
      v15 = v122;
LABEL_41:
      v21 = v116;
LABEL_35:
      ++v43;
      sub_1C440962C(&v126);
      v44 += 40;
      if (v114 == v43)
      {
        goto LABEL_43;
      }
    }
  }

  sub_1C4420C3C(v11, &qword_1EC0BC788, &unk_1C4F30600);
LABEL_44:
  v65 = sub_1C4663244();
  if (v65)
  {
    v34 = v65;
    if (v120)
    {
      v67 = 0;
      v68 = *(v65 + 16);
      v69 = v65 + 32;
      v70 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v68 == v67)
        {

          v79 = v117;
          a2 = v118;
          goto LABEL_64;
        }

        if (v67 >= *(v34 + 16))
        {
          goto LABEL_90;
        }

        sub_1C442E860(v69, &v126);
        v72 = v127;
        v71 = v128;
        sub_1C4409678(&v126, v127);
        v73 = (*(*(v71 + 8) + 8))(v72);
        if (v73 == v119 && v74 == v120)
        {
        }

        else
        {
          v76 = sub_1C4F02938();

          if ((v76 & 1) == 0)
          {
            sub_1C440962C(&v126);
            goto LABEL_61;
          }
        }

        sub_1C441D670(&v126, &v123);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v129 = v70;
        if ((v77 & 1) == 0)
        {
          sub_1C459E570();
          v70 = v129;
        }

        v78 = *(v70 + 16);
        if (v78 >= *(v70 + 24) >> 1)
        {
          sub_1C459E570();
          v70 = v129;
        }

        *(v70 + 16) = v78 + 1;
        sub_1C441D670(&v123, v70 + 40 * v78 + 32);
        v15 = v122;
LABEL_61:
        v69 += 40;
        ++v67;
      }
    }

    v70 = v65;
    v79 = v20;
LABEL_64:
    v120 = *(v70 + 16);
    if (v120)
    {
      v80 = 0;
      v34 = v70 + 32;
      *&v66 = 134218498;
      v112 = v66;
      *&v66 = 138412290;
      v119 = v66;
      do
      {
        if (v80 >= *(v70 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          swift_once();
LABEL_84:
          v103 = sub_1C4F00978();
          sub_1C442B738(v103, qword_1EDDFECB8);
          v104 = sub_1C4F00968();
          v105 = sub_1C4F01CD8();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&dword_1C43F8000, v104, v105, "Got cancellation. Stopping feedback processing.", v106, 2u);
            MEMORY[0x1C6942830](v106, -1, -1);
          }

          goto LABEL_87;
        }

        sub_1C442E860(v34, &v126);
        v81 = v127;
        v82 = v128;
        v83 = sub_1C4409678(&v126, v127);
        sub_1C4804978(v15, v83, a2, v79, v81, v82, &v123);
        if (v123 == 1)
        {
          if (qword_1EDDFECB0 != -1)
          {
            swift_once();
          }

          v84 = sub_1C4F00978();
          v116 = sub_1C442B738(v84, qword_1EDDFECB8);
          v85 = sub_1C4F00968();
          v86 = sub_1C4F01CB8();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_1C43F8000, v85, v86, "Deferring feedback processing", v87, 2u);
            MEMORY[0x1C6942830](v87, -1, -1);
          }

          v88 = v121;
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_78;
          }

          v89 = v88[8];
          v90 = swift_getObjectType();
          v113 = v88[3];
          v114 = v90;
          v92 = v127;
          v91 = v128;
          v93 = sub_1C4409678(&v126, v127);
          v124 = v92;
          v125 = *(v91 + 8);
          v94 = sub_1C4422F90(&v123);
          (*(*(v92 - 8) + 16))(v94, v93, v92);
          (*(v89 + 24))(v113, v115, &v123, v114, v89);
        }

        else
        {
          v95 = v121;
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_78;
          }

          v96 = v95[8];
          v116 = swift_getObjectType();
          v114 = v95[3];
          v98 = v127;
          v97 = v128;
          v99 = sub_1C4409678(&v126, v127);
          v124 = v98;
          v125 = *(v97 + 8);
          v100 = sub_1C4422F90(&v123);
          (*(*(v98 - 8) + 16))(v100, v99, v98);
          (*(v96 + 32))(v114, v115, &v123, v116, v96);
        }

        swift_unknownObjectRelease();
        sub_1C440962C(&v123);
        v79 = v117;
        a2 = v118;
LABEL_78:
        v15 = v122;
        ++v80;
        sub_1C440962C(&v126);
        v34 += 40;
      }

      while (v120 != v80);
    }

    v20 = v79;

    v6 = v121;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v101 = v6[8];
    v102 = swift_getObjectType();
    (*(v101 + 16))(v6[3], v115, a2, v20, v102, v101);
    swift_unknownObjectRelease();
  }

  LOBYTE(v34) = sub_1C4F01948();
  if (v34)
  {
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_84;
  }

LABEL_87:
  v18 = v34 ^ 1;
  return v18 & 1;
}

uint64_t sub_1C48047FC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v25 = a7;
  v9 = v8;
  v24 = a6;
  v16 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - v18;
  v20 = sub_1C4EF9CD8();
  (*(*(v20 - 8) + 16))(v19, a4, v20);
  sub_1C4430B8C(a5, &v19[*(v17 + 56)], type metadata accessor for FeedbackLogEntry);
  v21 = objc_autoreleasePoolPush();
  sub_1C4804AEC(v9, a3, v19, a2, a1, v24, v25, &v26, a8);
  objc_autoreleasePoolPop(v21);
  return sub_1C4420C3C(v19, &qword_1EC0BD9E0, &unk_1C4F30610);
}

uint64_t sub_1C4804978@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v20 = a6;
  v13 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = sub_1C4EF9CD8();
  (*(*(v17 - 8) + 16))(v16, a3, v17);
  sub_1C4430B8C(a4, &v16[*(v14 + 56)], type metadata accessor for FeedbackLogEntry);
  v18 = objc_autoreleasePoolPush();
  sub_1C4805208(v16, a1, a2, a5, v20, &v21, a7);
  objc_autoreleasePoolPop(v18);
  return sub_1C4420C3C(v16, &qword_1EC0BD9E0, &unk_1C4F30610);
}

void *sub_1C4804AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, CFIndex a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, _BYTE *a9@<X8>)
{
  v78 = a8;
  v68 = a5;
  v66 = a4;
  v72 = a3;
  v63 = a9;
  v64 = type metadata accessor for EventMetadata(0);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v56[-v16];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v56[-v18];
  v20 = *(a1 + 48);
  v21 = type metadata accessor for EventLogEvent(0);
  v73 = a6;
  v74 = a7;
  swift_getAssociatedConformanceWitness();
  v69 = v20;
  v22 = v76;
  result = sub_1C4EF9698();
  if (v22)
  {
    *v78 = v22;
  }

  else
  {
    v61 = a2;
    v62 = AssociatedTypeWitness;
    v76 = v19;
    swift_getAssociatedTypeWitness();
    v24 = v75;
    sub_1C445FFF0(v72, v75, &qword_1EC0BD9E0, &unk_1C4F30610);
    v25 = &v24[*(v71 + 48)];
    v60 = type metadata accessor for FeedbackLogEntry(0);
    v26 = (v25 + *(v60 + 20));
    v27 = *v26;
    v28 = v26[1];
    sub_1C44344B8(*v26, v28);
    sub_1C4453DEC(v25, type metadata accessor for FeedbackLogEntry);
    swift_getAssociatedConformanceWitness();
    sub_1C4EF9698();
    sub_1C4434000(v27, v28);
    v29 = sub_1C4EF9CD8();
    v30 = *(v29 - 8);
    v31 = v30;
    v59 = *(v30 + 8);
    v69 = v30 + 8;
    v59(v75, v29);
    v75 = v77[0];
    v32 = v21;
    v33 = *(v21 + 20);
    v34 = v64;
    v35 = v67;
    v36 = v61;
    (*(v31 + 16))(&v67[*(v64 + 20)], v61 + v33, v29);
    v37 = v36 + *(v32 + 24);
    v38 = *v37;
    LOBYTE(v28) = v37[8];
    v58 = *v36;
    v39 = v36 + *(v32 + 32);
    v61 = *v39;
    v57 = v39[8];
    v40 = v65;
    sub_1C445FFF0(v72, v65, &qword_1EC0BD9E0, &unk_1C4F30610);
    v41 = &v40[*(v71 + 48)];
    v42 = (v41 + *(v60 + 32));
    v44 = *v42;
    v43 = v42[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453DEC(v41, type metadata accessor for FeedbackLogEntry);
    v45 = v66;
    *v35 = v66;
    v46 = v35 + v34[6];
    *v46 = v38;
    v46[8] = v28;
    *(v35 + v34[7]) = v58;
    v47 = v45;
    v48 = v35 + v34[8];
    *v48 = v61;
    v48[8] = v57;
    v49 = (v35 + v34[9]);
    *v49 = v44;
    v49[1] = v43;

    v59(v40, v29);
    v72 = CFGetRetainCount(v47);
    v50 = v74;
    v51 = v73;
    (*(v74 + 64))(v77, v76);
    v52 = v70;
    v53 = v77[0];
    v54 = CFGetRetainCount(v47);
    if (v72 == v54)
    {
      swift_unknownObjectRelease();
      sub_1C4453DEC(v35, type metadata accessor for EventMetadata);
      result = (*(v52 + 8))(v76, v62);
      *v63 = v53;
    }

    else
    {
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4F9BD40);
      v55 = (*(*(v50 + 8) + 8))(v51);
      MEMORY[0x1C6940010](v55);

      MEMORY[0x1C6940010](0xD00000000000002FLL, 0x80000001C4F9BD60);
      result = sub_1C4F024A8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C4805208@<X0>(uint64_t a1@<X1>, const void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, _BYTE *a7@<X8>)
{
  v41 = a3;
  v42 = a6;
  v43 = a2;
  v36 = a7;
  v10 = sub_1C456902C(&qword_1EC0BD9E0, &unk_1C4F30610);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  swift_getAssociatedTypeWitness();
  v38 = a1;
  sub_1C445FFF0(a1, v14, &qword_1EC0BD9E0, &unk_1C4F30610);
  v15 = &v14[*(v10 + 48)];
  v37 = type metadata accessor for FeedbackLogEntry(0);
  v16 = &v15[*(v37 + 20)];
  v17 = *v16;
  v18 = v16[1];
  sub_1C44344B8(*v16, v18);
  v19 = v15;
  v20 = a4;
  v21 = a5;
  sub_1C4453DEC(v19, type metadata accessor for FeedbackLogEntry);
  v40 = v20;
  swift_getAssociatedConformanceWitness();
  v22 = v44;
  sub_1C4EF9698();
  if (v22)
  {
    sub_1C4434000(v17, v18);
    v23 = sub_1C4EF9CD8();
    result = (*(*(v23 - 8) + 8))(v14, v23);
    *v42 = v22;
  }

  else
  {
    sub_1C4434000(v17, v18);
    v25 = sub_1C4EF9CD8();
    v26 = *(*(v25 - 8) + 8);
    v26(v14, v25);
    v44 = v45;
    v27 = v39;
    sub_1C445FFF0(v38, v39, &qword_1EC0BD9E0, &unk_1C4F30610);
    v28 = v27 + *(v10 + 48);
    v29 = (v28 + *(v37 + 32));
    v31 = *v29;
    v30 = v29[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4453DEC(v28, type metadata accessor for FeedbackLogEntry);
    v32 = v43;

    v26(v27, v25);
    v33 = CFGetRetainCount(v32);
    v45 = v32;
    v46 = v31;
    v47 = v30;
    (*(v21 + 40))(&v48, v44, &v45, v40, v21);
    v34 = v48;
    if (v33 == CFGetRetainCount(v43))
    {
      swift_unknownObjectRelease();

      *v36 = v34;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4F9BD40);
      v35 = (*(*(v21 + 8) + 8))(v40);
      MEMORY[0x1C6940010](v35);

      MEMORY[0x1C6940010](0xD00000000000002FLL, 0x80000001C4F9BD60);
      result = sub_1C4F024A8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C480564C()
{

  sub_1C48068D4(v0 + 56);
  return v0;
}

uint64_t sub_1C4805694()
{
  sub_1C480564C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C48056C8(uint64_t a1, void (*a2)(void, uint64_t, uint64_t, void, void))
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EF9CC8();
  a2(0, v10, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23FeedbackSingleProcessor_feedback, 0, 0);
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1C48057F8()
{
  sub_1C4453DEC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23FeedbackSingleProcessor_feedback, type metadata accessor for FeedbackLogEntry);

  return swift_deallocClassInstance();
}

uint64_t sub_1C48058EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v10 + 16))(v8, a3, v9);
  sub_1C440BAA8(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_bookmark;
  swift_beginAccess();
  sub_1C45AD734(v8, v3 + v11);
  return swift_endAccess();
}

uint64_t sub_1C48059E0()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_start, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25FeedbackStandardProcessor_bookmark, &unk_1EC0B84E0, qword_1C4F0D2D0);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4805AF0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3[3];
  v7 = a3[4];
  sub_1C4409678(a3, v6);
  v8 = (*(v7 + 8))(v6, v7);
  a4(a2, v8, v9);
}

void sub_1C4805BDC()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Configuration(0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1C4406EAC();
  sub_1C4430B8C(v4, v15, v16);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1C4F02248();

  v25 = 0xD000000000000020;
  v26 = 0x80000001C4F9BE20;
  MEMORY[0x1C6940010](v8, v6);

  v17 = v25;
  v18 = v26;
  v19 = type metadata accessor for KeyValueStore(0);
  sub_1C44099C4(v19);
  v20 = KeyValueStore.init(config:domain:)(v15, v17, v18);
  if (v1)
  {

    sub_1C4419738();
    sub_1C4453DEC(v4, v21);
    type metadata accessor for FeedbackProcessingTask();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = v20;
    sub_1C4406EAC();
    sub_1C4430B8C(v4, v12, v22);
    type metadata accessor for FeedbackWalker();
    v23 = swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    sub_1C4419738();
    sub_1C4453DEC(v4, v24);
    *(v2 + 24) = v23;
  }

  sub_1C43FBC80();
}

void sub_1C4805DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  v31 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v32 = sub_1C43FBD18(v31);
  MEMORY[0x1EEE9AC00](v32);
  v71 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v66 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v66 - v41;
  v72 = v20;
  v43 = *(v20 + 16);
  v69 = "ngTask";
  v70 = v43;
  sub_1C446FB00();
  if (v21)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v44 = sub_1C4F00978();
    sub_1C442B738(v44, qword_1EDDFECB8);
    v45 = sub_1C4404CE0();
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CD8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v68 = v42;
      v49 = v48;
      v67 = swift_slowAlloc();
      a10 = v67;
      *v49 = 136315138;
      v73 = v21;
      v50 = v21;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v51 = sub_1C4F01198();
      v66 = v21;
      v53 = v26;
      v54 = v24;
      v55 = sub_1C441D828(v51, v52, &a10);

      *(v49 + 4) = v55;
      v24 = v54;
      v26 = v53;
      _os_log_impl(&dword_1C43F8000, v46, v47, "Error when loading bookmark: %s. Treating as having no bookmark", v49, 0xCu);
      sub_1C440962C(v67);
      sub_1C43FBE2C();
      v42 = v68;
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C440BAA8(v42, 1, 1, v24);
  }

  else
  {
    sub_1C45B69E4(v39, v42);
  }

  sub_1C445FFF0(v42, v36, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v56 = sub_1C44157D4(v36, 1, v24);
  sub_1C4420C3C(v36, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v56 == 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v57 = sub_1C4F00978();
    sub_1C442B738(v57, qword_1EDDFECB8);
    v58 = sub_1C4F00968();
    v59 = sub_1C4F01CD8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1C43F8000, v58, v59, "Feedback processing has no bookmark, so it will process the entire log.", v60, 2u);
      sub_1C43FBE2C();
    }
  }

  v61 = v71;
  sub_1C4801E80(v42, v71);
  if (sub_1C44157D4(v61, 1, v24) == 1)
  {
    sub_1C4420C3C(v61, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v62 = sub_1C4F00978();
    sub_1C442B738(v62, qword_1EDDFECB8);
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CD8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1C43F8000, v63, v64, "Feedback processing didn't get a new bookmark. Possibly empty feedback log?", v65, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    (*(v26 + 32))(v30, v61, v24);
    sub_1C448EE10();
    (*(v26 + 8))(v30, v24);
  }

  sub_1C4420C3C(v42, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC80();
}

uint64_t sub_1C4806744(uint64_t a1)
{
  result = type metadata accessor for FeedbackLogEntry(319);
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

void sub_1C48067FC(uint64_t a1)
{
  sub_1C45C2C2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C4806934(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v8 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v29 == v8)
    {
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(i - 2);
    v10 = *(i - 1);
    v30 = *i;
    v12 = *a3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C445FAA8(v11, v10);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_17;
    }

    v17 = v13;
    if (v12[3] >= v15 + v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C456902C(a5, a6);
        sub_1C4F02468();
      }
    }

    else
    {
      a4();
      v18 = sub_1C445FAA8(v11, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    v20 = *a3;
    if (v17)
    {

      *(v20[7] + 16 * v14) = v30;
    }

    else
    {
      v20[(v14 >> 6) + 8] |= 1 << v14;
      v21 = (v20[6] + 16 * v14);
      *v21 = v11;
      v21[1] = v10;
      *(v20[7] + 16 * v14) = v30;
      v22 = v20[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v20[2] = v24;
    }

    ++v8;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4806B0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4806CE0()
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1C49D4544(&unk_1F43D98E8);
  return v1;
}

uint64_t sub_1C4806D24(uint64_t a1)
{
  inited = _s11InitContextVMa(0);
  MEMORY[0x1EEE9AC00](inited - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosAutonamingViewFeedbackProcessor(0);
  sub_1C4806E04(a1, v4);
  return sub_1C4AAB5CC(v4);
}

uint64_t _s11InitContextVMa(uint64_t a1)
{
  result = qword_1EDDE2D28;
  if (!qword_1EDDE2D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4806E04(uint64_t a1, uint64_t a2)
{
  inited = _s11InitContextVMa(0);
  (*(*(inited - 8) + 16))(a2, a1, inited);
  return a2;
}

uint64_t sub_1C4806E90(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for FeedbackLogDatabase.Writer();
  *(swift_allocObject() + 16) = a1;

  a2(v5);

  if (v2 || swift_isUniquelyReferenced_nonNull_native())
  {
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4806F80()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD70);
  v1 = sub_1C442B738(v0, qword_1EDE2CD70);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4806FFC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "FeedbackServiceXPC: starting...", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE5BD8 != -1)
  {
    sub_1C441FA58(&qword_1EDDE5BD8);
  }

  v10 = sub_1C442B738(v2, qword_1EDE2CD70);
  sub_1C44098F0(a1, v5);
  v11 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v10);
  swift_endAccess();
  sub_1C45A6F50();
  v12 = sub_1C4F01138();
  v14 = sub_1C49AA56C(v12, v13);
  v15 = qword_1EDE2CD60;
  qword_1EDE2CD60 = v14;
  v16 = v14;

  if (v16)
  {
    qword_1EDE2CD68 = [objc_allocWithZone(type metadata accessor for FeedbackServiceXPC.Delegate()) init];
    v17 = qword_1EDE2CD68;
    swift_unknownObjectRelease();
    [v16 setDelegate:v17];

    [v16 resume];
  }

  else
  {
    v16 = sub_1C4F00968();
    v18 = sub_1C4F01CE8();
    if (os_log_type_enabled(v16, v18))
    {
      v19 = sub_1C43FCED0();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v18, "Failed to create FeedbackService XPC service", v19, 2u);
      sub_1C43FBE2C();
    }
  }
}

id sub_1C480729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config;
  sub_1C44098F0(a1, &v3[OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config]);
  if (qword_1EDDFF168[0] != -1)
  {
    swift_once();
  }

  v11 = sub_1C44FD0B8();
  if (v4)
  {

    sub_1C480894C(a1, type metadata accessor for Configuration);
    sub_1C480894C(&v3[v10], type metadata accessor for Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_database] = v11;
    v12 = &v3[OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier];
    *v12 = a2;
    *(v12 + 1) = a3;
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v15, sel_init);
    sub_1C4406EC4();
    sub_1C480894C(a1, v13);
  }

  return v5;
}

void sub_1C4807420(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void (**a11)(void, uint64_t, void))
{
  v43 = a8;
  v44 = a3;
  v45 = a5;
  v46 = a7;
  v47 = a4;
  v14 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedbackLogEntry(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v48 = a11;
  v41 = sub_1C4F00978();
  sub_1C442B738(v41, qword_1EDE2DCD8);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a6;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C43F8000, v19, v20, "FeedbackServiceXPC: Logging feedback", v22, 2u);
    v23 = v22;
    a6 = v21;
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  v24 = sub_1C4EF9CD8();
  v25 = (*(*(v24 - 8) + 16))(v18, v43, v24);
  v26 = *(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier);
  v27 = *(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier + 8);
  v28 = &v18[v16[5]];
  *v28 = a1;
  *(v28 + 1) = a2;
  v29 = &v18[v16[6]];
  v30 = v45;
  v31 = v47;
  *v29 = v44;
  v29[1] = v31;
  v32 = &v18[v16[7]];
  *v32 = v30;
  *(v32 + 1) = a6;
  v33 = &v18[v16[8]];
  *v33 = v26;
  *(v33 + 1) = v27;
  *&v18[v16[9]] = v46;
  if (a9)
  {
    v34 = OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config;
    sub_1C44098F0(a10 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config, v42);
    type metadata accessor for FeedbackProcessingTask();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4806460(a10 + v34);
    type metadata accessor for FeedbackWalker();
    swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    MEMORY[0x1EEE9AC00](v37);
    *(&v40 - 2) = v18;
    *(&v40 - 1) = v38;
    sub_1C48010FC(sub_1C48089A8, (&v40 - 4));
  }

  else
  {
    MEMORY[0x1EEE9AC00](v25);
    *(&v40 - 2) = v18;
    MEMORY[0x1EEE9AC00](v35);
    *(&v40 - 2) = sub_1C48089CC;
    *(&v40 - 1) = v36;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C37C(sub_1C48089EC, (&v40 - 4));
  }

  v39 = v48;
  v48[2](v48, 1, 0);
  sub_1C480894C(v18, type metadata accessor for FeedbackLogEntry);
  _Block_release(v39);
}

uint64_t FeedbackServiceXPC.Server.log(feedback:type:variant:eventId:timestamp:shouldProcessImmediately:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void (*a10)(uint64_t, void), uint64_t a11)
{
  v12 = v11;
  v45 = a8;
  v46 = a3;
  v47 = a5;
  v48 = a7;
  v17 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedbackLogEntry(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v49 = a11;
  v50 = a10;
  v44 = a9;
  v43 = sub_1C4F00978();
  sub_1C442B738(v43, qword_1EDE2DCD8);
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CF8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_1C43FCED0();
    v42 = v23;
    *v26 = 0;
    _os_log_impl(&dword_1C43F8000, v24, v25, "FeedbackServiceXPC: Logging feedback", v26, 2u);
    v23 = v42;
    sub_1C43FBE2C();
  }

  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v28 = (*(v27 + 16))(v23, v45);
  v29 = *(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier);
  v30 = *(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_clientIdentifier + 8);
  v31 = &v23[v20[5]];
  *v31 = a1;
  *(v31 + 1) = a2;
  v32 = &v23[v20[6]];
  v33 = v47;
  *v32 = v46;
  v32[1] = a4;
  v34 = &v23[v20[7]];
  *v34 = v33;
  *(v34 + 1) = a6;
  v35 = &v23[v20[8]];
  *v35 = v29;
  *(v35 + 1) = v30;
  *&v23[v20[9]] = v48;
  if (v44)
  {
    v36 = OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config;
    sub_1C44098F0(v12 + OBJC_IVAR____TtCC24IntelligencePlatformCore18FeedbackServiceXPC6Server_config, v19);
    type metadata accessor for FeedbackProcessingTask();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4806460(v12 + v36);
    type metadata accessor for FeedbackWalker();
    swift_allocObject();
    FeedbackWalker.init(config:processors:)();
    MEMORY[0x1EEE9AC00](v39);
    *(&v42 - 2) = v23;
    *(&v42 - 1) = v40;
    sub_1C48010FC(sub_1C48065E8, (&v42 - 4));
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    *(&v42 - 2) = v23;
    MEMORY[0x1EEE9AC00](v37);
    *(&v42 - 2) = sub_1C48087C4;
    *(&v42 - 1) = v38;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(a1, a2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C37C(sub_1C4806BB4, (&v42 - 4));
  }

  v50(1, 0);
  return sub_1C480894C(v23, type metadata accessor for FeedbackLogEntry);
}

id FeedbackServiceXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C480815C(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  if (qword_1EDDE5BD8 != -1)
  {
    sub_1C441FA58(&qword_1EDDE5BD8);
  }

  v10 = sub_1C442B738(v3, qword_1EDE2CD70);
  swift_beginAccess();
  sub_1C4466EEC(v10, v9);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v9, 1, v11);
  if (result != 1)
  {
    v13 = &v9[*(v11 + 20)];
    v14 = *v13;
    v15 = *(v13 + 1);
    sub_1C4406EC4();
    sub_1C480894C(v9, v16);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v23 = sub_1C4F00978();
      sub_1C442B738(v23, qword_1EDE2DCD8);
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CF8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = sub_1C43FCED0();
        *v26 = 0;
        _os_log_impl(&dword_1C43F8000, v24, v25, "FeedbackServiceXPC: service is in no-op mode.", v26, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      v18 = sub_1C4F01138();
      v20 = sub_1C446874C(v18, v19);

      if (v20)
      {
        v21 = sub_1C4F01108();
        v22 = [a2 valueForEntitlement_];

        if (v22)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          aBlock = 0u;
          v37 = 0u;
        }

        v40[0] = aBlock;
        v40[1] = v37;
        if (*(&v37 + 1))
        {
          sub_1C44482AC(v40, v35);
          v27 = swift_dynamicCast();
          if (v27)
          {
            v28 = v42;
          }

          else
          {
            v28 = 0;
          }

          if (v27)
          {
            v29 = v41;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        v30 = [objc_opt_self() interfaceWithProtocol_];
        [a2 setExportedInterface_];

        sub_1C4466EEC(v10, v6);
        result = sub_1C44157D4(v6, 1, v11);
        if (result != 1)
        {
          v31 = objc_allocWithZone(type metadata accessor for FeedbackServiceXPC.Server(0));
          v32 = sub_1C480729C(v6, v29, v28);
          [a2 setExportedObject_];

          v38 = sub_1C48086D8;
          v39 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v37 = sub_1C4833DD0;
          *(&v37 + 1) = &unk_1F43ED448;
          v33 = _Block_copy(&aBlock);
          [a2 setInterruptionHandler_];
          _Block_release(v33);
          v38 = sub_1C48086F8;
          v39 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v37 = sub_1C4833DD0;
          *(&v37 + 1) = &unk_1F43ED470;
          v34 = _Block_copy(&aBlock);
          [a2 setInvalidationHandler_];
          _Block_release(v34);
          [a2 resume];
          return 1;
        }

        goto LABEL_31;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FeedbackServiceXPC.Server(uint64_t a1)
{
  result = qword_1EC0BDA68;
  if (!qword_1EC0BDA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4808868(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C480894C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4808A04()
{
  sub_1C4404078();
  v2 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v4 = swift_allocObject();
  *(v4 + 56) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v4 + 64) = &off_1F43F72C0;
  *(v4 + 16) = 4;
  *(v4 + 72) = xmmword_1C4F306C0;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *(v4 + 88) = &unk_1F43D6DD0;
  *(v4 + 96) = v1;
  *(v4 + 112) = 0x302E302E31;
  *(v4 + 120) = 0xE500000000000000;
  *(v4 + 104) = v0;
  return v4;
}

uint64_t sub_1C4808AE4()
{
  sub_1C43FBCD4();
  v1[76] = v0;
  v1[75] = v2;
  v1[74] = v3;
  v1[73] = v4;
  v1[72] = v5;
  v6 = sub_1C4EFFA08();
  v1[77] = v6;
  sub_1C43FCF7C(v6);
  v1[78] = v7;
  v1[79] = sub_1C43FBE7C();
  v8 = sub_1C4EFE1C8();
  v1[80] = v8;
  sub_1C43FCF7C(v8);
  v1[81] = v9;
  v1[82] = sub_1C43FE604();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v10);
  v1[91] = sub_1C43FE604();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v11 = type metadata accessor for LOIBasedSegment(0);
  v1[94] = v11;
  sub_1C43FCF7C(v11);
  v1[95] = v12;
  v1[96] = *(v13 + 64);
  v1[97] = sub_1C43FE604();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v14 = sub_1C4F00978();
  v1[103] = v14;
  sub_1C43FCF7C(v14);
  v1[104] = v15;
  v1[105] = sub_1C43FE604();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v16 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C4808DA0(uint64_t a1)
{
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "Running flight inference model");
    sub_1C43FBE2C();
  }

  v6 = *(v1 + 832);
  v7 = *(v1 + 584);

  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  *(v1 + 888) = v10;
  v11 = sub_1C4402B58();
  v10(v11);
  sub_1C442E860(v7, v1 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = *(v1 + 744);
    v28 = sub_1C440A564();
LABEL_14:
    sub_1C440BAA8(v28, v29, v30, v31);
    v39 = &qword_1EC0B9790;
    v40 = &unk_1C4F0F7C0;
    v41 = v27;
LABEL_15:
    sub_1C4420C3C(v41, v39, v40);
    v42 = *(v1 + 576);
    v25 = type metadata accessor for InferredActivitySegment(0);
    v26 = v42;
    goto LABEL_16;
  }

  v12 = *(v1 + 592);
  sub_1C43FF01C();
  sub_1C4406EDC();
  sub_1C480BDB0();
  v13 = sub_1C442E860(v12, v1 + 56);
  if ((sub_1C44041E8(v13, v1 + 56) & 1) == 0)
  {
    v32 = *(v1 + 752);
    v27 = *(v1 + 736);
    sub_1C4419068();
    sub_1C45AD6DC(v33, v34);
    v28 = sub_1C440A564();
    v31 = v32;
    goto LABEL_14;
  }

  v14 = *(v1 + 736);
  v15 = *(v1 + 728);
  v16 = *(v1 + 600);
  sub_1C43FF01C();
  sub_1C4406EDC();
  sub_1C480BDB0();
  v17 = sub_1C442E860(v16, v1 + 96);
  if ((sub_1C44041E8(v17, v1 + 96) & 1) == 0)
  {
    v35 = *(v1 + 816);
    v36 = *(v1 + 752);
    v27 = *(v1 + 728);
    sub_1C442CA90();
    sub_1C45AD6DC(v37, v38);
    sub_1C45AD6DC(v35, v14);
    v28 = sub_1C440A564();
    v31 = v36;
    goto LABEL_14;
  }

  sub_1C440BAA8(*(v1 + 728), 0, 1, *(v1 + 752));
  sub_1C4406EDC();
  sub_1C43FBC98();
  sub_1C480BDB0();
  sub_1C44DDE2C();
  v18 = *(v1 + 160);
  sub_1C4420C3C(v1 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (v18)
  {
    sub_1C4F00198();
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (sub_1C4402B64(v20))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v21, v22, "currSegment is a visit segment");
      sub_1C43FBE2C();
    }

    sub_1C44333E8();
    v23 = sub_1C4402B58();
    v9(v23);
    sub_1C441FA78();
    sub_1C45AD6DC(v16, v24);
    sub_1C45AD6DC(v15, v19);
    sub_1C45AD6DC(v18, v19);
LABEL_10:
    v25 = type metadata accessor for InferredActivitySegment(0);
    v26 = v8;
LABEL_16:
    sub_1C440BAA8(v26, 1, 1, v25);
    sub_1C44031B4();

    v43 = *(v1 + 8);

    return v43();
  }

  v45 = *(v1 + 808);
  v46 = *(v1 + 752);
  *(v1 + 944) = *(v46 + 20);
  sub_1C4EF9B78();
  if (v47 < 2700.0)
  {
    sub_1C4F00198();
    sub_1C4406EDC();
    sub_1C4402B58();
    sub_1C480BD58();
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CF8();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v1 + 792);
    if (v50)
    {
      v52 = sub_1C43FD084();
      *v52 = 134217984;
      sub_1C4EF9B78();
      v54 = v53;
      sub_1C4419068();
      sub_1C45AD6DC(v51, v55);
      *(v52 + 4) = v54;
      _os_log_impl(&dword_1C43F8000, v48, v49, "currSegment duration of %f < minDurationOfFlightActivityInSeconds", v52, 0xCu);
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C4419068();
      sub_1C45AD6DC(v51, v67);
    }

    v68 = *(v1 + 816);
    v69 = *(v1 + 808);
    v70 = *(v1 + 800);
    v71 = *(v1 + 576);
    (v9)(*(v1 + 864), *(v1 + 824));
    sub_1C45AD6DC(v70, type metadata accessor for LOIBasedSegment);
    sub_1C45AD6DC(v69, type metadata accessor for LOIBasedSegment);
    sub_1C45AD6DC(v68, type metadata accessor for LOIBasedSegment);
    v25 = type metadata accessor for InferredActivitySegment(0);
    v26 = v71;
    goto LABEL_16;
  }

  sub_1C44DDE2C();
  if (!*(v1 + 240))
  {
    v72 = *(v1 + 816);
    sub_1C45AD6DC(*(v1 + 800), type metadata accessor for LOIBasedSegment);
    v73 = sub_1C4402B58();
    sub_1C45AD6DC(v73, v74);
    sub_1C45AD6DC(v72, type metadata accessor for LOIBasedSegment);
    v39 = &qword_1EC0B97A0;
    v40 = &qword_1C4F0F7D0;
    v41 = v1 + 216;
    goto LABEL_15;
  }

  v56 = *(v1 + 232);
  *(v1 + 176) = *(v1 + 216);
  *(v1 + 192) = v56;
  *(v1 + 208) = *(v1 + 248);
  sub_1C44DDE2C();
  v57 = *(v1 + 816);
  if (!*(v1 + 320))
  {
    v75 = *(v1 + 808);
    sub_1C442CA90();
    sub_1C45AD6DC(v76, v77);
    sub_1C45AD6DC(v75, 0);
    sub_1C45AD6DC(v57, 0);
    sub_1C46CB91C(v1 + 176);
    v39 = &qword_1EC0B97A0;
    v40 = &qword_1C4F0F7D0;
    v41 = v1 + 296;
    goto LABEL_15;
  }

  v58 = *(v1 + 312);
  *(v1 + 256) = *(v1 + 296);
  *(v1 + 272) = v58;
  *(v1 + 288) = *(v1 + 328);
  sub_1C4EF9B78();
  v60 = COERCE_DOUBLE(sub_1C480A2AC((v1 + 176), v1 + 256, v59));
  if (v61)
  {
    v62 = *(v1 + 816);
    v63 = *(v1 + 808);
    v64 = *(v1 + 576);
    sub_1C442CA90();
    sub_1C45AD6DC(v65, v66);
    sub_1C45AD6DC(v63, 0);
    sub_1C45AD6DC(v62, 0);
    sub_1C46CB91C(v1 + 256);
    sub_1C46CB91C(v1 + 176);
    v25 = type metadata accessor for InferredActivitySegment(0);
    v26 = v64;
    goto LABEL_16;
  }

  v78 = v60;
  if (v60 < 45.0)
  {
    sub_1C4F00198();
    v79 = sub_1C4F00968();
    v80 = sub_1C4F01CF8();
    if (sub_1C4402B64(v80))
    {
      v18 = sub_1C43FD084();
      *v18 = 134217984;
      *(v18 + 4) = v78;
      _os_log_impl(&dword_1C43F8000, v79, v45, "speedOfTravelBetweenSegments of %f is less than the threshold for flights", v18, 0xCu);
      sub_1C43FBE2C();
    }

    sub_1C44333E8();
    v81 = sub_1C4402B58();
    v9(v81);
    sub_1C441FA78();
    sub_1C45AD6DC(v46, v82);
    sub_1C45AD6DC(v1 + 296, v79);
    sub_1C45AD6DC(v18, v79);
    sub_1C46CB91C(v1 + 256);
    sub_1C46CB91C(v1 + 176);
    goto LABEL_10;
  }

  sub_1C480BC20(v1 + 176, v1 + 336);
  v83 = swift_allocObject();
  v84 = *(v1 + 352);
  *(v83 + 16) = *(v1 + 336);
  *(v83 + 32) = v84;
  *(v83 + 48) = *(v1 + 368);
  sub_1C4EFE1B8();
  sub_1C480BC20(v1 + 256, v1 + 376);
  v85 = swift_allocObject();
  v86 = *(v1 + 392);
  *(v85 + 16) = *(v1 + 376);
  *(v85 + 32) = v86;
  *(v85 + 48) = *(v1 + 408);
  sub_1C4EFE1B8();
  sub_1C43FC3A4((v1 + 176));
  v87 = sub_1C43FD074();
  v88(v87);
  if (*(v1 + 480))
  {
    sub_1C43FC3A4((v1 + 456));
    v89 = sub_1C43FD074();
    v90(v89);
    if (*(v1 + 440))
    {
      sub_1C4414AF0((v1 + 416));
      v91 = sub_1C43FD074();
      v132 = v92(v91);
      v134 = v93;
      sub_1C440962C((v1 + 416));
      sub_1C440962C((v1 + 456));
      goto LABEL_40;
    }

    sub_1C440962C((v1 + 456));
    v94 = &unk_1EC0BB388;
    v95 = &unk_1C4F1F2F0;
    v96 = v1 + 416;
  }

  else
  {
    v94 = &qword_1EC0BB380;
    v95 = &unk_1C4F1F2E0;
    v96 = v1 + 456;
  }

  sub_1C4420C3C(v96, v94, v95);
  v132 = 0;
  v134 = 0;
LABEL_40:
  sub_1C43FC3A4((v1 + 256));
  v97 = sub_1C43FD074();
  v98(v97);
  if (!*(v1 + 560))
  {
    v105 = &qword_1EC0BB380;
    v106 = &unk_1C4F1F2E0;
    v107 = v1 + 536;
LABEL_45:
    sub_1C4420C3C(v107, v105, v106);
    v126 = 0;
    v104 = 0;
    goto LABEL_46;
  }

  sub_1C43FC3A4((v1 + 536));
  v99 = sub_1C43FD074();
  v100(v99);
  if (!*(v1 + 520))
  {
    sub_1C440962C((v1 + 536));
    v105 = &unk_1EC0BB388;
    v106 = &unk_1C4F1F2F0;
    v107 = v1 + 496;
    goto LABEL_45;
  }

  sub_1C4414AF0((v1 + 496));
  v101 = sub_1C43FD074();
  v126 = v102(v101);
  v104 = v103;
  sub_1C440962C((v1 + 496));
  sub_1C440962C((v1 + 536));
LABEL_46:
  v108 = *(v1 + 712);
  v131 = *(v1 + 680);
  v129 = *(v1 + 648);
  v130 = *(v1 + 640);
  v127 = *(v1 + 632);
  v109 = *(v1 + 624);
  v128 = *(v1 + 688);
  sub_1C480A648(v132, v134, *(v1 + 720));

  sub_1C480A648(v126, v104, v108);

  *(v1 + 896) = sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v110 = sub_1C4EFE178();
  sub_1C43FCF7C(v110);
  *(v1 + 904) = *(v111 + 72);
  *(v1 + 948) = *(v112 + 80);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  *v127 = v113;
  *(v1 + 952) = *MEMORY[0x1E69A9AA0];
  v114 = *(v109 + 104);
  *(v1 + 912) = v114;
  *(v1 + 920) = (v109 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v114(v127);
  sub_1C4EFE198();
  sub_1C4F00198();
  (*(v129 + 16))(v131, v128, v130);
  v115 = sub_1C4F00968();
  v116 = sub_1C4F01CF8();
  v117 = os_log_type_enabled(v115, v116);
  v118 = *(v1 + 680);
  v119 = *(v1 + 648);
  v120 = *(v1 + 640);
  if (v117)
  {
    v135 = *(v1 + 640);
    v121 = sub_1C43FD084();
    *v121 = 134217984;
    sub_1C4EFE188();
    v123 = v122;
    v124 = *(v119 + 8);
    v124(v118, v135);
    *(v121 + 4) = v123;
    _os_log_impl(&dword_1C43F8000, v115, v116, "flight confidence due to poiNode = %f", v121, 0xCu);
    sub_1C43FBE2C();
  }

  else
  {

    v124 = *(v119 + 8);
    v124(v118, v120);
  }

  *(v1 + 928) = v124;
  v133 = *(v1 + 608);
  (v9)(*(v1 + 848), *(v1 + 824));
  sub_1C480BD58();
  sub_1C480BD58();
  *(swift_allocObject() + 16) = v133;
  sub_1C480BDB0();
  sub_1C480BDB0();

  sub_1C4EFE1B8();
  v125 = swift_task_alloc();
  *(v1 + 936) = v125;
  *v125 = v1;
  v125[1] = sub_1C4809C44;

  return sub_1C480AA98();
}

uint64_t sub_1C4809C44()
{
  sub_1C43FBCD4();
  *(*v0 + 956) = v1;

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4809D38()
{
  v1 = *(v0 + 956);
  v48 = *(v0 + 912);
  v46 = *(v0 + 952);
  v2 = *(v0 + 632);
  v43 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  sub_1C4EFE1B8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0C890;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  *v2 = v5;
  v48(v2, v46, v43);
  sub_1C4EFE198();
  sub_1C4EFE188();
  v7 = v6;
  sub_1C4F00198();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1C43FD084();
    *v10 = 134217984;
    *(v10 + 4) = v7;
    _os_log_impl(&dword_1C43F8000, v8, v9, "flightConfidence = %f", v10, 0xCu);
    sub_1C43FBE2C();
  }

  v11 = *(v0 + 928);
  v12 = *(v0 + 888);
  v13 = *(v0 + 840);
  v14 = *(v0 + 824);
  v51 = *(v0 + 816);
  v49 = *(v0 + 720);
  v50 = *(v0 + 800);
  v45 = *(v0 + 704);
  v47 = *(v0 + 712);
  v42 = *(v0 + 688);
  v44 = *(v0 + 696);
  v41 = *(v0 + 672);
  v15 = *(v0 + 664);
  v16 = *(v0 + 656);
  v17 = *(v0 + 648);
  v18 = *(v0 + 640);

  v12(v13, v14);
  v11(v16, v18);
  v11(v15, v18);
  v11(v41, v18);
  v11(v42, v18);
  v11(v44, v18);
  v11(v45, v18);
  v11(v47, v18);
  v11(v49, v18);
  sub_1C441FA78();
  sub_1C45AD6DC(v50, v19);
  sub_1C45AD6DC(v51, (v17 + 8));
  sub_1C46CB91C(v0 + 256);
  sub_1C46CB91C(v0 + 176);
  if (v7 >= 0.6)
  {
    v26 = *(v0 + 944);
    v27 = *(v0 + 808);
    v28 = *(v0 + 608);
    v29 = *(v0 + 576);
    v30 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v32 = *(v31 + 16);
    v33 = sub_1C43FBC98();
    v32(v33);
    v34 = type metadata accessor for InferredActivitySegment(0);
    (v32)(v29 + v34[5], v27 + v26, v30);
    sub_1C4419068();
    sub_1C45AD6DC(v27, v35);
    v36 = *(v28 + 112);
    v37 = *(v28 + 120);
    *(v29 + v34[6]) = *(v28 + 16);
    *(v29 + v34[7]) = v7;
    v38 = (v29 + v34[8]);
    *v38 = v36;
    v38[1] = v37;
    sub_1C440BAA8(v29, 0, 1, v34);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4419068();
    sub_1C45AD6DC(v20, v21);
    type metadata accessor for InferredActivitySegment(0);
    v22 = sub_1C440A564();
    sub_1C440BAA8(v22, v23, v24, v25);
  }

  sub_1C44031B4();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1C480A2AC(void *a1, uint64_t a2, double a3)
{
  v5 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v6 = sub_1C43FCFC0();
  v7(v6, v5);
  if (!v34)
  {
    sub_1C4420C3C(&v33, &qword_1EC0BDA78, &qword_1C4F30788);
LABEL_6:
    v29 = 0.0;
    return *&v29;
  }

  sub_1C441D670(&v33, v36);
  v8 = *(a2 + 32);
  v9 = sub_1C4402B58();
  sub_1C4409678(v9, v10);
  v11 = sub_1C43FCFC0();
  v12(v11, v8);
  if (!v32)
  {
    sub_1C4420C3C(&v31, &qword_1EC0BDA78, &qword_1C4F30788);
    sub_1C440962C(v36);
    goto LABEL_6;
  }

  sub_1C441D670(&v31, &v33);
  sub_1C4409678(v36, v37);
  v13 = sub_1C4402B58();
  v15 = v14(v13);
  sub_1C4409678(v36, v37);
  v16 = sub_1C4402B58();
  v18 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v15 longitude:v17(v16)];
  v19 = v35;
  sub_1C4409678(&v33, v34);
  v20 = sub_1C43FCFC0();
  v22 = v21(v20, v19);
  v23 = v35;
  sub_1C4409678(&v33, v34);
  v24 = sub_1C43FCFC0();
  v26 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v22 longitude:{v25(v24, v23)}];
  [v26 distanceFromLocation_];
  v28 = v27;

  v29 = v28 / a3;
  sub_1C440962C(&v33);
  sub_1C440962C(v36);
  return *&v29;
}

double sub_1C480A4FC(uint64_t a1, const char *a2)
{
  v3 = sub_1C4F00978();
  sub_1C43FCE64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4B70BBC();
  sub_1C4F00198();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1C43FD084();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v10, v11, a2, v12, 0xCu);
    sub_1C43FBE2C();
  }

  (*(v5 + 8))(v8, v3);
  return v9;
}

uint64_t sub_1C480A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C4EFE1C8();
  sub_1C43FCE64();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v9 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7, v13);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v3;
  *(v15 + 3) = a1;
  *(v15 + 4) = a2;
  (*(v9 + 32))(&v15[v14], &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return sub_1C4EFE1B8();
}

double sub_1C480A7A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25[0] = sub_1C4F00978();
  v6 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  v10 = *(a1 + 104);
  type metadata accessor for EventsFoundInAppsSignal();
  inited = swift_initStackObject();
  *(inited + 16) = v10;
  *(inited + 24) = v9;
  v12 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v13 = v9;

  sub_1C479CBF4(a2, a3 + v12);
  v14 = sub_1C44F9274(0xD00000000000001DLL);

  v15 = 0.0;
  if (v14)
  {
    v16 = [v14 dictionaryValue];
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v17 = sub_1C4F00ED8();

    v25[1] = 0x746867696C46;
    v25[2] = 0xE600000000000000;
    sub_1C4F02198();
    if (*(v17 + 16))
    {
      sub_1C457AA70(v26);
      v19 = v18;

      sub_1C457E804(v26);
      if (v19)
      {
        v20._object = 0x80000001C4F8AC10;
        v20._countAndFlagsBits = 0xD000000000000014;
        v15 = ConfidenceService.confidence(source:signalType:)(v20, 0);
      }
    }

    else
    {

      sub_1C457E804(v26);
    }
  }

  sub_1C4F00198();
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v21, v22, "flightConfidenceDueToFiA = %f", v23, 0xCu);
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v25[0]);
  return v15;
}

uint64_t sub_1C480AA98()
{
  sub_1C43FBCD4();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_1C4F00978();
  v1[36] = v4;
  sub_1C43FCF7C(v4);
  v1[37] = v5;
  v1[38] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B97B0, &qword_1C4F30780);
  sub_1C43FBD18(v6);
  v1[39] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
  v1[40] = v7;
  sub_1C43FBD18(v7);
  v1[41] = sub_1C43FBE7C();
  v8 = type metadata accessor for WalletPassContent(0);
  v1[42] = v8;
  sub_1C43FBD18(v8);
  v1[43] = sub_1C43FE604();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v9);
  v1[46] = sub_1C43FE604();
  v1[47] = swift_task_alloc();
  v10 = sub_1C4EF9CD8();
  v1[48] = v10;
  sub_1C43FCF7C(v10);
  v1[49] = v11;
  v1[50] = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0B97C0, &qword_1C4F0F800);
  sub_1C43FBD18(v12);
  v1[51] = sub_1C43FBE7C();
  v13 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[52] = v13;
  sub_1C43FBD18(v13);
  v1[53] = sub_1C43FE604();
  v1[54] = swift_task_alloc();
  v14 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[55] = v14;
  sub_1C43FBD18(v14);
  v1[56] = sub_1C43FBE7C();
  v15 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C480ACF4()
{
  v1 = v0[35];
  sub_1C442E860(v1 + 32, (v0 + 16));
  v2 = *(v1 + 104);
  v3 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);

  v4 = [v3 init];
  type metadata accessor for PassKitSignal();
  inited = swift_initStackObject();
  v0[57] = inited;
  v6 = v0[19];
  v7 = v0[20];
  v8 = sub_1C4418280((v0 + 16), v6);
  sub_1C43FCE64();
  v10 = v9;
  v11 = sub_1C43FBE7C();
  (*(v10 + 16))(v11, v8, v6);
  v0[58] = sub_1C4A873E0(v11, v4, v2, inited, v6, v7);
  sub_1C440962C(v0 + 16);

  sub_1C4575ED0();
  v12 = sub_1C4F01088();
  if (v12)
  {
    v30 = v0[56];
    v31 = v0[55];
    v15 = v0[53];
    v16 = v0[54];
    v17 = v0[52];
    v19 = v0[48];
    v18 = v0[49];
    v20 = v0[33];
    v21 = v0[34];
    v22 = v18[2];
    v0[59] = v22;
    v0[60] = (v18 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v16, v20, v19);
    v22(v16 + *(v17 + 48), v21, v19);
    sub_1C44DDE2C();
    v29 = *(v17 + 48);
    v23 = v18[4];
    v0[61] = v23;
    v0[62] = (v18 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v30, v15, v19);
    v24 = v18[1];
    v0[63] = v24;
    v0[64] = (v18 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v15 + v29, v19);
    sub_1C44CDA7C();
    v23(v30 + *(v31 + 36), v15 + *(v17 + 48), v19);
    v24(v15, v19);
    sub_1C4A85140(v30, v0 + 31);
    sub_1C4420C3C(v0[56], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v25 = v0[31];
    v26 = v0[32];
    v0[65] = v25;
    v0[66] = *(v25 + 16);
    v0[67] = v26;
    sub_1C43FCE74();
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C480B1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 536);
  if (v4 < *(v3 + 528))
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v3 + 520);
      if (v4 < *(v5 + 16))
      {
        v7 = *(v3 + 376);
        v6 = *(v3 + 384);
        sub_1C442E860(v5 + 40 * v4 + 32, v3 + 168);
        v8 = v4 + 1;
        v9 = *(v3 + 192);
        v10 = *(v3 + 200);
        sub_1C4409678((v3 + 168), v9);
        (*(v10 + 8))(v9, v10);
        if (sub_1C44157D4(v7, 1, v6) == 1)
        {
          v11 = *(v3 + 320);
          sub_1C4420C3C(*(v3 + 376), &unk_1EC0B84E0, qword_1C4F0D2D0);
          v12 = sub_1C440A564();
          v15 = v11;
        }

        else
        {
          v16 = *(v3 + 472);
          v18 = *(v3 + 400);
          v17 = *(v3 + 408);
          v19 = *(v3 + 384);
          v20 = *(v3 + 360);
          v21 = *(v3 + 368);
          v44 = *(v3 + 336);
          v22 = *(v3 + 320);
          (*(v3 + 488))(v18, *(v3 + 376), v19);
          v16(v17, v18, v19);
          v16(v17 + *(v22 + 28), v18, v19);
          sub_1C442E860(v3 + 168, v3 + 208);
          sub_1C440BAA8(v20, 1, 1, v19);
          sub_1C43FC3A4((v3 + 208));
          v23 = sub_1C43FD074();
          v24(v23);
          sub_1C45AD734(v21, v20);
          sub_1C4414AF0((v3 + 208));
          v25 = sub_1C43FD074();
          v27 = v26(v25);
          if (v27 == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          if (!v27)
          {
            v28 = 0;
          }

          *(v20 + *(v44 + 20)) = v28;
          sub_1C4414AF0((v3 + 208));
          v29 = sub_1C43FD074();
          v31 = v30(v29);
          v32 = (v20 + *(v44 + 24));
          *v32 = v31;
          v32[1] = v33;
          sub_1C4409678((v3 + 208), *(v3 + 232));
          v34 = sub_1C4402B58();
          v36 = v35(v34);
          v37 = 9;
          if (v36 < 9)
          {
            v37 = v36;
          }

          v38 = *(v3 + 504);
          v39 = *(v3 + 408);
          v40 = *(v3 + 360);
          v41 = *(v3 + 320);
          *(v40 + *(*(v3 + 336) + 28)) = v37;
          sub_1C480BD58();
          sub_1C440962C((v3 + 208));
          sub_1C45AD6DC(v40, type metadata accessor for WalletPassContent);
          v42 = sub_1C4402B58();
          v38(v42);
          v12 = v39;
          v13 = 0;
          v14 = 1;
          v15 = v41;
        }

        sub_1C440BAA8(v12, v13, v14, v15);
        sub_1C440962C((v3 + 168));
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  sub_1C440BAA8(*(v3 + 408), 1, 1, *(v3 + 320));
  v8 = *(v3 + 536);
LABEL_16:
  *(v3 + 544) = v8;
  a1 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1C480B4E4()
{
  if (sub_1C44157D4(v0[51], 1, v0[40]) == 1)
  {
    goto LABEL_10;
  }

  v1 = v0[41];
  sub_1C44CDA7C();
  sub_1C44171F8();
  sub_1C480BD58();
  sub_1C4420C3C(v1, &qword_1EC0B97B8, &unk_1C4F0F7F0);
  if (swift_dynamicCast())
  {
    v2 = v0[44];
    v3 = v0[42];
    sub_1C43FF01C();
    sub_1C44171F8();
    sub_1C480BDB0();
    v4 = v0[44];
    if (*(v2 + *(v3 + 20)))
    {
      sub_1C45AD6DC(v4, type metadata accessor for WalletPassContent);
      goto LABEL_6;
    }

    v14 = *(v4 + *(v0[42] + 28));
    sub_1C45AD6DC(v4, type metadata accessor for WalletPassContent);
    if (v14 == 4)
    {
LABEL_10:

      sub_1C4404B50(v0[56]);

      sub_1C440405C();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    v5 = v0[39];
    v6 = sub_1C440A564();
    sub_1C440BAA8(v6, v7, v8, v9);
    sub_1C4420C3C(v5, &qword_1EC0B97B0, &qword_1C4F30780);
  }

LABEL_6:
  v0[67] = v0[68];
  sub_1C43FCE74();
  sub_1C440405C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

double sub_1C480B760(char a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0.0;
  if (a1)
  {
    v7._countAndFlagsBits = 0x74694B73736150;
    v8.value._countAndFlagsBits = 0x726568746FLL;
    v7._object = 0xE700000000000000;
    v8.value._object = 0xE500000000000000;
    v6 = ConfidenceService.confidence(source:signalType:)(v7, v8);
  }

  sub_1C4F00198();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v6;
    _os_log_impl(&dword_1C43F8000, v9, v10, "flightConfidenceDueToBoardingPass = %f", v11, 0xCu);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_1C480B8F0()
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0 = sub_1C44CE068();

  if (v0)
  {
    v1._countAndFlagsBits = 0x494F506F6547;
    v1._object = 0xE600000000000000;
    ConfidenceService.confidence(source:signalType:)(v1, 0);
    sub_1C4EFE188();
  }
}

uint64_t sub_1C480B9CC()
{
  sub_1C440962C((v0 + 32));

  return v0;
}

uint64_t sub_1C480BA14()
{
  sub_1C480B9CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C480BA6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C480BB30;

  return sub_1C4808AE4();
}

uint64_t sub_1C480BB30()
{
  sub_1C43FBCD4();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1C480BCC4()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FCF7C(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v0 + 16);
  v9 = v0 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1C480A7A4(v8, v0 + v7, v9);
}

uint64_t sub_1C480BD58()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C480BDB0()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

void sub_1C480BE08()
{
  v0 = sub_1C4EFE1C8();
  sub_1C43FBD18(v0);

  sub_1C480B8F0();
}

uint64_t sub_1C480BE6C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for PhaseStores(0);
  *(v4 + 40) = v6;
  sub_1C43FBD18(v6);
  *(v4 + 48) = sub_1C43FBE7C();
  v7 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v7);
  *(v4 + 56) = sub_1C43FBE7C();
  v8 = type metadata accessor for SGEventSourceIngestor(0);
  *(v4 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v4 + 72) = sub_1C43FBE7C();
  v9 = type metadata accessor for Source(0);
  *(v4 + 80) = v9;
  sub_1C43FBD18(v9);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v10 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v10);
  *(v4 + 104) = sub_1C43FBE7C();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C480BFA0, 0, 0);
}

uint64_t sub_1C480BFA0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1C4430BEC(v2, *(v0 + 104), type metadata accessor for Configuration);
  *(v0 + 112) = *(v2 + *(v1 + 24));
  v3 = qword_1EDDFD110;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 129);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v14 = *(v0 + 88);
  v15 = *(v0 + 48);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_1C442B738(*(v0 + 80), qword_1EDDFD118);
  sub_1C4430BEC(v10, v5, type metadata accessor for Source);
  sub_1C4430BEC(v9, v6, type metadata accessor for PhaseStores);
  v11 = v7[7];
  sub_1C4430BEC(v10, v6 + v7[5], type metadata accessor for Source);
  *(v6 + v11) = v8;
  *(v6 + v7[6]) = v4;
  sub_1C4430BEC(v10, v14, type metadata accessor for Source);
  sub_1C4430BEC(v9, v15, type metadata accessor for PhaseStores);
  *(v0 + 128) = 3;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C480C188;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480C188()
{

  return MEMORY[0x1EEE6DFA0](sub_1C480C284, 0, 0);
}

uint64_t sub_1C480C284()
{
  v15 = *(v0 + 129);
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  sub_1C4EFD548();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0CE60;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD4C8();
  sub_1C44853AC(v6, type metadata accessor for PhaseStores);
  v8 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor + 24) = v3;
  v8[4] = sub_1C480C5D0();
  v9 = sub_1C4422F90(v8);
  sub_1C4430BEC(v4, v9, type metadata accessor for SGEventSourceIngestor);
  sub_1C480C628(v1, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = v13;
  sub_1C480C628(v2, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C480C628(v14, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = v7;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = v15;
  sub_1C44853AC(v4, type metadata accessor for SGEventSourceIngestor);

  v10 = *(v0 + 8);
  v11 = *(v0 + 32);

  return v10(v11);
}

uint64_t type metadata accessor for FoundInAppsEventMatchExtractor(uint64_t a1)
{
  result = qword_1EC0BDA80;
  if (!qword_1EC0BDA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C480C5D0()
{
  result = qword_1EDDE33D8;
  if (!qword_1EDDE33D8)
  {
    type metadata accessor for SGEventSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE33D8);
  }

  return result;
}

uint64_t sub_1C480C628(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C480C688(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v6);
  *(v4 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v7);
  *(v4 + 48) = swift_task_alloc();
  v8 = type metadata accessor for SGEventSourceIngestor(0);
  *(v4 + 56) = v8;
  sub_1C43FBD18(v8);
  *(v4 + 64) = swift_task_alloc();
  v9 = type metadata accessor for Source(0);
  *(v4 + 72) = v9;
  sub_1C43FBD18(v9);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v10 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v10);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C480C7E4, 0, 0);
}

uint64_t sub_1C480C7E4()
{
  sub_1C4419750();
  sub_1C4471814(v1, v2, v3);
  if (qword_1EDDFD110 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 129);
  v4 = *(v0 + 88);
  v15 = *(v0 + 96);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_1C442B738(*(v0 + 72), qword_1EDDFD118);
  *(v0 + 112) = v10;
  sub_1C4471814(v10, v4, type metadata accessor for Source);
  sub_1C4471814(v9, v6, type metadata accessor for PhaseStores);
  v11 = v7[7];
  sub_1C4471814(v10, v6 + v7[5], type metadata accessor for Source);
  *(v6 + v11) = v8;
  *(v6 + v7[6]) = v14;
  sub_1C4471814(v10, v5, type metadata accessor for Source);
  sub_1C4471814(v9, v15, type metadata accessor for PhaseStores);
  *(v0 + 128) = 1;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C480C9B0;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480C9B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C480CAAC, 0, 0);
}

uint64_t sub_1C480CAAC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v23 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  sub_1C4471814(v0[14], v0[10], type metadata accessor for Source);
  sub_1C4419750();
  sub_1C4471814(v8, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44853AC(v8, type metadata accessor for PhaseStores);
  v10 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C480C5D0();
  v11 = sub_1C4422F90(v10);
  sub_1C4471814(v5, v11, type metadata accessor for SGEventSourceIngestor);
  sub_1C44002E8();
  sub_1C4471F54(v2, v12, v13);
  sub_1C44002E8();
  sub_1C4471F54(v1, v14, v15);
  sub_1C44002E8();
  sub_1C4471F54(v23, v16, v17);
  sub_1C44002E8();
  sub_1C4471F54(v6, v18, v19);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;
  sub_1C44853AC(v5, type metadata accessor for SGEventSourceIngestor);

  v20 = v0[1];
  v21 = v0[4];

  return v20(v21);
}

uint64_t type metadata accessor for FoundInAppsEventPhase(uint64_t a1)
{
  result = qword_1EDDE3B88;
  if (!qword_1EDDE3B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C480CD80(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for PhaseStores(0);
  *(v3 + 32) = v5;
  sub_1C43FBD18(v5);
  *(v3 + 40) = sub_1C43FBE7C();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 48) = sub_1C43FBE7C();
  v7 = type metadata accessor for SGContactSourceIngestor(0);
  *(v3 + 56) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 64) = sub_1C43FBE7C();
  v8 = type metadata accessor for Source(0);
  *(v3 + 72) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v9 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v9);
  *(v3 + 96) = sub_1C43FBE7C();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C480CEB0, 0, 0);
}

uint64_t sub_1C480CEB0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1C4430A70(v2, *(v0 + 96), type metadata accessor for Configuration);
  *(v0 + 104) = *(v2 + *(v1 + 24));
  v3 = qword_1EDDFD068;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 72), qword_1EDDFD070);
  sub_1C4430A70(v11, v6, type metadata accessor for Source);
  sub_1C4430A70(v10, v7 + *(v8 + 20), type metadata accessor for PhaseStores);
  sub_1C4430A70(v11, v7, type metadata accessor for Source);
  *(v7 + *(v8 + 24)) = v4;
  sub_1C4430A70(v11, v5, type metadata accessor for Source);
  sub_1C4430A70(v10, v9, type metadata accessor for PhaseStores);
  *(v0 + 120) = 3;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C480D08C;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480D08C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C480D188, 0, 0);
}

uint64_t sub_1C480D188()
{
  v15 = *(v0 + 121);
  v1 = *(v0 + 96);
  v14 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_1C456902C(&unk_1EC0BC650, &qword_1C4F30BB0);
  sub_1C4EFD548();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C4EFD4C8();
  sub_1C44857CC(v7);
  v9 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor + 24) = v4;
  v9[4] = sub_1C480D490();
  v10 = sub_1C4422F90(v9);
  sub_1C480D4E8(v3, v10, type metadata accessor for SGContactSourceIngestor);
  sub_1C480D4E8(v1, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = v14;
  sub_1C480D4E8(v2, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C480D4E8(v5, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = v8;
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = v15;

  v11 = *(v0 + 8);
  v12 = *(v0 + 24);

  return v11(v12);
}

uint64_t type metadata accessor for FoundInAppsPersonMatchExtractor(uint64_t a1)
{
  result = qword_1EC0BDA90;
  if (!qword_1EC0BDA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C480D490()
{
  result = qword_1EDDE1C68;
  if (!qword_1EDDE1C68)
  {
    type metadata accessor for SGContactSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1C68);
  }

  return result;
}

uint64_t sub_1C480D4E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C480D544(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for SGContactSourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C480D69C, 0, 0);
}

uint64_t sub_1C480D69C()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD068 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), qword_1EDDFD070);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8 + *(v9 + 20), type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8, type metadata accessor for Source);
  *(v8 + *(v9 + 24)) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = 1;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C480D854;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C480D854()
{

  return MEMORY[0x1EEE6DFA0](sub_1C480D950, 0, 0);
}

uint64_t sub_1C480D950()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C480D490();
  v11 = sub_1C4422F90(v10);
  sub_1C480DBF0(v5, v11, type metadata accessor for SGContactSourceIngestor);
  sub_1C44002E8();
  sub_1C480DBF0(v2, v12, v13);
  sub_1C44002E8();
  sub_1C480DBF0(v1, v14, v15);
  sub_1C44002E8();
  sub_1C480DBF0(v23, v16, v17);
  sub_1C44002E8();
  sub_1C480DBF0(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = v0[1];
  v21 = v0[3];

  return v20(v21);
}

uint64_t type metadata accessor for FoundInAppsPersonPhase(uint64_t a1)
{
  result = qword_1EDDE2C00;
  if (!qword_1EDDE2C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C480DBF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t Array<A>.sqlExpression.getter(uint64_t a1)
{
  Array<A>.jsonString()(a1);
  sub_1C440AB40(MEMORY[0x1E69E6158], MEMORY[0x1E69A0138]);
}

uint64_t Array<A>.jsonString()(uint64_t a1)
{
  v2 = sub_1C4F01188();
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  v7 = sub_1C4EF9378();
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9358();
  sub_1C4EF9388();
  sub_1C456902C(&qword_1EC0BDAA0, &unk_1C4F30838);
  sub_1C480E500();
  sub_1C4EF93B8();
  if (!v1)
  {
    sub_1C4F01178();
    sub_1C43FFE24();
    v6 = sub_1C4F01158();
    v10 = v9;
    v11 = sub_1C43FFE24();
    sub_1C4434000(v11, v12);
    if (!v10)
    {
      v6 = 0x80000001C4F9C250;
      sub_1C480E5DC();
      swift_allocError();
      *v14 = 0xD000000000000032;
      v14[1] = 0x80000001C4F9C250;
      swift_willThrow();
    }
  }

  return v6;
}

uint64_t Array<A>.csvString()(uint64_t a1)
{
  v2 = type metadata accessor for Source(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v6 = (v5 - v4);
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v7, 0);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1C449ED64(v8, v6);
      v11 = *v6;
      v10 = v6[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v6);
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C44CD9C0(v12 > 1, v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v15 = sub_1C4F01048();

  return v15;
}

uint64_t Dictionary<>.sqlExpression.getter(uint64_t a1, uint64_t a2)
{
  Dictionary<>.jsonString()(a1, a2);
  sub_1C440AB40(MEMORY[0x1E69E6158], MEMORY[0x1E69A0138]);
}

uint64_t Dictionary<>.jsonString()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4F01188();
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EF9378();
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9358();
  sub_1C4EF9388();
  sub_1C4F00FA8();
  swift_getWitnessTable();
  sub_1C4EF93B8();
  if (!v2)
  {
    sub_1C4F01178();
    sub_1C43FFE24();
    v7 = sub_1C4F01158();
    v11 = v10;
    v12 = sub_1C43FFE24();
    sub_1C4434000(v12, v13);
    if (!v11)
    {
      v7 = 0x80000001C4F9C250;
      sub_1C480E5DC();
      swift_allocError();
      *v15 = 0xD000000000000032;
      v15[1] = 0x80000001C4F9C250;
      swift_willThrow();
    }
  }

  return v7;
}

unint64_t sub_1C480E500()
{
  result = qword_1EC0BDAA8;
  if (!qword_1EC0BDAA8)
  {
    sub_1C4572308(&qword_1EC0BDAA0, &unk_1C4F30838);
    sub_1C480E584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAA8);
  }

  return result;
}

unint64_t sub_1C480E584()
{
  result = qword_1EDDF0D68;
  if (!qword_1EDDF0D68)
  {
    type metadata accessor for Source(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0D68);
  }

  return result;
}

unint64_t sub_1C480E5DC()
{
  result = qword_1EC0BDAB0;
  if (!qword_1EC0BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BDAB0);
  }

  return result;
}

uint64_t sub_1C480E724(uint64_t a1)
{
  v1 = a1;
  sub_1C441EC18(a1);
  MEMORY[0x1C69417F0](v1 - 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480E768(uint64_t a1)
{
  v1 = a1;
  sub_1C441EC18(a1);
  v2 = sub_1C47E1854(v1 & 1);
  sub_1C4406EF4(v2, v3, v4);

  return sub_1C4F02B68();
}

uint64_t sub_1C480E7C8(uint64_t a1)
{
  v1 = a1;
  sub_1C441EC18(a1);
  MEMORY[0x1C69417F0](qword_1C4F30B18[v1]);
  return sub_1C4F02B68();
}

uint64_t sub_1C480E938(uint64_t a1)
{
  v1 = a1;
  sub_1C441EC18(a1);
  MEMORY[0x1C69417F0](v1 & 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480E990(uint64_t a1, uint64_t a2)
{
  sub_1C441EC18(a1);
  v3 = sub_1C4435060();
  MEMORY[0x1C69417F0](v3);
  MEMORY[0x1C69417F0](a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C480EAD8(uint64_t a1, uint64_t a2)
{
  sub_1C441EC18(a1);
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EB20(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EBE0(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_1C441EC18(a1);
  a2(v5, a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480ECB8(uint64_t a1)
{
  v1 = sub_1C441EC18(a1);
  sub_1C4408A68(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480ED74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a1;
  sub_1C441EC18(a1);
  a2(v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C480EE10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1C441EC18(a1);
  v4 = a2(a1);
  sub_1C4406EF4(v4, v5, v6);

  return sub_1C4F02B68();
}

uint64_t sub_1C480EE60(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C441CA2C();
  sub_1C4F02B28();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EE9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1C441EC18(a1);
  v3 = sub_1C4435060();
  a2(v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C480EEE8(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C441CA2C();
  sub_1C4F02B38();
  return sub_1C4F02B68();
}

uint64_t sub_1C480EF6C(uint64_t a1)
{
  sub_1C4411D30(a1);
  sub_1C4417210();
  if (v3)
  {
    v4 = 0x7461636964657270;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  sub_1C44131B0(v1, v4, v2);

  return sub_1C4F02B68();
}

uint64_t sub_1C480EFDC(uint64_t a1)
{
  sub_1C4411D30(a1);
  sub_1C441CA2C();
  sub_1C4F02B28();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F014(uint64_t a1)
{
  sub_1C4411D30(a1);
  sub_1C441CA2C();
  sub_1C4F02B38();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02AF8();
  v4 = sub_1C4435060();
  MEMORY[0x1C69417F0](v4);
  MEMORY[0x1C69417F0](a3);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F14C(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 0x736E6D756C6F63;
  }

  else
  {
    v4 = 0x6D614E656C626174;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F1F0(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 0x7473696C70;
  }

  else
  {
    v4 = 1852797802;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F29C(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 0x6550736F746F6870;
  }

  else
  {
    v4 = 0x6E6F73726570;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F310(uint64_t a1)
{
  sub_1C4411D30(a1);
  sub_1C4417210();
  if (v3)
  {
    v4 = 0x6172676F74736968;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  sub_1C44131B0(v1, v4, v2);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F3D0(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x65746144646E65;
    }

    else
    {
      v4 = 0x746E65746E6F63;
    }
  }

  else
  {
    v4 = 0x7461447472617473;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F47C(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C480F574(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a2 & 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F5E8(uint64_t a1)
{
  v2 = sub_1C440D448(a1);
  v3 = v1(v2);
  sub_1C4406EF4(v3, v4, v5);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F64C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](a2 - 1);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F6F8(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](qword_1C4F30B18[a2]);
  return sub_1C4F02B68();
}

uint64_t sub_1C480F790(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 0x7070416F746F6870;
  }

  else
  {
    v4 = 0x63696E756D6D6F63;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F818(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 6581861;
  }

  else
  {
    v4 = 0x7472617473;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F87C(uint64_t a1)
{
  sub_1C4411D30(a1);
  sub_1C4417210();
  if (v3)
  {
    v4 = 0x6E69646465626D65;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  sub_1C44131B0(v1, v4, v2);

  return sub_1C4F02B68();
}

uint64_t sub_1C480F93C()
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C480F994(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x796C68746E6F6DLL;
    }

    else
    {
      v4 = 0x6C61756E6E61;
    }
  }

  else
  {
    v4 = 0x796C6B656577;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FA1C()
{
  v0 = sub_1C4F02AF8();
  sub_1C4408A68(v0);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FA54(uint64_t a1)
{
  sub_1C4411D30(a1);
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C480FAF0(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x676E697461647075;
    }

    else
    {
      v4 = 0x647055736465656ELL;
    }
  }

  else
  {
    v4 = 0x64657461647075;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FBA0(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 0x4F64657461647075;
  }

  else
  {
    v4 = 0x6E61684377656976;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FC3C(uint64_t a1)
{
  sub_1C440D448(a1);
  v1(v4, v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FC7C(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x64757469676E6F6CLL;
    }

    else
    {
      v4 = 0xD000000000000016;
    }
  }

  else
  {
    v4 = 0x656475746974616CLL;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  v4 = sub_1C4435060();
  a3(v4);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FD7C(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    v4 = 0x617247746E657665;
  }

  else
  {
    v4 = 0x7247656C62617473;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FE40(uint64_t a1)
{
  v2 = sub_1C4411D30(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6E6F6974656C6564;
    }

    else
    {
      v4 = 0x646574736F70;
    }
  }

  else
  {
    v4 = 0x6C616D726F6ELL;
  }

  sub_1C44131B0(v2, v4, v3);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FEC8(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void))
{
  sub_1C4F02AF8();
  a3(a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C480FF2C(uint64_t a1)
{
  sub_1C440D448(a1);
  v3 = v1(v2);
  sub_1C4406EF4(v3, v4, v5);

  return sub_1C4F02B68();
}

uint64_t sub_1C480FF74(uint64_t a1)
{
  sub_1C4411D30(a1);
  v2 = sub_1C47E1854(v1 & 1);
  sub_1C4406EF4(v2, v3, v4);

  return sub_1C4F02B68();
}

unint64_t sub_1C480FFB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C4810078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C480FFB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C48100A8(uint64_t a1)
{
  v2 = sub_1C45021B8();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C48100F4(uint64_t a1)
{
  v2 = sub_1C45021B8();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t FusedTriple.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v37 = v6 - v5;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v41 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4F02248();

  v43 = 60;
  v44 = 0xE100000000000000;
  v42[0] = a1;
  swift_getMetatypeMetadata();
  v10 = sub_1C4F01198();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](658141984, 0xE400000000000000);
  sub_1C43FD7D4();
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v11, v12, MEMORY[0x1E69A9840]);
  v13 = sub_1C4F02858();
  MEMORY[0x1C6940010](v13);

  v14 = sub_1C4410CBC();
  v15(v14);
  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  sub_1C43FD7D4();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  sub_1C4811074(v16, v17, MEMORY[0x1E69A9780]);
  v18 = sub_1C4F02858();
  MEMORY[0x1C6940010](v18);

  v36 = *(v41 + 8);
  v19 = sub_1C43FC0A8();
  v20(v19);
  MEMORY[0x1C6940010](0x273A69722027, 0xE600000000000000);
  sub_1C43FD7D4();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v21, v22, MEMORY[0x1E69A9A18]);
  v23 = sub_1C4F02858();
  MEMORY[0x1C6940010](v23);

  (*(v39 + 8))(v37, v38);
  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  sub_1C43FEDF8();
  sub_1C4EFF7C8();
  v24 = sub_1C4F02858();
  MEMORY[0x1C6940010](v24);

  v25 = sub_1C43FC0A8();
  v36(v25);
  MEMORY[0x1C6940010](0x273A6F2027, 0xE500000000000000);
  sub_1C43FD7D4();
  v26 = sub_1C4EFF7D8();
  MEMORY[0x1C6940010](v26);

  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](658141298, 0xE400000000000000);

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x273A637273, 0xE500000000000000);
  v27 = sub_1C43FD7D4();
  v28(v27);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x273A632027, 0xE500000000000000);
  (*(a2 + 40))(a1, a2);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](0x273A64732027, 0xE600000000000000);
  (*(a2 + 48))(v42, a1, a2);
  v29 = v42[0];
  v30 = v42[1];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v29, v30);
  MEMORY[0x1C6940010](15911, 0xE200000000000000);

  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F9C290);

  MEMORY[0x1C6940010](0x27203A73742027, 0xE700000000000000);
  v31 = sub_1C43FD7D4();
  v32(v31);
  sub_1C4F01A28();
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  v33 = v43;
  v34 = v44;
  v43 = 60;
  v44 = 0xE100000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v33, v34);

  return v43;
}

uint64_t static FusedTriple.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v97 = v8;
  v98 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v96 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v99 = v92 - v12;
  v100 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v102 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v101 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v92 - v18;
  v20 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v92 - v25;
  v94 = a4;
  v95 = *(a4 + 8);
  v103 = a1;
  sub_1C43FC0A8();
  sub_1C4EFF7E8();
  v104 = a2;
  sub_1C43FC0A8();
  sub_1C4EFF7E8();
  sub_1C4400404();
  sub_1C4811074(v27, v28, MEMORY[0x1E69A9830]);
  sub_1C440E2DC();
  LOBYTE(a4) = sub_1C4F010B8();
  v29 = *(v22 + 8);
  v30 = sub_1C43FD7E0();
  v29(v30);
  (v29)(v26, v20);
  if ((a4 & 1) == 0)
  {
    sub_1C440AB58();
    sub_1C4EFF7E8();
    sub_1C440AB58();
    sub_1C4EFF7E8();
    sub_1C440E2DC();
    v50 = sub_1C4EFF078();
    v51 = sub_1C43FD7E0();
    v29(v51);
    (v29)(v26, v20);
    return v50 & 1;
  }

  sub_1C440AB58();
  sub_1C4EFF7F8();
  sub_1C440AB58();
  sub_1C4EFF7F8();
  sub_1C441FA90();
  v33 = sub_1C4811074(v31, v32, MEMORY[0x1E69A9768]);
  v34 = v100;
  v35 = sub_1C4F010B8();
  v37 = v102 + 8;
  v36 = *(v102 + 8);
  v38 = sub_1C4410CBC();
  v36(v38);
  (v36)(v19, v34);
  if ((v35 & 1) == 0)
  {
    sub_1C4EFF7F8();
    sub_1C4EFF7F8();
    v50 = sub_1C4EFE9A8();
    v52 = sub_1C4410CBC();
    v36(v52);
    (v36)(v19, v34);
    return v50 & 1;
  }

  v92[1] = v33;
  v93 = v36;
  v102 = v37;
  v39 = sub_1C4EFF7D8();
  v41 = v40;
  if (v39 == sub_1C4EFF7D8() && v41 == v42)
  {
  }

  else
  {
    v44 = sub_1C4F02938();

    if ((v44 & 1) == 0)
    {
      sub_1C442FDB4();
      v45 = sub_1C4EFF7D8();
      v47 = v46;
      sub_1C442FDB4();
      if (v45 == sub_1C4EFF7D8() && v47 == v48)
      {

        v50 = 0;
      }

      else
      {
        v50 = sub_1C4F02938();
      }

      return v50 & 1;
    }
  }

  sub_1C442FDB4();
  sub_1C4EFF7B8();
  sub_1C442FDB4();
  sub_1C4EFF7B8();
  sub_1C442CAA8();
  sub_1C4811074(v53, v54, MEMORY[0x1E69A9A08]);
  v55 = sub_1C4F010B8();
  v56 = *(v97 + 8);
  v57 = sub_1C43FD7E0();
  v56(v57);
  v58 = sub_1C4410CBC();
  v56(v58);
  if (v55)
  {
    sub_1C4402E08();
    sub_1C4EFF7C8();
    v59 = v101;
    sub_1C4402E08();
    sub_1C4EFF7C8();
    v60 = v100;
    v61 = sub_1C4F010B8();
    v62 = v93;
    (v93)(v59, v60);
    v62(v19, v60);
    if (v61)
    {
      v63 = v95;
      v64 = *(v95 + 16);
      v65 = sub_1C440E2DC();
      v64(v65);
      v66 = v105;
      sub_1C442BB6C();
      MEMORY[0x1C6941830](v66);
      v67 = sub_1C4F02B68();
      v68 = sub_1C440E2DC();
      v64(v68);
      v69 = v105;
      sub_1C442BB6C();
      MEMORY[0x1C6941830](v69);
      v70 = sub_1C4F02B68();
      v71 = v67 < v70;
      if (v67 == v70 && (v72 = v94, v73 = *(v94 + 48), v74 = sub_1C440AB58(), v73(v74), sub_1C442BB6C(), sub_1C4F01298(), v75 = sub_1C4F02B68(), , v76 = sub_1C440AB58(), v73(v76), sub_1C442BB6C(), sub_1C4F01298(), v77 = sub_1C4F02B68(), , v71 = v75 < v77, v75 == v77))
      {
        v78 = *(v63 + 24);
        v79 = sub_1C43FEDF8();
        v80 = v78(v79);
        v81 = sub_1C43FEDF8();
        if (v80 == v78(v81))
        {
          v82 = *(v72 + 40);
          v83 = sub_1C440AB58();
          v84 = v82(v83);
          v85 = sub_1C440AB58();
          v82(v85);
        }

        else
        {
          v89 = sub_1C43FEDF8();
          v84 = v78(v89);
          v90 = sub_1C43FEDF8();
          v86 = v78(v90);
        }

        v50 = v84 < v86;
      }

      else
      {
        v50 = v71;
      }
    }

    else
    {
      sub_1C4402E08();
      sub_1C4EFF7C8();
      sub_1C4402E08();
      sub_1C4EFF7C8();
      v50 = sub_1C4EFE9A8();
      v62(v59, v60);
      v62(v19, v60);
    }
  }

  else
  {
    sub_1C4402E08();
    sub_1C4EFF7B8();
    sub_1C4402E08();
    sub_1C4EFF7B8();
    v50 = sub_1C4EFF868();
    v87 = sub_1C43FD7E0();
    v56(v87);
    v88 = sub_1C4410CBC();
    v56(v88);
  }

  return v50 & 1;
}

uint64_t sub_1C4811074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for FusedTripleColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}