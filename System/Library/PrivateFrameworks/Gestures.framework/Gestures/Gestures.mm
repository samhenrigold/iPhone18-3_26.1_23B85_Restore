uint64_t sub_18E67D6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x188);
  v5 = type metadata accessor for GesturePhase(255, v38, a3, a4);
  v6 = sub_18E72B438();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v11 = type metadata accessor for RingBuffer(0, v5, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = *(v5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v34 - v22;
  v39 = v4;
  v37 = qword_1EAC8DC88;
  if ((*(v4 + qword_1EAC8DC88) & 4) != 0)
  {
    GestureNode.phase.getter(v20, v21, &v34 - v22);
  }

  else
  {
    sub_18E67DBC8(v15, v20, v21);
    sub_18E67DE08(v11, v8);
    (*(v12 + 8))(v15, v11);
    v24 = *(v16 + 48);
    if (v24(v8, 1, v5) == 1)
    {
      GestureNode.phase.getter(v25, v26, v23);
      if (v24(v8, 1, v5) != 1)
      {
        (*(v35 + 8))(v8, v36);
      }
    }

    else
    {
      (*(v16 + 32))(v23, v8, v5);
    }
  }

  (*(v16 + 16))(v19, v23, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v32 = *(v16 + 8);
      v32(v19, v5);
      v33 = *(v39 + v37);
      v32(v23, v5);
      if ((v33 & 8) != 0)
      {
        return 5;
      }

      else
      {
        return 6;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v16 + 8))(v23, v5);
      return 0;
    }

    else
    {
      (*(v16 + 8))(v23, v5);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    (*(v16 + 8))(v23, v5);
    (*(*(v38 - 8) + 8))(v19);
    return 4;
  }

  else
  {
    (*(*(v38 - 8) + 8))(v19);
    v28 = *(v39 + v37);
    (*(v16 + 8))(v23, v5);
    v29 = 2;
    if ((v28 & 2) != 0)
    {
      v29 = 3;
    }

    v30 = 2;
    if ((v28 & 8) != 0)
    {
      v30 = 3;
    }

    if ((v28 & 4) != 0)
    {
      return v30;
    }

    else
    {
      return v29;
    }
  }
}

uint64_t sub_18E67DB4C(void *a1)
{
  v1 = a1;
  v5 = sub_18E67D6B8(v1, v2, v3, v4);

  return v5;
}

unint64_t sub_18E67DBC8@<X0>(uint64_t a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  v5 = *(*v3 + 368);
  if (v5 == MEMORY[0x1E69E7CA8] + 8)
  {
    v16 = *(v3 + 272);
    v17 = *(v3 + 280);
    v18 = (v3 + 296);
    *a1 = *(v3 + 256);
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    v19 = *(v3 + 288);
    *(a1 + 32) = v19;
    *(a1 + 40) = *v18;

    return sub_18E6AA03C(v17, v19);
  }

  else
  {
    v6 = v3 + *(*v3 + 384);
    v7 = *(type metadata accessor for GesturePhaseQueue(0, v5, a2, a3) + 32);
    v10 = type metadata accessor for GesturePhase(255, v5, v8, v9);
    v13 = type metadata accessor for RingBuffer(0, v10, v11, v12);
    v14 = *(*(v13 - 8) + 16);

    return v14(a1, v6 + v7, v13);
  }
}

void *sub_18E67DD1C(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 16);
  v11 = *(v9 - 8) + 16;
  v12 = *(*(v9 - 8) + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;

  v10(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E67DE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  if (sub_18E72B378())
  {
    v5 = 1;
  }

  else
  {
    v6 = *(v2 + 8);
    result = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
      return result;
    }

    sub_18E68BD30(result, a1);
    v5 = 0;
  }

  v8 = *(*(*(a1 + 16) - 8) + 56);

  return v8(a2, v5, 1);
}

uint64_t sub_18E67DEC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E67E390();
  *a1 = result;
  return result;
}

_BYTE *sub_18E67DEF4(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v5 > v6)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 4;
  if (v8 >= 4)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 4;
    v8 = v11 + 4;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_20:
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      (*(v4 + 16))(__dst);
      v13 = 2;
      goto LABEL_32;
    }

    if (v8 == 3)
    {
      v14 = *a2;
      sub_18E683B80(*a2);
      *__dst = v14;
      v13 = 3;
      goto LABEL_32;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL) = *(&a2[v5 + 3] & 0xFFFFFFFFFFFFFFFCLL);
      __dst[v7] = 0;
      return __dst;
    }

    if (v8 == 1)
    {
      (*(v4 + 16))(__dst);
      v13 = 1;
LABEL_32:
      __dst[v7] = v13;
      return __dst;
    }
  }

  return memcpy(__dst, a2, v7 + 1);
}

unint64_t GestureNode.phase.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 368);
  if (v5 == MEMORY[0x1E69E7CA8] + 8)
  {
    v13 = *(v3 + 240);
    *a3 = v13;
    v14 = *(v3 + 248);
    *(a3 + 8) = v14;

    return sub_18E6AA03C(v13, v14);
  }

  else
  {
    v6 = v3 + *(*v3 + 384);
    v7 = *(type metadata accessor for GesturePhaseQueue(0, v5, a1, a2) + 28);
    v10 = type metadata accessor for GesturePhase(0, v5, v8, v9);
    v11 = *(*(v10 - 8) + 16);

    return v11(a3, v6 + v7, v10);
  }
}

uint64_t sub_18E67E1E8(uint64_t a1, uint64_t a2)
{
  v3 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void sub_18E67E268(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v2 = ((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = result[v2];
  v4 = v3 - 4;
  if (v3 >= 4)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_19;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 4;
    v3 = v6 + 4;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_19:
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
      return;
    }

LABEL_25:
    (*(*(*(a2 + 16) - 8) + 8))();
    return;
  }

  if (v3 == 2)
  {
    goto LABEL_25;
  }

  if (v3 == 3)
  {
    sub_18E683B98(*result);
  }
}

id gfGestureNodeCreateDefault(key:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DB20, &qword_18E72CA70);
  swift_allocObject();
  sub_18E67E4B8(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v8 = 0;
  sub_18E67E780(&v8);
  v7 = 1;
  sub_18E67E780(&v7);
  v6 = 2;
  sub_18E67E780(&v6);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DB28, &qword_18E72CA78));

  v4 = sub_18E6825E4(v3, a1);

  swift_unknownObjectUnownedAssign();

  return v4;
}

id GFGestureNodeCreateDefault(uint64_t a1)
{
  v1 = gfGestureNodeCreateDefault(key:)(a1);

  return v1;
}

uint64_t sub_18E67E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 192) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 232) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 248) = 4;
  *(v4 + 280) = 0;
  *(v4 + 288) = 4;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 256) = xmmword_18E72CA60;
  sub_18E6AA03C(0, 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8DD60, &unk_18E7318B0);
  v9 = sub_18E72B1F8();
  *(v9 + 16) = 5;
  *(v9 + 32) = 0;
  *(v9 + 40) = 4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 4;
  *(v9 + 64) = 0;
  *(v9 + 72) = 4;
  *(v9 + 80) = 0;
  *(v9 + 88) = 4;
  *(v9 + 96) = 0;
  *(v9 + 104) = 4;
  *(v4 + 272) = v9;
  v11 = a1;
  sub_18E6AA03C(0, 4);
  sub_18E6AA03C(0, 4);
  sub_18E6AA03C(0, 4);
  sub_18E6AA03C(0, 4);
  return sub_18E67E5EC(&v11, a2, a3, a4);
}

uint64_t sub_18E67E5EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (qword_1ED6F8830 != -1)
  {
LABEL_11:
    swift_once();
  }

  v9 = dword_1ED6F8938;
  do
  {
    v10 = v9 + 1;
    if (v9 == -1)
    {
      __break(1u);
      goto LABEL_11;
    }

    v11 = v9;
    atomic_compare_exchange_strong_explicit(&dword_1ED6F8938, &v11, v10, memory_order_relaxed, memory_order_relaxed);
    v12 = v11 == v9;
    v9 = v11;
  }

  while (!v12);
  *(v4 + 16) = v10;
  *(v4 + 64) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  swift_unknownObjectWeakInit();
  *(v4 + 104) = 0;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  swift_unknownObjectUnownedInit();
  *(v4 + 144) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  swift_unknownObjectUnownedInit();
  *(v4 + 152) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = v13;
  *(v4 + 176) = MEMORY[0x1E69E7CD0];
  *(v4 + 40) = v8;

  *(v4 + 24) = a2;
  *(v4 + 32) = a3;

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = a4 + 32;
    do
    {
      v16 = *(v15 + 1);
      v17 = *(v15 + 2);
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      v25[0] = *v15;
      v25[1] = v16;
      v25[2] = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      sub_18E67EEC4(v18, v19, v20);
      sub_18E67E800(v25, &v22);
      sub_18E682A3C(v22, v23, v24);
      v15 += 32;
      --v14;
    }

    while (v14);
  }

  return v4;
}

uint64_t sub_18E67E780(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_18E6A8C70(v1 | 0x20000, 0, 0, 3);
  sub_18E682A3C(0, 0, 3);
  sub_18E6A8C70(v1 | 0x20100, 0, 0, 3);

  return sub_18E682A3C(0, 0, 3);
}

uint64_t sub_18E67E800(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = v2;
  v43 = a1[1];
  v44 = a1[2];
  v45 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = v3[2];
  v46 = v7[2];
  v47 = (v3 + 2);
  v9 = *v3;
  v8 = v3[1];
  v10 = *(v8 + 16);
  if (*v3)
  {

    v42 = v8;
    v11 = sub_18E726AA0(v4, v5, v6, v8 + 32, v10, (v9 + 16), v9 + 32);
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  if (!v10)
  {
    v15 = 0;
LABEL_33:
    sub_18E67ED20(v4, v5, v6, v15);
    v42 = v3[1];
    v30 = *(v42 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v7;
    v16 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18E681264(0, v7[2] + 1, 1);
      v7 = *v47;
    }

    v17 = v46;
    v19 = v44;
    v18 = v45;
    v11 = v30 - 1;
    v33 = v7[2];
    v32 = v7[3];
    if (v33 >= v32 >> 1)
    {
      sub_18E681264((v32 > 1), v33 + 1, 1);
      v7 = *v47;
    }

    v7[2] = v33 + 1;
    v7[v33 + 4] = MEMORY[0x1E69E7CD0];
    goto LABEL_38;
  }

  v41 = v3;
  v42 = v3[1];
  v11 = 0;
  v20 = (v8 + 48);
  while (1)
  {
    v25 = *(v20 - 2);
    v24 = *(v20 - 1);
    v26 = *v20;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v6 == 2)
        {
          sub_18E67EEC4(v4, v5, 2);
          sub_18E67EEC4(v25, v24, 2);
          sub_18E67EEC4(v4, v5, 2);
          sub_18E67EEC4(v25, v24, 2);
          v29 = sub_18E7098C0(v25, v4);
          sub_18E682A3C(v25, v24, 2);
          sub_18E682A3C(v4, v5, 2);
          sub_18E682A3C(v4, v5, 2);
          sub_18E682A3C(v25, v24, 2);
          if ((v29 & 1) != 0 && v24 == v5)
          {
LABEL_30:
            v3 = v41;
            goto LABEL_3;
          }

          goto LABEL_9;
        }

        sub_18E67EEC4(v4, v5, v6);
        v21 = v25;
        v22 = v24;
        v23 = 2;
        goto LABEL_8;
      }

      if (v6 == 3)
      {
        sub_18E682A3C(*(v20 - 2), *(v20 - 1), 3);
        sub_18E682A3C(v4, v5, 3);
        if (v25 == v4)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

      goto LABEL_7;
    }

    if (*v20)
    {
      break;
    }

    if (!v6)
    {
      sub_18E682A3C(*(v20 - 2), *(v20 - 1), 0);
      sub_18E682A3C(v4, v5, 0);
      if (v25 == v4)
      {
        goto LABEL_30;
      }

      goto LABEL_9;
    }

LABEL_7:
    v21 = v4;
    v22 = v5;
    v23 = v6;
LABEL_8:
    sub_18E67EEC4(v21, v22, v23);
    sub_18E682A3C(v25, v24, v26);
    sub_18E682A3C(v4, v5, v6);
LABEL_9:
    v20 += 24;
    if (v10 == ++v11)
    {
      v15 = 0;
      v3 = v41;
      goto LABEL_33;
    }
  }

  if (v6 != 1)
  {
    sub_18E67EEC4(v4, v5, v6);
    v21 = v25;
    v22 = v24;
    v23 = 1;
    goto LABEL_8;
  }

  if (v25 != v4 || v24 != v5)
  {
    v28 = sub_18E72B7C8();
    sub_18E67EEC4(v4, v5, 1);
    sub_18E67EEC4(v25, v24, 1);
    sub_18E682A3C(v25, v24, 1);
    sub_18E682A3C(v4, v5, 1);
    if (v28)
    {
      goto LABEL_30;
    }

    goto LABEL_9;
  }

  sub_18E67EEC4(v4, v5, 1);
  sub_18E67EEC4(v4, v5, 1);
  sub_18E682A3C(v4, v5, 1);
  sub_18E682A3C(v4, v5, 1);
  v3 = v41;
LABEL_3:
  v17 = v46;
  v16 = v47;
  v19 = v44;
  v18 = v45;
LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18E726554(v7);
  }

  v34 = v7[v11 + 4];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v34;
  if (v43)
  {
    v36 = 256;
  }

  else
  {
    v36 = 0;
  }

  sub_18E681CA0(v36 | (v19 << 16) | v18, v35, &v49);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18E726554(v7);
  }

  v37 = v7[2];
  v7[v11 + 4] = v48;
  *v16 = v7;
  v38 = v49;
  if (v17 >= v37)
  {
    return (v38 & 0xFF00) == 512;
  }

  v48 = sub_18E681284(v42, v7);
  sub_18E6813C4(&v48, sub_18E684CE0, 0);
  v39 = *(v48 + 16);
  if (v39 == v7[2])
  {
    sub_18E681448((v48 + 32), v39, v3);

    return (v38 & 0xFF00) == 512;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18E67ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v11 = v4[1];
  v9 = v4 + 1;
  v10 = v11;
  sub_18E67EEC4(a1, a2, a3);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((result & 1) == 0)
  {
    result = sub_18E67F004(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_18E67F004((v13 > 1), v14 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  v15 = v10 + 24 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = v6;
  v5[1] = v10;
  if (!*v5)
  {
    if (v14 < 0xF)
    {
      return result;
    }

    return sub_18E71A3F4(sub_18E7265DC);
  }

  if (MEMORY[0x193AD1300](*(*v5 + 16) & 0x3FLL) <= v14)
  {
    return sub_18E71A3F4(sub_18E7265DC);
  }

  result = swift_isUniquelyReferenced_native();
  v16 = *v5;
  if ((result & 1) == 0)
  {
    if (!v16)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v17 = sub_18E72ADC8();

    *v5 = v17;
    v16 = v17;
  }

  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  return sub_18E72AD58();
}

uint64_t sub_18E67EEC4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return v3;
}

char *sub_18E67EEE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E67F004(char *a1, int64_t a2, char a3)
{
  result = sub_18E67EEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E67F04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  result = sub_18E72B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 3 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v19);
      MEMORY[0x193AD1DF0](v20);
      sub_18E72B8A8();
      if (v21 != 2)
      {
        MEMORY[0x193AD1DF0](v21 & 1);
      }

      result = sub_18E72B8E8();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 3 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E67F2CC(uint64_t *a1, uint64_t (*a2)(uint64_t *, void *, uint64_t *, uint64_t *), uint64_t a3)
{
  v5 = a1[1];
  result = sub_18E72B768();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD40, &qword_18E731FF8);
        v8 = sub_18E72B1F8();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_18E729880(v10, v11, a1, v7, a2);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_18E68205C(0, v5, 1, a1, a2);
  }

  return result;
}

void sub_18E67F50C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0xC000000000000001;
    sub_18E683A1C(&v2, 1, v0, v1);
  }
}

void sub_18E67F5E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v170 = *(a2 + 16);
  v7 = type metadata accessor for GesturePhase(255, v170, a3, a4);
  v165 = type metadata accessor for RingBufferIterator(0, v7, v8, v9);
  v151 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v141 - v10;
  v11 = sub_18E72B438();
  v154 = *(v11 - 8);
  v155 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v162 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v163 = &v141 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v141 - v16;
  v19 = type metadata accessor for RingBuffer(0, v7, v17, v18);
  v166 = *(v19 - 1);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v153 = (&v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v150 = &v141 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v141 - v25);
  v27 = *(v7 - 8);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v159 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v161 = &v141 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v169 = &v141 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v160 = &v141 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v146 = &v141 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v147 = &v141 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v148 = &v141 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v156 = &v141 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v141 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v141 - v47;
  sub_18E683BC8(a1, a2, v49, v50);
  v168 = a2;
  v51 = *(a2 + 32);
  v52 = v4;
  v53 = &v4[v51];
  v171 = v27;
  if (v54)
  {
    swift_getWitnessTable();
    if (sub_18E72B378())
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v55 = v19[11];
    v56 = *&v53[v55];
    v57 = v56 - 1;
    if (__OFSUB__(v56, 1))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v58 = *v53;
    v59 = __OFADD__(v57, *v53);
    v60 = v57 + *v53;
    if (v59)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (!v58)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v58 == -1 && v60 == 0x8000000000000000)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    *&v53[v55] = v60 % v58;
    v61 = *(v53 + 1);
    v59 = __OFSUB__(v61, 1);
    v62 = v61 - 1;
    if (v59)
    {
      goto LABEL_84;
    }

    *(v53 + 1) = v62;
    sub_18E72B298();
    v63 = v171;
    (*(v171 + 8))(v48, v7);
    v64 = a1;
    v65 = v52;
LABEL_30:
    v99 = &v65[*(v168 + 32)];
    v101 = *v99;
    v100 = *(v99 + 1);
    if (v100 == *v99)
    {
      v102 = v19[10];
      v103 = *&v99[v102];
      v59 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v59)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (!v100)
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (v100 == -1 && v104 == 0x8000000000000000)
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      *&v99[v102] = v104 % v100;
    }

    else
    {
      v59 = __OFADD__(v100, 1);
      v105 = v100 + 1;
      if (v59)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      *(v99 + 1) = v105;
    }

    v106 = v19[11];
    v107 = *&v99[v106];
    sub_18E72B278();
    sub_18E72B1D8();
    v108 = *(v99 + 2);
    sub_18E68E2C0(v107, v108, v7);
    (*(v63 + 24))(v108 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v107, v64, v7);
    nullsub_1();
    if (__OFADD__(v107, 1))
    {
      __break(1u);
    }

    else if (v101)
    {
      if (v101 != -1 || v107 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *&v99[v106] = (v107 + 1) % v101;
        return;
      }

      goto LABEL_88;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v66 = v166;
  v67 = *(v166 + 16);
  v144 = v53;
  v167 = v19;
  v67(v26, v53, v19);
  v68 = *(v27 + 16);
  v145 = a1;
  v157 = v68;
  v158 = v27 + 16;
  v68(v46, a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v26;
  v152 = v26;
  if (EnumCaseMultiPayload <= 2)
  {
    v65 = v52;
    if (EnumCaseMultiPayload)
    {
      v71 = v162;
      (*(*(v170 - 8) + 8))(v46);
    }

    else
    {
      (*(*(v170 - 8) + 8))(v46);
      v71 = v162;
    }

    goto LABEL_24;
  }

  v65 = v52;
  v71 = v162;
  if ((EnumCaseMultiPayload - 4) < 2)
  {
LABEL_24:
    v19 = v167;
    sub_18E67DE08(v167, v71);
    v63 = v171;
    v95 = *(v171 + 48);
    if (v95(v71, 1, v7) == 1)
    {
      v96 = v161;
      v157(v161, &v65[*(v168 + 28)], v7);
      v97 = v95(v71, 1, v7);
      v98 = v96;
      v64 = v145;
      if (v97 != 1)
      {
        (*(v154 + 8))(v71, v155);
      }
    }

    else
    {
      v98 = v161;
      (*(v63 + 32))(v161, v71, v7);
      v64 = v145;
    }

    if ((sub_18E680724(v64, v7) & 1) == 0)
    {
      v109 = v160;
      v110 = v157;
      v157(v160, v98, v7);
      v111 = v159;
      v110(v159, v64, v7);
      v112 = v170;
      type metadata accessor for GesturePhaseQueue.InvalidTransition(0, v170, v113, v114);
      swift_getWitnessTable();
      swift_allocError();
      sub_18E68498C(v109, v111, v112, v116, v115);
      swift_willThrow();
      (*(v63 + 8))(v98, v7);
      (*(v166 + 8))(v152, v19);
      return;
    }

    (*(v63 + 8))(v98, v7);
    (*(v66 + 40))(v144, v152, v19);
    goto LABEL_30;
  }

  v72 = *(v171 + 8);
  v143 = v171 + 8;
  v142 = v72;
  v72(v46, v7);
  v73 = v156;
  v157(v156, &v65[*(v168 + 28)], v7);
  v74 = swift_getEnumCaseMultiPayload();
  if (v74 > 2)
  {
    v148 = v65;
    v75 = v153;
    if ((v74 - 4) >= 2)
    {
      v142(v73, v7);
    }

    goto LABEL_22;
  }

  v75 = v153;
  if (v74 != 1)
  {
    v148 = v65;
    (*(*(v170 - 8) + 8))(v73);
LABEL_22:
    v80 = *v70;
    v81 = v167;
    v82 = v160;
    v157(v160, v70 + v167[9], v7);
    sub_18E680594(v80, v82, v7, v83, v75);
    v84 = v164;
    sub_18E68065C(v81, v164);
    v85 = v163;
    v86 = v165;
    sub_18E684690(v165, v163);
    v87 = *(v171 + 48);
    v156 = (v171 + 48);
    v88 = v87;
    v89 = v87(v85, 1, v7);
    v90 = v169;
    if (v89 != 1)
    {
      v153 = *(v171 + 32);
      v149 = v171 + 40;
      (v153)(v169, v85, v7);
      while (1)
      {
        if (sub_18E69806C(v90, v170, v117, v118))
        {
          v120 = *v75;
          v119 = v75[1];
          if (v119 == *v75)
          {
            v121 = v167[10];
            v122 = *(v75 + v121);
            v59 = __OFADD__(v122, 1);
            v123 = v122 + 1;
            if (v59)
            {
              goto LABEL_90;
            }

            if (!v119)
            {
              goto LABEL_91;
            }

            if (v119 == -1 && v123 == 0x8000000000000000)
            {
              goto LABEL_95;
            }

            *(v75 + v121) = v123 % v119;
          }

          else
          {
            v59 = __OFADD__(v119, 1);
            v124 = v119 + 1;
            if (v59)
            {
              goto LABEL_89;
            }

            v75[1] = v124;
          }

          v125 = v167[11];
          v126 = *(v75 + v125);
          sub_18E72B278();
          sub_18E72B1D8();
          v127 = v75[2];
          sub_18E68E2C0(v126, v127, v7);
          (*(v171 + 40))(v127 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v126, v169, v7);
          nullsub_1();
          if (__OFADD__(v126, 1))
          {
            goto LABEL_78;
          }

          if (!v120)
          {
            goto LABEL_79;
          }

          if (v120 == -1 && v126 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_92;
          }

          *(v75 + v125) = (v126 + 1) % v120;
          v84 = v164;
          v86 = v165;
          v85 = v163;
          v90 = v169;
        }

        else
        {
          v142(v90, v7);
        }

        sub_18E684690(v86, v85);
        if (v88(v85, 1, v7) == 1)
        {
          break;
        }

        (v153)(v90, v85, v7);
      }
    }

    (*(v151 + 8))(v84, v86);
    v66 = v166;
    v91 = v167;
    v92 = *(v166 + 32);
    v93 = v150;
    v92(v150, v75, v167);
    v94 = v152;
    (*(v66 + 8))(v152, v91);
    v92(v94, v93, v91);
    v71 = v162;
    v65 = v148;
    goto LABEL_24;
  }

  v76 = *(*(v170 - 8) + 8);
  v76(v73);
  v77 = v149;
  v78 = v167;
  sub_18E67DE08(v167, v149);
  v79 = v171;
  if ((*(v171 + 48))(v77, 1, v7) == 1)
  {
    (*(v154 + 8))(v77, v155);
    v66 = v166;
    goto LABEL_24;
  }

  v128 = v148;
  (*(v79 + 32))(v148, v77, v7);
  v129 = v147;
  v157(v147, v128, v7);
  v130 = swift_getEnumCaseMultiPayload();
  if (v130 > 2)
  {
    if ((v130 - 4) >= 2)
    {
      v142(v129, v7);
    }

    goto LABEL_67;
  }

  v131 = v152;
  if (v130 <= 1)
  {
    (v76)(v129, v170);
LABEL_67:
    v142(v128, v7);
    v66 = v166;
    goto LABEL_24;
  }

  (v76)(v129, v170);
  swift_getWitnessTable();
  if (sub_18E72B378())
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v132 = v78[11];
  v133 = *(v131 + v132);
  v134 = v133 - 1;
  v66 = v166;
  if (__OFSUB__(v133, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v135 = *v131;
  v59 = __OFADD__(v134, *v131);
  v136 = v134 + *v131;
  if (v59)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!v135)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v135 == -1 && v136 == 0x8000000000000000)
  {
    goto LABEL_101;
  }

  *(v131 + v132) = v136 % v135;
  v137 = v131[1];
  v59 = __OFSUB__(v137, 1);
  v138 = v137 - 1;
  if (!v59)
  {
    v131[1] = v138;
    v139 = v146;
    sub_18E72B298();
    v140 = v142;
    v142(v139, v7);
    v140(v128, v7);
    goto LABEL_24;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

uint64_t sub_18E680594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[1] = 0;
  result = type metadata accessor for RingBuffer(0, a3, a3, a4);
  *(a5 + *(result + 40)) = 0;
  *(a5 + *(result + 44)) = 0;
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    *a5 = a1;
    a5[2] = sub_18E6844A4(a2, a1, a3);
    v11 = *(*(a3 - 8) + 32);
    v12 = a5 + *(v10 + 36);

    return v11(v12, a2, a3);
  }

  return result;
}

uint64_t sub_18E68065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return sub_18E6845A8(v5, *(a1 + 16), v7, v8, a2);
}

uint64_t sub_18E680724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v31 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v31 - v17;
  v19 = *(v16 + 48);
  v32 = v6;
  v20 = *(v6 + 16);
  v21 = v3;
  v22 = v19;
  v20(v18, v21, v4);
  v20(&v18[v22], a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v20(v13, v18, v4);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 1)
      {
        if (!v24)
        {
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      if (v24 == 2)
      {
        goto LABEL_25;
      }

      if (v24 != 3)
      {
LABEL_31:
        (*(*(*(v4 + 16) - 8) + 8))(v13);
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = v31;
      v20(v31, v18, v4);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          goto LABEL_25;
        }

LABEL_13:
        if (v24 != 1)
        {
          goto LABEL_31;
        }

LABEL_25:
        v28 = *(v4 + 16);
        v29 = *(*(v28 - 8) + 8);
        v29(&v18[v22], v28);
        v29(v13, v28);
        goto LABEL_30;
      }

LABEL_24:
      v15 = v32;
      (*(v32 + 8))(&v18[v22], v4);
      (*(*(*(v4 + 16) - 8) + 8))(v13);
      v27 = 1;
      goto LABEL_33;
    }

    v20(v9, v18, v4);
    v25 = swift_getEnumCaseMultiPayload();
    (*(*(*(v4 + 16) - 8) + 8))(v9);
    if (v25 != 4)
    {
      goto LABEL_32;
    }

LABEL_30:
    v27 = 1;
    v15 = v32;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v26 = swift_getEnumCaseMultiPayload();
  if (v26 <= 1)
  {
    if (v26 >= 2)
    {
      goto LABEL_32;
    }

LABEL_29:
    (*(*(*(v4 + 16) - 8) + 8))(&v18[v22]);
    goto LABEL_30;
  }

  if (v26 == 2)
  {
    goto LABEL_29;
  }

  if (v26 != 3)
  {
LABEL_32:
    v27 = 0;
    v4 = TupleTypeMetadata2;
    goto LABEL_33;
  }

  v15 = v32;
  (*(v32 + 8))(&v18[v22], v4);
  v27 = 1;
LABEL_33:
  (*(v15 + 8))(v18, v4);
  return v27;
}

uint64_t sub_18E680BF0(char *a1, uint64_t *a2, uint64_t (*a3)(char *, uint64_t *), void (*a4)(char *, uint64_t, uint64_t *))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v16 = *a1;
  v17 = v7;
  v18 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result = a3(&v16, &v13);
  if (result)
  {
    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      a4(&v16, v4, &v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_18E680CBC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18E72AE18();
  MEMORY[0x1EEE9AC00](v6);
  v8 = *a1;
  return (*(*v3 + 344))(&v8, a2);
}

uint64_t sub_18E680FFC()
{
  if (qword_1ED6F7FC8 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F9348 != 1)
  {
    return 0;
  }

  if (qword_1ED6F7F70 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F7EF1)
  {
    return 1;
  }

  if (qword_1ED6F7F80 != -1)
  {
    swift_once();
  }

  explicit = atomic_load_explicit(qword_1ED6F7F88, memory_order_acquire);
  switch(explicit)
  {
    case 0uLL:
      v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v6 = sub_18E72AFC8();
      v0 = [v5 initWithSuiteName_];

      if (v0)
      {
        v7 = sub_18E72AFC8();
        v2 = [v0 BOOLForKey_];

        v1 = 1;
        if (v2)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        atomic_store(v8, qword_1ED6F7F88);
        if (qword_1ED6F7F58 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      return 0;
    case 1uLL:
      return 1;
    case 2uLL:
      return 0;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_17:
  v9 = v2;
  v10 = 0;
  atomic_compare_exchange_strong_explicit(&byte_1ED6F7F60, &v10, v1, memory_order_acquire, memory_order_acquire);
  if (!v10)
  {
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    v12 = sub_18E72AFC8();
    CFNotificationCenterAddObserver(v11, 0, sub_18E6BE368, v12, 0, CFNotificationSuspensionBehaviorHold);
  }

  return v9;
}

void *sub_18E681264(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E67F028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18E681284(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD20, &qword_18E731FA8);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 1;
    }

    v9 = v8 >> 5;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v13 = (a1 + 48);
      v14 = v4 - 1;
      while (1)
      {
        v15 = &v6[v11];
        v16 = *(v13 - 2);
        v17 = *(v13 - 1);
        v18 = *v12;
        v15[4] = v16;
        v15[5] = v17;
        v19 = *v13;
        *(v15 + 48) = *v13;
        v15[7] = v18;
        sub_18E67EEC4(v16, v17, v19);
        if (!v14)
        {
          break;
        }

        v13 += 24;

        v11 += 4;
        --v14;
        ++v12;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }
  }

  else
  {
    v2 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = v6[3];
  if (v21 < 2)
  {
    return v6;
  }

  v22 = v21 >> 1;
  v23 = __OFSUB__(v22, v2);
  v24 = v22 - v2;
  if (!v23)
  {
    v6[2] = v24;
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6813C4(uint64_t *a1, uint64_t (*a2)(uint64_t *, void *, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_18E726540(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;
  result = sub_18E67F2CC(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_18E681448(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_18E682224(a1, a2, sub_18E681534);
  v7 = sub_18E682558();
  v8 = sub_18E68154C(v6, 0, 1, v7, sub_18E726744);
  if (v6[2] <= 0xFuLL)
  {

    v8 = 0;
  }

  *a3 = v8;
  a3[1] = v6;

  a3[2] = sub_18E6815D4(a1, a2, sub_18E682570);
}

uint64_t sub_18E681534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  return sub_18E67EEC4(v3, v2, v4);
}

uint64_t sub_18E68154C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x193AD1330](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x193AD1340](v10, a4);
    sub_18E696DE8(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

int64_t sub_18E6815D4(int64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = result;
  if (a2)
  {
    if (a2 <= 0)
    {
      v6 = MEMORY[0x1E69E7CC0];
      v8 = *(MEMORY[0x1E69E7CC0] + 24);
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD30, &qword_18E731FE0);
      v6 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v6);
      v7 = result - 32;
      if (result < 32)
      {
        v7 = result - 25;
      }

      v8 = 2 * (v7 >> 3);
      v6[2] = a2;
      v6[3] = v8;
      if (v4)
      {
LABEL_6:
        if ((a2 & 0x8000000000000000) == 0)
        {
          v9 = v4 + 32 * a2;
          if (v4)
          {
LABEL_8:
            v10 = (v8 >> 1) - a2;
            v11 = a2 - 1;
            v12 = v6 + 5;
            if (v4 == v9)
            {
LABEL_11:
              __break(1u);
            }

            else
            {
              while (1)
              {
                v13 = *(v4 + 8);
                v14 = *(v4 + 24);
                v15 = *(v4 + 16);
                v37 = *v4;
                v38 = v13;
                v39 = v15;
                v40 = v14;
                sub_18E67EEC4(v37, v13, v15);

                a3(&v36, &v37);
                sub_18E682A3C(v37, v38, v39);

                *(v12 - 1) = v36;
                if (!v11)
                {
                  break;
                }

                --v11;
                ++v12;
                v4 += 32;
                if (v4 == v9)
                {
                  goto LABEL_11;
                }
              }
            }

            v16 = v4 + 32;
            if (v16 == v9)
            {
              goto LABEL_30;
            }

            while (1)
            {
              v17 = *(v16 + 8);
              v18 = *(v16 + 24);
              v19 = *(v16 + 16);
              v37 = *v16;
              v38 = v17;
              v39 = v19;
              v40 = v18;
              sub_18E67EEC4(v37, v17, v19);

              a3(&v36, &v37);
              sub_18E682A3C(v37, v38, v39);

              v20 = v36;
              if (!v10)
              {
                v21 = v6[3];
                if (((v21 >> 1) + 0x4000000000000000) < 0)
                {
                  goto LABEL_39;
                }

                v22 = a3;
                v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
                if (v23 <= 1)
                {
                  v24 = 1;
                }

                else
                {
                  v24 = v23;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD30, &qword_18E731FE0);
                v25 = swift_allocObject();
                v26 = _swift_stdlib_malloc_size(v25);
                v27 = v26 - 32;
                if (v26 < 32)
                {
                  v27 = v26 - 25;
                }

                v28 = v27 >> 3;
                v25[2] = v24;
                v25[3] = 2 * (v27 >> 3);
                v29 = (v25 + 4);
                v30 = v6[3] >> 1;
                if (v6[2])
                {
                  v31 = v6 + 4;
                  if (v25 != v6 || v29 >= v31 + 8 * v30)
                  {
                    memmove(v25 + 4, v31, 8 * v30);
                  }

                  v6[2] = 0;
                }

                v12 = (v29 + 8 * v30);
                v10 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

                v6 = v25;
                a3 = v22;
              }

              v32 = __OFSUB__(v10--, 1);
              if (v32)
              {
                goto LABEL_38;
              }

              v16 += 32;
              *v12++ = v20;
              if (v16 == v9)
              {
                goto LABEL_30;
              }
            }
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        goto LABEL_40;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      if (v4)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = MEMORY[0x1E69E7CC0];
  v10 = 0;
LABEL_30:
  v33 = v6[3];
  if (v33 < 2)
  {
    return v6;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v10);
  v35 = v34 - v10;
  if (!v32)
  {
    v6[2] = v35;
    return v6;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_18E6818BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  result = sub_18E72B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 3 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v19);
      MEMORY[0x193AD1DF0](v20);
      sub_18E72B8A8();
      if (v21 != 2)
      {
        MEMORY[0x193AD1DF0](v21 & 1);
      }

      result = sub_18E72B8E8();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 3 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_18E681B6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_18E681CA0@<X0>(unsigned int a1@<W0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = a1;
  v8 = BYTE2(a1);
  v9 = *v3;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v7);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  v10 = HIWORD(a1) & 1;
  v38 = a3;
  sub_18E72B8A8();
  if (v8 != 2)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  v11 = a1 & 0x100;
  v12 = sub_18E72B8E8();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = 1;
    do
    {
      v17 = (*(v9 + 48) + 3 * v14);
      if (*v17 == v7 && (((v11 != 0) ^ v17[1]) & 1) == 0)
      {
        v18 = v17[2];
        if (v18 == 2)
        {
          if (v8 == 2)
          {
            goto LABEL_12;
          }
        }

        else if (v8 != 2 && v10 == (v18 & 1))
        {
LABEL_12:
          v16 = 0;
          v19 = 1;
          goto LABEL_15;
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
    v19 = 0;
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

LABEL_15:
  v20 = *(v9 + 16);
  result = v20 + v16;
  if (__OFADD__(v20, v16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v22 = *(v9 + 24);
  if (v22 >= result && (a2 & 1) != 0)
  {
    v23 = v39;
    if (v19)
    {
LABEL_19:
      v24 = (*(*v23 + 48) + 3 * v14);
      v25 = v24[1];
      v26 = v24[2];
      *v38 = *v24;
      v38[1] = v25;
      v38[2] = v26;
      *v24 = v7;
      v24[1] = BYTE1(v11);
      v24[2] = BYTE2(a1);
      return result;
    }

    goto LABEL_40;
  }

  v37 = v19;
  if (a2)
  {
    v23 = v39;
    sub_18E6818BC(result);
  }

  else
  {
    if (v22 >= result)
    {
      result = sub_18E6C7174();
      v23 = v39;
      if (v37)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }

    v23 = v39;
    sub_18E67F04C(result);
  }

  v27 = *v23;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v7);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  sub_18E72B8A8();
  if (v8 != 2)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  result = sub_18E72B8E8();
  v28 = -1 << *(v27 + 32);
  v14 = result & ~v28;
  if (((*(v27 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_39:
    if (v37)
    {
      goto LABEL_44;
    }

LABEL_40:
    v32 = *v23;
    *(*v23 + 8 * (v14 >> 6) + 56) |= 1 << v14;
    v33 = (*(v32 + 48) + 3 * v14);
    *v33 = v7;
    v33[1] = BYTE1(v11);
    v33[2] = BYTE2(a1);
    v34 = *(v32 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      *(v32 + 16) = v36;
      v38[2] = 0;
      *v38 = 512;
      return result;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v29 = ~v28;
  while (1)
  {
    v30 = (*(v27 + 48) + 3 * v14);
    if (*v30 != v7 || (((v11 != 0) ^ v30[1]) & 1) != 0)
    {
      goto LABEL_31;
    }

    v31 = v30[2];
    if (v31 != 2)
    {
      break;
    }

    if (v8 == 2)
    {
      goto LABEL_37;
    }

LABEL_31:
    v14 = (v14 + 1) & v29;
    if (((*(v27 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v8 == 2 || v10 != (v31 & 1))
  {
    goto LABEL_31;
  }

LABEL_37:
  if (v37)
  {
    goto LABEL_19;
  }

LABEL_44:
  result = sub_18E72B808();
  __break(1u);
  return result;
}

uint64_t sub_18E68205C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, uint64_t *, void *, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 32 * a3 - 32;
    v9 = result - a3;
    v26 = *a4;
LABEL_3:
    v24 = v8;
    v25 = a3;
    v10 = v7 + 32 * a3;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v23 = v9;
    while (1)
    {
      v28 = v9;
      v16 = *v8;
      v15 = *(v8 + 8);
      v17 = *(v8 + 24);
      v18 = *(v8 + 16);
      v33[0] = v11;
      v33[1] = v12;
      v34 = v13;
      v35 = v14;
      v30[0] = v16;
      v30[1] = v15;
      v31 = v18;
      v32 = v17;
      v36 = v11;
      v29 = v12;
      sub_18E67EEC4(v11, v12, v13);

      sub_18E67EEC4(v16, v15, v18);

      v19 = v6;
      v20 = a5(v33, &v35, v30, &v32);
      sub_18E682A3C(v16, v15, v18);

      sub_18E682A3C(v36, v29, v13);

      if (v19)
      {
        break;
      }

      if ((v20 & 1) == 0)
      {
        v6 = 0;
        v7 = v26;
LABEL_10:
        a3 = v25 + 1;
        v8 = v24 + 32;
        v9 = v23 - 1;
        if (v25 + 1 != a2)
        {
          goto LABEL_3;
        }

        return result;
      }

      v7 = v26;
      if (!v26)
      {
        __break(1u);
        return result;
      }

      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v13 = *(v8 + 48);
      v14 = *(v8 + 56);
      v21 = *(v8 + 16);
      *(v8 + 32) = *v8;
      *(v8 + 48) = v21;
      *v8 = v11;
      *(v8 + 8) = v12;
      *(v8 + 16) = v13;
      *(v8 + 24) = v14;
      v8 -= 32;
      v9 = v28 + 1;
      v6 = 0;
      if (v28 == -1)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_18E682224(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = result;
  if (a2)
  {
    if (a2 <= 0)
    {
      v6 = MEMORY[0x1E69E7CC0];
      v7 = *(MEMORY[0x1E69E7CC0] + 24);
      if (result)
      {
LABEL_4:
        if ((a2 & 0x8000000000000000) == 0)
        {
          v38 = v4 + 32 * a2;
          if (v4)
          {
            goto LABEL_6;
          }

          goto LABEL_37;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
      v6 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v6);
      v7 = 2 * ((result - 4) / 24);
      v6[2] = a2;
      v6[3] = v7;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v38 = 0;
      if (v4)
      {
LABEL_6:
        v8 = (v7 >> 1) - a2;
        v9 = a2 - 1;
        v37 = v6;
        v10 = (v6 + 7);
        while (v4 != v38)
        {
          v11 = *(v4 + 8);
          v12 = *(v4 + 24);
          v13 = *(v4 + 16);
          v42 = *v4;
          v43 = v11;
          v44 = v13;
          v45 = v12;
          sub_18E67EEC4(v42, v11, v13);

          a3(&v39, &v42);
          v14 = v39;
          v15 = v40;
          v16 = v41;
          sub_18E682A3C(v42, v43, v44);

          *(v10 - 24) = v14;
          *(v10 - 16) = v15;
          *(v10 - 8) = v16;
          if (!v9)
          {
            v4 += 32;
            goto LABEL_13;
          }

          --v9;
          v10 += 24;
          v4 += 32;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v8 = 0;
  if (result)
  {
    v10 = MEMORY[0x1E69E7CC0] + 32;
    v38 = result;
LABEL_13:
    while (v4 != v38)
    {
      v17 = *(v4 + 8);
      v18 = *(v4 + 24);
      v19 = *(v4 + 16);
      v42 = *v4;
      v43 = v17;
      v44 = v19;
      v45 = v18;
      sub_18E67EEC4(v42, v17, v19);

      a3(&v39, &v42);
      v21 = v39;
      v20 = v40;
      v22 = v41;
      sub_18E682A3C(v42, v43, v44);

      if (!v8)
      {
        v23 = v37[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v24 = a3;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FCF0, &qword_18E731F60);
        v27 = swift_allocObject();
        v28 = (_swift_stdlib_malloc_size(v27) - 32) / 24;
        v27[2] = v26;
        v27[3] = 2 * v28;
        v29 = (v27 + 4);
        v30 = v37[3] >> 1;
        v31 = 3 * v30;
        if (v37[2])
        {
          if (v27 != v37 || v29 >= &v37[v31 + 4])
          {
            memmove(v27 + 4, v37 + 4, 24 * v30);
          }

          v37[2] = 0;
        }

        v10 = v29 + v31 * 8;
        v8 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v37 = v27;
        a3 = v24;
      }

      v33 = __OFSUB__(v8--, 1);
      if (v33)
      {
        goto LABEL_39;
      }

      *v10 = v21;
      *(v10 + 8) = v20;
      *(v10 + 16) = v22;
      v10 += 24;
      v4 += 32;
    }
  }

  result = v37;
  v34 = v37[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v8);
    v36 = v35 - v8;
    if (v33)
    {
LABEL_42:
      __break(1u);
      return result;
    }

    v37[2] = v36;
  }

  return result;
}

uint64_t sub_18E682570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  sub_18E67EEC4(*a1, v4, v6);
  sub_18E682A3C(v3, v4, v6);
  *a2 = v5;
}

id sub_18E6825E4(uint64_t a1, uint64_t a2)
{
  *&v2[qword_1EAC8DC88] = 0;
  *&v2[qword_1EAC8DC80] = a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  *&v2[OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_platformKey] = a2;
  v2[OBJC_IVAR____TtC8Gestures18AnyGestureNodeShim_isValueless] = 1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AnyGestureNodeShim();

  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *(a1 + 120);
  v7 = *(a1 + 128);
  *(a1 + 120) = sub_18E6A6034;
  *(a1 + 128) = 0;
  sub_18E6826D0(v6, v7);
  return v5;
}

uint64_t sub_18E6826D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E682704(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_18E682758(a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_18E682758(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_18E6827BC(Strong);

  return swift_unknownObjectRelease();
}

uint64_t sub_18E6827BC(uint64_t a1)
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (result)
    {
      v4 = result;
      result = swift_unknownObjectRelease();
      if (v4 == a1)
      {
        return result;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v5 = *(v1 + qword_1EAC8DC80);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
    Strong = swift_getWitnessTable();
  }

  *(v5 + 192) = Strong;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18E6828A0()
{
  sub_18E682A2C();
}

uint64_t sub_18E6828C8(char a1)
{
  v3 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))() + 184);
  if (a1)
  {
    v5 = v3(v8);
    if ((*v4 & 2) == 0)
    {
      v6 = *v4 | 2;
LABEL_6:
      *v4 = v6;
    }
  }

  else
  {
    v5 = v3(v8);
    if ((*v4 & 2) != 0)
    {
      v6 = *v4 & 0xFFFFFFFFFFFFFFFDLL;
      goto LABEL_6;
    }
  }

  v5(v8, 0);
}

uint64_t (*GestureNode.options.modify(void *a1))()
{
  *a1 = *(v1 + 48);
  a1[1] = v1;
  return sub_18E682A60;
}

uint64_t sub_18E682A3C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return v3;
}

void sub_18E682A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = *(v4 + 48);
  *(v4 + 48) = *a1;
  v6 = v5;
  sub_18E68388C(&v6, a2, a3, a4);
}

uint64_t sub_18E682A9C(uint64_t a1, int a2)
{
  v3 = v2;
  v81 = a2;
  isa = v3->isa;
  v6 = sub_18E72AE18();
  v7 = *(v6 - 8);
  v87 = v6;
  v88 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(isa + 46);
  v13 = type metadata accessor for GesturePhase(255, v10, v11, v12);
  v14 = sub_18E72B438();
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v73 - v15;
  v91 = type metadata accessor for GesturePhaseQueue(0, v10, v16, v17);
  v83 = *(v91 - 8);
  v18 = MEMORY[0x1EEE9AC00](v91);
  v20 = &v73 - v19;
  v21 = *(v13 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v73 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v92 = v13;
  v93 = v21;
  v29 = *(v21 + 16);
  v90 = &v73 - v30;
  v29();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v82 = Strong;
    v77 = v3[24].isa;
    v34 = v92;
    (v29)(v28, a1, v92);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        swift_unknownObjectRelease();
        (*(v93 + 8))(v28, v34);
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v78 = v9;
    v75 = *(v10 - 8);
    v36 = *(v75 + 8);
    v76 = v10;
    v36(v28, v10);
    v37 = v83;
    v38 = v91;
    (*(v83 + 16))(v20, v3 + *(v3->isa + 48), v91);
    v41 = type metadata accessor for RingBuffer(0, v34, v39, v40);
    v42 = v85;
    sub_18E67DE08(v41, v85);
    v74 = *(v93 + 48);
    if (v74(v42, 1, v34) == 1)
    {
      v43 = &v20[*(v38 + 28)];
      v73 = v3;
      v44 = v84;
      (v29)(v84, v43, v34);
      v45 = v44;
      v3 = v73;
      (*(v37 + 8))(v20, v38);
      v46 = v74(v42, 1, v34);
      v47 = v93;
      if (v46 != 1)
      {
        (*(v79 + 8))(v42, v80);
      }
    }

    else
    {
      (*(v37 + 8))(v20, v38);
      v47 = v93;
      v45 = v84;
      (*(v93 + 32))(v84, v42, v34);
    }

    v48 = v86;
    (*(v47 + 32))(v86, v45, v34);
    v49 = swift_getEnumCaseMultiPayload();
    v50 = v76;
    if (v49 <= 2)
    {
      v47 = v75;
LABEL_17:
      (*(v47 + 8))(v48, v50);
      v9 = v78;
      goto LABEL_18;
    }

    if (v49 == 3)
    {
      v50 = v34;
      goto LABEL_17;
    }

    v9 = v78;
    if (v49 == 4)
    {
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    ObjectType = swift_getObjectType();
    v52 = (*(v77 + 2))(v3, ObjectType);
    swift_unknownObjectRelease();
    if ((v52 & 1) == 0)
    {
      v53 = v90;
      (*(v93 + 8))(v90, v92);
      *v53 = 0xC000000000000002;
      swift_storeEnumTagMultiPayload();
    }
  }

LABEL_19:
  v54 = v90;
  v55 = v89;
  sub_18E67F5E8(v90, v91, v32, v33);
  if (v55)
  {
    return (*(v93 + 8))(v54, v92);
  }

  if (sub_18E680FFC())
  {
    v57 = v87;
    v58 = v88;
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v59 = qword_1EAC8E570;
  }

  else
  {
    v57 = v87;
    v58 = v88;
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v59 = qword_1ED6F7FA0;
  }

  v60 = __swift_project_value_buffer(v57, v59);
  (*(v58 + 16))(v9, v60, v57);

  v61 = v9;
  v62 = sub_18E72ADF8();
  v63 = sub_18E72B3E8();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v94 = v65;
    *v64 = 136315138;
    v78 = v61;
    v66 = AnyGestureNode.debugLabel.getter();
    v68 = sub_18E6C5E8C(v66, v67, &v94);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_18E67C000, v62, v63, "%s enqueued phase", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v69 = v65;
    v54 = v90;
    MEMORY[0x193AD25C0](v69, -1, -1);
    MEMORY[0x193AD25C0](v64, -1, -1);

    (*(v88 + 8))(v78, v57);
  }

  else
  {

    (*(v58 + 8))(v61, v57);
  }

  v70 = v93;
  if (swift_unknownObjectUnownedLoadStrong())
  {
    sub_18E68E224(v3, v81 & 1);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = v3[24].isa;
    v72 = swift_getObjectType();
    (*(v71 + 3))(v3, v54, v72, v71);
    swift_unknownObjectRelease();
  }

  return (*(v70 + 8))(v54, v92);
}

void sub_18E683358(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4)
  {
    v4 = ((v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  }

  if (v4 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = 8 * v5;
  v7 = *(a1 + v5);
  v8 = v7 - 4;
  if (v7 < 4)
  {
LABEL_20:
    if (v7 > 1)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v5 <= 3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 4;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *a1;
      if (v5 < 4)
      {
        goto LABEL_24;
      }
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (*(a1 + 2) << 16);
      if (v5 < 4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *a1;
      if (v5 < 4)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v7 = v10 + 4;
    goto LABEL_20;
  }

  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *a1;
  if (v5 >= 4)
  {
    goto LABEL_19;
  }

LABEL_24:
  v7 = (v10 | (v8 << v6)) + 4;
  if (v7 > 1)
  {
LABEL_25:
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        goto LABEL_30;
      }

      v20 = *(*(a2 + 16) - 8);
      sub_18E683B98(*a1);
      goto LABEL_29;
    }

LABEL_28:
    v20 = *(*(a2 + 16) - 8);
    (*(v3 + 8))(a1, *(a2 + 16));
LABEL_29:
    v3 = v20;
    goto LABEL_30;
  }

LABEL_21:
  if (v7 < 2)
  {
    goto LABEL_28;
  }

LABEL_30:
  v11 = *(v3 + 80) & 0xF8 | 7;
  v12 = ((a1 + v5 + v11 + 1) & ~v11);
  v13 = v12[v5];
  v14 = v13 - 4;
  if (v13 < 4)
  {
    goto LABEL_44;
  }

  if (v5 <= 3)
  {
    v15 = v5;
  }

  else
  {
    v15 = 4;
  }

  if (v15 <= 1)
  {
    if (!v15)
    {
      goto LABEL_44;
    }

    v16 = *v12;
  }

  else if (v15 == 2)
  {
    v16 = *v12;
  }

  else if (v15 == 3)
  {
    v16 = *v12 | (v12[2] << 16);
  }

  else
  {
    v16 = *v12;
  }

  v17 = (v16 | (v14 << v6)) + 4;
  v13 = v16 + 4;
  if (v5 < 4)
  {
    v13 = v17;
  }

LABEL_44:
  if (v13 <= 1)
  {
    if (v13 >= 2)
    {
      return;
    }

    goto LABEL_52;
  }

  if (v13 == 2)
  {
LABEL_52:
    v19 = *(v3 + 8);

    v19();
    return;
  }

  if (v13 == 3)
  {
    v18 = *v12;

    sub_18E683B98(v18);
  }
}

uint64_t sub_18E683604(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*((*MEMORY[0x1E69E7D40] & *a3) + 0x78))() + 16);

  v18 = v8;
  v19 = 0;
  v9 = sub_18E684B74(a1, a2, &v18, &v20);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = (*((*v7 & *v4) + 0x78))(v9);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  (*(*v16 + 256))(&v20);

  return sub_18E682A3C(v13, v14, v15);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void GestureNode.options.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  *(v4 + 48) = *a1;
  v6 = v5;
  sub_18E68388C(&v6, a2, a3, a4);
}

void sub_18E68388C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((((*result & 1) == 0) ^ *(v4 + 48)) & 1) == 0)
  {
    v5 = 0xC000000000000000;
    sub_18E683A1C(&v5, 1, a3, a4);
  }
}

uint64_t GestureNode.container.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  sub_18E67F50C();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E683934(char a1)
{
  v3 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))() + 184);
  if (a1)
  {
    v5 = v3(v8);
    if ((*v4 & 1) == 0)
    {
      v6 = *v4 | 1;
LABEL_6:
      *v4 = v6;
    }
  }

  else
  {
    v5 = v3(v8);
    if (*v4)
    {
      v6 = *v4 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_6;
    }
  }

  v5(v8, 0);
}

void sub_18E683A1C(unint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 368);
  v8 = type metadata accessor for GesturePhase(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - v10);
  v12 = *a1;
  if (v7 == MEMORY[0x1E69E7CA8] + 8)
  {
    sub_18E683B80(v12);
    sub_18E6964A4(v12, 3, a2 & 1);
    sub_18E683B98(v12);
  }

  else
  {
    *v11 = v12;
    swift_storeEnumTagMultiPayload();
    sub_18E683B80(v12);
    sub_18E682A9C(v11, a2 & 1);
    (*(v9 + 8))(v11, v8);
  }
}

unint64_t sub_18E683B80(unint64_t result)
{
  if (result >> 62 == 2)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_18E683B98(unint64_t a1)
{
  if (a1 >> 62 == 2)
  {
  }
}

void sub_18E683BC8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a1;
  v91 = *(a2 + 16);
  v6 = type metadata accessor for GesturePhase(255, v91, a3, a4);
  v86 = type metadata accessor for RingBufferIterator(0, v6, v7, v8);
  v76 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v72 - v9;
  v12 = type metadata accessor for RingBuffer(0, v6, v10, v11);
  v75 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v87 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v72 - v15;
  v16 = sub_18E72B438();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v84 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  v23 = *(v6 - 8);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v90 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v77 = &v72 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v78 = &v72 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v82 = &v72 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v72 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v72 - v35;
  v79 = a2;
  v80 = v4;
  v37 = (v4 + *(a2 + 32));
  v88 = v12;
  sub_18E67DE08(v12, v22);
  v89 = v23[6];
  if (v89(v22, 1, v6) == 1)
  {
    (*(v17 + 8))(v22, v16);
    return;
  }

  v38 = v23[4];
  v81 = v36;
  v73 = v38;
  v38(v36, v22, v6);
  v83 = v23;
  v39 = v23[2];
  v39(v34, v92, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v48 = v83;
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      (v83[1])(v34, v6);
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(*(v91 - 8) + 8))(v34);
LABEL_13:
    v48 = v83;
LABEL_14:
    (v48[1])(v81, v6);
    return;
  }

  v41 = *(*(v91 - 8) + 8);
  v41(v34);
  v42 = v82;
  v39(v82, v81, v6);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 > 2)
  {
    v48 = v83;
    if ((v43 - 4) >= 2)
    {
      (v83[1])(v42, v6);
    }

    goto LABEL_14;
  }

  if (v43 != 1)
  {
    (v41)(v42, v91);
    goto LABEL_13;
  }

  (v41)(v42, v91);
  v44 = v78;
  v39(v78, (v80 + *(v79 + 28)), v6);
  v45 = swift_getEnumCaseMultiPayload();
  if (v45 > 2)
  {
    v46 = v87;
    v47 = v90;
    if ((v45 - 4) >= 2)
    {
      (v83[1])(v44, v6);
    }
  }

  else
  {
    v46 = v87;
    v47 = v90;
    if (v45 == 1)
    {
      (v41)(v44, v91);
      (v83[1])(v81, v6);
      return;
    }

    (v41)(v44, v91);
  }

  v92 = *v37;
  v49 = v88;
  v50 = v77;
  v39(v77, v37 + v88[9], v6);
  sub_18E680594(v92, v50, v6, v51, v46);
  v52 = v85;
  sub_18E68065C(v49, v85);
  v53 = v84;
  v54 = v86;
  sub_18E684690(v86, v84);
  if (v89(v53, 1, v6) == 1)
  {
LABEL_22:
    (*(v76 + 8))(v52, v54);
    (v83[1])(v81, v6);
    v56 = v74;
    v55 = v75;
    v57 = v88;
    (*(v75 + 32))(v74, v46, v88);
    (*(v55 + 8))(v56, v57);
    return;
  }

  v58 = (v83 + 1);
  v92 = (v83 + 5);
  while (1)
  {
    v73(v47, v53, v6);
    if ((sub_18E71F718(v47, v91, v59, v60) & 1) == 0)
    {
      (*v58)(v47, v6);
      goto LABEL_25;
    }

    v62 = *v46;
    v61 = v46[1];
    if (v61 == *v46)
    {
      v63 = v88[10];
      v64 = *(v46 + v63);
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_43;
      }

      if (!v61)
      {
        goto LABEL_44;
      }

      if (v61 == -1 && v66 == 0x8000000000000000)
      {
        goto LABEL_46;
      }

      *(v46 + v63) = v66 % v61;
    }

    else
    {
      v65 = __OFADD__(v61, 1);
      v67 = v61 + 1;
      if (v65)
      {
        goto LABEL_42;
      }

      v46[1] = v67;
    }

    v68 = v88[11];
    v69 = *(v46 + v68);
    sub_18E72B278();
    sub_18E72B1D8();
    v70 = v46[2];
    sub_18E68E2C0(v69, v70, v6);
    (v83[5])(v70 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + v83[9] * v69, v90, v6);
    nullsub_1();
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    v52 = v85;
    v54 = v86;
    if (!v62)
    {
      goto LABEL_41;
    }

    if (v62 == -1 && v71 == 0x8000000000000000)
    {
      goto LABEL_45;
    }

    v46 = v87;
    *(v87 + v68) = v71 % v62;
    v53 = v84;
    v47 = v90;
LABEL_25:
    sub_18E684690(v54, v53);
    if (v89(v53, 1, v6) == 1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_18E6844A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E72B1E8();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_18E72B278();
    return v8;
  }

  return result;
}

uint64_t sub_18E6845A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for RingBuffer(0, a2, a3, a4);
  v9 = *(v8 - 8);
  (*(v9 + 16))(a5, a1, v8);
  v10 = *(a1 + *(v8 + 40));
  v13 = type metadata accessor for RingBufferIterator(0, a2, v11, v12);
  *(a5 + *(v13 + 28)) = v10;
  v14 = *(a1 + 8);
  result = (*(v9 + 8))(a1, v8);
  *(a5 + *(v13 + 32)) = v14;
  return result;
}

uint64_t sub_18E684690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - v8;
  v11 = *(v10 + 24);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 40);
  v19 = *(v2 + v18);
  v20 = v19 < 1;
  v21 = v19 - 1;
  if (!v20)
  {
    v37 = v21;
    v38 = v18;
    v39 = v12;
    v22 = *(v14 + 16);
    v41 = v14 + 16;
    v42 = v13;
    v40 = v22;
    v22(v9, v2, a1);
    v25 = type metadata accessor for RingBuffer(0, v11, v23, v24);
    v26 = *(*(v25 - 8) + 8);

    v26(v9, v25);
    v36 = *(a1 + 28);
    v27 = *(v2 + v36);
    sub_18E72B298();

    v29 = __OFADD__(v27, 1);
    v30 = v27 + 1;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      v40(v6, v2, a1);
      v31 = *v6;
      result = (v26)(v6, v25);
      if (v31)
      {
        if (v30 != 0x8000000000000000 || v31 != -1)
        {
          v32 = v37;
          *(v2 + v36) = v30 % v31;
          v33 = v39;
          *(v2 + v38) = v32;
          (*(v42 + 32))(v33, v16, v11);
          return (*(v42 + 56))(v33, 0, 1, v11);
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v34 = *(v13 + 56);

  return v34(v12, 1, 1, v11);
}

uint64_t sub_18E68498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for GesturePhase(0, a3, a3, a4);
  v14 = *(*(v9 - 8) + 32);
  (v14)((v9 - 8), a5, a1, v9);
  v12 = a5 + *(type metadata accessor for GesturePhaseQueue.InvalidTransition(0, a3, v10, v11) + 28);

  return v14(v12, a2, v9);
}

void sub_18E684A54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v11 = a1;
  a6(a3, a4, a5);
  swift_unknownObjectRelease();
}

uint64_t sub_18E684AE4(uint64_t a1, uint64_t (*a2)(char *, uint64_t *), void (*a3)(char *, uint64_t, uint64_t *))
{
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v17[0] = *a1;
  v17[1] = v5;
  v17[2] = v6;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  sub_18E67EEC4(v8, v7, v9);
  sub_18E680BF0(v17, &v14, a2, a3);
  v10 = v14;
  v11 = v15;
  v12 = v16;

  return sub_18E682A3C(v10, v11, v12);
}

unint64_t sub_18E684B74@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1].n128_u8[0];
  if (a2)
  {
    if (a2 != 1)
    {
      sub_18E72B5C8();

      v12 = GFGestureRelationRole.description.getter(a2, v11);
      MEMORY[0x193AD15C0](v12);

      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (result < 6)
  {
    *a4 = 0x20201010000uLL >> (8 * result);
    *(a4 + 1) = result & 1;
    *(a4 + 2) = v6;
    *(a4 + 8) = v4;
    *(a4 + 24) = v5;
    return result;
  }

  v7 = result;
  sub_18E72B5C8();

  v9 = GFGestureRelationType.description.getter(v7, v8);
  MEMORY[0x193AD15C0](v9);

LABEL_9:
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t sub_18E684CE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *a4;
  v9 = *(a1 + 16);
  v10 = *(a3 + 16);
  v16 = *a1;
  v17 = v4;
  v18 = v9;
  v19 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v10;
  v15 = v8;
  sub_18E67EEC4(v16, v4, v9);

  sub_18E67EEC4(v6, v7, v10);

  LOBYTE(v5) = _s8Gestures18GestureNodeMatcherO1loiySbAC_ACtFZ_0(&v16, &v12);
  sub_18E682A3C(v12, v13, v14);

  sub_18E682A3C(v16, v17, v18);

  return v5 & 1;
}

BOOL _s8Gestures18GestureNodeMatcherO1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    v8 = v3;
    v9 = v2;
    v10 = 0;
    goto LABEL_6;
  }

  if (!*(a2 + 16))
  {
    sub_18E67EEC4(*a1, v2, v4);
    sub_18E682A3C(v3, v2, v4);
    v12 = v6;
    v13 = v5;
    v14 = 0;
LABEL_16:
    sub_18E682A3C(v12, v13, v14);
    return 0;
  }

  if (v4 == 1)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    sub_18E67EEC4(v3, v2, 1);
    v8 = v3;
    v9 = v2;
    v10 = 1;
LABEL_6:
    sub_18E682A3C(v8, v9, v10);
    sub_18E682A3C(v6, v5, v7);
    return 1;
  }

  if (v7 == 1)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), 1);
    sub_18E67EEC4(v3, v2, v4);
    sub_18E682A3C(v3, v2, v4);
    v12 = v6;
    v13 = v5;
    v14 = 1;
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), 2);
    if (v4 == 2)
    {
      sub_18E67EEC4(v3, v2, 2);
      sub_18E682A3C(v3, v2, 2);
      sub_18E682A3C(v6, v5, 2);
      return v5 == 0;
    }

    sub_18E67EEC4(v3, v2, v4);
    sub_18E682A3C(v3, v2, v4);
    v12 = v6;
    v13 = v5;
    v14 = 2;
    goto LABEL_16;
  }

  if (v4 == 2)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    sub_18E67EEC4(v3, v2, 2);
    v8 = v3;
    v9 = v2;
    v10 = 2;
    goto LABEL_6;
  }

  if (v4 != 3 || v7 != 3)
  {
    sub_18E67EEC4(*a2, *(a2 + 8), v7);
    sub_18E67EEC4(v3, v2, v4);
    v8 = v3;
    v9 = v2;
    v10 = v4;
    goto LABEL_6;
  }

  sub_18E682A3C(*a1, v2, 3);
  sub_18E682A3C(v6, v5, 3);
  return v6 == 0;
}

unint64_t sub_18E685090()
{
  result = qword_1ED6F7F20;
  if (!qword_1ED6F7F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6F7F20);
  }

  return result;
}

char *sub_18E6850DC(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = sub_18E72B518();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6._rawValue = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    result = sub_18E6853AC(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = a1;
    v8 = 0;
    v2 = v17;
    v6._rawValue = rawValue;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AD1B60](v8, a2);
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      rawValue = v6._rawValue;
      v13 = *(v6._rawValue + 2);
      v12 = *(v6._rawValue + 3);
      if (v13 >= v12 >> 1)
      {
        sub_18E6853AC((v12 > 1), v13 + 1, 1);
        v2 = v17;
        v6._rawValue = rawValue;
      }

      ++v8;
      *(v6._rawValue + 2) = v13 + 1;
      *(v6._rawValue + v13 + 4) = v11;
    }

    while (v5 != v8);
    a1 = v16;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x78))();
  if (a1)
  {
    v14 = *(v6._rawValue + 2);
    if (v14)
    {
      v15 = 32;
      do
      {
        sub_18E695BE4(&rawValue, *(v6._rawValue + v15));
        v15 += 8;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    AnyGestureNode.stopTrackingEvents(with:)(v6);
  }
}

char *sub_18E6852A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED90, &unk_18E731FC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18E6853AC(char *a1, int64_t a2, char a3)
{
  result = sub_18E6852A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

Swift::Void __swiftcall AnyGestureNode.stopTrackingEvents(with:)(Swift::OpaquePointer with)
{
  if (*(*(v1 + 176) + 16))
  {
    v2 = *(with._rawValue + 2);
    if (v2)
    {
      v3 = (with._rawValue + 32);
      do
      {
        v4 = *v3++;
        sub_18E685424(v4, &v5);
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t sub_18E685424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  result = sub_18E72B8E8();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18E6C72D0();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 8 * v8);
    result = sub_18E685538(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 8) = v10;
  return result;
}

unint64_t sub_18E685538(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18E72B4A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_18E72B888();
        MEMORY[0x193AD1DF0](v10);
        v11 = sub_18E72B8E8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_18E6856E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x188);
  v7 = type metadata accessor for GesturePhase(0, v6, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v45 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v46 = v11;
    v47 = v8;
    v24 = *(v8 + 16);
    v50 = a1;
    v24(v21, a1, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) >= 2)
      {
        (*(v47 + 8))(v21, v7);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        swift_unknownObjectRelease();
        return (*(*(v6 - 8) + 8))(v21, v6);
      }

      (*(*(v6 - 8) + 8))(v21, v6);
    }

    v26 = qword_1EAC8DC88;
    v27 = *(v4 + qword_1EAC8DC88);
    if ((v27 & 4) == 0)
    {
      *(v4 + qword_1EAC8DC88) = v27 | 4;
    }

    v24(v19, v50, v7);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 > 2)
    {
      if ((v28 - 4) >= 2)
      {
        v29 = *v19;
        v30 = *v19 + 0x4000000000000000;
        if (*v19 >> 62 == 3 && v30 <= 3 && v30 != 2)
        {
          sub_18E683B98(v29);
          v41 = [v23 respondsToSelector_];
          v33 = v50;
          if (v41)
          {
            v41 = [v23 gestureNodeWillAbort_];
          }

LABEL_28:
          [v23 gestureNode:v4 didUpdatePhase:{sub_18E67D6B8(v41, v42, v43, v44)}];
          swift_unknownObjectRelease();
          v34 = v49;
          v24(v49, v33, v7);
          v35 = swift_getEnumCaseMultiPayload();
          if (v35 >= 3)
          {
            if (v35 - 4 >= 2)
            {
              (*(v47 + 8))(v34, v7);
            }

            v38 = v46;
            v24(v46, v33, v7);
            result = swift_getEnumCaseMultiPayload();
            if (result > 2)
            {
              if (result != 3)
              {
                v37 = 0x1EAC8D000uLL;
                if (result == 4)
                {
                  *(v4 + qword_1EAC8DC88) = 0;
                }

                goto LABEL_40;
              }

              result = (*(v47 + 8))(v38, v7);
            }

            else
            {
              result = (*(*(v6 - 8) + 8))(v38, v6);
            }

            v37 = 0x1EAC8D000uLL;
          }

          else
          {
            result = (*(*(v6 - 8) + 8))(v34, v6);
            v36 = *(v4 + v26);
            v37 = 0x1EAC8D000;
            if ((v36 & 8) == 0)
            {
              *(v4 + v26) = v36 | 8;
            }
          }

LABEL_40:
          v39 = *(v37 + 3208);
          v40 = *(v4 + v39);
          if ((v40 & 4) != 0)
          {
            *(v4 + v39) = v40 & 0xFFFFFFFFFFFFFFFBLL;
          }

          return result;
        }

        sub_18E683B98(v29);
      }
    }

    else
    {
      (*(*(v6 - 8) + 8))(v19, v6);
    }

    v24(v16, v48, v7);
    v41 = swift_getEnumCaseMultiPayload();
    v33 = v50;
    if (v41 > 2)
    {
      if ((v41 - 4) >= 2)
      {
        v41 = (*(v47 + 8))(v16, v7);
      }
    }

    else if (v41)
    {
      v41 = (*(*(v6 - 8) + 8))(v16, v6);
    }

    else
    {
      (*(*(v6 - 8) + 8))(v16, v6);
      v41 = [v23 gestureNodeWillUnblock_];
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_18E685C74(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v185 = a2;
  v219 = *v3;
  v5 = v219;
  v6 = sub_18E72AE18();
  v211 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v209 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v176 - v9;
  v13 = type metadata accessor for GesturePhase(0, *(v5 + 368), v11, v12);
  v217 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v202 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v204 = &v176 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v214 = (&v176 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v210 = &v176 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v215 = &v176 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v201 = &v176 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v184 = &v176 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v180 = &v176 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v179 = &v176 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v176 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v203 = &v176 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v216 = &v176 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v206 = &v176 - v39;
  v40 = sub_18E72B438();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v212 = &v176 - v41;
  v44 = type metadata accessor for RingBufferIterator(0, v13, v42, v43);
  v181 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v207 = &v176 - v45;
  v48 = type metadata accessor for RingBuffer(0, v13, v46, v47);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v176 - v53;
  if (v50 == MEMORY[0x1E69E7CA8] + 8)
  {
    v67 = v185;

    return sub_18E6C46E8(a1, v67);
  }

  v183 = a1;
  v205 = v44;
  v178 = v34;
  v177 = v10;
  v208 = v6;
  v55 = v3 + *(v219 + 384);
  v200 = v50;
  v199 = type metadata accessor for GesturePhaseQueue(0, v50, v51, v52);
  v56 = *(v199 + 32);
  v213 = v55;
  v57 = &v55[v56];
  v58 = *(v49 + 16);
  v58(v54, &v55[v56], v48);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v55) = sub_18E72B378();
  v59 = *(v49 + 8);
  result = v59(v54, v48);
  if (v55)
  {
    return result;
  }

  v221 = 1;
  v197 = v57;
  v58(v54, v57, v48);
  v61 = v207;
  sub_18E68065C(v48, v207);
  v59(v54, v48);
  v62 = v212;
  v63 = v205;
  sub_18E684690(v205, v212);
  v64 = v217;
  v65 = *(v217 + 48);
  v196 = v217 + 48;
  v195 = v65;
  if (v65(v62, 1, v13) == 1)
  {
    (*(v181 + 8))(v61, v63);
    return sub_18E688410(v221);
  }

  v190 = v48;
  v68 = 0;
  v71 = *(v64 + 32);
  v69 = v64 + 32;
  v70 = v71;
  v72 = (v69 - 16);
  v219 = v69 - 24;
  v194 = v200 - 8;
  v188 = (v69 + 8);
  v192 = v211 + 2;
  v193 = v211 + 1;
  *&v66 = 136315650;
  v182 = v66;
  v218 = v3;
  v73 = v206;
  v74 = v216;
  v191 = (v69 - 16);
  v189 = v71;
  v217 = v69;
  v71(v206, v212, v13);
  while (1)
  {
    v76 = *(v199 + 28);
    v77 = *v72;
    (*v72)(v74, &v76[v213], v13);
    v78 = v203;
    v79 = v77;
    v77(v203, v73, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      break;
    }

    v84 = v204;
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*v219)(v78, v13);
    }

LABEL_16:
    v85 = v190;
    v86 = v197;
    if (sub_18E72B378())
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
LABEL_45:
      v139 = qword_1EAC8E570;
      goto LABEL_51;
    }

    v85 = *(v85 + 40);
    v87 = *(v86 + v85);
    sub_18E72B298();
    if (__OFADD__(v87, 1))
    {
      goto LABEL_66;
    }

    v88 = *v86;
    if (!*v86)
    {
      goto LABEL_67;
    }

    if (v87 == 0x7FFFFFFFFFFFFFFFLL && v88 == -1)
    {
      goto LABEL_69;
    }

    *(v86 + v85) = (v87 + 1) % v88;
    v90 = v86[1];
    v91 = __OFSUB__(v90, 1);
    v92 = v90 - 1;
    if (v91)
    {
      goto LABEL_68;
    }

    v86[1] = v92;
    v93 = v201;
    v70(v201, v215, v13);
    v94 = v213;
    (*v188)(&v76[v213], v93, v13);
    v95 = v79;
    v79(v210, &v76[v94], v13);
    v96 = swift_getEnumCaseMultiPayload();
    if (v96 > 2)
    {
      v97 = v216;
      v98 = v214;
      v99 = v218;
      if (v96 == 3)
      {
        (*v219)(v210, v13);
      }

      else if (v96 == 4)
      {

        v99[22] = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v97 = v216;
      v98 = v214;
      (*(*(v200 - 8) + 8))(v210, v200);
    }

    v79(v98, &v76[v94], v13);
    if (sub_18E680FFC())
    {
      v100 = qword_1EAC8E570;
      v101 = v209;
      v102 = v202;
      if (qword_1EAC8D8F8 != -1)
      {
        swift_once();
        v100 = qword_1EAC8E570;
      }
    }

    else
    {
      v100 = qword_1ED6F7FA0;
      v101 = v209;
      v102 = v202;
      if (qword_1ED6F7F98 != -1)
      {
        swift_once();
        v100 = qword_1ED6F7FA0;
      }
    }

    v103 = v208;
    v104 = __swift_project_value_buffer(v208, v100);
    (v192->isa)(v101, v104, v103);
    v95(v84, v97, v13);
    v95(v102, v98, v13);

    v105 = v84;
    v106 = sub_18E72ADF8();
    v107 = sub_18E72B3E8();

    v211 = v106;
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v220 = v187;
      *v108 = v182;
      v109 = AnyGestureNode.debugLabel.getter();
      v111 = sub_18E6C5E8C(v109, v110, &v220);
      v186 = v107;
      v112 = v102;
      v113 = v111;

      *(v108 + 4) = v113;
      *(v108 + 12) = 2080;
      v114 = v184;
      v95(v184, v105, v13);
      v115 = *v219;
      (*v219)(v105, v13);
      v116 = GesturePhase.description.getter(v13);
      v118 = v117;
      v115(v114, v13);
      v119 = sub_18E6C5E8C(v116, v118, &v220);

      *(v108 + 14) = v119;
      *(v108 + 22) = 2080;
      v95(v114, v112, v13);
      v115(v112, v13);
      v120 = GesturePhase.description.getter(v13);
      v122 = v121;
      v115(v114, v13);
      v123 = sub_18E6C5E8C(v120, v122, &v220);

      *(v108 + 24) = v123;
      v124 = v211;
      _os_log_impl(&dword_18E67C000, v211, v186, "%s updated phase: %s -> %s", v108, 0x20u);
      v125 = v187;
      swift_arrayDestroy();
      MEMORY[0x193AD25C0](v125, -1, -1);
      v126 = v108;
      v127 = v218;
      MEMORY[0x193AD25C0](v126, -1, -1);

      (v193->isa)(v209, v208);
      v73 = v206;
      v128 = v207;
    }

    else
    {
      v115 = *v219;
      (*v219)(v102, v13);
      v115(v105, v13);

      (v193->isa)(v101, v103);
      v73 = v206;
      v128 = v207;
      v127 = v218;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v74 = v216;
    v130 = v212;
    v70 = v189;
    if (Strong)
    {
      sub_18E6EF5C4(v127);
      swift_unknownObjectRelease();
    }

    v131 = swift_unknownObjectWeakLoadStrong();
    v132 = v214;
    if (v131)
    {
      v133 = *(v127 + 24);
      ObjectType = swift_getObjectType();
      v135 = *(v133 + 32);
      v136 = v133;
      v130 = v212;
      v135(v127, v132, v74, ObjectType, v136);
      swift_unknownObjectRelease();
    }

    v115(v132, v13);
    v115(v74, v13);
    v115(v73, v13);
    sub_18E684690(v205, v130);
    v68 = 1;
    v75 = v195(v130, 1, v13);
    v72 = v191;
    if (v75 == 1)
    {
      goto LABEL_60;
    }

    v70(v73, v130, v13);
  }

  (*(*(v200 - 8) + 8))(v78);
  v81 = sub_18E69C624(&v221, v183);
  v84 = v204;
  if (!v81)
  {
    goto LABEL_16;
  }

  v137 = v213;
  v138 = sub_18E69E13C(*(v81 + 16), v199, v82, v83);
  if (v138)
  {
    v79(v178, &v76[v137], v13);
    if (sub_18E680FFC())
    {
      v86 = v177;
      v85 = v180;
      v76 = v179;
      v70 = v208;
      if (qword_1EAC8D8F8 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_45;
    }

    v86 = v177;
    v85 = v180;
    v76 = v179;
    v70 = v208;
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v139 = qword_1ED6F7FA0;
LABEL_51:
    v141 = __swift_project_value_buffer(v70, v139);
    (v192->isa)(v86, v141, v70);
    v142 = v79;
    v79(v76, v216, v13);
    v79(v85, v178, v13);
    v143 = v218;

    v144 = sub_18E72ADF8();
    v145 = sub_18E72B3E8();

    LODWORD(v217) = v145;
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = v219;
      v214 = v144;
      v148 = v146;
      v215 = swift_slowAlloc();
      v220 = v215;
      *v148 = v182;
      v149 = AnyGestureNode.debugLabel.getter();
      v151 = sub_18E6C5E8C(v149, v150, &v220);

      *(v148 + 4) = v151;
      *(v148 + 12) = 2080;
      v152 = v184;
      v142(v184, v76, v13);
      v153 = *v147;
      (*v147)(v76, v13);
      v154 = GesturePhase.description.getter(v13);
      v155 = v180;
      v156 = v154;
      v158 = v157;
      v153(v152, v13);
      v159 = sub_18E6C5E8C(v156, v158, &v220);

      *(v148 + 14) = v159;
      *(v148 + 22) = 2080;
      v142(v152, v155, v13);
      v153(v155, v13);
      v160 = GesturePhase.description.getter(v13);
      v162 = v161;
      v153(v152, v13);
      v163 = sub_18E6C5E8C(v160, v162, &v220);
      v164 = v218;

      *(v148 + 24) = v163;
      v165 = v214;
      _os_log_impl(&dword_18E67C000, v214, v217, "%s updated phase: %s -> %s", v148, 0x20u);
      v166 = v215;
      swift_arrayDestroy();
      MEMORY[0x193AD25C0](v166, -1, -1);
      MEMORY[0x193AD25C0](v148, -1, -1);

      (v193->isa)(v177, v208);
    }

    else
    {
      v164 = v143;
      v153 = *v219;
      (*v219)(v85, v13);
      v153(v76, v13);

      (v193->isa)(v86, v208);
    }

    v167 = v206;
    v128 = v207;
    v168 = swift_unknownObjectUnownedLoadStrong();
    v169 = v178;
    if (v168)
    {
      sub_18E6EF5C4(v164);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v170 = *(v164 + 24);
      v171 = swift_getObjectType();
      v172 = v216;
      (*(v170 + 32))(v164, v169, v216, v171, v170);

      swift_unknownObjectRelease();
    }

    else
    {

      v172 = v216;
    }

    v153(v169, v13);
    v153(v172, v13);
    v153(v167, v13);
    v127 = v218;
LABEL_60:
    (*(v181 + 8))(v128, v205);
    goto LABEL_61;
  }

  v140 = *v219;
  (*v219)(v216, v13);
  v140(v73, v13);
  (*(v181 + 8))(v207, v205);
  v127 = v218;
  if ((v68 & 1) == 0)
  {
    return sub_18E688410(v221);
  }

LABEL_61:
  if (swift_unknownObjectUnownedLoadStrong())
  {
    sub_18E687048(v127, v173, v174, v175);
    swift_unknownObjectRelease();
  }

  return sub_18E688410(v221);
}

void sub_18E687048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E687170(a3, a4, &v19);
  if (v20 == 4 && v19 == 0)
  {

    sub_18E68FEDC(a1);
  }

  else
  {
    sub_18E69E818(v19, v20);
    sub_18E687170(v6, v7, &v19);
    v8 = v20 & 0xFE;
    sub_18E69E818(v19, v20);
    if (v8 == 2)
    {
      v11 = &v17;
      sub_18E68737C(v9, v10, &v17);
      v14 = v18;
      if (v18 == 255)
      {
        v11 = &v19;
        sub_18E687170(v12, v13, &v19);
        v14 = v20;
      }

      v15 = v14 & 0xFE;
      sub_18E69E818(*v11, v14);
      if (v15 == 2)
      {
        v16 = sub_18E687600(a1);
        sub_18E687F10(v16);
      }

      sub_18E6880B0(&v19, a1);
    }
  }
}

unint64_t sub_18E687170@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 368);
  v6 = type metadata accessor for GesturePhase(0, v5, a1, a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  if (v5 == MEMORY[0x1E69E7CA8] + 8)
  {
    v13 = *(v3 + 240);
    *a3 = v13;
    v14 = *(v3 + 248);
    *(a3 + 8) = v14;

    return sub_18E6AA03C(v13, v14);
  }

  else
  {
    GestureNode.phase.getter(v8, v9, v11);
    sub_18E6872AC(v6, a3);
    return (*(v7 + 8))(v11, v6);
  }
}

unint64_t sub_18E6872AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) == MEMORY[0x1E69E7CA8] + 8)
  {
    if (*(*(result - 8) + 64) == 9)
    {
      v6 = *v2;
      *a2 = *v2;
      v7 = *(v2 + 8);
      *(a2 + 8) = v7;

      return sub_18E6AA03C(v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    return GesturePhase.mapValue<A>(_:)(nullsub_1, v3, v4, v5);
  }

  return result;
}

unint64_t sub_18E68737C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 368);
  v6 = type metadata accessor for GesturePhase(255, v5, a1, a2);
  v9 = type metadata accessor for RingBuffer(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = sub_18E72B438();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v22 - v17;
  if (v5 == MEMORY[0x1E69E7CA8] + 8)
  {

    return sub_18E6C4348(a3);
  }

  else
  {
    sub_18E67DBC8(v12, v15, v16);
    sub_18E67DE08(v9, v18);
    (*(v10 + 8))(v12, v9);
    v19 = *(v6 - 8);
    if ((*(v19 + 48))(v18, 1, v6) == 1)
    {
      result = (*(v14 + 8))(v18, v13);
      *a3 = 0;
      *(a3 + 8) = -1;
    }

    else
    {
      sub_18E6872AC(v6, &v22);
      result = (*(v19 + 8))(v18, v6);
      v21 = v23;
      *a3 = v22;
      *(a3 + 8) = v21;
    }
  }

  return result;
}

char *sub_18E687600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 32) != 1)
  {
    v17 = *(v4 + 16);

    v18 = MEMORY[0x1E69E7CC0];
    if (v17 && (v19 = sub_18E6879CC(a1), (v20 & 1) != 0))
    {
      v21 = *(*(v4 + 56) + 8 * v19);
    }

    else if (v18 >> 62 && sub_18E72B518())
    {
      v21 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CD0];
    }

    v22 = sub_18E687AA8(v21);

    if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
    {
      v23 = sub_18E72B518();
      if (v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = *(v22 + 16);
      if (v23)
      {
LABEL_22:
        result = sub_18E687EF0(0, v23 & ~(v23 >> 63), 0);
        if ((v23 & 0x8000000000000000) == 0)
        {
          v24 = 0;
          v12 = v18;
          do
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x193AD1B60](v24, v22);
            }

            else
            {
              v25 = *(v22 + 8 * v24 + 32);
            }

            v26 = *(v18 + 16);
            v27 = *(v18 + 24);

            if (v26 >= v27 >> 1)
            {
              sub_18E687EF0((v27 > 1), v26 + 1, 1);
            }

            ++v24;
            *(v18 + 16) = v26 + 1;
            v28 = v18 + 16 * v26;
            *(v28 + 32) = v25;
            *(v28 + 40) = a1;
          }

          while (v23 != v24);

          return v12;
        }

        __break(1u);
        goto LABEL_41;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72CA20;
  *(inited + 32) = a1;

  v6 = sub_18E68D820(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v7 = sub_18E68C78C(v6, 1u, sub_18E6BFA58, a1, v4, v3);

  if (!v7[2])
  {
    goto LABEL_37;
  }

  v8 = v7[4];

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v9 = sub_18E72B518();
  if (!v9)
  {
LABEL_37:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v29 = MEMORY[0x1E69E7CC0];
  result = sub_18E687EF0(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v29;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AD1B60](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = *(v29 + 16);
      v15 = *(v29 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_18E687EF0((v15 > 1), v14 + 1, 1);
      }

      ++v11;
      *(v29 + 16) = v14 + 1;
      v16 = v29 + 16 * v14;
      *(v16 + 32) = v13;
      *(v16 + 40) = a1;
    }

    while (v9 != v11);

    return v12;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_18E6879CC(uint64_t a1)
{
  sub_18E72B888();
  v2 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v2);
  v3 = sub_18E72B8E8();

  return sub_18E687A3C(a1, v3);
}

unint64_t sub_18E687A3C(uint64_t a1, uint64_t a2)
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

void *sub_18E687AA8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_18E72B518();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_18E687D54(v2, 0);

    v1 = sub_18E687B58(&v5, v3 + 4, v2, v1);
    sub_18E687EE8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_18E687B58(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_18E72B4D8();
  type metadata accessor for AnyGestureNode();
  sub_18E6A2ECC();
  result = sub_18E72B2D8();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_18E72B548())
    {
      goto LABEL_29;
    }

    type metadata accessor for AnyGestureNode();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
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
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_18E687D54(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

char *sub_18E687DDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8EE28, &unk_18E72F6F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18E687EF0(char *a1, int64_t a2, char a3)
{
  result = sub_18E687DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_18E687F10(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v5 = *(**v2 + 304);

      v7 = &v10;
      v8 = v5(&v10, v6);
      v9 = v11;
      if (v11 == 255)
      {
        v7 = &v12;
        (*(*v4 + 296))(&v12, v8);
        v9 = v13;
      }

      sub_18E69E818(*v7, v9);
      if (v9 < 3)
      {
        v12 = v4[4] | 0x4000000000000000;
        sub_18E680CBC(&v12, 0);
      }

      else
      {
        (*(*v3 + 296))(&v12);
        if (!v13)
        {
          sub_18E6880B0(&v12, v3);

          goto LABEL_5;
        }

        sub_18E69E818(v12, v13);
      }

LABEL_5:

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_18E6880B0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_18E72B528();

    if (v8)
    {

      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = sub_18E72B518();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_18E6C6434(v7, result + 1);
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      sub_18E688420(v18 + 1);
    }

    sub_18E6C6B38(v19, v17);

    *v3 = v17;
    goto LABEL_16;
  }

  sub_18E72B888();
  v10 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v10);
  v11 = sub_18E72B8E8();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_18E6882B4(v16, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_18E6882B4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18E688420(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18E68F640();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18E68CF28(v5 + 1);
  }

  v8 = *v3;
  sub_18E72B888();
  v9 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v9);
  result = sub_18E72B8E8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for AnyGestureNode();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18E72B808();
  __break(1u);
  return result;
}

uint64_t sub_18E688410(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_18E688420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
  result = sub_18E72B588();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_18E72B888();
      v18 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v18);
      result = sub_18E72B8E8();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_18E688698(int64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v177 = sub_18E72AE18();
  v8 = *(v177 - 8);
  v9 = MEMORY[0x1EEE9AC00](v177);
  v156 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v168 = &v156 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v156 - v14;
  if (*(v3 + 144))
  {
    return result;
  }

  v16 = *(v3 + 128);
  v176 = (v4 + 128);
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = sub_18E72B518();

    if (!v17)
    {
LABEL_6:
      v18 = *(v4 + 136);
      if ((v18 & 0xC000000000000001) != 0)
      {

        v19 = sub_18E72B518();

        if (!v19)
        {
          return result;
        }
      }

      else if (!*(v18 + 16))
      {
        return result;
      }
    }
  }

  else if (!*(v16 + 16))
  {
    goto LABEL_6;
  }

  if (*(*(v4 + 152) + 16))
  {
    return result;
  }

  *(v4 + 144) = 1;
  v20 = *(v4 + 16);
  if (v20)
  {
    v21 = *(v4 + 24);

    v20(v22);
    sub_18E6826D0(v20, v21);
  }

  if (sub_18E680FFC())
  {
    if (qword_1EAC8D8F8 != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_16;
  }

  if (qword_1ED6F7F98 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED6F7FA0;
LABEL_20:
  v24 = v177;
  v25 = __swift_project_value_buffer(v177, v23);
  v26 = *(v8 + 16);
  v174 = v8 + 16;
  v173 = v26;
  v26(v15, v25, v24);
  sub_18E69130C(a1, a2, v5);
  v27 = sub_18E72ADF8();
  v28 = sub_18E72B3E8();
  sub_18E691480(a1, a2, v5);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v181 = v30;
    v31.n128_u64[0] = 136315138;
    *v29 = 136315138;
    v32 = sub_18E6F045C(a1, a2, v5, v31);
    v34 = sub_18E6C5E8C(v32, v33, &v181);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_18E67C000, v27, v28, "Update began: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x193AD25C0](v30, -1, -1);
    MEMORY[0x193AD25C0](v29, -1, -1);
  }

  v35 = *(v8 + 8);
  v175 = v8 + 8;
  v172 = v35;
  v35(v15, v177);
  v36 = *(v4 + 96);
  v37 = *(v4 + 104);
  __swift_project_boxed_opaque_existential_1((v4 + 72), v36);
  v38 = (*(v37 + 8))(v36, v37);
  sub_18E69163C(v38, v39);
  sub_18E692080();
  v8 = -1;
  *&v40 = 136315394;
  v164 = v40;
  v41 = v176;
  v157 = v4;
  while (1)
  {
    v178 = 0;
    v42 = *v41;
    if ((v42 & 0xC000000000000001) != 0)
    {

      v43 = sub_18E72B518();

      if (!v43)
      {
        goto LABEL_27;
      }
    }

    else if (!*(v42 + 16))
    {
LABEL_27:
      v44 = *(v4 + 136);
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = sub_18E72B518();

        if (!v45)
        {
          goto LABEL_150;
        }
      }

      else if (!*(v44 + 16))
      {
        goto LABEL_150;
      }
    }

    v46 = *(v4 + 32);
    if (v46)
    {
      v47 = *(v4 + 40);

      v46(v48);
      sub_18E6826D0(v46, v47);
    }

    sub_18E68F554();

    v158 = MEMORY[0x1E69E7CD0];
    v165 = MEMORY[0x1E69E7CD0];
    v49 = v176;
LABEL_35:
    v50 = *v49;
    if ((v50 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v50 + 16))
    {
      goto LABEL_39;
    }

LABEL_127:
    v181 = sub_18E687AA8(v165);
    v5 = v178;
    sub_18E68F94C(&v181);
    if (v5)
    {

      __break(1u);
      return result;
    }

    v15 = v181;
    if ((v181 & 0x8000000000000000) != 0 || (v181 & 0x4000000000000000) != 0)
    {
      a2 = sub_18E72B518();
      if (a2)
      {
LABEL_131:
        if (a2 < 1)
        {
          __break(1u);
LABEL_163:
          swift_once();
LABEL_16:
          v23 = qword_1EAC8E570;
          goto LABEL_20;
        }

        a1 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v140 = MEMORY[0x193AD1B60](a1, v15);
          }

          else
          {
            v140 = *(v15 + 8 * a1 + 32);
          }

          ++a1;
          sub_18E689A70(v140);

          MEMORY[0x1EEE9AC00](v141);
          *(&v156 - 2) = v4;
          *(&v156 - 1) = v140;
          (*(*v140 + 360))(sub_18E6F236C);
        }

        while (a2 != a1);
      }
    }

    else
    {
      a2 = *(v181 + 16);
      if (a2)
      {
        goto LABEL_131;
      }
    }

    if ((*v176 & 0xC000000000000001) != 0)
    {

      v142 = sub_18E72B518();
    }

    else
    {
      v142 = *(*v176 + 16);
    }

    v41 = v176;
    if (!v142)
    {
      v143 = *(v4 + 136);
      if ((v143 & 0xC000000000000001) != 0)
      {

        v144 = sub_18E72B518();

        v41 = v176;
        if (v144)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v145 = *(v143 + 16);
        v41 = v176;
        if (v145)
        {
LABEL_146:
          v146 = *(v4 + 136);
          *(v4 + 136) = MEMORY[0x1E69E7CD0];
          sub_18E68BD94(v146);
          v41 = v176;
        }
      }
    }
  }

  v51 = sub_18E72B518();

  if (!v51)
  {
    goto LABEL_127;
  }

LABEL_39:
  v52 = *(v4 + 32);
  if (v52)
  {
    v53 = *(v4 + 40);

    v52(v54);
    sub_18E6826D0(v52, v53);
  }

  v49 = v176;
  v55 = *v176;
  if ((*v176 & 0xC000000000000001) != 0)
  {

    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    v49 = v176;
    sub_18E72B2D8();
    v55 = v183;
    v56 = v184;
    v57 = v185;
    a1 = v186;
    v58 = v187;
  }

  else
  {
    v59 = -1 << *(v55 + 32);
    v56 = v55 + 56;
    v57 = ~v59;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v58 = v61 & *(v55 + 56);

    a1 = 0;
  }

  v62 = (v57 + 64) >> 6;
  v163 = v55;
  v162 = v56;
  v161 = v57;
  v160 = v62;
  while (2)
  {
    if (v55 < 0)
    {
      v67 = sub_18E72B548();
      if (!v67)
      {
        goto LABEL_34;
      }

      v179 = v67;
      type metadata accessor for AnyGestureNode();
      swift_dynamicCast();
      v66 = v181;
      v167 = a1;
      v166 = v58;
LABEL_58:
      v169 = v66;
      if (!v66)
      {
LABEL_34:
        sub_18E687EE8(v55);
        goto LABEL_35;
      }

      v68 = *v49;
      if ((*v49 & 0xC000000000000001) != 0)
      {
        if (v68 < 0)
        {
          v69 = *v49;
        }

        else
        {
          v69 = v68 & 0xFFFFFFFFFFFFFF8;
        }

        v70 = v169;

        v71 = sub_18E72B558();

        v72 = v168;
        if (v71)
        {
          sub_18E6C6D9C(v69, v70);
        }

        v73 = v70;
      }

      else
      {
        sub_18E72B888();
        v74 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v74);
        v75 = sub_18E72B8E8();
        v76 = v68 + 56;
        v77 = -1 << *(v68 + 32);
        v78 = v75 & ~v77;
        v72 = v168;
        if ((*(v68 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
        {
          v79 = ~v77;
          v80 = *(v68 + 48);
          v73 = v169;
          while (*(v80 + 8 * v78) != v169)
          {
            v78 = (v78 + 1) & v79;
            if (((*(v76 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = *v49;
          *v49 = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_18E68F640();
          }

          sub_18E68F790(v78);
          *v49 = v181;
        }

        else
        {
          v73 = v169;
        }
      }

LABEL_76:

      v82 = v165;
      if ((v165 & 0xC000000000000001) != 0)
      {
        if (v165 < 0)
        {
          v83 = v165;
        }

        else
        {
          v83 = v165 & 0xFFFFFFFFFFFFFF8;
        }

        swift_retain_n();

        v84 = sub_18E72B528();

        if (!v84)
        {
          v93 = sub_18E72B518();
          if (__OFADD__(v93, 1))
          {
            goto LABEL_149;
          }

          v94 = sub_18E6C6434(v83, v93 + 1);
          v179 = v94;
          v95 = *(v94 + 16);
          if (*(v94 + 24) <= v95)
          {
            sub_18E688420(v95 + 1);
            v94 = v179;
          }

          v96 = v94;
          sub_18E72B888();

          v97 = sub_18E72AFA8();
          MEMORY[0x193AD1DF0](v97);
          v98 = sub_18E72B8E8();
          v99 = v96 + 56;
          v158 = v96;
          v100 = -1 << *(v96 + 32);
          v101 = v98 & ~v100;
          v102 = v101 >> 6;
          if (((-1 << v101) & ~*(v96 + 56 + 8 * (v101 >> 6))) != 0)
          {
            v103 = __clz(__rbit64((-1 << v101) & ~*(v96 + 56 + 8 * (v101 >> 6)))) | v101 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v104 = 0;
            v105 = (63 - v100) >> 6;
            do
            {
              if (++v102 == v105 && (v104 & 1) != 0)
              {
                goto LABEL_148;
              }

              v106 = v102 == v105;
              if (v102 == v105)
              {
                v102 = 0;
              }

              v104 |= v106;
              v107 = *(v99 + 8 * v102);
            }

            while (v107 == -1);
            v103 = __clz(__rbit64(~v107)) + (v102 << 6);
          }

          *(v99 + ((v103 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v103;
          v108 = v158;
          *(*(v158 + 48) + 8 * v103) = v73;
          ++*(v108 + 16);

          v82 = v108;
          goto LABEL_102;
        }

        v179 = v84;
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
      }

      else
      {
        sub_18E72B888();

        v85 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v85);
        v86 = sub_18E72B8E8();
        v87 = -1 << *(v82 + 32);
        v88 = v86 & ~v87;
        if (((*(v82 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
        {
LABEL_86:
          v90 = v158;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v90;
          v92 = sub_18E6882B4(v73, v88, v91);
          v82 = v181;
          v158 = v181;
LABEL_102:
          v109 = (*(*v73 + 304))(&v179, v92);
          v110 = v180;
          v165 = v82;
          if (v180 == 255)
          {
            (*(*v73 + 296))(&v181, v109);
            v111 = v181;
            v110 = v182;
          }

          else
          {
            v111 = v179;
            v181 = v179;
          }

          v112 = v110 & 0xFE;
          sub_18E69E818(v111, v110);
          if (v112 == 2)
          {
            v113 = sub_18E687600(v73);
            v114 = *(v113 + 2);
            v159 = v113;
            if (v114)
            {
              v115 = (v113 + 40);
              while (1)
              {
                v117 = *(v115 - 1);
                v116 = *v115;
                v118 = *(**v115 + 304);

                v120 = &v179;
                v121 = v118(&v179, v119);
                v122 = v180;
                if (v180 == 255)
                {
                  v120 = &v181;
                  (*(*v116 + 296))(&v181, v121);
                  v122 = v182;
                }

                sub_18E69E818(*v120, v122);
                if (v122 < 3)
                {
                  break;
                }

                (*(*v117 + 296))(&v181);
                if (v182)
                {
                  sub_18E69E818(v181, v182);
LABEL_120:

                  goto LABEL_109;
                }

                sub_18E6880B0(&v181, v117);

LABEL_109:

LABEL_110:
                v115 += 2;
                if (!--v114)
                {
                  goto LABEL_48;
                }
              }

              v181 = v116[4] | 0x4000000000000000;
              v123 = v178;
              (*(*v117 + 344))(&v181, 0);
              v178 = v123;
              if (v123)
              {
                if (sub_18E680FFC())
                {
                  v124 = qword_1EAC8E570;
                  if (qword_1EAC8D8F8 != -1)
                  {
                    swift_once();
                    v124 = qword_1EAC8E570;
                  }
                }

                else
                {
                  v124 = qword_1ED6F7FA0;
                  if (qword_1ED6F7F98 != -1)
                  {
                    swift_once();
                    v124 = qword_1ED6F7FA0;
                  }
                }

                v125 = v177;
                v126 = __swift_project_value_buffer(v177, v124);
                v173(v72, v126, v125);

                v127 = v178;
                v128 = v178;
                v129 = sub_18E72ADF8();
                v130 = sub_18E72B3E8();

                if (os_log_type_enabled(v129, v130))
                {
                  v131 = swift_slowAlloc();
                  v132 = swift_slowAlloc();
                  v171 = swift_slowAlloc();
                  v181 = v171;
                  *v131 = v164;
                  v170 = v129;
                  v133 = AnyGestureNode.debugLabel.getter();
                  v135 = sub_18E6C5E8C(v133, v134, &v181);

                  *(v131 + 4) = v135;
                  *(v131 + 12) = 2112;
                  v136 = v127;
                  v137 = _swift_stdlib_bridgeErrorToNSError();
                  *(v131 + 14) = v137;
                  *v132 = v137;
                  v138 = v170;
                  _os_log_impl(&dword_18E67C000, v170, v130, "%s couldn't fail node: %@", v131, 0x16u);
                  sub_18E68B548(v132, &qword_1EAC8EDC0, &unk_18E731720);
                  MEMORY[0x193AD25C0](v132, -1, -1);
                  v139 = v171;
                  __swift_destroy_boxed_opaque_existential_0(v171);
                  MEMORY[0x193AD25C0](v139, -1, -1);
                  MEMORY[0x193AD25C0](v131, -1, -1);

                  v72 = v168;
                }

                else
                {
                }

                v172(v72, v177);

                v178 = 0;
                goto LABEL_110;
              }

              goto LABEL_120;
            }

LABEL_48:

            v4 = v157;
            v8 = -1;
          }

          a1 = v167;
          v58 = v166;
          v49 = v176;
          v55 = v163;
          v56 = v162;
          v62 = v160;
          continue;
        }

        v89 = ~v87;
        while (*(*(v82 + 48) + 8 * v88) != v73)
        {
          v88 = (v88 + 1) & v89;
          if (((*(v82 + 56 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_102;
    }

    break;
  }

  v63 = a1;
  v64 = v58;
  v65 = a1;
  if (v58)
  {
LABEL_55:
    v166 = (v64 - 1) & v64;
    v167 = v65;

    goto LABEL_58;
  }

  while (1)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v65 >= v62)
    {
      goto LABEL_34;
    }

    v64 = *(v56 + 8 * v65);
    ++v63;
    if (v64)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  v147 = *(v4 + 48);
  if (v147)
  {
    v148 = *(v4 + 56);

    v147(v149);
    sub_18E6826D0(v147, v148);
  }

  if (sub_18E680FFC())
  {
    if (qword_1EAC8D8F8 != -1)
    {
      swift_once();
    }

    v150 = qword_1EAC8E570;
  }

  else
  {
    if (qword_1ED6F7F98 != -1)
    {
      swift_once();
    }

    v150 = qword_1ED6F7FA0;
  }

  v151 = v177;
  v152 = __swift_project_value_buffer(v177, v150);
  v173(v156, v152, v151);
  v153 = sub_18E72ADF8();
  v154 = sub_18E72B3E8();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    *v155 = 0;
    _os_log_impl(&dword_18E67C000, v153, v154, "Update ended", v155, 2u);
    MEMORY[0x193AD25C0](v155, -1, -1);
  }

  result = (v172)(v156, v177);
  *(v4 + 144) = 0;
  return result;
}

unint64_t sub_18E689A70(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_18E72B558();

    if (v5)
    {
      v6 = sub_18E6C6D9C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_18E72B888();
  v8 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v8);
  v9 = sub_18E72B8E8();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (*(*(v3 + 48) + 8 * v11) != a1)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E68F640();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_18E68F790(v11);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t destroy for FailureDependencyGraph.Edge(void *a1)
{
}

void *sub_18E689C20(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 16);
  v11 = *(v9 - 8) + 16;
  v12 = *(*(v9 - 8) + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;

  v10(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((((v15 + ((v12 + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
  v19 = ((a1 + v18) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v18) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E689D58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t *sub_18E689E34(unint64_t *__dst, unint64_t *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 > v8)
  {
    v8 = *(v6 + 64);
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v9;
  v11 = *(__dst + v9);
  v12 = v11 - 4;
  if (v11 < 4)
  {
LABEL_21:
    if (v11 > 1)
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v11 >= 2)
    {
      goto LABEL_30;
    }

LABEL_29:
    (*(v6 + 8))(__dst, v5);
    goto LABEL_30;
  }

  if (v9 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = 4;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (*(__dst + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v14 = *__dst;
      if (v9 < 4)
      {
        goto LABEL_25;
      }
    }

LABEL_20:
    v11 = v14 + 4;
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = *__dst;
  if (v9 >= 4)
  {
    goto LABEL_20;
  }

LABEL_25:
  v11 = (v14 | (v12 << v10)) + 4;
  if (v11 <= 1)
  {
    goto LABEL_22;
  }

LABEL_26:
  if (v11 == 2)
  {
    goto LABEL_29;
  }

  if (v11 == 3)
  {
    sub_18E683B98(*__dst);
  }

LABEL_30:
  v15 = *(__src + v9);
  v16 = v15 - 4;
  if (v15 < 4)
  {
    goto LABEL_44;
  }

  if (v9 <= 3)
  {
    v17 = v9;
  }

  else
  {
    v17 = 4;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else if (v17 == 3)
    {
      v18 = *__src | (*(__src + 2) << 16);
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = *__src;
      if (v9 < 4)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_43;
  }

  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = *__src;
  if (v9 >= 4)
  {
LABEL_43:
    v15 = v18 + 4;
LABEL_44:
    if (v15 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_50:
  v15 = (v18 | (v16 << v10)) + 4;
  if (v15 > 1)
  {
LABEL_51:
    if (v15 == 2)
    {
      (*(v6 + 32))(__dst, __src, v5);
      v19 = 2;
      goto LABEL_58;
    }

    if (v15 == 3)
    {
      *__dst = *__src;
      v19 = 3;
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_45:
  if (!v15)
  {
    (*(v6 + 32))(__dst, __src, v5);
    *((__dst + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((__src + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *(__dst + v9) = 0;
    return __dst;
  }

  if (v15 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    v19 = 1;
LABEL_58:
    *(__dst + v9) = v19;
    return __dst;
  }

LABEL_54:

  return memcpy(__dst, __src, v9 + 1);
}

id sub_18E68A150()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  (*(v1 + 296))(&v5);

  if (v6 != 3)
  {
    return 0;
  }

  v2 = v5;
  v3 = sub_18E68A28C();
  sub_18E69E818(v2, 3);
  return v3;
}

id sub_18E68A28C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = v1;
      v4 = 0xD000000000000013;
      v6 = 0x800000018E73A6F0;
      v5 = 1;
      goto LABEL_8;
    }

    v3 = v1;
    v4 = 0x646564756C637845;
    v5 = 0;
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    v7 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    v8 = sub_18E68A4B0(7, 0x6D6F74737543, 0xE600000000000000, 0x100000000, (v1 & 0x3FFFFFFFFFFFFFFFLL));
    sub_18E683B98(v1);
    return v8;
  }

  if (v1 <= 0xC000000000000001)
  {
    if (v1 != 0xC000000000000000)
    {
      v3 = 0x100000000;
      v4 = 0xD000000000000016;
      v6 = 0x800000018E73A6D0;
      v5 = 3;
      goto LABEL_8;
    }

    v3 = 0x100000000;
    v4 = 0x64656C6261736944;
    v5 = 2;
LABEL_4:
    v6 = 0xE800000000000000;
    goto LABEL_8;
  }

  if (v1 == 0xC000000000000002)
  {
    v3 = 0x100000000;
    v4 = 0xD000000000000021;
    v6 = 0x800000018E73A6A0;
    v5 = 4;
  }

  else
  {
    v3 = 0x100000000;
    if (v1 == 0xC000000000000003)
    {
      v4 = 0x646574726F6241;
      v5 = 5;
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000018E73A680;
      v5 = 6;
      v4 = 0xD000000000000012;
    }
  }

LABEL_8:

  return sub_18E68A4B0(v5, v4, v6, v3, 0);
}

id sub_18E68A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E748, qword_18E72E4C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = sub_18E72AFD8();
  v11 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v12;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_18E68A73C(inited);
  swift_setDeallocating();
  sub_18E68A9AC(inited + 32);
  if ((a4 & 0x100000000) == 0)
  {
    v32 = v11;
    *&v31 = sub_18E72B778();
    *(&v31 + 1) = v13;
    sub_18E68A8E4(&v31, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18E68AAAC(v28, 0x4E646574616C6572, 0xED0000444965646FLL, isUniquelyReferenced_nonNull_native);
  }

  if (a5)
  {
    v15 = sub_18E72AFD8();
    v17 = v16;
    swift_getErrorValue();
    v18 = v29;
    v19 = v30;
    v32 = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
    sub_18E68A8E4(&v31, v28);
    v21 = a5;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_18E68AAAC(v28, v15, v17, v22);
  }

  v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v24 = sub_18E72AFC8();
  v25 = sub_18E72AEC8();

  v26 = [v23 initWithDomain:v24 code:a1 userInfo:v25];

  return v26;
}

unint64_t sub_18E68A73C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8E8, &unk_18E730EA0);
    v3 = sub_18E72B738();
    v4 = a1 + 32;

    while (1)
    {
      sub_18E6D4CCC(v4, &v13, &qword_1EAC8E750, &qword_18E72EA00);
      v5 = v13;
      v6 = v14;
      result = sub_18E68A86C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18E68A8E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18E68A86C(uint64_t a1, uint64_t a2)
{
  sub_18E72B888();
  _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  v4 = sub_18E72B8E8();

  return sub_18E68A8F4(a1, a2, v4);
}

_OWORD *sub_18E68A8E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_18E68A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_18E72B7C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_18E68A9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E750, &qword_18E72EA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_18E68AA7C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *sub_18E68AAAC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18E68A86C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18E70CCD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18E68ABFC(v16, a4 & 1);
    v11 = sub_18E68A86C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18E72B818();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_18E68A8E4(a1, v22);
  }

  else
  {
    sub_18E68AEB4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_18E68ABFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8E8, &unk_18E730EA0);
  v33 = v4;
  result = sub_18E72B728();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_18E68A8E4(v24, v34);
      }

      else
      {
        sub_18E69F7B4(v24, v34);
      }

      sub_18E72B888();
      _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      result = sub_18E72B8E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_18E68A8E4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_18E68AEB4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_18E68A8E4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_18E68B020(unint64_t a1)
{
  if (*(v1 + 32) != 1)
  {
    v14 = 0;
    v12 = *(v1 + 16);
    v11 = *(v1 + 24);

    sub_18E68B228(a1, 0, v12, v11, &v14);

    return v14;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72CA20;
  *(inited + 32) = a1;

  v6 = sub_18E68D820(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v7 = sub_18E68C78C(v6, 0, sub_18E6BFA50, a1, v3, v4);

  if (!v7[2])
  {

    return 0;
  }

  v8 = v7[4];
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_18E72B518();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v13 = MEMORY[0x193AD1B60](0, v8);

    return v13;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18E68B228(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (!*(a3 + 16))
      {
        return result;
      }

      result = sub_18E6879CC(result);
      if ((v7 & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

    if (a2)
    {
      return result;
    }
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  result = sub_18E6879CC(result);
  if ((v6 & 1) == 0)
  {
    return result;
  }

LABEL_9:

  sub_18E68B2D8(v8, a5);
}

void *sub_18E68B2D8(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    result = sub_18E72B2D8();
    v2 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  while (v2 < 0)
  {
    v17 = sub_18E72B548();
    if (!v17)
    {
      return sub_18E687EE8(v2);
    }

    v23 = v17;
    type metadata accessor for AnyGestureNode();
    v16 = swift_dynamicCast();
    v15 = v25;
    v13 = v6;
    v14 = v7;
    if (!v25)
    {
      return sub_18E687EE8(v2);
    }

LABEL_18:
    v18 = &v23;
    v19 = (*(*v15 + 304))(&v23, v16);
    v20 = v24;
    if (v24 == 255)
    {
      v18 = &v25;
      (*(*v15 + 296))(&v25, v19);
      v20 = v26;
    }

    if (v20 <= 2)
    {
      if (v20 != 2)
      {
LABEL_25:
        *a2 = v15;

        return sub_18E687EE8(v2);
      }
    }

    else
    {
      v21 = *v18;
      if (v20 == 3)
      {
        sub_18E69E818(v21, 3);
      }

      else if (v21)
      {
        goto LABEL_25;
      }
    }

    v6 = v13;
    v7 = v14;
  }

  v11 = v6;
  v12 = v7;
  v13 = v6;
  if (v7)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return sub_18E687EE8(v2);
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return sub_18E687EE8(v2);
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E68B548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18E68B64C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E72AFD8();
  v6 = v5;
  v7 = a1;
  sub_18E68B6EC(v4, v6, v8, v9);

  return 1;
}

void sub_18E68B6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a1;
  v68 = a2;
  v78 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x188);
  v5 = type metadata accessor for GesturePhase(255, v78, a3, a4);
  v6 = sub_18E72B438();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - v9;
  v13 = type metadata accessor for RingBuffer(0, v5, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  v77 = *(v5 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v75 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v73 = &v63 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v63 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v63 - v27;
  v66 = v4;
  v29 = *(v4 + qword_1EAC8DC80);
  sub_18E67DBC8(v19, v30, v31);
  sub_18E67DE08(v13, v10);
  v32 = *(v14 + 8);
  v71 = v13;
  v72 = v14 + 8;
  v33 = v13;
  v34 = v77;
  v69 = v32;
  v32(v19, v33);
  v35 = *(v34 + 48);
  v36 = v35(v10, 1, v5);
  v76 = v29;
  if (v36 == 1)
  {
    GestureNode.phase.getter(v37, v38, v28);
    if (v35(v10, 1, v5) != 1)
    {
      (*(v63 + 8))(v10, v64);
    }
  }

  else
  {
    (*(v34 + 32))(v28, v10, v5);
  }

  v39 = *(v34 + 32);
  v39(v26, v28, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload - 4 >= 2)
    {
      (*(v77 + 8))(v26, v5);
      return;
    }
  }

  else
  {
    (*(*(v78 - 8) + 8))(v26, v78);
  }

  v65 = v39;
  v43 = v70;
  sub_18E67DBC8(v70, v41, v42);
  v44 = v74;
  v45 = v35;
  v46 = v71;
  sub_18E67DE08(v71, v74);
  v69(v43, v46);
  if (v45(v44, 1, v5) == 1)
  {
    v49 = v73;
    GestureNode.phase.getter(v47, v48, v73);
    v50 = v45(v44, 1, v5);
    v51 = v65;
    if (v50 != 1)
    {
      (*(v63 + 8))(v44, v64);
    }
  }

  else
  {
    v49 = v73;
    v51 = v65;
    v65(v73, v44, v5);
  }

  v52 = v75;
  v51(v75, v49, v5);
  v53 = swift_getEnumCaseMultiPayload();
  v57 = v78;
  if (v53 <= 2)
  {
    v53 = (*(*(v78 - 8) + 8))(v52, v78);
    goto LABEL_19;
  }

  if (v53 == 3)
  {
    v53 = (*(v77 + 8))(v52, v5);
    goto LABEL_19;
  }

  if (v53 != 4)
  {
LABEL_19:
    sub_18E690AE0(v53, v54, v55, v56);
    type metadata accessor for GestureNodeShim.Failure(0, v57, v58, v59);
    swift_getWitnessTable();
    v60 = swift_allocError();
    v61 = v68;
    *v62 = v67;
    v62[1] = v61;

    GestureNode.fail(with:)(v60);
  }
}

uint64_t sub_18E68BD30(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2[1] <= result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v2 + *(a2 + 40));
  if (__OFADD__(v3, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!*v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 + result != 0x8000000000000000 || *v2 != -1)
  {
    return sub_18E72B298();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_18E68BD94(uint64_t a1)
{
  v3 = sub_18E72AE18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v1;
  v7 = sub_18E68C46C(a1);
  v65 = v7[2];
  if (!v65)
  {
  }

  v9 = 0;
  v64 = v7 + 4;
  v57 = (v4 + 8);
  v58 = (v4 + 16);
  *&v8 = 136315394;
  v56 = v8;
  v59 = v6;
  v60 = v3;
  v63 = v7;
  while (1)
  {
    if (v9 >= v7[2])
    {
      goto LABEL_42;
    }

    v14 = &v64[2 * v9];
    v16 = *v14;
    v15 = v14[1];
    if (!v15)
    {
      break;
    }

    swift_retain_n();

    if (sub_18E680FFC())
    {
      v17 = qword_1EAC8E570;
      if (qword_1EAC8D8F8 != -1)
      {
        swift_once();
        v17 = qword_1EAC8E570;
      }
    }

    else
    {
      v17 = qword_1ED6F7FA0;
      if (qword_1ED6F7F98 != -1)
      {
        swift_once();
        v17 = qword_1ED6F7FA0;
      }
    }

    v23 = __swift_project_value_buffer(v3, v17);
    (*v58)(v6, v23, v3);

    v24 = v6;
    v25 = sub_18E72ADF8();
    v26 = sub_18E72B3E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69 = v61;
      *v27 = v56;
      v28 = AnyGestureNode.debugLabel.getter();
      v30 = sub_18E6C5E8C(v28, v29, &v69);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;

      v32 = sub_18E6EE4B8(v31);

      v33 = MEMORY[0x193AD16E0](v32, &type metadata for GestureNodeID);
      v35 = v34;

      v36 = sub_18E6C5E8C(v33, v35, &v69);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_18E67C000, v25, v26, "%s is blocking reset of the subgraph: %s", v27, 0x16u);
      v37 = v61;
      swift_arrayDestroy();
      MEMORY[0x193AD25C0](v37, -1, -1);
      v38 = v27;
      v3 = v60;
      MEMORY[0x193AD25C0](v38, -1, -1);

      v6 = v59;
      (*v57)(v59, v3);
    }

    else
    {

      (*v57)(v24, v3);
      v6 = v24;
    }

    v10 = v66[12];
    v11 = v66[13];
    __swift_project_boxed_opaque_existential_1(v66 + 9, v10);
    v12 = (*(v11 + 8))(v10, v11);
    sub_18E68DE20(v16, v15, v12, v13);

LABEL_5:
    v7 = v63;
    if (++v9 == v65)
    {
    }
  }

  v62 = *v14;
  if ((v16 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E6A2ECC();
    sub_18E72B2D8();
    v18 = v71;
    v19 = v72;
    v21 = v73;
    v20 = v74;
    v22 = v75;
  }

  else
  {
    v39 = -1 << *(v16 + 32);
    v19 = v16 + 56;
    v21 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v22 = v41 & *(v16 + 56);
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v18 = v16;
  }

  v61 = v21;
  v42 = (v21 + 64) >> 6;
  while (v18 < 0)
  {
    v49 = sub_18E72B548();
    if (!v49 || (v67 = v49, type metadata accessor for AnyGestureNode(), v48 = swift_dynamicCast(), v47 = v69, v45 = v20, v46 = v22, !v69))
    {
LABEL_36:
      sub_18E687EE8(v18);
      sub_18E68F304(v62);

      v6 = v59;
      v3 = v60;
      goto LABEL_5;
    }

LABEL_32:
    v50 = &v67;
    v51 = (*(*v47 + 304))(&v67, v48);
    v52 = v68;
    if (v68 == 255)
    {
      v50 = &v69;
      (*(*v47 + 296))(&v69, v51);
      v52 = v70;
    }

    v53 = *v50;
    v54 = v52 & 0xFE;
    sub_18E69E818(v53, v52);
    if (v54 == 2)
    {
      (*(*v47 + 352))();
    }

    v20 = v45;
    v22 = v46;
  }

  v43 = v20;
  v44 = v22;
  v45 = v20;
  if (v22)
  {
LABEL_28:
    v46 = (v44 - 1) & v44;
    v47 = *(*(v18 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));

    if (!v47)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      goto LABEL_36;
    }

    v44 = *(v19 + 8 * v45);
    ++v43;
    if (v44)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_18E68C46C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  v5 = sub_18E68C78C(a1, 2u, 0, 0, v4, v3);

  v6 = v5[2];
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v34 = MEMORY[0x1E69E7CC0];
  result = sub_18E68D800(0, v6, 0);
  v8 = 0;
  v9 = v34;
  v26 = v5;
  v27 = v5 + 4;
  v25 = v6;
  while (1)
  {
    if (v8 >= v5[2])
    {
      goto LABEL_37;
    }

    v29 = v9;
    v10 = v27[v8];
    v11 = v10 >> 62 ? sub_18E72B518() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v11)
    {
      break;
    }

    v13 = 0;
LABEL_29:
    v20 = sub_18E68D820(v10);

    v9 = v29;
    v34 = v29;
    v22 = *(v29 + 16);
    v21 = *(v29 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_18E68D800((v21 > 1), v22 + 1, 1);
      v9 = v34;
    }

    ++v8;
    *(v9 + 16) = v22 + 1;
    v23 = v9 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v13;
    if (v8 == v6)
    {
      v24 = v9;

      return v24;
    }
  }

  v28 = v8;
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x193AD1B60](v12, v10);
    v13 = result;
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_35;
    }

LABEL_13:
    v15 = (*v13 + 296);
    v16 = *v15;
    (*v15)(&v32);
    if (!v33)
    {
      goto LABEL_28;
    }

    sub_18E69E818(v32, v33);
    v17 = &v30;
    result = (*(*v13 + 304))(&v30);
    v18 = v31;
    if (v31 == 255)
    {
      v17 = &v32;
      result = (v16)(&v32, result);
      v18 = v33;
    }

    if (v18 <= 2)
    {
      if (v18 != 2)
      {
        if (v18 != 1)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v19 = *v17;
      if (v18 == 3)
      {
        sub_18E69E818(v19, 3);
      }

      else if (v19)
      {
        goto LABEL_28;
      }
    }

    ++v12;
    if (v14 == v11)
    {
      v13 = 0;
LABEL_28:
      v6 = v25;
      v5 = v26;
      v8 = v28;
      goto LABEL_29;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v13 = *(v10 + 8 * v12 + 32);

  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_13;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_18E68C78C(uint64_t a1, unsigned int a2, unsigned __int8 (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v41[0] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E68D978(&qword_1ED6F7F48, &protocol conformance descriptor for AnyGestureNode);
    result = sub_18E72B2D8();
    v8 = v41[1];
    v10 = v41[2];
    v11 = v41[3];
    v12 = v41[4];
    v13 = v41[5];
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  v38 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v23 = sub_18E72B548();
  if (!v23)
  {
LABEL_38:
    sub_18E687EE8(v8);

    return v38;
  }

  v40 = v23;
  type metadata accessor for AnyGestureNode();
  swift_dynamicCast();
  v22 = v39[0];
  while (1)
  {
    v24 = v41[0];
    if ((v41[0] & 0xC000000000000001) != 0)
    {

      v18 = sub_18E72B558();

      if (v18)
      {
        goto LABEL_10;
      }
    }

    else if (*(v41[0] + 16))
    {
      sub_18E72B888();
      v25 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v25);
      v26 = sub_18E72B8E8();
      v27 = -1 << *(v24 + 32);
      v28 = v26 & ~v27;
      if ((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v24 + 48) + 8 * v28) != v22)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_10:

        if (v8 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }
    }

LABEL_27:
    LOBYTE(v40) = 1;
    v39[0] = MEMORY[0x1E69E7CC0];
    sub_18E68CB70(a3, a4);
    sub_18E68CB80(v22, v41, a2, v39, a5, a6, a3, a4, &v40);
    sub_18E6826D0(a3, a4);
    v30 = v39[0];
    if (v39[0] >> 62)
    {
      if (!sub_18E72B518())
      {
LABEL_37:

        goto LABEL_10;
      }
    }

    else if (!*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_37;
    }

    v34 = a5;
    v31 = a6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_18E68D5C0(0, v38[2] + 1, 1, v38);
    }

    v33 = v38[2];
    v32 = v38[3];
    if (v33 >= v32 >> 1)
    {
      v38 = sub_18E68D5C0((v32 > 1), v33 + 1, 1, v38);
    }

    v38[2] = v33 + 1;
    v38[v33 + 4] = v30;
    a6 = v31;
    a5 = v34;
    if (v8 < 0)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (!v13)
    {
      break;
    }

    v19 = v12;
LABEL_18:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = *(*(v8 + 48) + ((v19 << 9) | (8 * v21)));
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_38;
    }

    v13 = *(v10 + 8 * v19);
    ++v20;
    if (v13)
    {
      v12 = v19;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E68CB70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E68CB80(uint64_t a1, uint64_t *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 (*a7)(uint64_t *), uint64_t a8, _BYTE *a9)
{
  v14 = *a2;
  sub_18E68CB70(a7, a8);
  if (!sub_18E68CE2C(a1, v14))
  {

    sub_18E6880B0(v33, a1);

    if (sub_18E68D150(a1, a4, a7, a8, a9))
    {
      v15 = sub_18E68D214(a1, a3, a5, a6);
      v32 = v15;
      v28 = a4;
      if (v15 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18E72B518())
      {
        v17 = 0;
        while ((v32 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193AD1B60](v17, v32);
          v19 = __OFADD__(v17++, 1);
          if (v19)
          {
            goto LABEL_24;
          }

LABEL_14:
          if (v18 != a1)
          {
            v20 = *a2;
            if ((*a2 & 0xC000000000000001) != 0)
            {

              v21 = sub_18E72B558();

              if ((v21 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            else
            {
              if (!*(v20 + 16))
              {
                goto LABEL_7;
              }

              sub_18E72B888();
              v22 = sub_18E72AFA8();
              MEMORY[0x193AD1DF0](v22);
              v23 = sub_18E72B8E8();
              v24 = -1 << *(v20 + 32);
              v25 = v23 & ~v24;
              if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
                goto LABEL_7;
              }

              v26 = ~v24;
              while (*(*(v20 + 48) + 8 * v25) != a1)
              {
                v25 = (v25 + 1) & v26;
                if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }
            }

            sub_18E68CB70(a7, a8);
            sub_18E68CB80(v18, a2, a3, v28, a5, a6, a7, a8, a9);
            sub_18E6826D0(a7, a8);
          }

LABEL_7:

          if (v17 == i)
          {
            goto LABEL_27;
          }
        }

        if (v17 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(v32 + 32 + 8 * v17);

        v19 = __OFADD__(v17++, 1);
        if (!v19)
        {
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:
    }
  }

  return sub_18E6826D0(a7, a8);
}

BOOL sub_18E68CE2C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_18E72B558();

    return v3 & 1;
  }

  else if (*(a2 + 16) && (sub_18E72B888(), v6 = sub_18E72AFA8(), MEMORY[0x193AD1DF0](v6), v7 = sub_18E72B8E8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      result = v11 == a1;
      if (v11 == a1)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_18E68CF28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
  result = sub_18E72B588();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_18E72B888();

      v17 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v17);
      result = sub_18E72B8E8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

  return result;
}

uint64_t sub_18E68D150(uint64_t a1, void *a2, unsigned __int8 (*a3)(uint64_t *), uint64_t a4, _BYTE *a5)
{
  v10 = a1;
  if (a3 && (v7 = a3(&v10)) != 0)
  {
    if (v7 != 1)
    {
      *a5 = 0;
    }
  }

  else
  {

    MEMORY[0x193AD16B0](v8);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18E72B1B8();
    }

    sub_18E72B218();
  }

  return 1;
}

void *sub_18E68D214(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (*(a3 + 16))
      {
        v6 = sub_18E6879CC(a1);
        if (v7)
        {
          v8 = *(a3 + 56);
LABEL_9:
          v10 = *(v8 + 8 * v6);

          goto LABEL_24;
        }
      }

      goto LABEL_10;
    }

    v11 = MEMORY[0x1E69E7CC0];
    if (*(a4 + 16) && (v12 = a1, v13 = sub_18E6879CC(a1), a1 = v12, (v14 & 1) != 0))
    {
      v21 = *(*(a4 + 56) + 8 * v13);

      a1 = v12;
      if (!*(a3 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v11 >> 62)
      {
        v20 = a1;
        if (sub_18E72B518())
        {
          v15 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v15 = MEMORY[0x1E69E7CD0];
        }

        a1 = v20;
      }

      else
      {
        v15 = MEMORY[0x1E69E7CD0];
      }

      v21 = v15;
      if (!*(a3 + 16))
      {
        goto LABEL_21;
      }
    }

    sub_18E6879CC(a1);
    if (v16)
    {

LABEL_23:
      sub_18E68D3E0(v17);
      v10 = v21;
      goto LABEL_24;
    }

LABEL_21:
    if (v11 >> 62 && sub_18E72B518())
    {
      v17 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    goto LABEL_23;
  }

  if (*(a4 + 16))
  {
    v6 = sub_18E6879CC(a1);
    if (v9)
    {
      v8 = *(a4 + 56);
      goto LABEL_9;
    }
  }

LABEL_10:
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_18E72B518())
  {
    v10 = sub_18E6BF1D4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

LABEL_24:
  v18 = sub_18E687AA8(v10);

  return v18;
}

uint64_t sub_18E68D3E0(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_18E72B4D8();
    type metadata accessor for AnyGestureNode();
    sub_18E68D978(&qword_1ED6F7F48, &protocol conformance descriptor for AnyGestureNode);
    result = sub_18E72B2D8();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_18E687EE8(v1);
    }

    while (1)
    {
      sub_18E6880B0(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18E72B548())
      {
        type metadata accessor for AnyGestureNode();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_18E687EE8(v1);
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_18E687EE8(v1);
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_18E68D5C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDB0, &qword_18E72F5E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EDB8, &qword_18E72F5E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18E68D6F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FD28, &qword_18E731FD8);
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
    v10 = MEMORY[0x1E69E7CC0];
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