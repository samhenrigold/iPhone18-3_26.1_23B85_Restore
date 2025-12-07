uint64_t sub_26C0B6258(uint64_t a1, uint64_t a2)
{

  return sub_26C0BD344(a1, a2);
}

uint64_t sub_26C0B62C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C0B632C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26C0B63B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for ServerHandshakeState(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 36);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_26C0B64D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for ServerHandshakeState(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C0B65F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialHandshakeResult(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0B6660(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PartialHandshakeResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26C0B66E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_26C0B67A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C0B685C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C0B68C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26C0B6938(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148E2C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0B69A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26C148E2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26C0B6C1C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA98, &qword_26C14B340);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_26C0B6CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C148B0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_26C148EDC();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_26C0B6E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C148B0C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_26C148EDC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26C0B6FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for HandshakeStateMachine(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26C0B7098(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for HandshakeStateMachine(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C0B7138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 120);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_26C148A1C();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_26C0B7268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 120) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_26C148A1C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C0B7394(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_26C148A6C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_26C0B74D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = sub_26C148A6C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_26C0B7604(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v15 = sub_26C148BDC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[16] + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[18];
      goto LABEL_9;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[21];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_26C0B7890(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  result = sub_26C148BDC();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[16] + 8) = a2;
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[21];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_26C0B7B10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[16];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_26C0B7CAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[16];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_26C0B7E3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[15];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_26C0B7FD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_26C0B8168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26C0B8290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26C0B83B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[7] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_26C0B854C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_26C0B86DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_26C0B8800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABC8, &unk_26C14CCA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_26C0B8A04()
{

  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    sub_26C0BB9B0(v0[9], v1);
  }

  if (v0[13])
  {
  }

  if (v0[22])
  {
    sub_26C0BB9B0(v0[16], v0[17]);
    sub_26C0BB9B0(v0[19], v0[20]);
  }

  if (v0[29])
  {
  }

  if (v0[31])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 312, 7);
}

uint64_t sub_26C0B8B24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Say8SwiftTLS0A11OfferedEPSKVGSiAA0D0VSgIegyn_Ieggg_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C0B8B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GeneralEPSK(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26C0B8C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GeneralEPSK(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_26C0B8CE8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_26C0B8E6C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26C0B8FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C0B9128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C0B9258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C0B9388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C0B94B8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_26C0B9648(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26C0B97D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_26C0B99BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_26C0B9BA0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_26C0B9D30(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26C0B9EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C0B9FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C0BA218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26C0BA2E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C0BA3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HandshakeState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26C0BA48C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HandshakeState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26C0BA54C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C14896C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26C148BDC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[9];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[13] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for PeerCertificateBundle(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_26C0BA6D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C14896C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_26C148BDC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[13] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for PeerCertificateBundle(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_26C0BA878(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148BDC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C0BA8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148BDC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_8SwiftTLS9ExtensionO10ServerNameO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0BAAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26C0BAB9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_26C0BACF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TLSHandshakeStateMachine(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TLSRecordProtector(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[6];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[9]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_26C0BAE68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TLSRecordProtector(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void *sub_26C0BAFC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C1488DC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_26C0BB9B0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_26C148520(v10, 0);
      v14 = sub_26C14884C();
      sub_26C0BB9B0(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_26C0BB174@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_26C0BB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26C0BB28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C0BB344(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C0BB9B0(result, a2);
  }

  return result;
}

void sub_26C0BB37C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26C0BBAA4(a1, a2);
  }
}

uint64_t sub_26C0BB390()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_26C1491AC();
  result = sub_26C1491DC();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0BB464(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  result = sub_26C1491DC();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();

    return sub_26C0BB9B0(v8, v10);
  }

  return result;
}

uint64_t sub_26C0BB528(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_26C1491AC();
  result = sub_26C1491DC();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();
    sub_26C0BB9B0(v8, v10);
    return sub_26C14920C();
  }

  return result;
}

unint64_t sub_26C0BB600()
{
  result = qword_28047A7B0;
  if (!qword_28047A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7B0);
  }

  return result;
}

unint64_t sub_26C0BB654(uint64_t *a1)
{
  v2 = v1;
  v31 = *MEMORY[0x277D85DE8];
  v5 = v2[1];
  v4 = v2[2];
  v6 = v2[3];
  v26 = bswap32(*v2) >> 16;
  v7 = MEMORY[0x277D838B0];
  v8 = MEMORY[0x277CC9C18];
  v29 = MEMORY[0x277D838B0];
  v30 = MEMORY[0x277CC9C18];
  v27 = &v26;
  v28 = &v27;
  __swift_project_boxed_opaque_existential_1(&v27, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = v9 >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  v26 = 0;
  v29 = v7;
  v30 = v8;
  v27 = &v26;
  v28 = &v27;
  __swift_project_boxed_opaque_existential_1(&v27, v7);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v15 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = 0;
      v17 = BYTE6(v4);
      if (BYTE6(v4) < v6)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v16 = v5;
    v17 = v5 >> 32;
LABEL_15:
    sub_26C0BBAA4(v5, v4);
    if (v17 < v6)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v15 == 2)
  {
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    goto LABEL_15;
  }

  v17 = 0;
  v16 = 0;
  if (v6 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v17 < v16)
  {
    goto LABEL_33;
  }

  v18 = sub_26C14889C();
  v20 = v19;
  sub_26C1488CC();
  v21 = v20;
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v22)
    {
      sub_26C0BB9B0(v18, v20);
      sub_26C0BB9B0(v5, v4);
      v4 = BYTE6(v20);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v22 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v18, v21);
    sub_26C0BB9B0(v5, v4);
    v4 = 0;
    goto LABEL_32;
  }

  v24 = *(v18 + 16);
  v23 = *(v18 + 24);
  sub_26C0BB9B0(v18, v21);
  sub_26C0BB9B0(v5, v4);
  v4 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v18, v21);
    sub_26C0BB9B0(v5, v4);
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_35;
    }

    v4 = HIDWORD(v18) - v18;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v4 >> 16)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C10064C(v4, v14);
  return v4 + 4;
}

void *sub_26C0BB8DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C1365D4();
  if ((v7 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v8 = v7;
  result = sub_26C0E0978(a1, &v14, &v16);
  if (v3)
  {
    v10 = v15;
    *a2 = v14;
    *(a2 + 16) = v10;
    return result;
  }

  v11 = v17;
  if (v17 >> 60 == 15)
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  else
  {
    v12 = v18;
    v13 = v16;
    *a3 = v8;
    *(a3 + 8) = v13;
    *(a3 + 16) = v11;
    *(a3 + 24) = v12;
  }

  return result;
}

uint64_t sub_26C0BB9B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26C0BBA04(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 1);
    v7 = *(a1 + 1);
    v8 = *(a1 + 1);
    v5 = v2;
    v6 = *(a2 + 1);
    sub_26C0BBAA4(v7, v8);
    sub_26C0BBAA4(v2, v6);
    v3 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v7, &v5);
    sub_26C0BB9B0(v5, v6);
    sub_26C0BB9B0(v7, v8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_26C0BBAA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_26C0BBAF8()
{
  result = qword_28047A7B8;
  if (!qword_28047A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7B8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C0BBC04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0BBC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C0BBCB8(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  sub_26C1491EC();
  result = sub_26C1491EC();
  v11 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v3 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v3 >> 32;
  }

  else
  {
    v12 = BYTE6(v4);
  }

  if (v12 < v6)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v13 = sub_26C14889C();
  v15 = v14;
  sub_26C1488BC();
  result = sub_26C0BB9B0(v13, v15);
  v16 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v5 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v5 >> 32;
  }

  else
  {
    v17 = BYTE6(v7);
  }

  if (v17 < v8)
  {
    goto LABEL_22;
  }

  v18 = sub_26C14889C();
  v20 = v19;
  sub_26C1488BC();
  sub_26C0BB9B0(v18, v20);
  result = MEMORY[0x26D69BEF0](*(v9 + 16));
  v21 = *(v9 + 16);
  if (v21)
  {
    v22 = (v9 + 32);
    do
    {
      v23 = v22[1];
      v31[0] = *v22;
      v31[1] = v23;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[4];
      v32 = *(v22 + 80);
      v31[3] = v25;
      v31[4] = v26;
      v31[2] = v24;
      v27 = v22[1];
      v35 = *v22;
      v36 = v27;
      v28 = v22[2];
      v29 = v22[3];
      v30 = v22[4];
      v40 = *(v22 + 80);
      v38 = v29;
      v39 = v30;
      v37 = v28;
      sub_26C0BE40C(v31, v33);
      sub_26C128984(a1);
      v33[2] = v37;
      v33[3] = v38;
      v33[4] = v39;
      v34 = v40;
      v33[0] = v35;
      v33[1] = v36;
      result = sub_26C0BE468(v33);
      v22 = (v22 + 88);
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_26C0BBEB0()
{
  sub_26C1491AC();
  sub_26C0BBCB8(v1);
  return sub_26C14920C();
}

uint64_t sub_26C0BBEF4(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C0BBCB8(v2);
  return sub_26C14920C();
}

unint64_t sub_26C0BBF38()
{
  result = qword_28047A7C0;
  if (!qword_28047A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7C0);
  }

  return result;
}

void *sub_26C0BBF8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C13675C();
  if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  v8 = v7;
  v9 = sub_26C13675C();
  if ((v9 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  v10 = v9;
  result = sub_26C0E0990(a1, &v23, &v25);
  if (v3)
  {
    v12 = v24;
    *a2 = v23;
    *(a2 + 16) = v12;
    return result;
  }

  v13 = v26;
  if (v26 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v14 = v25;
  v15 = v27;
  sub_26C0E0978(a1, &v23, &v25);
  if (v26 >> 60 == 15)
  {
    sub_26C0BB344(v14, v13);
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v25 = 0;
    v26 = 0;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v28 = v26;
  v21 = v25;
  v22 = v27;
  v18 = a1[2];
  v19 = *a1;
  v20 = a1[1];
  sub_26C0BBAA4(*a1, v20);
  v16 = sub_26C0DF294(a1, &v25);
  if (!v16)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    sub_26C0BB344(v21, v28);
    sub_26C0BB344(v14, v13);
    *a1 = v19;
    a1[1] = v20;
    a1[2] = v18;
    goto LABEL_6;
  }

  v17 = v16;
  result = sub_26C0BB9B0(v19, v20);
  *a3 = v8;
  *(a3 + 4) = v10;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v21;
  *(a3 + 40) = v28;
  *(a3 + 48) = v22;
  *(a3 + 56) = v17;
  return result;
}

char *sub_26C0BC1D0(uint64_t *a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v48 = *a1;
  LOWORD(v65) = 0;
  v4 = a1[2];
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_62:
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
  }

  v6 = v2;
  v8 = v3 >> 62;
  v9 = MEMORY[0x277D84F90];
  v49 = BYTE6(v3);
  v50 = v3 >> 62;
  while (1)
  {
    if (v8 <= 1)
    {
      v10 = v49;
      if (v8)
      {
        v10 = v48 >> 32;
      }

LABEL_8:
      if (v10 < v5)
      {
        return v9;
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v10 = *(v48 + 24);
      goto LABEL_8;
    }

    if (v5 > 0)
    {
      return v9;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v59 = *a1;
    *(&v59 + 1) = v12;
    if (v5 < v4)
    {
      goto LABEL_63;
    }

    v52 = v9;
    *&v53 = v4;
    *(&v53 + 1) = v5;
    sub_26C0BBAA4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v59, *(&v59 + 1));
    v13 = v65;
    a1[2] = v5;
    v14 = *a1;
    v15 = a1[1];
    LOWORD(v65) = 0;
    v16 = v5 + 2;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_64;
    }

    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v14 >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_57;
    }

LABEL_22:
    *&v59 = v14;
    *(&v59 + 1) = v15;
    if (v16 < v5)
    {
      goto LABEL_65;
    }

    *&v53 = v5;
    *(&v53 + 1) = v5 + 2;
    sub_26C0BBAA4(v14, v15);
    v51 = v14;
    sub_26C0BBAA4(v14, v15);
    sub_26C14878C();
    sub_26C0BB9B0(v59, *(&v59 + 1));
    v19 = bswap32(v65) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_66;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_58;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_67;
    }

    v25 = sub_26C14889C();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v6;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v6;
      if (v28)
      {
        v27 = v25;
      }
    }

    v65 = v25;
    v66 = v26;
    v67 = v27;
    sub_26C1298E0(&v65, bswap32(v13) >> 16, 4u, 0, &v53, &v59);
    if (v29)
    {
      v44 = *(&v53 + 1);
      v45 = v53;
      v39 = v54;
      v43 = v65;
      v42 = v66;
      goto LABEL_60;
    }

    v6 = 0;
    v30 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v65 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v65 >> 32;
    }

    else
    {
      v31 = BYTE6(v66);
    }

    if (__OFSUB__(v31, v67))
    {
      goto LABEL_68;
    }

    if (v31 != v67)
    {
      v39 = 2;
      v40 = v65;
      v41 = v66;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v55 = v61;
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v53 = v59;
      v54 = v60;
      sub_26C0BE468(&v53);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_60:
      sub_26C0BB9B0(v43, v42);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v51;
      a1[1] = v15;
      a1[2] = v5;
      *&v59 = v45;
      *(&v59 + 1) = v44;
      LOBYTE(v60) = v39;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v52;

      *a2 = v45;
      *(a2 + 8) = v44;
      *(a2 + 16) = v39;
      return v9;
    }

    sub_26C0BB9B0(v65, v66);
    sub_26C0BB9B0(v14, v15);
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    v9 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26C0CD87C(0, *(v52 + 2) + 1, 1, v52);
    }

    LODWORD(v8) = v50;
    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    if (v33 >= v32 >> 1)
    {
      v9 = sub_26C0CD87C((v32 > 1), v33 + 1, 1, v9);
    }

    *(v9 + 2) = v33 + 1;
    v34 = &v9[88 * v33];
    v35 = v54;
    *(v34 + 2) = v53;
    *(v34 + 3) = v35;
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v34[112] = v58;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v65) = 0;
    v4 = a1[2];
    v5 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_62;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_57:
  sub_26C0BBAA4(v14, v15);
  v21 = *a1;
  v22 = a1[1];
LABEL_58:
  sub_26C0BB9B0(v21, v22);
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v5;
  return v52;
}

uint64_t sub_26C0BC724(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 33);
  v4 = (result + 33);
  while (v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v3 += 2;
    v7 = v6;
    result = *(v4 - 1) == v5 && *v4 == v7;
    v9 = result != 1 || v2-- == 1;
    v4 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0BC79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26C14912C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26C0BC82C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0BC888(uint64_t a1, uint64_t a2)
{
  v54[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 56);
    for (i = (a2 + 56); ; i += 8)
    {
      v8 = *(v4 - 2);
      v52 = *(v4 - 3);
      v9 = *(v4 - 1);
      v11 = *(i - 3);
      v10 = *(i - 2);
      v12 = *(i - 1);
      v49 = *i;
      v50 = *v4;
      v13 = v8 >> 62;
      if ((v8 >> 62) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = *(v4 - 3);
        v15 = *(v52 + 24);
LABEL_16:
        sub_26C0BBAA4(v14, v8);
        if (v15 < v9)
        {
          goto LABEL_79;
        }

        goto LABEL_19;
      }

      if (v9 > 0)
      {
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
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
      }

LABEL_19:
      sub_26C0BBAA4(v11, v10);
      v16 = sub_26C14889C();
      v18 = v17;
      v19 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v19 == 2)
        {
          v20 = *(v11 + 24);
        }

        else
        {
          v20 = 0;
        }
      }

      else if (v19)
      {
        v20 = v11 >> 32;
      }

      else
      {
        v20 = BYTE6(v10);
      }

      if (v20 < v12)
      {
        goto LABEL_80;
      }

      v51 = v11;
      v21 = sub_26C14889C();
      v23 = v18 >> 62;
      v24 = v22 >> 62;
      if (v18 >> 62 == 3)
      {
        v25 = 0;
        if (!v16 && v18 == 0xC000000000000000 && v22 >> 62 == 3)
        {
          v25 = 0;
          if (!v21 && v22 == 0xC000000000000000)
          {
            sub_26C0BB9B0(0, 0xC000000000000000);
            v6 = 0;
            v7 = 0xC000000000000000;
            goto LABEL_7;
          }
        }

LABEL_43:
        if (v24 <= 1)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v31 = *(v16 + 16);
          v30 = *(v16 + 24);
          v28 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v28)
          {
            goto LABEL_83;
          }

          goto LABEL_43;
        }

        v25 = 0;
        if (v24 <= 1)
        {
          goto LABEL_44;
        }
      }

      else if (v23)
      {
        LODWORD(v25) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_84;
        }

        v25 = v25;
        if (v24 <= 1)
        {
LABEL_44:
          if (v24)
          {
            LODWORD(v29) = HIDWORD(v21) - v21;
            if (__OFSUB__(HIDWORD(v21), v21))
            {
              goto LABEL_81;
            }

            v29 = v29;
          }

          else
          {
            v29 = BYTE6(v22);
          }

          goto LABEL_48;
        }
      }

      else
      {
        v25 = BYTE6(v18);
        if (v24 <= 1)
        {
          goto LABEL_44;
        }
      }

LABEL_37:
      if (v24 != 2)
      {
        if (v25)
        {
          goto LABEL_76;
        }

LABEL_6:
        sub_26C0BB9B0(v21, v22);
        v6 = v16;
        v7 = v18;
LABEL_7:
        sub_26C0BB9B0(v6, v7);
        sub_26C0BB9B0(v11, v10);
        sub_26C0BB9B0(v52, v8);
        if (v50 != v49)
        {
          return 0;
        }

        goto LABEL_8;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        goto LABEL_82;
      }

LABEL_48:
      if (v25 != v29)
      {
LABEL_76:
        sub_26C0BB9B0(v21, v22);
        sub_26C0BB9B0(v16, v18);
        sub_26C0BB9B0(v11, v10);
        sub_26C0BB9B0(v52, v8);
        return 0;
      }

      if (v25 < 1)
      {
        goto LABEL_6;
      }

      v48 = v8;
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          memset(v54, 0, 14);
          v42 = v21;
          v43 = v22;
          sub_26C0BBAA4(v21, v22);
          sub_26C0BE04C(v54, v42, v43, &v53);
          sub_26C0BB9B0(v42, v43);
          sub_26C0BB9B0(v16, v18);
          v34 = v42;
          v35 = v43;
          goto LABEL_71;
        }

        v46 = v22;
        v47 = v3;
        v36 = *(v16 + 16);
        v37 = *(v16 + 24);
        v45 = v21;
        sub_26C0BBAA4(v21, v22);
        v38 = sub_26C1487BC();
        if (v38)
        {
          v39 = sub_26C1487EC();
          if (__OFSUB__(v36, v39))
          {
            goto LABEL_87;
          }

          v38 += v36 - v39;
        }

        if (__OFSUB__(v37, v36))
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (!v23)
        {
          v54[0] = v16;
          LOWORD(v54[1]) = v18;
          BYTE2(v54[1]) = BYTE2(v18);
          BYTE3(v54[1]) = BYTE3(v18);
          BYTE4(v54[1]) = BYTE4(v18);
          BYTE5(v54[1]) = BYTE5(v18);
          v32 = v21;
          v33 = v22;
          sub_26C0BBAA4(v21, v22);
          sub_26C0BE04C(v54, v32, v33, &v53);
          sub_26C0BB9B0(v32, v33);
          sub_26C0BB9B0(v16, v18);
          v34 = v32;
          v35 = v33;
LABEL_71:
          sub_26C0BB9B0(v34, v35);
          v41 = v53;
          goto LABEL_72;
        }

        v47 = v3;
        if (v16 >> 32 < v16)
        {
          goto LABEL_85;
        }

        v45 = v21;
        v46 = v22;
        sub_26C0BBAA4(v21, v22);
        v38 = sub_26C1487BC();
        if (v38)
        {
          v40 = sub_26C1487EC();
          if (__OFSUB__(v16, v40))
          {
            goto LABEL_88;
          }

          v38 += v16 - v40;
        }
      }

      sub_26C1487DC();
      v3 = v47;
      sub_26C0BE04C(v38, v45, v46, v54);
      sub_26C0BB9B0(v45, v46);
      sub_26C0BB9B0(v16, v18);
      sub_26C0BB9B0(v45, v46);
      v41 = LOBYTE(v54[0]);
LABEL_72:
      sub_26C0BB9B0(v51, v10);
      sub_26C0BB9B0(v52, v48);
      result = 0;
      if (!v41 || v50 != v49)
      {
        return result;
      }

LABEL_8:
      v4 += 8;
      if (!--v2)
      {
        return 1;
      }
    }

    if (!v13)
    {
      if (BYTE6(v8) < v9)
      {
        goto LABEL_79;
      }

      goto LABEL_19;
    }

    v14 = *(v4 - 3);
    v15 = v52 >> 32;
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_26C0BCDF8(uint64_t a1, uint64_t a2)
{
  v52[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v11 = *(v4 - 1);
      v50 = *(v4 - 2);
      v12 = *v4;
      v14 = *(i - 2);
      v13 = *(i - 1);
      v15 = *i;
      v16 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = *(v4 - 2);
        v18 = *(v50 + 24);
LABEL_16:
        sub_26C0BBAA4(v17, v11);
        if (v18 < v12)
        {
          goto LABEL_77;
        }

        goto LABEL_19;
      }

      if (v12 > 0)
      {
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
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
      }

LABEL_19:
      sub_26C0BBAA4(v14, v13);
      v19 = sub_26C14889C();
      v21 = v20;
      v22 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(v14 + 24);
        }

        else
        {
          v23 = 0;
        }
      }

      else if (v22)
      {
        v23 = v14 >> 32;
      }

      else
      {
        v23 = BYTE6(v13);
      }

      if (v23 < v15)
      {
        goto LABEL_78;
      }

      v49 = v14;
      v24 = sub_26C14889C();
      v26 = v21 >> 62;
      v27 = v25 >> 62;
      if (v21 >> 62 != 3)
      {
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v36 = *(v19 + 16);
            v35 = *(v19 + 24);
            v33 = __OFSUB__(v35, v36);
            v28 = v35 - v36;
            if (v33)
            {
              goto LABEL_82;
            }

LABEL_43:
            if (v27 <= 1)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v28 = 0;
            if (v27 <= 1)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          if (!v26)
          {
            v28 = BYTE6(v21);
            if (v27 > 1)
            {
              goto LABEL_37;
            }

LABEL_44:
            if (v27)
            {
              LODWORD(v34) = HIDWORD(v24) - v24;
              if (__OFSUB__(HIDWORD(v24), v24))
              {
                goto LABEL_80;
              }

              v34 = v34;
            }

            else
            {
              v34 = BYTE6(v25);
            }

LABEL_50:
            if (v28 != v34)
            {
LABEL_75:
              sub_26C0BB9B0(v24, v25);
              sub_26C0BB9B0(v19, v21);
              sub_26C0BB9B0(v14, v13);
              sub_26C0BB9B0(v50, v11);
              return 0;
            }

            if (v28 >= 1)
            {
              v48 = v11;
              if (v26 > 1)
              {
                if (v26 != 2)
                {
                  memset(v52, 0, 14);
                  v6 = v24;
                  v7 = v25;
                  sub_26C0BBAA4(v24, v25);
                  sub_26C0BE04C(v52, v6, v7, &v51);
                  sub_26C0BB9B0(v6, v7);
                  sub_26C0BB9B0(v19, v21);
                  v8 = v6;
                  v9 = v7;
                  goto LABEL_6;
                }

                v46 = v25;
                v47 = v3;
                v39 = *(v19 + 16);
                v40 = *(v19 + 24);
                v45 = v24;
                sub_26C0BBAA4(v24, v25);
                v41 = sub_26C1487BC();
                if (v41)
                {
                  v42 = sub_26C1487EC();
                  if (__OFSUB__(v39, v42))
                  {
                    goto LABEL_85;
                  }

                  v41 += v39 - v42;
                }

                if (__OFSUB__(v40, v39))
                {
                  goto LABEL_84;
                }
              }

              else
              {
                if (!v26)
                {
                  v52[0] = v19;
                  LOWORD(v52[1]) = v21;
                  BYTE2(v52[1]) = BYTE2(v21);
                  BYTE3(v52[1]) = BYTE3(v21);
                  BYTE4(v52[1]) = BYTE4(v21);
                  BYTE5(v52[1]) = BYTE5(v21);
                  v37 = v24;
                  v38 = v25;
                  sub_26C0BBAA4(v24, v25);
                  sub_26C0BE04C(v52, v37, v38, &v51);
                  sub_26C0BB9B0(v37, v38);
                  sub_26C0BB9B0(v19, v21);
                  v8 = v37;
                  v9 = v38;
LABEL_6:
                  sub_26C0BB9B0(v8, v9);
                  v10 = v51;
LABEL_7:
                  sub_26C0BB9B0(v49, v13);
                  sub_26C0BB9B0(v50, v48);
                  if ((v10 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_8;
                }

                v47 = v3;
                if (v19 >> 32 < v19)
                {
                  goto LABEL_83;
                }

                v45 = v24;
                v46 = v25;
                sub_26C0BBAA4(v24, v25);
                v41 = sub_26C1487BC();
                if (v41)
                {
                  v43 = sub_26C1487EC();
                  if (__OFSUB__(v19, v43))
                  {
                    goto LABEL_86;
                  }

                  v41 += v19 - v43;
                }
              }

              sub_26C1487DC();
              v3 = v47;
              sub_26C0BE04C(v41, v45, v46, v52);
              sub_26C0BB9B0(v45, v46);
              sub_26C0BB9B0(v19, v21);
              sub_26C0BB9B0(v45, v46);
              v10 = v52[0];
              goto LABEL_7;
            }

            goto LABEL_55;
          }

          LODWORD(v28) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_81;
          }

          v28 = v28;
          if (v27 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_37:
        if (v27 == 2)
        {
          v32 = *(v24 + 16);
          v31 = *(v24 + 24);
          v33 = __OFSUB__(v31, v32);
          v34 = v31 - v32;
          if (v33)
          {
            goto LABEL_79;
          }

          goto LABEL_50;
        }

        if (v28)
        {
          goto LABEL_75;
        }

LABEL_55:
        sub_26C0BB9B0(v24, v25);
        v29 = v19;
        v30 = v21;
        goto LABEL_56;
      }

      v28 = 0;
      if (v19)
      {
        goto LABEL_43;
      }

      if (v21 != 0xC000000000000000)
      {
        goto LABEL_43;
      }

      if (v25 >> 62 != 3)
      {
        goto LABEL_43;
      }

      v28 = 0;
      if (v24 || v25 != 0xC000000000000000)
      {
        goto LABEL_43;
      }

      sub_26C0BB9B0(0, 0xC000000000000000);
      v29 = 0;
      v30 = 0xC000000000000000;
LABEL_56:
      sub_26C0BB9B0(v29, v30);
      sub_26C0BB9B0(v14, v13);
      sub_26C0BB9B0(v50, v11);
LABEL_8:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (!v16)
    {
      if (BYTE6(v11) < v12)
      {
        goto LABEL_77;
      }

      goto LABEL_19;
    }

    v17 = *(v4 - 2);
    v18 = v50 >> 32;
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_26C0BD344(uint64_t a1, uint64_t a2)
{
  v55[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 56);
    v5 = (a2 + 56);
    do
    {
      if (!v2)
      {
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
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
      }

      if (*(v4 - 12) != *(v5 - 12))
      {
        return 0;
      }

      v10 = *(v4 - 2);
      v9 = *(v4 - 1);
      v11 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v10 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v10 >> 32;
      }

      else
      {
        v12 = BYTE6(v9);
      }

      if (v12 < *v4)
      {
        goto LABEL_77;
      }

      v52 = v2;
      v14 = *(v5 - 2);
      v13 = *(v5 - 1);
      v15 = *v5;
      sub_26C0BBAA4(v10, v9);
      sub_26C0BBAA4(v14, v13);
      v53 = v10;
      v16 = sub_26C14889C();
      v18 = v17;
      v19 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v19 == 2)
        {
          v21 = v14;
          v20 = *(v14 + 24);
          goto LABEL_26;
        }

        v20 = 0;
      }

      else if (v19)
      {
        v20 = v14 >> 32;
      }

      else
      {
        v20 = BYTE6(v13);
      }

      v21 = v14;
LABEL_26:
      if (v20 < v15)
      {
        goto LABEL_78;
      }

      v22 = sub_26C14889C();
      v24 = v18 >> 62;
      v25 = v23 >> 62;
      if (v18 >> 62 == 3)
      {
        v26 = 0;
        if (!v16 && v18 == 0xC000000000000000 && v23 >> 62 == 3)
        {
          v26 = 0;
          if (!v22 && v23 == 0xC000000000000000)
          {
            sub_26C0BB9B0(0, 0xC000000000000000);
            v27 = 0;
            v28 = 0xC000000000000000;
            goto LABEL_56;
          }
        }

LABEL_43:
        if (v25 <= 1)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v34 = *(v16 + 16);
          v33 = *(v16 + 24);
          v31 = __OFSUB__(v33, v34);
          v26 = v33 - v34;
          if (v31)
          {
            goto LABEL_81;
          }

          goto LABEL_43;
        }

        v26 = 0;
        if (v25 <= 1)
        {
          goto LABEL_44;
        }
      }

      else if (v24)
      {
        LODWORD(v26) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_82;
        }

        v26 = v26;
        if (v25 <= 1)
        {
LABEL_44:
          if (v25)
          {
            LODWORD(v32) = HIDWORD(v22) - v22;
            if (__OFSUB__(HIDWORD(v22), v22))
            {
              goto LABEL_80;
            }

            v32 = v32;
          }

          else
          {
            v32 = BYTE6(v23);
          }

          goto LABEL_50;
        }
      }

      else
      {
        v26 = BYTE6(v18);
        if (v25 <= 1)
        {
          goto LABEL_44;
        }
      }

LABEL_37:
      if (v25 != 2)
      {
        if (v26)
        {
          goto LABEL_74;
        }

LABEL_55:
        sub_26C0BB9B0(v22, v23);
        v27 = v16;
        v28 = v18;
LABEL_56:
        sub_26C0BB9B0(v27, v28);
        sub_26C0BB9B0(v21, v13);
        sub_26C0BB9B0(v53, v9);
        goto LABEL_7;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      v31 = __OFSUB__(v29, v30);
      v32 = v29 - v30;
      if (v31)
      {
        goto LABEL_79;
      }

LABEL_50:
      if (v26 != v32)
      {
LABEL_74:
        sub_26C0BB9B0(v22, v23);
        sub_26C0BB9B0(v16, v18);
        sub_26C0BB9B0(v21, v13);
        sub_26C0BB9B0(v53, v9);
        return 0;
      }

      if (v26 < 1)
      {
        goto LABEL_55;
      }

      v51 = v9;
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v48 = v3;
          v50 = v21;
          v37 = *(v16 + 16);
          v38 = *(v16 + 24);
          v44 = v22;
          v46 = v23;
          sub_26C0BBAA4(v22, v23);
          v39 = sub_26C1487BC();
          if (v39)
          {
            v40 = sub_26C1487EC();
            if (__OFSUB__(v37, v40))
            {
              goto LABEL_85;
            }

            v39 += v37 - v40;
          }

          if (__OFSUB__(v38, v37))
          {
            goto LABEL_84;
          }

          sub_26C1487DC();
          v3 = v48;
          sub_26C0BE04C(v39, v44, v46, v55);
          sub_26C0BB9B0(v44, v46);
          sub_26C0BB9B0(v16, v18);
          sub_26C0BB9B0(v44, v46);
          v8 = v55[0];
          v21 = v50;
        }

        else
        {
          memset(v55, 0, 14);
          v6 = v22;
          v7 = v23;
          sub_26C0BBAA4(v22, v23);
          sub_26C0BE04C(v55, v6, v7, &v54);
          sub_26C0BB9B0(v6, v7);
          sub_26C0BB9B0(v16, v18);
          sub_26C0BB9B0(v6, v7);
          v8 = v54;
        }
      }

      else
      {
        v49 = v21;
        if (v24)
        {
          if (v16 >> 32 < v16)
          {
            goto LABEL_83;
          }

          v45 = v22;
          v47 = v23;
          sub_26C0BBAA4(v22, v23);
          v41 = sub_26C1487BC();
          if (v41)
          {
            v42 = sub_26C1487EC();
            if (__OFSUB__(v16, v42))
            {
              goto LABEL_86;
            }

            v41 += v16 - v42;
          }

          sub_26C1487DC();
          sub_26C0BE04C(v41, v45, v47, v55);
          sub_26C0BB9B0(v45, v47);
          sub_26C0BB9B0(v16, v18);
          sub_26C0BB9B0(v45, v47);
          v8 = v55[0];
        }

        else
        {
          v55[0] = v16;
          LOWORD(v55[1]) = v18;
          BYTE2(v55[1]) = BYTE2(v18);
          BYTE3(v55[1]) = BYTE3(v18);
          BYTE4(v55[1]) = BYTE4(v18);
          BYTE5(v55[1]) = BYTE5(v18);
          v35 = v22;
          v36 = v23;
          sub_26C0BBAA4(v22, v23);
          sub_26C0BE04C(v55, v35, v36, &v54);
          sub_26C0BB9B0(v35, v36);
          sub_26C0BB9B0(v16, v18);
          sub_26C0BB9B0(v35, v36);
          v8 = v54;
          v21 = v49;
        }
      }

      sub_26C0BB9B0(v21, v13);
      sub_26C0BB9B0(v53, v51);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v4 += 4;
      v5 += 4;
      v2 = v52 - 1;
    }

    while (v52 != 1);
  }

  return 1;
}

uint64_t sub_26C0BD914(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_26C0BE40C(v27, v14);
    sub_26C0BE40C(v32, v14);
    v12 = sub_26C12A998(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_26C0BE468(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_26C0BE468(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_26C0BDA84(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v68 = result + 32;
  v67 = a2 + 32;
  v66 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_75;
    }

    v4 = (v68 + 32 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      v8 = *v4;
      if (v7 == 2)
      {
        v10 = *(v5 + 24);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v8 = *v4;
      v9 = v5 >> 32;
      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = BYTE6(v6);
      }
    }

    if (v10 < v4[2])
    {
      goto LABEL_76;
    }

    v11 = v4[3];
    v12 = (v67 + 32 * v3);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    sub_26C0BBAA4(v8, v6);

    sub_26C0BBAA4(v14, v13);

    v17 = v13;
    v18 = v8;
    result = sub_26C14889C();
    v70 = result;
    v20 = v19;
    v21 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v23 = v14;
        v22 = *(v14 + 24);
        goto LABEL_22;
      }

      v22 = 0;
    }

    else
    {
      v22 = v21 ? v14 >> 32 : BYTE6(v13);
    }

    v23 = v14;
LABEL_22:
    if (v22 < v16)
    {
      goto LABEL_77;
    }

    result = sub_26C14889C();
    v25 = v20 >> 62;
    v26 = v24 >> 62;
    if (v20 >> 62 != 3)
    {
      if (v25 == 2)
      {
        v31 = *(v70 + 16);
        v30 = *(v70 + 24);
        v32 = __OFSUB__(v30, v31);
        v27 = v30 - v31;
        if (v32)
        {
          goto LABEL_81;
        }

LABEL_36:
        if (v26 > 1)
        {
          goto LABEL_42;
        }
      }

      else if (v25 == 1)
      {
        LODWORD(v27) = HIDWORD(v70) - v70;
        if (__OFSUB__(HIDWORD(v70), v70))
        {
          goto LABEL_80;
        }

        v27 = v27;
        if (v26 > 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = BYTE6(v20);
        if (v26 > 1)
        {
LABEL_42:
          if (v26 != 2)
          {
            if (v27)
            {
LABEL_68:
              sub_26C0BB9B0(result, v24);
              sub_26C0BB9B0(v70, v20);
LABEL_69:
              sub_26C0BB9B0(v23, v17);

              v63 = v18;
              v64 = v6;
              goto LABEL_70;
            }

LABEL_49:
            sub_26C0BB9B0(result, v24);
            v28 = v70;
            v29 = v20;
            goto LABEL_50;
          }

          v35 = *(result + 16);
          v34 = *(result + 24);
          v32 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v32)
          {
            goto LABEL_79;
          }

LABEL_44:
          if (v27 != v33)
          {
            goto LABEL_68;
          }

          if (v27 >= 1)
          {
            v69 = v6;
            v36 = result;
            v37 = v24;
            sub_26C0BBAA4(result, v24);
            v65 = sub_26C0BE27C(v70, v20, v36, v37);
            sub_26C0BB9B0(v70, v20);
            result = sub_26C0BB9B0(v36, v37);
            if (v65)
            {
              v6 = v69;
              goto LABEL_51;
            }

            sub_26C0BB9B0(v23, v17);

            v63 = v18;
LABEL_67:
            v64 = v69;
LABEL_70:
            sub_26C0BB9B0(v63, v64);

            return 0;
          }

          goto LABEL_49;
        }
      }

      if (v26)
      {
        LODWORD(v33) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_78;
        }

        v33 = v33;
      }

      else
      {
        v33 = BYTE6(v24);
      }

      goto LABEL_44;
    }

    v27 = 0;
    if (v70)
    {
      goto LABEL_36;
    }

    if (v20 != 0xC000000000000000)
    {
      goto LABEL_36;
    }

    if (v24 >> 62 != 3)
    {
      goto LABEL_36;
    }

    v27 = 0;
    if (result || v24 != 0xC000000000000000)
    {
      goto LABEL_36;
    }

    sub_26C0BB9B0(0, 0xC000000000000000);
    v28 = 0;
    v29 = 0xC000000000000000;
LABEL_50:
    result = sub_26C0BB9B0(v28, v29);
LABEL_51:
    v38 = *(v11 + 16);
    if (v38 != *(v15 + 16))
    {
      goto LABEL_69;
    }

    if (v38 && v11 != v15)
    {
      break;
    }

    sub_26C0BB9B0(v23, v17);

    v61 = v18;
    v62 = v6;
LABEL_63:
    sub_26C0BB9B0(v61, v62);

    v2 = v66;
    ++v3;
    result = 1;
    if (v3 == v66)
    {
      return result;
    }
  }

  v69 = v6;
  if (*(v11 + 16))
  {
    v39 = v18;
    v40 = v17;
    v41 = 0;
    v42 = v38 - 1;
    v43 = 32;
    while (1)
    {
      v44 = *(v11 + v43 + 16);
      v84[0] = *(v11 + v43);
      v84[1] = v44;
      v45 = *(v11 + v43 + 32);
      v46 = *(v11 + v43 + 48);
      v47 = *(v11 + v43 + 64);
      v85 = *(v11 + v43 + 80);
      v84[3] = v46;
      v84[4] = v47;
      v84[2] = v45;
      v48 = *(v11 + v43 + 16);
      v78 = *(v11 + v43);
      v79 = v48;
      v49 = *(v11 + v43 + 32);
      v50 = *(v11 + v43 + 48);
      v51 = *(v11 + v43 + 64);
      v83 = *(v11 + v43 + 80);
      v81 = v50;
      v82 = v51;
      v80 = v49;
      if (v41 >= *(v15 + 16))
      {
        break;
      }

      v52 = *(v15 + v43 + 16);
      v86[0] = *(v15 + v43);
      v86[1] = v52;
      v53 = *(v15 + v43 + 32);
      v54 = *(v15 + v43 + 48);
      v55 = *(v15 + v43 + 64);
      v87 = *(v15 + v43 + 80);
      v86[3] = v54;
      v86[4] = v55;
      v86[2] = v53;
      v56 = *(v15 + v43 + 16);
      v72 = *(v15 + v43);
      v73 = v56;
      v57 = *(v15 + v43 + 32);
      v58 = *(v15 + v43 + 48);
      v59 = *(v15 + v43 + 64);
      v77 = *(v15 + v43 + 80);
      v75 = v58;
      v76 = v59;
      v74 = v57;
      sub_26C0BE40C(v84, v71);
      sub_26C0BE40C(v86, v71);
      v60 = sub_26C12A998(&v78, &v72);
      v88[2] = v74;
      v88[3] = v75;
      v88[4] = v76;
      v89 = v77;
      v88[0] = v72;
      v88[1] = v73;
      sub_26C0BE468(v88);
      v90[2] = v80;
      v90[3] = v81;
      v90[4] = v82;
      v91 = v83;
      v90[0] = v78;
      v90[1] = v79;
      result = sub_26C0BE468(v90);
      if ((v60 & 1) == 0)
      {
        sub_26C0BB9B0(v23, v40);

        v63 = v39;
        goto LABEL_67;
      }

      if (v42 == v41)
      {
        sub_26C0BB9B0(v23, v40);

        v61 = v39;
        v62 = v69;
        goto LABEL_63;
      }

      v43 += 88;
      if (++v41 >= *(v11 + 16))
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
LABEL_73:
    __break(1u);
  }

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
  return result;
}

uint64_t sub_26C0BDFF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0BE04C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26C1487BC();
    if (v10)
    {
      v11 = sub_26C1487EC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26C1487DC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26C1487BC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26C1487EC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26C1487DC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26C0BE27C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26C0BE4BC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26C0BB9B0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_26C0BE04C(v13, a3, a4, &v12);
  v10 = v4;
  sub_26C0BB9B0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_26C0BE4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26C1487BC();
  v11 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26C1487DC();
  sub_26C0BE04C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26C0BE574(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a2 + 32);
  v12 = *(a2 + 40);
  v7 = *(a2 + 56);
  v8 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v13 = v8;
  v11 = v4;
  v14 = *(a2 + 16);
  sub_26C0BBAA4(v15, v16);
  sub_26C0BBAA4(v8, v14);
  LOBYTE(v8) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v15, &v13);
  sub_26C0BB9B0(v13, v14);
  sub_26C0BB9B0(v15, v16);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v15 = v3;
  v16 = v11;
  v13 = v6;
  v14 = v12;
  sub_26C0BBAA4(v3, v11);
  sub_26C0BBAA4(v6, v12);
  v9 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v15, &v13);
  sub_26C0BB9B0(v13, v14);
  sub_26C0BB9B0(v15, v16);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BD914(v5, v7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26C0BE710()
{
  result = qword_28047A7D0;
  if (!qword_28047A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7D0);
  }

  return result;
}

unint64_t sub_26C0BE764()
{
  result = qword_28047A7D8;
  if (!qword_28047A7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A7C8, &qword_26C149F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7D8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26C0BE824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C0BE86C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C0BE8D4(uint64_t a1, uint64_t a2)
{

  return sub_26C0B6258(a1, a2);
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26C0BE964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 105))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 104);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C0BE9AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C0BEA28(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 104);
  if (v7 <= 3)
  {
    if (*(v1 + 104) > 1u)
    {
      if (v7 == 2)
      {
        MEMORY[0x26D69BEF0](2);
        result = MEMORY[0x26D69BEF0](*(v4 + 16));
        v13 = *(v4 + 16);
        if (v13)
        {
          v14 = v4 + 32;
          do
          {
            v15 = *(v14 + 16);
            v36[0] = *v14;
            v36[1] = v15;
            v16 = *(v14 + 32);
            v17 = *(v14 + 48);
            v18 = *(v14 + 64);
            v37 = *(v14 + 80);
            v36[3] = v17;
            v36[4] = v18;
            v36[2] = v16;
            v19 = *(v14 + 16);
            v40 = *v14;
            v41 = v19;
            v20 = *(v14 + 32);
            v21 = *(v14 + 48);
            v22 = *(v14 + 64);
            LOBYTE(v45) = *(v14 + 80);
            v43 = v21;
            v44 = v22;
            v42 = v20;
            sub_26C0BE40C(v36, v38);
            sub_26C128984(a1);
            v38[2] = v42;
            v38[3] = v43;
            v38[4] = v44;
            v39 = v45;
            v38[0] = v40;
            v38[1] = v41;
            result = sub_26C0BE468(v38);
            v14 += 88;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        MEMORY[0x26D69BEF0](3);
        *&v40 = v4;
        *(&v40 + 1) = v3;
        *&v41 = v5;
        *(&v41 + 1) = v6;
        return sub_26C0BF998(a1);
      }
    }

    else
    {
      *&v40 = *v1;
      *(&v40 + 1) = v3;
      *&v41 = v5;
      *(&v41 + 1) = v6;
      if (v7)
      {
        v25 = *(v1 + 48);
        v42 = *(v1 + 32);
        v43 = v25;
        v26 = *(v1 + 80);
        v44 = *(v1 + 64);
        v45 = v26;
        MEMORY[0x26D69BEF0](1);
        return sub_26C121EDC(a1);
      }

      else
      {
        v8 = *(v1 + 80);
        v44 = *(v1 + 64);
        v45 = v8;
        v46 = *(v1 + 96);
        v9 = *(v1 + 48);
        v42 = *(v1 + 32);
        v43 = v9;
        MEMORY[0x26D69BEF0](0);
        return sub_26C120BDC(a1);
      }
    }

    return result;
  }

  if (*(v1 + 104) > 5u)
  {
    if (v7 != 6)
    {
      MEMORY[0x26D69BEF0](7);
      *&v40 = v4;
      *(&v40 + 1) = v3;
      *&v41 = v5;
      *(&v41 + 1) = v6;
      v29 = *(v1 + 48);
      v42 = *(v1 + 32);
      v43 = v29;
      return sub_26C0BBCB8(a1);
    }

    result = MEMORY[0x26D69BEF0](6);
    v23 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v24 = *(v4 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v23)
    {
      v24 = v4 >> 32;
    }

    else
    {
      v24 = BYTE6(v3);
    }

    if (v24 < v5)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }
  }

  else
  {
    if (v7 == 4)
    {
      result = MEMORY[0x26D69BEF0](4);
      v11 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v4 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v4 >> 32;
      }

      else
      {
        v12 = BYTE6(v3);
      }

      if (v12 >= v5)
      {
        v30 = sub_26C14889C();
        v32 = v31;
        sub_26C1488BC();
        sub_26C0BB9B0(v30, v32);

        return sub_26C12A7B4(a1, v6);
      }

      __break(1u);
      goto LABEL_49;
    }

    MEMORY[0x26D69BEF0](5);
    result = sub_26C1491DC();
    v27 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v27 == 2)
      {
        v28 = *(v3 + 24);
      }

      else
      {
        v28 = 0;
      }
    }

    else if (v27)
    {
      v28 = v3 >> 32;
    }

    else
    {
      v28 = BYTE6(v5);
    }

    if (v28 < v6)
    {
      goto LABEL_50;
    }
  }

  v33 = sub_26C14889C();
  v35 = v34;
  sub_26C1488BC();

  return sub_26C0BB9B0(v33, v35);
}

uint64_t sub_26C0BEDD8()
{
  sub_26C1491AC();
  sub_26C0BEA28(v1);
  return sub_26C14920C();
}

uint64_t sub_26C0BEE1C(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C0BEA28(v2);
  return sub_26C14920C();
}

unint64_t sub_26C0BEE60()
{
  result = qword_28047A7E0;
  if (!qword_28047A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7E0);
  }

  return result;
}

uint64_t sub_26C0BEEB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  *&v44[64] = a1[4];
  *v45 = v3;
  *&v45[9] = *(a1 + 89);
  v4 = a1[1];
  *v44 = *a1;
  *&v44[16] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  *&v44[32] = a1[2];
  *&v44[48] = v5;
  v8 = a2[1];
  *v46 = *a2;
  *&v46[16] = v8;
  *&v47[9] = *(a2 + 89);
  v9 = a2[3];
  v10 = a2[5];
  *&v46[64] = a2[4];
  *v47 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  *&v46[32] = a2[2];
  *&v46[48] = v11;
  v48[0] = v7;
  v48[1] = v6;
  *(v49 + 9) = *(a1 + 89);
  v14 = a1[5];
  v48[4] = *&v44[64];
  v49[0] = v14;
  v48[2] = *&v44[32];
  v48[3] = v2;
  v49[2] = v12;
  v49[3] = v13;
  *(v50 + 9) = *(a2 + 89);
  v15 = a2[5];
  v49[6] = *&v46[64];
  v50[0] = v15;
  v49[4] = *&v46[32];
  v49[5] = v9;
  v16 = *&v44[8];
  v17 = *v44;
  v18 = *&v44[24];
  if (v45[24] <= 3u)
  {
    if (v45[24] <= 1u)
    {
      v19 = *&v45[8];
      if (v45[24])
      {
        if (v47[24] == 1 && v46[0] == v44[0] && v46[1] == v44[1] && *&v44[8] == *&v46[8] && *&v44[24] == *&v46[24] && *&v44[40] == *&v46[40] && *&v44[56] == *&v46[56] && *&v44[72] == *&v46[72] && *v47 == *v45 && v47[2] == v45[2])
        {
          v21 = *&v47[8];
          sub_26C0BF530(v46, v43);
          sub_26C0BF530(v44, v43);
          v22 = v19;
LABEL_37:
          v29 = sub_26C0BD914(v22, v21);
          sub_26C0BF568(v48);
          if (v29)
          {
            goto LABEL_47;
          }

          goto LABEL_51;
        }
      }

      else if (!v47[24] && v46[0] == v44[0] && v46[1] == v44[1] && *&v44[8] == *&v46[8] && *&v44[24] == *&v46[24] && *&v44[40] == *&v46[40] && *&v44[56] == *&v46[56] && *&v44[72] == *&v46[72])
      {
        v20 = *&v45[16];
        v21 = *&v47[16];
        if (sub_26C0BE8CC() & 1) != 0 && (sub_26C0BC82C(*&v45[8], *&v47[8]))
        {
          sub_26C0BF530(v46, v43);
          sub_26C0BF530(v44, v43);
          v22 = v20;
          goto LABEL_37;
        }
      }

      goto LABEL_50;
    }

    if (v45[24] == 2)
    {
      if (v47[24] != 2)
      {
        goto LABEL_50;
      }

      v27 = *v46;
      sub_26C0BF530(v46, v43);
      sub_26C0BF530(v44, v43);
      v28 = sub_26C0BD914(v17, v27);
      sub_26C0BF568(v48);
      return v28 & 1;
    }

    if (v47[24] != 3)
    {
      goto LABEL_50;
    }

    v31 = *&v46[24];
    v32 = *v46;
    v42[0] = *v44;
    *&v42[1] = *&v44[16];
    v38 = *&v46[8];
    *v39 = *v46;
    *&v39[8] = *&v46[8];
    sub_26C0BF530(v46, v43);
    sub_26C0BF530(v44, v43);
    sub_26C0BF530(v46, v43);
    sub_26C0BF530(v44, v43);
    sub_26C0BBAA4(v17, v16);
    sub_26C0BBAA4(v32, v38);
    v33 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(v42, v39);
    sub_26C0BB9B0(*v39, *&v39[8]);
    sub_26C0BB9B0(*&v42[0], *(&v42[0] + 1));
    if (v33)
    {
      v26 = sub_26C0BD914(v18, v31);
      goto LABEL_45;
    }

    goto LABEL_53;
  }

  if (v45[24] <= 5u)
  {
    if (v45[24] != 4)
    {
      if (v47[24] != 5 || *v46 != *v44)
      {
        goto LABEL_50;
      }

      *&v42[0] = *&v44[8];
      *(v42 + 8) = *&v44[16];
      *v39 = *&v46[8];
      *&v39[16] = *&v46[24];
      sub_26C0BF530(v46, v43);
      sub_26C0BF530(v44, v43);
      sub_26C0BF530(v46, v43);
      sub_26C0BF530(v44, v43);
      sub_26C0BF530(v46, v43);
      sub_26C0BF530(v44, v43);
      v30 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(v42, v39);
      sub_26C0BB9B0(*v39, *&v39[8]);
      sub_26C0BB9B0(*&v42[0], *(&v42[0] + 1));
LABEL_46:
      sub_26C0BF568(v48);
      sub_26C0BF5D0(v46);
      sub_26C0BF5D0(v44);
      if (v30)
      {
LABEL_47:
        v28 = 1;
        return v28 & 1;
      }

LABEL_51:
      v28 = 0;
      return v28 & 1;
    }

    if (v47[24] != 4)
    {
      goto LABEL_50;
    }

    v23 = *&v46[24];
    v24 = *v46;
    v42[0] = *v44;
    *&v42[1] = *&v44[16];
    v37 = *&v46[8];
    *v39 = *v46;
    *&v39[8] = *&v46[8];
    sub_26C0BF530(v46, v43);
    sub_26C0BF530(v44, v43);
    sub_26C0BF530(v46, v43);
    sub_26C0BF530(v44, v43);
    sub_26C0BBAA4(v17, v16);
    sub_26C0BBAA4(v24, v37);
    v25 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(v42, v39);
    sub_26C0BB9B0(*v39, *&v39[8]);
    sub_26C0BB9B0(*&v42[0], *(&v42[0] + 1));
    if (v25)
    {
      v26 = sub_26C0BDA84(v18, v23);
LABEL_45:
      v30 = v26;
      goto LABEL_46;
    }

LABEL_53:
    sub_26C0BF568(v48);
    sub_26C0BF5D0(v46);
    sub_26C0BF5D0(v44);
    goto LABEL_51;
  }

  if (v45[24] != 6)
  {
    if (v47[24] == 7)
    {
      v42[0] = *v44;
      v42[1] = *&v44[16];
      v42[2] = *&v44[32];
      v42[3] = *&v44[48];
      v34 = a2[1];
      *v39 = *a2;
      *&v39[16] = v34;
      v35 = a2[3];
      v40 = a2[2];
      v41 = v35;
      sub_26C0BF530(v46, v43);
      sub_26C0BF530(v44, v43);
      sub_26C0BF530(v46, v43);
      sub_26C0BF530(v44, v43);
      v28 = sub_26C0BE574(v42, v39);
      sub_26C0BF568(v48);
      sub_26C0BF5D0(v46);
      sub_26C0BF5D0(v44);
      return v28 & 1;
    }

    goto LABEL_50;
  }

  if (v47[24] != 6)
  {
LABEL_50:
    sub_26C0BF530(v46, v43);
    sub_26C0BF530(v44, v43);
    sub_26C0BF568(v48);
    goto LABEL_51;
  }

  v42[0] = *v44;
  *&v42[1] = *&v44[16];
  *v39 = *v46;
  *&v39[16] = *&v46[16];
  sub_26C0BF530(v46, v43);
  sub_26C0BF530(v44, v43);
  sub_26C0BF530(v46, v43);
  sub_26C0BF530(v44, v43);
  v28 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(v42, v39);
  sub_26C0BF568(v48);
  sub_26C0BB9B0(*v39, *&v39[8]);
  sub_26C0BB9B0(*&v42[0], *(&v42[0] + 1));
  return v28 & 1;
}

uint64_t sub_26C0BF568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7E8, &unk_26C149E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C0BF600(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return a1;
  }

  for (i = a2 + 32; ; i += 88)
  {
    v5 = *(i + 48);
    v9[2] = *(i + 32);
    v9[3] = v5;
    v9[4] = *(i + 64);
    v10 = *(i + 80);
    v6 = *(i + 16);
    v9[0] = *i;
    v9[1] = v6;
    result = sub_26C12863C(v9);
    v8 = __OFADD__(a1, result);
    a1 += result;
    if (v8)
    {
      break;
    }

    if (!--v3)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0BF694(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v7 = *(v3 - 1);
    v6 = *v3;
    v11 = *(v3 - 3);
    v12 = v7;
    v13 = v6;
    v8 = sub_26C0BFFA4(&v11);
    v3 = v5;
    v9 = __OFADD__(a1, v8);
    a1 += v8;
    if (v9)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

void *sub_26C0BF71C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  result = sub_26C1491AC();
  v6 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v1);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();
    sub_26C0BB9B0(v8, v10);
    sub_26C12A7B4(v11, v3);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0BF7E8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v3 >> 32;
  }

  else
  {
    v7 = BYTE6(v4);
  }

  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    v8 = v1[3];
    v9 = sub_26C14889C();
    v11 = v10;
    sub_26C1488BC();
    sub_26C0BB9B0(v9, v11);

    return sub_26C12A7B4(a1, v8);
  }

  return result;
}

void *sub_26C0BF89C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  result = sub_26C1491AC();
  v7 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v3 >> 32;
  }

  else
  {
    v8 = BYTE6(v2);
  }

  if (v8 < v5)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_26C14889C();
    v11 = v10;
    sub_26C1488BC();
    sub_26C0BB9B0(v9, v11);
    sub_26C12A7B4(v12, v4);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0BF998(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v3 >> 32;
  }

  else
  {
    v7 = BYTE6(v4);
  }

  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    v8 = v1[3];
    v9 = sub_26C14889C();
    v11 = v10;
    sub_26C1488BC();
    sub_26C0BB9B0(v9, v11);
    result = MEMORY[0x26D69BEF0](*(v8 + 16));
    v12 = *(v8 + 16);
    if (v12)
    {
      v13 = (v8 + 32);
      do
      {
        v14 = v13[1];
        v22[0] = *v13;
        v22[1] = v14;
        v15 = v13[2];
        v16 = v13[3];
        v17 = v13[4];
        v23 = *(v13 + 80);
        v22[3] = v16;
        v22[4] = v17;
        v22[2] = v15;
        v18 = v13[1];
        v26 = *v13;
        v27 = v18;
        v19 = v13[2];
        v20 = v13[3];
        v21 = v13[4];
        v31 = *(v13 + 80);
        v29 = v20;
        v30 = v21;
        v28 = v19;
        sub_26C0BE40C(v22, v24);
        sub_26C128984(a1);
        v24[2] = v28;
        v24[3] = v29;
        v24[4] = v30;
        v25 = v31;
        v24[0] = v26;
        v24[1] = v27;
        result = sub_26C0BE468(v24);
        v13 = (v13 + 88);
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t sub_26C0BFAE8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_26C1491AC();
  sub_26C0BF998(v4);
  return sub_26C14920C();
}

uint64_t sub_26C0BFB40(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_26C1491AC();
  sub_26C0BF998(v5);
  return sub_26C14920C();
}

unint64_t sub_26C0BFBC4()
{
  result = qword_28047A7F0;
  if (!qword_28047A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7F0);
  }

  return result;
}

unint64_t sub_26C0BFC1C()
{
  result = qword_28047A7F8;
  if (!qword_28047A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A7F8);
  }

  return result;
}

unint64_t sub_26C0BFC70(uint64_t *a1)
{
  v2 = v1;
  v39 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v4 = v2[1];
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v11 = 0;
    if (v8 == 2)
    {
      v11 = *(v6 + 24);
    }
  }

  else
  {
    v9 = BYTE6(v7);
    v10 = v6 >> 32;
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }
  }

  v13 = v2[2];
  v12 = v2[3];
  LOBYTE(v34) = 0;
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v37 = MEMORY[0x277D838B0];
  v38 = MEMORY[0x277CC9C18];
  v35 = &v34;
  v36 = (&v34 + 1);
  __swift_project_boxed_opaque_existential_1(&v35, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  v16 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = 0;
      v18 = BYTE6(v4);
      if (BYTE6(v4) < v13)
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    v17 = v5;
    v18 = v5 >> 32;
LABEL_14:
    sub_26C0BBAA4(v5, v4);
    if (v18 < v13)
    {
      goto LABEL_41;
    }

    goto LABEL_17;
  }

  if (v16 == 2)
  {
    v17 = *(v5 + 16);
    v18 = *(v5 + 24);
    goto LABEL_14;
  }

  v18 = 0;
  v17 = 0;
  if (v13 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_17:
  if (v18 < v17)
  {
    goto LABEL_41;
  }

  v19 = sub_26C14889C();
  v21 = v20;
  sub_26C1488CC();
  v22 = v21;
  v23 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v23)
    {
      sub_26C0BB9B0(v19, v21);
      sub_26C0BB9B0(v5, v4);
      v4 = BYTE6(v21);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (v23 != 2)
  {
LABEL_30:
    sub_26C0BB9B0(v19, v22);
    sub_26C0BB9B0(v5, v4);
    v4 = 0;
    goto LABEL_31;
  }

  v25 = *(v19 + 16);
  v24 = *(v19 + 24);
  sub_26C0BB9B0(v19, v22);
  sub_26C0BB9B0(v5, v4);
  v4 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_25:
    sub_26C0BB9B0(v19, v22);
    sub_26C0BB9B0(v5, v4);
    if (__OFSUB__(HIDWORD(v19), v19))
    {
      goto LABEL_45;
    }

    v4 = HIDWORD(v19) - v19;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v4 > 0xFF)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_31:
  sub_26C100778(v4, v11);
  v26 = *a1;
  v27 = a1[1];
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v29 = *(v26 + 24);
    }

    else
    {
      v29 = 0;
    }
  }

  else if (v28)
  {
    v29 = v26 >> 32;
  }

  else
  {
    v29 = BYTE6(v27);
  }

  LOBYTE(v34) = 0;
  v37 = v14;
  v38 = v15;
  v35 = &v34;
  v36 = (&v34 + 1);
  __swift_project_boxed_opaque_existential_1(&v35, v14);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  v34 = 0;
  v37 = v14;
  v38 = v15;
  v35 = &v34;
  v36 = &v35;
  __swift_project_boxed_opaque_existential_1(&v35, v14);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  v30 = sub_26C0BF694(0, v12);
  if (v30 > 0xFFFFFF)
  {
    goto LABEL_43;
  }

  v31 = v30;
  v32 = sub_26C100778(SBYTE2(v30), v29);
  if (__OFADD__(v29, v32))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  sub_26C10064C(v31, v29 + v32);
  return v4 + v31 + 4;
}

unint64_t sub_26C0BFFA4(uint64_t *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v9 = 0;
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  LOBYTE(v32) = 0;
  v12 = MEMORY[0x277D838B0];
  v13 = MEMORY[0x277CC9C18];
  v35 = MEMORY[0x277D838B0];
  v36 = MEMORY[0x277CC9C18];
  v33 = &v32;
  v34 = (&v32 + 1);
  __swift_project_boxed_opaque_existential_1(&v33, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v32 = 0;
  v35 = v12;
  v36 = v13;
  v33 = &v32;
  v34 = &v33;
  __swift_project_boxed_opaque_existential_1(&v33, v12);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v14 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = 0;
      v16 = BYTE6(v2);
      if (BYTE6(v2) < v11)
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    v15 = v3;
    v16 = v3 >> 32;
LABEL_14:
    sub_26C0BBAA4(v3, v2);
    if (v16 < v11)
    {
      goto LABEL_41;
    }

    goto LABEL_17;
  }

  if (v14 == 2)
  {
    v15 = *(v3 + 16);
    v16 = *(v3 + 24);
    goto LABEL_14;
  }

  v16 = 0;
  v15 = 0;
  if (v11 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_17:
  if (v16 < v15)
  {
    goto LABEL_41;
  }

  v17 = sub_26C14889C();
  v19 = v18;
  sub_26C1488CC();
  v20 = v19;
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v21)
    {
      sub_26C0BB9B0(v17, v19);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v19);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v21 != 2)
  {
    goto LABEL_29;
  }

  v23 = *(v17 + 16);
  v22 = *(v17 + 24);
  sub_26C0BB9B0(v17, v20);
  sub_26C0BB9B0(v3, v2);
  v2 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_25:
    sub_26C0BB9B0(v17, v20);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_45;
    }

    v2 = HIDWORD(v17) - v17;
  }

  if (v2 <= 0xFFFFFF)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_29:
  sub_26C0BB9B0(v17, v20);
  sub_26C0BB9B0(v3, v2);
  v2 = 0;
LABEL_30:
  v24 = sub_26C100778(SBYTE2(v2), v9);
  if (__OFADD__(v9, v24))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_26C10064C(v2, v9 + v24);
  v25 = *v1;
  v26 = v1[1];
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v28 = *(v25 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  else if (v27)
  {
    v28 = v25 >> 32;
  }

  else
  {
    v28 = BYTE6(v26);
  }

  v32 = 0;
  v35 = v12;
  v36 = v13;
  v33 = &v32;
  v34 = &v33;
  __swift_project_boxed_opaque_existential_1(&v33, v12);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v29 = sub_26C0BF600(0, v10);
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v30 = v29;
  if (v29 >> 16)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  sub_26C10064C(v29, v28);
  return v2 + v30 + 5;
}

void *sub_26C0C02D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26C0E0990(a1, &v16, &v18);
  if (v3)
  {
    v8 = v17;
    *a2 = v16;
    *(a2 + 16) = v8;
    return result;
  }

  v9 = v19;
  if (v19 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v10 = v18;
  v21 = v20;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0BBAA4(*a1, v11);
  v14 = sub_26C0E0078(a1, &v18);
  if (!v14)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    sub_26C0BB344(v10, v9);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
LABEL_4:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v18 = 0;
    v19 = 0;
    LOBYTE(v20) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v15 = v14;
  result = sub_26C0BB9B0(v12, v11);
  *a3 = v10;
  a3[1] = v9;
  a3[2] = v21;
  a3[3] = v15;
  return result;
}

uint64_t sub_26C0C046C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_26C0BBAA4(*a1, v5);
  v7 = sub_26C1368E8();
  if ((v7 & 0x100) != 0)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_87:
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v4;
    a1[1] = v5;
LABEL_88:
    a1[2] = v6;
    return v9;
  }

  v8 = v7;
  v60 = a2;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = sub_26C1365D4();
    if ((v10 & 0x10000) != 0)
    {
      goto LABEL_87;
    }

    v11 = v10 | (v8 << 16);
    result = a1[2];
    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      return result;
    }

    v14 = *a1;
    v15 = a1[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) <= 1)
    {
      if (v16)
      {
        v17 = v14 >> 32;
      }

      else
      {
        v17 = BYTE6(v15);
      }

LABEL_11:
      if (v17 < v13)
      {
        goto LABEL_87;
      }

      goto LABEL_14;
    }

    if (v16 == 2)
    {
      v17 = *(v14 + 24);
      goto LABEL_11;
    }

    if (v13 > 0)
    {
      goto LABEL_87;
    }

LABEL_14:
    if (v13 < result)
    {
      goto LABEL_97;
    }

    v68 = v9;
    result = sub_26C14889C();
    v19 = result;
    v20 = v18;
    a1[2] = v13;
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v21 == 2)
      {
        result = *(result + 16);
        v22 = *(v19 + 24);
      }

      else
      {
        result = 0;
        v22 = 0;
      }
    }

    else
    {
      v22 = BYTE6(v18);
      if (v21)
      {
        result = result;
      }

      else
      {
        result = 0;
      }

      if (v21)
      {
        v22 = v19 >> 32;
      }
    }

    v23 = __OFSUB__(v22, result);
    v24 = v22 - result;
    if (v23)
    {
      goto LABEL_98;
    }

    v25 = result + v24;
    if (__OFADD__(result, v24))
    {
      goto LABEL_99;
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v26 = v19 >> 32;
      }

      else
      {
        v26 = BYTE6(v18);
      }

LABEL_33:
      if (v26 < v25)
      {
        goto LABEL_105;
      }

      goto LABEL_36;
    }

    if (v21 == 2)
    {
      v26 = *(v19 + 24);
      goto LABEL_33;
    }

    if (v25 > 0)
    {
      goto LABEL_106;
    }

LABEL_36:
    if (v25 < result)
    {
      goto LABEL_100;
    }

    result = sub_26C14889C();
    v27 = 0;
    v61 = v28;
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v27 = *(result + 16);
      }
    }

    else if (v29)
    {
      v27 = result;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v30 = *(v19 + 24);
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v21)
    {
      v30 = v19 >> 32;
    }

    else
    {
      v30 = BYTE6(v20);
    }

    if (__OFSUB__(v30, v25))
    {
      goto LABEL_101;
    }

    v31 = result;
    if (v30 != v25)
    {
      v66 = xmmword_26C149860;
      v54 = 2;
      LOBYTE(v67) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v31, v61);
      sub_26C0BB9B0(v19, v20);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v4;
      a1[1] = v5;
      a1[2] = v6;
      v66 = xmmword_26C149860;
      LOBYTE(v67) = 2;
      swift_willThrowTypedImpl();
      v9 = v68;

      v55 = 0;
      v56 = 1;
      goto LABEL_95;
    }

    sub_26C0BB9B0(v19, v20);
    sub_26C0BB9B0(v4, v5);
    v33 = *a1;
    v32 = a1[1];
    v6 = a1[2];
    sub_26C0BBAA4(*a1, v32);
    v34 = sub_26C1365D4();
    if ((v34 & 0x10000) != 0)
    {
      sub_26C0BB9B0(v31, v61);
      v9 = v68;
LABEL_92:
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v33;
      a1[1] = v32;
      goto LABEL_88;
    }

    v35 = v34;
    result = a1[2];
    v36 = result + v35;
    v9 = v68;
    if (__OFADD__(result, v35))
    {
      goto LABEL_102;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) <= 1)
    {
      if (v39)
      {
        v40 = v37 >> 32;
      }

      else
      {
        v40 = BYTE6(v38);
      }

LABEL_60:
      if (v40 < v36)
      {
        goto LABEL_91;
      }

      goto LABEL_63;
    }

    if (v39 == 2)
    {
      v40 = *(v37 + 24);
      goto LABEL_60;
    }

    if (v36 > 0)
    {
LABEL_91:
      sub_26C0BB9B0(v31, v61);
      goto LABEL_92;
    }

LABEL_63:
    if (v36 < result)
    {
      goto LABEL_103;
    }

    v41 = sub_26C14889C();
    v43 = 0;
    a1[2] = v36;
    v44 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      v45 = v62;
      if (v44 == 2)
      {
        v43 = *(v41 + 16);
      }
    }

    else
    {
      v45 = v62;
      if (v44)
      {
        v43 = v41;
      }
    }

    *&v66 = v41;
    *(&v66 + 1) = v42;
    v67 = v43;
    v46 = sub_26C0C0A1C(&v66, &v64);
    if (v45)
    {
      break;
    }

    v47 = v46;
    result = v66;
    v48 = *(&v66 + 1) >> 62;
    if ((*(&v66 + 1) >> 62) > 1)
    {
      if (v48 == 2)
      {
        v49 = *(v66 + 24);
      }

      else
      {
        v49 = 0;
      }
    }

    else if (v48)
    {
      v49 = v66 >> 32;
    }

    else
    {
      v49 = BYTE14(v66);
    }

    if (__OFSUB__(v49, v67))
    {
      goto LABEL_104;
    }

    if (v49 != v67)
    {
      v64 = xmmword_26C149860;
      v54 = 2;
      v65 = 2;
      v57 = *(&v66 + 1);
      v63 = v66;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      v58 = v57;
      v59 = v63;
      v55 = 0;
      v56 = 1;
      goto LABEL_94;
    }

    v62 = 0;
    sub_26C0BB9B0(v66, *(&v66 + 1));
    sub_26C0BB9B0(v33, v32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26C0CD9A0(0, *(v9 + 2) + 1, 1, v9);
    }

    v51 = *(v9 + 2);
    v50 = *(v9 + 3);
    if (v51 >= v50 >> 1)
    {
      v9 = sub_26C0CD9A0((v50 > 1), v51 + 1, 1, v9);
    }

    *(v9 + 2) = v51 + 1;
    v52 = &v9[32 * v51];
    *(v52 + 4) = v31;
    *(v52 + 5) = v61;
    *(v52 + 6) = v27;
    *(v52 + 7) = v47;
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    sub_26C0BBAA4(*a1, v5);
    v53 = sub_26C1368E8();
    v8 = v53;
    if ((v53 & 0x100) != 0)
    {
      goto LABEL_87;
    }
  }

  v55 = *(&v64 + 1);
  v56 = v64;
  v54 = v65;
  v58 = *(&v66 + 1);
  v59 = v66;
LABEL_94:
  sub_26C0BB9B0(v59, v58);
  sub_26C0BB9B0(*a1, a1[1]);
  *a1 = v33;
  a1[1] = v32;
  a1[2] = v6;
  *&v66 = v56;
  *(&v66 + 1) = v55;
  LOBYTE(v67) = v54;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB9B0(v31, v61);

LABEL_95:
  *v60 = v56;
  *(v60 + 8) = v55;
  *(v60 + 16) = v54;
  return v9;
}

char *sub_26C0C0A1C(uint64_t *a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v48 = *a1;
  LOWORD(v65) = 0;
  v4 = a1[2];
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_62:
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
  }

  v6 = v2;
  v8 = v3 >> 62;
  v9 = MEMORY[0x277D84F90];
  v49 = BYTE6(v3);
  v50 = v3 >> 62;
  while (1)
  {
    if (v8 <= 1)
    {
      v10 = v49;
      if (v8)
      {
        v10 = v48 >> 32;
      }

LABEL_8:
      if (v10 < v5)
      {
        return v9;
      }

      goto LABEL_11;
    }

    if (v8 == 2)
    {
      v10 = *(v48 + 24);
      goto LABEL_8;
    }

    if (v5 > 0)
    {
      return v9;
    }

LABEL_11:
    v11 = *a1;
    v12 = a1[1];
    *&v59 = *a1;
    *(&v59 + 1) = v12;
    if (v5 < v4)
    {
      goto LABEL_63;
    }

    v52 = v9;
    *&v53 = v4;
    *(&v53 + 1) = v5;
    sub_26C0BBAA4(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v59, *(&v59 + 1));
    v13 = v65;
    a1[2] = v5;
    v14 = *a1;
    v15 = a1[1];
    LOWORD(v65) = 0;
    v16 = v5 + 2;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_64;
    }

    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      break;
    }

    if (v17)
    {
      v18 = v14 >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

LABEL_19:
    if (v18 < v16)
    {
      goto LABEL_57;
    }

LABEL_22:
    *&v59 = v14;
    *(&v59 + 1) = v15;
    if (v16 < v5)
    {
      goto LABEL_65;
    }

    *&v53 = v5;
    *(&v53 + 1) = v5 + 2;
    sub_26C0BBAA4(v14, v15);
    v51 = v14;
    sub_26C0BBAA4(v14, v15);
    sub_26C14878C();
    sub_26C0BB9B0(v59, *(&v59 + 1));
    v19 = bswap32(v65) >> 16;
    a1[2] = v16;
    v20 = v16 + v19;
    if (__OFADD__(v16, v19))
    {
      goto LABEL_66;
    }

    v21 = *a1;
    v22 = a1[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      if (v23)
      {
        v24 = v21 >> 32;
      }

      else
      {
        v24 = BYTE6(v22);
      }

LABEL_30:
      if (v24 < v20)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    if (v23 == 2)
    {
      v24 = *(v21 + 24);
      goto LABEL_30;
    }

    if (v20 > 0)
    {
      goto LABEL_58;
    }

LABEL_33:
    if (v20 < v16)
    {
      goto LABEL_67;
    }

    v25 = sub_26C14889C();
    v27 = 0;
    a1[2] = v20;
    v28 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v29 = v6;
      if (v28 == 2)
      {
        v27 = *(v25 + 16);
      }
    }

    else
    {
      v29 = v6;
      if (v28)
      {
        v27 = v25;
      }
    }

    v65 = v25;
    v66 = v26;
    v67 = v27;
    sub_26C1298E0(&v65, bswap32(v13) >> 16, 0xBu, 0, &v53, &v59);
    if (v29)
    {
      v44 = *(&v53 + 1);
      v45 = v53;
      v39 = v54;
      v43 = v65;
      v42 = v66;
      goto LABEL_60;
    }

    v6 = 0;
    v30 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v31 = *(v65 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v30)
    {
      v31 = v65 >> 32;
    }

    else
    {
      v31 = BYTE6(v66);
    }

    if (__OFSUB__(v31, v67))
    {
      goto LABEL_68;
    }

    if (v31 != v67)
    {
      v39 = 2;
      v40 = v65;
      v41 = v66;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v55 = v61;
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v53 = v59;
      v54 = v60;
      sub_26C0BE468(&v53);
      v42 = v41;
      v43 = v40;
      v44 = 0;
      v45 = 1;
LABEL_60:
      sub_26C0BB9B0(v43, v42);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v51;
      a1[1] = v15;
      a1[2] = v5;
      *&v59 = v45;
      *(&v59 + 1) = v44;
      LOBYTE(v60) = v39;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v9 = v52;

      *a2 = v45;
      *(a2 + 8) = v44;
      *(a2 + 16) = v39;
      return v9;
    }

    sub_26C0BB9B0(v65, v66);
    sub_26C0BB9B0(v14, v15);
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    v9 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26C0CD87C(0, *(v52 + 2) + 1, 1, v52);
    }

    LODWORD(v8) = v50;
    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    if (v33 >= v32 >> 1)
    {
      v9 = sub_26C0CD87C((v32 > 1), v33 + 1, 1, v9);
    }

    *(v9 + 2) = v33 + 1;
    v34 = &v9[88 * v33];
    v35 = v54;
    *(v34 + 2) = v53;
    *(v34 + 3) = v35;
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v34[112] = v58;
    *(v34 + 5) = v37;
    *(v34 + 6) = v38;
    *(v34 + 4) = v36;
    LOWORD(v65) = 0;
    v4 = a1[2];
    v5 = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_62;
    }
  }

  if (v17 == 2)
  {
    v18 = *(v14 + 24);
    goto LABEL_19;
  }

  if (v16 < 1)
  {
    goto LABEL_22;
  }

LABEL_57:
  sub_26C0BBAA4(v14, v15);
  v21 = *a1;
  v22 = a1[1];
LABEL_58:
  sub_26C0BB9B0(v21, v22);
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v5;
  return v52;
}

uint64_t sub_26C0C0F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 24);
  v10 = *a1;
  v11 = *(a1 + 8);
  v8 = v4;
  v9 = *(a2 + 8);
  sub_26C0BBAA4(v10, v11);
  sub_26C0BBAA4(v4, v9);
  LOBYTE(v4) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v10, &v8);
  sub_26C0BB9B0(v8, v9);
  sub_26C0BB9B0(v10, v11);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return a3(v3, v5);
}

uint64_t sub_26C0C1054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26C0C109C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HandshakeStateMachine.Configuration.serverName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HandshakeStateMachine.Configuration.serverName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.validPublicKeys.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void HandshakeStateMachine.Configuration.quicTransportParameters.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_26C0BB37C(v2, v3);
}

__n128 HandshakeStateMachine.Configuration.quicTransportParameters.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_26C0BB344(v1[3], v1[4]);
  result = v4;
  *(v1 + 3) = v4;
  v1[5] = v2;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void HandshakeStateMachine.Configuration.ticketRequest.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 58);
  *a1 = *(v1 + 56);
  *(a1 + 2) = v2;
}

uint64_t HandshakeStateMachine.Configuration.ticketRequest.setter(uint64_t result)
{
  v2 = *(result + 2);
  *(v1 + 56) = *result;
  *(v1 + 58) = v2;
  return result;
}

void HandshakeStateMachine.Configuration.fixedKeyExchangeGroup.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 62);
  *a1 = *(v1 + 60);
  *(a1 + 2) = v2;
}

uint64_t HandshakeStateMachine.Configuration.fixedKeyExchangeGroup.setter(uint64_t result)
{
  v2 = *(result + 2);
  *(v1 + 60) = *result;
  *(v1 + 62) = v2;
  return result;
}

__n128 HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v21 = *a4;
  v16 = a4[1].n128_u64[0];
  v17 = *a6;
  v18 = *(a6 + 2);
  sub_26C0BB344(0, 0xF000000000000000);
  if ((a7 & 0x10000) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = a7;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  result = v21;
  *(a9 + 24) = v21;
  *(a9 + 40) = v16;
  *(a9 + 48) = a5;
  *(a9 + 56) = v17;
  *(a9 + 58) = v18;
  *(a9 + 60) = v19;
  *(a9 + 62) = BYTE2(a7) & 1;
  *(a9 + 63) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t HandshakeStateMachine.Configuration.hash(into:)(uint64_t a1)
{
  v3 = sub_26C148E2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v7 = v1[2];
  v9 = v1[4];
  v33 = v1[3];
  v34 = v9;
  v10 = v1[6];
  v32 = v1[5];
  v35 = v10;
  v36 = a1;
  if (v8)
  {
    sub_26C1491CC();
    sub_26C148F4C();
    v11 = *(v7 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_26C1491CC();
    v11 = *(v7 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v14 = *(v4 + 16);
  v12 = v4 + 16;
  v13 = v14;
  v15 = v7 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v16 = *(v12 + 56);
  do
  {
    v17 = v13(v6, v15, v3);
    v18 = MEMORY[0x26D69BB30](v17);
    v20 = v19;
    (*(v12 - 8))(v6, v3);
    sub_26C1488BC();
    sub_26C0BB9B0(v18, v20);
    v15 += v16;
    --v11;
  }

  while (v11);
LABEL_7:
  v21 = v34;
  if (v34 >> 60 != 15)
  {
    sub_26C1491CC();
    v26 = v21 >> 62;
    v22 = v35;
    if ((v21 >> 62) > 1)
    {
      result = v32;
      if (v26 == 2)
      {
        v27 = *(v33 + 24);
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      result = v32;
      if (v26)
      {
        v27 = v33 >> 32;
      }

      else
      {
        v27 = BYTE6(v21);
      }
    }

    if (v27 < result)
    {
      __break(1u);
      return result;
    }

    v28 = sub_26C14889C();
    v30 = v29;
    sub_26C1488BC();
    sub_26C0BB9B0(v28, v30);
    if (v22)
    {
      goto LABEL_9;
    }

    return sub_26C1491CC();
  }

  sub_26C1491CC();
  v22 = v35;
  if (!v35)
  {
    return sub_26C1491CC();
  }

LABEL_9:
  sub_26C1491CC();
  result = MEMORY[0x26D69BEF0](*(v22 + 16));
  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = v22 + 40;
    do
    {

      sub_26C148F4C();

      v25 += 16;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t HandshakeStateMachine.Configuration.hashValue.getter()
{
  sub_26C1491AC();
  HandshakeStateMachine.Configuration.hash(into:)(v1);
  return sub_26C14920C();
}

uint64_t sub_26C0C1754()
{
  sub_26C1491AC();
  HandshakeStateMachine.Configuration.hash(into:)(v1);
  return sub_26C14920C();
}

uint64_t sub_26C0C1798(uint64_t a1)
{
  sub_26C1491AC();
  HandshakeStateMachine.Configuration.hash(into:)(v2);
  return sub_26C14920C();
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV13ConfigurationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v91 = sub_26C148E2C();
  v85 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A808, &qword_26C14A178);
  v5 = MEMORY[0x28223BE20](v89);
  v88 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v87 = &v76 - v8;
  MEMORY[0x28223BE20](v7);
  v86 = &v76 - v9;
  v10 = a1[1];
  v11 = a1[2];
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a2[1];
  v17 = a2[2];
  v19 = a2[3];
  v18 = a2[4];
  v21 = a2[5];
  v20 = a2[6];
  if (v10)
  {
    if (!v16)
    {
      return 0;
    }

    if (*a1 != *a2 || v10 != v16)
    {
      v22 = a1[2];
      v23 = a2[2];
      v24 = sub_26C14912C();
      v17 = v23;
      v11 = v22;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v12 >> 60 == 15)
  {
    v84 = v17;
    v25 = v11;
    sub_26C0BB37C(v13, v12);
    sub_26C0BB37C(v19, v18);
    if (v18 >> 60 == 15)
    {
      sub_26C0BB344(v13, v12);
      goto LABEL_17;
    }

LABEL_13:
    sub_26C0BB344(v13, v12);
    sub_26C0BB344(v19, v18);
    return 0;
  }

  v95 = v13;
  v96 = v12;
  v97 = v14;
  if (v18 >> 60 == 15)
  {
    sub_26C0BB37C(v13, v12);
    sub_26C0BB37C(v19, v18);
    sub_26C0BB37C(v13, v12);
    sub_26C0BB9B0(v13, v12);
    goto LABEL_13;
  }

  v84 = v17;
  v25 = v11;
  v92 = v19;
  v93 = v18;
  v94 = v21;
  sub_26C0BB37C(v13, v12);
  sub_26C0BB37C(v19, v18);
  sub_26C0BB37C(v13, v12);
  v27 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v95, &v92);
  sub_26C0BB9B0(v92, v93);
  sub_26C0BB9B0(v95, v96);
  sub_26C0BB344(v13, v12);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v15)
  {
    if (v20 && (sub_26C0BC79C(v15, v20) & 1) != 0)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_22:
  v28 = v25;
  v29 = *(v25 + 16);

  v80 = v29;
  if (!v29)
  {
LABEL_59:

    return 1;
  }

  v30 = 0;
  v77 = 0;
  v31 = v86;
  v78 = (v85 + 32);
  v79 = v85 + 16;
  v83 = (v85 + 8);
  v81 = v25;
  v32 = v91;
  while (v30 < *(v28 + 16))
  {
    v38 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v39 = v28 + v38;
    v40 = *(v85 + 72) * v30;
    v41 = *(v85 + 16);
    v41(v90, v39 + v40, v91);
    result = v84;
    v42 = *(v84 + 16);
    if (v30 == v42)
    {

      (*v83)(v90, v91);
      return 1;
    }

    if (v30 >= v42)
    {
      goto LABEL_64;
    }

    v82 = v30;
    v43 = v84 + v38;
    v44 = v89;
    v45 = *(v89 + 48);
    (*v78)(v31, v90, v32);
    v41((v31 + v45), v43 + v40, v32);
    v46 = v87;
    v47 = sub_26C0C2074(v31, v87);
    v48 = MEMORY[0x26D69BB30](v47);
    v50 = v49;
    v51 = *v83;
    (*v83)(v46, v32);
    v52 = v88;
    v53 = sub_26C0C2074(v31, v88);
    v54 = *(v44 + 48);
    v55 = v51;
    v56 = MEMORY[0x26D69BB30](v53);
    v58 = v57;
    v59 = v52 + v54;
    v60 = v50;
    result = v55(v59, v32);
    v61 = v50 >> 62;
    v62 = v58 >> 62;
    if (v50 >> 62 == 3)
    {
      v63 = 0;
      if (v48)
      {
        goto LABEL_42;
      }

      if (v50 == 0xC000000000000000 && v58 >> 62 == 3)
      {
        v63 = 0;
        if (!v56 && v58 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v64 = 0;
          v65 = 0xC000000000000000;
          goto LABEL_58;
        }
      }

      goto LABEL_50;
    }

    if (!v61)
    {
      v63 = BYTE6(v50);
LABEL_42:
      if (v62 <= 1)
      {
        goto LABEL_51;
      }

      goto LABEL_43;
    }

    if (v61 != 1)
    {
      v71 = *(v48 + 16);
      v70 = *(v48 + 24);
      v68 = __OFSUB__(v70, v71);
      v63 = v70 - v71;
      if (v68)
      {
        goto LABEL_67;
      }

LABEL_50:
      if (v62 <= 1)
      {
        goto LABEL_51;
      }

      goto LABEL_43;
    }

    LODWORD(v63) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
      goto LABEL_68;
    }

    v63 = v63;
    if (v62 <= 1)
    {
LABEL_51:
      if (v62)
      {
        LODWORD(v69) = HIDWORD(v56) - v56;
        if (__OFSUB__(HIDWORD(v56), v56))
        {
          goto LABEL_65;
        }

        v69 = v69;
      }

      else
      {
        v69 = BYTE6(v58);
      }

      goto LABEL_55;
    }

LABEL_43:
    if (v62 != 2)
    {
      if (v63)
      {
        goto LABEL_61;
      }

LABEL_57:
      sub_26C0BB9B0(v56, v58);
      v64 = v48;
      v65 = v50;
LABEL_58:
      sub_26C0BB9B0(v64, v65);
      v72 = *(v89 + 48);
      sub_26C0C20E4(v86);
      v73 = v91;
      v55(v88, v91);
      result = v55(v87 + v72, v73);
      goto LABEL_25;
    }

    v67 = *(v56 + 16);
    v66 = *(v56 + 24);
    v68 = __OFSUB__(v66, v67);
    v69 = v66 - v67;
    if (v68)
    {
      goto LABEL_66;
    }

LABEL_55:
    if (v63 != v69)
    {
LABEL_61:
      sub_26C0BB9B0(v56, v58);
      sub_26C0BB9B0(v48, v50);
      v74 = *(v89 + 48);
      sub_26C0C20E4(v86);
      v75 = v91;
      v55(v88, v91);
      v55(v87 + v74, v75);
LABEL_62:

      return 0;
    }

    if (v63 < 1)
    {
      goto LABEL_57;
    }

    sub_26C0BBAA4(v56, v58);
    v33 = v50;
    v34 = v77;
    v35 = sub_26C0BE27C(v48, v33, v56, v58);
    v77 = v34;
    sub_26C0BB9B0(v56, v58);
    sub_26C0BB9B0(v48, v60);
    v36 = *(v89 + 48);
    sub_26C0C20E4(v86);
    v37 = v91;
    v55(v88, v91);
    result = v55(v87 + v36, v37);
    if ((v35 & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_25:
    v28 = v81;
    v30 = v82 + 1;
    if (v80 == v82 + 1)
    {
      goto LABEL_59;
    }
  }

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
  return result;
}

unint64_t sub_26C0C1F28()
{
  result = qword_28047A800;
  if (!qword_28047A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftTLS10ByteBufferVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26C0C1FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_26C0C2010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C0C2074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A808, &qword_26C14A178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0C20E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A808, &qword_26C14A178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8SwiftTLS4EPSKV16externalIdentity4epsk7contextAcA10ByteBufferV_9CryptoKit12SymmetricKeyVAHSgtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a3;
  v11 = a3[1];
  v19 = a3[2];
  if (sub_26C148BCC() >= 128)
  {
    *a5 = v9;
    *(a5 + 1) = v8;
    *(a5 + 2) = v10;
    v15 = type metadata accessor for EPSK(0);
    v16 = *(v15 + 20);
    v17 = sub_26C148BDC();
    result = (*(*(v17 - 8) + 32))(&a5[v16], a2, v17);
    v18 = &a5[*(v15 + 24)];
    *v18 = v12;
    v18[1] = v11;
    v18[2] = v19;
  }

  else
  {
    sub_26C0BB9B0(v9, v8);
    sub_26C0BB344(v12, v11);
    *a4 = xmmword_26C14A180;
    *(a4 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v13 = sub_26C148BDC();
    return (*(*(v13 - 8) + 8))(a2, v13);
  }

  return result;
}

void sub_26C0C22DC(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *a1;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = (v3 + *(type metadata accessor for EPSK(0) + 24));
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_8;
    }

    v14 = *(v6 + 24);
  }

  else
  {
    if (!v13)
    {
      v14 = BYTE6(v7);
      goto LABEL_8;
    }

    v14 = v6 >> 32;
  }

  sub_26C0BBAA4(v6, v7);
LABEL_8:
  v15 = __OFSUB__(v14, v8);
  v16 = v14 - v8;
  if (v15)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10 >> 60 == 15)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v18 = v10 >> 62;
  v22 = a2;
  if ((v10 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v17 = -v12;
      if (!__OFSUB__(0, v12))
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    v19 = *(v11 + 24);
  }

  else
  {
    if (!v18)
    {
      v17 = BYTE6(v10) - v12;
      if (!__OFSUB__(BYTE6(v10), v12))
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    v19 = v11 >> 32;
  }

  sub_26C0BBAA4(v11, v10);
  v17 = v19 - v12;
  if (__OFSUB__(v19, v12))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_20:
  a2 = v22;
LABEL_21:
  v15 = __OFADD__(v16, v17);
  v20 = v16 + v17;
  if (v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = __OFADD__(v20, 8);
  v21 = v20 + 8;
  if (v15)
  {
LABEL_32:
    __break(1u);
    return;
  }

  if (v21 < 0x10000)
  {
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v11;
    *(a3 + 32) = v10;
    *(a3 + 40) = v12;
    *(a3 + 48) = 772;
    *(a3 + 50) = v23;
  }

  else
  {
    sub_26C0BB344(v11, v10);
    sub_26C0BB9B0(v6, v7);
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    *a2 = xmmword_26C14A190;
    *(a2 + 16) = 2;
  }
}

size_t sub_26C0C24AC(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for ImportedPSK(0);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v68 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26C148E8C();
  v6 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26C148B5C();
  v8 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C148BDC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A838, &qword_26C14A528);
  v15 = MEMORY[0x28223BE20](v14);
  v64 = &v46 - v17;
  v67 = a1;
  v57 = *(a1 + 16);
  if (v57)
  {
    v48 = v16;
    v49 = v15;
    result = sub_26C148B4C();
    if ((result & 0x8000000000000000) == 0)
    {
      v19 = v8;
      v20 = v6;
      v79 = v2;
      v47 = a2;
      if (result)
      {
        v21 = result;
        v22 = sub_26C148FCC();
        *(v22 + 16) = v21;
        bzero((v22 + 32), v21);
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }

      type metadata accessor for EPSK(0);
      *&v69 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
      v23 = sub_26C0C4E10();
      sub_26C0C4E68();
      v54 = v23;
      sub_26C148CEC();

      v24 = 0;
      v53 = (v20 + 8);
      v52 = (v19 + 8);
      v51 = (v11 + 2);
      v50 = (v11 + 1);
      v25 = (v67 + 40);
      v11 = MEMORY[0x277D84F90];
      v26 = v79;
      v56 = v13;
      v55 = v10;
      while (!__OFADD__(v24, 1))
      {
        v28 = v25 + 2;
        v27 = *v25;
        v75 = *(v25 - 4);
        v76 = v27;
        sub_26C0C22DC(&v75, &v73, v77);
        if (v26)
        {
          (*(v48 + 8))(v64, v49);

          v44 = v74;
          v45 = v47;
          *v47 = v73;
          *(v45 + 16) = v44;
          return v11;
        }

        v65 = v24 + 1;
        v66 = v24;
        v69 = v77[0];
        v70 = v77[1];
        v71 = v77[2];
        v72 = v78;
        v29 = sub_26C0C2C6C();
        v31 = v30;
        v67 = v11;
        v32 = v60;
        v33 = v63;
        sub_26C148B3C();
        sub_26C0BBAA4(v29, v31);
        sub_26C0C40B0(v29, v31, v32);
        v79 = 0;
        sub_26C0BB9B0(v29, v31);
        v34 = v58;
        sub_26C148B2C();
        sub_26C0BB9B0(v29, v31);
        v35 = v32;
        v11 = v67;
        v36 = v33;
        v37 = v55;
        v38 = v56;
        (*v53)(v35, v36);
        sub_26C136BE8(0x2064657669726564, 0xEB000000006B7370, v27, v38);
        (*v52)(v34, v59);
        v39 = v68;
        (*v51)(v68 + *(v62 + 20), v38, v37);
        v40 = v70;
        *v39 = v69;
        *(v39 + 16) = v40;
        *(v39 + 32) = v71;
        *(v39 + 48) = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_26C0CDBA0(0, v11[2] + 1, 1, v11);
        }

        v42 = v11[2];
        v41 = v11[3];
        v43 = v65;
        v26 = v79;
        if (v42 >= v41 >> 1)
        {
          v11 = sub_26C0CDBA0((v41 > 1), v42 + 1, 1, v11);
        }

        (*v50)(v38, v37);
        v11[2] = v42 + 1;
        result = sub_26C0C4B4C(v68, v11 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v42, type metadata accessor for ImportedPSK);
        v24 = v66 + 1;
        v25 = v28;
        if (v43 == v57)
        {
          (*(v48 + 8))(v64, v49);
          return v11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    *a2 = xmmword_26C14A1A0;
    *(a2 + 16) = 2;
    v69 = xmmword_26C14A1A0;
    LOBYTE(v70) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v11;
  }

  return result;
}

uint64_t sub_26C0C2C6C()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 50);
  v20 = xmmword_26C14A1B0;
  v21 = 0;
  v16 = v1;
  v17 = *(v0 + 8);
  v7 = v17;
  sub_26C0BBAA4(v1, v17);
  sub_26C0BB37C(v2, v3);
  sub_26C0C3AA4(&v16);
  sub_26C0BB9B0(v1, v7);
  v8 = MEMORY[0x277D838B0];
  v9 = MEMORY[0x277CC9C18];
  if (v3 >> 60 == 15)
  {
    v15 = 0;
    v18 = MEMORY[0x277D838B0];
    v19 = MEMORY[0x277CC9C18];
    v16 = &v15;
    *&v17 = &v16;
    __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v16 = v2;
    *&v17 = v3;
    *(&v17 + 1) = v4;
    sub_26C0C3AA4(&v16);
    sub_26C0BB344(v2, v3);
  }

  v15 = __rev16(v5);
  v18 = v8;
  v19 = v9;
  v16 = &v15;
  *&v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, v8);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v15 = __rev16(v6);
  v18 = v8;
  v19 = v9;
  v16 = &v15;
  *&v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, v8);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v10 = v20;
  v11 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(v20 + 24);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v20 >> 32;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

LABEL_12:
  v13 = sub_26C14889C();
  sub_26C0BB9B0(v10, *(&v10 + 1));
  return v13;
}

uint64_t TLSKDFIdentifier.init(rawValue:outputLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t TLSKDFIdentifier.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_26C1491DC();
  return MEMORY[0x26D69BEF0](v1);
}

uint64_t TLSKDFIdentifier.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_26C1491AC();
  sub_26C1491DC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t sub_26C0C2FC8()
{
  v1 = *(v0 + 8);
  sub_26C1491AC();
  sub_26C1491DC();
  MEMORY[0x26D69BEF0](v1);
  return sub_26C14920C();
}

uint64_t sub_26C0C3028()
{
  v1 = *(v0 + 8);
  sub_26C1491DC();
  return MEMORY[0x26D69BEF0](v1);
}

uint64_t sub_26C0C3068(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_26C1491AC();
  sub_26C1491DC();
  MEMORY[0x26D69BEF0](v2);
  return sub_26C14920C();
}

unint64_t sub_26C0C30C8()
{
  result = qword_28047A810;
  if (!qword_28047A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A810);
  }

  return result;
}

void sub_26C0C3170(uint64_t a1)
{
  sub_26C148BDC();
  if (v1 <= 0x3F)
  {
    sub_26C0C3204();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26C0C3204()
{
  if (!qword_281591F48)
  {
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_281591F48);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TLSKDFIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TLSKDFIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26C0C3354(uint64_t a1)
{
  result = type metadata accessor for ImportedPSK(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawEPSK(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C0C3450(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C0C3488(uint64_t a1)
{
  result = type metadata accessor for PSK(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_26C148BDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_26C148BDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C0C36C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26C148BDC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26C0C3750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 52))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0C37A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C0C3830@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PSK(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0C4A20(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C0C4B4C(v12, v6, type metadata accessor for RawEPSK);
    v13 = *v6;
    v14 = v6[1];
    v15 = v6[2];
    sub_26C0BBAA4(*v6, v14);
    result = sub_26C0C4AEC(v6, type metadata accessor for RawEPSK);
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v15;
  }

  else
  {
    sub_26C0C4B4C(v12, v9, type metadata accessor for ImportedPSK);
    v17 = *(v9 + 1);
    v29[0] = *v9;
    v29[1] = v17;
    v19 = *v9;
    v18 = *(v9 + 1);
    v29[2] = *(v9 + 2);
    v30 = *(v9 + 12);
    v25 = v19;
    v26 = v18;
    v27 = *(v9 + 2);
    v28 = *(v9 + 12);
    sub_26C0C4BB4(v29, v31);
    v20 = sub_26C0C2C6C();
    v22 = v21;
    sub_26C0C4AEC(v9, type metadata accessor for ImportedPSK);
    v31[0] = v25;
    v31[1] = v26;
    v31[2] = v27;
    v32 = v28;
    result = sub_26C0C4BEC(v31);
    v23 = 0;
    *a1 = v20;
    a1[1] = v22;
    v24 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v23 = *(v20 + 16);
      }
    }

    else if (v24)
    {
      v23 = v20;
    }

    a1[2] = v23;
  }

  return result;
}

uint64_t sub_26C0C3AA4(uint64_t *a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = BYTE6(v2);
    if (v4)
    {
      v5 = v1 >> 32;
    }
  }

  v6 = __OFSUB__(v5, v3);
  v7 = v5 - v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 >> 16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = bswap32(v7) >> 16;
  v15[3] = MEMORY[0x277D838B0];
  v15[4] = MEMORY[0x277CC9C18];
  v15[0] = &v14;
  v15[1] = v15;
  __swift_project_boxed_opaque_existential_1(v15, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v8 = v1 >> 32;
    }

    else
    {
      v8 = BYTE6(v2);
    }

    if (v4)
    {
      v9 = v1;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v8 < v3 || v8 < v9)
  {
LABEL_27:
    __break(1u);
  }

  v10 = sub_26C14889C();
  v12 = v11;
  sub_26C1488CC();
  return sub_26C0BB9B0(v10, v12);
}

uint64_t sub_26C0C3C20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  v36 = a1;
  v37 = a2;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v8 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    v8 = a1;
LABEL_6:
    sub_26C0BBAA4(a1, a2);
  }

  v38 = v8;
  v10 = sub_26C1365D4();
  if ((v10 & 0x10000) != 0)
  {
    goto LABEL_13;
  }

  sub_26C0DE248(v10, &v34);
  v11 = *(&v34 + 1);
  if (*(&v34 + 1) >> 60 == 15)
  {
    goto LABEL_13;
  }

  v12 = v34;
  v13 = v35;
  v14 = sub_26C1365D4();
  if ((v14 & 0x10000) != 0 || (sub_26C0DE248(v14, &v34), *(&v34 + 1) >> 60 == 15))
  {
    v15 = v12;
    v16 = v11;
LABEL_12:
    sub_26C0BB344(v15, v16);
LABEL_13:
    *a3 = xmmword_26C14A1C0;
    *(a3 + 16) = 2;
    v34 = xmmword_26C14A1C0;
    LOBYTE(v35) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(a1, a2);
    return sub_26C0BB9B0(v36, v37);
  }

  v32 = v12;
  v33 = v13;
  v39 = *(&v34 + 1);
  v18 = v34;
  v19 = v35;
  v20 = sub_26C1365D4();
  if ((v20 & 0x10000) != 0)
  {
    v26 = v18;
    v27 = v39;
LABEL_21:
    sub_26C0BB344(v26, v27);
    v15 = v32;
    v16 = v11;
    goto LABEL_12;
  }

  v31 = v20;
  v21 = sub_26C1365D4();
  if ((v21 & 0x10000) != 0)
  {
    v26 = v18;
    v27 = v39;
    goto LABEL_21;
  }

  v22 = v21;
  sub_26C0BB9B0(v36, v37);
  sub_26C0BB9B0(a1, a2);
  v23 = v39;
  v24 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    result = v18;
    if (v24 == 2)
    {
      v25 = *(v18 + 24);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    result = v18;
    if (v24)
    {
      v25 = v18 >> 32;
    }

    else
    {
      v25 = BYTE6(v39);
    }
  }

  v28 = v19;
  v29 = __OFSUB__(v25, v19);
  v30 = v25 - v19;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    if (v30 <= 0)
    {
      sub_26C0BB344(result, v39);
      result = 0;
      v28 = 0;
      v23 = 0xF000000000000000;
    }

    *a4 = v32;
    *(a4 + 8) = v11;
    *(a4 + 16) = v33;
    *(a4 + 24) = result;
    *(a4 + 32) = v23;
    *(a4 + 40) = v28;
    *(a4 + 48) = v31;
    *(a4 + 50) = v22;
  }

  return result;
}

uint64_t sub_26C0C3E74(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = v1[3];
    v8 = v1[4];
    v9 = v1[5];
    v10 = sub_26C14889C();
    v12 = v11;
    sub_26C1488BC();
    sub_26C0BB9B0(v10, v12);
    if (v8 >> 60 == 15)
    {
      sub_26C1491CC();
LABEL_20:
      sub_26C1491DC();
      return sub_26C1491DC();
    }

    result = sub_26C1491CC();
    v13 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v7 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v7 >> 32;
    }

    else
    {
      v14 = BYTE6(v8);
    }

    if (v14 >= v9)
    {
      v15 = sub_26C14889C();
      v17 = v16;
      sub_26C1488BC();
      sub_26C0BB9B0(v15, v17);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0C3FD4()
{
  sub_26C1491AC();
  sub_26C0C3E74(v1);
  return sub_26C14920C();
}

uint64_t sub_26C0C4018(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C0C3E74(v2);
  return sub_26C14920C();
}

unint64_t sub_26C0C405C()
{
  result = qword_28047A828;
  if (!qword_28047A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A828);
  }

  return result;
}

uint64_t sub_26C0C40B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26C148E8C();
      sub_26C0C4E10();
      return sub_26C148B1C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26C0C4230(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26C0C4230(v5, v6);
  }

  sub_26C148E8C();
  sub_26C0C4E10();
  return sub_26C148B1C();
}

uint64_t sub_26C0C4230(uint64_t a1, uint64_t a2)
{
  result = sub_26C1487BC();
  if (!result || (result = sub_26C1487EC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C1487DC();
      sub_26C148E8C();
      sub_26C0C4E10();
      return sub_26C148B1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_26C0C42E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 50);
  v6 = *a2;
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 50);
  v17 = *a1;
  v18 = *(a1 + 8);
  v15 = v6;
  v16 = *(a2 + 8);
  sub_26C0BBAA4(v17, v18);
  sub_26C0BBAA4(v6, v16);
  LOBYTE(v6) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v17, &v15);
  sub_26C0BB9B0(v15, v16);
  sub_26C0BB9B0(v17, v18);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    sub_26C0BB37C(v3, v2);
    sub_26C0BB37C(v8, v7);
    if (v7 >> 60 == 15)
    {
      sub_26C0BB344(v3, v2);
      if (v5 == v10)
      {
        return v14 == v11;
      }

      return 0;
    }

    goto LABEL_8;
  }

  v17 = v3;
  *&v18 = v2;
  *(&v18 + 1) = v4;
  if (v7 >> 60 == 15)
  {
    sub_26C0BB37C(v3, v2);
    sub_26C0BB37C(v8, v7);
    sub_26C0BB37C(v3, v2);
    sub_26C0BB9B0(v3, v2);
LABEL_8:
    sub_26C0BB344(v3, v2);
    sub_26C0BB344(v8, v7);
    return 0;
  }

  v15 = v8;
  *&v16 = v7;
  *(&v16 + 1) = v9;
  sub_26C0BB37C(v3, v2);
  sub_26C0BB37C(v8, v7);
  sub_26C0BB37C(v3, v2);
  v13 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v17, &v15);
  sub_26C0BB9B0(v15, v16);
  sub_26C0BB9B0(v17, v18);
  sub_26C0BB344(v3, v2);
  result = 0;
  if ((v13 & 1) != 0 && v5 == v10)
  {
    return v14 == v11;
  }

  return result;
}