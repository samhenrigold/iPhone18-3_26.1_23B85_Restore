void sub_29E7168B0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2A1C72B38](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_29E7170C4(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_29E754B78();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_29E754B88();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_29E716B28@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
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
    v10 = sub_29E74E868();
    if (v10)
    {
      v11 = sub_29E74E888();
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
      result = sub_29E74E878();
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
  v10 = sub_29E74E868();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_29E74E888();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_29E74E878();
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

uint64_t sub_29E716D58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x29EDCA608];
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
    v10 = sub_29E7171C4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_29E643D20(a3, a4);
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
  sub_29E716B28(v13, a3, a4, &v12);
  v10 = v4;
  sub_29E643D20(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_29E716EE8(unint64_t a1, unint64_t a2)
{
  sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
  if (a2 >> 62)
  {
    v4 = sub_29E754E88();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29E754D78();
    v6 = 0xD000000000000046;
    v5 = 0x800000029E760600;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29E754D78();
  v5 = 0x800000029E7605B0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED96C20](v6, v5);
  v8 = sub_29E755178();
  MEMORY[0x29ED96C20](v8);

  MEMORY[0x29ED96C20](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29E755178();
  MEMORY[0x29ED96C20](v9);

  result = sub_29E754E58();
  __break(1u);
  return result;
}

void sub_29E7170C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_29E754C98())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_29E754CD8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29E7171C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_29E74E868();
  v11 = result;
  if (result)
  {
    result = sub_29E74E888();
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

  sub_29E74E878();
  sub_29E716B28(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_29E71727C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_29E64C7DC(a3, a4);
          return sub_29E716D58(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_29E7173E4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29E754C98())
    {
LABEL_3:
      sub_29E5FF284(0);
      v3 = sub_29E754D48();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29E754C98();
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

  v3 = MEMORY[0x29EDCA1A0];
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
      v8 = sub_29E716EE8(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29E754B78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29E754B88();

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

        sub_29E751758();
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
      v24 = sub_29E754B78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29E754B88();

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

uint64_t sub_29E7176C8(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  sub_29E718C78(0, &qword_2A1A7D4C0, MEMORY[0x29EDB8AC0]);
  v126 = v3;
  v125 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v124 = &v110 - v4;
  sub_29E718784(0);
  v113 = v5;
  v112 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v111 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_29E752098();
  v7 = *(v139 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v139);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v134 = &v110 - v12;
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v123 = &v110 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v122 = &v110 - v15;
  v16 = MEMORY[0x29EDC3840];
  sub_29E718800(0, &qword_2A1A7D6C8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v144 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v110 - v20;
  v22 = sub_29E74FDC8();
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = MEMORY[0x2A1C7C4A8](v22);
  v129 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v128 = &v110 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v121 = &v110 - v30;
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v110 - v31;
  sub_29E718800(0, &qword_2A1A7D3F8, v16, MEMORY[0x29EDC9E90]);
  v33 = *(v23 + 72);
  v34 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v119 = *(v24 + 80);
  v120 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29E762F40;
  v118 = v34;
  v127 = v36;
  v37 = v36 + v34;
  sub_29E714F88(v37);
  v138 = v33;
  v135 = v37;
  sub_29E7153E8(v37 + v33);
  if (!*(a2 + 16) || (v38 = sub_29E68AA8C(*MEMORY[0x29EDBA750]), (v39 & 1) == 0) || !*(a2 + 16) || (LODWORD(v40) = *(*(a2 + 56) + v38), v41 = sub_29E68AA8C(*MEMORY[0x29EDBA758]), (v43 & 1) == 0))
  {

    sub_29E752048();
    v48 = sub_29E752088();
    v49 = sub_29E7546C8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v145[0] = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_29E6B9C90(0xD00000000000001CLL, 0x800000029E76C3A0, v145);
      _os_log_impl(&dword_29E5ED000, v48, v49, "[%{public}s] Indeterminate onboarding state, skipping feed item updates", v50, 0xCu);
      sub_29E5FECBC(v51);
      MEMORY[0x29ED98410](v51, -1, -1);
      MEMORY[0x29ED98410](v50, -1, -1);
    }

    (*(v7 + 8))(v10, v139);
    goto LABEL_9;
  }

  v44 = 0;
  v45 = 0;
  v46 = *(*(a2 + 56) + v41);
  v142 = *(v24 + 16);
  v143 = v24 + 16;
  v132 = (v24 + 56);
  v131 = v46 & (v40 ^ 1);
  v137 = (v24 + 8);
  v130 = (v7 + 8);
  v47 = MEMORY[0x29EDCA190];
  v116 = &unk_29E76C3A0;
  *&v42 = 136446466;
  v115 = v42;
  v114 = xmmword_29E762F30;
  v133 = v40;
  v117 = v21;
  do
  {
    v141 = v47;
    v140 = v44;
    v142(v32, v135 + v45 * v138, v22);
    sub_29E714F88(v21);
    v58 = *v132;
    (*v132)(v21, 0, 1, v22);
    v59 = sub_29E71583C(v21);
    v60 = MEMORY[0x29EDC3840];
    sub_29E718A98(v21, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
    v61 = v59 & v40;
    sub_29E7153E8(v21);
    v58(v21, 0, 1, v22);
    v62 = sub_29E71583C(v21);
    sub_29E718A98(v21, &qword_2A1A7D6C8, v60);
    if (v62)
    {
      v63 = v131;
    }

    else
    {
      v63 = v61;
    }

    sub_29E74FE58();
    sub_29E601938(v145, v145[3]);
    sub_29E74FCF8();
    v64 = v144;
    sub_29E74FDE8();

    sub_29E5FECBC(v145);
    v65 = sub_29E71583C(v64);
    if (v63)
    {
      v66 = v128;
      if (v65)
      {
        goto LABEL_24;
      }

      v67 = v123;
      sub_29E752048();
      v142(v66, v32, v22);
      v68 = sub_29E752088();
      v69 = sub_29E7546C8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v145[0] = v110;
        *v70 = v115;
        *(v70 + 4) = sub_29E6B9C90(0xD00000000000001CLL, v116 | 0x8000000000000000, v145);
        *(v70 + 12) = 2082;
        v71 = sub_29E74FCF8();
        v72 = v66;
        v74 = v73;
        v75 = *v137;
        (*v137)(v72, v22);
        v76 = sub_29E6B9C90(v71, v74, v145);

        *(v70 + 14) = v76;
        _os_log_impl(&dword_29E5ED000, v68, v69, "[%{public}s] Submitting feed item with identifier: %{public}s", v70, 0x16u);
        v77 = v110;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v77, -1, -1);
        MEMORY[0x29ED98410](v70, -1, -1);
      }

      else
      {

        v75 = *v137;
        (*v137)(v66, v22);
      }

      (*v130)(v67, v139);
      v102 = v118;
      v103 = swift_allocObject();
      *(v103 + 16) = v114;
      v142((v103 + v102), v32, v22);
      v47 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_29E6DB70C(0, *(v47 + 2) + 1, 1, v47);
      }

      v40 = *(v47 + 2);
      v104 = *(v47 + 3);
      if (v40 >= v104 >> 1)
      {
        v47 = sub_29E6DB70C((v104 > 1), v40 + 1, 1, v47);
      }

      sub_29E718A98(v144, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
      v75(v32, v22);
      *(v47 + 2) = v40 + 1;
      v105 = &v47[40 * v40];
      *(v105 + 4) = v103;
      *(v105 + 5) = 0;
      *(v105 + 6) = 0;
      *(v105 + 7) = 0;
      v105[64] = 0;
      LOBYTE(v40) = v133;
    }

    else
    {
      if (!v65)
      {
LABEL_24:
        v90 = v134;
        sub_29E752048();
        v91 = v129;
        v142(v129, v32, v22);
        v92 = sub_29E752088();
        v93 = sub_29E7546C8();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v145[0] = v95;
          *v94 = v115;
          *(v94 + 4) = sub_29E6B9C90(0xD00000000000001CLL, v116 | 0x8000000000000000, v145);
          *(v94 + 12) = 2082;
          v96 = sub_29E74FCF8();
          v98 = v97;
          v99 = v91;
          v100 = *v137;
          (*v137)(v99, v22);
          v101 = sub_29E6B9C90(v96, v98, v145);

          *(v94 + 14) = v101;
          _os_log_impl(&dword_29E5ED000, v92, v93, "[%{public}s] Skipping updating feed item with identifier: %{public}s", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED98410](v95, -1, -1);
          MEMORY[0x29ED98410](v94, -1, -1);

          (*v130)(v134, v139);
          sub_29E718A98(v144, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
          v100(v32, v22);
        }

        else
        {

          v57 = *v137;
          (*v137)(v91, v22);
          (*v130)(v90, v139);
          sub_29E718A98(v144, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
          v57(v32, v22);
        }

        LOBYTE(v40) = v133;
        v21 = v117;
        v47 = v141;
        goto LABEL_13;
      }

      v78 = v122;
      sub_29E752048();
      v79 = v121;
      v142(v121, v32, v22);
      v80 = sub_29E752088();
      v81 = sub_29E7546C8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v145[0] = v110;
        *v82 = v115;
        *(v82 + 4) = sub_29E6B9C90(0xD00000000000001CLL, v116 | 0x8000000000000000, v145);
        *(v82 + 12) = 2082;
        v83 = sub_29E74FCF8();
        v84 = v79;
        v86 = v85;
        v87 = *v137;
        (*v137)(v84, v22);
        v88 = sub_29E6B9C90(v83, v86, v145);

        *(v82 + 14) = v88;
        _os_log_impl(&dword_29E5ED000, v80, v81, "[%{public}s] Removing feed item with identifier: %{public}s", v82, 0x16u);
        v89 = v110;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v89, -1, -1);
        MEMORY[0x29ED98410](v82, -1, -1);
      }

      else
      {

        v87 = *v137;
        (*v137)(v79, v22);
      }

      (*v130)(v78, v139);
      sub_29E7188D8(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v106 = swift_allocObject();
      *(v106 + 16) = v114;
      *(v106 + 32) = sub_29E74FCF8();
      *(v106 + 40) = v107;
      v47 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_29E6DB70C(0, *(v47 + 2) + 1, 1, v47);
      }

      v40 = *(v47 + 2);
      v108 = *(v47 + 3);
      if (v40 >= v108 >> 1)
      {
        v47 = sub_29E6DB70C((v108 > 1), v40 + 1, 1, v47);
      }

      sub_29E718A98(v144, &qword_2A1A7D6C8, MEMORY[0x29EDC3840]);
      v87(v32, v22);
      *(v47 + 2) = v40 + 1;
      v109 = &v47[40 * v40];
      *(v109 + 4) = v106;
      *(v109 + 5) = 0;
      *(v109 + 6) = 0;
      *(v109 + 7) = 0;
      v109[64] = 32;
      LOBYTE(v40) = v133;
    }

LABEL_13:
    v44 = 1;
    v45 = 1;
  }

  while ((v140 & 1) == 0);

  if (*(v47 + 2))
  {
    v145[0] = v47;
    sub_29E7188D8(0, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v52 = v111;
    sub_29E752818();
    sub_29E718B1C(&qword_2A1A7BF38, sub_29E718784, MEMORY[0x29EDB8AB8]);
    v53 = v113;
    v54 = sub_29E7528E8();
    v55 = &v141;
    goto LABEL_10;
  }

LABEL_9:
  sub_29E7188D8(0, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v52 = v124;
  sub_29E752828();
  sub_29E718864();
  v53 = v126;
  v54 = sub_29E7528E8();
  v55 = &v146;
LABEL_10:
  (*(*(v55 - 32) + 1))(v52, v53);
  return v54;
}

void sub_29E718784(uint64_t a1)
{
  if (!qword_2A1A7D4D0)
  {
    sub_29E7188D8(255, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v1 = sub_29E752808();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D4D0);
    }
  }
}

void sub_29E718800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E718864()
{
  result = qword_2A1A7D4C8;
  if (!qword_2A1A7D4C8)
  {
    sub_29E718C78(255, &qword_2A1A7D4C0, MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D4C8);
  }

  return result;
}

void sub_29E7188D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E718928(uint64_t a1)
{
  if (!qword_2A1A7D6A8)
  {
    sub_29E718800(255, &qword_2A1A7D6B0, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A7D6A8);
    }
  }
}

uint64_t sub_29E7189BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E718800(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E718A3C(uint64_t a1)
{
  sub_29E718928(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E718A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E718800(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E718B08(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E64C7DC(result, a2);
  }

  return result;
}

uint64_t sub_29E718B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepOnboardingTileGenerator(uint64_t a1)
{
  result = qword_2A1A7D680;
  if (!qword_2A1A7D680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E718BD8(uint64_t a1)
{
  sub_29E718C78(319, &qword_2A1A7D4F8, MEMORY[0x29EDB89F8]);
  if (v1 <= 0x3F)
  {
    sub_29E74FE48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E718C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29E7188D8(255, &qword_2A1A7D498, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E718D0C(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  sub_29E74ECD8();
}

void *sub_29E718D68()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator;
  if (*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator);
  }

  else
  {
    v2 = sub_29E718DD0(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_29E718DD0(uint64_t a1)
{
  v2 = sub_29E74ED28();
  v64 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E71C1F0(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v59 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v68 = &v59 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v59 - v13;
  v72 = a1;
  v15 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource);
  result = [v15 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v17 = result;
    v70 = OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord;
    sub_29E6F5CC4(v72 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord, v14);
    v18 = sub_29E74FFA8();
    v19 = *(v18 - 8);
    v69 = *(v19 + 48);
    v20 = v69(v14, 1, v18);
    swift_unknownObjectRetain();
    v67 = v7;
    v62 = v2;
    v66 = v19;
    if (v20 == 1)
    {
      sub_29E71C0A8(v14);
      v21 = 0;
    }

    else
    {
      sub_29E74FF78();
      (*(v19 + 8))(v14, v18);
      v21 = sub_29E754198();
    }

    v22 = v18;
    v23 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v17 healthDataSource:v15 currentCountryCode:v21];
    sub_29E751758();
    sub_29E751758();

    v24 = v68;
    sub_29E6F5CC4(v72 + v70, v68);
    v71 = v23;
    v25 = HKSPCurrentDateProvider();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = HKPreferredRegulatoryDomainProvider();
    v65 = type metadata accessor for SleepApneaOnboardingFlowManager();
    v28 = swift_allocObject();
    sub_29E6F5CC4(v24, v10);
    if (v69(v10, 1, v22) == 1)
    {
      sub_29E71C0A8(v24);
      sub_29E71C0A8(v10);
      v29 = 0;
      v30 = v66;
      v31 = v67;
    }

    else
    {
      sub_29E74FF78();
      v61 = v26;
      v32 = v63;
      sub_29E74FF98();
      v59 = sub_29E74FF88();
      v33 = objc_allocWithZone(MEMORY[0x29EDBAD50]);
      v60 = v10;
      v34 = v22;
      v35 = v27;
      v36 = v33;
      v37 = sub_29E754198();

      v38 = sub_29E74EC98();
      v39 = v36;
      v27 = v35;
      v22 = v34;
      v29 = [v39 initWithISOCode:v37 timestamp:v38 provenance:v59];

      v40 = v32;
      v26 = v61;
      (*(v64 + 8))(v40, v62);
      sub_29E71C0A8(v24);
      v30 = v66;
      (*(v66 + 8))(v60, v34);
      v31 = v67;
    }

    v41 = v72;
    v28[2] = v71;
    v28[3] = v29;
    v28[4] = sub_29E71C120;
    v28[5] = v26;
    v28[6] = v27;
    v42 = *(v41 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore);
    sub_29E6F5CC4(v41 + v70, v31);
    v43 = v69(v31, 1, v22);
    v44 = v42;
    if (v43 == 1)
    {
      sub_29E71C0A8(v31);
      v45 = 0xEF65646F63207972;
      v46 = 0x746E756F63206F6ELL;
    }

    else
    {
      v46 = sub_29E74FF78();
      v47 = v30;
      v45 = v48;
      (*(v47 + 8))(v31, v22);
    }

    v49 = *(v72 + OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType);
    type metadata accessor for SleepApneaOnboardingAnalyticsContextManager();
    v50 = swift_allocObject();
    v51 = v44;
    swift_defaultActor_initialize();
    *(v50 + 144) = 514;
    *(v50 + 152) = 0;
    *(v50 + 112) = v51;
    *(v50 + 120) = v49;
    *(v50 + 128) = v46;
    *(v50 + 136) = v45;
    v74[3] = v65;
    v74[4] = &off_2A25004C8;
    v74[0] = v28;
    v74[5] = v51;
    v73[3] = &type metadata for SleepApneaOnboardingModel;
    v73[4] = &off_2A24FDCC8;
    v73[0] = swift_allocObject();
    sub_29E71C128(v74, v73[0] + 16);
    type metadata accessor for SleepApneaOnboardingCoordinator();
    v52 = swift_allocObject();
    v53 = sub_29E613218(v73, &type metadata for SleepApneaOnboardingModel);
    MEMORY[0x2A1C7C4A8](v53);
    v55 = (&v59 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v52[5] = &type metadata for SleepApneaOnboardingModel;
    v52[6] = &off_2A24FDCC8;
    v57 = swift_allocObject();
    v52[2] = v57;
    v58 = v55[1];
    v57[1] = *v55;
    v57[2] = v58;
    v57[3] = v55[2];
    swift_unknownObjectUnownedInit();
    v52[8] = v50;
    sub_29E5FECBC(v73);

    sub_29E71C184(v74);
    return v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E7195BC()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v4 = sub_29E752088();
  v5 = sub_29E7546C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v8 = sub_29E755178();
    v10 = sub_29E6B9C90(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_29E6B9C90(0xD00000000000001BLL, 0x800000029E760890, &v19);
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%s.%s]: Setting up navigation controller", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v7, -1, -1);
    MEMORY[0x29ED98410](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v11 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingStartViewController(0));
  sub_29E6D0E20();
  v13 = v12;
  *&v12[qword_2A1859630 + 8] = &off_2A2502E90;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E764160;
  *(v15 + 32) = v13;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  v16 = v13;
  v17 = sub_29E7543D8();

  [Strong setViewControllers:v17 animated:0];
}

uint64_t sub_29E719958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SleepApneaOnboardingNavigationController(uint64_t a1)
{
  result = qword_2A185A660;
  if (!qword_2A185A660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E719AAC(uint64_t a1)
{
  sub_29E71C1F0(319, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E719B84()
{
  sub_29E5FECBC((v0 + 16));
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_29E719BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_29E7544C8();
  v6[3] = sub_29E7544B8();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_29E719CB4;

  return sub_29E719DF0(a5, a6);
}

uint64_t sub_29E719CB4()
{

  v1 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E71CE04, v1, v0);
}

uint64_t sub_29E719DF0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v3[21] = *v2;
  sub_29E71C1F0(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v3[22] = swift_task_alloc();
  v4 = sub_29E752098();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = sub_29E7544C8();
  v3[28] = sub_29E7544B8();
  v6 = sub_29E754468();
  v3[29] = v6;
  v3[30] = v5;

  return MEMORY[0x2A1C73D48](sub_29E719F68, v6, v5);
}

uint64_t sub_29E719F68(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 144);
  sub_29E752048();
  v3 = v2;
  v4 = sub_29E752088();
  v5 = sub_29E7546C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 192);
    v25 = *(v1 + 184);
    v26 = *(v1 + 208);
    v7 = *(v1 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315650;
    v10 = sub_29E755178();
    v12 = sub_29E6B9C90(v10, v11, &v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29E6B9C90(0xD00000000000001DLL, 0x800000029E760960, &v27);
    *(v8 + 22) = 2080;
    ObjectType = swift_getObjectType();
    *(v1 + 304) = (*(v7 + 8))(ObjectType, v7);
    v14 = sub_29E7541F8();
    v16 = sub_29E6B9C90(v14, v15, &v27);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%s.%s]: Attempting to go to next stage from %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);

    v17 = *(v6 + 8);
    v17(v26, v25);
  }

  else
  {
    v18 = *(v1 + 208);
    v19 = *(v1 + 184);
    v20 = *(v1 + 192);

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  *(v1 + 248) = v17;
  sub_29E601938((*(v1 + 160) + 16), *(*(v1 + 160) + 40));
  v21 = swift_task_alloc();
  *(v1 + 256) = v21;
  *v21 = v1;
  v21[1] = sub_29E71A1EC;
  v23 = *(v1 + 144);
  v22 = *(v1 + 152);

  return sub_29E60A228(v23, v22);
}

uint64_t sub_29E71A1EC(char a1)
{
  v2 = *v1;
  *(*v1 + 305) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return MEMORY[0x2A1C73D48](sub_29E71A314, v4, v3);
}

uint64_t sub_29E71A314()
{
  v1 = *(v0 + 305);
  v2 = *(v0 + 152);
  ObjectType = swift_getObjectType();
  *(v0 + 264) = ObjectType;
  v4 = (*(v2 + 8))();
  *(v0 + 306) = v4;
  if (v1 == 3)
  {
    v5 = v4;
    sub_29E601938((*(v0 + 160) + 16), *(*(v0 + 160) + 40));
    v6 = sub_29E60A1A0(3);
    if (v6 != 4 && v5 == v6)
    {
      *(v0 + 272) = sub_29E601938((*(v0 + 160) + 16), *(*(v0 + 160) + 40));
      v7 = sub_29E71A67C;
      v8 = 0;
LABEL_16:

      return MEMORY[0x2A1C73D48](v7, v8, 0);
    }

    sub_29E71B298(*(v0 + 306));
  }

  else
  {
    sub_29E71C244(*(v0 + 305), *(v0 + 144), *(v0 + 160), ObjectType, *(v0 + 152));
  }

  v21 = *(v0 + 144);
  *(v0 + 120) = v21;
  sub_29E60A664(0, &unk_2A185A680, &protocol descriptor for SleepApneaOnboardingViewControllerProtocol, 0);
  sub_29E60A664(0, &qword_2A1856A68, &protocol descriptor for SleepApneaOnboardingHealthDetailsProvider, 1);
  v9 = v21;
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4((v0 + 56), v0 + 16);
    sub_29E601938((v0 + 16), *(v0 + 40));
    v10 = sub_29E680A7C();
    *(v0 + 307) = v10;
    if (v10 != 2)
    {
      sub_29E601938((v0 + 16), *(v0 + 40));
      v11 = sub_29E680A70();
      *(v0 + 308) = v11;
      if (v11 != 2)
      {
        v8 = *(*(v0 + 160) + 64);
        *(v0 + 296) = v8;
        v7 = sub_29E71AE0C;
        goto LABEL_16;
      }
    }

    sub_29E5FECBC((v0 + 16));
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_29E60A6C0(v0 + 56);
  }

  v12 = *(v0 + 306);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = sub_29E7544F8();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);

  v16 = sub_29E7544B8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x29EDCA390];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v14;
  *(v17 + 40) = v12;
  *(v17 + 41) = 0x4020200u >> (8 * v12);
  sub_29E6E4804(0, 0, v13, &unk_29E76A460, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_29E71A67C()
{
  sub_29E601938(*(v0 + 272), *(*(v0 + 272) + 24));
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_29E71A718;

  return sub_29E68E734();
}

uint64_t sub_29E71A718()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_29E71AB0C;
  }

  else
  {
    v5 = sub_29E71A854;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E71A854()
{
  sub_29E71B298(*(v0 + 306));
  v15 = *(v0 + 144);
  *(v0 + 120) = v15;
  sub_29E60A664(0, &unk_2A185A680, &protocol descriptor for SleepApneaOnboardingViewControllerProtocol, 0);
  sub_29E60A664(0, &qword_2A1856A68, &protocol descriptor for SleepApneaOnboardingHealthDetailsProvider, 1);
  v1 = v15;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_29E60A6C0(v0 + 56);
    goto LABEL_6;
  }

  v2 = (v0 + 16);
  sub_29E5FAEE4((v0 + 56), v0 + 16);
  sub_29E601938((v0 + 16), *(v0 + 40));
  v3 = sub_29E680A7C();
  *(v0 + 307) = v3;
  if (v3 == 2 || (sub_29E601938(v2, *(v0 + 40)), v4 = sub_29E680A70(), *(v0 + 308) = v4, v4 == 2))
  {

    sub_29E5FECBC(v2);
LABEL_6:
    v5 = *(v0 + 306);
    v6 = *(v0 + 176);
    v7 = *(v0 + 160);
    v8 = sub_29E7544F8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

    v9 = sub_29E7544B8();
    v10 = swift_allocObject();
    v11 = MEMORY[0x29EDCA390];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = v7;
    *(v10 + 40) = v5;
    *(v10 + 41) = 0x4020200u >> (8 * v5);
    sub_29E6E4804(0, 0, v6, &unk_29E76A460, v10);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(*(v0 + 160) + 64);
  *(v0 + 296) = v14;

  return MEMORY[0x2A1C73D48](sub_29E71AE0C, v14, 0);
}

uint64_t sub_29E71AB0C()
{
  v25 = v0;
  v1 = *(v0 + 288);

  sub_29E752048();
  v2 = v1;
  v3 = sub_29E752088();
  v4 = sub_29E7546A8();

  if (os_log_type_enabled(v3, v4))
  {
    v22 = *(v0 + 200);
    v23 = *(v0 + 248);
    v21 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315650;
    v7 = sub_29E755178();
    v9 = sub_29E6B9C90(v7, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_29E6B9C90(0xD00000000000001DLL, 0x800000029E760960, &v24);
    *(v5 + 22) = 2080;
    swift_getErrorValue();
    v10 = *(*(v0 + 104) - 8);
    swift_task_alloc();
    (*(v10 + 16))();
    v11 = sub_29E7541F8();
    v13 = v12;

    v14 = sub_29E6B9C90(v11, v13, &v24);

    *(v5 + 24) = v14;
    _os_log_impl(&dword_29E5ED000, v3, v4, "[%s.%s]: Error completing onboarding %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v6, -1, -1);
    MEMORY[0x29ED98410](v5, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v15 = *(v0 + 248);
    v16 = *(v0 + 200);
    v17 = *(v0 + 184);

    v15(v16, v17);
  }

  v18 = *(v0 + 288);
  sub_29E71C244(2, *(v0 + 144), *(v0 + 160), *(v0 + 264), *(v0 + 152));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_29E71AE0C()
{
  v1 = *(v0 + 296);
  *(v1 + 145) = (*(v0 + 307) & 1) == 0;
  return MEMORY[0x2A1C73D48](sub_29E71AE38, v1, 0);
}

uint64_t sub_29E71AE5C()
{

  sub_29E5FECBC((v0 + 16));
  v1 = *(v0 + 306);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = sub_29E7544F8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = sub_29E7544B8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x29EDCA390];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v3;
  *(v6 + 40) = v1;
  *(v6 + 41) = 0x4020200u >> (8 * v1);
  sub_29E6E4804(0, 0, v2, &unk_29E76A460, v6);

  v8 = *(v0 + 8);

  return v8();
}

void sub_29E71AFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v8 = sub_29E752088();
  v9 = sub_29E7546C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    v13 = sub_29E755178();
    v15 = sub_29E6B9C90(v13, v14, aBlock);
    v21 = v4;
    v16 = a1;
    v17 = v15;

    *(v11 + 4) = v17;
    a1 = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E760940, aBlock);
    _os_log_impl(&dword_29E5ED000, v8, v9, "[%s.%s]: Dismissing navigation controller", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v12, -1, -1);
    v18 = v11;
    a2 = v22;
    MEMORY[0x29ED98410](v18, -1, -1);

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A2502F00;
    v20 = _Block_copy(aBlock);
  }

  else
  {
    v20 = 0;
  }

  [Strong dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

void sub_29E71B298(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v42 - v10;
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  v14 = os_log_type_enabled(v12, v13);
  v44 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45 = v9;
    v17 = v16;
    v47 = v16;
    *v15 = 136315650;
    v18 = sub_29E755178();
    v20 = sub_29E6B9C90(v18, v19, &v47);
    v43 = v5;
    v21 = v6;
    v22 = v20;

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E760980, &v47);
    *(v15 + 22) = 2080;
    v46 = a1;
    v23 = sub_29E7541F8();
    v25 = sub_29E6B9C90(v23, v24, &v47);

    *(v15 + 24) = v25;
    v6 = v21;
    v5 = v43;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%s.%s]: Going to next stage from %s", v15, 0x20u);
    swift_arrayDestroy();
    v26 = v17;
    v9 = v45;
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  v27 = *(v6 + 8);
  v27(v11, v5);
  sub_29E601938(v2 + 2, v2[5]);
  v28 = sub_29E60A118(a1);
  if (v28 == 4)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v30 = sub_29E754828();

    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v2;
      *(v31 + 24) = v30;

      v32 = v30;
      sub_29E71AFB8(sub_29E71C994, v31);
    }

    else
    {
      sub_29E752068();
      v33 = sub_29E752088();
      v34 = sub_29E7546A8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v45 = v9;
        v36 = v35;
        v37 = swift_slowAlloc();
        v47 = v37;
        *v36 = 136446210;
        v38 = sub_29E755178();
        v40 = sub_29E6B9C90(v38, v39, &v47);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_29E5ED000, v33, v34, "[%{public}s]: Health store is nil, cannot navigate to breathing disturbances room, just dismissing", v36, 0xCu);
        sub_29E5FECBC(v37);
        MEMORY[0x29ED98410](v37, -1, -1);
        MEMORY[0x29ED98410](v36, -1, -1);

        v41 = v45;
      }

      else
      {

        v41 = v9;
      }

      v27(v41, v5);
      sub_29E71AFB8(0, 0);
    }
  }

  else
  {
    sub_29E71BB5C(v28, a1);
  }
}

uint64_t sub_29E71B6E8(void *a1)
{
  v3 = *v1;
  v4 = sub_29E74EAF8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v43 - v12;
  sub_29E752068();
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();
  v16 = os_log_type_enabled(v14, v15);
  v45 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v44 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = v6;
    v20 = a1;
    v21 = v19;
    v48 = v19;
    *v18 = 136446210;
    v22 = sub_29E755178();
    v24 = v11;
    v25 = v8;
    v26 = sub_29E6B9C90(v22, v23, &v48);

    *(v18 + 4) = v26;
    v8 = v25;
    v11 = v24;
    _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s]: Attempting to navigate to breathing disturbances room", v18, 0xCu);
    sub_29E5FECBC(v21);
    v27 = v21;
    a1 = v20;
    v6 = v43;
    MEMORY[0x29ED98410](v27, -1, -1);
    v28 = v18;
    v7 = v44;
    MEMORY[0x29ED98410](v28, -1, -1);
  }

  v29 = *(v8 + 8);
  v29(v13, v7);
  v30 = [a1 profileIdentifier];
  v31 = [objc_allocWithZone(MEMORY[0x29EDC1560]) initWithProfileIdentifier_];

  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v32 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v33 = [v31 URLForDataTypeDetailWithObjectType_];

  if (v33)
  {
    sub_29E74EAD8();

    sub_29E74EAB8();
    return (*(v46 + 8))(v6, v47);
  }

  else
  {
    sub_29E752068();
    v35 = sub_29E752088();
    v36 = sub_29E7546A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136446210;
      v39 = sub_29E755178();
      v47 = v11;
      v41 = sub_29E6B9C90(v39, v40, &v48);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29E5ED000, v35, v36, "[%{public}s]: Failed to create URL for breathing disturbances room", v37, 0xCu);
      sub_29E5FECBC(v38);
      MEMORY[0x29ED98410](v38, -1, -1);
      MEMORY[0x29ED98410](v37, -1, -1);

      v42 = v47;
    }

    else
    {

      v42 = v11;
    }

    return (v29)(v42, v7);
  }
}

void sub_29E71BB5C(unsigned __int8 a1, int a2)
{
  v3 = v2;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v38 = a2;
    v13 = v12;
    v39 = swift_slowAlloc();
    v43 = v39;
    *v13 = 136315906;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v43);
    v40 = v6;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_29E6B9C90(0xD00000000000001ALL, 0x800000029E7609A0, &v43);
    *(v13 + 22) = 2080;
    v42 = a1;
    v18 = sub_29E7541F8();
    v20 = sub_29E6B9C90(v18, v19, &v43);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2080;
    v41 = v38;
    v21 = sub_29E7541F8();
    v23 = sub_29E6B9C90(v21, v22, &v43);

    *(v13 + 34) = v23;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%s.%s]: Showing next stage %s from previous stage %s", v13, 0x2Au);
    v24 = v39;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v24, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v7 + 8))(v9, v40);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v25 = sub_29E601938((v3 + 16), *(v3 + 40));
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v30 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingEducationViewController());
      v28 = sub_29E6C7308(1);
      v29 = &off_2A25017D8;
    }

    else
    {
      v33 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingSetupCompleteViewController());
      v28 = sub_29E696028();
      v29 = &off_2A2500A68;
    }
  }

  else if (a1)
  {
    v31 = v25[5];
    v32 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingConfirmDetailsViewController(0));
    v28 = sub_29E676E34(v31);
    v29 = &off_2A25000D0;
  }

  else
  {
    v26 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingStartViewController(0));
    sub_29E6D0E20();
    v28 = v27;
    v29 = &off_2A2501AE8;
  }

  swift_getObjectType();
  v34 = v29[3];
  v35 = swift_unknownObjectRetain();
  v34(v35, &off_2A2502E90);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong showViewController:v28 sender:0];
}

uint64_t sub_29E71BF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 57) = a6;
  *(v6 + 56) = a5;
  *(v6 + 16) = a4;
  sub_29E7544C8();
  *(v6 + 24) = sub_29E7544B8();
  v8 = sub_29E754468();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;

  return MEMORY[0x2A1C73D48](sub_29E71BFB8, v8, v7);
}

uint64_t sub_29E71BFB8()
{
  v1 = *(*(v0 + 16) + 64);
  *(v0 + 48) = v1;
  return MEMORY[0x2A1C73D48](sub_29E71BFDC, v1, 0);
}

uint64_t sub_29E71BFDC()
{
  sub_29E73CFD8(*(v0 + 56), *(v0 + 57));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2A1C73D48](sub_29E71C048, v1, v2);
}

uint64_t sub_29E71C048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E71C0A8(uint64_t a1)
{
  sub_29E71C1F0(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E71C1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E71C1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E71C244(char a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a2;
  v60 = a4;
  v61 = 0xD000000000000017;
  v59 = a3;
  v6 = sub_29E74F698();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F8B8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v18 = os_log_type_enabled(v16, v17);
  v53 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v52 = v9;
    v21 = v20;
    v63 = v20;
    *v19 = 136315650;
    v22 = sub_29E755178();
    v24 = sub_29E6B9C90(v22, v23, &v63);
    v51 = v12;
    v25 = a1;
    v26 = v24;

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_29E6B9C90(0xD000000000000017, 0x800000029E75B880, &v63);
    *(v19 + 22) = 2080;
    v62 = v25;
    v27 = sub_29E7541F8();
    v29 = sub_29E6B9C90(v27, v28, &v63);

    *(v19 + 24) = v29;
    a1 = v25;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%s.%s]: Showing blocking alert due to reason %s", v19, 0x20u);
    swift_arrayDestroy();
    v30 = v21;
    v9 = v52;
    MEMORY[0x29ED98410](v30, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);

    (*(v13 + 8))(v15, v51);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  if (!a1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v52 = sub_29E74F7C8();
    v32 = v34;
    v33 = "ONBOARDING_ALERT_AGE_TOO_LOW";
    v35 = 0xD000000000000014;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    v52 = sub_29E74F7C8();
    v32 = v36;
    v33 = "_UNKNOWN_COMPLETION_ERROR";
    v35 = 0xD000000000000012;
LABEL_15:
    v61 = v35;
    goto LABEL_16;
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v52 = sub_29E74F7C8();
  v32 = v31;
  v33 = "_NO_SLEEP_APNEA_DIAGNOSIS";
LABEL_16:
  v37 = *(v9 + 8);
  v38 = v53;
  v37(v11, v53);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v37(v11, v38);
  v39 = sub_29E754198();

  v40 = [objc_opt_self() actionWithTitle:v39 style:1 handler:0];

  v42 = v54;
  v41 = v55;
  v43 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x29EDC6AC0], v56);
  sub_29E67905C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29E762F30;
  *(v44 + 32) = v61;
  *(v44 + 40) = v33 | 0x8000000000000000;
  v45 = sub_29E754238();
  v47 = v46;

  (*(v41 + 8))(v42, v43);
  sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  *(inited + 32) = v40;
  v49 = v40;
  sub_29E71C9BC(v52, v32, inited, v58, v45, v47, v59, v60, v57);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_29E71C9BC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v47 = a5;
  v48 = a6;
  v49 = a3;
  v44 = *a7;
  v45 = a8;
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v16 = a4;
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();

  if (os_log_type_enabled(v17, v18))
  {
    v42 = v12;
    v19 = swift_slowAlloc();
    v43 = a1;
    v20 = v19;
    v51 = swift_slowAlloc();
    v41[1] = a2;
    v21 = v51;
    *v20 = 136315650;
    v22 = sub_29E755178();
    v24 = sub_29E6B9C90(v22, v23, &v51);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_29E6B9C90(0xD000000000000050, 0x800000029E75B8E0, &v51);
    *(v20 + 22) = 2080;
    v50 = (*(a9 + 8))(v45, a9);
    v25 = sub_29E7541F8();
    v27 = sub_29E6B9C90(v25, v26, &v51);

    *(v20 + 24) = v27;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%s.%s]: Presenting alert from stage %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);

    (*(v13 + 8))(v15, v42);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v28 = sub_29E754198();
  v29 = [objc_opt_self() alertControllerWithTitle:v28 message:0 preferredStyle:1];

  v30 = v49;
  v46 = v16;
  if (v49 >> 62)
  {
    goto LABEL_17;
  }

  v31 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
    do
    {
      v32 = 0;
      v33 = v30 & 0xC000000000000001;
      v34 = v30 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v33)
        {
          v36 = MEMORY[0x29ED976A0](v32);
        }

        else
        {
          if (v32 >= *(v34 + 16))
          {
            goto LABEL_16;
          }

          v36 = *(v30 + 8 * v32 + 32);
        }

        v37 = v36;
        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        sub_29E7544C8();
        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v35 = sub_29E754198();
        [v37 setAccessibilityIdentifier_];

        [v29 addAction_];

        ++v32;
        v30 = v49;
        if (v38 == v31)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v39 = v30;
      v40 = sub_29E754C98();
      v30 = v39;
      v31 = v40;
    }

    while (v40);
  }

LABEL_18:
  [v46 presentViewController:v29 animated:1 completion:0];
}

void sub_29E71CE08()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setBackgroundView_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setSelectedBackgroundView_];
}

uint64_t sub_29E71D07C()
{
  v1 = v0;
  v2 = sub_29E750698();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SleepCollectionViewListCell();
  v17.receiver = v0;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, sel_didMoveToSuperview);
  v10 = [v0 viewController];
  if (v10)
  {
    v11 = v10;
    sub_29E754848();

    (*(v3 + 32))(v8, v6, v2);
  }

  else
  {
    (*(v3 + 104))(v8, *MEMORY[0x29EDC1D20], v2);
  }

  v12 = sub_29E750678();
  [v1 setBackgroundColor_];

  v13 = [v1 selectedBackgroundView];
  if (v13)
  {
    v14 = v13;
    v15 = sub_29E750668();
    [v14 setBackgroundColor_];
  }

  return (*(v3 + 8))(v8, v2);
}

id sub_29E71D314(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepCollectionViewListCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E71D36C@<X0>(uint64_t a2@<X8>)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v2)
  {
    swift_getObjectType();
    v4 = v2;
    sub_29E750B48();
    if (v9)
    {
      sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      sub_29E609CF8(0, &qword_2A185A6A0, MEMORY[0x29EDC21C0]);
      if (swift_dynamicCast())
      {
        if (*(&v11 + 1))
        {
          sub_29E5FAEE4(&v10, v13);
          sub_29E601938(v13, v13[3]);
          sub_29E750B68();

          return sub_29E5FECBC(v13);
        }
      }

      else
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
      }
    }

    else
    {

      sub_29E60BC9C(v8, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      v10 = 0u;
      v11 = 0u;
      v12 = 0;
    }

    sub_29E60BC9C(&v10, &qword_2A185A698, &qword_2A185A6A0, MEMORY[0x29EDC21C0]);
  }

  v6 = *MEMORY[0x29EDC22C8];
  v7 = sub_29E750DC8();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t sub_29E71D54C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && v2)
  {
    swift_getObjectType();
    v4 = v2;
    sub_29E750B48();
    if (v6)
    {
      sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      sub_29E609CF8(0, &qword_2A185A6A0, MEMORY[0x29EDC21C0]);
      if (swift_dynamicCast())
      {
        if (*(&v8 + 1))
        {
          sub_29E5FAEE4(&v7, v10);
          sub_29E601938(v10, v10[3]);
          sub_29E750B58();

          return sub_29E5FECBC(v10);
        }
      }

      else
      {
        v9 = 0;
        v7 = 0u;
        v8 = 0u;
      }
    }

    else
    {

      sub_29E60BC9C(v5, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      v7 = 0u;
      v8 = 0u;
      v9 = 0;
    }

    return sub_29E60BC9C(&v7, &qword_2A185A698, &qword_2A185A6A0, MEMORY[0x29EDC21C0]);
  }

  return result;
}

uint64_t type metadata accessor for NextOccurrenceDataSource(uint64_t a1)
{
  result = qword_2A185A6C0;
  if (!qword_2A185A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E71D7C8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v37 = a5;
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C(0);
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E71E21C(0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v36 - v21;
  type metadata accessor for NextScheduleOccurrenceSection(0);
  swift_allocObject();
  v23 = a1;
  v39 = v23;
  v40 = a2;

  v24 = a3;
  v41 = v24;
  v42 = a4;
  sub_29E65B5E4(v23, a2, v24, v42);
  v25 = v37;
  sub_29E7527B8();
  if ((v46 & BYTE2(v46)) & BYTE1(v46))
  {
    v26 = MEMORY[0x29EDC2000];
  }

  else
  {
    v26 = MEMORY[0x29EDC1FF8];
  }

  (*(v17 + 104))(v22, *v26, v16);
  type metadata accessor for NextOccurrenceDataSource(0);
  *(swift_allocObject() + qword_2A185A6A8) = MEMORY[0x29EDCA1A0];
  (*(v17 + 16))(v20, v22, v16);

  v27 = sub_29E750918();
  (*(v17 + 8))(v22, v16);
  v46 = v25;
  v28 = v25;
  sub_29E602DD4();
  swift_retain_n();
  v29 = sub_29E754908();
  v47 = v29;
  v30 = sub_29E7548D8();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  sub_29E621428();
  sub_29E71E288(&qword_2A18572A8, sub_29E621428, MEMORY[0x29EDB8A70]);
  sub_29E71E288(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  v31 = v38;
  sub_29E752968();
  sub_29E6214E8(v11);

  v32 = swift_allocObject();
  swift_weakInit();

  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v28;
  v33[4] = v45;
  sub_29E71E288(&qword_2A18572B8, sub_29E62133C, MEMORY[0x29EDB89E8]);

  v34 = v43;
  sub_29E7529A8();

  (*(v44 + 8))(v31, v34);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  return v27;
}

uint64_t sub_29E71DD18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  type metadata accessor for NextOccurrenceDataSource(0);
  v6 = v2;

  v7 = v3;
  v8 = v4;

  sub_29E71D7C8(v6, v1, v7, v8, v5);
  sub_29E71E288(&qword_2A185A6D0, type metadata accessor for NextOccurrenceDataSource, MEMORY[0x29EDC2030]);
  sub_29E750828();

  v9 = sub_29E750818();

  return v9;
}

uint64_t sub_29E71DE1C(uint64_t a1, uint64_t a2)
{
  sub_29E71E21C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if ((v9[5] & v9[7]) & v9[6])
    {
      v7 = MEMORY[0x29EDC2000];
    }

    else
    {
      v7 = MEMORY[0x29EDC1FF8];
    }

    (*(v4 + 104))(v6, *v7, v3);
    sub_29E750908();
  }
}

uint64_t sub_29E71DFD0(uint64_t a1, uint64_t a2)
{
  sub_29E71E21C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + qword_2A185A6A8) = MEMORY[0x29EDCA1A0];
  (*(v5 + 16))(v7, a2, v4);
  v8 = sub_29E750918();
  (*(v5 + 8))(a2, v4);
  return v8;
}

uint64_t sub_29E71E104()
{
  sub_29E750938();

  return swift_deallocClassInstance();
}

uint64_t sub_29E71E15C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E71E1A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E71E21C(uint64_t a1)
{
  if (!qword_2A185A6D8)
  {
    type metadata accessor for NextScheduleOccurrenceSection(255);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A6D8);
    }
  }
}

uint64_t sub_29E71E288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E71E378@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7274CC(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726780(0);
  v9 = v8;
  sub_29E727F9C(255, &qword_2A1A7C108, MEMORY[0x29EDB85F8], MEMORY[0x29EDB85F0]);
  sub_29E752338();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v7, *a1, v9);
  v12 = *(v5 + 56);
  v11(&v7[v12], a1[1], v9);
  sub_29E726870(0);
  v14 = v13;
  sub_29E726D94();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  v18 = *(v10 + 32);
  v18(a2, v7, v9);
  v18(a2 + *(v5 + 56), &v7[v12], v9);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t sub_29E71E5A8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, void (*a3)(void)@<X4>, uint64_t a4@<X8>, unint64_t *a5@<X1>, uint64_t (*a6)(uint64_t)@<X2>)
{
  v28 = a4;
  sub_29E727F24(0, a5, a6);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v27 - v11;
  v13 = a2(0);
  a3();
  v14 = *a1;
  v15 = a1;
  v27 = v13;
  v16 = *(v13 - 8);
  (*(v16 + 16))(v12, v14, v13);
  sub_29E6AD088(0);
  v18 = v17;
  sub_29E727F9C(255, &qword_2A1858DA0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
  sub_29E752568();
  v19 = *(v10 + 56);
  v20 = a1[1];
  v21 = *(v18 - 8);
  v22 = *(v21 + 16);
  v22(&v12[v19], v20, v18);
  v23 = *(v10 + 72);
  v22(&v12[v23], v15[2], v18);
  v24 = v28;
  (*(v16 + 32))(v28, v12, v27);
  v25 = *(v21 + 32);
  v25(v24 + *(v10 + 56), &v12[v19], v18);
  return (v25)(v24 + *(v10 + 72), &v12[v23], v18);
}

uint64_t sub_29E71E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29E7250E8;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider_];
  _Block_release(v8);

  result = sub_29E7538E8();
  *a4 = result;
  return result;
}

id sub_29E71E8D8(void *a1, SEL *a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = &selRef_systemGray4Color;
  if (v3 != 2)
  {
    v5 = a2;
  }

  v6 = [v4 *v5];

  return v6;
}

uint64_t sub_29E71E940()
{
  v0 = [objc_opt_self() hk_respiratoryKeyColor];
  result = sub_29E7538E8();
  qword_2A185A6F0 = result;
  return result;
}

uint64_t sub_29E71E980@<X0>(uint64_t a2@<X8>)
{
  v44 = a2;
  sub_29E725A50(0, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  v42 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v41 - v6;
  sub_29E725164(0, &qword_2A1A7BE28, sub_29E7259A0, MEMORY[0x29EDBCC28]);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = (&v41 - v12);
  sub_29E725964(0);
  v15 = v14;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v41 - v19;
  sub_29E7544C8();
  v43 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BreathingDisturbancesHighlightView(0);

  sub_29E750F18();
  v21 = sub_29E7533C8();
  sub_29E7529C8();
  v22 = &v20[*(v15 + 36)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_29E71ED90(v13);
  sub_29E71F5E4(v7);
  v27 = sub_29E7533C8();
  sub_29E7529C8();
  v28 = &v7[*(v42 + 9)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_29E7272C8(v20, v18, sub_29E725964);
  v33 = MEMORY[0x29EDBCC28];
  sub_29E727240(v13, v11, &qword_2A1A7BE28, sub_29E7259A0, MEMORY[0x29EDBCC28]);
  sub_29E5F96E8(v7, v5);
  v34 = v18;
  v42 = v18;
  v35 = v11;
  v36 = v5;
  v37 = v44;
  sub_29E7272C8(v34, v44, sub_29E725964);
  sub_29E725874(0);
  v39 = v38;
  sub_29E727240(v35, v37 + *(v38 + 48), &qword_2A1A7BE28, sub_29E7259A0, v33);
  sub_29E5F96E8(v36, v37 + *(v39 + 64));
  sub_29E5F9784(v7);
  sub_29E727558(v13, &qword_2A1A7BE28, sub_29E7259A0, v33);
  sub_29E727330(v20, sub_29E725964);
  sub_29E5F9784(v36);
  sub_29E727558(v35, &qword_2A1A7BE28, sub_29E7259A0, v33);
  sub_29E727330(v42, sub_29E725964);
}

uint64_t sub_29E71ED90@<X0>(_OWORD *a1@<X8>)
{
  v84 = a1;
  v83 = MEMORY[0x29EDBC990];
  v82 = MEMORY[0x29EDC9C68];
  sub_29E725164(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v81 = &v76[-v2];
  sub_29E6C3B78(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v89 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v76[-v7];
  v9 = sub_29E752F48();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  sub_29E752F38();
  sub_29E752F28();
  type metadata accessor for BreathingDisturbancesHighlightView(0);
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v10 = sub_29E7535E8();
  v12 = v11;
  v14 = v13;
  sub_29E753428();
  sub_29E753478();
  sub_29E7534C8();

  v91 = sub_29E7535D8();
  v90 = v15;
  v17 = v16;
  v86 = v18;

  sub_29E60DB44(v10, v12, v14 & 1);

  v88 = sub_29E7533C8();
  sub_29E7529C8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v87 = v17 & 1;
  LOBYTE(v99) = v17 & 1;
  LOBYTE(v95) = 0;
  v85 = v8;
  sub_29E753AF8();
  LOBYTE(v10) = sub_29E7533C8();
  sub_29E7529C8();
  v27 = &v8[*(v4 + 44)];
  *v27 = v10;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_29E752F38();
  sub_29E752F28();
  sub_29E752F18();
  sub_29E752F28();
  sub_29E752F68();
  v32 = sub_29E7535E8();
  v34 = v33;
  v36 = v35;
  sub_29E753438();
  sub_29E753478();
  sub_29E7534C8();

  v37 = sub_29E7535D8();
  v39 = v38;
  LOBYTE(v12) = v40;

  sub_29E60DB44(v32, v34, v36 & 1);

  v41 = *MEMORY[0x29EDBC988];
  v42 = sub_29E753448();
  v43 = *(v42 - 8);
  v44 = v81;
  (*(v43 + 104))(v81, v41, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v79 = sub_29E753588();
  v78 = v45;
  v77 = v46;
  v80 = v47;
  sub_29E60DB44(v37, v39, v12 & 1);

  sub_29E727558(v44, &qword_2A1A7BE80, v83, v82);
  v99 = sub_29E754218();
  v100 = v48;
  sub_29E60DE10();
  v49 = sub_29E753608();
  v51 = v50;
  LOBYTE(v12) = v52;
  sub_29E7534F8();
  sub_29E753478();
  sub_29E7534C8();

  v53 = sub_29E7535D8();
  v55 = v54;
  LOBYTE(v43) = v56;

  sub_29E60DB44(v49, v51, v12 & 1);

  sub_29E753968();
  v57 = sub_29E7535A8();
  v59 = v58;
  LOBYTE(v49) = v60;
  v62 = v61;

  sub_29E60DB44(v53, v55, v43 & 1);

  v63 = v89;
  sub_29E7272C8(v85, v89, sub_29E6C3B78);
  LOBYTE(v53) = v77 & 1;
  v92 = v77 & 1;
  *&v95 = v91;
  *(&v95 + 1) = v90;
  LOBYTE(v96) = v87;
  *(&v96 + 1) = *v94;
  DWORD1(v96) = *&v94[3];
  *(&v96 + 1) = v86;
  LOBYTE(v97) = v88;
  *(&v97 + 1) = *v93;
  DWORD1(v97) = *&v93[3];
  *(&v97 + 1) = v20;
  *v98 = v22;
  *&v98[8] = v24;
  *&v98[16] = v26;
  v98[24] = 0;
  v64 = v95;
  v65 = v96;
  v66 = v84;
  *(v84 + 57) = *&v98[9];
  v67 = *v98;
  v66[2] = v97;
  v66[3] = v67;
  *v66 = v64;
  v66[1] = v65;
  v68 = v66;
  sub_29E7259A0(0);
  v70 = v69;
  sub_29E7272C8(v63, v68 + *(v69 + 48), sub_29E6C3B78);
  v71 = v68 + *(v70 + 64);
  v72 = v79;
  v73 = v78;
  *v71 = v79;
  *(v71 + 1) = v73;
  v71[16] = v53;
  *(v71 + 3) = v80;
  v74 = v68 + *(v70 + 80);
  *v74 = v57;
  *(v74 + 1) = v59;
  LOBYTE(v49) = v49 & 1;
  v74[16] = v49;
  *(v74 + 3) = v62;
  sub_29E7275B4(&v95, &v99);
  sub_29E62935C(v72, v73, v53);

  sub_29E62935C(v57, v59, v49);

  sub_29E727330(v85, sub_29E6C3B78);
  sub_29E60DB44(v57, v59, v49);

  sub_29E60DB44(v72, v73, v92);

  sub_29E727330(v89, sub_29E6C3B78);
  v99 = v91;
  v100 = v90;
  v101 = v87;
  *v102 = *v94;
  *&v102[3] = *&v94[3];
  v103 = v86;
  v104 = v88;
  *v105 = *v93;
  *&v105[3] = *&v93[3];
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v109 = v26;
  v110 = 0;
  return sub_29E727644(&v99);
}

uint64_t sub_29E71F5E4@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v131 = sub_29E752438();
  v130 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131);
  v129 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725164(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v128 = &v102 - v4;
  sub_29E6AC8E0(0);
  v119 = v5;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v117 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v114 = &v102 - v8;
  sub_29E6AC948(0);
  v127 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v126 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7266A8(0);
  v135 = v11;
  v134 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v133 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7265F4(0);
  v141 = v13;
  v138 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v136 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7264C0(0);
  v143 = v15;
  v140 = *(v15 - 1);
  MEMORY[0x2A1C7C4A8](v15);
  v137 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726354(0);
  v144 = v17;
  v142 = *(v17 - 1);
  MEMORY[0x2A1C7C4A8](v17);
  v139 = (&v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7261B8(0);
  v112 = v19;
  v110 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v145 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725FCC(0);
  v115 = v21;
  v113 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v111 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725D88(0);
  v120 = v23;
  v118 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v116 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725AF8();
  v125 = v25;
  v124 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v122 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725ABC(0);
  v121 = v27;
  MEMORY[0x2A1C7C4A8](v27);
  v123 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E74ED28();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v35 = &v102 - v34;
  v109 = type metadata accessor for BreathingDisturbancesHighlightView(0);
  v36 = *(v109 + 20);
  v147 = v1;
  v37 = v1 + v36;
  v38 = *(type metadata accessor for BreathingDisturbancesHighlightDataModel(0) + 44);
  sub_29E74EC78();
  v148 = v30;
  v39 = *(v30 + 16);
  v146 = v29;
  v105 = v39;
  v104 = v30 + 16;
  v39(v33, (v37 + v38), v29);
  if (qword_2A1856238 != -1)
  {
    swift_once();
  }

  v40 = v33;
  v149 = sub_29E753948();
  v41 = *(v37 + 24);
  v42 = *(v37 + 32);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  if (v41 == sub_29E74E9D8() && v42 == v43)
  {

    v44 = v149;
  }

  else
  {
    v45 = sub_29E755028();

    v44 = v149;
    if ((v45 & 1) == 0)
    {
      if (qword_2A1856228 != -1)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }
  }

  while (1)
  {
    v46 = v44;

    if (v41 == sub_29E74E9D8() && v42 == v47)
    {
    }

    else
    {
      v48 = sub_29E755028();

      if ((v48 & 1) == 0 && qword_2A1856228 != -1)
      {
        swift_once();
      }
    }

    v108 = &v102;
    v50 = MEMORY[0x2A1C7C4A8](v49);
    v106 = v46;
    v107 = v50;
    sub_29E72670C(0);
    sub_29E726C70();
    v51 = v133;
    sub_29E752488();
    v52 = sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    v53 = v136;
    v54 = v135;
    sub_29E753698();
    v55 = (*(v134 + 8))(v51, v54);
    MEMORY[0x2A1C7C4A8](v55);
    sub_29E726ECC(0);
    v57 = v56;
    *&v151 = v54;
    *(&v151 + 1) = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    v60 = v137;
    v42 = v141;
    sub_29E753678();
    (*(v138 + 8))(v53, v42);
    sub_29E753368();
    *&v151 = v42;
    *(&v151 + 1) = v57;
    *&v152 = OpaqueTypeConformance2;
    *(&v152 + 1) = v59;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v139;
    v63 = v143;
    sub_29E7536D8();
    (*(v140 + 8))(v60, v63);
    *&v151 = v63;
    *(&v151 + 1) = v61;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v144;
    sub_29E753788();
    v142[1](v62, v65);
    sub_29E7250A0(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v41 = v146;
    if (sub_29E7540E8())
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
LABEL_10:
    v44 = qword_2A185A6E0;
  }

  v66 = v114;
  v139 = v64;
  v103 = v40;
  v67 = v105;
  v105(v114, v35, v41);
  v68 = v119;
  v67(v66 + *(v119 + 48), v40, v41);
  v69 = v117;
  sub_29E7272C8(v66, v117, sub_29E6AC8E0);
  v70 = *(v68 + 48);
  v143 = v35;
  v71 = v148;
  v72 = *(v148 + 32);
  v73 = v126;
  v72();
  v74 = *(v71 + 8);
  (v74)(v69 + v70, v41);
  v142 = v74;
  v148 = v71 + 8;
  sub_29E727390(v66, v69, sub_29E6AC8E0);
  v75 = v127;
  v76 = v73;
  (v72)(&v73[*(v127 + 36)], v69 + *(v68 + 48), v41);
  (v74)(v69, v41);
  v77 = sub_29E7525D8();
  v78 = *(v77 - 8);
  v140 = *(v78 + 56);
  v141 = v78 + 56;
  v79 = v128;
  (v140)(v128, 1, 1, v77);
  *&v151 = v144;
  *(&v151 + 1) = v139;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_29E6AE1DC();
  v82 = v111;
  v83 = v112;
  v84 = v145;
  sub_29E7536A8();
  v144 = MEMORY[0x29EDB8710];
  v139 = MEMORY[0x29EDC9C68];
  sub_29E727558(v79, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  sub_29E727330(v76, sub_29E6AC948);
  (*(v110 + 8))(v84, v83);
  v150 = *(v147 + *(v109 + 32));
  *&v151 = v83;
  *(&v151 + 1) = v75;
  *&v152 = v80;
  *(&v152 + 1) = v81;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = MEMORY[0x29EDC9BA8];
  v87 = MEMORY[0x29EDC9BE0];
  v88 = v116;
  v89 = v115;
  sub_29E7536E8();
  (*(v113 + 8))(v82, v89);
  v90 = v129;
  sub_29E752428();
  (v140)(v79, 1, 1, v77);
  *&v151 = v89;
  *(&v151 + 1) = v86;
  *&v152 = v85;
  *(&v152 + 1) = MEMORY[0x29EDB87A0];
  *&v153 = v87;
  swift_getOpaqueTypeConformance2();
  v91 = v122;
  v92 = v120;
  v93 = v131;
  sub_29E7536B8();
  sub_29E727558(v79, &qword_2A1A7C090, v144, v139);
  (*(v130 + 8))(v90, v93);
  (*(v118 + 8))(v88, v92);
  sub_29E753C48();
  sub_29E752CA8();

  v94 = v123;
  (*(v124 + 32))(v123, v91, v125);
  v95 = (v94 + *(v121 + 36));
  v96 = v156;
  v95[4] = v155;
  v95[5] = v96;
  v95[6] = v157;
  v97 = v152;
  *v95 = v151;
  v95[1] = v97;
  v98 = v154;
  v95[2] = v153;
  v95[3] = v98;
  sub_29E5F9818(v94, v132);
  v99 = v146;
  v100 = v142;
  (v142)(v103, v146);
  return (v100)(v143, v99);
}

uint64_t sub_29E7208A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, double a5@<X4>, uint64_t a6@<X8>)
{
  v103 = a5;
  v100 = a4;
  v118 = a3;
  v115 = a2;
  v109 = a6;
  sub_29E726870(0);
  v111 = v7;
  v110 = *(v7 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v108 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v107 = v90 - v10;
  v119 = sub_29E752F78();
  v124 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119);
  v101 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727478(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v117 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v90 - v15;
  sub_29E725A50(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v18 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = v90 - v21;
  v114 = sub_29E752338();
  v122 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114);
  v92 = v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727F9C(0, &qword_2A1A7C108, MEMORY[0x29EDB85F8], MEMORY[0x29EDB85F0]);
  v116 = v24;
  v123 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v91 = v90 - v25;
  sub_29E726780(0);
  v106 = v26;
  v105 = *(v26 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v26);
  v104 = (v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v121 = v90 - v30;
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v120 = v90 - v32;
  MEMORY[0x2A1C7C4A8](v31);
  v125 = v90 - v33;
  sub_29E7544C8();
  v102 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
  [v34 _value];
  v36 = v35;

  v113 = a1 + *(type metadata accessor for BreathingDisturbancesHighlightView(0) + 20);
  v37 = *(v113 + 64);
  v38 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
  [v38 &selRef_maxYValue];
  v40 = v39;

  if (v37 > v40 + 11.0)
  {
    v41 = v37;
  }

  else
  {
    v41 = v40 + 11.0;
  }

  sub_29E752F58();
  v42 = sub_29E74ED28();
  v112 = v22;
  v43 = v42;
  sub_29E7523D8();

  sub_29E752F58();
  v90[1] = v20;
  sub_29E7523D8();

  sub_29E752F58();
  v127 = v36 + 0.5;
  v90[2] = v16;
  sub_29E7523D8();

  sub_29E752F58();
  v127 = v41;
  sub_29E7523D8();

  v44 = v92;
  v45 = v43;
  sub_29E752328();
  v127 = v100;
  v46 = v91;
  v47 = v114;
  v48 = MEMORY[0x29EDBCA98];
  v49 = MEMORY[0x29EDB85F0];
  v50 = MEMORY[0x29EDBCA88];
  sub_29E7522E8();
  v51 = *(v122 + 8);
  v122 += 8;
  v99 = v51;
  v52 = v44;
  v53 = v44;
  v54 = *&v47;
  v51(v52, v47);
  v98 = *MEMORY[0x29EDBC6F8];
  v55 = v124;
  v56 = *(v124 + 104);
  v96 = v124 + 104;
  v97 = v56;
  v57 = v101;
  v58 = v119;
  v56(v101);
  v127 = v54;
  v128 = v48;
  v129 = v49;
  v130 = v50;
  v100 = MEMORY[0x29EDB8598];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v116;
  sub_29E7522D8();
  v60 = *(v55 + 8);
  v124 = v55 + 8;
  v94 = v60;
  v60(v57, v58);
  v61 = *(v123 + 8);
  v123 += 8;
  v93 = v61;
  v61(v46, v59);
  v62 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
  [v62 _value];
  v64 = v63;

  if (*(v113 + 72) <= 0.0)
  {
    v65 = *(v113 + 72);
  }

  else
  {
    v65 = 0.0;
  }

  sub_29E752F58();
  v90[0] = v45;
  sub_29E7523D8();

  sub_29E752F58();
  sub_29E7523D8();

  sub_29E752F58();
  v127 = v64 + -0.5;
  sub_29E7523D8();

  sub_29E752F58();
  v127 = v65;
  sub_29E7523D8();

  sub_29E752328();
  v127 = v103;
  v66 = v114;
  sub_29E7522E8();
  v99(v53, v66);
  v67 = v119;
  v97(v57, v98, v119);
  v68 = v116;
  sub_29E7522D8();
  v94(v57, v67);
  v93(v46, v68);
  v126 = *(v113 + 56);
  swift_getKeyPath();
  sub_29E725164(0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
  sub_29E72698C(0);
  sub_29E728034(&qword_2A1A7BDF0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData);
  sub_29E7250A0(&qword_2A1A7C4E8, type metadata accessor for BreathingDisturbancesData, &unk_29E76C7A4);
  sub_29E726AA0(255);
  v70 = v69;
  sub_29E726B84(255);
  v72 = v71;
  *&v73 = COERCE_DOUBLE(sub_29E752548());
  v74 = sub_29E726C1C();

  v127 = *&v73;
  v128 = &type metadata for CircleMark;
  v129 = MEMORY[0x29EDB86D0];
  v130 = v74;
  v75 = swift_getOpaqueTypeConformance2();
  v127 = v72;
  v128 = MEMORY[0x29EDBCA98];
  v129 = v75;
  v130 = MEMORY[0x29EDBCA88];
  v76 = swift_getOpaqueTypeConformance2();
  v127 = v70;
  v128 = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v107;
  sub_29E753B28();
  v78 = v105;
  v79 = *(v105 + 16);
  v80 = v121;
  v81 = v106;
  v79(v121, v125, v106);
  v127 = *&v80;
  v82 = v104;
  v83 = v120;
  v79(v104, v120, v81);
  v128 = v82;
  v84 = v110;
  v85 = v108;
  v86 = v111;
  (*(v110 + 16))(v108, v77, v111);
  v129 = v85;
  sub_29E71E378(&v127, v109);
  v87 = *(v84 + 8);
  v87(v77, v86);
  v88 = *(v78 + 8);
  v88(v83, v81);
  v88(v125, v81);
  v87(v85, v86);
  v88(v82, v81);
  v88(v121, v81);
}

uint64_t sub_29E721710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_29E727478(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v27 = &v25 - v4;
  sub_29E725A50(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E752548();
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726B84(0);
  v32 = v10;
  v28 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E726AA0(0);
  v33 = v13;
  v31 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v30 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v29 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  sub_29E74ED28();
  sub_29E7523D8();

  sub_29E752F58();
  v39[0] = *(a1 + *(type metadata accessor for BreathingDisturbancesData(0) + 20));
  sub_29E7523D8();

  sub_29E752538();
  v15 = sub_29E726C1C();
  v16 = MEMORY[0x29EDB86D0];
  v17 = v25;
  sub_29E7522F8();
  (*(v26 + 8))(v9, v17);
  v35 = sub_29E753928();
  v39[0] = v17;
  v39[1] = &type metadata for CircleMark;
  v39[2] = v16;
  v39[3] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x29EDBCA98];
  v20 = MEMORY[0x29EDBCA88];
  v21 = v30;
  v22 = v32;
  sub_29E7522E8();

  (*(v28 + 8))(v12, v22);
  sub_29E752A58();
  v35 = v22;
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  v38 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v33;
  sub_29E752318();
  sub_29E6AE7B8(v39);
  (*(v31 + 8))(v21, v23);
}

uint64_t sub_29E721C94()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_29E721D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v2 = sub_29E752418();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v32 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BreathingDisturbancesHighlightView(0);
  v29[0] = *(v4 - 8);
  v5 = *(v29[0] + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E725164(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_29E74EE68();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E752398();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v14 = sub_29E752368();
  MEMORY[0x2A1C7C4A8](v14 - 8);
  sub_29E7544C8();
  v29[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752348();
  (*(v10 + 104))(v12, *MEMORY[0x29EDB9CB8], v9);
  v15 = sub_29E74EE78();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_29E752378();
  sub_29E727558(v8, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  (*(v10 + 8))(v12, v9);
  v16 = v30;
  sub_29E7272C8(v31, v30, type metadata accessor for BreathingDisturbancesHighlightView);
  v17 = (*(v29[0] + 80) + 16) & ~*(v29[0] + 80);
  v18 = swift_allocObject();
  sub_29E727390(v16, v18 + v17, type metadata accessor for BreathingDisturbancesHighlightView);
  sub_29E752408();
  sub_29E727018(0);
  sub_29E727144(255);
  v20 = v19;
  sub_29E6ADFA8(255);
  v22 = v21;
  sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v24 = v23;
  v25 = sub_29E6AE058();
  v34 = v24;
  v35 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v22;
  v35 = MEMORY[0x29EDBCA98];
  v36 = OpaqueTypeConformance2;
  v37 = MEMORY[0x29EDBCA88];
  v27 = swift_getOpaqueTypeConformance2();
  v34 = v20;
  v35 = v27;
  swift_getOpaqueTypeConformance2();
  sub_29E752578();
}

uint64_t sub_29E722270@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a1;
  v33 = a2;
  v2 = sub_29E752458();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752478();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v26 = sub_29E74EC48();
  MEMORY[0x2A1C7C4A8](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727478(0, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v25 - v10;
  sub_29E6ADFA8(0);
  v13 = v12;
  v29 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727144(0);
  v32 = v16;
  v30 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v27 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E722770(v6);
  sub_29E752468();
  sub_29E752448();
  sub_29E7250A0(&qword_2A1A7CFE8, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
  sub_29E7523A8();
  sub_29E7534F8();
  v19 = sub_29E6AE058();
  sub_29E7524D8();

  (*(v9 + 8))(v11, v8);
  v38 = sub_29E753968();
  v34 = v8;
  v35 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = MEMORY[0x29EDBCA98];
  v22 = MEMORY[0x29EDBCA88];
  sub_29E7524C8();

  (*(v29 + 8))(v15, v13);
  v34 = v13;
  v35 = v21;
  v36 = OpaqueTypeConformance2;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  sub_29E7524E8();
  (*(v30 + 8))(v18, v23);
}

uint64_t sub_29E722770@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_29E74EC28();
  v1 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E74EC48();
  v4 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752BF8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v18 - v12;
  type metadata accessor for BreathingDisturbancesHighlightView(0);
  sub_29E658B34(v13);
  (*(v8 + 104))(v11, *MEMORY[0x29EDBC4C0], v7);
  v14 = sub_29E752BE8();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v16 = (v15)(v13, v7);
  MEMORY[0x29ED91330](v16);
  if (v14)
  {
    sub_29E74EC08();
  }

  else
  {
    sub_29E74EBE8();
  }

  sub_29E74EC38();
  (*(v1 + 8))(v3, v21);
  return (*(v4 + 8))(v6, v19);
}

uint64_t sub_29E722A18@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E7517C8();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = a2[7];
  v8 = (a3 + a2[6]);
  *v8 = &unk_2A24FD420;
  v8[1] = &unk_2A24FD470;
  v8[2] = &unk_2A24FD4C0;
  v8[3] = &unk_2A24FD510;
  *(a3 + v7) = swift_getKeyPath();
  sub_29E725164(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *(a3 + a2[8]) = 604800;
  sub_29E725164(0, &qword_2A1A7CF18, type metadata accessor for BreathingDisturbancesHighlightDataModel, MEMORY[0x29EDC1E70]);
  v10 = v9;
  sub_29E750758();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

uint64_t sub_29E722BFC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29E752FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29E7257DC(0);
  return sub_29E71E980(a2 + *(v3 + 44));
}

double sub_29E722C40@<D0>(uint64_t a1@<X8>)
{
  if (qword_2A1856238 != -1)
  {
    swift_once();
  }

  v2 = qword_2A185A6F0;
  sub_29E752A58();

  v3 = sub_29E753C48();
  v5 = v4;
  if (qword_2A1856230 != -1)
  {
    swift_once();
  }

  v6 = qword_2A185A6E8;
  v7 = sub_29E753C48();
  v9 = v8;

  sub_29E753C48();
  sub_29E752AB8();
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v2;
  *(a1 + 48) = 256;
  *(a1 + 56) = v3;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 256;
  *(a1 + 88) = v7;
  *(a1 + 96) = v9;
  *(a1 + 104) = v16;
  *(a1 + 120) = v17;
  result = *&v18;
  *(a1 + 136) = v18;
  return result;
}

unint64_t sub_29E722DC4()
{
  v1 = *v0;
  v2 = 0x6956726564616568;
  v3 = 0x756C6156596E696DLL;
  if (v1 != 6)
  {
    v3 = 0x6F6F4E7961646F74;
  }

  v4 = 1635017060;
  if (v1 != 4)
  {
    v4 = 0x756C61565978616DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 2)
  {
    v5 = 0x6373654465746164;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_29E722EE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E728098(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E722F24(uint64_t a1)
{
  v2 = sub_29E7256C0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E722F60(uint64_t a1)
{
  v2 = sub_29E7256C0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E722F9C(void *a1)
{
  v3 = v1;
  sub_29E7277F0(0, &qword_2A1A7BD28, sub_29E7256C0, &type metadata for BreathingDisturbancesHighlightDataModel.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11 - v8;
  sub_29E601938(a1, a1[3]);
  sub_29E7256C0();
  sub_29E755138();
  v13 = *v3;
  v12 = 0;
  sub_29E750F08();
  sub_29E7250A0(&qword_2A1A7CF00, MEMORY[0x29EDC2408], MEMORY[0x29EDC2058]);
  sub_29E754FB8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_29E754F98();
    LOBYTE(v13) = 2;
    sub_29E754F98();
    LOBYTE(v13) = 3;
    sub_29E754F98();
    v13 = v3[7];
    v12 = 4;
    sub_29E725164(0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    sub_29E7276CC(&qword_2A1A7BDF8, sub_29E725714, MEMORY[0x29EDC9A48]);
    sub_29E754FB8();
    LOBYTE(v13) = 5;
    sub_29E754FA8();
    LOBYTE(v13) = 6;
    sub_29E754FA8();
    type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
    LOBYTE(v13) = 7;
    sub_29E74ED28();
    sub_29E7250A0(&qword_2A1A7CFD8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29E754FB8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29E723324@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_29E74ED28();
  v23 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7277F0(0, &qword_2A1A7D098, sub_29E7256C0, &type metadata for BreathingDisturbancesHighlightDataModel.CodingKeys, MEMORY[0x29EDC9E80]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  sub_29E601938(a1, v12);
  sub_29E7256C0();
  v27 = v8;
  v13 = v28;
  sub_29E755128();
  if (v13)
  {
    return sub_29E5FECBC(v29);
  }

  v14 = v9;
  v15 = v25;
  sub_29E750F08();
  v30 = 0;
  sub_29E7250A0(&qword_2A1A7D358, MEMORY[0x29EDC2408], MEMORY[0x29EDC2060]);
  v16 = v26;
  sub_29E754F58();
  *v11 = v31;
  LOBYTE(v31) = 1;
  *(v11 + 1) = sub_29E754F38();
  *(v11 + 2) = v17;
  LOBYTE(v31) = 2;
  *(v11 + 3) = sub_29E754F38();
  *(v11 + 4) = v18;
  LOBYTE(v31) = 3;
  *(v11 + 5) = sub_29E754F38();
  *(v11 + 6) = v19;
  sub_29E725164(0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
  v30 = 4;
  sub_29E7276CC(&qword_2A1A7D0B8, sub_29E727768, MEMORY[0x29EDC9A78]);
  sub_29E754F58();
  *(v11 + 7) = v31;
  LOBYTE(v31) = 5;
  sub_29E754F48();
  *(v11 + 8) = v20;
  LOBYTE(v31) = 6;
  sub_29E754F48();
  v28 = 0;
  *(v11 + 9) = v21;
  LOBYTE(v31) = 7;
  sub_29E7250A0(&unk_2A1A7D370, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  sub_29E754F58();
  (*(v15 + 8))(v27, v16);
  (*(v23 + 32))(&v11[*(v14 + 44)], v5, v3);
  sub_29E7272C8(v11, v24, type metadata accessor for BreathingDisturbancesHighlightDataModel);
  sub_29E5FECBC(v29);
  return sub_29E727330(v11, type metadata accessor for BreathingDisturbancesHighlightDataModel);
}

uint64_t sub_29E723A54(void *a1)
{
  sub_29E7277F0(0, &qword_2A1A7BD30, sub_29E72779C, &type metadata for BreathingDisturbancesData.CodingKeys, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9 - v6;
  sub_29E601938(a1, a1[3]);
  sub_29E72779C();
  sub_29E755138();
  v11 = 0;
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
  sub_29E754FB8();
  if (!v1)
  {
    type metadata accessor for BreathingDisturbancesData(0);
    v10 = 1;
    sub_29E754FA8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E723C3C()
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  v1 = *(v0 + *(type metadata accessor for BreathingDisturbancesData(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v1);
  return sub_29E755108();
}

uint64_t sub_29E723CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_29E74ED28();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7277F0(0, &qword_2A1A7D0A0, sub_29E72779C, &type metadata for BreathingDisturbancesData.CodingKeys, MEMORY[0x29EDC9E80]);
  v25 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BreathingDisturbancesData(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E601938(a1, a1[3]);
  sub_29E72779C();
  sub_29E755128();
  if (v2)
  {
    return sub_29E5FECBC(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v27 = 0;
  sub_29E7250A0(&unk_2A1A7D370, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v14 = v23;
  sub_29E754F58();
  v15 = v19;
  (*(v13 + 32))(v19, v24, v14);
  v26 = 1;
  sub_29E754F48();
  v17 = v16;
  (*(v12 + 8))(v8, v25);
  *(v15 + *(v9 + 20)) = v17;
  sub_29E7272C8(v15, v20, type metadata accessor for BreathingDisturbancesData);
  sub_29E5FECBC(a1);
  return sub_29E727330(v15, type metadata accessor for BreathingDisturbancesData);
}

uint64_t sub_29E7240A8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_29E7240D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_29E755028() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E755028();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29E7241BC(uint64_t a1)
{
  v2 = sub_29E72779C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7241F8(uint64_t a1)
{
  v2 = sub_29E72779C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E724268(uint64_t a1, uint64_t a2)
{
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x29ED97A10](*&v4);
}

uint64_t sub_29E724304(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v4);
  return sub_29E755108();
}

void sub_29E724408()
{
  v34[1] = *v0;
  v37 = sub_29E752098();
  v36 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v38 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E7513C8();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v41 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E750F58();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v47 = MEMORY[0x29EDC1D90];
  v48 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x29EDC9C68];
  sub_29E725164(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v34 - v6;
  v8 = sub_29E7517C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v35 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v40 = v34 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = v34 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = v34 - v17;
  sub_29E7514B8();
  sub_29E7517A8();
  v19 = *(v9 + 8);
  v19(v18, v8);
  v20 = sub_29E750A78();

  v21 = [v20 profileIdentifier];

  sub_29E7514B8();
  sub_29E751798();
  v19(v16, v8);
  v22 = sub_29E750698();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v39 = MEMORY[0x29ED931F0](v21, v7);

  sub_29E727558(v7, &qword_2A1858AE0, v47, v46);
  v23 = v48;
  sub_29E750F48();
  v24 = *MEMORY[0x29EDBA850];
  v25 = objc_allocWithZone(MEMORY[0x29EDBAD20]);
  v47 = v24;
  v26 = [v25 initWithIdentifier_];
  if (v26)
  {
    v27 = v26;
    sub_29E7514B8();
    sub_29E7517A8();
    v19(v18, v8);
    sub_29E750A58();

    sub_29E7514B8();
    sub_29E7517A8();
    v19(v16, v8);
    sub_29E750A78();

    v28 = v40;
    sub_29E7514B8();
    sub_29E7517A8();
    v19(v28, v8);
    sub_29E750A88();

    v29 = v41;
    sub_29E751378();
    v30 = sub_29E750F38();

    (*(v44 + 8))(v29, v45);
    (*(v42 + 8))(v23, v43);
    v31 = v35;
    sub_29E7514B8();
    v32 = sub_29E7517B8();
    v19(v31, v8);
    v33 = [v32 navigationController];

    if (v33)
    {
      [v33 pushViewController:v30 animated:1];
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_29E724D34(uint64_t a1)
{
  v2 = sub_29E7517C8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_29E7514C8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_29E724E3C()
{
  sub_29E7514D8();

  return swift_deallocClassInstance();
}

BOOL sub_29E724E74()
{
  v0 = sub_29E750698();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v14 - v5;
  v7 = sub_29E7517C8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7514B8();
  sub_29E751798();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1D60], v0);
  sub_29E7250A0(&qword_2A1A7D360, MEMORY[0x29EDC1D90], MEMORY[0x29EDC1D98]);
  v11 = sub_29E754108();
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v6, v0);
  return (v11 & 1) == 0;
}

uint64_t sub_29E7250A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29E7250E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_29E725164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E72521C(uint64_t a1)
{
  sub_29E725164(319, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BreathingDisturbancesHighlightDataModel(319);
    if (v2 <= 0x3F)
    {
      sub_29E725164(319, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E725350(uint64_t a1)
{
  sub_29E750F08();
  if (v1 <= 0x3F)
  {
    sub_29E725164(319, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29E74ED28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E725480(uint64_t a1)
{
  result = sub_29E74ED28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E7256C0()
{
  result = qword_2A1A7D1B0[0];
  if (!qword_2A1A7D1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7D1B0);
  }

  return result;
}

uint64_t sub_29E725748(uint64_t a1, uint64_t a2)
{
  sub_29E725164(0, &qword_2A1A7D350, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29E7257DC(uint64_t a1)
{
  if (!qword_2A185A700)
  {
    sub_29E725164(255, &qword_2A185A708, sub_29E725874, MEMORY[0x29EDBCC28]);
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A700);
    }
  }
}

void sub_29E725874(uint64_t a1)
{
  if (!qword_2A185A710)
  {
    sub_29E725964(255);
    sub_29E725164(255, &qword_2A1A7BE28, sub_29E7259A0, MEMORY[0x29EDBCC28]);
    sub_29E725A50(255, &qword_2A185A718, sub_29E725ABC, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A185A710);
    }
  }
}

void sub_29E7259A0(uint64_t a1)
{
  if (!qword_2A1A7BEC8)
  {
    sub_29E727478(255, &qword_2A1A7BED0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29E6C3B78(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A7BEC8);
    }
  }
}

void sub_29E725A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E725AF8()
{
  if (!qword_2A1A7BE60)
  {
    sub_29E725D88(255);
    sub_29E752438();
    sub_29E725FCC(255);
    sub_29E7261B8(255);
    sub_29E6AC948(255);
    sub_29E726354(255);
    sub_29E7264C0(255);
    sub_29E7265F4(255);
    sub_29E726ECC(255);
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE60);
    }
  }
}

void sub_29E725D88(uint64_t a1)
{
  if (!qword_2A1A7BE50)
  {
    sub_29E725FCC(255);
    sub_29E7261B8(255);
    sub_29E6AC948(255);
    sub_29E726354(255);
    sub_29E7264C0(255);
    sub_29E7265F4(255);
    sub_29E726ECC(255);
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE50);
    }
  }
}

void sub_29E725FCC(uint64_t a1)
{
  if (!qword_2A1A7BE68)
  {
    sub_29E7261B8(255);
    sub_29E6AC948(255);
    sub_29E726354(255);
    sub_29E7264C0(255);
    sub_29E7265F4(255);
    sub_29E726ECC(255);
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE68);
    }
  }
}

void sub_29E7261B8(uint64_t a1)
{
  if (!qword_2A1A7BE48)
  {
    sub_29E726354(255);
    sub_29E7264C0(255);
    sub_29E7265F4(255);
    sub_29E726ECC(255);
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE48);
    }
  }
}

void sub_29E726354(uint64_t a1)
{
  if (!qword_2A1A7BE58)
  {
    sub_29E7264C0(255);
    sub_29E7265F4(255);
    sub_29E726ECC(255);
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE58);
    }
  }
}

void sub_29E7264C0(uint64_t a1)
{
  if (!qword_2A1A7BE78)
  {
    sub_29E7265F4(255);
    sub_29E726ECC(255);
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    swift_getOpaqueTypeConformance2();
    sub_29E7250A0(&qword_2A1A7C0A0, sub_29E726ECC, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE78);
    }
  }
}

void sub_29E7265F4(uint64_t a1)
{
  if (!qword_2A1A7BE70)
  {
    sub_29E7266A8(255);
    sub_29E7250A0(&qword_2A1A7C0C8, sub_29E7266A8, MEMORY[0x29EDB8690]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7BE70);
    }
  }
}

void sub_29E7266A8(uint64_t a1)
{
  if (!qword_2A1A7C0C0)
  {
    sub_29E72670C(255);
    sub_29E726C70();
    v1 = sub_29E752498();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C0C0);
    }
  }
}

void sub_29E72670C(uint64_t a1)
{
  if (!qword_2A1A7C120)
  {
    sub_29E726780(255);
    sub_29E726870(255);
    v1 = sub_29E7522B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C120);
    }
  }
}

void sub_29E726780(uint64_t a1)
{
  if (!qword_2A1A7C118)
  {
    sub_29E727F9C(255, &qword_2A1A7C108, MEMORY[0x29EDB85F8], MEMORY[0x29EDB85F0]);
    sub_29E752338();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C118);
    }
  }
}

void sub_29E726870(uint64_t a1)
{
  if (!qword_2A1A7BE30)
  {
    sub_29E725164(255, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    type metadata accessor for BreathingDisturbancesData(255);
    sub_29E72698C(255);
    sub_29E728034(&qword_2A1A7BDF0, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData);
    sub_29E7250A0(&qword_2A1A7C4E8, type metadata accessor for BreathingDisturbancesData, &unk_29E76C7A4);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BE30);
    }
  }
}

void sub_29E72698C(uint64_t a1)
{
  if (!qword_2A1A7C0F0)
  {
    sub_29E726AA0(255);
    sub_29E726B84(255);
    sub_29E752548();
    sub_29E726C1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0F0);
    }
  }
}

void sub_29E726AA0(uint64_t a1)
{
  if (!qword_2A1A7C100)
  {
    sub_29E726B84(255);
    sub_29E752548();
    sub_29E726C1C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C100);
    }
  }
}

void sub_29E726B84(uint64_t a1)
{
  if (!qword_2A1A7C0F8)
  {
    sub_29E752548();
    sub_29E726C1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0F8);
    }
  }
}

unint64_t sub_29E726C1C()
{
  result = qword_2A1A7C5A0;
  if (!qword_2A1A7C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7C5A0);
  }

  return result;
}

unint64_t sub_29E726C70()
{
  result = qword_2A1A7C128;
  if (!qword_2A1A7C128)
  {
    sub_29E72670C(255);
    sub_29E727F9C(255, &qword_2A1A7C108, MEMORY[0x29EDB85F8], MEMORY[0x29EDB85F0]);
    sub_29E752338();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E726D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7C128);
  }

  return result;
}

unint64_t sub_29E726D94()
{
  result = qword_2A1A7BE38;
  if (!qword_2A1A7BE38)
  {
    sub_29E726870(255);
    sub_29E726AA0(255);
    sub_29E726B84(255);
    sub_29E752548();
    sub_29E726C1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE38);
  }

  return result;
}

void sub_29E726ECC(uint64_t a1)
{
  if (!qword_2A1A7C098)
  {
    sub_29E727018(255);
    sub_29E727144(255);
    sub_29E6ADFA8(255);
    sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29E7525B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C098);
    }
  }
}

void sub_29E727018(uint64_t a1)
{
  if (!qword_2A1A7C0A8)
  {
    sub_29E727144(255);
    sub_29E6ADFA8(255);
    sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0A8);
    }
  }
}

void sub_29E727144(uint64_t a1)
{
  if (!qword_2A1A7C0B8)
  {
    sub_29E6ADFA8(255);
    sub_29E727478(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0B8);
    }
  }
}

uint64_t sub_29E727240(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29E725164(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29E7272C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E727330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E727390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E7273F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BreathingDisturbancesHighlightView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29E722270(v4, a1);
}

void sub_29E727478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E7274CC(uint64_t a1)
{
  if (!qword_2A1A7C110)
  {
    sub_29E726780(255);
    sub_29E726870(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A7C110);
    }
  }
}

uint64_t sub_29E727540(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E727558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_29E725164(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E7275B4(uint64_t a1, uint64_t a2)
{
  sub_29E727478(0, &qword_2A1A7BED0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E727644(uint64_t a1)
{
  sub_29E727478(0, &qword_2A1A7BED0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E7276CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E725164(255, &qword_2A1A7D0C0, type metadata accessor for BreathingDisturbancesData, MEMORY[0x29EDC9A40]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E72779C()
{
  result = qword_2A1A7D318;
  if (!qword_2A1A7D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D318);
  }

  return result;
}

void sub_29E7277F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E727888(uint64_t a1)
{
  if (!qword_2A185A728)
  {
    sub_29E725164(255, &qword_2A185A708, sub_29E725874, MEMORY[0x29EDBCC28]);
    sub_29E72791C();
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A728);
    }
  }
}

unint64_t sub_29E72791C()
{
  result = qword_2A185A730;
  if (!qword_2A185A730)
  {
    sub_29E725164(255, &qword_2A185A708, sub_29E725874, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A730);
  }

  return result;
}

unint64_t sub_29E7279A8()
{
  result = qword_2A185A738;
  if (!qword_2A185A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A738);
  }

  return result;
}

unint64_t sub_29E727A00()
{
  result = qword_2A185A740;
  if (!qword_2A185A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A740);
  }

  return result;
}

unint64_t sub_29E727A58()
{
  result = qword_2A1A7D308;
  if (!qword_2A1A7D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D308);
  }

  return result;
}

unint64_t sub_29E727AB0()
{
  result = qword_2A1A7D310;
  if (!qword_2A1A7D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D310);
  }

  return result;
}

unint64_t sub_29E727B24()
{
  result = qword_2A1A7D1A0;
  if (!qword_2A1A7D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D1A0);
  }

  return result;
}

unint64_t sub_29E727B7C()
{
  result = qword_2A1A7D1A8;
  if (!qword_2A1A7D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D1A8);
  }

  return result;
}

void sub_29E727BD0(uint64_t a1)
{
  if (!qword_2A185A750)
  {
    sub_29E725164(255, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
    sub_29E74ED28();
    sub_29E727CEC(255);
    sub_29E728034(&qword_2A185A770, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
    sub_29E7250A0(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A750);
    }
  }
}

void sub_29E727CEC(uint64_t a1)
{
  if (!qword_2A185A760)
  {
    sub_29E727DB4(255);
    sub_29E7524B8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A760);
    }
  }
}

void sub_29E727DB4(uint64_t a1)
{
  if (!qword_2A185A768)
  {
    sub_29E7524B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A768);
    }
  }
}

unint64_t sub_29E727E38()
{
  result = qword_2A185A778;
  if (!qword_2A185A778)
  {
    sub_29E727BD0(255);
    sub_29E727DB4(255);
    sub_29E7524B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A778);
  }

  return result;
}

void sub_29E727F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E6AD088(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29E727F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29E728034(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E725164(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E728098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6956726564616568 && a2 == 0xEF6C65646F4D7765;
  if (v4 || (sub_29E755028() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029E760C40 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000029E760C60 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6373654465746164 && a2 == 0xEF6E6F6974706972 || (sub_29E755028() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_29E755028() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756C61565978616DLL && a2 == 0xE900000000000065 || (sub_29E755028() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756C6156596E696DLL && a2 == 0xE900000000000065 || (sub_29E755028() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6F4E7961646F74 && a2 == 0xE90000000000006ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_29E755028();

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

unint64_t sub_29E72834C()
{
  result = qword_2A1A7BEB0;
  if (!qword_2A1A7BEB0)
  {
    sub_29E725A50(255, &qword_2A1A7BEA8, sub_29E728404, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E728660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BEB0);
  }

  return result;
}

void sub_29E728404(uint64_t a1)
{
  if (!qword_2A1A7BED8)
  {
    sub_29E72846C(255);
    sub_29E728550(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BED8);
    }
  }
}

void sub_29E72846C(uint64_t a1)
{
  if (!qword_2A1A7BE98)
  {
    sub_29E7284FC();
    v1 = sub_29E752C68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BE98);
    }
  }
}

unint64_t sub_29E7284FC()
{
  result = qword_2A1A7BE40;
  if (!qword_2A1A7BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE40);
  }

  return result;
}

void sub_29E728550(uint64_t a1)
{
  if (!qword_2A1A7BE88)
  {
    sub_29E7285E4(255);
    sub_29E7250A0(&qword_2A1A7BF10, sub_29E7285E4, MEMORY[0x29EDBC340]);
    v1 = sub_29E753108();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BE88);
    }
  }
}

void sub_29E7285E4(uint64_t a1)
{
  if (!qword_2A1A7BF08)
  {
    sub_29E7284FC();
    v1 = sub_29E752A18();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BF08);
    }
  }
}

unint64_t sub_29E728660()
{
  result = qword_2A1A7BEE0;
  if (!qword_2A1A7BEE0)
  {
    sub_29E728404(255);
    sub_29E7250A0(&qword_2A1A7BEA0, sub_29E72846C, MEMORY[0x29EDBC568]);
    sub_29E7250A0(&qword_2A1A7BE90, sub_29E728550, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BEE0);
  }

  return result;
}

uint64_t sub_29E7287C4(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x29EDCA190];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x29EDCA190];
  sub_29E6DBBFC(0, v4, 0);
  v5 = v16;
  v8 = *(sub_29E753EA8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_29E6DBBFC((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_29E728924(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  sub_29E6DD148(0);
  v20 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    v24 = MEMORY[0x29EDCA190];
    sub_29E6DBE74(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x29ED976A0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_29E6DBE74((v14 > 1), v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_29E72B028(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_29E728B48(void *a1)
{
  v3 = *v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A185A7A0) = 0;
  sub_29E602E20(a1, v1 + qword_2A185A798);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v16, "MutableArray<");
  HIWORD(v16[1]) = -4864;
  sub_29E74ED78();
  v8 = sub_29E74ED48();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x29ED96C20](v8, v10);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v11 = sub_29E750D08();
  sub_29E601938((v11 + qword_2A185A798), *(v11 + qword_2A185A798 + 24));

  v16[0] = sub_29E74F4E8();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  sub_29E60990C(0);
  sub_29E72A7B4(&qword_2A18569F0, sub_29E60990C, MEMORY[0x29EDB8A70]);
  v14 = sub_29E7529A8();

  sub_29E5FECBC(a1);

  *(v11 + qword_2A185A7A0) = v14;

  return v11;
}

uint64_t sub_29E728E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = sub_29E752098();
  v3 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E753D78();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v11 = Strong;
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v9 = sub_29E754908();
  (*(v7 + 104))(v9, *MEMORY[0x29EDCA278], v6);
  v12 = sub_29E753DA8();
  result = (*(v7 + 8))(v9, v6);
  if (v12)
  {
    sub_29E752048();
    v14 = sub_29E752088();
    v15 = sub_29E7546C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Responding to sleep schedule change", v16, 0xCu);
      sub_29E5FECBC(v17);
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v22);
    sub_29E729180(v11 + qword_2A185A798);
    sub_29E750D18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E729180(unint64_t a1)
{
  sub_29E6DD148(0);
  v35 = v2;
  v38 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E750CA8();
  v37 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E601938(a1, *(a1 + 24));
  v6 = sub_29E74F528();
  v7 = MEMORY[0x29EDCA190];
  if (v6)
  {
    v31 = v6;
    v8 = [v6 occurrences];
    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v9 = sub_29E7543F8();

    v39 = v7;
    if (v9 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E754C98())
    {
      v11 = MEMORY[0x29EDCA190];
      if (i)
      {
        *&v32 = a1;
        a1 = 0;
        v12 = v9 & 0xFFFFFFFFFFFFFF8;
        v33 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x29ED976A0](a1, v9);
          }

          else
          {
            if (a1 >= *(v12 + 16))
            {
              goto LABEL_27;
            }

            v13 = *(v9 + 8 * a1 + 32);
          }

          v14 = v13;
          v15 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          if ([v13 isRepeating])
          {
            sub_29E754DE8();
            sub_29E754E18();
            sub_29E754E28();
            sub_29E754DF8();
            v12 = v33;
          }

          else
          {
          }

          ++a1;
          if (v15 == i)
          {
            v16 = v39;
            a1 = v32;
            v11 = MEMORY[0x29EDCA190];
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
      }

      else
      {
        v16 = MEMORY[0x29EDCA190];
LABEL_17:

        v9 = &v30;
        MEMORY[0x2A1C7C4A8](v17);
        *(&v30 - 2) = a1;
        sub_29E728924(sub_29E72AEF0, (&v30 - 4), v16);
        v19 = v18;

        v20 = *(v19 + 16);
        if (!v20)
        {

          return MEMORY[0x29EDCA190];
        }

        v41 = v11;
        sub_29E6DBE24(0, v20, 0);
        v21 = 0;
        v33 = v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v7 = v41;
        v32 = xmmword_29E762F40;
        while (v21 < *(v19 + 16))
        {
          sub_29E72AF10(v33 + *(v38 + 72) * v21, v4, sub_29E6DD148);
          v22 = &v4[*(v35 + 48)];
          sub_29E693C6C(0, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
          v23 = swift_allocObject();
          *(v23 + 16) = v32;
          *(v23 + 56) = _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(0);
          *(v23 + 64) = sub_29E72A7B4(&qword_2A185A7C8, _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0, &unk_29E76D0BC);
          v24 = sub_29E5FEBF4((v23 + 32));
          sub_29E72AF10(v4, v24, _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0);
          *(v23 + 96) = &type metadata for EditScheduleOccurrenceItem;
          *(v23 + 104) = sub_29E72AF78();
          v25 = swift_allocObject();
          *(v23 + 72) = v25;
          sub_29E72AE60(v22, v25 + 16);
          v39 = 0;
          v40 = 0xE000000000000000;
          sub_29E754D78();

          v39 = 0xD000000000000015;
          v40 = 0x800000029E76CCA0;
          v26 = sub_29E754608();
          MEMORY[0x29ED96C20](v26);

          v27 = v36;
          sub_29E750C98();
          sub_29E72AFCC(v4);
          v41 = v7;
          a1 = *(v7 + 16);
          v28 = *(v7 + 24);
          v9 = a1 + 1;
          if (a1 >= v28 >> 1)
          {
            sub_29E6DBE24((v28 > 1), a1 + 1, 1);
            v27 = v36;
            v7 = v41;
          }

          ++v21;
          *(v7 + 16) = v9;
          (*(v37 + 32))(v7 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * a1, v27, v34);
          if (v20 == v21)
          {

            return v7;
          }
        }
      }

      __break(1u);
LABEL_29:
      ;
    }
  }

  return v7;
}

uint64_t sub_29E729768@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (sub_29E74EED8())
  {
    a1[3] = sub_29E750788();
    a1[4] = sub_29E72A7B4(&qword_2A1856D80, MEMORY[0x29EDC1EC0], MEMORY[0x29EDC1EB8]);
    sub_29E5FEBF4(a1);
    return sub_29E750778();
  }

  else
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    sub_29E7521F8();
    v4 = sub_29E750458();
    swift_allocObject();
    v5 = sub_29E750438();
    a1[3] = v4;
    result = sub_29E72A7B4(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
    a1[4] = result;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_29E729988()
{
  sub_29E5FECBC((v0 + qword_2A185A798));
}

uint64_t sub_29E7299C8()
{
  sub_29E750D58();
  v0 = qword_2A185A798;

  sub_29E5FECBC((v1 + v0));

  return swift_deallocClassInstance();
}

uint64_t sub_29E729A58(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E750E78();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29E750E38();
  }

  else
  {
    sub_29E750E28();
  }

  sub_29E750E58();
  v7 = sub_29E750E68();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_29E729BB4()
{
  type metadata accessor for LinkCollectionViewCell(0);
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E72A7B4(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7547D8();
}

uint64_t sub_29E729C3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_29E6DD148(0);
  v7 = *(v6 + 48);
  v8 = v5;
  sub_29E729CCC(v8, a3);
  sub_29E602E20(a2, v10);
  return sub_29E729ECC(v10, [v8 weekdays], (a3 + v7));
}

uint64_t sub_29E729CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F9B8();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = (a2 + *(_s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(0) + 20));
  v10 = a1;
  sub_29E74F978();
  sub_29E74F968();
  (*(v5 + 104))(v7, *MEMORY[0x29EDC6AC8], v4);
  sub_29E609D54(0, &qword_2A1A7BCF0, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E762F40;
  sub_29E74F9D8();
  *(v11 + 32) = sub_29E754608();
  *(v11 + 40) = v12;
  *(v11 + 48) = 0xD000000000000010;
  *(v11 + 56) = 0x800000029E7582F0;
  v13 = sub_29E754258();
  v15 = v14;

  result = (*(v5 + 8))(v7, v4);
  *v9 = v13;
  v9[1] = v15;
  return result;
}

uint64_t sub_29E729ECC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29E74F698();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1856240 != -1)
  {
    swift_once();
  }

  v10 = unk_2A185A790;
  a3[8] = qword_2A185A788;
  a3[9] = v10;
  sub_29E602E20(a1, a3);
  a3[5] = a2;
  (*(v7 + 104))(v9, *MEMORY[0x29EDC6AC8], v6);
  sub_29E609D54(0, &qword_2A1A7BCF0, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E762F40;

  *(v11 + 32) = sub_29E754608();
  *(v11 + 40) = v12;
  *(v11 + 48) = 0xD000000000000010;
  *(v11 + 56) = 0x800000029E760D80;
  v13 = sub_29E754258();
  v15 = v14;

  sub_29E5FECBC(a1);
  result = (*(v7 + 8))(v9, v6);
  a3[6] = v13;
  a3[7] = v15;
  return result;
}

uint64_t sub_29E72A0B0()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E72A7B4(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7506A8();
}

uint64_t sub_29E72A118(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  if (*(v1 + *(a1 + 20) + 8))
  {
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

uint64_t sub_29E72A1EC(uint64_t a1, uint64_t a2)
{
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  if (!*(v2 + *(a2 + 20) + 8))
  {
    return sub_29E7550E8();
  }

  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E72A2C0(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

void sub_29E72A390()
{
  sub_29E72B1F8();
  sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A1856A58, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B80]);
  v0 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v0);
}

uint64_t sub_29E72A454(uint64_t a1)
{
  v2 = sub_29E72A7B4(&qword_2A185A7F0, _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0, &unk_29E76D05C);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E72A4D0()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_29E72A500()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_29E72A530(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void sub_29E72A588()
{
  sub_29E72B294();
  sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v0 = sub_29E754608();
  MEMORY[0x29ED96C20](v0);
}

uint64_t sub_29E72A5FC(uint64_t a1)
{
  v2 = sub_29E72B240();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E72A648()
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](*(v0 + 40));
  return sub_29E755108();
}

uint64_t sub_29E72A6B8(uint64_t a1)
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](*(v1 + 40));
  return sub_29E755108();
}

unint64_t sub_29E72A718()
{
  result = qword_2A185A7B8;
  if (!qword_2A185A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A7B8);
  }

  return result;
}

uint64_t sub_29E72A7B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E72A7FC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A185A788 = result;
  unk_2A185A790 = v1;
  return result;
}

uint64_t sub_29E72A894(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = (&v48 - v10);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v48 - v12;
  sub_29E752048();
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();
  v16 = os_log_type_enabled(v14, v15);
  v49 = v11;
  if (v16)
  {
    v17 = v4;
    v18 = v5;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v50[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_29E6B9C90(0xD000000000000041, 0x800000029E760CC0, v50);
    _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Edit current schedule tapped", v19, 0xCu);
    sub_29E5FECBC(v20);
    MEMORY[0x29ED98410](v20, -1, -1);
    v21 = v19;
    v5 = v18;
    v4 = v17;
    MEMORY[0x29ED98410](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v13, v4);
  v52 = a1;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  sub_29E609CF8(0, &qword_2A18569E0, MEMORY[0x29EDC6B58]);
  v23 = a1;
  if (swift_dynamicCast())
  {
    sub_29E60A040(v50, v53);
    sub_29E601938(v2, v2[3]);
    v24 = sub_29E74F558();
    if (v24)
    {
      v25 = v24;
      sub_29E601938(v53, v53[3]);
      sub_29E74F8D8();
    }

    else
    {
      v39 = v49;
      sub_29E752048();
      sub_29E72AE60(v2, v50);
      v40 = sub_29E752088();
      v41 = sub_29E7546A8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v52 = v43;
        *v42 = 136446466;
        *(v42 + 4) = sub_29E6B9C90(0xD000000000000041, 0x800000029E760CC0, &v52);
        *(v42 + 12) = 2082;
        v44 = sub_29E7545F8();
        v46 = v45;
        sub_29E72AE98(v50);
        v47 = sub_29E6B9C90(v44, v46, &v52);

        *(v42 + 14) = v47;
        _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s] Unable to edit occurrence for identifier: %{public}s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v43, -1, -1);
        MEMORY[0x29ED98410](v42, -1, -1);
      }

      else
      {

        sub_29E72AE98(v50);
      }

      v22(v39, v4);
    }

    return sub_29E5FECBC(v53);
  }

  else
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_29E6093D0(v50);
    sub_29E752048();
    v26 = v23;
    v27 = sub_29E752088();
    v28 = sub_29E7546A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v49 = v22;
      v30 = v29;
      v31 = swift_slowAlloc();
      *&v50[0] = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_29E6B9C90(0xD000000000000041, 0x800000029E760CC0, v50);
      *(v30 + 12) = 2082;
      v32 = v26;
      v33 = [v32 description];
      v34 = sub_29E7541D8();
      v48 = v5;
      v36 = v35;

      v37 = sub_29E6B9C90(v34, v36, v50);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v31, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);

      return (v49)(v8, v4);
    }

    else
    {

      return (v22)(v8, v4);
    }
  }
}

uint64_t sub_29E72AF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E72AF78()
{
  result = qword_2A185A7D0;
  if (!qword_2A185A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A7D0);
  }

  return result;
}

uint64_t sub_29E72AFCC(uint64_t a1)
{
  sub_29E6DD148(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E72B028(uint64_t a1, uint64_t a2)
{
  sub_29E6DD148(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E72B0B4(uint64_t a1)
{
  sub_29E74F9E8();
  if (v1 <= 0x3F)
  {
    sub_29E609D54(319, &qword_2A1A7D0C8, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E72B1F8()
{
  result = qword_2A185A7F8;
  if (!qword_2A185A7F8)
  {
    _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A185A7F8);
  }

  return result;
}

unint64_t sub_29E72B240()
{
  result = qword_2A185A800;
  if (!qword_2A185A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A800);
  }

  return result;
}

unint64_t sub_29E72B294()
{
  result = qword_2A185A808;
  if (!qword_2A185A808)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A185A808);
  }

  return result;
}

uint64_t sub_29E72B2DC()
{
  sub_29E72E0C4(0);
  v26 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72E178(0);
  v22 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E72E258(0);
  v23 = v4;
  v25 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72E340(0);
  v24 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v20 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E601938((v0 + 24), *(v0 + 48));
  v28 = sub_29E751DC8();
  sub_29E64C52C(0);
  v9 = MEMORY[0x29EDB8A00];
  sub_29E72E45C(&qword_2A1A7BFA0, sub_29E64C52C, MEMORY[0x29EDB8A00]);
  v10 = sub_29E7528E8();
  v19 = v10;

  v11 = sub_29E72C754();
  v28 = v10;
  sub_29E72E100(0);
  sub_29E752928();
  v28 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_29E72E3E0;
  *(v12 + 24) = 0;
  sub_29E649310();
  sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310, v9);
  sub_29E752928();

  v13 = MEMORY[0x29EDB8908];
  sub_29E72E45C(&qword_2A1A7C058, sub_29E72E178, MEMORY[0x29EDB8908]);
  sub_29E72E45C(&qword_2A1A7C028, sub_29E72E0C4, v13);
  sub_29E752678();
  sub_29E72E45C(&qword_2A1A7BFD0, sub_29E72E258, MEMORY[0x29EDB8948]);

  v14 = v20;
  v15 = v23;
  sub_29E752928();

  (*(v25 + 8))(v6, v15);
  sub_29E72E45C(&qword_2A1A7BFF0, sub_29E72E340, v13);
  v16 = v24;
  v17 = sub_29E7528E8();

  (*(v27 + 8))(v14, v16);
  return v17;
}

uint64_t sub_29E72B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E751D98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_29E72E100(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E72B838@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_29E72E100(0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72E4A4(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
  }

  else
  {
    sub_29E72C2D0();
    sub_29E72E508(v6);
    v7 = 0;
  }

  result = sub_29E72B908();
  *a2 = (result | v7) & 1;
  return result;
}

uint64_t sub_29E72B908()
{
  v66 = *v0;
  v1 = sub_29E752098();
  v67 = *(v1 - 8);
  v68 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v65 = &v57 - v5;
  v64 = sub_29E751D68();
  v62 = *(v64 - 8);
  MEMORY[0x2A1C7C4A8](v64);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E751D38();
  v61 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC2D78];
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v57 - v10;
  v12 = sub_29E751D98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v57 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v59 = &v57 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v57 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v57 - v21;
  v23 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
  swift_beginAccess();
  sub_29E72DF58(v0 + v23, v11, &qword_2A1A7CEF8, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29E72DEFC(v11, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
    sub_29E752068();
    v24 = sub_29E752088();
    v25 = sub_29E7546A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v69 = v27;
      *v26 = 136446210;
      v28 = sub_29E755178();
      v30 = sub_29E6B9C90(v28, v29, &v69);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s]: Feature status is nil. Will assume onboarding is unavailable.", v26, 0xCu);
      sub_29E5FECBC(v27);
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v26, -1, -1);
    }

    (*(v67 + 8))(v4, v68);
  }

  else
  {
    (*(v13 + 32))(v22, v11, v12);
    v31 = *(v13 + 16);
    v31(v20, v22, v12);
    v32 = (*(v13 + 88))(v20, v12);
    if (v32 == *MEMORY[0x29EDC2D70])
    {
      v33 = *(v13 + 8);
      v33(v22, v12);
      v33(v20, v12);
    }

    else
    {
      if (v32 == *MEMORY[0x29EDC2D68])
      {
        (*(v13 + 96))(v20, v12);
        v34 = v61;
        v35 = v58;
        v36 = v63;
        (*(v61 + 32))(v58, v20, v63);
        v37 = v60;
        sub_29E751D28();
        v38 = sub_29E751D78();
        (*(v62 + 8))(v37, v64);
        LODWORD(v37) = [v38 areAllRequirementsSatisfied];

        (*(v34 + 8))(v35, v36);
        (*(v13 + 8))(v22, v12);
        return v37 ^ 1;
      }

      v40 = v65;
      sub_29E752068();
      v41 = v59;
      v31(v59, v22, v12);
      v42 = sub_29E752088();
      v43 = sub_29E7546A8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        LODWORD(v63) = v43;
        v45 = v44;
        v64 = swift_slowAlloc();
        v69 = v64;
        *v45 = 136446466;
        v46 = sub_29E755178();
        v48 = sub_29E6B9C90(v46, v47, &v69);
        v66 = v22;
        v49 = v48;

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v31(v57, v41, v12);
        v50 = sub_29E7541F8();
        v52 = v51;
        v53 = *(v13 + 8);
        v53(v41, v12);
        v54 = sub_29E6B9C90(v50, v52, &v69);

        *(v45 + 14) = v54;
        _os_log_impl(&dword_29E5ED000, v42, v63, "[%{public}s] Got unknown feature status: %s\nWill assume onboarding is unavailable.", v45, 0x16u);
        v55 = v64;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v55, -1, -1);
        MEMORY[0x29ED98410](v45, -1, -1);

        (*(v67 + 8))(v65, v68);
        v56 = v66;
      }

      else
      {

        v53 = *(v13 + 8);
        v53(v41, v12);
        (*(v67 + 8))(v40, v68);
        v56 = v22;
      }

      v53(v56, v12);
      v53(v20, v12);
    }
  }

  return 1;
}

uint64_t sub_29E72C150(uint64_t a1, uint64_t a2)
{
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_29E751D98();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
    swift_beginAccess();
    sub_29E689300(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_29E72C2D0()
{
  v1 = v0;
  v2 = sub_29E752098();
  v12[3] = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v12 - v7;
  sub_29E601938((v0 + 24), *(v0 + 48));
  sub_29E751DB8();
  v9 = sub_29E751D98();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_29E72E044(v6, v8);
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
  swift_beginAccess();
  sub_29E72DFC4(v8, v1 + v10);
  swift_endAccess();
  return sub_29E72DEFC(v8, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
}

uint64_t sub_29E72C754()
{
  sub_29E72D9A8(0);
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v34 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E754998();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DA94(0);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DB80(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DC9C(0);
  v27 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E74FFC8();
  sub_29E72DBBC(0);
  sub_29E72E45C(&qword_2A1A7BF30, sub_29E72DBBC, MEMORY[0x29EDB8AD8]);

  sub_29E752928();

  LOBYTE(v37) = 1;
  sub_29E72E45C(&qword_2A1A7C018, sub_29E72DB80, MEMORY[0x29EDB8908]);
  sub_29E752908();
  (*(v8 + 8))(v10, v7);
  sub_29E72E45C(&qword_2A1A7C078, sub_29E72DC9C, MEMORY[0x29EDB88C8]);
  v15 = v27;
  v16 = sub_29E7528E8();
  (*(v12 + 8))(v14, v15);
  v17 = [objc_opt_self() defaultCenter];
  if (qword_2A1A7BD90 != -1)
  {
    swift_once();
  }

  v18 = v28;
  sub_29E7549A8();

  sub_29E7526E8();
  sub_29E649310();
  sub_29E72E45C(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310, MEMORY[0x29EDB8A00]);
  v19 = v30;
  v20 = v31;
  sub_29E7529B8();

  (*(v29 + 8))(v18, v19);
  v37 = v16;
  sub_29E72E45C(&qword_2A1A7BFC0, sub_29E72DA94, MEMORY[0x29EDB89A8]);
  v22 = v33;
  v21 = v34;
  sub_29E752948();
  sub_29E72E45C(&qword_2A1A7BFE0, sub_29E72D9A8, MEMORY[0x29EDB8948]);
  v23 = v36;
  v24 = sub_29E7528E8();

  (*(v35 + 8))(v21, v23);
  (*(v32 + 8))(v20, v22);
  return v24;
}

uint64_t sub_29E72CDC4@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v44 = a1;
  v43 = sub_29E74EE68();
  v40 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74EE78();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDB9BC8];
  sub_29E72DC48(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v45 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v34 - v13;
  v15 = sub_29E74ED28();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v39 = &v34 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v34 - v22;
  sub_29E72DF58(v44, v14, &qword_2A1A7CFC0, v9);
  v44 = v16[6];
  if (v44(v14, 1, v15) == 1)
  {
    result = sub_29E72DEFC(v14, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v25 = 0;
  }

  else
  {
    v37 = v23;
    v38 = a2;
    v35 = v16[4];
    v35(v23, v14, v15);
    sub_29E74EE58();
    v26 = v40;
    v27 = v43;
    (*(v40 + 104))(v4, *MEMORY[0x29EDB9CB8], v43);
    sub_29E74ED18();
    v28 = v8;
    v29 = v45;
    sub_29E74EE48();
    v36 = v16[1];
    v36(v19, v15);
    (*(v26 + 8))(v4, v27);
    (*(v42 + 8))(v28, v41);
    if (v44(v29, 1, v15) == 1)
    {
      v36(v37, v15);
      result = sub_29E72DEFC(v45, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
      v25 = 0;
    }

    else
    {
      v30 = v39;
      v35(v39, v45, v15);
      v31 = v37;
      v25 = sub_29E74ECA8();
      v32 = v30;
      v33 = v36;
      v36(v32, v15);
      result = v33(v31, v15);
    }

    a2 = v38;
  }

  *a2 = v25 & 1;
  return result;
}

uint64_t sub_29E72D258@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = MEMORY[0x29EDB9BC8];
  sub_29E72DC48(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v19 - v3;
  sub_29E72DCE8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DE2C(0);
  v19 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74ED18();
  v14 = sub_29E74ED28();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  v15 = sub_29E74FFD8();
  sub_29E72DEFC(v4, &qword_2A1A7CFC0, v1);
  v22 = v15;
  sub_29E72DDC0(0);
  sub_29E72E45C(&qword_2A185A820, sub_29E72DDC0, MEMORY[0x29EDB8AD8]);
  sub_29E752928();

  v21 = 1;
  sub_29E72E45C(&qword_2A185A830, sub_29E72DCE8, MEMORY[0x29EDB8908]);
  sub_29E752908();
  (*(v7 + 8))(v9, v6);
  sub_29E72E45C(&qword_2A185A838, sub_29E72DE2C, MEMORY[0x29EDB88C8]);
  v16 = v19;
  v17 = sub_29E7528E8();
  result = (*(v11 + 8))(v13, v16);
  *v20 = v17;
  return result;
}

uint64_t sub_29E72D5D0()
{

  sub_29E5FECBC((v0 + 24));

  sub_29E72DEFC(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepApneaNotificationTipDismissalStateManager(uint64_t a1)
{
  result = qword_2A1A7C9A0;
  if (!qword_2A1A7C9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E72D6BC(uint64_t a1)
{
  sub_29E72DC48(319, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_29E72D790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E72DC48(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:a1 healthDataSource:a2];
  result = [v9 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v11 = result;
    sub_29E72DF58(a3, v8, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v12 = sub_29E74FFA8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_29E72DEFC(v8, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
      v14 = 0;
    }

    else
    {
      sub_29E74FF78();
      (*(v13 + 8))(v8, v12);
      v14 = sub_29E754198();
    }

    v15 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v11 healthDataSource:v9 currentCountryCode:v14];
    sub_29E751758();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E72D9A8(uint64_t a1)
{
  if (!qword_2A1A7BFD8)
  {
    sub_29E649310();
    sub_29E72DA94(255);
    sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310, MEMORY[0x29EDB8A00]);
    sub_29E72E45C(&qword_2A1A7BFC0, sub_29E72DA94, MEMORY[0x29EDB89A8]);
    v1 = sub_29E752668();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BFD8);
    }
  }
}

void sub_29E72DA94(uint64_t a1)
{
  if (!qword_2A1A7BFB8)
  {
    sub_29E649310();
    sub_29E754998();
    sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310, MEMORY[0x29EDB8A00]);
    sub_29E72E45C(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    v1 = sub_29E7526A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BFB8);
    }
  }
}

void sub_29E72DBBC(uint64_t a1)
{
  if (!qword_2A1A7BF28)
  {
    sub_29E72DC48(255, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A61C();
    v1 = sub_29E752838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BF28);
    }
  }
}

void sub_29E72DC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E72DD24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E72E45C(a4, a5, MEMORY[0x29EDB8AD8]);
    v8 = sub_29E752638();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E72DDC0(uint64_t a1)
{
  if (!qword_2A185A818)
  {
    sub_29E66A61C();
    v1 = sub_29E752838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A818);
    }
  }
}

void sub_29E72DE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E72E45C(a4, a5, MEMORY[0x29EDB8908]);
    v8 = sub_29E752618();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E72DEFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E72DC48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E72DF58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E72DC48(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E72DFC4(uint64_t a1, uint64_t a2)
{
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E72E044(uint64_t a1, uint64_t a2)
{
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E72E100(uint64_t a1)
{
  if (!qword_2A1A7C140[0])
  {
    v2 = sub_29E751D98();
    v4 = type metadata accessor for Either(a1, v2, MEMORY[0x29EDC9A98], v3);
    if (!v5)
    {
      atomic_store(v4, qword_2A1A7C140);
    }
  }
}

void sub_29E72E1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E72E100(255);
    sub_29E72E45C(a4, a5, MEMORY[0x29EDB8A00]);
    v8 = sub_29E752638();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E72E258(uint64_t a1)
{
  if (!qword_2A1A7BFC8)
  {
    sub_29E72E178(255);
    sub_29E72E0C4(255);
    v1 = MEMORY[0x29EDB8908];
    sub_29E72E45C(&qword_2A1A7C058, sub_29E72E178, MEMORY[0x29EDB8908]);
    sub_29E72E45C(&qword_2A1A7C028, sub_29E72E0C4, v1);
    v2 = sub_29E752668();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A7BFC8);
    }
  }
}

void sub_29E72E340(uint64_t a1)
{
  if (!qword_2A1A7BFE8)
  {
    sub_29E72E258(255);
    sub_29E72E45C(&qword_2A1A7BFD0, sub_29E72E258, MEMORY[0x29EDB8948]);
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BFE8);
    }
  }
}

uint64_t sub_29E72E3E0@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  sub_29E72E100(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E72E45C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E72E4A4(uint64_t a1, uint64_t a2)
{
  sub_29E72E100(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E72E508(uint64_t a1)
{
  sub_29E72E100(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E72E564(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E72E5E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_29E72E708(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_29E72E8D0(void *a1)
{
  v20 = a1;
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v5 = *(v2 + 8);
  v5(v4, v1);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v5(v4, v1);
  v6 = sub_29E754198();

  v7 = sub_29E754198();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v5(v4, v1);
  v9 = sub_29E754198();

  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v9 style:1 handler:0];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v5(v4, v1);
  sub_29E72F480(v19, v22);
  v12 = swift_allocObject();
  v13 = v22[1];
  *(v12 + 16) = v22[0];
  *(v12 + 32) = v13;
  *(v12 + 48) = v22[2];
  v14 = v20;
  *(v12 + 64) = v20;
  v15 = v14;
  v16 = sub_29E754198();

  aBlock[4] = sub_29E72F4B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E62452C;
  aBlock[3] = &unk_2A25033E0;
  v17 = _Block_copy(aBlock);

  v18 = [v10 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v8 addAction_];
  [v8 addAction_];
  [v15 presentViewController:v8 animated:1 completion:0];
}

uint64_t sub_29E72ED44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v50 = sub_29E74F6D8();
  MEMORY[0x2A1C7C4A8](v50);
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750698();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29E74F4A8();
  v51 = *(v56 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v56);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v49 = &v40 - v10;
  v55 = sub_29E74F488();
  v48 = *(v55 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v55);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v54 = &v40 - v13;
  v14 = sub_29E752098();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v58[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_29E6B9C90(0xD000000000000018, 0x800000029E76D150, v58);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_29E6B9C90(0xD00000000000001DLL, 0x800000029E760F00, v58);
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s.%{public}s]: Attempting to present sleep tracking onboarding...", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v22 = sub_29E74F4C8();
  v23 = *a2;
  sub_29E601938((a2 + 8), *(a2 + 32));
  v24 = v23;
  sub_29E751528();
  v25 = v24;
  v41 = sub_29E74F4B8();
  v42 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v26 = *MEMORY[0x29EDBA750];
  v27 = objc_allocWithZone(MEMORY[0x29EDC6890]);
  v28 = v26;
  v43 = [v27 initWithFeatureIdentifier:v28 sleepStore:v25];

  sub_29E72F4DC();
  v29 = sub_29E754A78();
  v30 = v48;
  v31 = MEMORY[0x29EDC6A68];
  if ((v29 & 1) == 0)
  {
    v31 = MEMORY[0x29EDC6A60];
  }

  v32 = v54;
  v33 = v55;
  (*(v48 + 104))(v54, *v31, v55);
  v34 = *MEMORY[0x29EDC67D8];
  sub_29E601938((a2 + 8), *(a2 + 32));
  sub_29E751538();
  v35 = sub_29E71237C();
  (*(v45 + 8))(v7, v46);
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v34 presentation:v35];

  (*(v30 + 16))(v44, v32, v33);
  v36 = v49;
  sub_29E74F498();
  v58[3] = v22;
  v58[4] = MEMORY[0x29EDC6A70];
  v58[0] = v41;
  v37 = v51;
  (*(v51 + 16))(v47, v36, v56);
  v57 = MEMORY[0x29EDCA190];
  sub_29E72F580(&qword_2A1859E38, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC6AE0]);
  sub_29E72F528(0);
  sub_29E72F580(&qword_2A1859E48, sub_29E72F528, MEMORY[0x29EDC9A70]);

  v38 = v42;
  sub_29E754C58();
  sub_29E74F6E8();
  swift_allocObject();
  sub_29E74F6B8();
  sub_29E74F6A8();

  (*(v37 + 8))(v36, v56);
  return (*(v30 + 8))(v54, v55);
}

uint64_t sub_29E72F4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E72F4DC()
{
  result = qword_2A1857168;
  if (!qword_2A1857168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1857168);
  }

  return result;
}

void sub_29E72F528(uint64_t a1)
{
  if (!qword_2A1859E40)
  {
    sub_29E74F6D8();
    v1 = sub_29E754448();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859E40);
    }
  }
}

uint64_t sub_29E72F580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E72F638(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 1701736302;
    if (a1 == 8)
    {
      v4 = 0xD00000000000001ALL;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000016;
    }

    v5 = 0xD000000000000022;
    if (a1 != 5)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000023;
    if (a1 != 3)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001CLL;
    }

    v2 = 0xD00000000000001ELL;
    if (a1)
    {
      v2 = 0xD00000000000001FLL;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29E72F784(void *a1, int a2)
{
  v74 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29E735DA0(0, &qword_2A185A960, sub_29E735948, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.NoneCodingKeys, MEMORY[0x29EDC9E88]);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v71 = &v46 - v5;
  sub_29E735DA0(0, &qword_2A185A968, sub_29E73599C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v3);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v68 = &v46 - v7;
  sub_29E735DA0(0, &qword_2A185A970, sub_29E7359F0, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v3);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v65 = &v46 - v9;
  sub_29E735DA0(0, &qword_2A185A978, sub_29E735A44, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v3);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v62 = &v46 - v11;
  sub_29E735DA0(0, &qword_2A185A980, sub_29E735A98, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSleepApneaKnowledgeBaseArticleCodingKeys, v3);
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v59 = &v46 - v13;
  sub_29E735DA0(0, &qword_2A185A988, sub_29E735AEC, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSeedExpiryKnowledgeBaseArticleCodingKeys, v3);
  v58 = v14;
  v57 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v56 = &v46 - v15;
  sub_29E735DA0(0, &qword_2A185A990, sub_29E735B40, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenRegionGatedKnowledgeBaseArticleCodingKeys, v3);
  v55 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v53 = &v46 - v17;
  sub_29E735DA0(0, &qword_2A185A998, sub_29E735B94, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchSleepSettingsCodingKeys, v3);
  v52 = v18;
  v51 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v50 = &v46 - v19;
  sub_29E735DA0(0, &qword_2A185A9A0, sub_29E735BE8, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v3);
  v49 = v20;
  v48 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v46 - v21;
  sub_29E735DA0(0, &qword_2A185A9A8, sub_29E735C3C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v3);
  v24 = v23;
  v47 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v46 - v25;
  sub_29E735DA0(0, &qword_2A185A9B0, sub_29E735C90, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.CodingKeys, v3);
  v76 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v46 - v29;
  sub_29E601938(a1, a1[3]);
  sub_29E735C90();
  v75 = v30;
  sub_29E755138();
  v31 = (v28 + 8);
  if (v74 > 4u)
  {
    if (v74 <= 6u)
    {
      if (v74 == 5)
      {
        v79[3] = 5;
        sub_29E735A98();
        v35 = v59;
        v33 = v75;
        v34 = v76;
        sub_29E754F78();
        v37 = v60;
        v36 = v61;
      }

      else
      {
        v79[4] = 6;
        sub_29E735A44();
        v35 = v62;
        v33 = v75;
        v34 = v76;
        sub_29E754F78();
        v37 = v63;
        v36 = v64;
      }
    }

    else if (v74 == 7)
    {
      v79[5] = 7;
      sub_29E7359F0();
      v35 = v65;
      v33 = v75;
      v34 = v76;
      sub_29E754F78();
      v37 = v66;
      v36 = v67;
    }

    else if (v74 == 8)
    {
      v79[6] = 8;
      sub_29E73599C();
      v35 = v68;
      v33 = v75;
      v34 = v76;
      sub_29E754F78();
      v37 = v69;
      v36 = v70;
    }

    else
    {
      v79[7] = 9;
      sub_29E735948();
      v35 = v71;
      v33 = v75;
      v34 = v76;
      sub_29E754F78();
      v37 = v72;
      v36 = v73;
    }

    (*(v37 + 8))(v35, v36);
    return (*v31)(v33, v34);
  }

  if (v74 <= 1u)
  {
    if (!v74)
    {
      v77 = 0;
      sub_29E735C3C();
      v38 = v75;
      v39 = v76;
      sub_29E754F78();
      (*(v47 + 8))(v26, v24);
      return (*v31)(v38, v39);
    }

    v78 = 1;
    sub_29E735BE8();
    v38 = v75;
    v39 = v76;
    sub_29E754F78();
    v41 = *(v48 + 8);
    v42 = v22;
    v43 = v79;
LABEL_19:
    v41(v42, *(v43 - 32));
    return (*v31)(v38, v39);
  }

  if (v74 == 2)
  {
    v79[0] = 2;
    sub_29E735B94();
    v40 = v50;
    v38 = v75;
    v39 = v76;
    sub_29E754F78();
    v41 = *(v51 + 8);
    v42 = v40;
    v43 = &v80;
    goto LABEL_19;
  }

  if (v74 == 3)
  {
    v79[1] = 3;
    sub_29E735B40();
    v32 = v53;
    v33 = v75;
    v34 = v76;
    sub_29E754F78();
    (*(v54 + 8))(v32, v55);
  }

  else
  {
    v79[2] = 4;
    sub_29E735AEC();
    v44 = v56;
    v33 = v75;
    v34 = v76;
    sub_29E754F78();
    (*(v57 + 8))(v44, v58);
  }

  return (*v31)(v33, v34);
}

uint64_t sub_29E730264@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E734894(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E730298(uint64_t a1)
{
  v2 = sub_29E735C90();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7302D4(uint64_t a1)
{
  v2 = sub_29E735C90();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E73031C(uint64_t a1)
{
  v2 = sub_29E735BE8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730358(uint64_t a1)
{
  v2 = sub_29E735BE8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730394(uint64_t a1)
{
  v2 = sub_29E735C3C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7303D0(uint64_t a1)
{
  v2 = sub_29E735C3C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E73040C(uint64_t a1)
{
  v2 = sub_29E735B94();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730448(uint64_t a1)
{
  v2 = sub_29E735B94();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730484(uint64_t a1)
{
  v2 = sub_29E735948();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7304C0(uint64_t a1)
{
  v2 = sub_29E735948();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7304FC(uint64_t a1)
{
  v2 = sub_29E735B40();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730538(uint64_t a1)
{
  v2 = sub_29E735B40();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730574(uint64_t a1)
{
  v2 = sub_29E735AEC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7305B0(uint64_t a1)
{
  v2 = sub_29E735AEC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7305EC(uint64_t a1)
{
  v2 = sub_29E735A98();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730628(uint64_t a1)
{
  v2 = sub_29E735A98();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730664(uint64_t a1)
{
  v2 = sub_29E7359F0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7306A0(uint64_t a1)
{
  v2 = sub_29E7359F0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7306DC(uint64_t a1)
{
  v2 = sub_29E735A44();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730718(uint64_t a1)
{
  v2 = sub_29E735A44();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730754(uint64_t a1)
{
  v2 = sub_29E73599C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730790(uint64_t a1)
{
  v2 = sub_29E73599C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7307CC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29E734BB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29E730814(void *a1)
{
  v3 = v1;
  sub_29E735DA0(0, &qword_2A185A890, sub_29E734798, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11 - v8;
  sub_29E601938(a1, a1[3]);
  sub_29E734798();
  sub_29E755138();
  v14 = *v3;
  v13 = 0;
  sub_29E734840();
  sub_29E754FB8();
  if (!v2)
  {
    type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
    v12 = 1;
    sub_29E74FFA8();
    sub_29E7343DC(&qword_2A1857B68, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A60]);
    sub_29E754F88();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29E730A14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v21 = &v18 - v4;
  sub_29E735DA0(0, &qword_2A185A878, sub_29E734798, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v22 = v5;
  v20 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 28);
  v13 = sub_29E74FFA8();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  sub_29E601938(a1, a1[3]);
  sub_29E734798();
  v14 = v23;
  sub_29E755128();
  if (v14)
  {
    sub_29E5FECBC(a1);
    return sub_29E7344F0(&v11[v12], &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  }

  else
  {
    v23 = v12;
    v15 = v20;
    v16 = v21;
    v25 = 0;
    sub_29E7347EC();
    sub_29E754F58();
    *v11 = v26;
    v24 = 1;
    sub_29E7343DC(&qword_2A1857B18, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A68]);
    sub_29E754F28();
    (*(v15 + 8))(v7, v22);
    sub_29E643D74(v16, &v11[v23]);
    sub_29E7345B0(v11, v19);
    sub_29E5FECBC(a1);
    return sub_29E734614(v11);
  }
}

uint64_t sub_29E730D84()
{
  if (*v0)
  {
    return 0x527972746E756F63;
  }

  else
  {
    return 0x6F69746341706174;
  }
}

uint64_t sub_29E730DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_29E755028() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E755028();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29E730EBC(uint64_t a1)
{
  v2 = sub_29E734798();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730EF8(uint64_t a1)
{
  v2 = sub_29E734798();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730F64()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E7501C8();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E752098();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v56 = &v49 - v6;
  v7 = sub_29E7515A8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, &qword_2A185A860, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v49 - v12;
  v14 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v49 - v19;
  v53 = v0;
  sub_29E7518B8();
  sub_29E7343DC(&qword_2A185A868, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData, &unk_29E76D3A0);
  sub_29E7343DC(&qword_2A18584E0, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData, &unk_29E76D378);
  sub_29E751598();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_29E73454C(v13, v20);
    v30 = v56;
    sub_29E752048();
    sub_29E7345B0(v20, v18);
    v31 = sub_29E752088();
    v32 = sub_29E7546C8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60 = v34;
      *v33 = 136315650;
      v35 = sub_29E755178();
      v37 = sub_29E6B9C90(v35, v36, &v60);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29E6B9C90(0x63656C6553646964, 0xEB00000000292874, &v60);
      *(v33 + 22) = 2080;
      v59 = *v18;
      v38 = sub_29E7541F8();
      v40 = v39;
      sub_29E734614(v18);
      v41 = sub_29E6B9C90(v38, v40, &v60);

      *(v33 + 24) = v41;
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%s.%{public}s] Did select cell with tap action %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v34, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);
    }

    else
    {

      sub_29E734614(v18);
    }

    (*(v57 + 8))(v30, v58);
    v42 = *v20;
    if (v42 <= 4)
    {
      if (*v20 <= 1u)
      {
        if (*v20)
        {
          v45 = MEMORY[0x29EDC1728];
        }

        else
        {
          v45 = MEMORY[0x29EDC1720];
        }

        v46 = v50;
        v47 = v51;
        v48 = v52;
        (*(v51 + 104))(v50, *v45, v52);
        sub_29E7501B8();
        (*(v47 + 8))(v46, v48);
      }

      else if (v42 == 2)
      {
        sub_29E7326E4();
      }

      else if (v42 == 3)
      {
        sub_29E73170C();
      }

      else
      {
        sub_29E731C54();
      }

      return sub_29E734614(v20);
    }

    if (*v20 <= 6u)
    {
      if (v42 == 5)
      {
        sub_29E73219C();
      }

      else
      {
        sub_29E732A30(&v20[*(v14 + 20)]);
      }

      return sub_29E734614(v20);
    }

    if (v42 == 7)
    {
      v43 = &v20[*(v14 + 20)];
      v44 = 0;
    }

    else
    {
      if (v42 != 8)
      {
        return sub_29E734614(v20);
      }

      v43 = &v20[*(v14 + 20)];
      v44 = 1;
    }

    sub_29E7333C4(v44, v43);
    return sub_29E734614(v20);
  }

  sub_29E7344F0(v13, &qword_2A185A860, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  v21 = v54;
  sub_29E752048();
  v22 = sub_29E752088();
  v23 = sub_29E7546B8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = v25;
    *v24 = 136446466;
    v26 = sub_29E755178();
    v28 = sub_29E6B9C90(v26, v27, &v60);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_29E6B9C90(0x63656C6553646964, 0xEB00000000292874, &v60);
    _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s.%{public}s] Could not access action handler user data", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v25, -1, -1);
    MEMORY[0x29ED98410](v24, -1, -1);
  }

  return (*(v57 + 8))(v21, v58);
}

uint64_t sub_29E73170C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_29E752098();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v6, v3);
  sub_29E74EAE8();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E7344F0(v9, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    sub_29E752048();
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446466;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_29E6B9C90(0xD00000000000001ALL, 0x800000029E761100, &v29);
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s.%{public}s] Unable to create region gated learn more url", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    return (*(v27 + 8))(v2, v28);
  }

  else
  {
    v22 = v13;
    (*(v11 + 32))(v13, v9, v10);
    v23 = [objc_opt_self() sharedApplication];
    v24 = sub_29E74EAC8();
    sub_29E68B6DC(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E7343DC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey, &unk_29E762E58);
    v25 = sub_29E754068();

    [v23 openURL:v24 options:v25 completionHandler:0];

    return (*(v11 + 8))(v22, v10);
  }
}

uint64_t sub_29E731C54()
{
  ObjectType = swift_getObjectType();
  v0 = sub_29E752098();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v6, v3);
  sub_29E74EAE8();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E7344F0(v9, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    sub_29E752048();
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446466;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_29E6B9C90(0xD000000000000019, 0x800000029E7610B0, &v29);
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s.%{public}s] Unable to create rescinded learn more url", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    return (*(v27 + 8))(v2, v28);
  }

  else
  {
    v22 = v13;
    (*(v11 + 32))(v13, v9, v10);
    v23 = [objc_opt_self() sharedApplication];
    v24 = sub_29E74EAC8();
    sub_29E68B6DC(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E7343DC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey, &unk_29E762E58);
    v25 = sub_29E754068();

    [v23 openURL:v24 options:v25 completionHandler:0];

    return (*(v11 + 8))(v22, v10);
  }
}

uint64_t sub_29E73219C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_29E752098();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v6, v3);
  sub_29E74EAE8();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29E7344F0(v9, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    sub_29E752048();
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446466;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, &v29);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_29E6B9C90(0xD000000000000019, 0x800000029E761050, &v29);
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s.%{public}s] Unable to create generic learn more url", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    return (*(v27 + 8))(v2, v28);
  }

  else
  {
    v22 = v13;
    (*(v11 + 32))(v13, v9, v10);
    v23 = [objc_opt_self() sharedApplication];
    v24 = sub_29E74EAC8();
    sub_29E68B6DC(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E7343DC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey, &unk_29E762E58);
    v25 = sub_29E754068();

    [v23 openURL:v24 options:v25 completionHandler:0];

    return (*(v11 + 8))(v22, v10);
  }
}

uint64_t sub_29E7326E4()
{
  swift_getObjectType();
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F7B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74EAF8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HKSPSleepWatchAppURL();
  if (v12)
  {
    v13 = v12;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_29E752048();
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, &v23);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E761030, &v23);
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s.%{public}s] Unable to create sleep watch app url", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

void sub_29E732A30(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E750698();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v68 = &v63 - v6;
  sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v72 = &v63 - v8;
  v9 = sub_29E752098();
  v73 = *(v9 - 1);
  v74 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v63 - v13;
  v15 = sub_29E7515A8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v63 - v20;
  sub_29E7518B8();
  sub_29E751578();
  v76 = *(v16 + 8);
  v77 = v15;
  v75 = v16 + 8;
  v76(v21, v15);
  sub_29E601938(v80, v81);
  v22 = sub_29E751528();
  v23 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v24 = sub_29E754198();
  v25 = [v23 initWithIdentifier:v24 healthStore:v22];

  sub_29E5FECBC(v80);
  v26 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA758] sleepStore:v25];
  sub_29E72F4DC();
  if (sub_29E754A78())
  {
    v64 = v26;
    sub_29E752048();
    v27 = sub_29E752088();
    v28 = sub_29E7546C8();
    v29 = os_log_type_enabled(v27, v28);
    v63 = v19;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v65 = v2;
      v32 = v31;
      v80[0] = v31;
      *v30 = 136446466;
      v33 = sub_29E755178();
      v35 = sub_29E6B9C90(v33, v34, v80);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E761000, v80);
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s.%{public}s]: Presenting sleep apnea onboarding", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    v73[1](v14, v74);
    v36 = v25;
    sub_29E7518B8();
    sub_29E751578();
    v37 = v76;
    v38 = v77;
    v76(v21, v77);
    sub_29E601938(v80, v81);
    v39 = sub_29E751528();
    v40 = objc_allocWithZone(MEMORY[0x29EDC68B0]);
    v74 = v36;
    v73 = [v40 initWithSleepStore:v36 healthDataSource:v39];

    sub_29E5FECBC(v80);
    v41 = v72;
    sub_29E6F5CC4(v67, v72);
    v42 = v63;
    sub_29E7518B8();
    sub_29E751578();
    v37(v42, v38);
    sub_29E601938(v80, v81);
    v67 = sub_29E751528();
    sub_29E7518B8();
    sub_29E751578();
    v37(v21, v38);
    sub_29E601938(v79, v79[3]);
    v43 = v68;
    sub_29E751538();
    v45 = v69;
    v44 = v70;
    v46 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x29EDC1D30], v71);
    LOBYTE(v42) = sub_29E750688();
    v47 = *(v44 + 8);
    v47(v45, v46);
    v47(v43, v46);
    sub_29E5FECBC(v79);
    if (v42)
    {
      v48 = 4;
    }

    else
    {
      v48 = 2;
    }

    v49 = type metadata accessor for SleepApneaOnboardingNavigationController(0);
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
    sub_29E6F5CC4(v41, &v50[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord]);
    v51 = v73;
    *&v50[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v73;
    *&v50[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v67;
    v50[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = v48;
    v78.receiver = v50;
    v78.super_class = v49;
    v52 = v51;
    v53 = objc_msgSendSuper2(&v78, sel_initWithNibName_bundle_, 0, 0);
    sub_29E7344F0(v41, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    sub_29E5FECBC(v80);
    sub_29E718D68();
    sub_29E7195BC();

    [v53 setModalPresentationStyle_];
    sub_29E7518B8();
    v54 = sub_29E751588();
    v76(v21, v77);
    [v54 presentViewController:v53 animated:1 completion:0];
  }

  else
  {
    sub_29E752068();
    v55 = sub_29E752088();
    v56 = sub_29E7546C8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65 = v2;
      v59 = v58;
      v80[0] = v58;
      *v57 = 136446466;
      v60 = sub_29E755178();
      v62 = sub_29E6B9C90(v60, v61, v80);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E761000, v80);
      _os_log_impl(&dword_29E5ED000, v55, v56, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt.", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v59, -1, -1);
      MEMORY[0x29ED98410](v57, -1, -1);
    }

    v73[1](v12, v74);
    sub_29E7518B8();
    sub_29E733F0C(v25);

    v76(v21, v77);
  }
}

void sub_29E7333C4(int a1, void *a2)
{
  v3 = v2;
  v81 = a2;
  v79 = a1;
  ObjectType = swift_getObjectType();
  sub_29E734424();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E750428();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v75 = &v69 - v10;
  v11 = sub_29E7515A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v70 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v69 - v15;
  v17 = sub_29E752098();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v21 = sub_29E752088();
  v22 = sub_29E7546C8();
  v23 = os_log_type_enabled(v21, v22);
  v80 = v3;
  v72 = ObjectType;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v78 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v76 = v12;
    v27 = v26;
    v82[0] = v26;
    *v25 = 136446722;
    v28 = sub_29E755178();
    v30 = sub_29E6B9C90(v28, v29, v82);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29E6B9C90(0xD000000000000038, 0x800000029E760FC0, v82);
    *(v25 + 22) = 2082;
    if (v79)
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    if (v79)
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v33 = sub_29E6B9C90(v31, v32, v82);

    *(v25 + 24) = v33;
    _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s.%{public}s]: Presenting sleep apnea notifications settings shouldPush %{public}s", v25, 0x20u);
    swift_arrayDestroy();
    v34 = v27;
    v12 = v76;
    MEMORY[0x29ED98410](v34, -1, -1);
    v35 = v25;
    v11 = v78;
    MEMORY[0x29ED98410](v35, -1, -1);
  }

  (*(v18 + 8))(v20, v17);
  sub_29E7518B8();
  sub_29E751578();
  v36 = v12[1];
  v36(v16, v11);
  sub_29E601938(v82, v83);
  v37 = sub_29E751528();
  v38 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v39 = sub_29E754198();
  v40 = [v38 initWithIdentifier:v39 healthStore:v37];

  sub_29E5FECBC(v82);
  v41 = v40;
  sub_29E7518B8();
  sub_29E751578();
  v42 = v11;
  v78 = v36;
  v36(v16, v11);
  sub_29E601938(v82, v83);
  v43 = sub_29E751528();
  v44 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v41 healthDataSource:v43];
  v76 = v41;

  sub_29E5FECBC(v82);
  v45 = [v44 featureAvailabilityProvidingForFeatureIdentifier_];
  if (v45)
  {
    v46 = v45;
    v47 = v75;
    sub_29E6F5CC4(v81, v75);
    v48 = sub_29E74FFA8();
    v49 = *(v48 - 8);
    v50 = (*(v49 + 48))(v47, 1, v48);
    v51 = v79;
    v81 = v44;
    if (v50 == 1)
    {
      sub_29E7344F0(v47, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
      v52 = v44;
      v53 = 0;
    }

    else
    {
      sub_29E74FF78();
      (*(v49 + 8))(v47, v48);
      v54 = v81;
      v53 = sub_29E754198();
      v44 = v81;
    }

    v55 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v46 healthDataSource:v44 currentCountryCode:v53];
    sub_29E751758();

    v56 = v55;
    sub_29E7518B8();
    v57 = v77;
    sub_29E750238();
    v58 = v78;
    v78(v16, v42);
    v59 = objc_allocWithZone(type metadata accessor for SleepApneaHealthChecklistSettingsViewController(0));
    v60 = sub_29E688FFC(v56, (v51 & 1) == 0, v57);

    if (v51)
    {
      v61 = v70;
      sub_29E7518B8();
      v62 = sub_29E751588();
      v58(v61, v42);
      v63 = [v62 navigationController];

      if (!v63)
      {
        v68 = v81;
        goto LABEL_18;
      }

      [v63 pushViewController:v60 animated:1];
    }

    else
    {
      v64 = [v56 featureAvailabilityProviding];
      swift_getObjectType();
      v65 = v71;
      sub_29E754898();
      *(swift_allocObject() + 16) = v72;
      sub_29E754A88();
      sub_29E751758();

      (*(v73 + 8))(v65, v74);
      v66 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
      sub_29E7518B8();
      v67 = sub_29E751588();
      v78(v16, v42);
      [v67 presentViewController:v66 animated:1 completion:0];

      v63 = v60;
      v60 = v66;
    }

    v68 = v81;

LABEL_18:
    return;
  }

  __break(1u);
}

uint64_t sub_29E733CB0(char a1, void *a2, uint64_t a3)
{
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  result = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E752048();
    v10 = a2;
    v11 = sub_29E752088();
    v12 = sub_29E7546A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446722;
      v15 = sub_29E755178();
      v17 = sub_29E6B9C90(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_29E6B9C90(0xD000000000000038, 0x800000029E760FC0, &v23);
      *(v13 + 22) = 2082;
      v22 = a2;
      v18 = a2;
      sub_29E73447C(0, &qword_2A1858A60, sub_29E66A61C);
      v19 = sub_29E7541F8();
      v21 = sub_29E6B9C90(v19, v20, &v23);

      *(v13 + 24) = v21;
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s.%{public}s]: Unable to enable sleep apnea notifications: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v14, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_29E733F0C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E7515A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v10;
    v13 = v12;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 136446466;
    v14 = sub_29E755178();
    ObjectType = v6;
    v16 = sub_29E6B9C90(v14, v15, &v28);
    v25 = v7;
    v17 = v16;

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E760F70, &v28);
    v18 = v24;
    _os_log_impl(&dword_29E5ED000, v24, v11, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt to encourage onboarding.", v13, 0x16u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v19, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v25 + 8))(v9, ObjectType);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_29E7518B8();
  sub_29E751578();
  v20 = *(v3 + 8);
  v20(v5, v2);
  v28 = a1;
  v21 = a1;
  sub_29E7518B8();
  v22 = sub_29E751588();
  v20(v5, v2);
  sub_29E72E8D0(v22);

  return sub_29E643FF4(&v28);
}

uint64_t sub_29E734250(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_29E734350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaHealthChecklistActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E7343DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E734424()
{
  if (!qword_2A185A858)
  {
    v0 = sub_29E7548A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A858);
    }
  }
}

void sub_29E73447C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E7344F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E73447C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E73454C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E7345B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E734614(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E7346A8(uint64_t a1)
{
  sub_29E73447C(319, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E734744()
{
  result = qword_2A185A870;
  if (!qword_2A185A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A870);
  }

  return result;
}

unint64_t sub_29E734798()
{
  result = qword_2A185A880;
  if (!qword_2A185A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A880);
  }

  return result;
}

unint64_t sub_29E7347EC()
{
  result = qword_2A185A888;
  if (!qword_2A185A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A888);
  }

  return result;
}

unint64_t sub_29E734840()
{
  result = qword_2A185A898;
  if (!qword_2A185A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A898);
  }

  return result;
}

uint64_t sub_29E734894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x800000029E761150 == a2;
  if (v4 || (sub_29E755028() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000029E761170 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000029E761190 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x800000029E7611B0 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x800000029E7611E0 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000029E761210 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029E761240 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029E761260 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029E761280 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_29E755028();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_29E734BB4(void *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29E735DA0(0, &qword_2A185A8A0, sub_29E735948, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.NoneCodingKeys, MEMORY[0x29EDC9E80]);
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v90 = &v63[-v4];
  sub_29E735DA0(0, &qword_2A185A8B0, sub_29E73599C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v2);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v95 = &v63[-v6];
  sub_29E735DA0(0, &qword_2A185A8C0, sub_29E7359F0, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v2);
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v94 = &v63[-v8];
  sub_29E735DA0(0, &qword_2A185A8D0, sub_29E735A44, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v2);
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v89 = &v63[-v10];
  sub_29E735DA0(0, &qword_2A185A8E0, sub_29E735A98, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSleepApneaKnowledgeBaseArticleCodingKeys, v2);
  v78 = v11;
  v77 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v88 = &v63[-v12];
  sub_29E735DA0(0, &qword_2A185A8F0, sub_29E735AEC, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSeedExpiryKnowledgeBaseArticleCodingKeys, v2);
  v76 = v13;
  v75 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v87 = &v63[-v14];
  sub_29E735DA0(0, &qword_2A185A900, sub_29E735B40, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenRegionGatedKnowledgeBaseArticleCodingKeys, v2);
  v73 = v15;
  v74 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v93 = &v63[-v16];
  sub_29E735DA0(0, &qword_2A185A910, sub_29E735B94, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchSleepSettingsCodingKeys, v2);
  v71 = v17;
  v72 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v92 = &v63[-v18];
  sub_29E735DA0(0, &qword_2A185A920, sub_29E735BE8, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v2);
  v69 = v19;
  v70 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v91 = &v63[-v20];
  sub_29E735DA0(0, &qword_2A185A930, sub_29E735C3C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v2);
  v22 = v21;
  v68 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v63[-v23];
  sub_29E735DA0(0, &qword_2A185A940, sub_29E735C90, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.CodingKeys, v2);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = a1[3];
  v97 = a1;
  v29 = a1;
  v31 = &v63[-v30];
  sub_29E601938(v29, v28);
  sub_29E735C90();
  v32 = v96;
  sub_29E755128();
  if (v32)
  {
    goto LABEL_13;
  }

  v66 = v24;
  v65 = v22;
  v33 = v91;
  v34 = v92;
  v35 = v31;
  v36 = v93;
  v37 = v94;
  v67 = 0;
  v38 = v95;
  v96 = v35;
  v39 = sub_29E754F68();
  v40 = v26;
  if (*(v39 + 16) != 1 || (v41 = *(v39 + 32), v41 == 10))
  {
    v45 = sub_29E754DC8();
    swift_allocError();
    v47 = v46;
    sub_29E735CE4(0);
    v48 = v96;
    *v47 = &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction;
    sub_29E754F18();
    sub_29E754DA8();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x29EDC9DB8], v45);
    swift_willThrow();
    goto LABEL_11;
  }

  v64 = *(v39 + 32);
  if (v41 > 4)
  {
    if (v41 <= 6)
    {
      if (v41 == 5)
      {
        v103 = 5;
        sub_29E735A98();
        v56 = v88;
        v48 = v96;
        v57 = v67;
        sub_29E754F08();
        if (v57)
        {
          goto LABEL_11;
        }

        (*(v77 + 8))(v56, v78);
        goto LABEL_42;
      }

      v104 = 6;
      sub_29E735A44();
      v50 = v89;
      v48 = v96;
      v62 = v67;
      sub_29E754F08();
      if (v62)
      {
        goto LABEL_11;
      }

      v53 = v79;
      v52 = v80;
    }

    else
    {
      if (v41 == 7)
      {
        v105 = 7;
        sub_29E7359F0();
        v48 = v96;
        v58 = v67;
        sub_29E754F08();
        if (v58)
        {
          goto LABEL_11;
        }

        (*(v81 + 8))(v37, v82);
        goto LABEL_42;
      }

      if (v41 != 8)
      {
        v107 = 9;
        sub_29E735948();
        v60 = v90;
        v48 = v96;
        v61 = v67;
        sub_29E754F08();
        if (v61)
        {
          goto LABEL_11;
        }

        (*(v85 + 8))(v60, v86);
        goto LABEL_42;
      }

      v106 = 8;
      sub_29E73599C();
      v50 = v38;
      v48 = v96;
      v51 = v67;
      sub_29E754F08();
      if (v51)
      {
        goto LABEL_11;
      }

      v53 = v83;
      v52 = v84;
    }

    (*(v53 + 8))(v50, v52);
    goto LABEL_42;
  }

  if (v41 <= 1)
  {
    v48 = v96;
    v54 = v67;
    if (v41)
    {
      v99 = 1;
      sub_29E735BE8();
      sub_29E754F08();
      if (v54)
      {
        goto LABEL_11;
      }

      (*(v70 + 8))(v33, v69);
    }

    else
    {
      v98 = 0;
      sub_29E735C3C();
      v55 = v66;
      sub_29E754F08();
      if (v54)
      {
        goto LABEL_11;
      }

      (*(v68 + 8))(v55, v65);
    }

LABEL_42:
    (*(v27 + 8))(v48, v40);
    goto LABEL_43;
  }

  v42 = v26;
  v43 = v67;
  if (v41 != 2)
  {
    if (v41 == 3)
    {
      v101 = 3;
      sub_29E735B40();
      v44 = v96;
      sub_29E754F08();
      if (!v43)
      {
        (*(v74 + 8))(v36, v73);
LABEL_39:
        (*(v27 + 8))(v44, v42);
        goto LABEL_43;
      }
    }

    else
    {
      v102 = 4;
      sub_29E735AEC();
      v59 = v87;
      v44 = v96;
      sub_29E754F08();
      if (!v43)
      {
        (*(v75 + 8))(v59, v76);
        goto LABEL_39;
      }
    }

    (*(v27 + 8))(v44, v42);
    goto LABEL_12;
  }

  v100 = 2;
  sub_29E735B94();
  v48 = v96;
  sub_29E754F08();
  if (v43)
  {
LABEL_11:
    (*(v27 + 8))(v48, v40);
LABEL_12:
    sub_29E751758();
LABEL_13:
    sub_29E5FECBC(v97);
    return 0;
  }

  (*(v72 + 8))(v34, v71);
  (*(v27 + 8))(v48, v40);
LABEL_43:
  sub_29E751758();
  sub_29E5FECBC(v97);
  return v64;
}