_BYTE *_s17SiriRemembersViewV17InteractionEntityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17SiriRemembersViewV6EntityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17SiriRemembersViewV11InteractionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17SiriRemembersViewV11InteractionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE655D8()
{
  result = qword_1EB4DB270;
  if (!qword_1EB4DB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB270);
  }

  return result;
}

unint64_t sub_1ABE65630()
{
  result = qword_1EB4DB278;
  if (!qword_1EB4DB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB278);
  }

  return result;
}

unint64_t sub_1ABE65688()
{
  result = qword_1EB4DB280;
  if (!qword_1EB4DB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB280);
  }

  return result;
}

unint64_t sub_1ABE656E0()
{
  result = qword_1ED870C38;
  if (!qword_1ED870C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C38);
  }

  return result;
}

unint64_t sub_1ABE65738()
{
  result = qword_1ED870C40;
  if (!qword_1ED870C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C40);
  }

  return result;
}

unint64_t sub_1ABE65790()
{
  result = qword_1ED870438;
  if (!qword_1ED870438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870438);
  }

  return result;
}

unint64_t sub_1ABE657E8()
{
  result = qword_1ED870440;
  if (!qword_1ED870440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870440);
  }

  return result;
}

unint64_t sub_1ABE65840()
{
  result = qword_1ED871368;
  if (!qword_1ED871368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871368);
  }

  return result;
}

unint64_t sub_1ABE65898()
{
  result = qword_1ED871370;
  if (!qword_1ED871370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871370);
  }

  return result;
}

unint64_t sub_1ABE658EC()
{
  result = qword_1EB4DB288;
  if (!qword_1EB4DB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB288);
  }

  return result;
}

unint64_t sub_1ABE65940()
{
  result = qword_1EB4DB290;
  if (!qword_1EB4DB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB290);
  }

  return result;
}

unint64_t sub_1ABE65994()
{
  result = qword_1ED870C58;
  if (!qword_1ED870C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C58);
  }

  return result;
}

uint64_t sub_1ABE659E8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE65A6C(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = 0;
  v19 = *(result + 16);
  v17 = result + 32;
  for (i = MEMORY[0x1E69E7CC0]; ; result = memcpy((i + 88 * v16 + 32), __dst, 0x58uLL))
  {
LABEL_2:
    if (v3 == v19)
    {

      return i;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    memcpy(__dst, (v17 + 88 * v3++), 0x58uLL);
    v5 = *a2;
    if (*(*a2 + 16))
    {
      v6 = __dst[3];
      v7 = __dst[4];
      sub_1ABF25234();
      sub_1ABB242A4(__dst, v20);

      sub_1ABF23D34();
      v8 = sub_1ABF25294();
      v9 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v10 = v8 & v9;
        if (((*(v5 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          break;
        }

        v11 = (*(v5 + 48) + 16 * v10);
        if (*v11 != v6 || v11[1] != v7)
        {
          v13 = sub_1ABF25054();
          v8 = v10 + 1;
          if ((v13 & 1) == 0)
          {
            continue;
          }
        }

        result = sub_1ABB24250(__dst);
        goto LABEL_2;
      }
    }

    else
    {
      sub_1ABB242A4(__dst, v20);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABADDDFC(0, *(i + 16) + 1, 1);
      i = v22;
    }

    v16 = *(i + 16);
    v15 = *(i + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1ABADDDFC(v15 > 1, v16 + 1, 1);
      i = v22;
    }

    *(i + 16) = v16 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE65CEC()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = (*(*v0 + 232))();
  v3 = v2;
  memcpy(v5, (v0 + 16), sizeof(v5));
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = &unk_1F208E968;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD00000000000001DLL;
  *(v0 + 72) = 0x80000001ABF945F0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABA925A4(v5, &qword_1EB4D1B10, &unk_1ABF33FA0);

  return v0;
}

uint64_t sub_1ABE65DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1ABA811C4(a2 + 32, v22);
  if (*(a2 + 32))
  {
    v6 = sub_1ABAE305C();
    swift_endAccess();
    if (v6)
    {
      sub_1ABA7F2A0(v6 + 24, v25);
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = *(v7 + 16);
        v9 = *(v7 + 24);

        sub_1ABE19D84(&v20, v8, v9);

        if (v21)
        {
          sub_1ABA946C0(&v20, v22);
          v10 = v23;
          v11 = v24;
          sub_1ABA93E20(v22, v23);
          (*(v11 + 32))(a1, v7, v10, v11);

          return sub_1ABA84B54(v22);
        }

        sub_1ABA925A4(&v20, &qword_1EB4D3438, &qword_1ABF3C4C0);
      }

      else
      {
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1ABA811C4(a2 + 32, v22);
  if (!*(a2 + 32))
  {
    result = swift_endAccess();
    goto LABEL_18;
  }

  v13 = sub_1ABAE305C();
  result = swift_endAccess();
  if (v13)
  {
    sub_1ABA811C4(a2 + 32, v22);
    if (*(a2 + 32))
    {
      sub_1ABA8FBBC();
      v14 = sub_1ABAE305C();
      swift_endAccess();
      if (v14)
      {
        sub_1ABA7F2A0(v13 + 16, v22);
        v15 = *(v13 + 16);

        v16 = *(v15 + 16);

        if (v16)
        {

LABEL_21:
          v17 = 6;
          goto LABEL_19;
        }

        sub_1ABA7F2A0(v14 + 16, &v20);
        v18 = *(v14 + 16);

        v19 = *(v18 + 16);

        if (v19)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

LABEL_18:
  v17 = 2;
LABEL_19:
  *a3 = v17;
  return result;
}

uint64_t sub_1ABE66058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABA811C4(a6 + 32, v27);
  if (*(a6 + 32))
  {
    v8 = sub_1ABAE305C();
    swift_endAccess();
    if (v8)
    {
      sub_1ABA7F2A0(v8 + 16, v27);
      v9 = *(v8 + 16);

      v8 = sub_1ABE8AE5C(v9);
    }
  }

  else
  {
    swift_endAccess();
    v8 = 0;
  }

  sub_1ABA811C4(a6 + 32, v26);
  if (!*(a6 + 32))
  {
    swift_endAccess();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = sub_1ABAE305C();
  if (!v10)
  {
    swift_endAccess();
    goto LABEL_14;
  }

  swift_endAccess();
  sub_1ABA7F2A0(v10 + 16, v26);
  v11 = *(v10 + 16);

  if (!*(v11 + 16))
  {

    goto LABEL_13;
  }

  v10 = sub_1ABE8AE5C(v11);
LABEL_14:
  sub_1ABA811C4(a6 + 32, v25);
  if (!*(a6 + 32) || (sub_1ABA8FBBC(), (v12 = sub_1ABAE305C()) == 0))
  {
    swift_endAccess();
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  swift_endAccess();
  sub_1ABA7F2A0(v13 + 16, v25);
  v14 = *(v13 + 16);

  if (!*(v14 + 16))
  {

    goto LABEL_19;
  }

  v15 = sub_1ABE8AE5C(v14);
LABEL_20:
  sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1ABF3BFC0;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  *(v16 + 48) = v15;
  v17 = sub_1ABE9059C(v16);
  swift_setDeallocating();

  sub_1ABB4DB48();
  if ((v17 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v10;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    result = 1;
    v22 = 32;
    v24 = 88;
    *(a1 + 64) = 0;
    *(a1 + 72) = v15;
    goto LABEL_28;
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v18 = sub_1ABF237F4();
  sub_1ABA7AA24(v18, qword_1ED86E460);
  v19 = sub_1ABF237D4();
  v20 = sub_1ABF24664();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1ABA78000, v19, v20, "Sort operator must have subject and predicate args", v21, 2u);
    MEMORY[0x1AC5AB8B0](v21, -1, -1);
  }

LABEL_26:
  v22 = 0;
  result = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v24 = 96;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x1FFFFFFFELL;
LABEL_28:
  *(a1 + v24) = 0;
  *(a1 + 104) = v22;
  return result;
}

void sub_1ABE663C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = sub_1ABE713BC();
  sub_1ABA8FBBC();
  v98 = sub_1ABE713BC();
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v90 = a3 + 32;
  v91 = *(a3 + 16);
  while (1)
  {
    v93 = v6;
LABEL_3:
    if (v5 == v91)
    {
      break;
    }

    if (v5 >= v91)
    {
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
      goto LABEL_90;
    }

    v7 = memcpy(__dst, (v90 + 88 * v5), sizeof(__dst));
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_85;
    }

    v9 = *&__dst[48];
    if (*&__dst[56])
    {
      v10 = *&__dst[56];
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    *&v103[0] = v9;
    *(&v103[0] + 1) = v10;
    MEMORY[0x1EEE9AC00](v7);
    sub_1ABB242A4(__dst, v105);

    v11 = sub_1ABB2F764();

    if (!v11)
    {
      v95 = v5;
      v12 = 0;
      v13 = *&__dst[80];
      v101 = *(*&__dst[80] + 16);
      for (i = (*&__dst[80] + 32); ; i += 88)
      {
        if (v101 == v12)
        {
          sub_1ABB24250(__dst);
          v6 = v93;
          v5 = v95;
          goto LABEL_3;
        }

        if (v12 >= *(v13 + 16))
        {
          break;
        }

        v15 = memcpy(v105, i, sizeof(v105));
        v16 = v105[6];
        if (v105[7])
        {
          v17 = v105[7];
        }

        else
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        *&v104 = v16;
        *(&v104 + 1) = v17;
        MEMORY[0x1EEE9AC00](v15);
        sub_1ABB242A4(v105, v103);

        v18 = sub_1ABB2F764();
        sub_1ABB24250(v105);

        if (v18)
        {
          v6 = v93;
          v5 = v95;
          goto LABEL_20;
        }

        ++v12;
      }

      __break(1u);
LABEL_49:

      v25 = v12;
      goto LABEL_51;
    }

LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABADDDFC(0, *(v6 + 16) + 1, 1);
      v6 = v107;
    }

    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      v22 = sub_1ABA7BBEC(v20);
      sub_1ABADDDFC(v22, v21 + 1, 1);
      v6 = v107;
    }

    *(v6 + 16) = v21 + 1;
    memcpy((v6 + 88 * v21 + 32), __dst, 0x58uLL);
  }

  v23 = 0;
  v24 = *(v6 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v3 = 0.0;
  v26 = 32;
  while (v24 != v23)
  {
    if (v23 >= *(v6 + 16))
    {
      goto LABEL_86;
    }

    memcpy(v105, (v6 + v26), sizeof(v105));
    memcpy(v103, v105, 0x58uLL);
    sub_1ABB242A4(v105, __dst);
    sub_1ABB242A4(v105, __dst);
    sub_1ABE66E54(v96, v98, v3, 0.0);
    v3 = v27;
    sub_1ABB24250(v105);
    memcpy(__dst, v103, sizeof(__dst));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAD8758();
      v25 = v33;
    }

    v28 = v25;
    v29 = *(v25 + 16);
    v30 = v28;
    v31 = *(v28 + 24);
    if (v29 >= v31 >> 1)
    {
      sub_1ABA7BBEC(v31);
      sub_1ABAD8758();
      v30 = v34;
    }

    *(v30 + 16) = v29 + 1;
    v32 = v30 + 88 * v29;
    v25 = v30;
    memcpy((v32 + 32), __dst, 0x58uLL);
    v26 += 88;
    ++v23;
  }

  v35 = *(v96 + 16);

  if (v35)
  {

    goto LABEL_51;
  }

  v36 = *(v98 + 16);

  if (v36)
  {
LABEL_51:
    if (!*(a1 + 8))
    {
      type metadata accessor for ResultGraph();
      v52 = swift_allocObject();
      v53 = MEMORY[0x1E69E7CC0];
      *(v52 + 16) = sub_1ABF239C4();
      *(v52 + 24) = v53;
    }

    v54 = *(v25 + 16);
    if (v54)
    {
      *__dst = MEMORY[0x1E69E7CC0];

      sub_1ABADDBD4(0, v54, 0);
      v55 = *__dst;
      v56 = v25;
      v57 = (v25 + 64);
      v100 = v54;
      v58 = v54;
      do
      {
        v60 = *(v57 - 1);
        v59 = *v57;
        *__dst = v55;
        v62 = *(v55 + 16);
        v61 = *(v55 + 24);

        if (v62 >= v61 >> 1)
        {
          sub_1ABADDBD4(v61 > 1, v62 + 1, 1);
          v55 = *__dst;
        }

        *(v55 + 16) = v62 + 1;
        v63 = v55 + 16 * v62;
        *(v63 + 32) = v60;
        *(v63 + 40) = v59;
        v57 += 11;
        --v58;
      }

      while (v58);
      v54 = v100;
    }

    else
    {
      v56 = v25;

      v55 = MEMORY[0x1E69E7CC0];
    }

    v107 = sub_1ABE8AE5C(v55);
    if (!v54)
    {
      v67 = v56;
      v68 = MEMORY[0x1E69E7CC0];
LABEL_75:
      v75 = sub_1ABE491D0();
      v76 = sub_1ABE65A6C(v75, &v107);
      v77 = *(v76 + 16);
      if (v77)
      {
        v97 = v67;
        sub_1ABADDDFC(0, v77, 0);
        v78 = v68;
        v79 = (v76 + 32);
        for (j = v77 - 1; ; --j)
        {
          memcpy(__dst, v79, sizeof(__dst));
          v104 = *v79;
          v103[0] = *(v79 + 24);
          v103[1] = *(v79 + 40);
          v103[2] = *(v79 + 56);
          v103[3] = *(v79 + 72);
          sub_1ABB242A4(__dst, v105);
          v82 = *(v68 + 16);
          v81 = *(v68 + 24);
          if (v82 >= v81 >> 1)
          {
            v87 = sub_1ABA7BBEC(v81);
            sub_1ABADDDFC(v87, v82 + 1, 1);
          }

          *(v68 + 16) = v82 + 1;
          v83 = v68 + 88 * v82;
          *(v83 + 32) = v104;
          *(v83 + 48) = 0;
          v84 = v103[0];
          v85 = v103[1];
          v86 = v103[2];
          *(v83 + 104) = v103[3];
          *(v83 + 88) = v86;
          *(v83 + 72) = v85;
          *(v83 + 56) = v84;
          if (!j)
          {
            break;
          }

          v79 = (v79 + 88);
        }

        v67 = v97;
      }

      else
      {

        v78 = MEMORY[0x1E69E7CC0];
      }

      sub_1ABE48330();
      __dst[0] = 0;
      sub_1ABE4B554(v67, __dst);
      __dst[0] = 0;
      sub_1ABE4B554(v78, __dst);

      sub_1ABE4933C();
      sub_1ABE491D0();

      return;
    }

    v64 = 0;
    v65 = *(*v89 + 224);
    v66 = 48;
    v67 = v56;
    v68 = MEMORY[0x1E69E7CC0];
    while (v64 < *(v67 + 16))
    {
      v69 = *(v67 + v66);
      v70 = v65();
      v71 = swift_isUniquelyReferenced_nonNull_native();
      if (v70)
      {
        if ((v71 & 1) == 0)
        {
          sub_1ABD8EE84();
          v67 = v73;
        }

        if (v64 >= *(v67 + 16))
        {
          goto LABEL_88;
        }

        v72 = v69 - v3;
      }

      else
      {
        if ((v71 & 1) == 0)
        {
          sub_1ABD8EE84();
          v67 = v74;
        }

        if (v64 >= *(v67 + 16))
        {
          goto LABEL_89;
        }

        v72 = 1.0 / (v69 - v3 + 1.0);
      }

      ++v64;
      *(v67 + v66) = v72;
      v66 += 88;
      if (v54 == v64)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_87;
  }

  v37 = sub_1ABE713BC();
  v38 = *(v37 + 16);
  if (!v38)
  {

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_51;
  }

  *&v104 = MEMORY[0x1E69E7CC0];
  sub_1ABADDDFC(0, v38, 0);
  v39 = 0;
  v12 = v104;
  v94 = v37;
  v92 = v38 - 1;
  v40 = (v37 + 40);
  while (v39 < *(v37 + 16))
  {
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_93;
    }

    if (*(_Records_GDEntityPredicate_records + 1) >= 3481)
    {
      goto LABEL_91;
    }

    if (*(_Records_GDEntityPredicate_records + 2) >= 4281)
    {
      goto LABEL_92;
    }

    v99 = v12;
    v102 = v39;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_94;
    }

    v42 = *(v40 - 1);
    v41 = *v40;
    v43 = v40;

    v44 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_95;
    }

    v46 = v44;
    v47 = v45;
    sub_1ABF23DD4();

    *&__dst[16] = 0;
    *&__dst[40] = 0;
    *&__dst[80] = MEMORY[0x1E69E7CC0];
    *&v103[0] = v42;
    *(&v103[0] + 1) = v41;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5A9410](126, 0xE100000000000000);
    sub_1ABA7C7F8();
    MEMORY[0x1AC5A9410](v46, v47);

    sub_1ABA7C7F8();
    MEMORY[0x1AC5A9410](126, 0xE100000000000000);

    sub_1ABA7C7F8();
    MEMORY[0x1AC5A9410](v42, v41);

    *__dst = v103[0];
    *&__dst[24] = v42;
    *&__dst[32] = v41;
    *&__dst[48] = v46;
    *&__dst[56] = v47;
    *&__dst[64] = v42;
    *&__dst[72] = v41;

    sub_1ABE66E54(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v3, 0.0);
    v3 = v48;

    memcpy(v105, __dst, sizeof(v105));
    v12 = v99;
    *&v104 = v99;
    v50 = *(v99 + 16);
    v49 = *(v99 + 24);
    if (v50 >= v49 >> 1)
    {
      v51 = sub_1ABA7BBEC(v49);
      sub_1ABADDDFC(v51, v50 + 1, 1);
      v12 = v104;
    }

    *(v12 + 16) = v50 + 1;
    memcpy((v12 + 88 * v50 + 32), v105, 0x58uLL);
    if (v92 == v102)
    {
      goto LABEL_49;
    }

    v40 = v43 + 2;
    v39 = v102 + 1;
    v37 = v94;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t sub_1ABE66E54(uint64_t result, uint64_t a2, double a3, double a4)
{
  v6 = *(result + 16);
  if (*(a2 + 16))
  {
    if (!v6 || ((v7 = *(v4 + 56)) == 0 ? (v8 = 0, v9 = 0xE000000000000000) : (v8 = *(v4 + 48), v9 = *(v4 + 56)), __dst[0] = v8, __dst[1] = v9, MEMORY[0x1EEE9AC00](v7), , v13 = sub_1ABB2F764(), *&result = COERCE_DOUBLE(), v13))
    {
      v14 = 0;
      v15 = *(v4 + 80);
      v16 = *(v15 + 16);
      v17 = (v15 + 32);
      while (v16 != v14)
      {
        if (v14 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v18 = memcpy(__dst, v17, 0x58uLL);
        v19 = __dst[6];
        if (__dst[7])
        {
          v20 = __dst[7];
        }

        else
        {
          v19 = 0;
          v20 = 0xE000000000000000;
        }

        v27 = v19;
        v28 = v20;
        MEMORY[0x1EEE9AC00](v18);
        sub_1ABB242A4(__dst, v26);

        v21 = sub_1ABB2F764();

        if (v21)
        {
          v22 = __dst[8];
          v23 = __dst[9];

          *&result = COERCE_DOUBLE(sub_1ABB24250(__dst));
          if (v23)
          {
            goto LABEL_24;
          }

          break;
        }

        ++v14;
        *&result = COERCE_DOUBLE(sub_1ABB24250(__dst));
        v17 += 88;
      }
    }
  }

  else if (!v6 || ((v10 = *(v4 + 56)) == 0 ? (v11 = 0, v12 = 0xE000000000000000) : (v11 = *(v4 + 48), v12 = *(v4 + 56)), __dst[0] = v11, __dst[1] = v12, MEMORY[0x1EEE9AC00](v10), , v24 = sub_1ABB2F764(), *&result = COERCE_DOUBLE(), v24))
  {
    v22 = *(v4 + 64);
    v23 = *(v4 + 72);
    *&result = COERCE_DOUBLE();
    if (v23)
    {
LABEL_24:
      *&result = COERCE_DOUBLE(sub_1ABB24D04(v22, v23));
      if ((v25 & 1) == 0)
      {
        a4 = *&result;
      }
    }
  }

  *(v4 + 16) = a4;
  return result;
}

uint64_t SourceConfidenceIdentifier.source.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SourceConfidenceIdentifier.signalType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

IntelligencePlatform::SourceConfidenceIdentifier __swiftcall SourceConfidenceIdentifier.init(_:_:)(Swift::String_optional a1, Swift::String_optional a2)
{
  *v2 = a1;
  v2[1] = a2;
  result.signalType = a2;
  result.source = a1;
  return result;
}

uint64_t SourceConfidenceIdentifier.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1ABF25234();
  sub_1ABF25254();
  if (v1)
  {
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  if (v2)
  {
    sub_1ABF23D34();
  }

  return sub_1ABF25294();
}

unint64_t sub_1ABE672DC()
{
  result = qword_1ED86B4A8;
  if (!qword_1ED86B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4A8);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.SourceConfidenceView.confidence(source:signalType:)(Swift::String source, Swift::String signalType)
{
  swift_getObjectType();
  sub_1ABF22464();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1ABE673EC@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v56 = a6;
  v59 = a5;
  v58 = a4;
  v57 = a3;
  v54 = a1;
  v51 = a7;
  v67 = sub_1ABF223D4();
  v50 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1ABF22EE4();
  v53 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v49 - v9;
  v52 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  MEMORY[0x1EEE9AC00](v52);
  v11 = (v49 - v10);
  v12 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v49 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v49 - v18;

  sub_1ABF22CE4();
  sub_1ABAD219C(&unk_1EB4DB2C0, &qword_1ABF6DFD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34060;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69A0138];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v22;
  *(inited + 48) = v57;
  *(inited + 56) = v58;
  *(inited + 88) = 0x79546C616E676973;
  *(inited + 96) = 0xEA00000000006570;
  *(inited + 128) = v21;
  *(inited + 136) = v22;
  v23 = v56;
  *(inited + 104) = v59;
  *(inited + 112) = v23;

  sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
  sub_1ABF239C4();
  sub_1ABF22C74();

  sub_1ABAAB754();
  v24 = v55;
  v25 = sub_1ABF222A4();
  (*(v13 + 8))(v15, v12);
  if (v24)
  {
    return (*(v17 + 8))(v19, v16);
  }

  v49[1] = 0;
  v27 = v53;
  v28 = v57;
  v29 = v58;
  v30 = v59;
  v54 = v19;
  v55 = v17;
  if (!v25)
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000002ELL, 0x80000001ABF94650);
    MEMORY[0x1AC5A9410](v28, v29);
    MEMORY[0x1AC5A9410](0x6C616E676973202CLL, 0xEE00203A65707954);
    MEMORY[0x1AC5A9410](v30, v56);
    v46 = v65;
    v47 = v66;
    sub_1ABB93C20();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 1;
    swift_willThrow();
    v17 = v55;
    v19 = v54;
    return (*(v17 + 8))(v19, v16);
  }

  v56 = v16;
  v65 = v25;
  *v11 = v25;
  sub_1ABF22BB4();
  sub_1ABAAB818(&qword_1EB4D0208, MEMORY[0x1E69A0008], MEMORY[0x1E69A0018]);
  sub_1ABF24474();
  v58 = 0;
  v31 = (v27 + 8);
  v59 = (v50 + 32);
  v32 = (v50 + 8);
  LODWORD(v57) = 1;
  while (1)
  {
    v33 = v62;
    sub_1ABF244A4();
    sub_1ABAAB818(&qword_1EB4D0200, MEMORY[0x1E69A00E0], MEMORY[0x1E69A00E8]);
    v34 = v63;
    v35 = sub_1ABF23BB4();
    (*v31)(v33, v34);
    if (v35)
    {
      break;
    }

    v36 = sub_1ABF245D4();
    v37 = v60;
    sub_1ABAAB860(v38, v60);
    v36(&v65, 0);
    sub_1ABF244B4();
    v40 = *v37;
    v39 = *(v37 + 1);
    (*v59)(v64, &v37[*(v61 + 48)], v67);
    if (v40 == 0x6E656469666E6F63 && v39 == 0xEA00000000006563)
    {

LABEL_14:
      v43 = v64;
      v58 = sub_1ABF24334();
      LODWORD(v57) = v44;
      (*v32)(v43, v67);
    }

    else
    {
      v42 = sub_1ABF25054();

      if (v42)
      {
        goto LABEL_14;
      }

      (*v32)(v64, v67);
    }
  }

  sub_1ABA925A4(v11, &unk_1EB4D5810, &qword_1ABF48B70);
  result = (*(v55 + 8))(v54, v56);
  v45 = 0x3FE999999999999ALL;
  if ((v57 & 1) == 0)
  {
    v45 = v58;
  }

  *v51 = v45;
  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.SourceConfidenceView.confidence(source:)(Swift::String source)
{
  swift_getObjectType();
  sub_1ABF22464();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1ABE67D7C@<X0>(uint64_t a1@<X0>, void (**a3)(char *, char *, uint64_t)@<X2>, unint64_t a4@<X3>, double *a5@<X8>)
{
  v65 = a3;
  v62 = a1;
  v52 = a5;
  v69 = sub_1ABF223D4();
  v53 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1ABF22EE4();
  v54 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v48 - v8;
  v60 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  MEMORY[0x1EEE9AC00](v60);
  v11 = (&v48 - v10);
  v12 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;

  sub_1ABF22CE4();
  v71[3] = sub_1ABF22D14();
  v71[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v71);
  sub_1ABF22D24();
  v70[3] = MEMORY[0x1E69E6158];
  v70[4] = MEMORY[0x1E69A0130];
  v70[0] = v65;
  v70[1] = a4;
  v74 = sub_1ABF22424();
  v75 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v72);
  v58 = a4;

  sub_1ABF22AD4();
  sub_1ABA925A4(v70, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v71);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v72);
  sub_1ABAAB754();
  v19 = v64;
  v20 = sub_1ABF22294();
  (*(v61 + 8))(v14, v12);
  v55 = v19;
  if (v19)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v22 = v54;
  v49 = v18;
  v50 = v16;
  v51 = v15;
  v59 = sub_1ABAAB7C8(v20);
  if (!v59)
  {

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1ABF24AB4();

    v72 = 0xD00000000000002ELL;
    v73 = 0x80000001ABF94650;
    MEMORY[0x1AC5A9410](v65, v58);
    v44 = v72;
    v45 = v73;
    sub_1ABB93C20();
    v46 = swift_allocError();
    *v47 = v44;
    *(v47 + 8) = v45;
    *(v47 + 16) = 1;
    v55 = v46;
    swift_willThrow();
    v15 = v51;
    v16 = v50;
    v18 = v49;
    return (*(v16 + 8))(v18, v15);
  }

  v61 = 0;
  v23 = 0;
  v58 = v20 & 0xC000000000000001;
  v56 = v20 + 32;
  v24 = (v22 + 8);
  v64 = (v53 + 8);
  v65 = (v53 + 32);
  v25 = 0.0;
  v26 = v63;
  v57 = v20;
LABEL_5:
  v27 = v58;
  sub_1ABAAB7C0(v23, v58 == 0, v20);
  if (v27)
  {
    result = MEMORY[0x1AC5AA170](v23, v20);
  }

  else
  {
  }

  v28 = __OFADD__(v23, 1);
  v29 = v23 + 1;
  if (!v28)
  {
    v62 = v29;
    v72 = result;
    *v11 = result;
    sub_1ABF22BB4();
    sub_1ABAAB818(&qword_1EB4D0208, MEMORY[0x1E69A0008], MEMORY[0x1E69A0018]);
    sub_1ABF24474();
    while (1)
    {
      while (1)
      {
        v30 = v67;
        sub_1ABF244A4();
        sub_1ABAAB818(&qword_1EB4D0200, MEMORY[0x1E69A00E0], MEMORY[0x1E69A00E8]);
        v31 = sub_1ABF23BB4();
        (*v24)(v30, v26);
        if (v31)
        {
          sub_1ABA925A4(v11, &unk_1EB4D5810, &qword_1ABF48B70);
          v23 = v62;
          v20 = v57;
          if (v62 == v59)
          {

            result = (*(v50 + 8))(v49, v51);
            if (v25 == 0.0)
            {
              v43 = 0.8;
            }

            else
            {
              v43 = v25 / v61;
            }

            *v52 = v43;
            return result;
          }

          goto LABEL_5;
        }

        v32 = sub_1ABF245D4();
        sub_1ABAAB860(v33, v9);
        v32(&v72, 0);
        sub_1ABF244B4();
        v35 = *v9;
        v34 = *(v9 + 1);
        (*v65)(v68, &v9[*(v66 + 48)], v69);
        if (v35 != 0x6E656469666E6F63 || v34 != 0xEA00000000006563)
        {
          break;
        }

LABEL_18:
        v38 = v68;
        v39 = COERCE_DOUBLE(sub_1ABF24334());
        v41 = v40;
        v42 = v38;
        v26 = v63;
        result = (*v64)(v42, v69);
        if ((v41 & 1) == 0)
        {
          v25 = v25 + v39;
          v28 = __OFADD__(v61++, 1);
          if (v28)
          {
            goto LABEL_29;
          }
        }
      }

      v37 = sub_1ABF25054();

      if (v37)
      {
        goto LABEL_18;
      }

      (*v64)(v68, v69);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1ABE68678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1ABADEDBC(0, v5, 0);
    v7 = v41;
    v10 = sub_1ABBD2A34();
    v11 = 0;
    v36 = v6 + 56;
    v31 = v6 + 64;
    v32 = v5;
    v33 = v6;
    v34 = v4;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v6 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v36 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v6 + 36) != v8)
        {
          goto LABEL_28;
        }

        v13 = v9;
        v14 = v8;
        v35 = v11;
        v38 = *(*(v6 + 48) + 8 * v10);
        sub_1ABE6D684(&v38, &v37, &v39);
        if (v3)
        {

          sub_1ABE5784C(v4);
          return;
        }

        v16 = v39;
        v15 = v40;
        v41 = v7;
        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        if (v18 >= v17 >> 1)
        {
          v30 = v40;
          sub_1ABADEDBC(v17 > 1, v18 + 1, 1);
          v15 = v30;
          v7 = v41;
        }

        *(v7 + 16) = v18 + 1;
        v19 = v7 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v15;
        if (v13)
        {
          goto LABEL_32;
        }

        v6 = v33;
        v4 = v34;
        v20 = 1 << *(v33 + 32);
        if (v10 >= v20)
        {
          goto LABEL_29;
        }

        v21 = *(v36 + 8 * v12);
        if ((v21 & (1 << v10)) == 0)
        {
          goto LABEL_30;
        }

        v22 = v14;
        if (*(v33 + 36) != v14)
        {
          goto LABEL_31;
        }

        v23 = v21 & (-2 << (v10 & 0x3F));
        if (v23)
        {
          v20 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v24 = v32;
        }

        else
        {
          v25 = v12 << 6;
          v26 = v12 + 1;
          v24 = v32;
          v27 = (v31 + 8 * v12);
          while (v26 < (v20 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_1ABAC933C(v10, v22, 0);
              v20 = __clz(__rbit64(v28)) + v25;
              goto LABEL_20;
            }
          }

          sub_1ABAC933C(v10, v22, 0);
        }

LABEL_20:
        v11 = v35 + 1;
        if (v35 + 1 == v24)
        {
          sub_1ABE5784C(v34);
          return;
        }

        v9 = 0;
        v8 = *(v33 + 36);
        v10 = v20;
        v3 = 0;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    sub_1ABE5784C(a2);
  }
}

uint64_t sub_1ABE68928(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1ABADED7C(0, v3, 0);
  v4 = v36;
  v8 = sub_1ABAB0E08();
  v9 = 0;
  v10 = v5 + 64;
  v28 = v6;
  v29 = v3;
  v27 = v5 + 72;
  v30 = v5 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (*(v5 + 36) != v6)
    {
      goto LABEL_24;
    }

    v31 = v7;
    v32 = v9;
    v12 = v5;
    v13 = *(*(v5 + 48) + 8 * v8);
    v34 = v6;
    v35 = *(*(v5 + 56) + 8 * v8);
    swift_bridgeObjectRetain_n();
    sub_1ABE68BA4(&v35);
    v33 = v2;
    if (v2)
    {
      goto LABEL_28;
    }

    v14 = v35;
    v36 = v4;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1ABADED7C(v15 > 1, v16 + 1, 1);
      v4 = v36;
    }

    *(v4 + 16) = v16 + 1;
    v17 = v4 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    v18 = 1 << *(v12 + 32);
    if (v8 >= v18)
    {
      goto LABEL_25;
    }

    v5 = v12;
    v10 = v30;
    v19 = *(v30 + 8 * v11);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_26;
    }

    if (*(v5 + 36) != v34)
    {
      goto LABEL_27;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v18 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v27 + 8 * v11);
      while (v22 < (v18 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_1ABAC933C(v8, v34, v31 & 1);
          v18 = __clz(__rbit64(v24)) + v21;
          goto LABEL_20;
        }
      }

      sub_1ABAC933C(v8, v34, v31 & 1);
    }

LABEL_20:
    v2 = 0;
    v7 = 0;
    v9 = v32 + 1;
    v8 = v18;
    v6 = v28;
    if (v32 + 1 == v29)
    {
      return v4;
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
LABEL_28:

  __break(1u);
  return result;
}

char *sub_1ABE68BA4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A344();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE6DDAC(v6);
  *a1 = v2;
  return result;
}

uint64_t (*sub_1ABE68C10(uint64_t (*result)(void, void, __n128), uint64_t a2, uint64_t a3))(void, void, __n128)
{
  v4 = v3;
  v5 = result;
  v6 = (a3 + 40);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;

    if (!v9)
    {
      break;
    }

    v12[2] = v9;
    v12[0] = v8;
    v10 = MEMORY[0x1EEE9AC00](result);
    v11 = v5(v12, sub_1ABE57A7C, v10);

    if (v4)
    {
      break;
    }

    v6 += 2;
  }

  while ((v11 & 1) != 0);
  return result;
}

uint64_t sub_1ABE68D00(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7CD0];
  v5[2] = &v6;
  v5[3] = &v7;
  v5[4] = a1;
  v5[5] = a2;

  v3 = sub_1ABE68928(v2);

  sub_1ABE68C10(sub_1ABE6F244, v5, v3);
}

uint64_t sub_1ABE68DA8(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CD0];
  v4 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v4;
  v10 = *(v2 + 48);
  swift_getObjectType();
  sub_1ABE577F0(v9, v6);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABF22464();
  if (!v3)
  {
    sub_1ABE6B50C(v7, v9, sub_1ABE6F194);
  }

  sub_1ABE5784C(v9);
}

void sub_1ABE68EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v59 = v23;
  v60 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v58 = v31;
  v33 = v32;
  v34 = sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1ABA7AC18();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v57 - v39;
  v41 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v57 - v43;
  v52 = sub_1ABC4A938(v33, v45, v46, v47, v48, v49, v50, v51);
  if (v20)
  {
  }

  else
  {
    v57 = v26;
    v53 = a10;
    a10 = v30;
    MEMORY[0x1EEE9AC00](v52);
    sub_1ABA9A74C();
    v54 = v59;
    *(v55 - 32) = v58;
    *(v55 - 24) = v54;
    *(v55 - 16) = &a10;
    sub_1ABE5604C(v60, v56, 0);
    if (sub_1ABA7E1E0(v40, 1, v41) == 1)
    {
      sub_1ABAB480C(v40, &unk_1EB4DB3D0, &qword_1ABF6E370);
    }

    else
    {
      sub_1ABE6EFEC(v40, v44);
      a10 = v53;
      sub_1ABB3E5B4(v44, v37, &qword_1EB4DB110, &unk_1ABF6CBD8);
      sub_1ABA7B9B4(v37, 0, 1, v41);
      v28(&a10, v37);
      sub_1ABAB480C(v37, &unk_1EB4DB3D0, &qword_1ABF6E370);
      sub_1ABAB480C(v44, &qword_1EB4DB110, &unk_1ABF6CBD8);
    }
  }

  sub_1ABA7BC90();
}

void sub_1ABE691D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34(0);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &a9 - v38;
  v40 = v27(v37);
  v25(v40, v31, v29);
  if (!v20)
  {
    sub_1ABE6F2B0(v39, v33, a10);
    sub_1ABA7B9B4(v33, 0, 1, v35);
  }

  sub_1ABA7BC90();
}

uint64_t ViewService.sportsSchedulesView.getter@<X0>(void *a1@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA7E03C();
  v5 = sub_1ABF23BD4();
  v16[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v16];

  v7 = v16[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    result = v11(v6, v9, v10);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      a1[3] = result;
      a1[4] = v14;
      *a1 = v6;
      a1[1] = 0x6870617267;
      a1[2] = 0xE500000000000000;
    }
  }

  else
  {
    v15 = v16[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }

  return result;
}

void ViewService.SportsSchedulesView.enumerateGames(in:block:)()
{
  sub_1ABA81AB4();
  v84 = v2;
  v85 = v3;
  v4 = sub_1ABF220F4();
  sub_1ABA7BB64();
  v88 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v87 = v8 - v7;
  v9 = sub_1ABF22384();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7AC18();
  v90 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v83 - v19;
  v20 = *(v0 + 16);
  v98[0] = *v0;
  v98[1] = v20;
  v99 = *(v0 + 32);
  sub_1ABF21E14();
  v22 = v21;
  sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABF21E14();
  if (v22 > v23)
  {
    __break(1u);
  }

  else
  {
    v86 = v4;
    v92 = v17;
    v93 = v11;
    LOBYTE(v97[0]) = 0;
    sub_1ABEA5B7C(v101, v22, v23);
    memcpy(v100, v101, sizeof(v100));
    if (qword_1ED870750 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1ABA7D72C(&qword_1ED870750);
LABEL_3:
  v24 = sub_1ABF237F4();
  v25 = sub_1ABA7AA24(v24, qword_1ED870758);
  sub_1ABE10DCC(v101, v97);
  v89 = v25;
  v26 = sub_1ABF237D4();
  v27 = sub_1ABF24654();
  sub_1ABE10E28(v101);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_1ABA8E2E8();
    v29 = swift_slowAlloc();
    *v28 = 136315138;
    v94 = 0;
    v95 = 0xE000000000000000;
    v96[0] = v29;
    sub_1ABE10DCC(v101, v97);
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF931A0);
    memcpy(v97, v101, 0x69uLL);
    sub_1ABF24C54();
    MEMORY[0x1AC5A9410](62, 0xE100000000000000);
    sub_1ABE10E28(v101);
    v30 = v9;
    v31 = sub_1ABADD6D8(v94, v95, v96);

    *(v28 + 4) = v31;
    v9 = v30;
    _os_log_impl(&dword_1ABA78000, v26, v27, "SportsSchedulesView: enumerateGames query: %s", v28, 0xCu);
    sub_1ABA84B54(v29);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABAA46F8(&v83);
  *(v33 - 16) = v100;
  sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
  sub_1ABF22464();
  v34 = v92;
  if (v1)
  {
    sub_1ABE10E28(v101);
    v35 = v93;
    v45 = v91;
    v97[0] = v1;
    v46 = v1;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v47 = swift_dynamicCast();
    v48 = v90;
    if (v47)
    {

      (*(v35 + 32))(v34, v45, v9);
      v49 = v34;
      v84 = *(v35 + 16);
      v85 = v35 + 16;
      v84(v48, v34, v9);
      v50 = sub_1ABF237D4();
      v51 = sub_1ABF24664();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = sub_1ABA8E2E8();
        v89 = 0;
        v53 = v52;
        v54 = swift_slowAlloc();
        v94 = v54;
        *v53 = 136315138;
        sub_1ABA90430(&qword_1EB4DB318);
        v55 = sub_1ABF24FF4();
        v56 = v9;
        v58 = v57;
        v91 = *(v93 + 8);
        (v91)(v48, v56);
        v59 = sub_1ABADD6D8(v55, v58, &v94);
        v9 = v56;

        *(v53 + 4) = v59;
        _os_log_impl(&dword_1ABA78000, v50, v51, "SportsSchedulesView: enumerateGames database error: %s", v53, 0xCu);
        sub_1ABA84B54(v54);
        v60 = v92;
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {

        v91 = *(v35 + 8);
        (v91)(v48, v9);
        v60 = v49;
      }

      v61 = type metadata accessor for ViewService();
      v62 = static ViewService.clientService.getter(v61);
      v63 = v87;
      sub_1ABF22374();
      sub_1ABF220E4();
      (*(v88 + 8))(v63, v86);
      v64._countAndFlagsBits = sub_1ABA7E03C();
      ViewService.reportSQLiteError(for:sqliteErrorCode:)(v64, v65);
      if (v66)
      {
        v67 = sub_1ABAA3E1C();
        v68(v67);
      }

      else
      {

        sub_1ABA8ED8C(&qword_1EB4DB310);
        swift_allocError();
        v84(v69, v60, v9);
        swift_willThrow();
        v70 = sub_1ABAA3E1C();
        v71(v70);
      }
    }
  }

  else
  {
    sub_1ABE10E28(v101);
    v36 = v97[0];
    v37 = *(v97[0] + 2);
    if (v37)
    {
      v83 = v9;
      v97[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADDFFC(0, v37, 0);
      v38 = v97[0];
      v39 = *(v97[0] + 2);
      v40 = 32;
      do
      {
        v41 = *&v36[v40];
        v97[0] = v38;
        v42 = v38[3];
        if (v39 >= v42 >> 1)
        {
          sub_1ABADDFFC((v42 > 1), v39 + 1, 1);
          v38 = v97[0];
        }

        v38[2] = v39 + 1;
        v38[v39 + 4] = v41;
        v40 += 120;
        ++v39;
        --v37;
      }

      while (v37);
    }

    v43 = sub_1ABE8AC38();
    sub_1ABE577F0(v98, v97);
    sub_1ABE68678(v43, v98, sub_1ABE6F310);
    v72 = v44;

    v73 = sub_1ABBFA988(v72);

    v74 = sub_1ABF237D4();
    v75 = sub_1ABF24654();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = sub_1ABA8E2E8();
      *v76 = 134217984;
      *(v76 + 4) = *(v73 + 16);

      _os_log_impl(&dword_1ABA78000, v74, v75, "SportsSchedulesView: triplesDict: %ld keys", v76, 0xCu);
      sub_1ABA7BC34();
    }

    else
    {
    }

    v77 = v85;
    sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
    swift_initStackObject();
    sub_1ABE577F0(v98, v97);
    v78 = sub_1ABAE687C(v98);
    sub_1ABAD219C(&qword_1EB4DB328, &qword_1ABF6E000);
    swift_initStackObject();
    v79 = sub_1ABAE6998();
    MEMORY[0x1EEE9AC00](v79);
    sub_1ABA9A74C();
    v80 = v84;
    *(v81 - 32) = v78;
    *(v81 - 24) = v80;
    *(v81 - 16) = v77;
    sub_1ABE68D00(sub_1ABE6E80C, v82);
  }

  sub_1ABA8CD68();
}

{
  sub_1ABA81AB4();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  v31[0] = *v0;
  v31[1] = v6;
  v32 = *(v0 + 32);
  sub_1ABF21E14();
  v8 = v7;
  sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABF21E14();
  if (v8 > v9)
  {
    __break(1u);
  }

  else
  {
    v29 = v5;
    LOBYTE(v30[0]) = 0;
    sub_1ABEA5B7C(v34, v8, v9);
    memcpy(v33, v34, sizeof(v33));
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    sub_1ABAA46F8(&v27);
    *(v11 - 16) = v33;
    sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
    sub_1ABF22464();
    sub_1ABE10E28(v34);
    if (!v1)
    {
      v12 = v30[0];
      v13 = *(v30[0] + 16);
      if (v13)
      {
        v28 = v3;
        v30[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADDFFC(0, v13, 0);
        v14 = v30[0];
        v15 = *(v30[0] + 16);
        v16 = 32;
        do
        {
          v17 = *(v12 + v16);
          v30[0] = v14;
          v18 = *(v14 + 24);
          if (v15 >= v18 >> 1)
          {
            sub_1ABADDFFC((v18 > 1), v15 + 1, 1);
            v14 = v30[0];
          }

          *(v14 + 16) = v15 + 1;
          *(v14 + 8 * v15 + 32) = v17;
          v16 += 120;
          ++v15;
          --v13;
        }

        while (v13);

        v3 = v28;
      }

      else
      {
      }

      v19 = sub_1ABE8AC38();
      sub_1ABE577F0(v31, v30);
      sub_1ABE68678(v19, v31, sub_1ABE6F310);
      v21 = v20;

      sub_1ABBFA988(v21);
      sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
      swift_initStackObject();
      sub_1ABE577F0(v31, v30);
      v22 = sub_1ABAE687C(v31);
      sub_1ABAD219C(&qword_1EB4DB328, &qword_1ABF6E000);
      swift_initStackObject();
      v23 = sub_1ABAE6998();
      MEMORY[0x1EEE9AC00](v23);
      sub_1ABA9A74C();
      v24 = v29;
      *(v25 - 32) = v22;
      *(v25 - 24) = v24;
      *(v25 - 16) = v3;
      sub_1ABE68D00(sub_1ABE6E944, v26);
    }

    sub_1ABA8CD68();
  }
}

uint64_t sub_1ABE69D8C(void *__src, __int128 *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
  result = sub_1ABF22464();
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ABE69E74(_BYTE **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v58 = a4;
  v62 = a3;
  v9 = type metadata accessor for CustomGraphSportsGameEvent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v54 - v13;
  v63 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  MEMORY[0x1EEE9AC00](v63);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v54 - v17;
  v18 = *a1;
  if (qword_1ED870750 != -1)
  {
LABEL_32:
    swift_once();
  }

  v19 = sub_1ABF237F4();
  v59 = sub_1ABA7AA24(v19, qword_1ED870758);
  v20 = sub_1ABF237D4();
  v21 = sub_1ABF24654();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v56 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v67 = v6;
    v55 = v24;
    *&__src[0] = v24;
    *v23 = 136315138;
    v65[0] = v18;
    sub_1ABAD219C(&qword_1EB4D6790, &unk_1ABF6E390);
    v25 = sub_1ABF23C74();
    v27 = v15;
    v28 = a2;
    v29 = sub_1ABADD6D8(v25, v26, __src);

    *(v23 + 4) = v29;
    a2 = v28;
    v15 = v27;
    _os_log_impl(&dword_1ABA78000, v20, v21, "SportsSchedulesView: enumerateGraphObjects: %s", v23, 0xCu);
    v30 = v55;
    sub_1ABA84B54(v55);
    v6 = v67;
    MEMORY[0x1AC5AB8B0](v30, -1, -1);
    v31 = v23;
    v9 = v56;
    MEMORY[0x1AC5AB8B0](v31, -1, -1);
  }

  v32 = v60;
  v33 = v61;
  sub_1ABB3E5B4(a2, v61, &unk_1EB4DB3D0, &qword_1ABF6E370);
  if (sub_1ABA7E1E0(v33, 1, v63) == 1)
  {
    sub_1ABAB480C(v33, &unk_1EB4DB3D0, &qword_1ABF6E370);
    LOBYTE(v32) = 1;
  }

  else
  {
    sub_1ABE6EFEC(v33, v32);
    sub_1ABB3E5B4(v32, v15, &qword_1EB4DB110, &unk_1ABF6CBD8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&__src[0] = *v15;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
      sub_1ABAB480C(v32, &qword_1EB4DB110, &unk_1ABF6CBD8);
    }

    else
    {
      v67 = v6;
      sub_1ABE6F2B0(v15, v11, type metadata accessor for CustomGraphSportsGameEvent);
      v34 = 0;
      v35 = *(v9 + 48);
      v55 = v11;
      v36 = *(v11 + v35);
      v15 = *(v36 + 16);
      v37 = v36 + 88;
      v56 = MEMORY[0x1E69E7CC0];
      v11 = &unk_1EB4DB3E0;
      v6 = &unk_1ABF50320;
      v54 = v36 + 88;
      v61 = v36;
LABEL_9:
      v18 = (v37 + (v34 << 6));
      while (v15 != v34)
      {
        if (v34 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (*v18)
        {
          memset(__src, 0, 88);
        }

        else
        {
          v63 = v34;
          v9 = *(v18 - 3);
          a2 = *(v18 - 2);
          v38 = *(v18 - 1);

          v39 = v38;
          LOBYTE(v32) = v62;
          v40 = v67;
          sub_1ABE54BFC(v39, __src);
          v67 = v40;
          if (v40)
          {
            sub_1ABAB480C(v60, &qword_1EB4DB110, &unk_1ABF6CBD8);

            sub_1ABE6F05C(v55);

            return v32 & 1;
          }

          if (*(&__src[0] + 1))
          {
            memcpy(v65, __src, sizeof(v65));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABADCB80();
              v56 = v44;
            }

            v41 = *(v56 + 16);
            v42 = v63;
            if (v41 >= *(v56 + 24) >> 1)
            {
              sub_1ABADCB80();
              v56 = v45;
            }

            v34 = v42 + 1;
            memcpy(v64, v65, sizeof(v64));
            v43 = v56;
            *(v56 + 16) = v41 + 1;
            memcpy((v43 + 88 * v41 + 32), v64, 0x58uLL);
            v36 = v61;
            v37 = v54;
            goto LABEL_9;
          }

          v36 = v61;
          v34 = v63;
        }

        memcpy(v65, __src, sizeof(v65));
        sub_1ABAB480C(v65, &unk_1EB4DB3E0, &unk_1ABF50320);
        v18 += 64;
        ++v34;
      }

      v46 = v56;

      v47 = sub_1ABF237D4();
      v48 = sub_1ABF24654();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = *(v46 + 16);

        _os_log_impl(&dword_1ABA78000, v47, v48, "SportsSchedulesView: teams: %ld", v49, 0xCu);
        MEMORY[0x1AC5AB8B0](v49, -1, -1);
      }

      else
      {
      }

      v50 = v67;
      LOBYTE(v32) = v57;
      v51 = v55;
      v52 = v58(v55, v46);
      if (!v50)
      {
        LOBYTE(v32) = v52;
      }

      sub_1ABAB480C(v60, &qword_1EB4DB110, &unk_1ABF6CBD8);

      sub_1ABE6F05C(v51);
    }
  }

  return v32 & 1;
}

void ViewService.SportsSchedulesView.enumerateAllGames(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v72 = sub_1ABF220F4();
  sub_1ABA7BB64();
  v71 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v32 = v31 - v30;
  v33 = sub_1ABF22384();
  sub_1ABA7BB64();
  v73 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7AC18();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v69 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v69 - v43;
  v45 = *(v20 + 16);
  v76[0] = *v20;
  v76[1] = v45;
  v77 = *(v20 + 32);
  sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
  swift_initStackObject();
  sub_1ABE577F0(v76, &v75);
  v74[2] = sub_1ABAE687C(v76);
  v74[3] = v27;
  v74[4] = v25;
  sub_1ABE68DA8(sub_1ABE6E830, v74);
  if (v21)
  {

    v75 = v21;
    v46 = v21;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    if (swift_dynamicCast())
    {

      v47 = v73;
      (*(v73 + 32))(v41, v44, v33);
      if (qword_1ED870750 != -1)
      {
        sub_1ABA7D72C(&qword_1ED870750);
      }

      v48 = sub_1ABF237F4();
      sub_1ABA7AA24(v48, qword_1ED870758);
      v49 = (v47 + 16);
      v70 = *(v47 + 16);
      v70(v38, v41, v33);
      v50 = sub_1ABF237D4();
      v51 = sub_1ABF24664();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = sub_1ABA8E2E8();
        v69[0] = swift_slowAlloc();
        a10 = v69[0];
        *v52 = 136315138;
        sub_1ABA90430(&qword_1EB4DB318);
        v53 = sub_1ABF24FF4();
        v69[1] = v49;
        v55 = v54;
        v56 = sub_1ABAA3A90();
        v57(v56);
        v58 = sub_1ABADD6D8(v53, v55, &a10);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_1ABA78000, v50, v51, "SportsSchedulesView: enumerateAllGames database error: %s", v52, 0xCu);
        sub_1ABA84B54(v69[0]);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {

        v59 = sub_1ABAA3A90();
        v60(v59);
      }

      v61 = type metadata accessor for ViewService();
      v62 = static ViewService.clientService.getter(v61);
      sub_1ABF22374();
      sub_1ABF220E4();
      (*(v71 + 8))(v32, v72);
      v63._countAndFlagsBits = sub_1ABA7E03C();
      ViewService.reportSQLiteError(for:sqliteErrorCode:)(v63, v64);
      if (v65)
      {
        v66 = sub_1ABA97E08();
        v38(v66);
      }

      else
      {

        sub_1ABA8ED8C(&qword_1EB4DB310);
        swift_allocError();
        v70(v67, v41, v33);
        swift_willThrow();
        v68 = sub_1ABA97E08();
        v38(v68);
      }
    }
  }

  else
  {
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE6AA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  v41 = a3;
  v39 = type metadata accessor for CustomGraphSportsGameEvent(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  sub_1ABB3E5B4(a2, v10, &unk_1EB4DB3D0, &qword_1ABF6E370);
  if (sub_1ABA7E1E0(v10, 1, v11) == 1)
  {
    sub_1ABAB480C(v10, &unk_1EB4DB3D0, &qword_1ABF6E370);
    LOBYTE(v16) = 1;
  }

  else
  {
    sub_1ABE6EFEC(v10, v16);
    sub_1ABB3E5B4(v16, v13, &qword_1EB4DB110, &unk_1ABF6CBD8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *&__src[0] = *v13;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
      sub_1ABAB480C(v16, &qword_1EB4DB110, &unk_1ABF6CBD8);
    }

    else
    {
      v45 = v5;
      v36 = v16;
      v17 = v40;
      result = sub_1ABE6F2B0(v13, v40, type metadata accessor for CustomGraphSportsGameEvent);
      v19 = 0;
      v20 = *(v17 + *(v39 + 48));
      v21 = *(v20 + 16);
      v22 = v20 + 88;
      v39 = MEMORY[0x1E69E7CC0];
      v35 = v20 + 88;
LABEL_6:
      v23 = (v22 + (v19 << 6));
      while (v21 != v19)
      {
        if (v19 >= *(v20 + 16))
        {
          __break(1u);
          return result;
        }

        if (*v23)
        {
          memset(__src, 0, 88);
        }

        else
        {
          v24 = *(v23 - 1);

          v25 = v24;
          LOBYTE(v16) = v41;
          v26 = v45;
          sub_1ABE54BFC(v25, __src);
          v45 = v26;
          if (v26)
          {
            sub_1ABAB480C(v36, &qword_1EB4DB110, &unk_1ABF6CBD8);

            sub_1ABE6F05C(v40);

            return v16 & 1;
          }

          if (*(&__src[0] + 1))
          {
            memcpy(v43, __src, sizeof(v43));
            v27 = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABADCB80();
              v27 = v29;
            }

            v28 = *(v27 + 16);
            if (v28 >= *(v27 + 24) >> 1)
            {
              sub_1ABADCB80();
              v27 = v30;
            }

            ++v19;
            memcpy(v42, v43, sizeof(v42));
            *(v27 + 16) = v28 + 1;
            v39 = v27;
            result = memcpy((v27 + 88 * v28 + 32), v42, 0x58uLL);
            v22 = v35;
            goto LABEL_6;
          }
        }

        memcpy(v43, __src, sizeof(v43));
        result = sub_1ABAB480C(v43, &unk_1EB4DB3E0, &unk_1ABF50320);
        v23 += 64;
        ++v19;
      }

      v31 = v40;
      LOBYTE(v16) = v37;
      v32 = v45;
      v33 = v38(v40, v39);
      if (!v32)
      {
        LOBYTE(v16) = v33;
      }

      sub_1ABAB480C(v36, &qword_1EB4DB110, &unk_1ABF6CBD8);

      sub_1ABE6F05C(v31);
    }
  }

  return v16 & 1;
}

uint64_t ViewService.SportsSchedulesView.enumerateTriples(for:block:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v3;
  sub_1ABB2C288();
  LOBYTE(v8[0]) = 0;
  v8[1] = v5;
  v8[2] = 0;
  sub_1ABA99728();
  LOBYTE(v9) = 0;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = 0;
  v13 = v6;
  swift_getObjectType();
  sub_1ABF22464();
  return sub_1ABE47224(v8);
}

uint64_t sub_1ABE6B0D0(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t (*)(), __n128))
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22464();
  if (!v2)
  {
    sub_1ABE6B50C(v6, v7, a2);
  }

  return result;
}

uint64_t ViewService.SportsSchedulesView.enumerateTriples(block:)(uint64_t (*a1)(uint64_t *, uint64_t (*)(), __n128), uint64_t a2)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22464();
  if (!v2)
  {
    sub_1ABE6B5F0(v5, a1);
  }

  return result;
}

uint64_t sub_1ABE6B280@<X0>(uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34740;
  if (qword_1EB4D0440 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABF22D14();
  v12 = sub_1ABA7AA24(v11, qword_1EB549900);
  v13 = MEMORY[0x1E69A0038];
  *(v10 + 56) = v11;
  *(v10 + 64) = v13;
  v14 = sub_1ABA93DC0((v10 + 32));
  (*(*(v11 - 8) + 16))(v14, v12, v11);
  sub_1ABE6EB8C();
  MEMORY[0x1AC5A7830](v10);

  sub_1ABF22914();
  v15 = *(v4 + 8);
  v15(v6, v3);
  sub_1ABAB47C4(&qword_1EB4DB890, &unk_1EB4D59C0, &unk_1ABF70750, MEMORY[0x1E699FF60]);
  sub_1ABAA98EC();
  v16 = sub_1ABF22274();
  result = (v15)(v9, v3);
  if (!v2)
  {
    *v19 = v16;
  }

  return result;
}

uint64_t sub_1ABE6B50C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t (*)(), __n128))
{
  v6 = *(result + 16);
  v7 = (result + 32);
  do
  {
    if (!v6)
    {
      break;
    }

    v16 = *v7;
    MEMORY[0x1EEE9AC00](result);
    v14 = a2;
    v15 = v8;
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = sub_1ABE6F348;
    v13 = v11;
    result = a3(&v16, sub_1ABE6F360, v10);
    if (v3)
    {
      break;
    }

    ++v7;
    --v6;
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t sub_1ABE6B5F0(uint64_t result, uint64_t (*a2)(uint64_t *, uint64_t (*)(), __n128))
{
  v4 = *(result + 16);
  v5 = (result + 32);
  do
  {
    if (!v4)
    {
      break;
    }

    v7 = *v5;
    v6 = MEMORY[0x1EEE9AC00](result);
    result = a2(&v7, sub_1ABE6F348, v6);
    if (v2)
    {
      break;
    }

    ++v5;
    --v4;
  }

  while ((result & 1) != 0);
  return result;
}

void ViewService.SportsSchedulesView.enumerateTriples<A>(for:block:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v21 = v4;
  v22 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v14;
  v25 = *(v2 + 32);
  (*(v9 + 16))(v12, v22, v6);
  sub_1ABF23F04();
  swift_getAssociatedConformanceWitness();
  do
  {
    v15 = sub_1ABF24864();
    if (v23[8])
    {
      break;
    }

    v16 = MEMORY[0x1EEE9AC00](v15);
    *(&v21 - 2) = v24;
    *(&v21 - 1) = v17;
    v18 = v8(v23, sub_1ABE6E8D4, v16);
    if (v1)
    {
      break;
    }
  }

  while ((v18 & 1) != 0);
  v19 = sub_1ABAA42AC();
  v20(v19);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE6B91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, const void *a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a1;
  v36 = a6;
  v30 = a7;
  v11 = sub_1ABAD219C(&unk_1EB4DB400, &qword_1ABF6E380);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v46 = v15;
  v37 = v16;
  v35 = v17;
  v34 = a5;
  if (a4 == 1)
  {
    v40 = 0;
    v38 = 0;
    v31 = 0;
    v39 = 1;
  }

  else
  {
    v39 = a3;
    v40 = a2;
    v38 = a4;
    v31 = a5;
  }

  v18 = a3;
  v20 = aGraphFts[0];
  v19 = aGraphFts[1];
  v44[3] = sub_1ABF22424();
  v44[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v44);
  v21 = v36;
  memcpy(v43, v36, 0x69uLL);
  v42[0] = 0x6870617267;
  v42[1] = 0xE500000000000000;
  v42[2] = v20;
  v42[3] = v19;

  sub_1ABE4C0D8(a2, v18, a4);
  sub_1ABE3C1CC(v21, &v41);
  TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(v42);
  memcpy(__dst, v43, 0x69uLL);
  sub_1ABE4C0EC(__dst);

  sub_1ABE6EB8C();
  sub_1ABF221C4();
  sub_1ABA84B54(v44);
  if (v38)
  {
    v43[0] = v38;
    LOBYTE(v43[1]) = v31 & 1;
    TriplesSort.sqlOrdering.getter();
    sub_1ABAB47C4(&qword_1EB4DB418, &unk_1EB4DB400, &qword_1ABF6E380, MEMORY[0x1E699FF68]);
    v22 = v46;
    v23 = v35;
    sub_1ABF224A4();

    v24 = v37;
    (*(v37 + 8))(v14, v23);
    (*(v24 + 32))(v14, v22, v23);

    v26 = v40;
  }

  else
  {

    v22 = v46;
    v26 = v40;
    v24 = v37;
    v23 = v35;
  }

  if ((v39 & 1) == 0)
  {
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1ABAB47C4(&unk_1EB4DB430, &unk_1EB4DB400, &qword_1ABF6E380, MEMORY[0x1E699FF80]);
    sub_1ABF22754();
    (*(v24 + 8))(v14, v23);
    (*(v24 + 32))(v14, v22, v23);
  }

  sub_1ABAB47C4(&qword_1ED86B368, &unk_1EB4DB400, &qword_1ABF6E380, MEMORY[0x1E699FF60]);
  sub_1ABE6EB38();
  v27 = v33;
  v28 = sub_1ABF22234();
  result = (*(v24 + 8))(v14, v23);
  if (!v27)
  {
    *v30 = v28;
  }

  return result;
}

uint64_t sub_1ABE6BD54(uint64_t a1, __int128 *a2, void *__src, uint64_t a4, char a5, uint64_t (*a6)(__int128 *), uint64_t a7)
{
  memcpy(__dst, __src, 0x69uLL);
  v14 = a2[1];
  v21 = *a2;
  v22 = v14;
  v23 = *(a2 + 4);
  v20[0] = 0x6870617267;
  v20[1] = 0xE500000000000000;
  v20[2] = aGraphFts[0];
  v20[3] = aGraphFts[1];
  v17 = a4;
  v18 = a5;

  sub_1ABE3C1CC(__src, v16);
  sub_1ABE6BE7C(a1, v20, __dst, &v17, a6, a7);
  memcpy(v16, __dst, 0x69uLL);
  sub_1ABAB480C(v16, &qword_1EB4DB3F8, &qword_1ABF6E378);
}

uint64_t sub_1ABE6BE7C(uint64_t a1, unint64_t *a2, const void *a3, uint64_t *a4, uint64_t (*a5)(__int128 *), uint64_t a6)
{
  __dst[16] = a6;
  v34 = a5;
  v31 = a1;
  v9 = sub_1ABAD219C(&unk_1EB4DB400, &qword_1ABF6E380);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v16 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v28 = v17;
  v30 = *a4;
  v29 = *(a4 + 8);
  sub_1ABE6EB8C();
  sub_1ABF221A4();
  memcpy(__dst, a3, 0x69uLL);
  if (__dst[11] >> 1 != 0xFFFFFFFFLL || LOBYTE(__dst[13]) >= 2u)
  {
    v38[0] = sub_1ABF22424();
    v38[1] = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(&v36);
    memcpy(v39, __dst, 0x69uLL);
    v35[0] = v16;
    v35[1] = v15;
    v35[2] = v28;
    v35[3] = v18;
    sub_1ABE10DCC(__dst, v40);
    TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(v35);
    memcpy(v40, v39, 0x69uLL);
    sub_1ABE4C0EC(v40);
    sub_1ABAB47C4(&unk_1EB4DB420, &unk_1EB4DB400, &qword_1ABF6E380, MEMORY[0x1E699FF70]);
    sub_1ABF225A4();
    v20 = v33;
    (*(v33 + 8))(v14, v9);
    sub_1ABA84B54(&v36);
    (*(v20 + 32))(v14, v11, v9);
  }

  if (v30)
  {
    *v40 = v30;
    v40[8] = v29 & 1;
    TriplesSort.sqlOrdering.getter();
    sub_1ABAB47C4(&qword_1EB4DB418, &unk_1EB4DB400, &qword_1ABF6E380, MEMORY[0x1E699FF68]);
    sub_1ABF224A4();

    v21 = v33;
    (*(v33 + 8))(v14, v9);
    (*(v21 + 32))(v14, v11, v9);
  }

  sub_1ABAB47C4(&qword_1ED86B368, &unk_1EB4DB400, &qword_1ABF6E380, MEMORY[0x1E699FF60]);
  sub_1ABE6EB38();
  v22 = v32;
  sub_1ABF22224();
  if (v22)
  {
    return (*(v33 + 8))(v14, v9);
  }

  do
  {
    sub_1ABE7F2F4(v40);
    memcpy(v39, v40, sizeof(v39));
    v24 = v39[2];
    if (!v39[2])
    {
      break;
    }

    v25 = objc_autoreleasePoolPush();
    v36 = *v40;
    v37 = v24;
    memcpy(v38, &v40[24], sizeof(v38));
    v26 = v34(&v36);
    sub_1ABAB480C(v39, &qword_1EB4DB410, &qword_1ABF6E388);
    objc_autoreleasePoolPop(v25);
  }

  while ((v26 & 1) != 0);
  (*(v33 + 8))(v14, v9);
}

uint64_t sub_1ABE6C3B8()
{
  v0 = sub_1ABF22E64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1ABF22AB4();
  sub_1ABB9009C(v7, qword_1EB4DB2E0);
  sub_1ABA7AA24(v7, qword_1EB4DB2E0);
  v8 = *MEMORY[0x1E69A00D0];
  v9 = *(v1 + 104);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  return sub_1ABF22AA4();
}

uint64_t static ViewService.SportsSchedulesView.SportsScheduleTriple.persistenceConflictPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4D0438 != -1)
  {
    swift_once();
  }

  v3 = sub_1ABF22AB4();
  v4 = sub_1ABA7AA24(v3, qword_1EB4DB2E0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t ViewService.SportsSchedulesView.SportsScheduleTriple.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ViewService.SportsSchedulesView.SportsScheduleTriple.relationshipPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ViewService.SportsSchedulesView.SportsScheduleTriple.object.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1ABE6C694()
{
  v0 = sub_1ABF22D14();
  sub_1ABB9009C(v0, qword_1EB549900);
  sub_1ABA7AA24(v0, qword_1EB549900);
  sub_1ABE6E8F0();
  return sub_1ABF22D34();
}

void *ViewService.SportsSchedulesView.SportsScheduleTriple.init(subject:predicate:relationshipId:relationshipPredicate:object:confidence:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = *(a2 + 16);
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 2);
  v15 = *(a4 + 3);
  v16 = *(a4 + 16);
  *a7 = *result;
  *(a7 + 8) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = v10;
  *(a7 + 40) = v11;
  *(a7 + 48) = v12;
  *(a7 + 56) = v13;
  *(a7 + 72) = v14;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  *(a7 + 112) = a8;
  return result;
}

uint64_t sub_1ABE6C754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

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

unint64_t sub_1ABE6C958(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE6CA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE6C754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE6CA50(uint64_t a1)
{
  v2 = sub_1ABE6E8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE6CA8C(uint64_t a1)
{
  v2 = sub_1ABE6E8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.SportsSchedulesView.SportsScheduleTriple.encode(to:)()
{
  sub_1ABA81AB4();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB340, &qword_1ABF6E008);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = *v0;
  v12 = v0[2];
  v11 = v0[3];
  v28 = v0[1];
  v29 = v12;
  v27 = v11;
  v30 = v0[4];
  v26 = *(v0 + 20);
  v13 = v0[6];
  v24 = v0[7];
  v25 = v13;
  v14 = v0[9];
  v20 = v0[8];
  v21 = v14;
  v23 = v0[10];
  v22 = *(v0 + 44);
  v15 = v0[13];
  v19[0] = v0[12];
  v19[1] = v15;
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE6E8F0();
  sub_1ABF252E4();
  v31 = v10;
  v36 = 0;
  sub_1ABAE8BC8();
  sub_1ABA94D8C();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v1)
  {
    v16 = v24;
    v17 = v25;
    v31 = v28;
    v32 = v29;
    v33 = v27;
    v34 = v30;
    v35 = v26;
    v36 = 1;
    sub_1ABAA68CC();

    sub_1ABA94D8C();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    v31 = v17;
    v36 = 2;
    sub_1ABC3C8F0();
    sub_1ABA94D8C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v31 = v16;
    v32 = v20;
    v18 = v23;
    v33 = v21;
    v34 = v23;
    v35 = v22;
    v36 = 3;

    sub_1ABA94D8C();
    sub_1ABA7BF34();
    sub_1ABF24F84();

    if (!v18)
    {
      LOBYTE(v31) = 4;
      sub_1ABA7BF34();
      sub_1ABF24F34();
      LOBYTE(v31) = 5;
      sub_1ABA7BF34();
      sub_1ABF24F54();
    }
  }

  (*(v6 + 8))(v9, v4);
  sub_1ABA8CD68();
}

void ViewService.SportsSchedulesView.SportsScheduleTriple.init(from:)()
{
  sub_1ABA81AB4();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DB368, &qword_1ABF6E010);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE6E8F0();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAE8B74();
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    sub_1ABAA6FE4();
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    v21 = v27;
    v23 = v27;
    v24 = v28;
    v22 = v29;
    v25 = v30;
    sub_1ABC3CD80();
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    v20 = v31;
    LOBYTE(v26[0]) = 3;
    sub_1ABA81280();
    sub_1ABAA6230();
    sub_1ABF24E64();
    v18 = v27;
    v17 = v27;
    v19 = v28;
    v6 = v30;
    v16 = v29;
    v15 = v31;
    LOBYTE(v27) = 4;
    sub_1ABAA6230();
    v7 = sub_1ABF24E14();
    v9 = v8;
    v14 = v7;
    v42 = 5;
    sub_1ABAA6230();
    sub_1ABF24E34();
    v11 = v10;
    v12 = sub_1ABA7C814();
    v13(v12);
    v26[0] = v21;
    v26[1] = v23;
    v26[2] = v24;
    v26[3] = v22;
    v26[4] = v25;
    LOWORD(v26[5]) = v20;
    v26[6] = v18;
    v26[7] = v17;
    v26[8] = v19;
    v26[9] = v16;
    v26[10] = v6;
    LOWORD(v26[11]) = v15;
    v26[12] = v14;
    v26[13] = v9;
    v26[14] = v11;
    memcpy(v4, v26, 0x78uLL);
    sub_1ABE57A98(v26, &v27);
    sub_1ABA84B54(v2);
    v27 = v21;
    v28 = v23;
    v29 = v24;
    v30 = v22;
    v31 = v25;
    v32 = v20;
    v33 = v18;
    v34 = v17;
    v35 = v19;
    v36 = v16;
    v37 = v6;
    v38 = v15;
    v39 = v14;
    v40 = v9;
    v41 = v11;
    sub_1ABE57AF4(&v27);
  }

  sub_1ABA8CD68();
}

uint64_t sub_1ABE6D294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE6EF20();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE6D2F8()
{
  v0 = aGraphFts[0];

  return v0;
}

uint64_t sub_1ABE6D684@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  *a5 = *a1;
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = v8;
  sub_1ABB2C288();
  LOBYTE(v18) = 1;
  LOBYTE(v12[0]) = 0;
  v12[1] = v10;
  v12[2] = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  sub_1ABA99728();
  v17 = 1;
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DB300, &unk_1ABF6DFE8);
  sub_1ABF22464();
  result = sub_1ABE47224(v12);
  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    a5[1] = v18;
  }

  return result;
}

uint64_t ViewService.SportsSchedulesView.enumerateAllGames(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  sub_1ABAD219C(&qword_1EB4DB320, &qword_1ABF6DFF8);
  swift_initStackObject();
  sub_1ABE577F0(v9, v8);
  v7[2] = sub_1ABAE687C(v9);
  v7[3] = a1;
  v7[4] = a2;
  sub_1ABE68DA8(sub_1ABE6F328, v7);
}

void sub_1ABE6D8B8()
{
  sub_1ABA7BCA8();
  v29[1] = v2;
  v30 = v1;
  v31 = v3;
  v5 = v4;
  v6 = type metadata accessor for CustomGraphSportsGameEvent(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v32 = v9 - v8;
  sub_1ABAD219C(&unk_1EB4DB3D0, &qword_1ABF6E370);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  sub_1ABB3E5B4(v5, v12, &unk_1EB4DB3D0, &qword_1ABF6E370);
  if (sub_1ABA7E1E0(v12, 1, v13) == 1)
  {
    sub_1ABAB480C(v12, &unk_1EB4DB3D0, &qword_1ABF6E370);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  sub_1ABE6EFEC(v12, v20);
  sub_1ABB3E5B4(v20, v17, &qword_1EB4DB110, &unk_1ABF6CBD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40[0] = *v17;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    swift_willThrowTypedImpl();
    sub_1ABAB480C(v20, &qword_1EB4DB110, &unk_1ABF6CBD8);
    goto LABEL_11;
  }

  v21 = v32;
  sub_1ABE6F2B0(v17, v32, type metadata accessor for CustomGraphSportsGameEvent);
  v22 = *(v21 + *(v6 + 48));
  if (*(v22 + 16) <= 2uLL)
  {
    sub_1ABAB480C(v20, &qword_1EB4DB110, &unk_1ABF6CBD8);
    goto LABEL_10;
  }

  if (*(v22 + 88) == 1)
  {
    goto LABEL_7;
  }

  sub_1ABE54BFC(*(v22 + 80), v40);
  if (v0)
  {
    sub_1ABAB480C(v20, &qword_1EB4DB110, &unk_1ABF6CBD8);
    sub_1ABE6F05C(v21);
    goto LABEL_11;
  }

  memcpy(v39, v40, sizeof(v39));
  v26 = v39[1];
  if (!v39[1])
  {
LABEL_7:
    v23 = &qword_1EB4DB110;
    v24 = &unk_1ABF6CBD8;
    v25 = v20;
LABEL_8:
    sub_1ABAB480C(v25, v23, v24);
LABEL_10:
    sub_1ABE6F05C(v21);
    goto LABEL_11;
  }

  if (*(v22 + 16) >= 2uLL)
  {
    if (*(v22 + 152) != 1)
    {
      v27 = v39[0];
      sub_1ABE54BFC(*(v22 + 144), v38);
      memcpy(v37, v38, sizeof(v37));
      if (v37[1])
      {
        v35[0] = v27;
        v35[1] = v26;
        memcpy(v36, &v40[2], sizeof(v36));
        v33[0] = v37[0];
        v33[1] = v37[1];
        memcpy(v34, &v38[16], sizeof(v34));
        v28 = v32;
        v30(v32, v35, v33);
        sub_1ABAB480C(v20, &qword_1EB4DB110, &unk_1ABF6CBD8);
        sub_1ABE6F05C(v28);
        sub_1ABAB480C(v37, &unk_1EB4DB3E0, &unk_1ABF50320);
        sub_1ABAB480C(v39, &unk_1EB4DB3E0, &unk_1ABF50320);
        goto LABEL_11;
      }

      sub_1ABAB480C(v20, &qword_1EB4DB110, &unk_1ABF6CBD8);
      sub_1ABAB480C(v39, &unk_1EB4DB3E0, &unk_1ABF50320);
      v21 = v32;
      goto LABEL_10;
    }

    sub_1ABAB480C(v20, &qword_1EB4DB110, &unk_1ABF6CBD8);
    v23 = &unk_1EB4DB3E0;
    v24 = &unk_1ABF50320;
    v25 = v39;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABE6DD68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF22384();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1ABE6DDAC(uint64_t *a1)
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
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABE6DF94(v7, v8, a1, v4);
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
    return sub_1ABE6DEA0(0, v2, 1, a1);
  }

  return result;
}

char *sub_1ABE6DEA0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 120 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = *(v10 - 15);
        if (*v10 >= v11)
        {
          v12 = *v10 != v11 || v10[6] >= *(v10 - 9);
          if (v12)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 15, 0x78uLL);
        result = memcpy(v10 - 15, __dst, 0x78uLL);
        v10 -= 15;
        v12 = __CFADD__(v9++, 1);
      }

      while (!v12);
      ++v4;
      v7 += 120;
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

void sub_1ABE6DF94(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 >= v5)
      {
        goto LABEL_35;
      }

      v9 = (*a3 + 120 * v6);
      v10 = *v9;
      v11 = (*a3 + 120 * v8);
      v12 = *v11;
      if (*v9 >= *v11)
      {
        v14 = v11[6];
        v15 = v9[6];
        v16 = v10 != v12 || v15 >= v14;
        v13 = !v16;
      }

      else
      {
        v13 = 1;
      }

      v17 = v8 + 2;
      if (v5 <= v8 + 2)
      {
        v6 = v8 + 2;
      }

      else
      {
        v6 = v5;
      }

      v18 = 120 * v8;
      for (i = (*a3 + 120 * v8 + 288); ; i += 15)
      {
        if (v17 >= v5)
        {
          goto LABEL_26;
        }

        v20 = *(i - 6);
        if (v20 >= v10)
        {
          break;
        }

        if ((v13 & 1) == 0)
        {
          v6 = v17;
          goto LABEL_35;
        }

LABEL_24:
        ++v17;
        v10 = v20;
      }

      if (v20 != v10)
      {
        if (v13)
        {
          v6 = v17;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if ((v13 ^ (*i >= *(i - 15))))
      {
        goto LABEL_24;
      }

      v6 = v17;
LABEL_26:
      if (v13)
      {
LABEL_27:
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            v21 = 120 * v6 - 120;
            v22 = v6;
            v23 = v8;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_134;
                }

                memcpy(__dst, (v24 + v18), sizeof(__dst));
                memmove((v24 + v18), (v24 + v21), 0x78uLL);
                memcpy((v24 + v21), __dst, 0x78uLL);
              }

              ++v23;
              v21 -= 120;
              v18 += 120;
            }

            while (v23 < v22);
            v5 = a3[1];
          }

          goto LABEL_35;
        }

LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        break;
      }

LABEL_35:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_128;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v8 + a4 >= v5)
          {
            v25 = v5;
          }

          else
          {
            v25 = v8 + a4;
          }

          if (v25 < v8)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v6 != v25)
          {
            v79 = v7;
            v26 = *a3;
            v27 = *a3 + 120 * v6;
            v28 = v8 - v6;
            do
            {
              v29 = v28;
              v30 = v27;
              do
              {
                v31 = *(v30 - 15);
                if (*v30 >= v31 && (*v30 != v31 || v30[6] >= *(v30 - 9)))
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_132;
                }

                memcpy(__dst, v30, sizeof(__dst));
                memcpy(v30, v30 - 15, 0x78uLL);
                memcpy(v30 - 15, __dst, 0x78uLL);
                v30 -= 15;
                v16 = __CFADD__(v29++, 1);
              }

              while (!v16);
              ++v6;
              v27 += 120;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
            v7 = v79;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v7 = v75;
      }

      v33 = v7[2];
      v34 = v33 + 1;
      if (v33 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v76;
      }

      v7[2] = v34;
      v35 = v7 + 4;
      v36 = &v7[2 * v33 + 4];
      *v36 = v8;
      v36[1] = v6;
      v80 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v7[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v7[4];
            v41 = v7[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_76:
            if (v43)
            {
              goto LABEL_117;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_120;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_123;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_125;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v34 < 2)
          {
            goto LABEL_119;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_91:
          if (v58)
          {
            goto LABEL_122;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_124;
          }

          if (v65 < v57)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v37 - 1 >= v34)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v69 = v7;
          v70 = &v35[2 * v37 - 2];
          v71 = *v70;
          v72 = &v35[2 * v37];
          v73 = v72[1];
          sub_1ABE6E644((*a3 + 120 * *v70), (*a3 + 120 * *v72), (*a3 + 120 * v73), v80);
          if (v4)
          {
            goto LABEL_110;
          }

          if (v73 < v71)
          {
            goto LABEL_112;
          }

          v74 = v69[2];
          if (v37 > v74)
          {
            goto LABEL_113;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v37 >= v74)
          {
            goto LABEL_114;
          }

          v34 = v74 - 1;
          memmove(&v35[2 * v37], v72 + 2, 16 * (v74 - 1 - v37));
          v7 = v69;
          v69[2] = v74 - 1;
          if (v74 <= 2)
          {
            goto LABEL_105;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_115;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_116;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_118;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_126;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v83 = v7;
        goto LABEL_108;
      }
    }

    __break(1u);
    goto LABEL_136;
  }

LABEL_108:
  if (!*a1)
  {
LABEL_136:
    __break(1u);
    return;
  }

  sub_1ABE6E50C(&v83, *a1, a3);
LABEL_110:
}

uint64_t sub_1ABE6E50C(uint64_t *a1, char *a2, void *a3)
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
    sub_1ABE6E644((*a3 + 120 * *v4), (*a3 + 120 * *v9), (*a3 + 120 * v10), a2);
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

uint64_t sub_1ABE6E644(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 120;
  v9 = (a3 - a2) / 120;
  if (v8 < v9)
  {
    sub_1ABADD448(a1, (a2 - a1) / 120, a4);
    v10 = &v4[120 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v15 = v7;
        goto LABEL_38;
      }

      if (*v6 < *v4)
      {
        break;
      }

      if (*v6 == *v4 && *(v6 + 6) < *(v4 + 6))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 120;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 120;
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 120;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v7, v13, 0x78uLL);
    goto LABEL_18;
  }

  sub_1ABADD448(a2, (a3 - a2) / 120, a4);
  v10 = &v4[120 * v9];
LABEL_20:
  v15 = v6;
  v6 -= 120;
  for (v5 -= 120; v10 > v4 && v15 > v7; v5 -= 120)
  {
    v17 = *(v10 - 15);
    if (v17 < *v6 || (v17 == *v6 ? (v18 = *(v10 - 9) >= *(v15 - 9)) : (v18 = 1), !v18))
    {
      if (v5 + 120 != v15)
      {
        memmove(v5, v6, 0x78uLL);
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 120)
    {
      memmove(v5, v10 - 120, 0x78uLL);
    }

    v10 -= 120;
  }

LABEL_38:
  v19 = (v10 - v4) / 120;
  if (v15 != v4 || v15 >= &v4[120 * v19])
  {
    memmove(v15, v4, 120 * v19);
  }

  return 1;
}

uint64_t sub_1ABE6E854(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  return v2(__dst) & 1;
}

unint64_t sub_1ABE6E8F0()
{
  result = qword_1EB4DB348;
  if (!qword_1EB4DB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB348);
  }

  return result;
}

unint64_t sub_1ABE6E968(uint64_t a1)
{
  result = sub_1ABE6E990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE6E990()
{
  result = qword_1EB4DB378;
  if (!qword_1EB4DB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB378);
  }

  return result;
}

unint64_t sub_1ABE6E9E8()
{
  result = qword_1EB4DB380;
  if (!qword_1EB4DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB380);
  }

  return result;
}

unint64_t sub_1ABE6EA3C(uint64_t a1)
{
  result = sub_1ABE6EA64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE6EA64()
{
  result = qword_1EB4DB388;
  if (!qword_1EB4DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB388);
  }

  return result;
}

unint64_t sub_1ABE6EB08(uint64_t a1)
{
  *(a1 + 8) = sub_1ABE6EB38();
  result = sub_1ABE6EB8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE6EB38()
{
  result = qword_1ED86B1C0;
  if (!qword_1ED86B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B1C0);
  }

  return result;
}

unint64_t sub_1ABE6EB8C()
{
  result = qword_1ED86B1C8;
  if (!qword_1ED86B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B1C8);
  }

  return result;
}

uint64_t sub_1ABE6EBEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1ABE6EC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s19SportsSchedulesViewV20SportsScheduleTripleV7ColumnsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s19SportsSchedulesViewV20SportsScheduleTripleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABE6EE1C()
{
  result = qword_1EB4DB3B0;
  if (!qword_1EB4DB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3B0);
  }

  return result;
}

unint64_t sub_1ABE6EE74()
{
  result = qword_1EB4DB3B8;
  if (!qword_1EB4DB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3B8);
  }

  return result;
}

unint64_t sub_1ABE6EECC()
{
  result = qword_1EB4DB3C0;
  if (!qword_1EB4DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3C0);
  }

  return result;
}

unint64_t sub_1ABE6EF20()
{
  result = qword_1EB4DB3C8;
  if (!qword_1EB4DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB3C8);
  }

  return result;
}

uint64_t sub_1ABE6EF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = a3;
  v4 = *(v3 + 16);
  v6[2] = a2;
  return v4(a1, sub_1ABE6EFC4, v6) & 1;
}

uint64_t sub_1ABE6EFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE6F05C(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphSportsGameEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE6F2B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void __swiftcall StaticKnowledgeAssetTriple.init(confidence:object:predicate:relationshipId:relationshipPredicate:subject:)(IntelligencePlatform::StaticKnowledgeAssetTriple *__return_ptr retstr, Swift::Double confidence, Swift::String object, Swift::String predicate, Swift::String_optional relationshipId, Swift::String_optional relationshipPredicate, Swift::String subject)
{
  retstr->confidence = confidence;
  retstr->object = object;
  retstr->predicate = predicate;
  retstr->relationshipId = relationshipId;
  retstr->relationshipPredicate = relationshipPredicate;
  retstr->subject = subject;
}

uint64_t sub_1ABE6F3CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

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

uint64_t sub_1ABE6F5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE6F3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE6F610(uint64_t a1)
{
  v2 = sub_1ABA99EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE6F64C(uint64_t a1)
{
  v2 = sub_1ABA99EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticKnowledgeAssetTriple.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4DB440, &qword_1ABF6E3A0);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = v1[1];
  v19[7] = v1[2];
  v19[8] = v9;
  v10 = v1[3];
  v19[5] = v1[4];
  v19[6] = v10;
  v11 = v1[6];
  v19[3] = v1[5];
  v19[4] = v11;
  v12 = v1[8];
  v19[1] = v1[7];
  v19[2] = v12;
  v13 = v1[10];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  sub_1ABA93E20(v15, v14);
  sub_1ABA99EE8();
  sub_1ABF252E4();
  v25 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F54();
  if (!v2)
  {
    v19[0] = v13;
    v24 = 1;
    sub_1ABA81294();
    sub_1ABF24F34();
    v23 = 2;
    sub_1ABA81294();
    sub_1ABF24F34();
    v22 = 3;
    sub_1ABA81294();
    sub_1ABF24ED4();
    v21 = 4;
    sub_1ABA81294();
    sub_1ABF24ED4();
    v20 = 5;
    sub_1ABA81294();
    sub_1ABF24F34();
  }

  return (*(v5 + 8))(v8, v17);
}

void StaticKnowledgeAsset.subjectIdentifier(for:entityClass:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABF23924();
  sub_1ABA7BB64();
  v47 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  sub_1ABF23914();
  sub_1ABA7BB64();
  v48 = v14;
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v46 = *(a3 + 32);
  v25 = v3[1];
  v50 = *v3;
  v51 = v25;

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  v26 = v51;
  sub_1ABF23C44();
  sub_1ABF23C14();
  v28 = v27;
  (*(v20 + 8))(v24, v18);
  if (v28 >> 60 == 15)
  {
    v29 = v50;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B20);

    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24664();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136380675;
      v35 = sub_1ABADD6D8(v29, v26, &v50);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_1ABA78000, v31, v32, "StaticKnowledgeAsset: failed to encode string as UTF8 data: %{private}s", v33, 0xCu);
      sub_1ABA84B54(v34);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {
    }

    v45 = 0;
    goto LABEL_10;
  }

  v36 = sub_1ABB3E180();
  sub_1ABA90454(v36);
  v37 = sub_1ABA82ED0();
  sub_1ABB0DBF0(v37, v38);
  v39 = sub_1ABA82ED0();
  sub_1ABE70664(v39, v40, v12);
  v41 = sub_1ABA82ED0();
  sub_1ABAC9310(v41, v42);
  sub_1ABF238E4();
  (*(v47 + 8))(v12, v7);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if ((v51 & 1) == 0)
  {
    v43 = sub_1ABA82ED0();
    sub_1ABAC9310(v43, v44);
    (*(v48 + 8))(v17, v49);
    v45 = (v50 >> 9) | (v46 << 56) | 0x80000000000000;
LABEL_10:
    sub_1ABA99744(v45);
    return;
  }

  sub_1ABF24CD4();
  __break(1u);
}

void StaticKnowledgeAsset.relationshipIdentifier(for:relationshipId:entityClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1ABF23924();
  sub_1ABA7BB64();
  v50 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  sub_1ABF23914();
  sub_1ABA7BB64();
  v52 = v17;
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v51 = v19 - v18;
  v20 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  v26 = v25 - v24;
  v49 = *(a5 + 32);
  v27 = v5[1];
  v55 = *v5;
  v56 = v27;

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a1, a2);
  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](a3, a4);
  v29 = v55;
  v28 = v56;
  sub_1ABF23C44();
  sub_1ABF23C14();
  v31 = v30;
  (*(v22 + 8))(v26, v20);
  if (v31 >> 60 == 15)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v32 = sub_1ABF237F4();
    sub_1ABA7AA24(v32, qword_1ED871B20);

    v33 = sub_1ABF237D4();
    v34 = sub_1ABF24664();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55 = v36;
      *v35 = 136380675;
      v37 = sub_1ABADD6D8(v29, v28, &v55);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1ABA78000, v33, v34, "StaticKnowledgeAsset: failed to encode string as UTF8 data: %{private}s", v35, 0xCu);
      sub_1ABA84B54(v36);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {
    }

    v47 = 0;
    goto LABEL_10;
  }

  v38 = sub_1ABB3E180();
  sub_1ABA90454(v38);
  v39 = sub_1ABA82ED0();
  sub_1ABB0DBF0(v39, v40);
  v41 = sub_1ABA82ED0();
  sub_1ABE70664(v41, v42, v15);
  v43 = sub_1ABA82ED0();
  sub_1ABAC9310(v43, v44);
  sub_1ABF238E4();
  (*(v50 + 8))(v15, v10);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if ((v56 & 1) == 0)
  {
    v45 = sub_1ABA82ED0();
    sub_1ABAC9310(v45, v46);
    (*(v52 + 8))(v51, v53);
    *(&v48 + 1) = v49;
    *&v48 = v55;
    v47 = v48 >> 8;
LABEL_10:
    sub_1ABA99744(v47);
    return;
  }

  sub_1ABF24CD4();
  __break(1u);
}

uint64_t sub_1ABE70184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656C70697274 && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E456C61626F6C67 && a2 == 0xEE00736569746974)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABE702EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE70338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE70184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE70360(uint64_t a1)
{
  v2 = sub_1ABA991D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE7039C(uint64_t a1)
{
  v2 = sub_1ABA991D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticKnowledgeAsset.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DB450, &dword_1ABF6E3B8);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v16 = v1[3];
  v17 = v9;
  v15 = v1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABA991D8();
  sub_1ABF252E4();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_1ABF24F34();
  if (!v10)
  {
    v11 = v15;
    v12 = v16;
    LOBYTE(v20) = 1;
    sub_1ABA7BF34();
    sub_1ABF24F74();
    v20 = v12;
    v19 = 2;
    sub_1ABAD219C(&qword_1EB4DB458, &dword_1ABF6E3C0);
    sub_1ABA99A18(&qword_1EB4DB460, sub_1ABE70700, MEMORY[0x1E69E6300]);
    sub_1ABA7BF34();
    sub_1ABF24F14();
    v20 = v11;
    v19 = 3;
    sub_1ABAD219C(&qword_1EB4DB470, &qword_1ABF6E3C8);
    sub_1ABA9A1D0(&qword_1EB4DB478, sub_1ABE70754, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1ABA7BF34();
    sub_1ABF24F14();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1ABE70664(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_1ABE70BE4(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1ABE70B40(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

unint64_t sub_1ABE70700()
{
  result = qword_1EB4DB468;
  if (!qword_1EB4DB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB468);
  }

  return result;
}

unint64_t sub_1ABE70754()
{
  result = qword_1EB4DB480;
  if (!qword_1EB4DB480)
  {
    sub_1ABAE2850(&qword_1EB4DB488, &unk_1ABF6E3D0);
    sub_1ABD3CCE8(&qword_1EB4D4308, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB480);
  }

  return result;
}

unint64_t sub_1ABE70800()
{
  result = qword_1EB4CED48;
  if (!qword_1EB4CED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED48);
  }

  return result;
}

unint64_t sub_1ABE70854()
{
  result = qword_1EB4CE750;
  if (!qword_1EB4CE750)
  {
    sub_1ABAE2850(&qword_1EB4DB488, &unk_1ABF6E3D0);
    sub_1ABD3CCE8(&qword_1ED870660, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE750);
  }

  return result;
}

unint64_t sub_1ABE70934()
{
  result = qword_1EB4DB498;
  if (!qword_1EB4DB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB498);
  }

  return result;
}

unint64_t sub_1ABE7098C()
{
  result = qword_1EB4DB4A0;
  if (!qword_1EB4DB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB4A0);
  }

  return result;
}

unint64_t sub_1ABE709E4()
{
  result = qword_1EB4CF068;
  if (!qword_1EB4CF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF068);
  }

  return result;
}

unint64_t sub_1ABE70A3C()
{
  result = qword_1EB4CF070;
  if (!qword_1EB4CF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF070);
  }

  return result;
}

unint64_t sub_1ABE70A94()
{
  result = qword_1EB4CED50;
  if (!qword_1EB4CED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED50);
  }

  return result;
}

unint64_t sub_1ABE70AEC()
{
  result = qword_1EB4CED58;
  if (!qword_1EB4CED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED58);
  }

  return result;
}

uint64_t sub_1ABE70B40(uint64_t a1, uint64_t a2)
{
  sub_1ABF23924();
  sub_1ABB3E180();
  return sub_1ABF238D4();
}

uint64_t sub_1ABE70BE4(uint64_t a1, uint64_t a2)
{
  result = sub_1ABF219E4();
  if (!result || (result = sub_1ABF21A04(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1ABF219F4();
      sub_1ABF23924();
      sub_1ABB3E180();
      return sub_1ABF238D4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE70C94()
{
  result = sub_1ABE70CB4();
  qword_1ED87C3E0 = result;
  return result;
}

uint64_t sub_1ABE70CB4()
{
  v0 = sub_1ABE70DD4(0x726F775F706F7473, 0xEA00000000007364);
  if (v0)
  {

    return sub_1ABE8B3B8(v0);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v2 = sub_1ABF237F4();
    sub_1ABA7AA24(v2, qword_1ED871B40);
    v3 = sub_1ABF237D4();
    v4 = sub_1ABF24674();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1ABA78000, v3, v4, "Failed to load stop_words from resources.", v5, 2u);
      MEMORY[0x1AC5AB8B0](v5, -1, -1);
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1ABE70DD4(uint64_t a1, unint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF21CF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46[-v12];
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v14 = sub_1ABA96194(a1, a2, 1852797802, 0xE400000000000000, qword_1ED871EA8);
  if (!v14)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v29 = sub_1ABF237F4();
    sub_1ABA7AA24(v29, qword_1ED871B40);

    v30 = sub_1ABF237D4();
    v31 = sub_1ABF24674();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1ABADD6D8(a1, a2, v49);
      _os_log_impl(&dword_1ABA78000, v30, v31, "Error: Unable to read file %s", v32, 0xCu);
      sub_1ABA84B54(v33);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    return 0;
  }

  v15 = v14;
  sub_1ABF21CA4();

  (*(v5 + 32))(v13, v10, v4);
  v36 = sub_1ABF21D34();
  v38 = v37;
  v39 = objc_autoreleasePoolPush();
  v40 = objc_opt_self();
  v41 = sub_1ABF21DB4();
  v49[0] = 0;
  v42 = [v40 JSONObjectWithData:v41 options:0 error:v49];

  if (!v42)
  {
    v44 = v49[0];
    v45 = sub_1ABF21BE4();

    swift_willThrow();
    objc_autoreleasePoolPop(v39);
    sub_1ABA96210(v36, v38);
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v16 = sub_1ABF237F4();
    sub_1ABA7AA24(v16, qword_1ED871B40);
    (*(v5 + 16))(v7, v13, v4);
    v17 = v45;
    v18 = sub_1ABF237D4();
    v19 = sub_1ABF24664();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49[0] = v48;
      *v20 = 136315394;
      sub_1ABAE27F8();
      v47 = v19;
      v21 = sub_1ABF24FF4();
      v23 = v22;
      v24 = *(v5 + 8);
      v24(v7, v4);
      v25 = sub_1ABADD6D8(v21, v23, v49);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_1ABF25154();
      v28 = sub_1ABADD6D8(v26, v27, v49);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1ABA78000, v18, v47, "Error: Unable to decode file %s with error %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BC34();
      sub_1ABA7BC34();

      v24(v13, v4);
    }

    else
    {

      v34 = *(v5 + 8);
      v34(v7, v4);
      v34(v13, v4);
    }

    return 0;
  }

  v43 = v49[0];
  sub_1ABF248F4();
  swift_unknownObjectRelease();
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = 0;
  }

  objc_autoreleasePoolPop(v39);
  sub_1ABA96210(v36, v38);
  (*(v5 + 8))(v13, v4);
  return v50;
}

uint64_t sub_1ABE713BC()
{
  sub_1ABA7FC9C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!v3 || !*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABA94FC8(v2, v0, v4, v5, v6, v7, v8, v9, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  if ((v11 & 1) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(*(v3 + 56) + 8 * v10);

  sub_1ABA7EF0C();
  swift_beginAccess();
  v13 = *(v12 + 16);

  return v13;
}

char *sub_1ABE71478()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v0 + 32))
  {

    v26 = sub_1ABB62B78(v1);
    sub_1ABE71988(&v26);

    v2 = 0;
    v3 = v26;
    v4 = *(v26 + 2);
    v5 = v26 + 48;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v4 == v2)
      {

        v26 = v6;
        sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
        sub_1ABAA3AA4();
        sub_1ABD1044C(v15);
        v16 = sub_1ABF23B54();
        v18 = v17;

        goto LABEL_12;
      }

      if (v2 >= *(v3 + 2))
      {
        break;
      }

      v7 = *(v5 - 1);
      v26 = *(v5 - 2);
      v27 = v7;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1AC5A9410](58, 0xE100000000000000);
      v8 = sub_1ABE73930();
      MEMORY[0x1AC5A9410](v8);

      v9 = v26;
      v10 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAAA4F4();
        v6 = v13;
      }

      v11 = *(v6 + 2);
      if (v11 >= *(v6 + 3) >> 1)
      {
        sub_1ABAAA4F4();
        v6 = v14;
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v10;
      v5 += 24;
      ++v2;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
LABEL_12:
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1ABF24AB4();
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);

    v26 = v20;
    v27 = v19;
    MEMORY[0x1AC5A9410](40, 0xE100000000000000);
    MEMORY[0x1AC5A9410](v16, v18);

    v21 = 0xE700000000000000;
    MEMORY[0x1AC5A9410](0x3D74696D696C2CLL, 0xE700000000000000);
    v22 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v22);

    MEMORY[0x1AC5A9410](0x79547865646E692CLL, 0xEB000000003D6570);
    v23 = 0x7865646E496F6ELL;
    switch(*(v0 + 64))
    {
      case 1:
        v23 = 0xD000000000000010;
        v21 = 0x80000001ABF7EE20;
        break;
      case 2:
        break;
      case 3:
        v24 = 0x47746E657665;
        goto LABEL_20;
      case 4:
        v21 = 0xED00007865646E49;
        v23 = 0x79676F6C6F746E6FLL;
        break;
      case 5:
        v21 = 0xEC0000007865646ELL;
        v23 = 0x49747865746E6F63;
        break;
      case 6:
        v24 = 0x476C61636F6CLL;
LABEL_20:
        v23 = v24 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
        v21 = 0xEF7865646E496870;
        break;
      case 7:
        v21 = 0x80000001ABF7EE80;
        v23 = 0xD00000000000001ALL;
        break;
      case 8:
        v21 = 0x80000001ABF7EEA0;
        v23 = 0xD000000000000018;
        break;
      default:
        v21 = 0xE400000000000000;
        v23 = 1701736302;
        break;
    }

    MEMORY[0x1AC5A9410](v23, v21);

    MEMORY[0x1AC5A9410](41, 0xE100000000000000);
    return v26;
  }

  return result;
}

uint64_t KnosisInternalFact.init(sid:pid:oid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  a7[2] = 0;
  a7[5] = 0;
  a7[10] = MEMORY[0x1E69E7CC0];

  sub_1ABA90E20();
  sub_1ABE7DCE8();
  MEMORY[0x1AC5A9410](a3, a4);

  sub_1ABE7DCE8();
  sub_1ABA90E20();

  sub_1ABE7DCE8();
  MEMORY[0x1AC5A9410](a5, a6);

  *a7 = a1;
  a7[1] = a2;
  a7[3] = a1;
  a7[4] = a2;
  a7[6] = a3;
  a7[7] = a4;
  a7[8] = a5;
  a7[9] = a6;
  return result;
}

uint64_t sub_1ABE71988(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A1F8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABE79684(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABE719F4()
{
  sub_1ABA7FC9C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!v3 || !*(v3 + 16))
  {
    return 0;
  }

  v10 = sub_1ABA94FC8(v2, v0, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20, v21, vars0, vars8);
  if (v11)
  {
    v12 = *(*(v3 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_1ABE71A88()
{
  sub_1ABA7FC9C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(v0 + 32);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_19;
    }

    v5 = sub_1ABB5C1D0(v4, v3);

    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v3)
  {
    goto LABEL_19;
  }

  v6 = *(v0 + 40);
  if (!*(v1 + 40))
  {
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = sub_1ABE71A88();

  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v8 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v8 && (sub_1ABF25054() & 1) == 0 || *(v1 + 48) != *(v0 + 48) || *(v1 + 56) != *(v0 + 56))
  {
    goto LABEL_19;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();

  v9 = sub_1ABA8CD18();
  v10 = sub_1ABB5C318(v9);

  return v10 & 1;
}

uint64_t sub_1ABE71C10()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1ABA7D32C();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v5)
  {
LABEL_8:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v1 + 56) + ((v9 << 9) | (8 * v11)));
    sub_1ABA7EF0C();
    result = swift_beginAccess();
    if (*(v12 + 24))
    {

      MEMORY[0x1AC5A9710](v13);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      result = sub_1ABF24184();
      v2 = v14;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE71D70()
{
  v1 = *(v0 + 80);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v2 = *(v0 + 81);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

BOOL sub_1ABE71DAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

uint64_t sub_1ABE71DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA07D4();
  v6 = sub_1ABE719F4();
  if (v6)
  {
    v7 = v6;
    sub_1ABA7C32C(v6 + 16, v10);

    sub_1ABD7DA50(v8);
    swift_endAccess();
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    sub_1ABAA096C();
    v7 = swift_allocObject();
    sub_1ABE75D28(a3);
  }

  sub_1ABE71E8C(v4, v3, v7);
}

uint64_t sub_1ABE71E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA0948();
  swift_beginAccess();
  if (*(v3 + 32))
  {
    sub_1ABA7C32C(v3 + 32, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + 32);
    sub_1ABAFAC94(a3, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 32) = v10;
    return swift_endAccess();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB660, &qword_1ABF6F318);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    type metadata accessor for KnosisQueryParam();

    *(v3 + 32) = sub_1ABF239C4();
  }
}

IntelligencePlatform::KnosisIndexType_optional __swiftcall KnosisIndexType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void *sub_1ABE7200C(void *result)
{
  v2 = result[2];
  if (v2)
  {
    v3 = v1;
    v4 = 0;
    v5 = *(v3 + 24);
    v6 = result + 4;
    for (i = v2 - 1; ; --i)
    {
      memcpy(__dst, v6, 0x58uLL);
      v9 = __dst[0];
      v8 = __dst[1];
      sub_1ABB242A4(__dst, &v43);

      sub_1ABAC9398(v4, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v3 + 16);
      v17 = sub_1ABA94FC8(v9, v8, v11, v12, v13, v14, v15, v16, v42, v10, v44, v45, v46, v47, v48, v49, v50, v51);
      if (__OFADD__(*(v10 + 16), (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      sub_1ABAD219C(&qword_1EB4DB628, &qword_1ABF6F300);
      v21 = sub_1ABF24C64();
      v28 = v43;
      if (v21)
      {
        v29 = sub_1ABA94FC8(v9, v8, v22, v23, v24, v25, v26, v27, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        if ((v20 & 1) != (v30 & 1))
        {
          goto LABEL_23;
        }

        v19 = v29;
      }

      *(v3 + 16) = v28;
      if (v20)
      {
      }

      else
      {
        v28[(v19 >> 6) + 8] |= 1 << v19;
        v31 = (v28[6] + 16 * v19);
        *v31 = v9;
        v31[1] = v8;
        *(v28[7] + 8 * v19) = MEMORY[0x1E69E7CC0];
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_22;
        }

        v28[2] = v34;
      }

      v35 = v28[7];
      v36 = *(v35 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v19) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABAD8758();
        v36 = v40;
        *(v35 + 8 * v19) = v40;
      }

      v38 = *(v36 + 16);
      if (v38 >= *(v36 + 24) >> 1)
      {
        sub_1ABAD8758();
        v36 = v41;
        *(v35 + 8 * v19) = v41;
      }

      v39 = *&__dst[2];
      *(v36 + 16) = v38 + 1;
      result = memcpy((v36 + 88 * v38 + 32), __dst, 0x58uLL);
      if (v5 <= v39)
      {
        v5 = v39;
      }

      if (!i)
      {
        *(v3 + 24) = v5;
        return result;
      }

      v6 += 11;
      v4 = sub_1ABAB9874;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t KnosisInternalFact.id.setter()
{
  sub_1ABA7FC9C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t KnosisInternalFact.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[6];
  v3 = v0[7];

  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x3A646973202CLL, 0xE600000000000000);
  v5 = sub_1ABAA015C();
  MEMORY[0x1AC5A9410](v5);
  MEMORY[0x1AC5A9410](0x3A646970202CLL, 0xE600000000000000);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v3)
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1AC5A9410](v6, v3);

  MEMORY[0x1AC5A9410](0x3A64696F202CLL, 0xE600000000000000);

  v7 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v7);

  MEMORY[0x1AC5A9410](93, 0xE100000000000000);
  return 979659099;
}

void KnosisInternalFact.init(sid:pid:oid:qpid:qoid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAA07D4();
  v17 = v16;
  v61 = v18;
  v65 = v19;

  sub_1ABAA1414();
  sub_1ABA82B84(v20, v21, v22, v23, v24, v25, v26, v27, v47, a7, a8, a9, v61, v65);
  MEMORY[0x1AC5A9410](a3, a4);

  sub_1ABA82B84(v28, v29, v30, v31, v32, v33, v34, v35, v48, v51, v55, v58, v62, v66);
  sub_1ABAA1414();

  sub_1ABA82B84(v36, v37, v38, v39, v40, v41, v42, v43, v49, v52, v56, v59, v63, v67);
  MEMORY[0x1AC5A9410](a5, a6);

  *v17 = v64;
  v17[1] = v68;
  v17[2] = 0;
  v17[3] = v11;
  v17[4] = v10;
  v17[5] = 0;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a6;
  v17[10] = MEMORY[0x1E69E7CC0];
  v17 += 10;
  swift_bridgeObjectRetain_n();
  sub_1ABAA1414();
  sub_1ABE7DD04();
  MEMORY[0x1AC5A9410](v53, v57);

  sub_1ABE7DD04();
  sub_1ABAA1414();

  sub_1ABE7DD04();
  MEMORY[0x1AC5A9410](v60, a10);

  sub_1ABB4DC08();
  v44 = *(*v17 + 16);
  sub_1ABB4E00C(v44);
  v45 = *v17;
  *(v45 + 16) = v44 + 1;
  v46 = (v45 + 88 * v44);
  v46[4] = v64;
  v46[5] = v68;
  v46[6] = 0;
  v46[7] = v64;
  v46[8] = v68;
  v46[9] = 0;
  v46[10] = v53;
  v46[11] = v57;
  v46[12] = v60;
  v46[13] = a10;
  v46[14] = MEMORY[0x1E69E7CC0];
  sub_1ABA950C0();
}

Swift::Void __swiftcall KnosisInternalFact.addQualifier(qpid:qoid:)(Swift::String qpid, Swift::String qoid)
{
  object = qoid._object;
  countAndFlagsBits = qoid._countAndFlagsBits;
  v5 = qpid._object;
  v6 = qpid._countAndFlagsBits;
  v8 = *v2;
  v7 = v2[1];
  v39 = qpid._countAndFlagsBits;
  v43 = *v2;
  swift_bridgeObjectRetain_n();
  sub_1ABA90E20();
  sub_1ABA96520(v9, v10, v11, v12, v13, v14, v15, v16, v36, v39, v43, v7);
  MEMORY[0x1AC5A9410](v6, v5);

  sub_1ABA96520(v17, v18, v19, v20, v21, v22, v23, v24, v37, v40, v44, v47);
  sub_1ABA90E20();

  sub_1ABA96520(v25, v26, v27, v28, v29, v30, v31, v32, v38, v41, v45, v48);
  MEMORY[0x1AC5A9410](countAndFlagsBits, object);

  sub_1ABB4DC08();
  v33 = *(v2[10] + 16);
  sub_1ABB4E00C(v33);
  v34 = v2[10];
  *(v34 + 16) = v33 + 1;
  v35 = (v34 + 88 * v33);
  v35[4] = v46;
  v35[5] = v49;
  v35[6] = 0;
  v35[7] = v8;
  v35[8] = v7;
  v35[9] = 0;
  v35[10] = v42;
  v35[11] = v5;
  v35[12] = countAndFlagsBits;
  v35[13] = object;
  v35[14] = MEMORY[0x1E69E7CC0];
  v2[10] = v34;
}

uint64_t static KnosisInternalFact.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABE72720(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x497463656A627573 && a2 == 0xE900000000000044;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x497463656A627573 && a2 == 0xEA00000000006173;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656966696C617571 && a2 == 0xEA00000000007372)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

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

uint64_t sub_1ABE72960(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
    case 3:
      result = 0x497463656A627573;
      break;
    case 4:
      result = 0x7461636964657270;
      break;
    case 5:
      result = 0x44497463656A626FLL;
      break;
    case 6:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE72A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE72720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE72A68(uint64_t a1)
{
  v2 = sub_1ABE79558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE72AA4(uint64_t a1)
{
  v2 = sub_1ABE79558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KnosisInternalFact.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4DB4A8, &qword_1ABF6E770);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  v6 = a1[3];
  v7 = a1;
  v9 = v8;
  sub_1ABA88DCC(v7, v6);
  sub_1ABE79558();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA90800();
  sub_1ABF24F34();
  if (!v11)
  {
    sub_1ABAA1AEC();
    sub_1ABF24F54();
    sub_1ABAA1AEC();
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABAA1DA0();
    sub_1ABF24F14();
    sub_1ABAA1AEC();
    sub_1ABF24ED4();
    sub_1ABAA1AEC();
    sub_1ABF24ED4();
    sub_1ABAD219C(&unk_1EB4DAFF0, &unk_1ABF6BFC0);
    sub_1ABE795AC();
    sub_1ABAA1DA0();
    sub_1ABF24F84();
  }

  return (*(v4 + 8))(v1, v9);
}

uint64_t KnosisInternalFact.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  sub_1ABF23D34();
  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  MEMORY[0x1AC5AA8D0](*&v8);
  sub_1ABA90800();
  sub_1ABF23D34();
  if (v4)
  {
    sub_1ABF25254();
    sub_1ABB4ED98();
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1ABF25254();
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1ABF25254();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_1ABF25254();
  sub_1ABF23D34();
  if (v7)
  {
LABEL_6:
    sub_1ABF25254();
    sub_1ABF23D34();
    goto LABEL_10;
  }

LABEL_9:
  sub_1ABF25254();
LABEL_10:

  return sub_1ABB4F054(a1, v6);
}

uint64_t KnosisInternalFact.hashValue.getter()
{
  sub_1ABF25234();
  KnosisInternalFact.hash(into:)(v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABE72EE0(uint64_t a1)
{
  sub_1ABF25234();
  KnosisInternalFact.hash(into:)(v2);
  return sub_1ABF25294();
}

void static KnosisInternalFact.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[6];
  v10 = a2[7];
  v12 = a1[3] == a2[3] && a1[4] == a2[4];
  v14 = a2[8];
  v13 = a2[9];
  if (v12 || (sub_1ABA7D000(), v36 = v16, v37 = v15, v40 = v14, v42 = v17, v38 = v6, v39 = v7, v18 = v8, v19 = v9, v20 = v3, v22 = v21, v24 = v23, v26 = v25, v27 = sub_1ABF25054(), v11 = v36, v10 = v37, v5 = v26, v4 = v24, v14 = v40, v13 = v42, v2 = v22, v3 = v20, v9 = v19, v8 = v18, v6 = v38, v7 = v39, (v27 & 1) != 0))
  {
    if (!v4 || !v10 || (v5 == v11 ? (v28 = v4 == v10) : (v28 = 0), v28 || (v41 = v2, v43 = v13, v29 = sub_1ABF25054(), v2 = v41, v13 = v43, (v29 & 1) != 0)))
    {
      if (v7 && v13 && (v6 == v14 ? (v30 = v7 == v13) : (v30 = 0), !v30 && (sub_1ABAA015C(), v32 = v31, v33 = sub_1ABF25054(), v2 = v32, (v33 & 1) == 0)))
      {
        sub_1ABAA015C();
      }

      else if (v2 == v9 && v3 == v8)
      {
        sub_1ABA950C0();
        return;
      }
    }
  }

  else
  {
    sub_1ABA7D000();
  }

  sub_1ABA950C0();

  sub_1ABF25054();
}

BOOL sub_1ABE730E0(void *__src, const void *a2)
{
  memcpy(v10, __src, sizeof(v10));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABD76EC4(v10, __dst, v3, v4, v5, v6, v7, v8);
}

BOOL sub_1ABE73138(void *__src, const void *a2)
{
  memcpy(v10, __src, sizeof(v10));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABD77010(v10, __dst, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1ABE73190(void *__src, const void *a2)
{
  memcpy(v10, __src, sizeof(v10));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1ABD76D84(v10, __dst, v3, v4, v5, v6, v7, v8) & 1;
}

uint64_t sub_1ABE731E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF947D0);
  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x3A737463616620, 0xE700000000000000);

  sub_1ABE7A35C(v4);
  v6 = v5;

  MEMORY[0x1AC5A9750](v6, &type metadata for KnosisInternalFact);

  v7 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v7);

  MEMORY[0x1AC5A9410](0x726577736E61202CLL, 0xED00003A65707954);
  v8 = 0xE900000000000065;
  v9 = 0x7461636964657270;
  if (v3 != 1)
  {
    v9 = 0x7463656A626FLL;
    v8 = 0xE600000000000000;
  }

  if (v3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7463656A627573;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x1AC5A9410](v10, v11);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0;
}

uint64_t KnosisQueryArg.description.getter()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0x7463656A626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A627573;
  }
}

IntelligencePlatform::KnosisQueryArg_optional __swiftcall KnosisQueryArg.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABE7346C@<X0>(uint64_t *a1@<X8>)
{
  result = KnosisQueryArg.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE73548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v11 = *(a6 + 16);
  v12 = *(a6 + 24);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 88) = a7;
  *(v10 + 96) = a8;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = *a6;
  *(v10 + 72) = v11;
  *(v10 + 80) = v12;
  sub_1ABAFEE5C(0, 0);
  *(v10 + 104) = a9;
  *(v10 + 105) = a10;
  return v10;
}

unint64_t sub_1ABE735BC()
{
  sub_1ABF24AB4();

  v1 = sub_1ABA7E79C();
  MEMORY[0x1AC5A9410](v1);

  MEMORY[0x1AC5A9410](0x3A74696D696C202CLL, 0xE800000000000000);
  sub_1ABA7E79C();
  v2 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v2);

  MEMORY[0x1AC5A9410](0x74657366666F202CLL, 0xE90000000000003ALL);
  sub_1ABA7E79C();
  v3 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v3);

  if (*(v0 + 48))
  {

    v4 = sub_1ABE71478();
    MEMORY[0x1AC5A9410](v4);

    MEMORY[0x1AC5A9410](0x6F4E797265757120, 0xEB000000003A6564);
  }

  v5 = *(v0 + 64);
  if (v5)
  {
    v6 = *(v0 + 56);

    sub_1ABF24AB4();

    v7 = IntentRequest.description.getter();
    v9 = v8;
    sub_1ABAFEE5C(v6, v5);
    MEMORY[0x1AC5A9410](v7, v9);

    MEMORY[0x1AC5A9410](0x52746E65746E6920, 0xEF3A747365757165);
  }

  if (*(v0 + 104) == 1)
  {
    MEMORY[0x1AC5A9410](0x743A677562656420, 0xEB00000000657572);
  }

  if (*(v0 + 105) == 1)
  {
    MEMORY[0x1AC5A9410](0xD000000000000010, 0x80000001ABF8EFA0);
  }

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1ABE73898()
{

  sub_1ABAFEE5C(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t sub_1ABE738D8()
{
  sub_1ABE73898();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE73930()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v0 + 24))
  {

    v1 = sub_1ABE71478();
  }

  else
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v3 = *(v0 + 16);
    v1 = *(v3 + 16);
    if (v1)
    {
      if (v1 == 1)
      {
        v1 = *(v3 + 32);
      }

      else
      {

        v4 = sub_1ABA8CD18();
        sub_1ABAD219C(v4, v5);
        sub_1ABAA3AA4();
        sub_1ABD1044C(v6);
        sub_1ABF23B54();

        v7 = sub_1ABA7E79C();
        MEMORY[0x1AC5A9410](v7);

        MEMORY[0x1AC5A9410](93, 0xE100000000000000);
        return 91;
      }
    }
  }

  return v1;
}

uint64_t sub_1ABE73A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA07D4();
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0x3FF0000000000000;
  *(v3 + 64) = 0;
  *(v3 + 72) = sub_1ABF239C4();
  *(v3 + 80) = 514;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v4;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v3 + 32) = a3;

  return v3;
}

uint64_t sub_1ABE73B20@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *v3;
  type metadata accessor for KnosisQueryParam();
  v6 = sub_1ABF239C4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v49 = v5;
  v50 = a2;
  v48 = v3;
  if (v3[4])
  {
    v7 = v3[4];
  }

  else
  {
    v7 = sub_1ABF239C4();
  }

  v8 = v7 + 64;
  sub_1ABA7D32C();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v14 = 0;
  v51 = v13;
  v52 = v7 + 64;
  v53 = v7;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = (*(v7 + 48) + 16 * (__clz(__rbit64(v11)) | (v15 << 6)));
      v17 = *v16;
      v18 = v16[1];

      v54 = sub_1ABE73F04(sub_1ABE75E70);
      swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_1ABA94FC8(v17, v18, v19, v20, v21, v22, v23, v24, v48, v49, v50, v51, v52, v53, v54, v56, v57, v58);
      if (__OFADD__(v6[2], (v26 & 1) == 0))
      {
        break;
      }

      v27 = v25;
      v28 = v26;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      if (sub_1ABF24C64())
      {
        v35 = sub_1ABA94FC8(v17, v18, v29, v30, v31, v32, v33, v34, v48, v49, v50, v51, v52, v53, v55, v56, v57, v58);
        if ((v28 & 1) != (v36 & 1))
        {
          goto LABEL_26;
        }

        v27 = v35;
      }

      v11 &= v11 - 1;
      if (v28)
      {

        *(v6[7] + 8 * v27) = v55;
      }

      else
      {
        v6[(v27 >> 6) + 8] |= 1 << v27;
        v37 = (v6[6] + 16 * v27);
        *v37 = v17;
        v37[1] = v18;
        *(v6[7] + 8 * v27) = v55;

        v38 = v6[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_25;
        }

        v6[2] = v40;
      }

      v14 = v15;
      v8 = v52;
      v7 = v53;
      v13 = v51;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_1ABF25104();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v15 >= v13)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    v41 = swift_allocObject();

    v42 = sub_1ABA8CD18();
    sub_1ABE73A74(v42, v43, v6);
    if (*(v48 + 40))
    {

      v44 = sub_1ABAA32CC();
      v45 = sub_1ABE73F04(v44);
    }

    else
    {
      v45 = 0;
    }

    *(v41 + 40) = v45;

    *(v41 + 48) = *(v48 + 48);
    *(v41 + 56) = *(v48 + 56);
    *(v41 + 64) = *(v48 + 64);
    *(v41 + 80) = *(v48 + 80);
    sub_1ABA7EF0C();
    swift_beginAccess();
    v46 = *(v48 + 72);
    sub_1ABAA0948();
    swift_beginAccess();
    *(v41 + 72) = v46;

    *(v41 + 88) = *(v48 + 88);

    v50[3] = v49;
    *v50 = v41;
  }

  return result;
}

uint64_t sub_1ABE73F04(void (*a1)(void *__return_ptr))
{
  a1(v3);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_1ABE73F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936159329 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047342 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7079547865646E69 && a2 == 0xE900000000000065;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736D61726170 && a2 == 0xE600000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6465747563657865 && a2 == 0xE800000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6365784570696B73 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6449746C75736572 && a2 == 0xE900000000000073;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x656D614E706F76 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE742E4(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1936159329;
      break;
    case 2:
      result = 1954047342;
      break;
    case 3:
      result = 0x74696D696CLL;
      break;
    case 4:
      result = 0x746867696577;
      break;
    case 5:
      result = 0x7079547865646E69;
      break;
    case 6:
      result = 0x736D61726170;
      break;
    case 7:
      result = 0x6465747563657865;
      break;
    case 8:
      result = 0x6365784570696B73;
      break;
    case 9:
      result = 0x6449746C75736572;
      break;
    case 10:
      result = 0x656D614E706F76;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE743F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE73F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE74420(uint64_t a1)
{
  v2 = sub_1ABE7BF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE7445C(uint64_t a1)
{
  v2 = sub_1ABE7BF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE74498()
{

  v1 = *(v0 + 40);
  *(v0 + 40) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 40);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1ABE74538()
{
  sub_1ABE74498();

  return swift_deallocClassInstance();
}

void sub_1ABE7456C()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4DB518, &qword_1ABF6F250);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA83634();
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE7BF08();
  sub_1ABA8B76C();
  sub_1ABF252E4();
  v5 = *(v1 + 16);

  sub_1ABA88A3C();
  sub_1ABF24F34();
  if (!v5)
  {

    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABAD219C(&qword_1EB4DB528, &unk_1ABF6F258);
    sub_1ABE7BF5C();
    sub_1ABAA18D0();
    sub_1ABA88A3C();
    sub_1ABF24F14();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v8);
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24F14();
    sub_1ABA88A3C();
    sub_1ABF24F74();
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABE7C018();
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABAA2710(&qword_1EB4D2070, MEMORY[0x1E69E6160]);
    sub_1ABAA18D0();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24EE4();
    sub_1ABA95404();
    sub_1ABA88A3C();
    sub_1ABF24EE4();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABAA18D0();
    sub_1ABA88A3C();
    sub_1ABF24F14();

    sub_1ABA88A3C();
    sub_1ABF24ED4();
  }

  v6 = sub_1ABAA0FD0();
  v7(v6);

  sub_1ABA7BC90();
}

void sub_1ABE749A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v22 = v20;
  v24 = v23;
  v42 = *v22;
  sub_1ABAD219C(&qword_1EB4DB640, &qword_1ABF6F310);
  sub_1ABA7BB64();
  v39 = v26;
  v40 = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v39 - v28;
  v22[4] = 0;
  v22[5] = 0;
  v22[6] = 0;
  v22[7] = 0x3FF0000000000000;
  *(v22 + 64) = 0;
  v22[9] = sub_1ABF239C4();
  *(v22 + 40) = 514;
  v22[11] = 0;
  v22[12] = 0;
  v22[13] = 0;
  v30 = v24[3];
  v43 = v24;
  sub_1ABA88DCC(v24, v30);
  sub_1ABE7BF08();
  v41 = v29;
  sub_1ABF252C4();
  if (v21)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v39;
    v46 = 0;
    sub_1ABAA470C();
    v22[2] = sub_1ABF24E14();
    v22[3] = v32;
    sub_1ABAD219C(&qword_1EB4DB528, &unk_1ABF6F258);
    v46 = 1;
    sub_1ABE7C56C();
    sub_1ABF24DF4();
    v33 = v45;
    sub_1ABAA0948();
    swift_beginAccess();
    v22[4] = v33;

    sub_1ABA8FBD0();
    sub_1ABE7C628(v34);
    sub_1ABF24DF4();
    v22[5] = v45;

    LOBYTE(v45) = 3;
    sub_1ABAA470C();
    v22[6] = sub_1ABF24E54();
    LOBYTE(v45) = 4;
    sub_1ABAA470C();
    sub_1ABF24E34();
    v22[7] = v35;
    LOBYTE(a10) = 5;
    sub_1ABE7C668();
    sub_1ABF24E64();
    *(v22 + 64) = v45;
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    LOBYTE(v45) = 6;
    sub_1ABA8295C(&qword_1ED86B400, MEMORY[0x1E69E6190]);
    sub_1ABE7DCD0();
    sub_1ABF24E64();
    sub_1ABAA0948();
    swift_beginAccess();
    v22[9] = a10;

    sub_1ABAA470C();
    *(v22 + 80) = sub_1ABF24DC4();
    LOBYTE(a10) = 8;
    sub_1ABAA470C();
    *(v22 + 81) = sub_1ABF24DC4();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v44 = 9;
    sub_1ABA7E810(&qword_1ED870660, MEMORY[0x1E69E6190]);
    sub_1ABE7DCD0();
    sub_1ABF24DF4();
    v22[11] = a10;

    v36 = sub_1ABF24DB4();
    v38 = v37;
    (*(v31 + 8))(v41, v40);
    v22[12] = v36;
    v22[13] = v38;
  }

  sub_1ABA84B54(v43);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE74EB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE74954(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE74F10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701669236 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABE75060(char a1)
{
  result = 0x676E69727473;
  switch(a1)
  {
    case 1:
      result = 0x74616F6C66;
      break;
    case 2:
      result = 1701669236;
      break;
    case 3:
      result = 0x64726F7779656BLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABE750D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v25;
  a24 = v26;
  v65 = v27;
  v29 = v28;
  sub_1ABAD219C(&qword_1EB4DB5B8, &qword_1ABF6F2A0);
  sub_1ABA7BB64();
  v63 = v31;
  v64 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7FBE0();
  v62 = v33;
  sub_1ABAD219C(&qword_1EB4DB5C0, &qword_1ABF6F2A8);
  sub_1ABA7BB64();
  v60 = v35;
  v61 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  v59 = v37;
  sub_1ABAD219C(&qword_1EB4DB5C8, &qword_1ABF6F2B0);
  sub_1ABA7BB64();
  v57 = v39;
  v58 = v38;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7ED98();
  v41 = sub_1ABAD219C(&qword_1EB4DB5D0, &qword_1ABF6F2B8);
  sub_1ABA7BB64();
  v56 = v42;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v55 - v44;
  v46 = sub_1ABAD219C(&qword_1EB4DB5D8, &unk_1ABF6F2C0);
  sub_1ABA7BB64();
  v48 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v55 - v50;
  sub_1ABA88DCC(v29, v29[3]);
  sub_1ABE7C114();
  sub_1ABF252E4();
  switch(v65)
  {
    case 1:
      a12 = 1;
      sub_1ABE7C210();
      sub_1ABAA1624(&type metadata for KnosisQueryParam.ParamType.FloatCodingKeys, &a12);
      (*(v57 + 8))(v24, v58);
      break;
    case 2:
      a13 = 2;
      sub_1ABE7C1BC();
      v52 = v59;
      sub_1ABAA1624(&type metadata for KnosisQueryParam.ParamType.TimeCodingKeys, &a13);
      v54 = v60;
      v53 = v61;
      goto LABEL_5;
    case 3:
      a14 = 3;
      sub_1ABE7C168();
      v52 = v62;
      sub_1ABAA1624(&type metadata for KnosisQueryParam.ParamType.KeywordCodingKeys, &a14);
      v54 = v63;
      v53 = v64;
LABEL_5:
      (*(v54 + 8))(v52, v53);
      break;
    default:
      a11 = 0;
      sub_1ABE7C264();
      sub_1ABAA1624(&type metadata for KnosisQueryParam.ParamType.StringCodingKeys, &a11);
      (*(v56 + 8))(v45, v41);
      break;
  }

  (*(v48 + 8))(v51, v46);
  sub_1ABA7BC90();
}

void sub_1ABE75480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v26;
  a24 = v27;
  v87 = v24;
  v29 = v28;
  v86 = sub_1ABAD219C(&qword_1EB4DB568, &qword_1ABF6F270);
  sub_1ABA7BB64();
  v83 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v85 = v32;
  sub_1ABAD219C(&qword_1EB4DB570, &qword_1ABF6F278);
  sub_1ABA7BB64();
  v80 = v34;
  v81 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  v82 = v36;
  sub_1ABAD219C(&qword_1EB4DB578, &qword_1ABF6F280);
  sub_1ABA7BB64();
  v78 = v38;
  v79 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7ED98();
  v40 = sub_1ABAD219C(&qword_1EB4DB580, &qword_1ABF6F288);
  sub_1ABA7BB64();
  v77 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA83634();
  v43 = sub_1ABAD219C(&qword_1EB4DB588, &unk_1ABF6F290);
  sub_1ABA7BB64();
  v84 = v44;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v73 - v46;
  sub_1ABA88DCC(v29, v29[3]);
  sub_1ABE7C114();
  v48 = v87;
  sub_1ABF252C4();
  if (v48)
  {
    goto LABEL_8;
  }

  v75 = v40;
  v76 = v25;
  v49 = v85;
  v50 = v86;
  v87 = v29;
  v51 = v47;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v53 == v54 >> 1)
  {
LABEL_7:
    v63 = sub_1ABF24B44();
    swift_allocError();
    v65 = v64;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v65 = &unk_1F2087180;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v84 + 8))(v51, v43);
    v29 = v87;
LABEL_8:
    sub_1ABA84B54(v29);
LABEL_9:
    sub_1ABA7BC90();
    return;
  }

  v74 = 0;
  if (v53 < (v54 >> 1))
  {
    v55 = *(v52 + v53);
    sub_1ABAD4E90();
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      v60 = v55;
      v61 = v83;
      switch(v60)
      {
        case 1:
          a12 = 1;
          sub_1ABE7C210();
          sub_1ABA980A8(&type metadata for KnosisQueryParam.ParamType.FloatCodingKeys, &a12);
          swift_unknownObjectRelease();
          v67 = v78;
          v66 = v79;
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_1ABE7C1BC();
          v50 = v82;
          sub_1ABA980A8(&type metadata for KnosisQueryParam.ParamType.TimeCodingKeys, &a13);
          swift_unknownObjectRelease();
          v67 = v80;
          v66 = v81;
LABEL_15:
          (*(v67 + 8))(v50, v66);
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_1ABE7C168();
          v68 = v74;
          sub_1ABF24D94();
          if (v68)
          {
            v69 = sub_1ABA7FD60();
            v70(v69);
            swift_unknownObjectRelease();
            v29 = v87;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v61 + 8))(v49, v50);
LABEL_16:
          v71 = sub_1ABA7FD60();
          v72(v71);
          sub_1ABA84B54(v87);
          break;
        default:
          a11 = 0;
          sub_1ABE7C264();
          v62 = v76;
          sub_1ABA980A8(&type metadata for KnosisQueryParam.ParamType.StringCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v77 + 8))(v62, v75);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABE75A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE74F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE75A70(uint64_t a1)
{
  v2 = sub_1ABE7C114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75AAC(uint64_t a1)
{
  v2 = sub_1ABE7C114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75AE8(uint64_t a1)
{
  v2 = sub_1ABE7C210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75B24(uint64_t a1)
{
  v2 = sub_1ABE7C210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75B60(uint64_t a1)
{
  v2 = sub_1ABE7C168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75B9C(uint64_t a1)
{
  v2 = sub_1ABE7C168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75BD8(uint64_t a1)
{
  v2 = sub_1ABE7C264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75C14(uint64_t a1)
{
  v2 = sub_1ABE7C264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75C50(uint64_t a1)
{
  v2 = sub_1ABE7C1BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE75C8C(uint64_t a1)
{
  v2 = sub_1ABE7C1BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE75D28(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1ABE75D88(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1ABE75DE8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1ABAA07D4();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v3 + 16) = v5;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v3 + 24) = v4;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_1ABE75E70@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v5 = v1[2];
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v1[3])
  {

    v6 = sub_1ABAA32CC();
    v7 = sub_1ABE73F04(v6);
  }

  else
  {

    v7 = 0;
  }

  v8 = *(v2 + 32);
  sub_1ABAA096C();
  v9 = swift_allocObject();
  result = sub_1ABE75DE8(v5, v7, v8);
  a1[3] = v4;
  *a1 = v9;
  return result;
}

uint64_t sub_1ABE75F80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t))
{

  a4(v8, v5);

  sub_1ABA93E20(v8, v8[3]);
  v6 = sub_1ABF25044();
  sub_1ABA84B54(v8);
  return v6;
}

uint64_t sub_1ABE75FEC(uint64_t a1, uint64_t a2)
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();

  sub_1ABBA8D30();
  v5 = v4;

  if ((v5 & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v6 = *(a1 + 24);
    sub_1ABA7EF0C();
    swift_beginAccess();
    v7 = *(a2 + 24);
    v8 = (v6 | v7) == 0;
    if (v6 && v7)
    {
      type metadata accessor for QueryNode();

      v8 = sub_1ABE71A88();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1ABE7610C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D726574 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646C696863 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7079546D61726170 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABE76224(char a1)
{
  if (!a1)
  {
    return 0x736D726574;
  }

  if (a1 == 1)
  {
    return 0x646C696863;
  }

  return 0x7079546D61726170;
}

uint64_t sub_1ABE76280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE7610C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE762A8(uint64_t a1)
{
  v2 = sub_1ABE7C06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE762E4(uint64_t a1)
{
  v2 = sub_1ABE7C06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE76320()
{

  return v0;
}

uint64_t sub_1ABE76348()
{
  sub_1ABE76320();
  sub_1ABAA096C();

  return swift_deallocClassInstance();
}

void sub_1ABE76378()
{
  sub_1ABA8CCF0();
  sub_1ABAD219C(&qword_1EB4DB550, &qword_1ABF6F268);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABE7C06C();
  sub_1ABA82E0C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
  sub_1ABAA18D0();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v2);
    sub_1ABAA18D0();
    sub_1ABF24F14();
    sub_1ABE7C0C0();
    sub_1ABF24F84();
  }

  v3 = sub_1ABA8862C();
  v4(v3);
  sub_1ABA8CB14();
}

uint64_t sub_1ABE7656C(uint64_t a1)
{
  sub_1ABAA096C();
  v2 = swift_allocObject();
  sub_1ABE765B8(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void sub_1ABE765B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v10;
  v14 = v13;
  sub_1ABAD219C(&qword_1EB4DB630, &qword_1ABF6F308);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E338();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v16 = sub_1ABA7FD60();
  sub_1ABA88DCC(v16, v17);
  sub_1ABE7C06C();
  sub_1ABA82E0C();
  sub_1ABF252C4();
  if (v11)
  {
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA7E810(&qword_1ED870660, MEMORY[0x1E69E6190]);
    sub_1ABF24E64();
    sub_1ABAA0948();
    swift_beginAccess();
    *(v12 + 16) = v21;

    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v18);
    sub_1ABF24DF4();
    sub_1ABAA0948();
    swift_beginAccess();
    *(v12 + 24) = a10;

    sub_1ABE7C518();
    sub_1ABF24E64();
    v19 = sub_1ABA7FD60();
    v20(v19);
    *(v12 + 32) = a10;
  }

  sub_1ABA84B54(v14);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE76850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE7656C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE768EC()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7865646E496F6ELL;
      break;
    case 3:
      v2 = 0x47746E657665;
      goto LABEL_9;
    case 4:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 5:
      result = 0x49747865746E6F63;
      break;
    case 6:
      v2 = 0x476C61636F6CLL;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE76A3C@<X0>(uint64_t *a1@<X8>)
{
  result = KnosisIndexType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE76B28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936159329 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746963696C706D69 && a2 == 0xEB00000000677241;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465746165706572 && a2 == 0xEB00000000677241;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7432043 && a2 == 0xE300000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7551646573726170 && a2 == 0xEF65646F4E797265;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001ABF94810 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656D614E706F76 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE76E08(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 1936159329;
      break;
    case 2:
      result = 0x746963696C706D69;
      break;
    case 3:
      result = 0x6465746165706572;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 7432043;
      break;
    case 6:
      result = 0x7551646573726170;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D614E706F76;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABE76F04()
{
  sub_1ABA8CCF0();
  sub_1ABAD219C(&qword_1EB4DB600, &qword_1ABF6F2E8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABE7C3B4();
  sub_1ABA82E0C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABA93A3C();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABAA18D0();
    sub_1ABF24F84();
    sub_1ABA7C834(2);
    sub_1ABF24F34();
    sub_1ABA95404();
    sub_1ABF24F44();
    sub_1ABA7C834(4);
    sub_1ABF24F34();
    sub_1ABA7C834(5);
    sub_1ABF24F34();
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v2);
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    sub_1ABA7C834(8);
    sub_1ABF24ED4();
  }

  v3 = sub_1ABA8862C();
  v4(v3);
  sub_1ABA8CB14();
}

void sub_1ABE77148()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DB5F8, &qword_1ABF6F2E0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABE7C3B4();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    sub_1ABA80B50();
    v6 = sub_1ABF24E14();
    v8 = v7;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA7E810(&qword_1ED870660, MEMORY[0x1E69E6190]);
    sub_1ABA80B50();
    sub_1ABF24E64();
    v31 = v34[0];
    sub_1ABA8C440(2);
    v30 = sub_1ABF24E14();
    v47 = v9;
    sub_1ABA8C440(3);
    v29 = sub_1ABF24E24();
    sub_1ABA8C440(4);
    sub_1ABF24E14();
    v32 = v10;
    sub_1ABA8C440(5);
    sub_1ABF24E14();
    v28 = v6;
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v11);
    sub_1ABAB5934();
    *(v13 - 256) = v12;
    sub_1ABA80B50();
    sub_1ABF24DF4();
    v27 = v4;
    v14 = v34[0];
    LOBYTE(v33[0]) = 7;
    sub_1ABAB5934();
    sub_1ABA80B50();
    sub_1ABF24DF4();
    v15 = v34[0];
    v45 = 8;
    sub_1ABA80B50();
    v26 = sub_1ABF24DB4();
    v29 &= 1u;
    v16 = sub_1ABA81D08();
    v17(v16);
    sub_1ABAA036C(v28);
    v33[1] = v8;
    v33[2] = v31;
    v33[3] = v30;
    v33[4] = v47;
    LOBYTE(v33[5]) = v29;
    *(&v33[5] + 1) = *v46;
    HIDWORD(v33[5]) = *&v46[3];
    sub_1ABA8BB54();
    v33[6] = v18;
    v33[7] = v32;
    sub_1ABAA0620();
    v33[8] = v20;
    v33[9] = v19;
    v33[10] = v14;
    v33[11] = v15;
    sub_1ABA8BD68();
    v33[12] = v26;
    v33[13] = v21;
    sub_1ABB51320(v33, v34);
    sub_1ABA84B54(v2);
    v34[0] = v28;
    v34[1] = v8;
    v34[2] = v31;
    v34[3] = v30;
    v34[4] = v47;
    v35 = v29;
    *v36 = *v46;
    *&v36[3] = *&v46[3];
    sub_1ABA8BB54();
    v37 = v22;
    v38 = v32;
    sub_1ABAA0620();
    v39 = v24;
    v40 = v23;
    v41 = v14;
    v42 = v15;
    sub_1ABA8BD68();
    v43 = v26;
    v44 = v25;
    sub_1ABB5137C(v34);
    memcpy(v27, v33, 0x70uLL);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE77720(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F74617265706FLL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE777BC()
{
  sub_1ABA8CCF0();
  sub_1ABAB53DC();
  sub_1ABAD219C(&qword_1EB4DB778, &unk_1ABF6FD50);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABA83634();
  sub_1ABA8EA00();
  sub_1ABE7D644();
  sub_1ABA8B76C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4DB770, &unk_1ABF6FD40);
  sub_1ABE7D698(&unk_1EB4DB780);
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  v1 = sub_1ABA95984();
  v2(v1);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE778F4()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  sub_1ABAD219C(&qword_1EB4DB768, &qword_1ABF6FD38);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7ED98();
  sub_1ABA8A074(v0);
  v3 = sub_1ABE7D644();
  sub_1ABAA557C(&type metadata for VirtualOperators.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB770, &unk_1ABF6FD40);
    v5 = sub_1ABE7D698(&unk_1ED86B9F0);
    sub_1ABA99758(v5, v6);
    v7 = sub_1ABA8E524();
    v8(v7);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE77A38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xEC00000051474B6ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1936159329 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7432043 && a2 == 0xE300000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x46747865746E6F63 && a2 == 0xEF73657275746165;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001ABF947F0 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x674B646573726170 && a2 == 0xE900000000000071;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE77D18(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 1936159329;
      break;
    case 3:
      result = 7432043;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x46747865746E6F63;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x674B646573726170;
      break;
    case 8:
      result = 0x614E746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABE77E14()
{
  sub_1ABA8CCF0();
  sub_1ABAD219C(&qword_1EB4DB5E8, &qword_1ABF6F2D8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABE7C2B8();
  sub_1ABA82E0C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABA93A3C();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABA7C834(1);
    sub_1ABF24F34();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABA7FA0C();
    sub_1ABF24F84();
    sub_1ABA7C834(3);
    sub_1ABF24F34();
    sub_1ABA7FA0C();
    sub_1ABF24F84();
    sub_1ABE7C360();
    sub_1ABF24F14();
    type metadata accessor for QueryNode();
    sub_1ABA8FBD0();
    sub_1ABE7C628(v2);
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    sub_1ABA7FA0C();
    sub_1ABF24F14();
    sub_1ABA7C834(8);
    sub_1ABF24ED4();
  }

  v3 = sub_1ABA8862C();
  v4(v3);
  sub_1ABA8CB14();
}

void sub_1ABE7806C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DB5E0, &qword_1ABF6F2D0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA88DCC(v2, v2[3]);
  sub_1ABE7C2B8();
  sub_1ABA82E0C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABA900B8();
    sub_1ABF24E14();
    v27 = v6;
    LOBYTE(v29[0]) = 1;
    sub_1ABA900B8();
    sub_1ABF24E14();
    v26 = v7;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAABD94(2);
    sub_1ABA7E810(&qword_1ED870660, MEMORY[0x1E69E6190]);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24E64();
    sub_1ABAA036C(v29[0]);
    LOBYTE(v29[0]) = 3;
    sub_1ABA900B8();
    v19 = sub_1ABF24E14();
    v24 = v8;
    sub_1ABAABD94(4);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24E64();
    v23 = v29[0];
    sub_1ABAABD94(5);
    sub_1ABE7C30C();
    sub_1ABA900B8();
    sub_1ABF24DF4();
    v22 = v29[0];
    type metadata accessor for QueryNode();
    sub_1ABAABD94(6);
    sub_1ABA8FBD0();
    sub_1ABE7C628(v9);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24DF4();
    v21 = v29[0];
    sub_1ABAABD94(7);
    sub_1ABA94D9C();
    sub_1ABA900B8();
    sub_1ABF24DF4();
    v20 = v29[0];
    sub_1ABA900B8();
    v18 = sub_1ABF24DB4();
    v11 = v10;
    v12 = sub_1ABA83D04();
    v13(v12);
    sub_1ABA8BB54();
    v28[0] = v14;
    v28[1] = v27;
    sub_1ABA8BD68();
    v28[2] = v15;
    v28[3] = v26;
    v28[4] = v25;
    v28[5] = v19;
    v28[6] = v24;
    v28[7] = v29[0];
    v28[8] = v29[0];
    v28[9] = v29[0];
    v28[10] = v29[0];
    v28[11] = v18;
    v28[12] = v11;
    sub_1ABD213F0(v28, v29);
    sub_1ABA84B54(v2);
    sub_1ABA8BB54();
    v29[0] = v16;
    v29[1] = v27;
    sub_1ABA8BD68();
    v29[2] = v17;
    v29[3] = v26;
    v29[4] = v25;
    v29[5] = v19;
    v29[6] = v24;
    v29[7] = v23;
    v29[8] = v22;
    v29[9] = v21;
    v29[10] = v20;
    v29[11] = v18;
    v29[12] = v11;
    sub_1ABD2144C(v29);
    memcpy(v4, v28, 0x68uLL);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE786A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F52746E65746E69 && a2 == 0xEC00000073657475)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE7873C()
{
  sub_1ABA8CCF0();
  v1 = sub_1ABAD219C(&qword_1EB4DB608, &unk_1ABF6F2F0);
  sub_1ABA7BB64();
  v3 = v2;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  sub_1ABA8EA00();
  sub_1ABE7BD30();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4DB510, &unk_1ABF6F230);
  sub_1ABE7C408();
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  (*(v3 + 8))(v0, v1);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE78854()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  sub_1ABAD219C(&qword_1EB4DB508, &qword_1ABF6F228);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7ED98();
  sub_1ABA8A074(v0);
  v3 = sub_1ABE7BD30();
  sub_1ABAA557C(&type metadata for IntentMap.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB510, &unk_1ABF6F230);
    v5 = sub_1ABE7BD84();
    sub_1ABA99758(v5, v6);
    v7 = sub_1ABA8E524();
    v8(v7);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE78960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F746172656E6567 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE789FC()
{
  sub_1ABA8CCF0();
  sub_1ABAB53DC();
  sub_1ABAD219C(&qword_1EB4DB750, &qword_1ABF6FD30);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABA83634();
  sub_1ABA8EA00();
  sub_1ABE7D4D8();
  sub_1ABA8B76C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4DB738, &qword_1ABF6FD28);
  sub_1ABE7D580(&unk_1EB4DB758);
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  v1 = sub_1ABA95984();
  v2(v1);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE78B34()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  sub_1ABAD219C(&qword_1EB4DB728, &qword_1ABF6FD20);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7ED98();
  sub_1ABA8A074(v0);
  v3 = sub_1ABE7D4D8();
  sub_1ABAA557C(&type metadata for ContextGeneratorFeatures.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DB738, &qword_1ABF6FD28);
    v5 = sub_1ABE7D580(&unk_1EB4DB740);
    sub_1ABA99758(v5, v6);
    v7 = sub_1ABA8E524();
    v8(v7);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE78C78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABE78D08()
{
  sub_1ABA8CCF0();
  sub_1ABAB53DC();
  sub_1ABAD219C(&qword_1EB4DB7C0, &qword_1ABF6FFE8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABA83634();
  sub_1ABA8EA00();
  sub_1ABE7DAA0();
  sub_1ABA8B76C();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
  sub_1ABAA2710(&qword_1EB4D2070, MEMORY[0x1E69E6160]);
  sub_1ABAA5AF8();
  sub_1ABF24F84();
  v1 = sub_1ABA95984();
  v2(v1);
  sub_1ABA80BF0();
  sub_1ABA8CB14();
}

void sub_1ABE78E18()
{
  sub_1ABA8CCF0();
  sub_1ABAA0C3C();
  sub_1ABAD219C(&qword_1EB4DB7B0, &qword_1ABF6FFE0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7ED98();
  sub_1ABA8A074(v0);
  v3 = sub_1ABE7DAA0();
  sub_1ABAA557C(&type metadata for ContextGeneratorTypeFeatures.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1ABA84B54(v0);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    v5 = sub_1ABA8295C(&qword_1ED86B400, MEMORY[0x1E69E6190]);
    sub_1ABA99758(v5, v6);
    v7 = sub_1ABA8E524();
    v8(v7);
    sub_1ABA9FDFC();
  }

  sub_1ABA7AE5C();
  sub_1ABA8CB14();
}

uint64_t sub_1ABE78F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE76B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE78F64(uint64_t a1)
{
  v2 = sub_1ABE7C3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE78FA0(uint64_t a1)
{
  v2 = sub_1ABE7C3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE78FDC(void *a1@<X8>)
{
  sub_1ABE77148();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_1ABE79044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE77720(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE79070(uint64_t a1)
{
  v2 = sub_1ABE7D644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE790AC(uint64_t a1)
{
  v2 = sub_1ABE7D644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABE790E8(void *a1@<X8>)
{
  sub_1ABE778F4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABE79130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE79184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE77A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE791AC(uint64_t a1)
{
  v2 = sub_1ABE7C2B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE791E8(uint64_t a1)
{
  v2 = sub_1ABE7C2B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}