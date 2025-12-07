uint64_t InferenceServiceRunnerExtendedResponseWithEvent.init(output:runEvent:resultCachePolicy:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = *(a2 + 8);
  sub_1ABA7D08C();
  (*(v13 + 32))(a6);
  v14 = type metadata accessor for InferenceServiceRunnerExtendedResponseWithEvent(0, a3, a4, a5);
  v15 = *(v14 + 44);
  sub_1ABA7D08C();
  (*(v16 + 32))(a6 + v15, a1, a4);
  result = sub_1ABA7B9B4(a6 + v15, 0, 1, a4);
  v18 = a6 + *(v14 + 48);
  *v18 = v11;
  *(v18 + 8) = v12;
  return result;
}

uint64_t sub_1ABD4C138(uint64_t a1)
{
  v2 = sub_1ABD4C2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD4C174(uint64_t a1)
{
  v2 = sub_1ABD4C2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _InferenceServiceRunnerNoEventLog.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8F80, &qword_1ABF5DF40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD4C2C4();
  sub_1ABF252E4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1ABD4C2C4()
{
  result = qword_1EB4D8F88;
  if (!qword_1EB4D8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8F88);
  }

  return result;
}

uint64_t InferenceServiceRunnerExtendedResponse.init(output:resultCachePolicy:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_1ABA7D08C();
  (*(v7 + 32))(a3, v8);
  result = type metadata accessor for InferenceServiceRunnerExtendedResponse(0, a2, v9, v10);
  v12 = a3 + *(result + 28);
  *v12 = v5;
  *(v12 + 8) = v6;
  return result;
}

uint64_t InferenceServiceRunnerExtendedResponseWithEvent.runEvent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  sub_1ABF247E4();
  sub_1ABA7D08C();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

BOOL static InferenceServiceRunnerCost.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (*(a2 + 8))
      {
        return *&v3 == 0;
      }
    }

    else if (*(a2 + 8))
    {
      return *&v3 != 0;
    }
  }

  else
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t InferenceServiceRunnerDynamicCost.setCost(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = (*(*(a3 + 8) + 40))(a2);
  if (result)
  {
    sub_1ABD4C7F0(v3, v4);
  }

  return result;
}

uint64_t sub_1ABD4C5F4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1ABD4C850(v3);
}

uint64_t sub_1ABD4C6B4(uint64_t a1, char a2)
{
  v5 = a1;
  v6 = a2 & 1;
  v3 = *(v2 + 32);

  v3(&v5);
}

uint64_t sub_1ABD4C710(uint64_t a1)
{
  v2 = sub_1ABD4CBA4();
  v2(a1);
}

uint64_t sub_1ABD4C75C@<X0>(uint64_t a1@<X8>)
{
  sub_1ABA7C2E0();
  v4 = *(v3 + 88);
  swift_beginAccess();
  sub_1ABA7C2E0();
  sub_1ABA7D08C();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1ABD4C7F0(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return sub_1ABD4C6B4(v5, v6);
}

uint64_t sub_1ABD4C850(_BYTE *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-v5];
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1ABD4C710(v6);
  v9 = *(v4 + 8);
  v9(a1, v3);
  return (v9)(v6, v3);
}

void (*sub_1ABD4C9C0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1ABAFDD10(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  sub_1ABA7D5F0();
  v5 = *(v4 + 80);
  *(v6 + 32) = v5;
  v7 = *(v5 - 8);
  v8 = v7;
  *(v6 + 40) = v7;
  v9 = *(v7 + 64);
  v3[6] = sub_1ABAFDD10(v9);
  v10 = sub_1ABAFDD10(v9);
  v3[7] = v10;
  sub_1ABA7D5F0();
  v12 = *(v11 + 88);
  swift_beginAccess();
  v13 = *(v8 + 16);
  v3[8] = v13;
  v3[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v10, v1 + v12, v5);
  return sub_1ABD4CAF8;
}

void sub_1ABD4CAF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1ABD4C850(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1ABD4C850(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1ABD4CBA4()
{
  sub_1ABA7D5F0();
  v2 = *(v0 + *(v1 + 96));

  return v2;
}

uint64_t InferenceServiceDidSet.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  InferenceServiceDidSet.init(wrappedValue:)(a1);
  return v2;
}

uint64_t InferenceServiceDidSet.init(wrappedValue:)(uint64_t a1)
{
  sub_1ABA7C2E0();
  v4 = (v1 + *(v3 + 96));
  swift_allocObject();
  sub_1ABA7C2E0();
  v6 = *(v5 + 80);
  *(v7 + 16) = v6;
  *v4 = nullsub_1;
  v4[1] = v7;
  (*(*(v6 - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t InferenceServiceDidSet.deinit()
{
  sub_1ABA7D08C();
  (*(v1 + 8))(v0 + v2);
  sub_1ABA7D5F0();

  return v0;
}

uint64_t InferenceServiceDidSet.__deallocating_deinit()
{
  InferenceServiceDidSet.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABD4CDCC(uint64_t a1)
{
  *(a1 + 8) = sub_1ABD4CDFC();
  result = sub_1ABD4CE50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD4CDFC()
{
  result = qword_1EB4D8F90;
  if (!qword_1EB4D8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8F90);
  }

  return result;
}

unint64_t sub_1ABD4CE50()
{
  result = qword_1EB4D8F98;
  if (!qword_1EB4D8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8F98);
  }

  return result;
}

unint64_t sub_1ABD4CEA8()
{
  result = qword_1EB4D8FA0[0];
  if (!qword_1EB4D8FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D8FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _InferenceServiceRunnerNoEventLog(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of InferenceServiceRunner.run(input:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1ABB385FC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1ABD4D180(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unsigned __int8 *sub_1ABD4D1F8(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = result[v6];
        if (result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v11 = *&result[v6];
        if (*&result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v11 = *&result[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *result;
        }

        else
        {
          v12 = 0;
          v13 = *result;
        }

        return (v5 + (v13 | v12) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1ABA7E1E0(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1ABA7E1E0(result, v5, v4);
}

void sub_1ABD4D314(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
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
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABD4D4C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1ABF247E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_1ABD4D558(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(*(v6 - 8) + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v8)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v6 - 8) + 64) + v13;
  if (v12 < a2)
  {
    v16 = ((v14 + *(*(v7 - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 9;
    v17 = (a2 - v12 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      LODWORD(v19) = 4;
    }

    else
    {
      LODWORD(v19) = 2;
    }

    if (v18 < 0x100)
    {
      LODWORD(v19) = 1;
    }

    if (v18 >= 2)
    {
      v19 = v19;
    }

    else
    {
      v19 = 0;
    }

    switch(v19)
    {
      case 1:
        v20 = result[v16];
        if (result[v16])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 2:
        v20 = *&result[v16];
        if (*&result[v16])
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v20 = *&result[v16];
        if (!v20)
        {
          goto LABEL_31;
        }

LABEL_27:
        v21 = (v20 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v22 = *result;
        }

        else
        {
          v21 = 0;
          v22 = *result;
        }

        return (v12 + (v22 | v21) + 1);
      default:
LABEL_31:
        if (v12)
        {
          break;
        }

        return 0;
    }
  }

  if (v8 >= v11)
  {

    return sub_1ABA7E1E0(result, v8, v6);
  }

  else
  {
    v23 = sub_1ABA7E1E0(&result[v15] & ~v13, v10, v7);
    if (v23 >= 2)
    {
      return (v23 - 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1ABD4D740(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = *(*(v8 - 8) + 84);
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v10)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(*(v8 - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(*(v9 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = ((v18 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 < a3)
  {
    v20 = (a3 - v14 + 255) >> 8;
    if (v19 <= 3)
    {
      v21 = v20 + 1;
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
      v7 = v22;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v14 >= a2)
  {
    switch(v7)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_58:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v10 >= v13)
        {
          v29 = a1;
          v12 = v10;
        }

        else
        {
          v25 = (&a1[v16] & ~v15);
          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v26 = ~(-1 << (8 * v18));
            }

            else
            {
              v26 = -1;
            }

            if (v18)
            {
              v27 = v26 & (~v13 + a2);
              if (v18 <= 3)
              {
                v28 = v18;
              }

              else
              {
                v28 = 4;
              }

              bzero(v25, v18);
              switch(v28)
              {
                case 2:
                  *v25 = v27;
                  break;
                case 3:
                  *v25 = v27;
                  v25[2] = BYTE2(v27);
                  break;
                case 4:
                  *v25 = v27;
                  break;
                default:
                  *v25 = v27;
                  break;
              }
            }

            return;
          }

          a2 = (a2 + 1);
          v29 = v25;
          v8 = v9;
        }

        sub_1ABA7B9B4(v29, a2, v12, v8);
        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    bzero(a1, ((v18 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v19 <= 3)
    {
      v24 = (v23 >> 8) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v19 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v7)
    {
      case 1:
        a1[v19] = v24;
        break;
      case 2:
        *&a1[v19] = v24;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v19] = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t storeEnumTagSinglePayload for InferenceServiceRunnerCost(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1ABD4DA58(uint64_t a1)
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

unint64_t sub_1ABD4DBBC()
{
  result = qword_1EB4D90A8;
  if (!qword_1EB4D90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90A8);
  }

  return result;
}

unint64_t sub_1ABD4DC14()
{
  result = qword_1EB4D90B0;
  if (!qword_1EB4D90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90B0);
  }

  return result;
}

uint64_t InferenceSupportRemoteBackendType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void *static InferenceSupportRemoteBackend.assetRegistryRemoteBackendType.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 24))(&v4);
  *a2 = v4;
  return result;
}

unint64_t sub_1ABD4DD58()
{
  result = qword_1EB4D90B8;
  if (!qword_1EB4D90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceSupportRemoteBackendType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABD4DE9C@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for InferenceSupportRemoteBackendXPC();
  v6 = v3;
  result = sub_1ABD4E658(v4, &v6);
  *a2 = result;
  return result;
}

void *InferenceSupportBackendHelper.CreateBackend.init<A>(createRemoteBackend:getViewService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(a6 + 24))(&v15, a5, a6);
  *a7 = v15;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a1;
  result[5] = a2;
  *(a7 + 8) = sub_1ABA93138;
  *(a7 + 16) = result;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  return result;
}

uint64_t sub_1ABD4DFD8()
{
  if (qword_1ED86F980 != -1)
  {
    sub_1ABA8F64C(&qword_1ED86F980);
  }

  v0 = off_1ED8708C8;
  os_unfair_lock_lock(off_1ED8708C8 + 6);
  v1 = *(*(v0 + 2) + 16);

  os_unfair_lock_unlock(v0 + 6);
  v1(&byte_1ED8708A0);
}

uint64_t static InferenceSupportBackendHelper.createCreateBackend.getter()
{
  if (qword_1ED86F980 != -1)
  {
    sub_1ABA8F64C(&qword_1ED86F980);
  }

  v0 = off_1ED8708C8;
  os_unfair_lock_lock(off_1ED8708C8 + 6);
  v1 = *(*(v0 + 2) + 16);

  os_unfair_lock_unlock(v0 + 6);
  return v1;
}

uint64_t static InferenceSupportBackendHelper.createBackend.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED870898 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8708A8;
  v3 = qword_1ED8708C0;
  *a1 = byte_1ED8708A0;
  *(a1 + 8) = v2;
  *(a1 + 16) = unk_1ED8708B0;
  *(a1 + 32) = v3;
}

uint64_t sub_1ABD4E170()
{
  type metadata accessor for InferenceSupportBackendHelper._CreateCreateBackend();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1ABD4E1E8;
  *(v0 + 24) = 0;
  sub_1ABAD219C(&qword_1EB4D90C0, &unk_1ABF5E460);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1ED8708C8 = result;
  return result;
}

void sub_1ABD4E1E8(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = sub_1ABD4E4EC;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_1ABD4DEEC;
  *(a1 + 32) = 0;
}

uint64_t sub_1ABD4E21C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static InferenceSupportBackendHelper.createCreateBackend.setter(v1, v2);
}

uint64_t static InferenceSupportBackendHelper.createCreateBackend.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1ED86F980 != -1)
  {
    a1 = sub_1ABA8F64C(&qword_1ED86F980);
  }

  v2 = off_1ED8708C8;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v2 + 6);
  sub_1ABAF2C60(v2 + 2);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t (*static InferenceSupportBackendHelper.createCreateBackend.modify(void *a1))(uint64_t *a1, char a2)
{
  if (qword_1ED86F980 != -1)
  {
    sub_1ABA8F64C(&qword_1ED86F980);
  }

  v2 = off_1ED8708C8;
  os_unfair_lock_lock(off_1ED8708C8 + 6);
  v3 = *(v2 + 2);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);

  os_unfair_lock_unlock(v2 + 6);
  *a1 = v5;
  a1[1] = v4;
  return sub_1ABD4E390;
}

uint64_t sub_1ABD4E390(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    static InferenceSupportBackendHelper.createCreateBackend.setter(v3, v2);
  }

  else
  {
    v5 = *a1;

    return static InferenceSupportBackendHelper.createCreateBackend.setter(v5, v2);
  }
}

_BYTE *storeEnumTagSinglePayload for InferenceSupportBackendHelper(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD4E4EC@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  result = sub_1ABD4DE9C(&v6, &v5);
  if (!v2)
  {
    result = type metadata accessor for InferenceSupportRemoteBackendXPC();
    a2[3] = result;
    a2[4] = &off_1F207B028;
    *a2 = v5;
  }

  return result;
}

uint64_t *sub_1ABD4E550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = type metadata accessor for AssetRegistryLocalBackendBasic();
  v8 = sub_1ABB0B8BC(v7, a3);
  if (v4)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = v8;
  }

  return v5;
}

uint64_t sub_1ABD4E658(uint64_t a1, char *a2)
{
  v7 = *a2;
  v2 = [objc_allocWithZone(GDXPCInferenceSupportService) init];
  sub_1ABF21854();
  swift_allocObject();
  v3 = sub_1ABF21844();
  sub_1ABF217F4();
  swift_allocObject();
  v4 = sub_1ABF217E4();
  v5 = swift_allocObject();
  sub_1ABD4EAF8(v5, &v7, v2, v3, v4);
  return v5;
}

void sub_1ABD4E71C(uint64_t a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  LOBYTE(v27[0]) = *(v5 + 24);
  sub_1ABAFCB88();
  v9 = sub_1ABF21834();
  if (v6)
  {
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = v10;
    v26 = a5;
    v12 = v9;
    objc_autoreleasePoolPop(v8);
    v13 = *(v5 + 16);
    v14 = sub_1ABF23BD4();
    v15 = sub_1ABF23BD4();
    v16 = sub_1ABF21DB4();
    *&v27[0] = 0;
    v17 = [v13 assetEntryResultDataForAssetId:v14 inDomainId:v15 remoteOptionsData:v16 error:v27];

    v18 = *&v27[0];
    if (v17)
    {
      v19 = sub_1ABF21DD4();
      v21 = v20;

      sub_1ABB0DBF0(v19, v21);

      v22 = objc_autoreleasePoolPush();
      sub_1ABAD219C(&qword_1EB4D2578, &unk_1ABF38350);
      sub_1ABD4EC5C();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v22);
      v29[0] = v27[0];
      v29[1] = v27[1];
      v29[2] = v27[2];
      v30 = v28;
      sub_1ABD4EA04();

      sub_1ABA96210(v19, v21);
      sub_1ABB0D100(v26);
      sub_1ABA96210(v19, v21);
      sub_1ABA96210(v12, v11);
      sub_1ABB0BA88(v29);
    }

    else
    {
      v23 = v18;
      v24 = sub_1ABF21BE4();

      swift_willThrow();
      sub_1ABB0DB9C();
      swift_allocError();
      *v25 = v24;
      swift_willThrow();
      sub_1ABA96210(v12, v11);
    }
  }
}

void sub_1ABD4EA04()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = *(v0 + 24);
    if ((v1 & 0x80) == 0)
    {
      if (v1)
      {
        sub_1ABAAA4A0();
        v2 = sub_1ABAAA44C();
        if ((sub_1ABA80668(v2, MEMORY[0x1E69E6158], v3, v4, v2, v5, v6, v7, 47) & 1) == 0)
        {
          return;
        }

        sub_1ABAFC69C();
      }

      else
      {
        sub_1ABAAA4A0();
        v8 = sub_1ABAAA44C();
        if (sub_1ABA80668(v8, MEMORY[0x1E69E6158], v9, v10, v8, v11, v12, v13, 47))
        {
          return;
        }

        sub_1ABAF8054();
      }

      swift_allocError();
      *v14 = 0;
      swift_willThrow();
    }
  }
}

void *sub_1ABD4EAF8(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *a2;
  v6[2] = a3;
  sub_1ABAD219C(&qword_1EB4D90C8, &qword_1ABF5E560);
  swift_allocObject();
  v6[3] = sub_1ABB0DD94(v10, a3, a4, a5);
  v6[4] = a5;
  v11 = a3;

  return v6;
}

uint64_t sub_1ABD4EBB0()
{

  return v0;
}

uint64_t sub_1ABD4EBE0()
{
  sub_1ABD4EBB0();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABD4EC5C()
{
  result = qword_1EB4D26F0;
  if (!qword_1EB4D26F0)
  {
    sub_1ABAE2850(&qword_1EB4D2578, &unk_1ABF38350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D26F0);
  }

  return result;
}

uint64_t InitializationResourcesManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1ABF239C4();
  return v0;
}

uint64_t sub_1ABD4ED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1ABF247E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-v13 - 8];
  swift_beginAccess();
  sub_1ABAD5248(a1, *(v5 + 16));
  v15 = v23;
  sub_1ABB384B8(v22);
  if (!v15)
  {
    v20 = v11;
    v16 = a4;
    v17 = v12;
    v18 = *(a3 + 40);
    v23 = AssociatedTypeWitness;
    sub_1ABA93DC0(v22);
    v18(a2, a3);
    v12 = v17;
    a4 = v16;
    v11 = v20;
    swift_beginAccess();
    sub_1ABD25744(v22, a1);
    swift_endAccess();
  }

  sub_1ABAD5248(a1, *(v5 + 16));
  sub_1ABD4F018(v22, v21);
  sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  if (swift_dynamicCast())
  {
    sub_1ABB384B8(v22);
    sub_1ABA7B9B4(v14, 0, 1, AssociatedTypeWitness);
    return (*(*(AssociatedTypeWitness - 8) + 32))(a4, v14, AssociatedTypeWitness);
  }

  else
  {
    sub_1ABA7B9B4(v14, 1, 1, AssociatedTypeWitness);
    (*(v12 + 8))(v14, v11);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD4F018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InitializationResourcesManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD4F164()
{
  if (_Records_GDEntityPredicate_records)
  {
    v5[7] = v0;
    v5[8] = v1;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v5);
    v2 = v5[0];
    v3 = v5[1];

    qword_1EB549880 = v2;
    *algn_1EB549888 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD4F1DC(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CD0];
  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
    v38 = MEMORY[0x1E69E7CD0];
    v4 = v3 + 56;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;
    v23 = v3;

    v9 = 0;
    v22 = v4;
    if (v7)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        __dst[0] = *(v23 + 16);
        v19 = sub_1ABF24FF4();
        v21 = v20;
        __dst[0] = 0xD000000000000010;
        __dst[1] = 0x80000001ABF8E840;
        MEMORY[0x1AC5A9410]();
        __dst[2] = 0;
        __dst[3] = 0x746E65746E69;
        __dst[4] = 0xE600000000000000;
        *&__dst[5] = xmmword_1ABF5E5A0;
        __dst[7] = 0xE800000000000000;
        __dst[8] = v19;
        __dst[9] = v21;
        __dst[10] = MEMORY[0x1E69E7CC0];
        sub_1ABB18D34();
        sub_1ABB24250(__src);
        return v38;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        do
        {
LABEL_9:
          v11 = (*(v23 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v7)))));
          v12 = *v11;
          v13 = v11[1];
          v15 = v11[2];
          v14 = v11[3];
          v16 = qword_1EB4D03B8;

          if (v16 != -1)
          {
            swift_once();
          }

          v7 &= v7 - 1;
          v17 = qword_1EB549880;
          v18 = *algn_1EB549888;
          v24 = qword_1EB549880;
          __dst[0] = v12;
          __dst[1] = v13;

          MEMORY[0x1AC5A9410](126, 0xE100000000000000);
          sub_1ABA8F66C();
          MEMORY[0x1AC5A9410](v17, v18);

          sub_1ABA8F66C();
          MEMORY[0x1AC5A9410](126, 0xE100000000000000);

          sub_1ABA8F66C();
          MEMORY[0x1AC5A9410](v15, v14);

          v26 = __dst[0];
          v27 = __dst[1];
          v28 = 0;
          v29 = v12;
          v30 = v13;
          v31 = 0;
          v32 = v24;
          v33 = v18;
          v34 = v15;
          v35 = v14;
          v36 = MEMORY[0x1E69E7CC0];
          sub_1ABB18D34();
          memcpy(__dst, __src, 0x58uLL);
          result = sub_1ABB24250(__dst);
          v4 = v22;
        }

        while (v7);
      }
    }

    __break(1u);
  }

  return result;
}

double IPFastEnumerationIterator.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 81) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = a1;
  return result;
}

id IPFastEnumerationIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 80);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  if (*(v1 + 88) >= v3 + 1)
  {
    if ((*(v1 + 96) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v3)
    {
LABEL_22:
      result = sub_1ABF24CD4();
      __break(1u);
      return result;
    }

    v12 = *(v1 + 8);
  }

  else
  {
    *(v1 + 80) = 0;
    v4 = *(v1 + 32);
    v17 = *(v1 + 16);
    v18 = v4;
    v5 = *(v1 + 64);
    v19 = *(v1 + 48);
    v20 = v5;
    v6 = *v1;
    v16 = *(v1 + 8);
    result = [v6 countByEnumeratingWithState:&v17 objects:&v16 count:1];
    v8 = *(&v17 + 1);
    v9 = &v16 == *(&v17 + 1);
    *(v1 + 88) = result;
    *(v1 + 96) = v9;
    v10 = v18;
    *(v1 + 16) = v17;
    *(v1 + 32) = v10;
    v11 = v20;
    *(v1 + 48) = v19;
    *(v1 + 64) = v11;
    v12 = v16;
    *(v1 + 8) = v16;
    if (!result)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    if (&v16 != v8)
    {
      v3 = 0;
LABEL_11:
      v14 = *(v1 + 24);
      if (v14)
      {
        v15 = *(v14 + 8 * v3);
        if (v15)
        {
          swift_unknownObjectRetain();
          result = swift_getObjectType();
        }

        else
        {
          result = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        *a1 = v15;
        *(a1 + 24) = result;
        v13 = v3 + 1;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  swift_unknownObjectRetain();
  result = swift_getObjectType();
  *(a1 + 24) = result;
  *a1 = v12;
  v13 = 1;
LABEL_17:
  *(v1 + 80) = v13;
  return result;
}

id NSEnumerator.makeIPFastEnumerationIterator()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 81) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = v1;
  return v1;
}

uint64_t sub_1ABD4F6D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD4F718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABD4F784(uint64_t *a1, uint64_t a2, __int128 *a3, id a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  v170 = *a3;
  v194 = a3[1];
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1ABF5E660;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), v230);
  *(v13 + 32) = sub_1ABA7DAF0(v14, v15, v16, v17, v18, v19, v20, v21, v146, a2, v170, *(&v170 + 1), v194, *(&v194 + 1), v218, v230[0]);
  *(v13 + 48) = v22;
  *(v13 + 56) = v23;
  *(v13 + 64) = v24;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v230);
  *(v13 + 72) = sub_1ABA7DAF0(v25, v26, v27, v28, v29, v30, v31, v32, v147, v158, v171, v183, v195, v207, v219, v230[0]);
  *(v13 + 88) = v33;
  *(v13 + 96) = v34;
  *(v13 + 104) = v35;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = sub_1ABA91D48(_Records_GDEntityPredicate_records[48], *(_Records_GDEntityPredicate_records + 13), *(_Records_GDEntityPredicate_records + 14), v230);
  *(v13 + 112) = sub_1ABA7DAF0(v36, v37, v38, v39, v40, v41, v42, v43, v148, v159, v172, v184, v196, v208, v220, v230[0]);
  *(v13 + 128) = v44;
  *(v13 + 136) = v45;
  *(v13 + 144) = v46;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v47 = sub_1ABA91D48(_Records_GDEntityPredicate_records[60], *(_Records_GDEntityPredicate_records + 16), *(_Records_GDEntityPredicate_records + 17), v230);
  *(v13 + 152) = sub_1ABA7DAF0(v47, v48, v49, v50, v51, v52, v53, v54, v149, v160, v173, v185, v197, v209, v221, v230[0]);
  *(v13 + 168) = v55;
  *(v13 + 176) = v56;
  *(v13 + 184) = v57;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58 = sub_1ABA91D48(_Records_GDEntityPredicate_records[144], *(_Records_GDEntityPredicate_records + 37), *(_Records_GDEntityPredicate_records + 38), v230);
  *(v13 + 192) = sub_1ABA7DAF0(v58, v59, v60, v61, v62, v63, v64, v65, v150, v161, v174, v186, v198, v210, v222, v230[0]);
  *(v13 + 208) = v66;
  *(v13 + 216) = v67;
  *(v13 + 224) = v68;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v69 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1368], *(_Records_GDEntityPredicate_records + 343), *(_Records_GDEntityPredicate_records + 344), v230);
  *(v13 + 232) = sub_1ABA7DAF0(v69, v70, v71, v72, v73, v74, v75, v76, v151, v162, v175, v187, v199, v211, v223, v230[0]);
  *(v13 + 248) = v77;
  *(v13 + 256) = v78;
  *(v13 + 264) = v79;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v80 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1896], *(_Records_GDEntityPredicate_records + 475), *(_Records_GDEntityPredicate_records + 476), v230);
  *(v13 + 272) = sub_1ABA7DAF0(v80, v81, v82, v83, v84, v85, v86, v87, v152, v163, v176, v188, v200, v212, v224, v230[0]);
  *(v13 + 288) = v88;
  *(v13 + 296) = v89;
  *(v13 + 304) = v90;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v91 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1908], *(_Records_GDEntityPredicate_records + 478), *(_Records_GDEntityPredicate_records + 479), v230);
  *(v13 + 312) = sub_1ABA7DAF0(v91, v92, v93, v94, v95, v96, v97, v98, v153, v164, v177, v189, v201, v213, v225, v230[0]);
  *(v13 + 328) = v99;
  *(v13 + 336) = v100;
  *(v13 + 344) = v101;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v102 = sub_1ABA91D48(_Records_GDEntityPredicate_records[276], *(_Records_GDEntityPredicate_records + 70), *(_Records_GDEntityPredicate_records + 71), v230);
  *(v13 + 352) = sub_1ABA7DAF0(v102, v103, v104, v105, v106, v107, v108, v109, v154, v165, v178, v190, v202, v214, v226, v230[0]);
  *(v13 + 368) = v110;
  *(v13 + 376) = v111;
  *(v13 + 384) = v112;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v113 = sub_1ABA91D48(_Records_GDEntityPredicate_records[540], *(_Records_GDEntityPredicate_records + 136), *(_Records_GDEntityPredicate_records + 137), v230);
  *(v13 + 392) = sub_1ABA7DAF0(v113, v114, v115, v116, v117, v118, v119, v120, v155, v166, v179, v191, v203, v215, v227, v230[0]);
  *(v13 + 408) = v121;
  *(v13 + 416) = v122;
  *(v13 + 424) = v123;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v124 = sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), v230);
  *(v13 + 432) = sub_1ABA7DAF0(v124, v125, v126, v127, v128, v129, v130, v131, v156, v167, v180, v192, v204, v216, v228, v230[0]);
  *(v13 + 448) = v132;
  *(v13 + 456) = v133;
  *(v13 + 464) = v134;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v135 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), v230);
  *(v13 + 472) = sub_1ABA7DAF0(v135, v136, v137, v138, v139, v140, v141, v142, v157, v168, v181, v193, v205, v217, v229, v230[0]);
  *(v13 + 488) = v143;
  *(v13 + 496) = v144;
  *(v13 + 504) = v145;
  *(v4 + 64) = v7;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  *(v4 + 88) = v10;
  *(v4 + 96) = v11;
  *(v4 + 16) = v13;
  *(v4 + 24) = v169;
  *(v4 + 32) = v182;
  *(v4 + 48) = v206;
  if (!a4)
  {
    a4 = v206.n128_u64[0];
  }

  *(v4 + 104) = a4;
}

uint64_t sub_1ABD4FAC8()
{
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v1 = result;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), &v5);
    v2 = v6;
    v3 = v7;
    v4 = v8;
    *(v1 + 32) = v5;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD4FB74()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = v0[3];
  v5 = v0[4];
  sub_1ABA93E20(v0, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  (*(v5 + 32))(v4, v5, v10);
  swift_getAssociatedConformanceWitness();
  BaseEntityFactObjectProtocol.asDouble.getter();
  LOBYTE(v4) = v13;
  (*(v8 + 8))(v12, AssociatedTypeWitness);
  if (v4)
  {
    if (qword_1EB4D0390 != -1)
    {
      sub_1ABA936AC(&qword_1EB4D0390);
    }

    v14 = sub_1ABF237F4();
    sub_1ABA7AA24(v14, qword_1EB4D6160);
    sub_1ABA93E64(v1, v28);
    v15 = sub_1ABF237D4();
    v16 = sub_1ABF24664();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136642819;
      sub_1ABA93E64(v28, &v26);
      sub_1ABAD219C(&qword_1EB4D1128, &qword_1ABF332B0);
      v19 = sub_1ABF23C94();
      v21 = v20;
      sub_1ABA84B54(v28);
      v22 = sub_1ABADD6D8(v19, v21, &v27);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1ABA78000, v15, v16, "Failed to parse %{sensitive}s.", v17, 0xCu);
      sub_1ABA84B54(v18);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {

      sub_1ABA84B54(v28);
    }

    v23 = 1;
  }

  else
  {
    sub_1ABF21E04();
    v23 = 0;
  }

  v24 = sub_1ABF21EB4();
  sub_1ABA7B9B4(v3, v23, 1, v24);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD4FE24()
{
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1ABA97584();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA994C4();
  sub_1ABD4FB74();
  sub_1ABA7F5B0(v2);
  if (v9)
  {
    sub_1ABA925A4(v2, &qword_1EB4D9BF0, &qword_1ABF34240);
    return 0;
  }

  else
  {
    v10 = sub_1ABAA58FC();
    v11(v10);
    v12 = *(v0 + 40);
    v13 = sub_1ABF21E34();
    v14 = [v12 stringFromDate_];

    v15 = sub_1ABF23C04();
    (*(v7 + 8))(v1, v5);
  }

  return v15;
}

void sub_1ABD4FF94()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v33 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = v2[3];
  v9 = v2[4];
  sub_1ABA93E20(v2, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v12 = v11;
  sub_1ABA7BB88();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  (*(v9 + 32))(v8, v9, v14);
  v17 = *(v0 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)(v17, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  v19 = sub_1ABF21EB4();
  if (sub_1ABA7E1E0(v7, 1, v19) == 1)
  {
    sub_1ABA925A4(v7, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (qword_1EB4D0390 != -1)
    {
      sub_1ABA936AC(&qword_1EB4D0390);
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1EB4D6160);
    sub_1ABA93E64(v2, v36);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24664();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136642819;
      sub_1ABA93E64(v36, &v34);
      sub_1ABAD219C(&qword_1EB4D1128, &qword_1ABF332B0);
      v25 = sub_1ABF23C94();
      v27 = v26;
      sub_1ABA84B54(v36);
      v28 = sub_1ABADD6D8(v25, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1ABA78000, v21, v22, "Failed to parse %{sensitive}s.", v23, 0xCu);
      sub_1ABA84B54(v24);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {

      sub_1ABA84B54(v36);
    }
  }

  else
  {
    (*(*(v19 - 8) + 32))(v33, v7, v19);
  }

  sub_1ABA9021C();
  sub_1ABA7B9B4(v29, v30, v31, v32);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD502EC(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1ABA93E20(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  (*(v4 + 32))(v3, v4, v9);
  swift_getAssociatedConformanceWitness();
  v12 = BaseEntityFactObjectProtocol.asDouble.getter();
  LOBYTE(v3) = v13;
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  if (v3)
  {
    return 0;
  }

  v14 = [*(v2 + 56) stringFromTimeInterval_];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = sub_1ABF23C04();

  return v16;
}

uint64_t sub_1ABD50470()
{
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1ABA97584();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA994C4();
  sub_1ABD4FF94();
  sub_1ABA7F5B0(v2);
  if (v9)
  {
    sub_1ABA925A4(v2, &qword_1EB4D9BF0, &qword_1ABF34240);
    return 0;
  }

  else
  {
    v10 = sub_1ABAA58FC();
    v11(v10);
    v12 = *(v0 + 40);
    v13 = sub_1ABF21E34();
    v14 = [v12 stringFromDate_];

    v15 = sub_1ABF23C04();
    (*(v7 + 8))(v1, v5);
  }

  return v15;
}

void sub_1ABD505E0()
{
  sub_1ABA7E2A8();
  v195 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v6 = sub_1ABA7AB80(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C068();
  v188 = v7;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA88E50();
  v187 = v9;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA88E50();
  v185 = v11;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA88E50();
  v189 = v13;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA88E50();
  v190 = v15;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v183 - v17;
  v194 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v192 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7C068();
  v186 = v21;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v22);
  v191 = &v183 - v23;
  v24 = v2[3];
  v25 = v2[4];
  v26 = sub_1ABA7D0EC();
  sub_1ABA93E20(v26, v27);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v30 = v29;
  sub_1ABA7BB88();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v183 - v33;
  (*(v25 + 32))(v24, v25, v32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = v34;
  v37 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v39 = v38;
  (*(v30 + 8))(v34, AssociatedTypeWitness);
  if (!v39)
  {
    goto LABEL_49;
  }

  v193 = v4;
  v40 = v2[3];
  v41 = v2[4];
  v42 = sub_1ABA7D0EC();
  sub_1ABA93E20(v42, v43);
  v44 = sub_1ABA7C46C();
  v45(v44, v41);
  v184 = v37;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_105;
  }

  v37 = v198;
  v36 = v199;
  v41 = v200;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), &v196);
  v46 = sub_1ABA80DA8();
  v47 = v47 && v40 == v36;
  if (v47)
  {
LABEL_43:

LABEL_44:

    v58 = v193;
    v59 = sub_1ABD50470();
    if (v60)
    {
LABEL_45:
      v61 = v59;
      v62 = v60;
      v63 = type metadata accessor for K2TTextualization(0);
      sub_1ABA7ED8C();
      v64 = v194;
      sub_1ABA7B9B4(v65, v66, v67, v194);
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v68, v69, v70, v64);
      *v58 = v61;
      v58[1] = v62;
      *(v58 + *(v63 + 28)) = MEMORY[0x1E69E7CC0];
LABEL_46:
      sub_1ABA9021C();
LABEL_50:
      sub_1ABA7B9B4(v71, v72, v73, v74);
      sub_1ABA7BC1C();
      return;
    }

LABEL_49:
    type metadata accessor for K2TTextualization(0);
    sub_1ABA7ED8C();
    goto LABEL_50;
  }

  v183 = v41;
  sub_1ABA7F590(v46);
  sub_1ABA84200();

  if (v41)
  {
LABEL_8:
    sub_1ABA83A08();

    goto LABEL_44;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[708], *(_Records_GDEntityPredicate_records + 178), *(_Records_GDEntityPredicate_records + 179), &v196);
  v48 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
    goto LABEL_42;
  }

  sub_1ABA7F590(v48);
  sub_1ABA84200();

  if (v41)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_135;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[876], *(_Records_GDEntityPredicate_records + 220), *(_Records_GDEntityPredicate_records + 221), &v196);
  v50 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
    goto LABEL_42;
  }

  sub_1ABA7F590(v50);
  sub_1ABA84200();

  if (v41)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_136;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[960], *(_Records_GDEntityPredicate_records + 241), *(_Records_GDEntityPredicate_records + 242), &v196);
  v52 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
    goto LABEL_42;
  }

  sub_1ABA7F590(v52);
  sub_1ABA84200();

  if (v41)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2148], *(_Records_GDEntityPredicate_records + 538), *(_Records_GDEntityPredicate_records + 539), &v196);
  v54 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
LABEL_42:
    sub_1ABA83A08();
    goto LABEL_43;
  }

  sub_1ABA7F590(v54);
  sub_1ABA84200();

  if (v41)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_174;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), &v196);
  v56 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
    sub_1ABA83A08();

LABEL_48:

    v58 = v193;
    v59 = sub_1ABD502EC(v2);
    if (v60)
    {
      goto LABEL_45;
    }

    goto LABEL_49;
  }

  sub_1ABA7F590(v56);
  sub_1ABA84200();

  if (v41)
  {
    sub_1ABA83A08();

    goto LABEL_48;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_176;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), &v196);
  v75 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
    goto LABEL_77;
  }

  sub_1ABA7F590(v75);
  sub_1ABA84200();

  if (v41)
  {
LABEL_57:
    sub_1ABA83A08();

LABEL_78:

    v83 = v194;
    v84 = v195;
    sub_1ABD4FF94();
    sub_1ABA7F5B0(v18);
    if (!v47)
    {
      (*(v192 + 32))(v191, v18, v83);
      v86 = *(v84 + 104);
      v87 = sub_1ABF21E34();
      v88 = [v86 stringFromDate_];

      v195 = sub_1ABF23C04();
      v90 = v89;

      v91 = v2[4];
      v92 = sub_1ABA7D0EC();
      sub_1ABA93E20(v92, v93);
      v94 = sub_1ABA7C46C();
      v95(v94, v91);
      if (_Records_GDEntityPredicate_records)
      {
        v97 = v198;
        v96 = v199;
        sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), &v196);
        if (v97 == v196 && v96 == v197)
        {
        }

        else
        {
          v100 = sub_1ABA9055C(v97, v98, v196);

          if ((v100 & 1) == 0)
          {
            v101 = 1;
            v102 = v194;
            goto LABEL_92;
          }
        }

        v102 = v194;
        (*(v192 + 16))(v190, v191, v194);
        v101 = 0;
LABEL_92:
        sub_1ABA7B9B4(v190, v101, 1, v102);
        v103 = v2[4];
        v104 = sub_1ABA7D0EC();
        sub_1ABA93E20(v104, v105);
        v106 = sub_1ABA7C46C();
        v107(v106, v103);
        if (_Records_GDEntityPredicate_records)
        {
          v109 = v198;
          v108 = v199;
          sub_1ABAA3188(_Records_GDEntityPredicate_records);
          if (v109 == v196 && v108 == v197)
          {
          }

          else
          {
            v112 = sub_1ABA9055C(v109, v110, v196);

            if ((v112 & 1) == 0)
            {
              v113 = 1;
              v114 = v194;
              v115 = v189;
LABEL_101:
              sub_1ABA7B9B4(v115, v113, 1, v114);
              (*(v192 + 8))(v191, v114);
              v116 = v193;
              *v193 = v195;
              v116[1] = v90;
              v117 = type metadata accessor for K2TTextualization(0);
              sub_1ABAE84E0(v190, v116 + v117[5]);
              v118 = v116 + v117[6];
              v119 = v115;
LABEL_102:
              sub_1ABAE84E0(v119, v118);
LABEL_103:
              *(v116 + v117[7]) = MEMORY[0x1E69E7CC0];
              v71 = v116;
              v72 = 0;
              v73 = 1;
              v74 = v117;
              goto LABEL_50;
            }
          }

          v115 = v189;
          v114 = v194;
          (*(v192 + 16))(v189, v191, v194);
          v113 = 0;
          goto LABEL_101;
        }

        goto LABEL_177;
      }

LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v85 = v18;
LABEL_81:
    sub_1ABA925A4(v85, &qword_1EB4D9BF0, &qword_1ABF34240);
    goto LABEL_49;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  sub_1ABAA3188(_Records_GDEntityPredicate_records);
  v77 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
    goto LABEL_77;
  }

  sub_1ABA7F590(v77);
  sub_1ABA84200();

  if (v41)
  {
    goto LABEL_57;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1332], *(_Records_GDEntityPredicate_records + 334), *(_Records_GDEntityPredicate_records + 335), &v196);
  v79 = sub_1ABA80DA8();
  if (v47 && v40 == v36)
  {
LABEL_77:
    sub_1ABA83A08();

    goto LABEL_78;
  }

  sub_1ABA7F590(v79);
  sub_1ABA84200();

  if (v41)
  {
    goto LABEL_57;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), &v196);
  v81 = sub_1ABA7E8F4();
  if (v47 && v40 == v36)
  {
LABEL_131:
    sub_1ABA83A08();

LABEL_132:

    v128 = sub_1ABD4FE24();
    if (v129)
    {
      v130 = v128;
      v131 = v129;
      v132 = type metadata accessor for K2TTextualization(0);
      v133 = v193;
      v134 = v194;
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v135, v136, v137, v134);
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v138, v139, v140, v134);
      *v133 = v130;
      v133[1] = v131;
      *(v133 + *(v132 + 28)) = MEMORY[0x1E69E7CC0];
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  sub_1ABA7F590(v81);
  sub_1ABA89CAC();

  if (v41)
  {
LABEL_76:
    sub_1ABA83A08();

    goto LABEL_132;
  }

LABEL_105:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1884], *(_Records_GDEntityPredicate_records + 472), *(_Records_GDEntityPredicate_records + 473), &v196);
  v120 = sub_1ABA7E8F4();
  if (v47 && v40 == v36)
  {
    goto LABEL_131;
  }

  sub_1ABA7F590(v120);
  sub_1ABA89CAC();

  if (v41)
  {
    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), &v196);
  v122 = sub_1ABA7E8F4();
  if (v47 && v40 == v36)
  {
    goto LABEL_131;
  }

  sub_1ABA7F590(v122);
  sub_1ABA89CAC();

  if (v41)
  {
    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2160], *(_Records_GDEntityPredicate_records + 541), *(_Records_GDEntityPredicate_records + 542), &v196);
  v124 = sub_1ABA7E8F4();
  if (v47 && v40 == v36)
  {
    goto LABEL_131;
  }

  sub_1ABA7F590(v124);
  sub_1ABA89CAC();

  if (v41)
  {
    goto LABEL_76;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  sub_1ABAA2D28(_Records_GDEntityPredicate_records);
  v126 = sub_1ABA7E8F4();
  if (v47 && v40 == v36)
  {
    goto LABEL_151;
  }

  sub_1ABA7F590(v126);
  sub_1ABA89CAC();

  if (v41)
  {
LABEL_129:
    sub_1ABA83A08();

    goto LABEL_152;
  }

LABEL_138:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  sub_1ABAA3590(_Records_GDEntityPredicate_records);
  v141 = sub_1ABA7E8F4();
  if (v47 && v40 == v36)
  {
LABEL_151:
    sub_1ABA83A08();

    goto LABEL_152;
  }

  sub_1ABA7F590(v141);
  sub_1ABA89CAC();

  if (v41)
  {
    goto LABEL_129;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1848], *(_Records_GDEntityPredicate_records + 463), *(_Records_GDEntityPredicate_records + 464), &v196);
    if (v196 != v37 || v197 != v36)
    {
      v144 = sub_1ABF25054();
      sub_1ABA83A08();

      if ((v144 & 1) == 0)
      {
        v117 = type metadata accessor for K2TTextualization(0);
        v116 = v193;
        v145 = v194;
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v146, v147, v148, v145);
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v149, v150, v151, v145);
        *v116 = v184;
        v116[1] = v39;
        goto LABEL_103;
      }

LABEL_152:

      v152 = v185;
      sub_1ABD4FB74();
      if (sub_1ABA7E1E0(v152, 1, v194) == 1)
      {
        v85 = v185;
        goto LABEL_81;
      }

      (*(v192 + 32))(v186, v185, v194);
      v153 = *(v195 + 104);
      v154 = sub_1ABF21E34();
      v155 = [v153 stringFromDate_];

      v156 = sub_1ABF23C04();
      v158 = v157;

      v159 = v2[4];
      v160 = sub_1ABA7D0EC();
      sub_1ABA93E20(v160, v161);
      v162 = sub_1ABA7C46C();
      v163(v162, v159);
      if (!_Records_GDEntityPredicate_records)
      {
LABEL_185:
        __break(1u);
        goto LABEL_186;
      }

      v165 = v198;
      v164 = v199;
      sub_1ABAA2D28(_Records_GDEntityPredicate_records);
      if (v165 == v196 && v164 == v197)
      {
      }

      else
      {
        v168 = sub_1ABA9055C(v165, v166, v196);

        if ((v168 & 1) == 0)
        {
          v169 = 1;
          goto LABEL_163;
        }
      }

      (*(v192 + 16))(v187, v186, v194);
      v169 = 0;
LABEL_163:
      sub_1ABA7B9B4(v187, v169, 1, v194);
      v170 = v2[4];
      v171 = sub_1ABA7D0EC();
      sub_1ABA93E20(v171, v172);
      v173 = sub_1ABA7C46C();
      v174(v173, v170);
      if (!_Records_GDEntityPredicate_records)
      {
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      v176 = v198;
      v175 = v199;
      sub_1ABAA3590(_Records_GDEntityPredicate_records);
      if (v176 == v196 && v175 == v197)
      {
      }

      else
      {
        v179 = sub_1ABA9055C(v176, v177, v196);

        if ((v179 & 1) == 0)
        {
          v180 = 1;
LABEL_172:
          v181 = v188;
          v182 = v194;
          sub_1ABA7B9B4(v188, v180, 1, v194);
          (*(v192 + 8))(v186, v182);
          v116 = v193;
          *v193 = v156;
          v116[1] = v158;
          v117 = type metadata accessor for K2TTextualization(0);
          sub_1ABAE84E0(v187, v116 + v117[5]);
          v118 = v116 + v117[6];
          v119 = v181;
          goto LABEL_102;
        }
      }

      (*(v192 + 16))(v188, v186, v194);
      v180 = 0;
      goto LABEL_172;
    }

LABEL_174:

    sub_1ABA83A08();

    goto LABEL_152;
  }

LABEL_188:
  __break(1u);
}

void sub_1ABD515A4()
{
  sub_1ABA7E2A8();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  if (v8)
  {
    swift_beginAccess();
    v2 = v0[2];
    v9 = v5[3];
    v10 = v5[4];
    sub_1ABA93E20(v5, v9);
    v11 = *(v10 + 24);

    v12 = v11(&v77, v9, v10);
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v75 = v80;
    v76 = v81;
    MEMORY[0x1EEE9AC00](v12);
    v1 = sub_1ABB2F808();

    if (v1)
    {
      goto LABEL_17;
    }
  }

  sub_1ABAA6120();
  (*(v2 + 24))(&v77, v1, v2);
  if (_Records_GDEntityPredicate_records)
  {
    v14 = v77;
    v13 = v78;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), &v72);
    if (v14 == v72 && v13 == v73)
    {
    }

    else
    {
      v16 = sub_1ABF25054();

      if ((v16 & 1) == 0)
      {
        sub_1ABAA6120();
        v17 = sub_1ABAA4EE4();
        sub_1ABA7BB64();
        sub_1ABA7BB88();
        MEMORY[0x1EEE9AC00](v18);
        v19 = sub_1ABA93688();
        v20(v19);
        sub_1ABA8E324();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v22 = sub_1ABB24CC4(v17, AssociatedConformanceWitness);
        v23 = sub_1ABA97BF0();
        v24(v23);
        if (v22 && (sub_1ABAA6120(), v25 = sub_1ABAA4EE4(), sub_1ABA7BB64(), sub_1ABA7BB88(), MEMORY[0x1EEE9AC00](v26), v27 = sub_1ABA93688(), v28(v27), sub_1ABA8E324(), v29 = swift_getAssociatedConformanceWitness(), (*(v29 + 32))(&v77, v25, v29), v30 = sub_1ABA97BF0(), v31(v30), (v78 & 1) == 0))
        {
          v54 = v77;
          v55 = sub_1ABAD509C(v77, v3[3]);
          if (v56)
          {
            v57 = v55;
            v58 = v56;
            v59 = type metadata accessor for K2TTextualization(0);
            v60 = sub_1ABF21EB4();
            sub_1ABA7ED8C();
            sub_1ABA7B9B4(v61, v62, v63, v60);
            sub_1ABA7ED8C();
            sub_1ABA7B9B4(v64, v65, v66, v60);
            sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_1ABF34740;
            *(v67 + 32) = v54;
            *v7 = v57;
            v7[1] = v58;
            *(v7 + *(v59 + 28)) = v67;
            v68 = v7;
            v69 = 0;
            v70 = 1;
            v71 = v59;
LABEL_18:
            sub_1ABA7B9B4(v68, v69, v70, v71);
            goto LABEL_19;
          }
        }

        else
        {
          sub_1ABAA6120();
          v32 = sub_1ABAA4EE4();
          sub_1ABA7BB64();
          sub_1ABA7BB88();
          MEMORY[0x1EEE9AC00](v33);
          v34 = sub_1ABA93688();
          v35(v34);
          sub_1ABA8E324();
          v36 = swift_getAssociatedConformanceWitness();
          v37 = sub_1ABB24C7C(v32, v36);
          v38 = sub_1ABA97BF0();
          v39(v38);
          if (v37)
          {
            sub_1ABD505E0();
LABEL_19:
            sub_1ABA7BC1C();
            return;
          }
        }

LABEL_17:
        type metadata accessor for K2TTextualization(0);
        sub_1ABA7ED8C();
        goto LABEL_18;
      }
    }

    v41 = v3[10];
    v40 = v3[11];
    v42 = type metadata accessor for K2TTextualization(0);
    v43 = sub_1ABF21EB4();
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v44, v45, v46, v43);
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v47, v48, v49, v43);
    *v7 = v41;
    v7[1] = v40;
    *(v7 + *(v42 + 28)) = MEMORY[0x1E69E7CC0];
    sub_1ABA9021C();
    sub_1ABA7B9B4(v50, v51, v52, v53);

    goto LABEL_19;
  }

  __break(1u);
}

void sub_1ABD51B4C()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v40 = v6;
  v8 = v7;
  v9 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v9);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for K2TTextualization(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ABD515A4();
  if (sub_1ABA7E1E0(v12, 1, v13) == 1)
  {
    sub_1ABA925A4(v12, &qword_1EB4D90D0, &unk_1ABF5E890);
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v16, v17, v18, v13);
  }

  else
  {
    sub_1ABD51E70(v12, v15);
    if (v3)
    {
      v19 = *v15;
      v20 = v15[1];

      v21 = v3(v8, v40, v19, v20);
      v23 = v22;
      sub_1ABAC9398(v3, v1);

      *v15 = v21;
      v15[1] = v23;
    }

    else
    {
      v24 = v5[3];
      v25 = v5[4];
      sub_1ABA93E20(v5, v24);
      (*(v25 + 24))(&v41, v24, v25);
      v39 = v41;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      type metadata accessor for K2TTripleTextualizer();
      inited = swift_initStackObject();
      *(inited + 16) = v39;
      *(inited + 32) = v26;
      *(inited + 40) = v27;
      *(inited + 48) = v28;
      v30 = sub_1ABD61D84(v8, v40, *v15, v15[1]);
      v32 = v31;
      swift_setDeallocating();

      *v15 = v30;
      v15[1] = v32;
    }

    v33 = sub_1ABA7D0EC();
    sub_1ABD51ED4(v33, v34);
    sub_1ABA9021C();
    sub_1ABA7B9B4(v35, v36, v37, v38);
    sub_1ABD51F38(v15);
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABD51DA8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_1ABD51E18()
{
  sub_1ABD51DA8();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD51E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for K2TTextualization(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD51ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for K2TTextualization(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD51F38(uint64_t a1)
{
  v2 = type metadata accessor for K2TTextualization(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1ABD51FB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1ABD51FE0()
{
  if (*(v0 + 57))
  {
    return 2;
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v2 == 49 && v3 == 0xE100000000000000;
  if (v4 || (sub_1ABA8CD24(v2, v3) & 1) != 0)
  {
    return 1;
  }

  if (v2 == 48 && v3 == 0xE100000000000000)
  {
    return 0;
  }

  if (sub_1ABD5AA18(v2, v3))
  {
    return 0;
  }

  return 2;
}

void sub_1ABD52070()
{
  sub_1ABA7E2A8();
  v74 = v2;
  v3 = *(v0 + 8);
  v73 = *v0;
  v71 = v4;
  v72 = v3;
  sub_1ABF21FE4();
  sub_1ABA7BB64();
  v69 = v6;
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v68 = v8 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D2BE8, &unk_1ABF5E770);
  sub_1ABA7AB80(v16);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA886A8();
  v18 = sub_1ABF21A74();
  sub_1ABA7BB64();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v25 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v31 = v30 - v29;
  if (!*(v0 + 57))
  {
    v65 = v24;
    v66 = v20;
    v67 = v15;
    sub_1ABF23C44();
    v37 = sub_1ABF23C14();
    v39 = v38;
    (*(v27 + 8))(v31, v25);
    v40 = v74;
    if (v39 >> 60 != 15)
    {
      sub_1ABB255A4();
      v41 = v1;
      v42 = v18;
      v43 = v39;
      sub_1ABF217D4();
      v73 = v37;
      sub_1ABAA53EC();
      sub_1ABA7B9B4(v44, v45, v46, v47);
      v49 = v65;
      v48 = v66;
      (*(v66 + 32))(v65, v41, v42);
      sub_1ABF21A34();
      v50 = sub_1ABF21EB4();
      sub_1ABA7BDE4(v12);
      if (v51)
      {
        v52 = v68;
        sub_1ABF21FC4();
        v54 = v67;
        sub_1ABF21F94();
        sub_1ABAC9310(v73, v43);
        (*(v69 + 8))(v52, v70);
        (*(v48 + 8))(v49, v42);
        sub_1ABA7BDE4(v12);
        if (!v51)
        {
          sub_1ABAB480C(v12, &qword_1EB4D9BF0, &qword_1ABF34240);
        }
      }

      else
      {
        (*(v48 + 8))(v49, v42);
        sub_1ABAC9310(v73, v43);
        sub_1ABA82864();
        v54 = v67;
        (*(v53 + 32))(v67, v12, v50);
        sub_1ABAA4A54();
        sub_1ABA7B9B4(v55, v56, v57, v58);
      }

      sub_1ABA7BDE4(v54);
      if (!v51)
      {
        sub_1ABA82864();
        (*(v59 + 32))(v40, v54, v50);
        sub_1ABAA4A54();
LABEL_14:
        sub_1ABA7B9B4(v60, v61, v62, v63);
        sub_1ABA7BC1C();
        return;
      }

      sub_1ABAB480C(v54, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    sub_1ABF21EB4();
    sub_1ABA7ED8C();
    goto LABEL_14;
  }

  sub_1ABF21EB4();
  sub_1ABA7ED8C();
  sub_1ABA7BC1C();

  sub_1ABA7B9B4(v32, v33, v34, v35);
}

void sub_1ABD5253C()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v63 = v3;
  v5 = v4;
  sub_1ABF21FE4();
  sub_1ABA7BB64();
  v58 = v7;
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v57 = v9 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C068();
  v61 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA972D4();
  v62 = v14;
  v15 = sub_1ABAD219C(&qword_1EB4D2BE8, &unk_1ABF5E770);
  sub_1ABA7AB80(v15);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = sub_1ABF21A74();
  sub_1ABA7BB64();
  v60 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  sub_1ABA886A8();
  v22 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  if ((v2 & 1) == 0)
  {
    sub_1ABF23C44();
    v34 = sub_1ABF23C14();
    v36 = v35;
    (*(v24 + 8))(v28, v22);
    v37 = v5;
    if (v36 >> 60 != 15)
    {
      sub_1ABB255A4();
      sub_1ABF217D4();
      v63 = v34;
      sub_1ABA8C6E0();
      sub_1ABA7B9B4(v38, v39, v40, v19);
      v41 = v60;
      (*(v60 + 32))(v0, v18, v19);
      v42 = v61;
      sub_1ABF21A34();
      v43 = sub_1ABF21EB4();
      sub_1ABA7BDE4(v42);
      if (v44)
      {
        v45 = v57;
        sub_1ABF21FC4();
        v47 = v62;
        sub_1ABF21F94();
        sub_1ABAC9310(v63, v36);
        (*(v58 + 8))(v45, v59);
        (*(v41 + 8))(v0, v19);
        sub_1ABA7BDE4(v42);
        if (!v44)
        {
          sub_1ABAB480C(v42, &qword_1EB4D9BF0, &qword_1ABF34240);
        }
      }

      else
      {
        (*(v41 + 8))(v0, v19);
        sub_1ABAC9310(v63, v36);
        sub_1ABA82864();
        v47 = v62;
        (*(v46 + 32))(v62, v42, v43);
        sub_1ABAA4A54();
        sub_1ABA7B9B4(v48, v49, v50, v51);
      }

      sub_1ABA7BDE4(v47);
      if (!v44)
      {
        sub_1ABA82864();
        (*(v52 + 32))(v37, v47, v43);
        sub_1ABAA4A54();
LABEL_14:
        sub_1ABA7B9B4(v53, v54, v55, v56);
        sub_1ABA7BC1C();
        return;
      }

      sub_1ABAB480C(v47, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    sub_1ABF21EB4();
    sub_1ABA7ED8C();
    goto LABEL_14;
  }

  sub_1ABF21EB4();
  sub_1ABA7ED8C();
  sub_1ABA7BC1C();

  sub_1ABA7B9B4(v29, v30, v31, v32);
}

uint64_t sub_1ABD529F8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2E4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABD59DA0(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_1ABD52A64(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v9 = sub_1ABF24D14();

    return v9;
  }

  v3 = sub_1ABAAB7C8(a2);
  sub_1ABAA1A1C();
  v4 = sub_1ABDF0158();
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 < 0)
  {
    goto LABEL_16;
  }

  sub_1ABD5A850(0, a2);
  sub_1ABD5A850(v6, a2);
  if ((a2 & 0xC000000000000001) != 0 && v6)
  {
    type metadata accessor for EntityResolutionRankingService.RankedEntities.ScoredEntity();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_1ABF24AF4();
      v7 = v8;
    }

    while (v6 != v8);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1ABD52B98(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1ABF23D74();
    sub_1ABF23EC4();
    sub_1ABA8FF18();
    return sub_1ABA8CD18();
  }

  return result;
}

uint64_t sub_1ABD52C40(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_1ABDF0158();
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      sub_1ABDF015C();
      sub_1ABA8FF18();
      return sub_1ABA8CD18();
    }
  }

  __break(1u);
  return result;
}

void sub_1ABD52CBC(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(v4 + 112) = *a1;
  *(v4 + 120) = v7;
  *(v4 + 128) = v9;
  *(v4 + 136) = v8;
  *(v4 + 144) = v10;
  *(v4 + 152) = v11;
  *(v4 + 160) = v12;
  v15[0] = v9;
  v15[1] = v8;
  v15[2] = v10;
  v15[3] = v11;
  v16 = v12;
  v13 = a3[1];
  v14[0] = *a3;
  v14[1] = v13;

  sub_1ABD4F784(v15, a2, v14, a4);
}

unint64_t sub_1ABD52D48()
{
  v0 = sub_1ABD4FAC8();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v2 = result;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v3);
    sub_1ABAB5D34(v4, v3);
    v3.n128_u64[0] = v0;
    sub_1ABD7DC38(v2);
    return v3.n128_u64[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD52E08()
{
  sub_1ABA7E2A8();
  sub_1ABF21944();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABA8147C(v6 - v5);
  sub_1ABA8BB14();
  v54 = v7;
  sub_1ABA96468(4281);

  v8 = 0;
  v53 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = 104 * v8 + 32;
  while (v54 != v8)
  {
    sub_1ABAA05B4();
    if (v10)
    {
      __break(1u);
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_1ABA936AC(&qword_1EB4D0390);
LABEL_35:
      v36 = sub_1ABF237F4();
      sub_1ABA7AA24(v36, qword_1EB4D6160);

      v37 = sub_1ABF237D4();
      v38 = sub_1ABF24664();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = sub_1ABA8E2E8();
        v40 = sub_1ABA82874();
        v55 = v40;
        *v39 = 136642819;
        v41 = *(v52 + 120);
        v42 = *(v52 + 128);
        v43 = *(v52 + 136);
        v44 = *(v52 + 144);
        v45 = *(v52 + 152);
        v46 = *(v52 + 160);
        v56[0] = *(v52 + 112);
        v56[1] = v41;
        v56[2] = v42;
        v56[3] = v43;
        v56[4] = v44;
        v56[5] = v45;
        v57 = v46;

        v47 = sub_1ABF23C94();
        v49 = sub_1ABADD6D8(v47, v48, &v55);

        *(v39 + 4) = v49;
        _os_log_impl(&dword_1ABA78000, v37, v38, "Multiple names found for entity %{sensitive}s.", v39, 0xCu);
        sub_1ABA84B54(v40);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      v35 = *(v1 + 16);
      goto LABEL_38;
    }

    sub_1ABA8AF74(v56);
    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v0 = *(_Records_GDEntityPredicate_records + 4);
    if (v0 >= 3481)
    {
      goto LABEL_42;
    }

    v11 = *(_Records_GDEntityPredicate_records + 5);
    sub_1ABA960D4();
    if (v11 >= v12)
    {
      goto LABEL_43;
    }

    v13 = _Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_47;
    }

    sub_1ABA8B30C();
    sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_48;
    }

    sub_1ABAA001C();
    if (v0 == v3 && v13 == v2)
    {
    }

    else
    {
      v0 = sub_1ABA8CB3C();

      if ((v0 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!v58)
    {
      v18 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA9F048();
        v20 = sub_1ABA83F84();
        sub_1ABADDCAC(v20, v21, v22);
        v18 = v59;
      }

      v0 = *(v18 + 16);
      v23 = *(v18 + 24);
      v2 = (v0 + 1);
      if (v0 >= v23 >> 1)
      {
        v24 = sub_1ABA7BBEC(v23);
        sub_1ABADDCAC(v24, v0 + 1, 1);
        v18 = v59;
      }

      ++v8;
      *(v18 + 16) = v2;
      v53 = v18;
      sub_1ABAB571C(v18 + 104 * v0);
      goto LABEL_2;
    }

LABEL_18:
    sub_1ABA958D8();
    sub_1ABAB480C(v15, v16, v17);
    v9 += 104;
    ++v8;
  }

  v25 = sub_1ABD5A9DC();
  v1 = MEMORY[0x1E69E7CC0];
  while (v9 != v0)
  {
    if (v0 >= *(v25 + 16))
    {
      goto LABEL_44;
    }

    sub_1ABA96A3C();
    if (!v27)
    {
      v29 = *v26;
      v28 = v26[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABAAA4F4();
        v1 = v33;
      }

      v31 = *(v1 + 16);
      v30 = *(v1 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1ABA7BBEC(v30);
        sub_1ABAA53EC();
        sub_1ABAAA4F4();
        v1 = v34;
      }

      *(v1 + 16) = v31 + 1;
      v32 = v1 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v25 = v53;
    }
  }

  v35 = *(v1 + 16);
  if (v35 > 1)
  {
    if (qword_1EB4D0390 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_35;
  }

LABEL_38:
  if (v35)
  {

    sub_1ABAA158C();
    sub_1ABAE28EC();
    sub_1ABF248A4();
    v50 = sub_1ABA82E90();
    v51(v50);
  }

  sub_1ABA7BC1C();
}

void sub_1ABD5331C()
{
  sub_1ABA7E2A8();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v11);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1ABA886A8();
  v14 = type metadata accessor for K2TTextualization(v13);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = (v17 - v16);
  memcpy(v67, v6, sizeof(v67));
  if (v67[97] == 1)
  {
    v19 = *(v6 + 56);
    v64 = *(v6 + 40);
    v65 = v19;
    *v66 = *(v6 + 72);
    *&v66[9] = *(v6 + 81);
    if (*(v4 + 24))
    {
      sub_1ABA93E64(v4, &v61);
    }

    else
    {
      v20 = *(v4 + 16);
      v61 = *v4;
      v62 = v20;
      v63 = *(v4 + 32);
    }

    if (!*(&v62 + 1) || (sub_1ABA946C0(&v61, &v58), v21 = sub_1ABA93E20(&v58, *(&v59 + 1)), MEMORY[0x1EEE9AC00](v21), sub_1ABA7E918(), *(v22 - 16) = &v64, *(v22 - 8) = v67, v25 = sub_1ABA96FF0(v23, v24), sub_1ABA84B54(&v58), (v25 & 1) != 0))
    {
      v58 = v64;
      v59 = v65;
      *v60 = *v66;
      *&v60[9] = *&v66[9];
      v68[0] = *v67;
      v68[1] = *&v67[16];
      v69 = *&v67[32];
      v56[0] = *v67;
      v56[1] = *&v67[16];
      v57 = *&v67[32];
      v26 = v2[3];
      v27 = v2[5];
      v28 = v2[6];
      v29 = v2[7];
      v52 = v2[4];
      v53 = v27;
      v54 = v28;
      v55 = v29;
      v30 = v2[13];
      sub_1ABAFF1DC(v68, &v61);

      v31 = v27;
      v32 = v28;
      v33 = v29;
      sub_1ABD627EC(&v58, v10, v8, v56, v26, &v52, v30, &v61);
      v34 = v53;
      v35 = v54;

      v36 = *(&v62 + 1);
      v37 = v63;
      sub_1ABA93E20(&v61, *(&v62 + 1));
      (*(v37 + 32))(v4, v36, v37);
      sub_1ABA84B54(&v61);
    }
  }

  else
  {
    if (*(v4 + 24))
    {
      sub_1ABA93E64(v4, &v58);
    }

    else
    {
      v38 = *(v4 + 16);
      v58 = *v4;
      v59 = v38;
      *v60 = *(v4 + 32);
    }

    if (!*(&v59 + 1) || (sub_1ABA946C0(&v58, &v64), v39 = sub_1ABA93E20(&v64, *(&v65 + 1)), MEMORY[0x1EEE9AC00](v39), sub_1ABA7E918(), *(v40 - 16) = v2, *(v40 - 8) = v67, v43 = sub_1ABA96FF0(v41, v42), sub_1ABA84B54(&v64), (v43 & 1) != 0))
    {
      v44 = sub_1ABA8CD18();
      *(&v59 + 1) = sub_1ABAD219C(v44, v45);
      sub_1ABA7DB00();
      sub_1ABAA1A1C();
      *v60 = sub_1ABAB47C4(v46, v47, v48, v49);
      sub_1ABD5AA0C();
      *&v58 = swift_allocObject();
      memcpy((v58 + 16), v67, 0x62uLL);
      sub_1ABB3E5B4(v67, &v64, &qword_1EB4D1148, &qword_1ABF332D0);
      sub_1ABD51B4C();
      sub_1ABA84B54(&v58);
      if (sub_1ABA7E1E0(v1, 1, v14) == 1)
      {
        sub_1ABAB480C(v1, &qword_1EB4D90D0, &unk_1ABF5E890);
      }

      else
      {
        sub_1ABD51E70(v1, v18);
        sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1ABF34740;
        v51 = v18[1];
        *(v50 + 32) = *v18;
        *(v50 + 40) = v51;

        sub_1ABD51F38(v18);
      }
    }
  }

  sub_1ABA7BC1C();
}

BOOL sub_1ABD537A4(void *a1, void *a2, uint64_t *a3)
{
  if (*a1 == *a2 && ((v3 = a1[6], v4 = a2[1], a1[1] == *a3) ? (v5 = a1[2] == a3[1]) : (v5 = 0), v5 || (sub_1ABF25054() & 1) != 0))
  {
    return v3 == v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABD5382C(void *a1, uint64_t a2, uint64_t *a3)
{
  if (*a1 != *(a2 + 112))
  {
    return 0;
  }

  if (a1[1] == *a3 && a1[2] == a3[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

uint64_t sub_1ABD538A0(uint64_t a1)
{
  sub_1ABA7D5F0();
  v3 = (*(v2 + 272))();
  sub_1ABD53914(v3, v4, a1);
  v6 = v5;

  return v6;
}

void sub_1ABD53914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1ABA7D5F0();
  v7 = (*(v6 + 272))();
  v9 = 0x797469746E45;
  if (v8)
  {
    v9 = v7;
  }

  v93 = v9;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = *(v3 + 120);
  v102 = *(v11 + 16);
  if (!v102)
  {

    return;
  }

  v99 = v11 + 32;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v105 = v10;
  v96 = v11;
  v83 = a3;
  v86 = v4;
  while (v12 < *(v11 + 16))
  {
    v14 = memcpy(__dst, (v99 + 104 * v12), sizeof(__dst));
    if (*(a3 + 24))
    {
      sub_1ABAA4F00(v14, v15, v16, v17, v18, v19, v20, v21, v80, v83, v86, v89, v93, v96, v99, v102, v105, v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    }

    else
    {
      v90 = v13;
      v22 = *(v4 + 120);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = sub_1ABAA4F00(v14, v15, v16, v17, v18, v19, v20, v21, v80, v83, v86, v90, v93, v96, v99, v102, v105, v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
        sub_1ABAA4F00(v24, v25, v26, v27, v28, v29, v30, v31, v81, v84, v87, v91, v94, v97, v100, v103, v106, v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
        v121 = MEMORY[0x1E69E7CC0];

        sub_1ABADDC4C(0, v23, 0);
        v32 = v121;
        v33 = v23 - 1;
        for (i = 32; ; i += 104)
        {
          memcpy(__src, (v22 + i), 0x62uLL);
          sub_1ABB3E5B4(__src, &v108, &qword_1EB4D1148, &qword_1ABF332D0);
          v121 = v32;
          v36 = *(v32 + 16);
          v35 = *(v32 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1ABA7BBEC(v35);
            sub_1ABA8BB08();
            sub_1ABADDC4C(v41, v42, v43);
            v32 = v121;
          }

          v110 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
          sub_1ABA7DB00();
          sub_1ABAB511C();
          v111 = sub_1ABAB47C4(v37, v38, v39, v40);
          sub_1ABD5AA0C();
          *&v108 = swift_allocObject();
          memcpy((v108 + 16), __src, 0x62uLL);
          *(v32 + 16) = v36 + 1;
          sub_1ABA946C0(&v108, v32 + 40 * v36 + 32);
          if (!v33)
          {
            break;
          }

          --v33;
        }

        a3 = v83;
        v4 = v86;
      }

      else
      {
        v44 = sub_1ABAA4F00(v14, v15, v16, v17, v18, v19, v20, v21, v80, v83, v86, v90, v93, v96, v99, v102, v105, v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
        sub_1ABAA4F00(v44, v45, v46, v47, v48, v49, v50, v51, v82, v85, v88, v92, v95, v98, v101, v104, v107, v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
      }

      v13 = v89;
      sub_1ABAA0334();
      sub_1ABD61374(v52, v53);
      v55 = v54;

      sub_1ABAB511C();
      sub_1ABAB480C(v56, v57, v58);
      if (v55)
      {
        sub_1ABAB511C();
        sub_1ABAB480C(v59, v60, v61);
        goto LABEL_34;
      }
    }

    memcpy(__src, __dst, 0x62uLL);
    v62 = a3;
    sub_1ABD5331C();
    v64 = v63;
    sub_1ABAB511C();
    sub_1ABAB480C(v65, v66, v67);
    *__src = v13;
    *&v108 = v64;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v68 = v13;
    sub_1ABAA0334();
    sub_1ABAB47C4(v69, v70, v71, v72);
    if (sub_1ABF24484())
    {

      a3 = v62;
    }

    else
    {
      v73 = *(v64 + 16);
      v74 = *(v13 + 16);
      if (__OFADD__(v74, v73))
      {
        goto LABEL_38;
      }

      if (swift_isUniquelyReferenced_nonNull_native() && v74 + v73 <= *(v68 + 24) >> 1)
      {
        v13 = v68;
      }

      else
      {
        sub_1ABAAA4F4();
        v13 = v75;
      }

      a3 = v62;
      if (*(v64 + 16))
      {
        sub_1ABA84218();
        if (v76 < v73)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v73)
        {
          v77 = *(v13 + 16);
          v78 = __OFADD__(v77, v73);
          v79 = v77 + v73;
          if (v78)
          {
            goto LABEL_41;
          }

          *(v13 + 16) = v79;
        }
      }

      else
      {

        if (v73)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_34:
    ++v12;
    v11 = v96;
    if (v12 == v102)
    {

      return;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1ABD53D7C()
{
  sub_1ABA7D5F0();
  (*(v0 + 272))();
  sub_1ABA7D5F0();
  (*(v1 + 312))();
}

void sub_1ABD53E2C()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v153 = v2;
  v154 = v3;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  v7 = sub_1ABA7AB80(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v143 - v11;
  v156 = type metadata accessor for K2TTextualization(0);
  sub_1ABA7BB64();
  v147 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v144 = v15;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA88E50();
  v146 = v17;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v143 - v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA88E50();
  v150 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA972D4();
  v151 = v24;
  v175[0] = v0[15];
  swift_bridgeObjectRetain_n();
  sub_1ABD529F8(v175);
  v155 = 0;
  v145 = v5;

  v25 = v175[0];
  v26 = *(v175[0] + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v157 = v1;
  if (v26)
  {
    v148 = v20;
    v149 = v9;
    v152 = v12;
    v28 = 0;
    v29 = v175;
    v30 = &v169;
    v158 = v175[0];
    v159 = v175[0] + 32;
    v31 = v26;
    v160 = v26;
    while (1)
    {
      if (v28 >= v31)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v162 = v28;
      v32 = v159 + 104 * v28;
      memcpy(v175, v32, 0x62uLL);
      v33 = *(v32 + 40);
      v34 = *(v32 + 56);
      v35 = *(v32 + 72);
      *(v30 + 250) = *(v32 + 82);
      v173[1] = v34;
      v173[2] = v35;
      v173[0] = v33;
      v177 = v175[4];
      v36 = *(v29 + 1);
      v176[0] = *v29;
      v176[1] = v36;
      if (v174 == 1)
      {
        break;
      }

      v55 = v1[15];
      v56 = *(v55 + 16);
      if (v56)
      {
        v57 = v27;
        sub_1ABAA5914();
        sub_1ABAA5914();
        *&v167[0] = MEMORY[0x1E69E7CC0];

        sub_1ABADDC4C(0, v56, 0);
        v58 = *&v167[0];
        v59 = v56 - 1;
        for (i = 32; ; i += 104)
        {
          memcpy(v172, (v55 + i), 0x62uLL);
          sub_1ABB3E5B4(v172, &v169, &qword_1EB4D1148, &qword_1ABF332D0);
          *&v167[0] = v58;
          v62 = *(v58 + 16);
          v61 = *(v58 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1ABA9A558(v61);
            sub_1ABA8BB08();
            sub_1ABADDC4C(v67, v68, v69);
            v58 = *&v167[0];
          }

          *(&v170 + 1) = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
          sub_1ABA7DB00();
          sub_1ABA958D8();
          *&v171 = sub_1ABAB47C4(v63, v64, v65, v66);
          sub_1ABD5AA0C();
          *&v169 = swift_allocObject();
          memcpy((v169 + 16), v172, 0x62uLL);
          *(v58 + 16) = v62 + 1;
          sub_1ABA946C0(&v169, v58 + 40 * v62 + 32);
          if (!v59)
          {
            break;
          }

          --v59;
        }

        v1 = v157;
        v25 = v158;
        v27 = v57;
      }

      else
      {
        sub_1ABAA5914();
        sub_1ABAA5914();
        v58 = MEMORY[0x1E69E7CC0];
      }

      sub_1ABD61374(v175, v58);
      v78 = v77;

      v79 = sub_1ABAA3964();
      sub_1ABAB480C(v79, v80, v81);
      v30 = &v169;
      if (v78)
      {
        v82 = sub_1ABAA3964();
LABEL_22:
        sub_1ABAB480C(v82, v83, v84);
        v76 = v160;
        v45 = v162;
        v29 = v175;
        goto LABEL_29;
      }

      *(&v170 + 1) = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      sub_1ABA7DB00();
      sub_1ABA958D8();
      *&v171 = sub_1ABAB47C4(v85, v86, v87, v88);
      sub_1ABD5AA0C();
      *&v169 = swift_allocObject();
      memcpy((v169 + 16), v175, 0x62uLL);
      sub_1ABAA5914();
      v89 = v149;
      sub_1ABD515A4();
      sub_1ABA84B54(&v169);
      if (sub_1ABA7E1E0(v89, 1, v156) == 1)
      {
        v90 = sub_1ABAA3964();
        sub_1ABAB480C(v90, v91, v92);
        v82 = v89;
        v83 = &qword_1EB4D90D0;
        v84 = &unk_1ABF5E890;
        goto LABEL_22;
      }

      v98 = v148;
      sub_1ABD51E70(v89, v148);
      v172[0] = 40;
      v172[1] = 0xE100000000000000;
      v99 = sub_1ABF23C84();
      v30 = v100;
      v101 = sub_1ABAA3964();
      sub_1ABAB480C(v101, v102, v103);
      MEMORY[0x1AC5A9410](v99, v30);

      MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
      v29 = v98[1];
      MEMORY[0x1AC5A9410](*v98, v29);
      MEMORY[0x1AC5A9410](41, 0xE100000000000000);

      v105 = v172[1];
      *v98 = v172[0];
      v98[1] = v105;
      MEMORY[0x1EEE9AC00](v104);
      sub_1ABA7E918();
      *(v106 - 16) = v98;
      v45 = v155;
      v108 = sub_1ABB2FA20(sub_1ABD5A95C, v107, v27);
      v155 = v45;
      if (v108)
      {
        sub_1ABAB1144();
      }

      else
      {
        sub_1ABD51ED4(v98, v146);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADB500();
          v27 = v116;
        }

        sub_1ABAB1144();
        v110 = *(v27 + 16);
        v109 = *(v27 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_1ABA7BBEC(v109);
          sub_1ABADB500();
          v27 = v117;
        }

        *(v27 + 16) = v110 + 1;
        sub_1ABA7AD90();
        sub_1ABD51E70(v113, v27 + v111 + *(v112 + 72) * v110);
      }

      sub_1ABD51F38(v148);
      v25 = v158;
      v76 = v160;
LABEL_29:
      v28 = (v45 + 1);
      if (v28 == v76)
      {
        goto LABEL_39;
      }

      v31 = *(v25 + 16);
    }

    v161 = v27;
    v169 = *(v32 + 40);
    v170 = *(v32 + 56);
    v171 = *(v32 + 72);
    *(v30 + 41) = *(v32 + 81);
    v37 = *(v29 + 1);
    v167[0] = *v29;
    v167[1] = v37;
    v168 = v175[4];
    v38 = v1[3];
    v39 = v1[4];
    v40 = v1;
    v41 = v1[5];
    v42 = v1[6];
    v43 = v40[7];
    v163 = v39;
    v164 = v41;
    v165 = v42;
    v166 = v43;
    v44 = v40[13];
    sub_1ABAA5914();
    v45 = &qword_1EB4D7E60;
    sub_1ABB3E5B4(v173, v172, &qword_1EB4D7E60, &unk_1ABF5E780);
    sub_1ABAFF1DC(v176, v172);

    v46 = v41;
    v47 = v42;
    v48 = v43;
    sub_1ABD627EC(&v169, v153, v154, v167, v38, &v163, v44, v172);
    v49 = sub_1ABAA3964();
    sub_1ABAB480C(v49, v50, v51);
    v52 = v164;
    v53 = v165;

    sub_1ABAB480C(v173, &qword_1EB4D7E60, &unk_1ABF5E780);
    v29 = v172[3];
    v30 = v172[4];
    sub_1ABA93E20(v172, v172[3]);
    v54 = v152;
    (*(v30 + 5))(v29, v30);
    if (sub_1ABA7E1E0(v54, 1, v156) == 1)
    {
      sub_1ABAB480C(v54, &qword_1EB4D90D0, &unk_1ABF5E890);
      v1 = v157;
      v27 = v161;
    }

    else
    {
      v70 = v54;
      v71 = v151;
      v72 = sub_1ABD51E70(v70, v151);
      MEMORY[0x1EEE9AC00](v72);
      sub_1ABA7E918();
      *(v73 - 16) = v71;
      v27 = v161;
      v45 = v155;
      v75 = sub_1ABB2FA20(sub_1ABD5A9C0, v74, v161);
      v155 = v45;
      if (!v75)
      {
        sub_1ABD51ED4(v71, v150);
        swift_isUniquelyReferenced_nonNull_native();
        v1 = v157;
        sub_1ABAB1144();
        if ((v93 & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADB500();
          v27 = v114;
        }

        v95 = *(v27 + 16);
        v94 = *(v27 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_1ABA7BBEC(v94);
          sub_1ABADB500();
          v27 = v115;
        }

        *(v27 + 16) = v95 + 1;
        sub_1ABA7AD90();
        sub_1ABD51E70(v150, v27 + v96 + *(v97 + 72) * v95);
        sub_1ABD51F38(v151);
        v76 = v160;
        goto LABEL_28;
      }

      sub_1ABD51F38(v71);
      v1 = v157;
    }

    v76 = v160;
    sub_1ABAB1144();
LABEL_28:
    sub_1ABA84B54(v172);
    v25 = v158;
    goto LABEL_29;
  }

LABEL_39:

  v118 = *(v27 + 16);
  if (v118)
  {
    v172[0] = MEMORY[0x1E69E7CC0];

    sub_1ABADDBD4(0, v118, 0);
    v119 = v172[0];
    sub_1ABA7AD90();
    v161 = v27;
    v121 = v27 + v120;
    v123 = *(v122 + 72);
    v124 = v144;
    do
    {
      sub_1ABD51ED4(v121, v124);
      v126 = *v124;
      v125 = v124[1];

      sub_1ABD51F38(v124);
      v172[0] = v119;
      v128 = *(v119 + 16);
      v127 = *(v119 + 24);
      if (v128 >= v127 >> 1)
      {
        v130 = sub_1ABA7BBEC(v127);
        sub_1ABADDBD4(v130, v128 + 1, 1);
        v124 = v144;
        v119 = v172[0];
      }

      *(v119 + 16) = v128 + 1;
      v129 = v119 + 16 * v128;
      *(v129 + 32) = v126;
      *(v129 + 40) = v125;
      v121 += v123;
      --v118;
    }

    while (v118);
    v172[0] = v119;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0, MEMORY[0x1E69E6310]);
    v131 = sub_1ABF23B54();
    v133 = v132;

    v172[0] = 0;
    v172[1] = 0xE000000000000000;
    sub_1ABF24AB4();
    v134 = v154;

    v172[0] = v153;
    v172[1] = v134;
    MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF8EA80);
    MEMORY[0x1AC5A9410](v131, v133);
    v135 = v161;

    sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 32) = v157[14];
    v137 = v145;
    v138 = sub_1ABA8CD18();
    sub_1ABD63788(v138, v139, v135, v140, v141);
    v142 = 0;
  }

  else
  {

    v142 = 1;
    v137 = v145;
  }

  sub_1ABA7B9B4(v137, v142, 1, v156);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD54908()
{
}

void sub_1ABD54A10()
{
  sub_1ABD52D48();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  *(swift_initStackObject() + 16) = xmmword_1ABF34060;
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), v22);
    v8 = sub_1ABAA2688(v0, v1, v2, v3, v4, v5, v6, v7, v20, v22[0]);
    sub_1ABAB5D34(v9, v8);
    if (_Records_GDEntityPredicate_records)
    {
      v10 = sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), v22);
      v18 = sub_1ABAA2688(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22[0]);
      sub_1ABA954FC(v19, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABD54AF0(__int128 *a1, uint64_t a2, __int128 *a3, void *a4)
{
  v6 = a1[1];
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 48);
  v24 = *a1;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v10 = a3[1];
  v23[0] = *a3;
  v23[1] = v10;
  v11 = a4;
  sub_1ABD52CBC(&v24, a2, v23, a4);
  v13 = v12;
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34060;
  if (_Records_GDEntityPredicate_records)
  {
    v15 = result;
    v16 = *(_Records_GDEntityPredicate_records + 184);
    v17 = *(_Records_GDEntityPredicate_records + 185);
    v18 = _Records_GDEntityPredicate_records[732];

    result = sub_1ABA91D48(v18, v16, v17, &v24);
    v19 = v25;
    v20 = v26;
    *(v15 + 32) = v24;
    *(v15 + 48) = v19;
    *(v15 + 64) = v20;
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), &v24);
      v21 = v25;
      v22 = v26;
      *(v15 + 72) = v24;
      *(v15 + 88) = v21;
      *(v15 + 104) = v22;
      swift_beginAccess();
      sub_1ABD7DC38(v15);
      swift_endAccess();

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1ABD54C94()
{
  sub_1ABA7E2A8();
  v2 = sub_1ABF21944();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABD52E08();
  if (v6)
  {
    goto LABEL_2;
  }

  v78 = v4;
  v79 = v2;
  sub_1ABA8BB14();
  v80 = v7;

  v8 = 0;
  sub_1ABA96468(MEMORY[0x1E69E7CC0]);
  v9 = 32;
LABEL_4:
  v9 += 104 * v8;
  while (v80 != v8)
  {
    sub_1ABAA05B4();
    if (v10)
    {
      __break(1u);
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      return;
    }

    sub_1ABA8AF74(v84);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_85;
    }

    v11 = *(_Records_GDEntityPredicate_records + 184);
    if (v11 >= 3481)
    {
      goto LABEL_78;
    }

    if (*(_Records_GDEntityPredicate_records + 185) >= 4281)
    {
      goto LABEL_79;
    }

    v12 = _Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_86;
    }

    sub_1ABA8B30C();
    sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_87;
    }

    sub_1ABAA001C();
    if (v11 == v1 && v12 == v0)
    {
    }

    else
    {
      v14 = sub_1ABA8CB3C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (!BYTE1(v84[12]))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v82;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA960D4();
        v9 = v85;
        v19 = sub_1ABA83F84();
        sub_1ABADDCAC(v19, v20, v21);
        sub_1ABA96468(v85[0]);
      }

      sub_1ABAB2B60();
      sub_1ABA960D4();
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v0 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v26 = sub_1ABA7BBEC(v23);
        v9 = v85;
        sub_1ABADDCAC(v26, v24 + 1, 1);
        sub_1ABAB2B60();
        sub_1ABA96468(v85[0]);
      }

      ++v8;
      sub_1ABA960D4();
      *(v25 + 16) = v0;
      sub_1ABAB571C(v25 + 104 * v24);
      goto LABEL_4;
    }

LABEL_20:
    sub_1ABA958D8();
    sub_1ABAB480C(v15, v16, v17);
    v9 += 104;
    ++v8;
  }

  v27 = 0;
  sub_1ABA960D4();
  v29 = *(v28 + 16);
  v30 = v28 - 32;
  v31 = MEMORY[0x1E69E7CC0];
  while (v29)
  {
    if (!*(v82 + 16))
    {
      goto LABEL_80;
    }

    sub_1ABA96A3C();
    if (!v33)
    {
      v35 = *v32;
      v34 = v32[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABAAA4F4();
        v31 = v39;
      }

      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        sub_1ABA7BBEC(v36);
        sub_1ABAA53EC();
        sub_1ABAAA4F4();
        v31 = v40;
      }

      v31[2] = v37 + 1;
      v38 = &v31[2 * v37];
      v38[4] = v35;
      v38[5] = v34;
    }
  }

  if (v31[2])
  {
    v27 = v31[5];

    sub_1ABAA158C();
    sub_1ABAE28EC();
    v29 = v84;
    v75 = sub_1ABF248A4();
    v76 = v41;
    (*(v78 + 8))(v30, v79);
  }

  else
  {

    v75 = 0;
    v76 = 0;
  }

  sub_1ABAB2B60();
  v42 = *(v77 + 120);
  sub_1ABA96468(*(v42 + 16));

  v43 = 0;
  v81 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v29 += 13 * v43;
  while (2)
  {
    sub_1ABA960D4();
    if (v44 != v43)
    {
      if (v43 >= *(v42 + 16))
      {
        goto LABEL_81;
      }

      memcpy(v84, v29 + v42, 0x62uLL);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_88;
      }

      if (*(_Records_GDEntityPredicate_records + 190) >= 3481)
      {
        goto LABEL_82;
      }

      if (*(_Records_GDEntityPredicate_records + 191) >= 4281)
      {
        goto LABEL_83;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_89;
      }

      sub_1ABB3E5B4(v84, &v83, &qword_1EB4D1148, &qword_1ABF332D0);
      v45 = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_90;
      }

      v47 = v45;
      v48 = v46;
      v27 = v84[0];
      v49 = v84[1];
      sub_1ABF23DD4();
      if (v27 == v47 && v49 == v48)
      {
      }

      else
      {
        v27 = sub_1ABF25054();

        if ((v27 & 1) == 0)
        {
LABEL_55:
          sub_1ABAB511C();
          sub_1ABAB480C(v51, v52, v53);
          v29 += 13;
          ++v43;
          continue;
        }
      }

      if (!BYTE1(v84[12]))
      {
        v54 = v81;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = v81;
        if ((v55 & 1) == 0)
        {
          v29 = v85;
          v56 = sub_1ABA83F84();
          sub_1ABADDCAC(v56, v57, v58);
          v54 = v85[0];
        }

        sub_1ABAB2B60();
        v27 = *(v54 + 16);
        v59 = *(v54 + 24);
        if (v27 >= v59 >> 1)
        {
          v60 = sub_1ABA7BBEC(v59);
          v29 = v85;
          sub_1ABADDCAC(v60, v27 + 1, 1);
          sub_1ABAB2B60();
          v54 = v85[0];
        }

        ++v43;
        *(v54 + 16) = v27 + 1;
        v81 = v54;
        sub_1ABAB571C(v54 + 104 * v27);
        goto LABEL_39;
      }

      goto LABEL_55;
    }

    break;
  }

  v61 = sub_1ABD5A9DC();
  v62 = MEMORY[0x1E69E7CC0];
  while (v29 != v27)
  {
    if (v27 >= *(v61 + 16))
    {
      goto LABEL_84;
    }

    sub_1ABA96A3C();
    if (!v64)
    {
      v66 = *v63;
      v65 = v63[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v62 = v70;
      }

      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1ABA7BBEC(v67);
        sub_1ABAAA4F4();
        v62 = v71;
      }

      *(v62 + 16) = v68 + 1;
      v69 = v62 + 16 * v68;
      *(v69 + 32) = v66;
      *(v69 + 40) = v65;
      v61 = v81;
    }
  }

  if (*(v62 + 16))
  {

    sub_1ABAA158C();
    sub_1ABAE28EC();
    v72 = sub_1ABF248A4();
    v73 = sub_1ABA82E90();
    v74(v73);

    if (v76 && v62)
    {
      v84[0] = v75;
      v84[1] = v76;
      MEMORY[0x1AC5A9410](32, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v72, v62);
    }
  }

  else
  {
  }

LABEL_2:
  sub_1ABA7BC1C();
}

void sub_1ABD5549C()
{
  sub_1ABD52D48();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  *(swift_initStackObject() + 16) = xmmword_1ABF34060;
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[840], *(_Records_GDEntityPredicate_records + 211), *(_Records_GDEntityPredicate_records + 212), v22);
    v8 = sub_1ABAA2688(v0, v1, v2, v3, v4, v5, v6, v7, v20, v22[0]);
    sub_1ABAB5D34(v9, v8);
    if (_Records_GDEntityPredicate_records)
    {
      v10 = sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), v22);
      v18 = sub_1ABAA2688(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22[0]);
      sub_1ABA954FC(v19, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABD55570()
{
  sub_1ABA7E2A8();
  v2 = sub_1ABF21944();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  sub_1ABD52E08();
  if (v9)
  {
    goto LABEL_2;
  }

  v166 = v8;
  v167 = v4;
  v168 = v2;
  v10 = *(v0 + 120);
  v173 = *(v10 + 16);
  v178 = 279;
  v175 = 3481;
  v174 = 4281;

  v11 = 0;
  v176 = v0;
  *&v177 = MEMORY[0x1E69E7CC0];
  v12 = 32;
  v172 = 32;
LABEL_4:
  v13 = v12 + 104 * v11;
  while (v173 != v11)
  {
    if (v11 >= *(v10 + 16))
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
      sub_1ABA936AC(&qword_1EB4D0390);
LABEL_59:
      v73 = sub_1ABF237F4();
      sub_1ABA7AA24(v73, qword_1EB4D6160);

      v74 = sub_1ABF237D4();
      v75 = sub_1ABF24664();

      if (os_log_type_enabled(v74, v75))
      {
        v11 = sub_1ABA8E2E8();
        v76 = sub_1ABA82874();
        v183.n128_u64[0] = v76;
        v77 = sub_1ABA82AE8(4.9654e-34);
        v186[0].n128_u64[0] = v78;
        v186[0].n128_u64[1] = v77;
        v186[1].n128_u64[0] = v79;
        v186[1].n128_u64[1] = v4;
        v186[2].n128_u64[0] = v80;
        v186[2].n128_u64[1] = v8;
        v186[3].n128_u8[0] = v81;

        v82 = sub_1ABF23C94();
        v4 = v83;
        v8 = sub_1ABADD6D8(v82, v83, &v183);

        *(v11 + 4) = v8;
        sub_1ABA9514C(&dword_1ABA78000, v84, v85, "Multiple names found in address for entity %{sensitive}s.");
        sub_1ABA84B54(v76);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      v71 = v169;
      v72 = *(v169 + 16);
      goto LABEL_62;
    }

    memcpy(v186, (v10 + v13), 0x62uLL);
    if (v178 < 71)
    {
      goto LABEL_155;
    }

    if (!_Records_GDEntityPredicate_records)
    {
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
      return;
    }

    v4 = *(_Records_GDEntityPredicate_records + 211);
    if (v4 >= v175)
    {
      goto LABEL_156;
    }

    v1 = *(_Records_GDEntityPredicate_records + 212);
    if (v1 >= v174)
    {
      goto LABEL_157;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_175;
    }

    v14 = v186[0];
    sub_1ABB3E5B4(v186, &v183, &qword_1EB4D1148, &qword_1ABF332D0);

    v15 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_174;
    }

    v8 = v15;
    v4 = v16;
    sub_1ABF23DD4();
    v1 = v17;
    if (v14.n128_u64[0] == v8 && v14.n128_u64[1] == v4)
    {

LABEL_20:
      v180.n128_u64[0] = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1ABA83F84();
        sub_1ABADDCAC(v19, v20, v21);
        *&v177 = v180.n128_u64[0];
      }

      v12 = v172;
      v4 = *(v177 + 16);
      v22 = *(v177 + 24);
      if (v4 >= v22 >> 1)
      {
        sub_1ABA7BBEC(v22);
        sub_1ABA975A4();
        sub_1ABADDCAC(v24, v25, v26);
        v12 = v172;
        *&v177 = v180.n128_u64[0];
      }

      ++v11;
      v23 = v177;
      *(v177 + 16) = v4 + 1;
      memcpy((v23 + 104 * v4 + 32), v186, 0x62uLL);
      goto LABEL_4;
    }

    v8 = sub_1ABF25054();

    if (v8)
    {
      goto LABEL_20;
    }

    sub_1ABAB480C(v186, &qword_1EB4D1148, &qword_1ABF332D0);
    v13 += 104;
    ++v11;
  }

  v27 = 0;
  v4 = *(v177 + 16);
  v8 = v177 + 129;
  v172 = MEMORY[0x1E69E7CC0];
  v1 = 1;
LABEL_26:
  v28 = v8 + 104 * v27;
  while (v4 != v27)
  {
    if (v27 >= *(v177 + 16))
    {
      goto LABEL_158;
    }

    sub_1ABAA234C(*(v28 - 57), *(v28 - 41), *(v28 - 25), *(v28 - 16));
    if (*v29 == 1)
    {
      v186[0] = v183;
      v186[1] = v184;
      v186[2] = *v185;
      *(&v186[2] + 9) = *&v185[9];
      v186[3].n128_u8[9] = 1;
      sub_1ABD191AC(v186, &v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1ABA7BEF0();
        sub_1ABAD8B88(v32, v33, v34, v35);
        v172 = v36;
      }

      v11 = *(v172 + 16);
      v30 = *(v172 + 24);
      if (v11 >= v30 >> 1)
      {
        sub_1ABAD8B88(v30 > 1, v11 + 1, 1, v172);
        v172 = v37;
      }

      ++v27;
      v31 = v172;
      *(v172 + 16) = v11 + 1;
      sub_1ABA7E904(v31 + (v11 << 6), v186[0], v186[1], v186[2]);
      goto LABEL_26;
    }

    sub_1ABAA0BD0();
  }

  v38 = 0;
  v171 = *(v172 + 16);
  v169 = MEMORY[0x1E69E7CC0];
  v170 = v172 + 32;
  v177 = xmmword_1ABF34060;
LABEL_37:
  if (v38 != v171)
  {
    if (v38 >= *(v172 + 16))
    {
      goto LABEL_159;
    }

    v39 = v170 + (v38 << 6);
    v41 = *(v39 + 16);
    v40 = *(v39 + 32);
    v42 = *v39;
    *(&v186[2] + 9) = *(v39 + 41);
    v186[1] = v41;
    v186[2] = v40;
    v186[0] = v42;
    v173 = v38 + 1;
    v43 = v41.n128_u64[0];
    v44 = *(v41.n128_u64[0] + 16);
    sub_1ABD191AC(v186, &v183);

    v1 = 0;
    for (i = 32; ; i += 64)
    {
      if (v44 == v1)
      {
        sub_1ABD19208(v186);

        v38 = v173;
        goto LABEL_37;
      }

      v46 = *(v43 + 16);
      v47 = v1 == v46;
      if (v1 >= v46)
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v48 = sub_1ABA7F5F0(v43 + i);
      sub_1ABAA234C(v48, v49, v50, v51);
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      v52 = swift_allocObject();
      *(v52 + 16) = v177;
      v47 = v178 == 2;
      if (v178 < 2)
      {
        goto LABEL_104;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_170;
      }

      v53 = v52;
      v4 = *(_Records_GDEntityPredicate_records + 4);
      v8 = *(_Records_GDEntityPredicate_records + 5);
      v11 = _Records_GDEntityPredicate_records[12];
      sub_1ABD1927C(&v183, &v180);
      sub_1ABA91D48(v11, v4, v8, &v180);
      v54 = v181;
      v55 = v182;
      *(v53 + 32) = v180;
      *(v53 + 48) = v54;
      *(v53 + 64) = v55;
      v47 = v178 == 30;
      if (v178 < 0x1E)
      {
        goto LABEL_105;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_171;
      }

      v56 = sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), &v180);
      v8 = &v165;
      v57 = v181;
      v58 = v182;
      *(v53 + 72) = v180;
      *(v53 + 88) = v57;
      *(v53 + 104) = v58;
      v180 = v183;
      v181 = v184;
      v182 = *v185;
      MEMORY[0x1EEE9AC00](v56);
      sub_1ABA7E918();
      *(v59 - 16) = &v180;
      v4 = sub_1ABB2F808();
      swift_setDeallocating();
      sub_1ABB4DAD0();
      if (v4)
      {
        v60 = v185[24];
        sub_1ABB6DBB8(&v183);
        if (v60 != 1)
        {

          v61 = v169;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v179 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA9F048();
            v63 = sub_1ABA83F84();
            sub_1ABADDD04(v63, v64, v65);
            v61 = v179;
          }

          sub_1ABA97888();
          if (v67)
          {
            sub_1ABA7BBEC(v66);
            sub_1ABA975A4();
            sub_1ABADDD04(v68, v69, v70);
            v61 = v179;
          }

          *(v61 + 16) = v43;
          v169 = v61;
          sub_1ABA7E904(v61 + (v4 << 6), v186[0], v186[1], v186[2]);
          v38 = v173;
          goto LABEL_37;
        }
      }

      else
      {
        sub_1ABB6DBB8(&v183);
      }

      ++v1;
    }
  }

  v71 = v169;
  v72 = *(v169 + 16);
  if (v72 > 1)
  {
    if (qword_1EB4D0390 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_172;
  }

LABEL_62:
  if (!v72)
  {

    goto LABEL_2;
  }

  v86 = *(v71 + 48);
  v186[0] = *(v71 + 32);
  v186[1] = v86;
  v186[2] = *(v71 + 64);
  *(&v186[2] + 9) = *(v71 + 73);
  sub_1ABD191AC(v186, &v183);

  v87 = 0;
  v173 = *(v186[1].n128_u64[0] + 16);
  *&v177 = v186[1].n128_u64[0];
  v88 = v186[1].n128_u64[0] + 32;
  v89 = MEMORY[0x1E69E7CC0];
  v172 = v186[1].n128_u64[0] + 32;
LABEL_64:
  v90 = v88 + (v87 << 6);
  while (2)
  {
    if (v173 != v87)
    {
      if (v87 >= *(v177 + 16))
      {
        goto LABEL_160;
      }

      sub_1ABAA234C(*v90, *(v90 + 16), *(v90 + 32), *(v90 + 41));
      if (v178 < 2)
      {
        goto LABEL_161;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_176;
      }

      v91 = *(_Records_GDEntityPredicate_records + 4);
      if (v91 >= v175)
      {
        goto LABEL_162;
      }

      v8 = *(_Records_GDEntityPredicate_records + 5);
      if (v8 >= v174)
      {
        goto LABEL_163;
      }

      v4 = _Records_GDEntityPredicate_predicateIds;
      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_177;
      }

      sub_1ABD1927C(&v183, &v180);
      sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_178;
      }

      sub_1ABAA01A4();
      v8 = v92;
      if (v1 == v4 && v11 == v91)
      {
      }

      else
      {
        v4 = sub_1ABA8CF7C(v1, v11, v4);

        if ((v4 & 1) == 0)
        {
LABEL_81:
          sub_1ABB6DBB8(&v183);
          v90 += 64;
          ++v87;
          continue;
        }
      }

      if (v185[24] != 1)
      {
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v179 = v89;
        if ((v94 & 1) == 0)
        {
          sub_1ABA9F048();
          v95 = sub_1ABA83F84();
          sub_1ABADDCCC(v95, v96, v97);
          v89 = v179;
        }

        sub_1ABA97888();
        if (v67)
        {
          sub_1ABA7BBEC(v98);
          sub_1ABA975A4();
          sub_1ABADDCCC(v99, v100, v101);
          v89 = v179;
        }

        ++v87;
        *(v89 + 16) = v91;
        sub_1ABA83A14(v89 + (v4 << 6), v183, v184, *v185, *&v185[9]);
        v88 = v172;
        goto LABEL_64;
      }

      goto LABEL_81;
    }

    break;
  }

  v8 = 0;
  v11 = *(v89 + 16);
  v1 = MEMORY[0x1E69E7CC0];
  while (v11)
  {
    if (!*(v89 + 16))
    {
      goto LABEL_164;
    }

    sub_1ABD5A9F4();
    if ((v103 & 1) == 0)
    {
      v105 = *(v89 + v102 + 8);
      v104 = *(v89 + v102 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v1 = v109;
      }

      v107 = *(v1 + 16);
      v106 = *(v1 + 24);
      v4 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        sub_1ABA7BBEC(v106);
        sub_1ABA8BB08();
        sub_1ABAAA4F4();
        v1 = v110;
      }

      *(v1 + 16) = v4;
      v108 = v1 + 16 * v107;
      *(v108 + 32) = v105;
      *(v108 + 40) = v104;
    }
  }

  v111 = *(v1 + 16);
  v47 = v111 == 1;
  if (v111 > 1)
  {
    if (qword_1EB4D0390 != -1)
    {
      sub_1ABA936AC(&qword_1EB4D0390);
    }

    v112 = sub_1ABF237F4();
    sub_1ABA7AA24(v112, qword_1EB4D6160);

    v113 = sub_1ABF237D4();
    v114 = sub_1ABF24664();

    if (os_log_type_enabled(v113, v114))
    {
      v11 = sub_1ABA8E2E8();
      v115 = sub_1ABA82874();
      v180.n128_u64[0] = v115;
      v116 = sub_1ABA82AE8(4.9654e-34);
      sub_1ABA8B500(v116, v117);

      v118 = sub_1ABF23C94();
      v4 = v119;
      v120 = sub_1ABADD6D8(v118, v119, &v180);

      *(v11 + 4) = v120;
      sub_1ABA9514C(&dword_1ABA78000, v121, v122, "Multiple names found in address for entity %{sensitive}s.");
      sub_1ABA84B54(v115);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    goto LABEL_110;
  }

LABEL_106:
  v123 = v167;
  v4 = v168;
  if (v47)
  {
    sub_1ABD19208(v186);
    if (*(v1 + 16))
    {
      v124 = *(v1 + 32);
      v125 = *(v1 + 40);

      v183.n128_u64[0] = v124;
      v183.n128_u64[1] = v125;
      v126 = v166;
      sub_1ABF21914();
      sub_1ABAE28EC();
      sub_1ABF248A4();
      (*(v123 + 8))(v126, v4);
    }

    goto LABEL_152;
  }

LABEL_110:

  v127 = 0;
  v173 = *(v177 + 16);
  v8 = v177 + 32;
  v128 = MEMORY[0x1E69E7CC0];
  v172 = v177 + 32;
LABEL_111:
  v129 = v8 + (v127 << 6);
  while (2)
  {
    if (v173 != v127)
    {
      if (v127 >= *(v177 + 16))
      {
        goto LABEL_165;
      }

      sub_1ABAA234C(*v129, *(v129 + 16), *(v129 + 32), *(v129 + 41));
      if (v178 < 30)
      {
        goto LABEL_166;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_179;
      }

      v130 = *(_Records_GDEntityPredicate_records + 88);
      if (v130 >= v175)
      {
        goto LABEL_167;
      }

      v8 = *(_Records_GDEntityPredicate_records + 89);
      if (v8 >= v174)
      {
        goto LABEL_168;
      }

      v4 = _Records_GDEntityPredicate_predicateIds;
      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_180;
      }

      sub_1ABD1927C(&v183, &v180);
      sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_181;
      }

      sub_1ABAA01A4();
      v8 = v131;
      if (v1 == v4 && v11 == v130)
      {
      }

      else
      {
        v4 = sub_1ABA8CF7C(v1, v11, v4);

        if ((v4 & 1) == 0)
        {
LABEL_128:
          sub_1ABB6DBB8(&v183);
          v129 += 64;
          ++v127;
          continue;
        }
      }

      if (v185[24] != 1)
      {
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v179 = v128;
        if ((v133 & 1) == 0)
        {
          sub_1ABA9F048();
          v134 = sub_1ABA83F84();
          sub_1ABADDCCC(v134, v135, v136);
          v128 = v179;
        }

        v8 = v172;
        sub_1ABA97888();
        if (v67)
        {
          sub_1ABA7BBEC(v137);
          sub_1ABA975A4();
          sub_1ABADDCCC(v138, v139, v140);
          v128 = v179;
        }

        ++v127;
        *(v128 + 16) = v130;
        sub_1ABA83A14(v128 + (v4 << 6), v183, v184, *v185, *&v185[9]);
        goto LABEL_111;
      }

      goto LABEL_128;
    }

    break;
  }

  sub_1ABD19208(v186);
  v8 = 0;
  v11 = *(v128 + 16);
  v1 = MEMORY[0x1E69E7CC0];
LABEL_135:
  v141 = v176;
  while (v11)
  {
    if (!*(v128 + 16))
    {
      goto LABEL_169;
    }

    sub_1ABD5A9F4();
    if ((v143 & 1) == 0)
    {
      v145 = *(v128 + v142 + 8);
      v144 = *(v128 + v142 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v1 = v149;
      }

      v147 = *(v1 + 16);
      v146 = *(v1 + 24);
      v4 = v147 + 1;
      if (v147 >= v146 >> 1)
      {
        sub_1ABA7BBEC(v146);
        sub_1ABA8BB08();
        sub_1ABAAA4F4();
        v1 = v150;
      }

      *(v1 + 16) = v4;
      v148 = v1 + 16 * v147;
      *(v148 + 32) = v145;
      *(v148 + 40) = v144;
      goto LABEL_135;
    }
  }

  v151 = *(v1 + 16);
  v153 = v167;
  v152 = v168;
  v154 = v166;
  if (v151 > 1)
  {
    if (qword_1EB4D0390 != -1)
    {
      sub_1ABA936AC(&qword_1EB4D0390);
    }

    v155 = sub_1ABF237F4();
    sub_1ABA7AA24(v155, qword_1EB4D6160);

    v156 = sub_1ABF237D4();
    v157 = sub_1ABF24664();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = sub_1ABA8E2E8();
      v159 = sub_1ABA82874();
      v180.n128_u64[0] = v159;
      *v158 = 136642819;
      sub_1ABA8B500(*(v141 + 120), *(v141 + 112));

      v160 = sub_1ABF23C94();
      v162 = sub_1ABADD6D8(v160, v161, &v180);

      *(v158 + 4) = v162;
      _os_log_impl(&dword_1ABA78000, v156, v157, "Multiple full street names found in address for entity %{sensitive}s.", v158, 0xCu);
      sub_1ABA84B54(v159);
      v153 = v167;
      v152 = v168;
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    v154 = v166;
    v151 = *(v1 + 16);
  }

  if (v151)
  {
    v163 = *(v1 + 32);
    v164 = *(v1 + 40);

    v183.n128_u64[0] = v163;
    v183.n128_u64[1] = v164;
    sub_1ABF21914();
    sub_1ABAE28EC();
    sub_1ABF248A4();
    (*(v153 + 8))(v154, v152);
  }

LABEL_152:

LABEL_2:
  sub_1ABA8CD18();
  sub_1ABA7BC1C();
}

void sub_1ABD56610(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = a3[1];
  v9[0] = *a3;
  v9[1] = v8;
  sub_1ABD52CBC(v10, a2, v9, a4);
}

void sub_1ABD56680(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v4 = a1[1];
  v44 = a1[2];
  v45 = *a1;
  v42 = a1[4];
  v43 = a1[3];
  v41 = a1[5];
  v40 = *(a1 + 48);
  v47 = *(a3 + 1);
  v38 = a3[3];
  v39 = *a3;
  v48 = *(v4 + 16);
  v49 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = 104 * v3 + 32; ; i += 104)
  {
    if (v48 == v3)
    {
      v22 = 0;
      v23 = *(v49 + 16);
      v24 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v25 = v49 + 72 + 104 * v22;
      while (v23 != v22)
      {
        if (v22 >= *(v49 + 16))
        {
          goto LABEL_53;
        }

        if (!*(v25 + 57))
        {
          v26 = *v25;
          v27 = *(v25 + 8);
          v28 = *v25 == 49 && v27 == 0xE100000000000000;
          if (v28 || (sub_1ABA8CD24(*v25, *(v25 + 8)) & 1) != 0)
          {
            v30 = 1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_39:
              v32 = *(v24 + 16);
              v31 = *(v24 + 24);
              if (v32 >= v31 >> 1)
              {
                sub_1ABA7BBEC(v31);
                sub_1ABA8BB08();
                sub_1ABAD8AA4();
                v24 = v34;
              }

              ++v22;
              *(v24 + 16) = v32 + 1;
              *(v24 + v32 + 32) = v30;
              goto LABEL_23;
            }

LABEL_43:
            sub_1ABA7BEF0();
            sub_1ABAD8AA4();
            v24 = v33;
            goto LABEL_39;
          }

          v29 = v26 == 48 && v27 == 0xE100000000000000;
          if (v29 || (sub_1ABD5AA18(v26, v27) & 1) != 0)
          {
            v30 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        v25 += 104;
        ++v22;
      }

      if (*(v24 + 16))
      {
        v35 = *(v24 + 32);

        if (v35)
        {
          v36 = v47;
          v37 = v47;
LABEL_49:
          __dst[0] = v45;
          __dst[1] = v4;
          __dst[2] = v44;
          __dst[3] = v43;
          __dst[4] = v42;
          __dst[5] = v41;
          LOBYTE(__dst[6]) = v40;
          v50 = v39;
          v51 = v47;
          v52 = v38;
          sub_1ABD52CBC(__dst, a2, &v50, v36);
          return;
        }
      }

      else
      {
      }

      v36 = 0;
      goto LABEL_49;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    memcpy(__dst, (v4 + i), 0x62uLL);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_54;
    }

    if (*(_Records_GDEntityPredicate_records + 331) >= 3481)
    {
      goto LABEL_51;
    }

    if (*(_Records_GDEntityPredicate_records + 332) >= 4281)
    {
      goto LABEL_52;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_56;
    }

    v7 = __dst[0];
    v6 = __dst[1];
    sub_1ABB3E5B4(__dst, &v50, &qword_1EB4D1148, &qword_1ABF332D0);

    v8 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_55;
    }

    v10 = v8;
    v11 = v9;
    sub_1ABF23DD4();
    if (v7 == v10 && v6 == v11)
    {

LABEL_17:
      v14 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA9F048();
        v16 = sub_1ABA83F84();
        sub_1ABADDCAC(v16, v17, v18);
        v14 = v54;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = sub_1ABA7BBEC(v19);
        sub_1ABADDCAC(v21, v20 + 1, 1);
        v14 = v54;
      }

      ++v3;
      *(v14 + 16) = v20 + 1;
      v49 = v14;
      sub_1ABAB571C(v14 + 104 * v20);
      goto LABEL_2;
    }

    v13 = sub_1ABF25054();

    if (v13)
    {
      goto LABEL_17;
    }

    sub_1ABAB480C(__dst, &qword_1EB4D1148, &qword_1ABF332D0);
    ++v3;
  }

  __break(1u);
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

unint64_t sub_1ABD56AD0()
{
  v0 = sub_1ABD52D48();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v2 = result;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1320], *(_Records_GDEntityPredicate_records + 331), *(_Records_GDEntityPredicate_records + 332), &v3);
    sub_1ABAB5D34(v4, v3);
    v3.n128_u64[0] = v0;
    sub_1ABD7DC38(v2);
    return v3.n128_u64[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD56B94(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v186 = a4;
  v191 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v200 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA8147C(v10 - v9);
  v11 = sub_1ABAD219C(&qword_1EB4D2BE8, &unk_1ABF5E770);
  sub_1ABA7AB80(v11);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8147C(&v182 - v13);
  v204 = sub_1ABF21A74();
  sub_1ABA7BB64();
  v205 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  sub_1ABA8147C(v17 - v16);
  v209 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v206 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  sub_1ABA8147C(v21 - v20);
  v201 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v193 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7C068();
  v182 = v24;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA88E50();
  v189 = v26;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA972D4();
  sub_1ABA8147C(v28);
  v29 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v30 = sub_1ABA7AB80(v29);
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7C068();
  v187 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA88E50();
  v199 = v33;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v182 - v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA972D4();
  sub_1ABA8147C(v38);
  v40 = *a2;
  v39 = a2[1];
  v41 = a3[1];
  v184 = *a3;
  v183 = v41;
  v42 = *(a1 + 16);
  v185 = a1;
  v43 = a1 + 32;
  v210 = 0;
  v44 = 0;
  v211 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v45 = v43 + (v44 << 6);
  while (v42 != v44)
  {
    if (v44 >= v42)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }

    v46 = *(v45 + 16);
    v215 = *v45;
    v216 = v46;
    *v217 = *(v45 + 32);
    *&v217[9] = *(v45 + 41);
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_93;
    }

    v48 = v215.n128_u64[0] == v40 && v215.n128_u64[1] == v39;
    if (v48 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABAB6950();
      v49 = v211;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v212[0] = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA9F048();
        v49 = v212;
        v51 = sub_1ABA83F84();
        sub_1ABADDCCC(v51, v52, v53);
        sub_1ABAA0480();
      }

      v55 = v49[2];
      v54 = v49[3];
      if (v55 >= v54 >> 1)
      {
        v56 = sub_1ABA7BBEC(v54);
        v49 = v212;
        sub_1ABADDCCC(v56, v55 + 1, 1);
        sub_1ABAA0480();
      }

      v49[2] = v55 + 1;
      v211 = v49;
      sub_1ABA83A14(&v49[8 * v55], v215, v216, *v217, *&v217[9]);
      v44 = v47;
      goto LABEL_2;
    }

    v45 += 64;
    ++v44;
  }

  v57 = 0;
  sub_1ABA960D4();
  v206 = v60 + 8;
  v195 = v205 + 4;
  v194 = v205 + 1;
  v205 = (v193 + 32);
  v188 = v200 + 8;
  v200 = MEMORY[0x1E69E7CC0];
  v61 = 4;
  v202 = v42;
  v196 = v36;
  v207 = v59;
  while (v59 != v57)
  {
    if (v57 >= v58[2])
    {
      goto LABEL_94;
    }

    v62 = sub_1ABA7F5F0(&v58[v61]);
    sub_1ABAA0764(v62, v63, v64, v65);
    if ((v66 & 1) == 0)
    {
      sub_1ABAB6950();
      v67 = sub_1ABAA4604();
      sub_1ABD5A830(v67, v68, v69);
      v70 = v208;
      sub_1ABF23C44();
      sub_1ABF23C14();
      v72 = v71;
      sub_1ABA8086C();
      v73(v70, v209);
      if (v72 >> 60 == 15)
      {
        v74 = sub_1ABAA4604();
        sub_1ABD5A840(v74, v75, v76);
        sub_1ABB6DBB8(&v215);
      }

      else
      {
        sub_1ABB255A4();
        v77 = v203;
        v78 = v204;
        v79 = v210;
        sub_1ABF217D4();
        if (v79)
        {

          v80 = sub_1ABAA4604();
          sub_1ABD5A840(v80, v81, v82);
          sub_1ABB6DBB8(&v215);
          v83 = sub_1ABAA0904();
          sub_1ABAC9310(v83, v84);
          sub_1ABA7ED8C();
          sub_1ABA7B9B4(v85, v86, v87, v78);
          sub_1ABAB480C(v77, &qword_1EB4D2BE8, &unk_1ABF5E770);
          v210 = 0;
          v42 = v202;
        }

        else
        {
          v210 = 0;
          sub_1ABA8C6E0();
          sub_1ABA7B9B4(v88, v89, v90, v78);
          sub_1ABA8086C();
          v91 = v198;
          v92();
          v93 = v199;
          sub_1ABF21A34();
          v94 = v93;
          v95 = v201;
          if (sub_1ABA7E1E0(v94, 1, v201) == 1)
          {
            v96 = v190;
            sub_1ABF21FC4();
            v97 = v196;
            sub_1ABF21F94();
            v98 = sub_1ABAA0904();
            sub_1ABAC9310(v98, v99);
            v100 = sub_1ABAA4604();
            sub_1ABD5A840(v100, v101, v102);
            sub_1ABB6DBB8(&v215);
            sub_1ABA8086C();
            v103 = v96;
            v104 = v199;
            v105(v103, v191);
            sub_1ABA8086C();
            v106(v91, v204);
            sub_1ABA7BDE4(v104);
            v42 = v202;
            if (!v48)
            {
              sub_1ABAB480C(v104, &qword_1EB4D9BF0, &qword_1ABF34240);
            }
          }

          else
          {
            sub_1ABB6DBB8(&v215);
            v107 = sub_1ABAA0904();
            sub_1ABAC9310(v107, v108);
            v109 = sub_1ABAA4604();
            sub_1ABD5A840(v109, v110, v111);
            sub_1ABA8086C();
            v112(v91, v78);
            sub_1ABA8086C();
            v97 = v196;
            sub_1ABAA1A1C();
            v113();
            sub_1ABAA4A54();
            sub_1ABA7B9B4(v114, v115, v116, v117);
            v42 = v202;
          }

          sub_1ABA7BDE4(v97);
          if (v48)
          {
            sub_1ABAB480C(v97, &qword_1EB4D9BF0, &qword_1ABF34240);
          }

          else
          {
            v118 = *v205;
            v119 = v189;
            (*v205)(v189, v97, v95);
            v118(v197, v119, v95);
            v120 = swift_isUniquelyReferenced_nonNull_native();
            if ((v120 & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABAD96B8();
              v200 = v126;
            }

            v122 = *(v200 + 16);
            v121 = *(v200 + 24);
            if (v122 >= v121 >> 1)
            {
              sub_1ABA7BBEC(v121);
              sub_1ABAD96B8();
              v200 = v127;
            }

            *(v200 + 16) = v122 + 1;
            sub_1ABA7AD90();
            v118(v124 + v123 + *(v125 + 72) * v122, v197, v201);
          }
        }
      }

      v58 = v211;
      v59 = v207;
    }

    v61 += 8;
    ++v57;
  }

  v128 = v192;
  sub_1ABB2BAE0(v200);

  v129 = v187;
  sub_1ABB3E5B4(v128, v187, &qword_1EB4D9BF0, &qword_1ABF34240);
  v130 = v201;
  if (sub_1ABA7E1E0(v129, 1, v201) == 1)
  {
    sub_1ABAB480C(v129, &qword_1EB4D9BF0, &qword_1ABF34240);
    v131 = 0;
    v132 = v185 + 32;
    v133 = MEMORY[0x1E69E7CC0];
    v134 = v184;
    v135 = v183;
LABEL_41:
    v136 = v132 + (v131 << 6);
    while (v42 != v131)
    {
      if (v131 >= v42)
      {
        goto LABEL_95;
      }

      v137 = *(v136 + 16);
      v215 = *v136;
      v216 = v137;
      *v217 = *(v136 + 32);
      *&v217[9] = *(v136 + 41);
      if (__OFADD__(v131, 1))
      {
        goto LABEL_96;
      }

      v138 = v215.n128_u64[0] == v134 && v215.n128_u64[1] == v135;
      if (v138 || (sub_1ABF25054() & 1) != 0)
      {
        sub_1ABAB6950();
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v212[0] = v133;
        if ((v139 & 1) == 0)
        {
          sub_1ABA9F048();
          v133 = v212;
          v140 = sub_1ABA83F84();
          sub_1ABADDCCC(v140, v141, v142);
          sub_1ABAA0480();
        }

        v144 = v133[2];
        v143 = v133[3];
        if (v144 >= v143 >> 1)
        {
          sub_1ABA7BBEC(v143);
          v133 = v212;
          sub_1ABA975A4();
          sub_1ABADDCCC(v145, v146, v147);
          sub_1ABAA0480();
        }

        v133[2] = v144 + 1;
        sub_1ABA83A14(&v133[8 * v144], v215, v216, *v217, *&v217[9]);
        ++v131;
        goto LABEL_41;
      }

      v136 += 64;
      ++v131;
    }

    v152 = 0;
    v153 = v133[2];
    v211 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v154 = (v152 << 6) | 0x20;
    while (v153 != v152)
    {
      if (v152 >= v133[2])
      {
        goto LABEL_97;
      }

      v155 = sub_1ABA7F5F0(v133 + v154);
      sub_1ABAA0764(v155, v156, v157, v158);
      if ((v160 & 1) == 0)
      {
        v161 = *&v217[8];
        v162 = *&v217[16];
        v214 = 0;
        MEMORY[0x1EEE9AC00](v159);
        *(&v182 - 2) = &v214;
        if ((v162 & 0x1000000000000000) == 0)
        {
          if ((v162 & 0x2000000000000000) != 0)
          {
            v212[0] = v161;
            v212[1] = v162 & 0xFFFFFFFFFFFFFFLL;
            switch(v161)
            {
              case 0:
              case 9:
              case 10:
              case 11:
              case 12:
              case 13:
                goto LABEL_67;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_73;
              default:
                if (v161 == 32)
                {
LABEL_67:
                  sub_1ABAB6950();
                  goto LABEL_68;
                }

LABEL_73:
                sub_1ABAB6950();
                v163 = _swift_stdlib_strtod_clocale();
                if (v163 && !*v163)
                {
                  goto LABEL_77;
                }

                goto LABEL_68;
            }
          }

          if ((v161 & 0x1000000000000000) != 0)
          {
            switch(*((v162 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
            {
              case 0:
              case 9:
              case 0xA:
              case 0xB:
              case 0xC:
              case 0xD:
                goto LABEL_67;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_73;
              default:
                if (*((v162 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 32)
                {
                  goto LABEL_73;
                }

                goto LABEL_67;
            }
          }
        }

        sub_1ABAB6950();
        v164 = v210;
        sub_1ABF24A74();
        v210 = v164;
        if (v213)
        {
LABEL_77:
          v165 = v214;
          sub_1ABB6DBB8(&v215);
          v166 = v211;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABAD91B4();
            v166 = v169;
          }

          v168 = v166[2];
          v167 = v166[3];
          if (v168 >= v167 >> 1)
          {
            sub_1ABA7BBEC(v167);
            sub_1ABA8BB08();
            sub_1ABAD91B4();
            v166 = v170;
          }

          ++v152;
          v166[2] = v168 + 1;
          v211 = v166;
          v166[v168 + 4] = v165;
          goto LABEL_58;
        }

LABEL_68:
        sub_1ABB6DBB8(&v215);
      }

      v154 += 64;
      ++v152;
    }

    v171 = v211[2];
    if (v171)
    {
      v172 = v211 + 4;
      v173 = MEMORY[0x1E69E7CC0];
      v174 = v201;
      v175 = v193;
      v176 = v182;
      v177 = v192;
      do
      {
        sub_1ABF21E04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAD96B8();
          v173 = v180;
        }

        v179 = *(v173 + 16);
        v178 = *(v173 + 24);
        if (v179 >= v178 >> 1)
        {
          sub_1ABA7C480(v178);
          sub_1ABAD96B8();
          v173 = v181;
        }

        *(v173 + 16) = v179 + 1;
        (*(v175 + 32))(v173 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v179, v176, v174);
        ++v172;
        --v171;
      }

      while (v171);
    }

    else
    {
      v173 = MEMORY[0x1E69E7CC0];
      v177 = v192;
    }

    sub_1ABB2BAE0(v173);

    sub_1ABAB480C(v177, &qword_1EB4D9BF0, &qword_1ABF34240);
  }

  else
  {
    sub_1ABAB480C(v128, &qword_1EB4D9BF0, &qword_1ABF34240);
    sub_1ABA8086C();
    v148(v186, v129, v130);
    sub_1ABA8C6E0();
    sub_1ABA7B9B4(v149, v150, v151, v130);
  }
}

void sub_1ABD57A0C()
{
  sub_1ABA7E2A8();
  v493 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C068();
  v478 = v11;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v476 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v476 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v19 = sub_1ABA7AB80(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C068();
  v488 = v20;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA88E50();
  v487 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA88E50();
  v480 = v24;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA88E50();
  v481 = v26;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA88E50();
  v486 = v28;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA972D4();
  v492 = v31;
  v503 = 0;
  v504 = 0xE000000000000000;
  v490 = v32;
  v485 = v6;
  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_397;
  }

  v477 = v14;
  v479 = v17;
  v484 = v9;
  v489 = v7;
  v33 = v493[10];
  v34 = v493[11];
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v502);
  v35 = v33 == v502[2] && v34 == v502[3];
  if (v35)
  {
  }

  else
  {
    v36 = sub_1ABA8CF7C(v33, v34, v502[2]);

    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  swift_bridgeObjectRetain_n();
  sub_1ABD52B98(1, v33, v34);
  v37 = sub_1ABF247F4();
  v39 = v38;

  v40 = sub_1ABAA958C(1uLL, v33, v34);
  sub_1ABD59C3C(v37, v39, v40, v41, v42, v43);
  v44 = v37;
  v46 = v45;

  v502[0] = v44;
  v502[1] = v46;
  MEMORY[0x1AC5A9410](32, 0xE100000000000000);
  sub_1ABAB6610();

LABEL_10:
  MEMORY[0x1AC5A9410](v4, v2);
  v47 = v493[15];
  v496 = *(v47 + 16);
  v497 = 279;
  v499 = 3481;
  v498 = 4281;

  v495 = MEMORY[0x1E69E7CC0];
  v48 = 32;
  v494 = 32;
  while (v496)
  {
    if (!*(v47 + 16))
    {
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
      goto LABEL_370;
    }

    memcpy(v502, (v47 + v48), 0x62uLL);
    if (v497 < 91)
    {
      goto LABEL_333;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_379;
    }

    sub_1ABAA114C();
    if (v50 == v51)
    {
      goto LABEL_334;
    }

    if (*(v49 + 2176) >= v498)
    {
      goto LABEL_335;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_381;
    }

    v52 = v502[0];
    v53 = v502[1];
    v54 = sub_1ABAB5510();
    sub_1ABB3E5B4(v54, v55, &qword_1EB4D1148, &qword_1ABF332D0);

    v56 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_380;
    }

    v58 = v56;
    v59 = v57;
    sub_1ABF23DD4();
    if (v52 == v58 && v53 == v59)
    {

LABEL_27:
      v62 = sub_1ABA9FDA8();
      v500[0] = v48;
      if ((v62 & 1) == 0)
      {
        v63 = sub_1ABA94B3C();
        sub_1ABADDCAC(v63, v64, v65);
      }

      sub_1ABAA1FB0();
      if (v67)
      {
        v68 = sub_1ABA994E4(v66);
        sub_1ABADDCAC(v68, v69, v70);
        v48 = v494;
      }

      sub_1ABA97C24();
    }

    else
    {
      v61 = sub_1ABF25054();

      if (v61)
      {
        goto LABEL_27;
      }

      sub_1ABAB480C(v502, &qword_1EB4D1148, &qword_1ABF332D0);
      sub_1ABA7FD00();
    }
  }

  v71 = 0;
  v72 = v495;
  v73 = v495[2];
  v74 = v495 + 129;
  v75 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v76 = &v74[104 * v71];
  while (v73 != v71)
  {
    if (v71 >= v72[2])
    {
      goto LABEL_336;
    }

    sub_1ABA8C22C(v76);
    if (v35)
    {
      sub_1ABA90960();
      BYTE1(v502[7]) = 1;
      sub_1ABD191AC(v502, v500);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1ABA7BEF0();
        sub_1ABAD8B88(v79, v80, v81, v75);
        v75 = v82;
      }

      v78 = *(v75 + 16);
      v77 = *(v75 + 24);
      if (v78 >= v77 >> 1)
      {
        v83 = sub_1ABA7C480(v77);
        sub_1ABAD8B88(v83, v84, v85, v75);
        v75 = v86;
      }

      ++v71;
      *(v75 + 16) = v78 + 1;
      sub_1ABA7F5D0(v75 + (v78 << 6));
      goto LABEL_33;
    }

    sub_1ABAA0BD0();
  }

  v87 = 0;
  v88 = *(v75 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  v90 = 48;
  while (v88 != v87)
  {
    if (v87 >= *(v75 + 16))
    {
      goto LABEL_337;
    }

    v91 = *(v75 + v90);
    v92 = *(v91 + 16);
    v93 = *(v89 + 16);
    if (__OFADD__(v93, v92))
    {
      goto LABEL_338;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v93 + v92 > *(v89 + 24) >> 1)
    {
      sub_1ABAB531C();
      sub_1ABAD89AC(v94, v95, v96, v89);
      v89 = v97;
    }

    if (*(v91 + 16))
    {
      sub_1ABA84218();
      if (v98 < v92)
      {
        goto LABEL_369;
      }

      swift_arrayInitWithCopy();

      if (v92)
      {
        v99 = *(v89 + 16);
        v51 = __OFADD__(v99, v92);
        v100 = v99 + v92;
        if (v51)
        {
          goto LABEL_373;
        }

        *(v89 + 16) = v100;
      }
    }

    else
    {

      if (v92)
      {
        goto LABEL_339;
      }
    }

    v90 += 64;
    ++v87;
  }

  v101 = 0;
  v496 = *(v89 + 16);
  v495 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v102 = ((v101 << 6) | 0x20);
  while (v496 != v101)
  {
    if (v101 >= *(v89 + 16))
    {
      goto LABEL_340;
    }

    v103 = sub_1ABA7F5F0(v102 + v89);
    sub_1ABA8C79C(v103, v104, v105, v106);
    if (v497 < 52)
    {
      goto LABEL_341;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_382;
    }

    sub_1ABAA114C();
    if (v50 == v51)
    {
      goto LABEL_342;
    }

    if (*(v107 + 1240) >= v498)
    {
      goto LABEL_343;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_384;
    }

    v109 = v502[0];
    v108 = v502[1];
    v110 = sub_1ABAB5510();
    sub_1ABD1927C(v110, v111);

    v112 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_383;
    }

    v114 = v112;
    v115 = v113;
    sub_1ABF23DD4();
    if (v109 == v114 && v108 == v115)
    {

LABEL_75:
      v118 = sub_1ABA9FDA8();
      v500[0] = v102;
      if ((v118 & 1) == 0)
      {
        v119 = sub_1ABA94B3C();
        sub_1ABADDCCC(v119, v120, v121);
        v102 = v500[0];
      }

      v123 = v102[2];
      v122 = v102[3];
      if (v123 >= v122 >> 1)
      {
        v124 = sub_1ABA994E4(v122);
        sub_1ABADDCCC(v124, v125, v126);
        v102 = v500[0];
      }

      ++v101;
      v102[2] = v123 + 1;
      v495 = v102;
      sub_1ABA7F5D0(&v102[8 * v123]);
      goto LABEL_58;
    }

    v117 = sub_1ABF25054();

    if (v117)
    {
      goto LABEL_75;
    }

    sub_1ABB6DBB8(v502);
    v102 += 8;
    ++v101;
  }

  v127 = v495;
  v128 = v495[2];
  v129 = MEMORY[0x1E69E7CC0];
  while (v128)
  {
    if (!v127[2])
    {
      goto LABEL_344;
    }

    sub_1ABA8BCE8();
    if (v131)
    {
      v132 = *(v130 - 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = sub_1ABA7BEF0();
        sub_1ABAD89C8(v136, v137, v138, v129);
        v129 = v139;
      }

      v134 = *(v129 + 16);
      v133 = *(v129 + 24);
      v135 = v129;
      if (v134 >= v133 >> 1)
      {
        v140 = sub_1ABA7C480(v133);
        sub_1ABAD89C8(v140, v141, v142, v143);
        v135 = v144;
      }

      *(v135 + 16) = v134 + 1;
      v129 = v135;
      *(v135 + 8 * v134 + 32) = v132;
      v127 = v495;
    }
  }

  v145 = *(v129 + 16);
  v491 = v129;
  if (v145)
  {
    v146 = v493[3];
    v147 = v129 + 32;
    v148 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v146 + 16))
      {
        v149 = sub_1ABAF81A8();
        if (v150)
        {
          v151 = (*(v146 + 56) + 16 * v149);
          v153 = *v151;
          v152 = v151[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA80DB8();
            sub_1ABAAA4F4();
            v148 = v157;
          }

          v155 = *(v148 + 16);
          v154 = *(v148 + 24);
          if (v155 >= v154 >> 1)
          {
            sub_1ABA7BBEC(v154);
            sub_1ABAA53EC();
            sub_1ABAAA4F4();
            v148 = v158;
          }

          *(v148 + 16) = v155 + 1;
          v156 = v148 + 16 * v155;
          *(v156 + 32) = v153;
          *(v156 + 40) = v152;
        }
      }

      v147 += 8;
      --v145;
    }

    while (v145);
  }

  else
  {
    v148 = MEMORY[0x1E69E7CC0];
  }

  v159 = *(v148 + 16);
  if (v159)
  {
    if (v159 == 1)
    {
      v483 = 1;
      sub_1ABC43DF0();

      strcpy(v502, " at location ");
      HIWORD(v502[1]) = -4864;
      v160 = sub_1ABA7E79C();
      MEMORY[0x1AC5A9410](v160);

      sub_1ABAB6610();
    }

    else
    {
      v502[0] = v148;
      v161 = sub_1ABA8CD18();
      sub_1ABAD219C(v161, v162);
      sub_1ABA7E760();
      sub_1ABAB47C4(v163, v164, &unk_1ABF3A8C0, v165);
      sub_1ABF23ED4();

      strcpy(v502, " at locations ");
      HIBYTE(v502[1]) = -18;
      v166 = sub_1ABA7E79C();
      MEMORY[0x1AC5A9410](v166);

      sub_1ABAB6610();

      v483 = 1;
    }
  }

  else
  {

    v483 = 0;
  }

  sub_1ABA8B6F8(v493);
  v495 = MEMORY[0x1E69E7CC0];
  v167 = v494;
  while (v496)
  {
    if (!*(v148 + 16))
    {
      goto LABEL_345;
    }

    sub_1ABA8AF74(v502);
    if (v497 < 111)
    {
      goto LABEL_346;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_385;
    }

    sub_1ABAA114C();
    if (v50 == v51)
    {
      goto LABEL_347;
    }

    if (*(v168 + 2656) >= v498)
    {
      goto LABEL_348;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_387;
    }

    v170 = v502[0];
    v169 = v502[1];
    v171 = sub_1ABAB5510();
    sub_1ABB3E5B4(v171, v172, &qword_1EB4D1148, &qword_1ABF332D0);

    v173 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_386;
    }

    v175 = v173;
    v176 = v174;
    sub_1ABF23DD4();
    if (v170 == v175 && v169 == v176)
    {
    }

    else
    {
      v178 = sub_1ABA8CF7C(v170, v169, v175);

      if ((v178 & 1) == 0)
      {
        sub_1ABAB480C(v502, &qword_1EB4D1148, &qword_1ABF332D0);
        sub_1ABA7FD00();
        continue;
      }
    }

    v179 = sub_1ABA9FDA8();
    v500[0] = v167;
    if ((v179 & 1) == 0)
    {
      v180 = sub_1ABA94B3C();
      sub_1ABADDCAC(v180, v181, v182);
    }

    sub_1ABAA1FB0();
    if (v67)
    {
      v184 = sub_1ABA994E4(v183);
      sub_1ABADDCAC(v184, v185, v186);
      v167 = v494;
    }

    sub_1ABA97C24();
  }

  v187 = 0;
  v188 = v495;
  v189 = v495[2];
  v190 = MEMORY[0x1E69E7CC0];
LABEL_129:
  v191 = 13 * v187;
  while (v189 != v187)
  {
    if (v187 >= v188[2])
    {
      goto LABEL_349;
    }

    v192 = &v188[v191];
    if (!BYTE1(v188[v191 + 16]))
    {
      v193 = v192[9];
      v194 = v192[10];
      v195 = v193 == 49 && v194 == 0xE100000000000000;
      if (v195 || (v196 = sub_1ABA7E79C(), (sub_1ABA8CD24(v196, v197) & 1) != 0))
      {
        v201 = 1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_145:
          v203 = *(v190 + 16);
          v202 = *(v190 + 24);
          v188 = v495;
          if (v203 >= v202 >> 1)
          {
            sub_1ABA7C480(v202);
            sub_1ABAD8AA4();
            v188 = v495;
            v190 = v205;
          }

          ++v187;
          *(v190 + 16) = v203 + 1;
          *(v190 + v203 + 32) = v201;
          goto LABEL_129;
        }

LABEL_149:
        sub_1ABA80DB8();
        sub_1ABAD8AA4();
        v190 = v204;
        goto LABEL_145;
      }

      v198 = v193 == 48 && v194 == 0xE100000000000000;
      if (v198 || (v199 = sub_1ABA7E79C(), (sub_1ABD5AA18(v199, v200) & 1) != 0))
      {
        v201 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_145;
        }

        goto LABEL_149;
      }
    }

    sub_1ABA7FD00();
  }

  if (*(v190 + 16))
  {
    sub_1ABC43DF0();
    v206 = *(v190 + 32);

    v207 = 48;
    if (v206)
    {
      v207 = 40;
    }
  }

  else
  {

    v207 = 48;
  }

  v482 = v207;
  v208 = v494;
  sub_1ABA8B6F8(v493);
  v495 = MEMORY[0x1E69E7CC0];
  while (v496)
  {
    if (!*(v190 + 16))
    {
      goto LABEL_350;
    }

    sub_1ABA8AF74(v502);
    if (v497 < 146)
    {
      goto LABEL_351;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_388;
    }

    sub_1ABAA114C();
    if (v50 == v51)
    {
      goto LABEL_352;
    }

    if (*(v209 + 3496) >= v498)
    {
      goto LABEL_353;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_390;
    }

    v211 = v502[0];
    v210 = v502[1];
    v212 = sub_1ABAB5510();
    sub_1ABB3E5B4(v212, v213, &qword_1EB4D1148, &qword_1ABF332D0);

    v214 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_389;
    }

    v216 = v214;
    v217 = v215;
    sub_1ABF23DD4();
    if (v211 == v216 && v210 == v217)
    {
    }

    else
    {
      v219 = sub_1ABA8CF7C(v211, v210, v216);

      if ((v219 & 1) == 0)
      {
        sub_1ABAB480C(v502, &qword_1EB4D1148, &qword_1ABF332D0);
        sub_1ABA7FD00();
        continue;
      }
    }

    v220 = sub_1ABA9FDA8();
    v500[0] = v208;
    if ((v220 & 1) == 0)
    {
      v221 = sub_1ABA94B3C();
      sub_1ABADDCAC(v221, v222, v223);
    }

    sub_1ABAA1FB0();
    if (v67)
    {
      v225 = sub_1ABA994E4(v224);
      sub_1ABADDCAC(v225, v226, v227);
      v208 = v494;
    }

    sub_1ABA97C24();
  }

  v228 = 0;
  v229 = v495;
  v230 = v495[2];
  v231 = v495 + 129;
  v232 = MEMORY[0x1E69E7CC0];
LABEL_178:
  v233 = &v231[104 * v228];
  while (v230 != v228)
  {
    if (v228 >= v229[2])
    {
      goto LABEL_354;
    }

    sub_1ABA8C22C(v233);
    if (v35)
    {
      sub_1ABA90960();
      BYTE1(v502[7]) = 1;
      sub_1ABD191AC(v502, v500);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v236 = sub_1ABA80DB8();
        sub_1ABAD8B88(v236, v237, v238, v239);
        v232 = v240;
      }

      v235 = *(v232 + 16);
      v234 = *(v232 + 24);
      if (v235 >= v234 >> 1)
      {
        v241 = sub_1ABA7C480(v234);
        sub_1ABAD8B88(v241, v242, v243, v232);
        v232 = v244;
      }

      ++v228;
      *(v232 + 16) = v235 + 1;
      sub_1ABA7F5D0(v232 + (v235 << 6));
      goto LABEL_178;
    }

    sub_1ABAA0BD0();
  }

  v245 = 0;
  v246 = *(v232 + 16);
  v247 = MEMORY[0x1E69E7CC0];
  v248 = 48;
  while (v246 != v245)
  {
    sub_1ABAA05B4();
    if (v67)
    {
      goto LABEL_355;
    }

    v249 = *(v232 + v248);
    v250 = *(v249 + 16);
    v251 = *(v247 + 16);
    if (__OFADD__(v251, v250))
    {
      goto LABEL_356;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v251 + v250 > *(v247 + 24) >> 1)
    {
      sub_1ABAB531C();
      sub_1ABAD89AC(v252, v253, v254, v247);
      v247 = v255;
    }

    if (*(v249 + 16))
    {
      sub_1ABA84218();
      if (v256 < v250)
      {
        goto LABEL_371;
      }

      swift_arrayInitWithCopy();

      if (v250)
      {
        v257 = *(v247 + 16);
        v51 = __OFADD__(v257, v250);
        v258 = v257 + v250;
        if (v51)
        {
          goto LABEL_374;
        }

        *(v247 + 16) = v258;
      }
    }

    else
    {

      if (v250)
      {
        goto LABEL_357;
      }
    }

    v248 += 64;
    ++v245;
  }

  if (v497 < 3)
  {
    goto LABEL_376;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_398;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), v502);
  if (v497 < 0x99)
  {
    goto LABEL_377;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_399:
    __break(1u);
    goto LABEL_400;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), v501);
  sub_1ABD56B94(v247, v502, v501, v492);

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_400:
    __break(1u);
LABEL_401:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1548], *(_Records_GDEntityPredicate_records + 388), *(_Records_GDEntityPredicate_records + 389), v502);
  v260 = v489;
  v259 = v490;
  if (v497 == 153)
  {
    goto LABEL_378;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_401;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), v501);
  v261 = v493;
  sub_1ABD56B94(v247, v502, v501, v259);

  v262 = *(v261 + v482);
  v263 = v486;
  sub_1ABB3E5B4(v492, v486, &qword_1EB4D9BF0, &qword_1ABF34240);
  v264 = sub_1ABA7E1E0(v263, 1, v260);
  v495 = v262;
  if (v264 == 1)
  {
    v265 = v262;
    sub_1ABAB480C(v263, &qword_1EB4D9BF0, &qword_1ABF34240);
    v266 = v480;
    sub_1ABA97340();
    sub_1ABB3E5B4(v267, v268, v269, v270);
    if (sub_1ABA7E1E0(v266, 1, v260) == 1)
    {
      sub_1ABAB480C(v266, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    else
    {
      v285 = v484;
      v286 = v478;
      (*(v484 + 32))(v478, v266, v260);
      v287 = sub_1ABF21E34();
      v288 = [v265 &off_1E7963478];

      sub_1ABF23C04();
      sub_1ABA97340();
      v289 = MEMORY[0x1AC5A9380]();
      v291 = v290;

      MEMORY[0x1AC5A9410](v289, v291);

      (*(v285 + 8))(v286, v260);
      v483 = 1;
    }
  }

  else
  {
    v271 = v484;
    v272 = *(v484 + 32);
    v273 = v479;
    sub_1ABAA0334();
    v272();
    v274 = v262;
    v275 = sub_1ABF21E34();
    v276 = [v274 stringFromDate_];

    v277 = sub_1ABF23C04();
    v279 = v278;

    v280 = MEMORY[0x1AC5A9380](0x6174732073616820, 0xEE00206E6F207472, v277, v279);
    v282 = v281;

    MEMORY[0x1AC5A9410](v280, v282);
    v283 = v489;

    v284 = v481;
    sub_1ABB3E5B4(v490, v481, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (sub_1ABA7E1E0(v284, 1, v283) == 1)
    {
      (*(v271 + 8))(v273, v283);
      sub_1ABAB480C(v284, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    else
    {
      v292 = v477;
      sub_1ABAA0334();
      v293();
      v294 = sub_1ABF21E34();
      v295 = [v274 stringFromDate_];

      sub_1ABF23C04();
      sub_1ABA97340();
      v296 = MEMORY[0x1AC5A9380]();
      v298 = v297;

      MEMORY[0x1AC5A9410](v296, v298);

      v299 = *(v271 + 8);
      v299(v292, v283);
      v299(v273, v283);
    }

    v483 = 1;
  }

  v300 = v494;
  v301 = v493[15];
  v497 = *(v301 + 16);

  v302 = 0;
  v496 = MEMORY[0x1E69E7CC0];
LABEL_218:
  v303 = v300 + 104 * v302;
  while (v497 != v302)
  {
    if (v302 >= *(v301 + 16))
    {
      goto LABEL_358;
    }

    memcpy(v502, (v301 + v303), 0x62uLL);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_391;
    }

    sub_1ABAA114C();
    if (v50 == v51)
    {
      goto LABEL_359;
    }

    if (*(v304 + 2800) >= v498)
    {
      goto LABEL_360;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_392;
    }

    v306 = v502[0];
    v305 = v502[1];
    v307 = sub_1ABAB5510();
    sub_1ABB3E5B4(v307, v308, &qword_1EB4D1148, &qword_1ABF332D0);

    v309 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_393;
    }

    v311 = v309;
    v312 = v310;
    sub_1ABF23DD4();
    if (v306 == v311 && v305 == v312)
    {

LABEL_234:
      v317 = v496;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v500[0] = v317;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v319 = sub_1ABA94B3C();
        sub_1ABADDCAC(v319, v320, v321);
        v317 = v500[0];
      }

      v300 = v494;
      v323 = *(v317 + 16);
      v322 = *(v317 + 24);
      if (v323 >= v322 >> 1)
      {
        sub_1ABA9A558(v322);
        sub_1ABA975A4();
        sub_1ABADDCAC(v324, v325, v326);
        v300 = v494;
        v317 = v500[0];
      }

      ++v302;
      *(v317 + 16) = v323 + 1;
      v496 = v317;
      memcpy((v317 + 104 * v323 + 32), v502, 0x62uLL);
      goto LABEL_218;
    }

    v314 = sub_1ABAA0904();
    v316 = sub_1ABA8CF7C(v314, v315, v311);

    if (v316)
    {
      goto LABEL_234;
    }

    sub_1ABAB480C(v502, &qword_1EB4D1148, &qword_1ABF332D0);
    sub_1ABA7FD00();
  }

  v327 = 0;
  v328 = v496;
  v329 = *(v496 + 16);
  v330 = v496 + 129;
  v331 = MEMORY[0x1E69E7CC0];
LABEL_240:
  v332 = v330 + 104 * v327;
  while (v329 != v327)
  {
    if (v327 >= *(v328 + 16))
    {
      goto LABEL_361;
    }

    sub_1ABA8C22C(v332);
    if (v35)
    {
      sub_1ABA90960();
      BYTE1(v502[7]) = 1;
      sub_1ABD191AC(v502, v500);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v335 = sub_1ABA80DB8();
        sub_1ABAD8B88(v335, v336, v337, v338);
        v331 = v339;
      }

      v334 = *(v331 + 16);
      v333 = *(v331 + 24);
      if (v334 >= v333 >> 1)
      {
        v340 = sub_1ABA7C480(v333);
        sub_1ABAD8B88(v340, v341, v342, v331);
        v331 = v343;
      }

      ++v327;
      *(v331 + 16) = v334 + 1;
      sub_1ABA7F5D0(v331 + (v334 << 6));
      v328 = v496;
      goto LABEL_240;
    }

    sub_1ABAA0BD0();
  }

  v344 = 0;
  v345 = *(v331 + 16);
  v346 = MEMORY[0x1E69E7CC0];
  v347 = 48;
  while (v345 != v344)
  {
    sub_1ABAA05B4();
    if (v67)
    {
      goto LABEL_362;
    }

    v348 = *(v331 + v347);
    v349 = *(v348 + 16);
    v350 = *(v346 + 16);
    if (__OFADD__(v350, v349))
    {
      goto LABEL_363;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v350 + v349 > *(v346 + 24) >> 1)
    {
      sub_1ABAB531C();
      sub_1ABAD89AC(v351, v352, v353, v346);
      v346 = v354;
    }

    if (*(v348 + 16))
    {
      sub_1ABA84218();
      if (v355 < v349)
      {
        goto LABEL_372;
      }

      swift_arrayInitWithCopy();

      if (v349)
      {
        v356 = *(v346 + 16);
        v51 = __OFADD__(v356, v349);
        v357 = v356 + v349;
        if (v51)
        {
          goto LABEL_375;
        }

        *(v346 + 16) = v357;
      }
    }

    else
    {

      if (v349)
      {
        goto LABEL_364;
      }
    }

    v347 += 64;
    ++v344;
  }

  v358 = 0;
  v497 = *(v346 + 16);
  v496 = MEMORY[0x1E69E7CC0];
LABEL_265:
  v359 = (v358 << 6) | 0x20;
  while (v497 != v358)
  {
    if (v358 >= *(v346 + 16))
    {
      goto LABEL_365;
    }

    v360 = sub_1ABA7F5F0(v346 + v359);
    sub_1ABA8C79C(v360, v361, v362, v363);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_394;
    }

    sub_1ABAA114C();
    if (v50 == v51)
    {
      goto LABEL_366;
    }

    if (*(v364 + 664) >= v498)
    {
      goto LABEL_367;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_395;
    }

    v366 = v502[0];
    v365 = v502[1];
    v367 = sub_1ABAB5510();
    sub_1ABD1927C(v367, v368);

    v369 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_396;
    }

    v371 = v369;
    v372 = v370;
    sub_1ABF23DD4();
    if (v366 == v371 && v365 == v372)
    {

LABEL_281:
      v375 = v496;
      v376 = swift_isUniquelyReferenced_nonNull_native();
      v500[0] = v375;
      if ((v376 & 1) == 0)
      {
        v377 = sub_1ABA94B3C();
        sub_1ABADDCCC(v377, v378, v379);
        v375 = v500[0];
      }

      sub_1ABA97888();
      if (v67)
      {
        sub_1ABA9A558(v380);
        sub_1ABA975A4();
        sub_1ABADDCCC(v381, v382, v383);
        v375 = v500[0];
      }

      ++v358;
      *(v375 + 16) = v372;
      v496 = v375;
      sub_1ABA7F5D0(v375 + (v365 << 6));
      goto LABEL_265;
    }

    v374 = sub_1ABA8CF7C(v366, v365, v371);

    if (v374)
    {
      goto LABEL_281;
    }

    sub_1ABB6DBB8(v502);
    v359 += 64;
    ++v358;
  }

  v384 = v496;
  v385 = *(v496 + 16);
  v386 = MEMORY[0x1E69E7CC0];
  while (v385)
  {
    if (!*(v384 + 16))
    {
      goto LABEL_368;
    }

    sub_1ABA8BCE8();
    if (v388)
    {
      v389 = *(v387 - 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v392 = sub_1ABA7BEF0();
        sub_1ABAD89C8(v392, v393, v394, v386);
        v386 = v395;
      }

      v391 = *(v386 + 16);
      v390 = *(v386 + 24);
      v384 = v496;
      if (v391 >= v390 >> 1)
      {
        sub_1ABA7BBEC(v390);
        sub_1ABA975A4();
        sub_1ABAD89C8(v396, v397, v398, v386);
        v384 = v496;
        v386 = v399;
      }

      *(v386 + 16) = v391 + 1;
      *(v386 + 8 * v391 + 32) = v389;
    }
  }

  v400 = *(v386 + 16);
  if (v400)
  {
    v401 = v493[3];
    v402 = v386 + 32;
    v403 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v401 + 16))
      {
        v404 = sub_1ABAF81A8();
        if (v405)
        {
          v406 = (*(v401 + 56) + 16 * v404);
          v408 = *v406;
          v407 = v406[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA80DB8();
            sub_1ABAAA4F4();
            v403 = v412;
          }

          v410 = *(v403 + 16);
          v409 = *(v403 + 24);
          if (v410 >= v409 >> 1)
          {
            sub_1ABA7BBEC(v409);
            sub_1ABAA53EC();
            sub_1ABAAA4F4();
            v403 = v413;
          }

          *(v403 + 16) = v410 + 1;
          v411 = v403 + 16 * v410;
          *(v411 + 32) = v408;
          *(v411 + 40) = v407;
        }
      }

      v402 += 8;
      --v400;
    }

    while (v400);
  }

  else
  {
    v403 = MEMORY[0x1E69E7CC0];
  }

  v414 = *(v403 + 16);
  if (v414)
  {
    if (v414 == 1 && (v415 = sub_1ABB2B834(v403), v416))
    {
      v417 = v415;
      v418 = v416;

      v502[0] = 0x7461206874697720;
      v502[1] = 0xEF206565646E6574;
      MEMORY[0x1AC5A9410](v417, v418);
    }

    else
    {
      v502[0] = v403;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABA7E760();
      sub_1ABAB47C4(v419, v420, &unk_1ABF3A8C0, v421);
      v422 = sub_1ABF23ED4();
      v424 = v423;

      v502[0] = 0xD000000000000010;
      v502[1] = 0x80000001ABF8EA60;
      MEMORY[0x1AC5A9410](v422, v424);
    }

    MEMORY[0x1AC5A9410](v502[0], v502[1]);

    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
LABEL_313:
    v498 = v504;
    v499 = v503;
    sub_1ABA97340();
    sub_1ABB3E5B4(v425, v426, v427, v428);
    sub_1ABA97340();
    sub_1ABB3E5B4(v429, v430, v431, v432);
    v433 = v493[3];
    v434 = 1 << *(v433 + 32);
    v435 = -1;
    if (v434 < 64)
    {
      v435 = ~(-1 << v434);
    }

    v436 = v435 & *(v433 + 64);
    v437 = (v434 + 63) >> 6;

    v438 = 0;
    v439 = MEMORY[0x1E69E7CC0];
    while (v436)
    {
LABEL_321:
      v441 = __clz(__rbit64(v436));
      v436 &= v436 - 1;
      v442 = *(*(v433 + 48) + ((v438 << 9) | (8 * v441)));
      if (sub_1ABD51FB4(v442, v491) || sub_1ABD51FB4(v442, v386))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v446 = sub_1ABA7BEF0();
          sub_1ABAD89C8(v446, v447, v448, v439);
          v439 = v449;
        }

        v444 = *(v439 + 16);
        v443 = *(v439 + 24);
        v445 = v444 + 1;
        if (v444 >= v443 >> 1)
        {
          v450 = sub_1ABA7BBEC(v443);
          v497 = v451;
          sub_1ABAD89C8(v450, v451, 1, v439);
          v445 = v497;
          v439 = v452;
        }

        *(v439 + 16) = v445;
        *(v439 + 8 * v444 + 32) = v442;
      }
    }

    while (1)
    {
      v440 = v438 + 1;
      if (__OFADD__(v438, 1))
      {
        break;
      }

      if (v440 >= v437)
      {

        sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
        v453 = swift_allocObject();
        v454 = sub_1ABB7D7F8(v453, 1);
        *v455 = v493[14];
        v502[0] = v439;
        sub_1ABD7DAF4(v454);

        sub_1ABAA1A1C();
        sub_1ABAB480C(v456, v457, v458);
        sub_1ABAA1A1C();
        sub_1ABAB480C(v459, v460, v461);
        v462 = v502[0];
        v463 = v485;
        v464 = v498;
        *v485 = v499;
        v463[1] = v464;
        v465 = type metadata accessor for K2TTextualization(0);
        sub_1ABAE84E0(v487, v463 + v465[5]);
        sub_1ABAE84E0(v488, v463 + v465[6]);
        *(v463 + v465[7]) = v462;
        sub_1ABA8C6E0();
        v469 = v465;
        goto LABEL_329;
      }

      v436 = *(v433 + 64 + 8 * v440);
      ++v438;
      if (v436)
      {
        v438 = v440;
        goto LABEL_321;
      }
    }

LABEL_370:
    __break(1u);
LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
    goto LABEL_399;
  }

  MEMORY[0x1AC5A9410](46, 0xE100000000000000);
  if (v483)
  {
    goto LABEL_313;
  }

  sub_1ABAA1A1C();
  sub_1ABAB480C(v470, v471, v472);
  sub_1ABAA1A1C();
  sub_1ABAB480C(v473, v474, v475);

  type metadata accessor for K2TTextualization(0);
  sub_1ABA7ED8C();
LABEL_329:
  sub_1ABA7B9B4(v466, v467, v468, v469);
  sub_1ABA7BC1C();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1ABD59C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABD5A7DC();

  sub_1ABF23D94();
}

uint64_t sub_1ABD59CA8()
{
  sub_1ABD51DA8();

  return swift_deallocClassInstance();
}

_BYTE *sub_1ABD59D34@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t sub_1ABD59DA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABD59F98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1ABD59EA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABD59EA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 104 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 13) && v10[1] == *(v10 - 12))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 13, 0x68uLL);
        result = memcpy(v10 - 13, __dst, 0x62uLL);
        v10 -= 13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 104;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD59F98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 104 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 104 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1ABF25054();
        }

        v6 = v8 + 2;
        v16 = 104 * v8;
        v17 = (v9 + 104 * v8 + 216);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 14) && *v17 == *(v17 - 13))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v6;
          v17 += 13;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 104 * v6 - 104;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x68uLL);
              memcpy((v22 + v19), __dst, 0x62uLL);
            }

            ++v21;
            v19 -= 104;
            v16 += 104;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 104 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 13) && v29[1] == *(v29 - 12);
                if (v30 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 13, 0x68uLL);
                memcpy(v29 - 13, __dst, 0x62uLL);
                v29 -= 13;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 104;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v7 = v74;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v79 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_105:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1ABD5A618((*a3 + 104 * *v69), (*a3 + 104 * *v71), (*a3 + 104 * v72), v79);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1ABD5A4E0(&v82, *a1, a3);
LABEL_103:
}

uint64_t sub_1ABD5A4E0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABD5A618((*a3 + 104 * *v4), (*a3 + 104 * *v9), (*a3 + 104 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABD5A618(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 104;
  v9 = (a3 - a2) / 104;
  if (v8 < v9)
  {
    sub_1ABADD418(__src, (a2 - __src) / 104, __dst);
    v10 = &v4[104 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 104;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 104;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 104;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x68uLL);
    goto LABEL_17;
  }

  sub_1ABADD418(a2, (a3 - a2) / 104, __dst);
  v10 = &v4[104 * v9];
LABEL_19:
  v14 = v6 - 104;
  for (v5 -= 104; v10 > v4 && v6 > v7; v5 -= 104)
  {
    v16 = *(v10 - 13) == *(v6 - 13) && *(v10 - 12) == *(v6 - 12);
    if (!v16 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 104 == v6;
      v6 -= 104;
      if (!v12)
      {
        memmove(v5, v14, 0x68uLL);
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 104)
    {
      memmove(v5, v10 - 104, 0x68uLL);
    }

    v10 -= 104;
  }

LABEL_36:
  v17 = 104 * ((v10 - v4) / 104);
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, v17);
  }

  return 1;
}

unint64_t sub_1ABD5A7DC()
{
  result = qword_1EB4D90D8;
  if (!qword_1EB4D90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90D8);
  }

  return result;
}

uint64_t sub_1ABD5A830(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1ABD5A840(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1ABD5A850(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1ABF24CA4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD5A8A8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v9 = *(a2 + 16);
  return sub_1ABB32CF4(v5) & 1;
}

uint64_t sub_1ABD5A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
    if (a9 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABD5AA18(uint64_t a1, uint64_t a2)
{

  return sub_1ABF25054();
}

void *sub_1ABD5AA34(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1ABB668FC();
  v2 = MEMORY[0x1E69E7CC0];
  v63 = sub_1ABF239C4();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    v66 = *(v1 + 16);
    v65 = v1 + 32;
    do
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        result = sub_1ABF25104();
        __break(1u);
        return result;
      }

      v6 = v5 + 104 * v4;
      v7 = *(v6 + 97);
      if (v7 == 1)
      {
        v11 = v1;
        v12 = *(v6 + 56);
        v13 = *(v12 + 16);
        if (v13)
        {

          v14 = (v12 + 88);
          do
          {
            if (*v14)
            {
              v15 = *(v14 - 2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABAD89C8(0, *(v2 + 16) + 1, 1, v2);
                v2 = v18;
              }

              v17 = *(v2 + 16);
              v16 = *(v2 + 24);
              if (v17 >= v16 >> 1)
              {
                sub_1ABAD89C8(v16 > 1, v17 + 1, 1, v2);
                v2 = v19;
              }

              *(v2 + 16) = v17 + 1;
              *(v2 + 8 * v17 + 32) = v15;
            }

            v14 += 64;
            --v13;
          }

          while (v13);
        }

        v1 = v11;
        v3 = v66;
        v5 = v65;
      }

      else if (v7 == 2)
      {
        v8 = *(v6 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD89C8(0, *(v2 + 16) + 1, 1, v2);
          v2 = v20;
        }

        v10 = *(v2 + 16);
        v9 = *(v2 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1ABAD89C8(v9 > 1, v10 + 1, 1, v2);
          v2 = v21;
        }

        *(v2 + 16) = v10 + 1;
        *(v2 + 8 * v10 + 32) = v8;
      }

      ++v4;
    }

    while (v4 != v3);
  }

  v22 = v64[5];
  v65 = v64[6];
  v66 = sub_1ABA93E20(v64 + 2, v22);
  v67[0] = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *&v70 = AssociatedTypeWitness;
  *(&v70 + 1) = v24;
  *&v71 = AssociatedConformanceWitness;
  *(&v71 + 1) = v26;
  *v72 = swift_getAssociatedConformanceWitness();
  *&v73[24] = type metadata accessor for EntitySequence(0, &v70);
  *&v73[32] = swift_getWitnessTable();
  sub_1ABA93DC0(v73);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABD5B86C();
  GraphObjectBareContextProtocol.entities<A>(for:)();
  if (v62)
  {

    sub_1ABD5B8D0(v73);
    return v22;
  }

  v28 = sub_1ABA93E20(v73, *&v73[24]);
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v31 + 16))(&v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v75 = swift_getAssociatedTypeWitness();
  v76 = swift_getAssociatedConformanceWitness();
  sub_1ABA93DC0(v74);
  sub_1ABF23F04();
  sub_1ABA84B54(v73);
  v66 = 0x80000001ABF8EAE0;
  v22 = v63;
  while (1)
  {
    while (1)
    {
      sub_1ABA94E50(v74, v75);
      sub_1ABF24864();
      *&v73[42] = *&v72[10];
      *&v73[16] = v71;
      *&v73[32] = *v72;
      *v73 = v70;
      if ((*&v72[24] & 0xFF00) == 0xFE00)
      {
        sub_1ABA84B54(v74);
        return v22;
      }

      v32 = *v73;
      if (HIBYTE(*&v72[24]) <= 0xFEu)
      {
        break;
      }

LABEL_38:
      swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v22;
      v47 = sub_1ABAF81A8();
      if (__OFADD__(v22[2], (v48 & 1) == 0))
      {
        goto LABEL_52;
      }

      v49 = v47;
      v50 = v48;
      sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
      if (sub_1ABF24C64())
      {
        v51 = sub_1ABAF81A8();
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_56;
        }

        v49 = v51;
      }

      v22 = v70;
      if (v50)
      {
        v53 = (*(v70 + 56) + 16 * v49);
        *v53 = 0xD000000000000011;
        v53[1] = v66;

        sub_1ABD5B920(v73);
      }

      else
      {
        *(v70 + 8 * (v49 >> 6) + 64) |= 1 << v49;
        *(v22[6] + 8 * v49) = v32;
        v54 = (v22[7] + 16 * v49);
        *v54 = 0xD000000000000011;
        v54[1] = v66;
        sub_1ABD5B920(v73);
        v55 = v22[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_53;
        }

        v22[2] = v57;
      }
    }

    v33 = *&v73[8];
    if ((*&v72[24] & 0x100) != 0)
    {
      break;
    }

    v70 = *&v73[8];
    v71 = *&v73[24];
    *v72 = *&v73[40];
    v72[16] = v72[24];
    sub_1ABD5B988(*&v73[8], *&v73[16], *&v73[24], *&v73[32], *&v73[40], *&v73[48], *&v72[24]);
    sub_1ABD5B340(&v70, 0, v67);
    sub_1ABD5B920(v73);
    v34 = v68;
    v35 = v69;
    sub_1ABA93E20(v67, v68);
    v36 = (*(v35 + 16))(v34, v35);
    if (!v37)
    {
      sub_1ABA84B54(v67);
      goto LABEL_38;
    }

    v38 = v36;
    v39 = v37;
    swift_isUniquelyReferenced_nonNull_native();
    *&v70 = v22;
    v40 = sub_1ABAF81A8();
    if (__OFADD__(v22[2], (v41 & 1) == 0))
    {
      goto LABEL_54;
    }

    v42 = v40;
    v43 = v41;
    sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
    if (sub_1ABF24C64())
    {
      v44 = sub_1ABAF81A8();
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_56;
      }

      v42 = v44;
    }

    v22 = v70;
    if (v43)
    {
      v46 = (*(v70 + 56) + 16 * v42);
      *v46 = v38;
      v46[1] = v39;

      sub_1ABD5B920(v73);
    }

    else
    {
      *(v70 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(v22[6] + 8 * v42) = v32;
      v58 = (v22[7] + 16 * v42);
      *v58 = v38;
      v58[1] = v39;
      sub_1ABD5B920(v73);
      v59 = v22[2];
      v56 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v56)
      {
        goto LABEL_55;
      }

      v22[2] = v60;
    }

    sub_1ABA84B54(v67);
  }

  v61 = *&v73[8];

  v77 = v33;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  swift_willThrowTypedImpl();
  sub_1ABD5B920(v73);
  sub_1ABA84B54(v74);
  return v22;
}