uint64_t get_enum_tag_for_layout_string_13TeaFoundation10QuantifierO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1BF0D95BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_1BF0D95FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1BF0D9640(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BF0D9668(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF060ECC();
  return sub_1BF17BB9C();
}

uint64_t Result.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v10, a1);
    v11 = *(a1 + 16);
    v12 = a2;
    v13 = 1;
  }

  else
  {
    v14 = *(a1 + 16);
    (*(*(v14 - 8) + 32))(a2, v10, v14);
    v12 = a2;
    v13 = 0;
    v11 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
}

uint64_t Result.removingValue()(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v6;
  }

  (*(*(*(a1 + 16) - 8) + 8))(v6);
  return 0;
}

uint64_t sub_1BF0D98EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BF0D9A10(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1BF0D9BD4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF0D9CE8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallbackDefinition(0, a2, v12, v13);
  (*(v7 + 16))(v11, v2 + qword_1ED8F52F0, v5);
  v15 = v2[2];
  v14 = v2[3];
  v16 = swift_allocObject();
  v16[2] = *(v4 + 112);
  v16[3] = a2;
  v16[4] = v15;
  v16[5] = v14;
  v17 = sub_1BEFF0338(v11, sub_1BF0DA018, v16);

  return v17;
}

uint64_t sub_1BF0D9E30(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  (*(v16 + 16))(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  swift_dynamicCast();
  a3(v11, a2);
  return (*(v9 + 8))(v11, a5);
}

uint64_t sub_1BF0D9FB0()
{

  v1 = qword_1ED8F52F0;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_12();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t Definition.key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF0DA0AC(_BYTE *a1, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>), _BYTE *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v7 = a4[1];
  *a1 = *a3;
  v9 = swift_allocObject();
  *(v9 + 2) = a5;
  *(v9 + 3) = v8;
  *(v9 + 4) = v7;
  *a2 = sub_1BF0DAB1C;
  a2[1] = v9;
}

uint64_t sub_1BF0DA12C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t *a4@<X8>)
{
  v7 = sub_1BF17AE6C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v15 - v11;
  a2(a1, v10);
  v13 = sub_1BF17AE5C();
  result = (*(v8 + 8))(v12, v7);
  *a4 = v13;
  return result;
}

uint64_t sub_1BF0DA228()
{

  sub_1BEFEBFA0(v0 + 72);
  v1 = qword_1ED8F5300;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
}

void Definition.whenResolving<A, B>(_:scope:castAs:callback:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v22 = v6;
  v23 = v7;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  toKey<A>(type:name:)(v5, 0, 0, v5, v24);
  v13 = v24[2];
  type metadata accessor for CallbackInstanceDefinition(0, v5, v3, v14);
  OUTLINED_FUNCTION_10_22();
  v15(v12);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v12, v22, v16, v17, v23, v13);
  OUTLINED_FUNCTION_3_26(v1 + qword_1ED8F52F8);
  sub_1BF071BE4();
  v18 = OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_14_14(v18, v19, v20, v21, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v31 = v7;
  v9 = v8;
  v32 = v10;
  v29 = *v0;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *v9;
  v17 = *(v9 + 8);
  v18 = *(v9 + 16);
  toKey<A>(type:name:)();
  type metadata accessor for CallbackInstanceDefinition(0, v5, v3, v19);
  OUTLINED_FUNCTION_10_22();
  v20(v15);
  v21 = swift_allocObject();
  v21[2] = *(v29 + 96);
  v21[3] = v5;
  v21[4] = v3;
  v21[5] = v30;
  v21[6] = v31;
  sub_1BF0DA424(v16, v17, v18);

  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v15, v32, v22, v23, v24, v21);
  OUTLINED_FUNCTION_3_26(v1 + qword_1ED8F52F8);
  sub_1BF071BE4();
  v25 = OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_13_14(v25, v26, v27, v28, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0DA424(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return v3;
}

void Definition<A>.whenResolving<A>(_:scope:callback:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v24 = v3;
  v25 = v4;
  v5 = *v0;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_7_21();
  toKey<A>(type:name:)(v11, v12, v13, v14, v15);
  type metadata accessor for CallbackInstanceDefinition(0, v2, *(v5 + 96), v16);
  OUTLINED_FUNCTION_10_22();
  v17(v10);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v10, v24, v18, v19, v25, v26);
  OUTLINED_FUNCTION_3_26(v0 + qword_1ED8F52F8);
  sub_1BF071BE4();
  v20 = OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_14_14(v20, v21, v22, v23, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v29 = v4;
  v30 = v5;
  v7 = v6;
  v31 = v8;
  v9 = *v0;
  sub_1BF1794FC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v16 = *v7;
  v15 = *(v7 + 8);
  v17 = *(v7 + 16);
  OUTLINED_FUNCTION_7_21();
  toKey<A>(type:name:)();
  v18 = *(v9 + 96);
  type metadata accessor for CallbackInstanceDefinition(0, v3, v18, v19);
  OUTLINED_FUNCTION_10_22();
  v20(v14);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v3;
  v21[4] = v29;
  v21[5] = v30;
  sub_1BF0DA424(v16, v15, v17);

  OUTLINED_FUNCTION_11_11();
  sub_1BF1216BC(v14, v31, v22, v23, v24, v21);
  OUTLINED_FUNCTION_3_26(v1 + qword_1ED8F52F8);
  sub_1BF071BE4();
  v25 = OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_13_14(v25, v26, v27, v28, &off_1F3DC31F0);
  swift_endAccess();

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0DA974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BEFE87B0(&v12, v10 + 40 * a1 + 32);
}

void sub_1BF0DAAB0(uint64_t a1)
{
  if (!qword_1EBDCBE90)
  {
    sub_1BEFE9D24();
    sub_1BEFE8034();
    v1 = sub_1BF17B53C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCBE90);
    }
  }
}

uint64_t sub_1BF0DAB28(uint64_t a1)
{
  v2 = v1;
  v8 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v4 = UnfairLock.init(options:)(&v8);
  OUTLINED_FUNCTION_0_53();
  sub_1BEFF1184(0, v5, v6, type metadata accessor for Seal);
  swift_allocObject();
  *(v2 + 16) = sub_1BF0E0CBC(v4, a1);
  return v2;
}

uint64_t sub_1BF0DABD4(uint64_t a1)
{
  v2 = v1;
  v6 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v4 = UnfairLock.init(options:)(&v6);
  sub_1BEFF1184(0, &qword_1ED8E9DD0, type metadata accessor for AuthToken, type metadata accessor for Seal);
  swift_allocObject();
  *(v2 + 16) = sub_1BF0E0AD0(v4, a1);
  return v2;
}

uint64_t sub_1BF0DAC90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9 = v5;
  v13 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v11 = UnfairLock.init(options:)(&v13);
  sub_1BEFF51A8(0, a2, a3, type metadata accessor for Seal);
  swift_allocObject();
  *(v9 + 16) = a5(v11, a1);
  return v9;
}

uint64_t sub_1BF0DADA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v8 = v4;
  v12 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v10 = UnfairLock.init(options:)(&v12);
  sub_1BF0E21B8(0, a2, a3, a4, type metadata accessor for Seal);
  swift_allocObject();
  *(v8 + 16) = sub_1BF0E0CBC(v10, a1);
  return v8;
}

uint64_t sub_1BF0DAE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFF1184(0, &qword_1ED8EAB00, type metadata accessor for AuthToken, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BF0A6380();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF09C62C(a1);

  v8(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DAFF4()
{
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_0_53();
  sub_1BEFF1184(0, v1, v2, type metadata accessor for DeferredPromise);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_66();

  v3 = sub_1BF0A634C();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_19(v4);

  v5 = OUTLINED_FUNCTION_4_22();
  sub_1BF09C62C(v5);
  OUTLINED_FUNCTION_11_12();

  v7 = v0(v6);
  result = OUTLINED_FUNCTION_10_3(v7);
  v9 = *(v3 + 16);
  if (v9)
  {

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFF1184(0, &qword_1ED8EAAF8, sub_1BF027B68, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BF0A634C();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF09CBC4(a1, sub_1BF0E36EC, v6, sub_1BF0E3700, v6, sub_1BF0E32A8, v7);

  v8(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFF1184(0, &qword_1EBDCAC08, sub_1BF096F0C, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BF0A63B4();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF09C62C(a1);

  v8(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB434()
{
  OUTLINED_FUNCTION_3_27();
  sub_1BEFF1184(0, qword_1EBDCAC20, MEMORY[0x1E6967EC8], type metadata accessor for DeferredPromise);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_66();

  v1 = sub_1BF0A6410();
  OUTLINED_FUNCTION_14_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_19(v2);

  v3 = OUTLINED_FUNCTION_4_22();
  sub_1BF09D0A0(v3);
  OUTLINED_FUNCTION_11_12();

  v5 = v0(v4);
  result = OUTLINED_FUNCTION_10_3(v5);
  v7 = *(v1 + 16);
  if (v7)
  {

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB564()
{
  OUTLINED_FUNCTION_3_27();
  sub_1BEFF51A8(0, &qword_1EBDCAC18, &type metadata for AuthTokenResponse, type metadata accessor for DeferredPromise);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_66();

  v1 = sub_1BF0A63E8();
  OUTLINED_FUNCTION_14_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_19(v2);

  OUTLINED_FUNCTION_4_22();
  sub_1BF09CEBC();
  OUTLINED_FUNCTION_11_12();

  v4 = v0(v3);
  result = OUTLINED_FUNCTION_10_3(v4);
  v6 = *(v1 + 16);
  if (v6)
  {

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFF1184(0, &qword_1ED8EAAF8, sub_1BF027B68, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v6 = sub_1BF0A634C();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  swift_retain_n();

  v8 = sub_1BF09D1EC(a1, sub_1BF0E36EC, v6, sub_1BF0E3700, v6, sub_1BF0E2E34, v7);

  v8(v9);
  result = swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DB818(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v9 = a1;
  a2(&v9);
  v4 = qword_1ED8F0210;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  sub_1BF09C7B4();
  v6 = v5;

  v6(v7);
}

uint64_t sub_1BF0DB9F0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v9 = a1;
  a2(&v9);
  v4 = qword_1ED8F0210;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_1ED8F0218;
  swift_retain_n();
  v6 = sub_1BF09C62C(v5);

  v6(v7);
}

uint64_t sub_1BF0DBBC8(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  a2(&v10);
  v5 = qword_1ED8F0210;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = off_1ED8F0218;
  swift_retain_n();
  v7 = sub_1BF09CBC4(v6, sub_1BF0E3280, a4, sub_1BF0E3704, a4, sub_1BF0E3284, a4);

  v7(v8);
}

uint64_t sub_1BF0DBDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  a3(v10);
  v5 = qword_1ED8F0210;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = off_1ED8F0218;
  swift_retain_n();
  v7 = sub_1BF09C62C(v6);

  v7(v8);
}

uint64_t sub_1BF0DBF78(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  v4 = qword_1ED8F0210;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_1ED8F0218;
  swift_retain_n();
  v6 = sub_1BF09CD10(v5);

  v6(v7);
}

uint64_t sub_1BF0DC148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  a3(v10);
  v5 = qword_1ED8F0210;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  sub_1BF09CEBC();
  v7 = v6;

  v7(v8);
}

uint64_t sub_1BF0DC320(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v9 = a1;
  a2(&v9);
  v4 = qword_1ED8F0210;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_1ED8F0218;
  swift_retain_n();
  v6 = sub_1BF09C62C(v5);

  v6(v7);
}

char *sub_1BF0DC540(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BF1764B4(*(a1 + 16), 0);
  v4 = *(sub_1BF17923C() - 8);
  v5 = sub_1BF1768F4(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_1BF003FE8(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1BF0DC608(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthToken(0);
  v66 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v54 - v10;
  v68 = sub_1BF17923C();
  v11 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v56 = &v54 - v17;
  sub_1BEFF1184(0, &qword_1ED8EACF8, sub_1BF0D7CEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v63 = &v54 - v24;
  v25 = a2 + 64;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 64);
  v64 = v11 + 16;
  v65 = v11;
  v67 = (v11 + 32);
  v61 = (v11 + 8);
  v62 = (v26 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v59 = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v29 = 0;
  v57 = v14;
  v54 = v21;
  v55 = v7;
  v60 = a2 + 64;
  while (v28)
  {
    v30 = v29;
LABEL_11:
    v32 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v33 = v32 | (v30 << 6);
    v34 = v59;
    v35 = v65;
    (*(v65 + 16))(v56, *(v59 + 48) + *(v65 + 72) * v33, v68);
    v36 = v58;
    sub_1BF0E3424(*(v34 + 56) + *(v66 + 72) * v33, v58, type metadata accessor for AuthToken);
    sub_1BF0D7CEC(0);
    v38 = v37;
    v39 = *(v37 + 48);
    v21 = v54;
    (*(v35 + 32))();
    sub_1BF0A8A64(v36, &v21[v39]);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v38);
    v14 = v57;
    v7 = v55;
    v31 = v63;
LABEL_12:
    sub_1BF0E31DC(v21, v31);
    sub_1BF0D7CEC(0);
    if (__swift_getEnumTagSinglePayload(v31, 1, v38) == 1)
    {

      return a1;
    }

    v40 = *(v38 + 48);
    (*v67)(v14, v31, v68);
    sub_1BF0A8A64(v31 + v40, v7);
    swift_isUniquelyReferenced_nonNull_native();
    v69 = a1;
    sub_1BF082148();
    if (__OFADD__(a1[2], (v42 & 1) == 0))
    {
      goto LABEL_24;
    }

    v43 = v41;
    v44 = v42;
    sub_1BF0D7C0C(0);
    if (sub_1BF17B43C())
    {
      sub_1BF082148();
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_26;
      }

      v43 = v45;
    }

    a1 = v69;
    if (v44)
    {
      sub_1BF0D7C88(v7, v69[7] + *(v66 + 72) * v43);
      (*v61)(v14, v68);
      v25 = v60;
    }

    else
    {
      v69[(v43 >> 6) + 8] |= 1 << v43;
      v47 = v65;
      v48 = v68;
      (*(v65 + 16))(a1[6] + *(v65 + 72) * v43, v14, v68);
      sub_1BF0A8A64(v7, a1[7] + *(v66 + 72) * v43);
      (*(v47 + 8))(v14, v48);
      v49 = a1[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_25;
      }

      a1[2] = v51;
      v25 = v60;
    }
  }

  v31 = v63;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v62)
    {
      sub_1BF0D7CEC(0);
      v38 = v52;
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v52);
      v28 = 0;
      goto LABEL_12;
    }

    v28 = *(v25 + 8 * v30);
    ++v29;
    if (v28)
    {
      v29 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

void *sub_1BF0DCB94(void (*a1)(char *, char *, void *, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v96 = a1;
  v97 = a2;
  v87 = type metadata accessor for AuthToken(0);
  v95 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v6);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v83 = &v78 - v10;
  v98 = sub_1BF17923C();
  v11 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98 - 8, v12);
  v88 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v89 = &v78 - v16;
  sub_1BF0E32B4(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v86 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v99 = &v78 - v22;
  sub_1BF028120(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v93 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v101 = &v78 - v28;
  sub_1BF0D7A98(0);
  v94 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v102 = (&v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a3 + 64;
  v33 = 1 << *(a3 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a3 + 64);
  v36 = (v33 + 63) >> 6;
  v85 = (v11 + 32);
  v81 = (v11 + 16);
  v79 = v11;
  v82 = (v11 + 8);
  v100 = a3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v37 = 0;
  v90 = MEMORY[0x1E69E7CC8];
  v91 = v36;
  v92 = a3 + 64;
  if (v35)
  {
    while (1)
    {
      v38 = v4;
LABEL_9:
      v40 = __clz(__rbit64(v35)) | (v37 << 6);
      v41 = (*(v100 + 48) + 16 * v40);
      v43 = *v41;
      v42 = v41[1];
      v44 = *(v95 + 72);
      v45 = *(v94 + 48);
      v46 = v102;
      sub_1BF0E3424(*(v100 + 56) + v44 * v40, v102 + v45, type metadata accessor for AuthToken);
      *v46 = v43;
      v46[1] = v42;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v47 = v46 + v45;
      v48 = v101;
      v49 = v99;
      v96(v101, v99, v46, v47);
      v4 = v38;
      if (v38)
      {

        sub_1BF0E2F3C(v102, sub_1BF0D7A98);
        v76 = v90;

        return v76;
      }

      v50 = v93;
      sub_1BF0E3424(v48, v93, sub_1BF028120);
      v51 = v98;
      if (__swift_getEnumTagSinglePayload(v50, 1, v98) == 1)
      {
        break;
      }

      v54 = v89;
      (*v85)(v89, v50, v51);
      v55 = v49;
      v56 = v49;
      v57 = v86;
      sub_1BF0E3424(v55, v86, sub_1BF0E32B4);
      if (__swift_getEnumTagSinglePayload(v57, 1, v87) == 1)
      {
        (*v82)(v54, v51);
        v52 = sub_1BF0E32B4;
        sub_1BF0E2F3C(v56, sub_1BF0E32B4);
        sub_1BF0E2F3C(v101, sub_1BF028120);
        v53 = v57;
        goto LABEL_14;
      }

      v80 = 0;
      v58 = v57;
      v59 = v54;
      v60 = v83;
      sub_1BF0A8A64(v58, v83);
      v61 = *v81;
      (*v81)(v88, v59, v51);
      sub_1BF0E3424(v60, v84, type metadata accessor for AuthToken);
      v62 = v90;
      swift_isUniquelyReferenced_nonNull_native();
      v103 = v62;
      sub_1BF082148();
      if (__OFADD__(v62[2], (v64 & 1) == 0))
      {
        goto LABEL_31;
      }

      v65 = v63;
      v66 = v64;
      sub_1BF0D7C0C(0);
      if (sub_1BF17B43C())
      {
        sub_1BF082148();
        v69 = v98;
        v70 = v99;
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_33;
        }

        v65 = v67;
      }

      else
      {
        v69 = v98;
        v70 = v99;
      }

      v71 = v103;
      v90 = v103;
      if (v66)
      {
        sub_1BF0D7C88(v84, v103[7] + v65 * v44);
      }

      else
      {
        v103[(v65 >> 6) + 8] |= 1 << v65;
        v61((v71[6] + *(v79 + 72) * v65), v88, v69);
        sub_1BF0A8A64(v84, v71[7] + v65 * v44);
        v72 = v71[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          goto LABEL_32;
        }

        v71[2] = v74;
      }

      v75 = *v82;
      (*v82)(v88, v69);
      sub_1BF0E2F3C(v83, type metadata accessor for AuthToken);
      v75(v89, v69);
      sub_1BF0E2F3C(v70, sub_1BF0E32B4);
      sub_1BF0E2F3C(v101, sub_1BF028120);
      v4 = v80;
LABEL_25:
      v36 = v91;
      v32 = v92;
      v35 &= v35 - 1;
      sub_1BF0E2F3C(v102, sub_1BF0D7A98);
      if (!v35)
      {
        goto LABEL_5;
      }
    }

    sub_1BF0E2F3C(v49, sub_1BF0E32B4);
    v52 = sub_1BF028120;
    sub_1BF0E2F3C(v48, sub_1BF028120);
    v53 = v50;
LABEL_14:
    sub_1BF0E2F3C(v53, v52);
    goto LABEL_25;
  }

LABEL_5:
  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      return v90;
    }

    v35 = *(v32 + 8 * v39);
    ++v37;
    if (v35)
    {
      v38 = v4;
      v37 = v39;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t AuthTokenManagerType.fetchAuthToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BEFF1184(0, &qword_1ED8E9B50, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v6 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BF17DEF0;
  (*(v8 + 16))(v10 + v9, a1, v6);
  (*(a3 + 8))(v10, a2, a3);
  OUTLINED_FUNCTION_17_9();

  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
  }

  v11 = sub_1BF0DAE64(off_1ED8F0218, sub_1BF0DD4DC, 0);

  return v11;
}

uint64_t sub_1BF0DD4DC(uint64_t *a1)
{
  sub_1BF0E32B4(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AuthToken(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - v12;
  sub_1BF0B9F70(*a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1BF0E2F3C(v5, sub_1BF0E32B4);
    sub_1BF0E349C();
    v14 = swift_allocError();
    sub_1BEFF1184(0, &qword_1ED8E9D00, type metadata accessor for AuthToken, type metadata accessor for Promise);
    swift_allocObject();
    return sub_1BF0DABD4(v14);
  }

  else
  {
    sub_1BF0A8A64(v5, v13);
    sub_1BF0E3424(v13, v9, type metadata accessor for AuthToken);
    sub_1BEFF1184(0, &qword_1ED8E9D00, type metadata accessor for AuthToken, type metadata accessor for Promise);
    swift_allocObject();
    v15 = sub_1BF0AACD4();
    sub_1BF0E2F3C(v13, type metadata accessor for AuthToken);
  }

  return v15;
}

uint64_t AuthTokenManager.__allocating_init(service:store:tokenType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_17_9();
  AuthTokenManager.init(service:store:tokenType:)(v8, a2, a3, a4);
  return v4;
}

uint64_t sub_1BF0DD78C(uint64_t a1, unint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  OUTLINED_FUNCTION_58();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v2;
  v8 = qword_1ED8E9CB0;
  swift_retain_n();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1ED8E9CB0);
  }

  v9 = sub_1BF1797FC();
  __swift_project_value_buffer(v9, qword_1ED8F4DD0);
  OUTLINED_FUNCTION_17_9();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v10 = sub_1BF1797DC();
  v11 = sub_1BF17AC9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_70();
    v23 = OUTLINED_FUNCTION_44_0();
    v24 = v23;
    *v12 = 136446210;
    v13 = sub_1BF17923C();
    v14 = MEMORY[0x1BFB522D0](a1, v13);
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = sub_1BF01A7AC(v14, v15, &v24);

    *(v12 + 4) = v19;
    v5 = v18;
    v6 = v17;
    v7 = v16;
    _os_log_impl(&dword_1BEFE0000, v10, v11, "AuthTokenManager will fetch auth tokens for %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  sub_1BF0DED9C(a1, v5, v6, v3, sub_1BF0E2EEC, v3, sub_1BF0E2EF4, v7);
  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = a1;
  v20 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v20 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
  }

  sub_1BF09A1F4();

  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = sub_1BF08C570();

  return v21;
}

uint64_t sub_1BF0DDA8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF1797FC();
  __swift_project_value_buffer(v5, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136446210;
    v10 = sub_1BF17923C();
    v11 = MEMORY[0x1BFB522D0](a1, v10);
    v13 = sub_1BF01A7AC(v11, v12, v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "AuthTokenManager will queue cache read for urls=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB547B0](v9, -1, -1);
    MEMORY[0x1BFB547B0](v8, -1, -1);
  }

  v14 = *(a2 + *(*a2 + 112));
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1BEFF1184(0, &qword_1ED8EAAF0, sub_1BF096FB0, type metadata accessor for DeferredPromise);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v16 = sub_1BF0A6270();
  v17 = swift_allocObject();
  v17[2] = sub_1BF0E33B0;
  v17[3] = v15;
  v17[4] = v16;

  v18 = sub_1BF006210(v14, sub_1BF0E3724, v17);

  (v18)(v19);
  result = swift_beginAccess();
  if (*(v16 + 16))
  {

    sub_1BF096FB0(0);
    sub_1BF027B68(0);
    v22 = v21;
    v23 = sub_1BF041694();
    Promise.then<A, B>(on:disposeOn:closure:)(v23, a2, sub_1BF0E33CC, 0, v22, v4);

    *(swift_allocObject() + 16) = a1;
    v24 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1BF08C570();

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DDE70(char *a1, char *a2)
{
  v3 = v2;
  v6 = *a2;
  v7 = *a2;
  v8 = sub_1BF17923C();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v44 - v16;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1BF1797FC();
  __swift_project_value_buffer(v18, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v19 = sub_1BF1797DC();
  v20 = sub_1BF17ACDC();

  v21 = os_log_type_enabled(v19, v20);
  v46 = v13;
  v47 = v12;
  v45 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53 = v23;
    *v22 = 136446210;
    v24 = MEMORY[0x1BFB522D0](a1, v51);
    v49 = a1;
    v26 = v7;
    v27 = sub_1BF01A7AC(v24, v25, &v53);
    v3 = v2;
    a1 = v49;

    *(v22 + 4) = v27;
    v7 = v26;
    _os_log_impl(&dword_1BEFE0000, v19, v20, "AuthTokenManager will perform cache read for urls=%{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v28 = v23;
    v17 = v45;
    v13 = v46;
    MEMORY[0x1BFB547B0](v28, -1, -1);
    v29 = v22;
    v12 = v47;
    MEMORY[0x1BFB547B0](v29, -1, -1);
  }

  (*(v13 + 16))(v17, &a2[*(*a2 + 104)], v12);
  v30 = *(a1 + 2);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v44[0] = v7;
    v44[1] = v3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v31 = v53;
    v32 = *(v52 + 16);
    v33 = &a1[(*(v52 + 80) + 32) & ~*(v52 + 80)];
    v48 = *(v52 + 72);
    v49 = v32;
    v52 += 16;
    v34 = (v52 - 8);
    do
    {
      v35 = v50;
      v36 = v51;
      (v49)(v50, v33, v51);
      v37 = sub_1BF17913C();
      v39 = v38;
      (*v34)(v35, v36);
      v53 = v31;
      v40 = *(v31 + 16);
      if (v40 >= *(v31 + 24) >> 1)
      {
        sub_1BF00DD60();
        v31 = v53;
      }

      *(v31 + 16) = v40 + 1;
      v41 = v31 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v39;
      v33 += v48;
      --v30;
    }

    while (v30);
    v7 = v44[0];
    v13 = v46;
    v12 = v47;
    v17 = v45;
  }

  v42 = (*(*(v7 + 88) + 16))(v31, v12);

  (*(v13 + 8))(v17, v12);
  return v42;
}

void sub_1BF0DE2AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1BF0DCB94(sub_1BF0E3408, a2, *a1);
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF1797FC();
  __swift_project_value_buffer(v5, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v8 = 136446210;
    v9 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v10 = sub_1BF0DC540(v9);
    v11 = sub_1BF17923C();
    v12 = MEMORY[0x1BFB522D0](v10, v11);
    v13 = a3;
    v15 = v14;

    v16 = sub_1BF01A7AC(v12, v15, &v18);
    a3 = v13;

    *(v8 + 4) = v16;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "AuthTokenManager using cached auth tokens for urls=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB547B0](v17, -1, -1);
    MEMORY[0x1BFB547B0](v8, -1, -1);
  }

  *a3 = v4;
}

uint64_t sub_1BF0DE478(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BF1794AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1791FC();
  sub_1BEFE6A78(a5 + *(*a5 + 136), v22);
  v13 = v23;
  v14 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v14 + 8))(v13, v14);
  v15 = type metadata accessor for AuthToken(0);
  v16 = *(a4 + *(v15 + 28));
  sub_1BF17944C();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (v16 <= v18)
  {
    v19 = 1;
  }

  else
  {
    sub_1BF0E3424(a4, a2, type metadata accessor for AuthToken);
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v19, 1, v15);
}

uint64_t sub_1BF0DE63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF1797DC();
  v8 = sub_1BF17ACDC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136446210;
    v11 = sub_1BF17923C();
    v12 = MEMORY[0x1BFB522D0](a2, v11);
    v14 = sub_1BF01A7AC(v12, v13, v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BEFE0000, v7, v8, "AuthTokenManager will queue cache write for urls=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB547B0](v10, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  v15 = *(a3 + *(*a3 + 112));
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  sub_1BEFF1184(0, &qword_1ED8EAAF0, sub_1BF096FB0, type metadata accessor for DeferredPromise);
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v17 = sub_1BF0A6270();
  v18 = swift_allocObject();
  v18[2] = sub_1BF0E32EC;
  v18[3] = v16;
  v18[4] = v17;

  v19 = sub_1BF006210(v15, sub_1BF0E330C, v18);

  (v19)(v20);
  result = swift_beginAccess();
  if (*(v17 + 16))
  {

    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    sub_1BF09A40C();

    *(swift_allocObject() + 16) = a2;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v22 = sub_1BF08C570();

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0DE9D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v7 = 136446210;
    v8 = sub_1BF17923C();
    v9 = MEMORY[0x1BFB522D0](a1, v8);
    v11 = sub_1BF01A7AC(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "AuthTokenManager will perform cache write for urls=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB547B0](v14, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  sub_1BF0D73A0();
  v12 = (*(*(v3 + 88) + 32))();

  return v12;
}

void sub_1BF0DEBE4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1BF0D6728(*a1);
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF1797DC();
  v6 = sub_1BF17ACDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v7 = 136446210;
    v8 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v9 = sub_1BF0DC540(v8);
    v10 = sub_1BF17923C();
    v11 = MEMORY[0x1BFB522D0](v9, v10);
    v12 = a2;
    v14 = v13;

    v15 = sub_1BF01A7AC(v11, v14, &v17);
    a2 = v12;

    *(v7 + 4) = v15;
    _os_log_impl(&dword_1BEFE0000, v5, v6, "AuthTokenManager wrote new tokens to cache for urls=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB547B0](v16, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  *a2 = v3;
}

uint64_t sub_1BF0DED9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BF0E2F94(0);
  v15 = sub_1BF0DEE88(a4);
  v17 = sub_1BF0DEF44(a1, a2, a3, v15, v16, a5, a6, a7, a8, *(a4 + *(*a4 + 128)), 0);

  return v17;
}

uint64_t sub_1BF0DEEC8(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, *(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8), v3, v4);
}

uint64_t sub_1BF0DEF44(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, __n128), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v12 = v11;
  v18 = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  if (!*(a1 + 16))
  {
    v26 = qword_1ED8EF4B0;
    swift_retain_n();
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1BF1797FC();
    __swift_project_value_buffer(v27, qword_1ED8F52B0);
    v28 = sub_1BF1797DC();
    v29 = sub_1BF17ACDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BEFE0000, v28, v29, "Manager will not fetch because no keys were specified", v30, 2u);
      MEMORY[0x1BFB547B0](v30, -1, -1);
    }

    sub_1BF17923C();
    type metadata accessor for AuthToken(0);
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BF179DAC();
    sub_1BEFF1184(0, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
    swift_allocObject();
    v31 = sub_1BF0AADDC();
    goto LABEL_15;
  }

  if (!v18)
  {
    swift_retain_n();
    v32 = a1;
    v33.n128_u64[0] = a2;
LABEL_14:
    v31 = a6(v32, v33);
LABEL_15:
    v25 = v31;

LABEL_16:

    goto LABEL_17;
  }

  if (v18 == 1 || a2 - 2 < 2)
  {
    swift_retain_n();
    sub_1BF166118(a2, v18, a1, a6, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = v12;
    *(v23 + 24) = a1;
    *(v23 + 32) = a2;
    *(v23 + 40) = v18;
    *(v23 + 48) = a4;
    *(v23 + 56) = a5;
    *(v23 + 64) = sub_1BF0E3040;
    *(v23 + 72) = v21;
    *(v23 + 80) = a8;
    *(v23 + 88) = a9;
    *(v23 + 96) = a10;
    *(v23 + 104) = a11;
    *(v23 + 112) = 0;
    *(v23 + 120) = 0;
    v24 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1BF0DAFF4();

    goto LABEL_16;
  }

  if (a2)
  {
    swift_retain_n();
    v33.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    v32 = a1;
    goto LABEL_14;
  }

  swift_retain_n();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF09EA68();
  v49 = v35;
  v36 = a10[6];
  v37 = a10[7];
  __swift_project_boxed_opaque_existential_1(a10 + 3, v36);
  v48 = *(v37 + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v48(v36, v37);
  swift_beginAccess();
  v38 = sub_1BF089924(v49, a10[2]);
  if (v38)
  {
    v25 = v38;
    swift_endAccess();
    v39 = a10[6];
    v40 = a10[7];
    __swift_project_boxed_opaque_existential_1(a10 + 3, v39);
    (*(v40 + 16))(v39, v40);
  }

  else
  {
    swift_endAccess();
    a4(a1);
    v41 = swift_allocObject();
    *(v41 + 16) = a8;
    *(v41 + 24) = a9;
    v42 = qword_1ED8F0210;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = off_1ED8F0218;
    v25 = sub_1BF0DAFF4();

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v50 = a10[2];
    sub_1BF082D70();
    a10[2] = v50;
    swift_endAccess();
    v44 = a10[6];
    v45 = a10[7];
    __swift_project_boxed_opaque_existential_1(a10 + 3, v44);
    (*(v45 + 16))(v44, v45);
    v46 = swift_allocObject();
    *(v46 + 16) = a10;
    *(v46 + 24) = v49;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF09A64C();

    v47 = swift_allocObject();
    *(v47 + 16) = a10;
    *(v47 + 24) = v49;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BEFF77FC(v43, sub_1BF0E30D4, v47);
  }

LABEL_17:

  return v25;
}

uint64_t sub_1BF0DF694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF1797DC();
  v8 = sub_1BF17ACDC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_1BF17923C();
    v12 = MEMORY[0x1BFB522D0](a2, v11);
    v14 = sub_1BF01A7AC(v12, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BEFE0000, v7, v8, "AuthTokenManager fetch successful for urls %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB547B0](v10, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  *a3 = v5;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void sub_1BF0DF818(void *a1, uint64_t a2, const char *a3)
{
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1ED8E9CB0);
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = a1;
  oslog = sub_1BF1797DC();
  v8 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_44_0();
    v19 = v11;
    *v9 = 136446466;
    v12 = sub_1BF17923C();
    v13 = MEMORY[0x1BFB522D0](a2, v12);
    v15 = sub_1BF01A7AC(v13, v14, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2114;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_1BEFE0000, oslog, v8, a3, v9, 0x16u);
    sub_1BF0E2F3C(v10, sub_1BF082F84);
    OUTLINED_FUNCTION_28();
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }
}

char *AuthTokenManager.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_29();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v4 + 136)]);
  return v0;
}

uint64_t AuthTokenManager.__deallocating_deinit()
{
  AuthTokenManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AuthTokenManager.fetchAuthTokens(for:)(uint64_t a1)
{
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1ED8E9CB0);
  }

  v2 = sub_1BF1797FC();
  __swift_project_value_buffer(v2, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v3 = sub_1BF1797DC();
  v4 = sub_1BF17AC9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_70();
    v6 = OUTLINED_FUNCTION_44_0();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_1BF17923C();
    v8 = MEMORY[0x1BFB522D0](a1, v7);
    v10 = sub_1BF01A7AC(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1BEFE0000, v3, v4, "AuthTokenManager will fetch auth tokens for urls: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v12 = 2;
  v13 = 2;
  return sub_1BF0DD78C(a1, &v12);
}

uint64_t AuthTokenManager.refreshAuthTokens(for:condition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1ED8E9CB0);
  }

  v8 = sub_1BF1797FC();
  __swift_project_value_buffer(v8, qword_1ED8F4DD0);
  OUTLINED_FUNCTION_66();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = sub_1BF1797DC();
  v10 = sub_1BF17ACDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_70();
    v12 = OUTLINED_FUNCTION_44_0();
    v22 = v12;
    *v11 = 136446210;
    v13 = sub_1BF17923C();
    v14 = MEMORY[0x1BFB522D0](a1, v13);
    v16 = sub_1BF01A7AC(v14, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1BEFE0000, v9, v10, "AuthTokenManager will refresh auth tokens for urls: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  sub_1BF0DFF0C(v4, a1);
  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = qword_1ED8F0210;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
  }

  v19 = off_1ED8F0218;
  sub_1BF09A864();

  sub_1BF0DB688(v19, sub_1BF0E2194, v4);
  OUTLINED_FUNCTION_17_9();

  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v20 = sub_1BF08C570();

  return v20;
}

uint64_t sub_1BF0DFF0C(uint64_t a1, uint64_t a2)
{
  v3 = 2;
  v4 = 2;
  return sub_1BF0DD78C(a2, &v3);
}

char *sub_1BF0DFF58@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v7 = *a1;

  v8 = sub_1BF0E239C(v7, a2, a3);
  result = sub_1BF0DC540(v8);
  *a4 = result;
  return result;
}

uint64_t sub_1BF0DFFB4(uint64_t *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 2;
  return sub_1BF0DD78C(v1, &v3);
}

void sub_1BF0DFFFC(void *a1, uint64_t a2)
{
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = a1;
  oslog = sub_1BF1797DC();
  v6 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446466;
    v9 = sub_1BF17923C();
    v10 = MEMORY[0x1BFB522D0](a2, v9);
    v12 = sub_1BF01A7AC(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v13 = sub_1BF17BB0C();
    v15 = sub_1BF01A7AC(v13, v14, &v17);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1BEFE0000, oslog, v6, "AuthTokenManager failed to refresh auth tokens for urls=%{public}s; error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v8, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t AuthTokenManager.discardAuthToken(for:)(uint64_t *a1)
{
  v2 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v34 - v12;
  if (qword_1ED8E9CB0 != -1)
  {
    OUTLINED_FUNCTION_1_41(&qword_1ED8E9CB0);
  }

  v14 = sub_1BF1797FC();
  __swift_project_value_buffer(v14, qword_1ED8F4DD0);
  v39 = *(v4 + 16);
  v39(v13, a1, v2);
  v15 = sub_1BF1797DC();
  v16 = sub_1BF17ACDC();
  v17 = os_log_type_enabled(v15, v16);
  v36 = v6;
  v37 = v4;
  v38 = v4 + 16;
  if (v17)
  {
    v18 = a1;
    v19 = OUTLINED_FUNCTION_70();
    v20 = OUTLINED_FUNCTION_44_0();
    v40 = v20;
    *v19 = 136446210;
    sub_1BF00AF3C(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v21 = sub_1BF17B6FC();
    v22 = v4;
    v24 = v23;
    (*(v22 + 8))(v13, v2);
    v25 = sub_1BF01A7AC(v21, v24, &v40);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1BEFE0000, v15, v16, "AuthTokenManager will discard auth token for URL: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_28();
    a1 = v18;
    OUTLINED_FUNCTION_28();
  }

  else
  {

    (*(v4 + 8))(v13, v2);
  }

  sub_1BF0E0628(v35);
  v26 = v39;
  v27 = OUTLINED_FUNCTION_17_9();
  v26(v27, a1, v2);
  v35 = a1;
  v28 = v37;
  v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v30 = swift_allocObject();
  v37 = *(v28 + 32);
  (v37)(v30 + v29, v9, v2);
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
  }

  sub_1BF09A994();

  v39(v9, v35, v2);
  v31 = swift_allocObject();
  (v37)(v31 + v29, v9, v2);
  v32 = sub_1BF08C59C();

  return v32;
}

uint64_t sub_1BF0E0628(uint64_t *a1)
{
  v1 = *a1;
  sub_1BEFF51A8(0, &qword_1ED8EF220, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BF17DEF0;
  *(v2 + 32) = sub_1BF17913C();
  *(v2 + 40) = v3;
  v4 = (*(*(v1 + 88) + 40))(v2, *(v1 + 80));

  return v4;
}

void sub_1BF0E0790(void *a1, uint64_t a2)
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF1797FC();
  __swift_project_value_buffer(v9, qword_1ED8F4DD0);
  (*(v5 + 16))(v8, a2, v4);
  v10 = a1;
  v11 = sub_1BF1797DC();
  v12 = sub_1BF17ACBC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446466;
    sub_1BF00AF3C(&qword_1EBDCBB30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = sub_1BF17B6FC();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_1BF01A7AC(v15, v17, &v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    swift_getErrorValue();
    v19 = sub_1BF17BB0C();
    v21 = sub_1BF01A7AC(v19, v20, &v23);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1BEFE0000, v11, v12, "AuthTokenManager failed to discard token for url=%{public}s; error=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v14, -1, -1);
    MEMORY[0x1BFB547B0](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BF0E0AD0(uint64_t a1, uint64_t a2)
{
  sub_1BEFF1184(0, &qword_1ED8E9E10, sub_1BF0E34F0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v14 - v7);
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v9 = *(*v2 + 112);
  sub_1BF0E34F0(0);
  v11 = v10;
  __swift_storeEnumTagSinglePayload(v2 + v9, 1, 1, v10);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  *v8 = a2;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v12 = *(*v2 + 112);
  swift_beginAccess();
  sub_1BF0E354C(v8, v2 + v12);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0E0C38(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 32) = v4;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a2;
  v6 = *(v2 + 48);
  *(v2 + 48) = 1;
  sub_1BF043E18(v5, v6);
  return v2;
}

uint64_t sub_1BF0E0CBC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 32) = v4;
  *(v2 + 48) = -1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  swift_beginAccess();
  *(v2 + 40) = a2;
  *(v2 + 48) = 1;
  return v2;
}

uint64_t sub_1BF0E0D34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[6];
  v6 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v5);
  (*(v6 + 8))(v5, v6);
  if (!a2[8])
  {
    swift_beginAccess();
    sub_1BF082874(a3, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    swift_endAccess();
  }

  v14 = a2[6];
  v15 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v14);
  return (*(v15 + 16))(v14, v15);
}

uint64_t sub_1BF0E0E14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[6];
  v6 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v5);
  (*(v6 + 8))(v5, v6);
  v7 = a2[8];
  if ((v7 & 1) == 0 && (!v7 || (v7 & 2) != 0))
  {
    swift_beginAccess();
    sub_1BF082874(a3, v8, v9, v10, v11, v12, v13, v14, v18, v19);
    swift_endAccess();
  }

  v15 = a2[6];
  v16 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v15);
  return (*(v16 + 16))(v15, v16);
}

uint64_t sub_1BF0E0EF4(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  sub_1BF0E32B4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF028120(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17923C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v56 = &v55 - v16;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v55 - v20;
  v22 = 0;
  v64 = a1;
  v23 = *(a1 + 16);
  v66 = v11 + 16;
  v62 = (v11 + 8);
  v57 = (v11 + 32);
  v59 = MEMORY[0x1E69E7CC0];
  while (v23 != v22)
  {
    v61 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v60 = *(v11 + 72);
    v24 = *(v11 + 16);
    v24(v21, v64 + v61 + v60 * v22, v10, v19);
    if (*(v65 + 16) && (v25 = v65, sub_1BF082148(), (v27 & 1) != 0))
    {
      v28 = v26;
      v29 = v10;
      v30 = v22;
      v31 = v21;
      v32 = v9;
      v33 = v11;
      v34 = *(v25 + 56);
      v35 = type metadata accessor for AuthToken(0);
      v36 = v34 + *(*(v35 - 8) + 72) * v28;
      v37 = v23;
      v38 = v63;
      v11 = v33;
      v9 = v32;
      v21 = v31;
      v22 = v30;
      v10 = v29;
      sub_1BF0E3424(v36, v63, type metadata accessor for AuthToken);
      v39 = 1;
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v35);
      v40 = v38;
      v23 = v37;
      sub_1BF0E2F3C(v40, sub_1BF0E32B4);
    }

    else
    {
      v41 = type metadata accessor for AuthToken(0);
      v42 = v63;
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v41);
      sub_1BF0E2F3C(v42, sub_1BF0E32B4);
      (v24)(v9, v21, v10);
      v39 = 0;
    }

    __swift_storeEnumTagSinglePayload(v9, v39, 1, v10);
    (*v62)(v21, v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1BF0E2F3C(v9, sub_1BF028120);
      ++v22;
    }

    else
    {
      v43 = v56;
      v44 = *v57;
      (*v57)(v56, v9, v10);
      v44(v58, v43, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6444(0, *(v59 + 16) + 1, 1, v59);
        v59 = v52;
      }

      v46 = v60;
      v45 = v61;
      v48 = *(v59 + 16);
      v47 = *(v59 + 24);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v61 = v48 + 1;
        sub_1BF0A6444(v47 > 1, v48 + 1, 1, v59);
        v49 = v61;
        v59 = v53;
      }

      ++v22;
      v50 = v58;
      v51 = v59;
      *(v59 + 16) = v49;
      v44((v51 + v45 + v48 * v46), v50, v10);
    }
  }

  return v59;
}

uint64_t sub_1BF0E1374(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  v4 = qword_1ED8F0210;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_1ED8F0218;
  sub_1BF09A304();

  sub_1BEFF77FC(v5, sub_1BF0E3358, a3);
}

uint64_t sub_1BF0E14DC(__n128 a1, uint64_t a2, unint64_t a3, char a4, uint64_t (*a5)(uint64_t, __n128))
{
  a1.n128_u64[0] = a3;
  if (a4)
  {
    a1.n128_f64[0] = 1.79769313e308;
  }

  return a5(a2, a1);
}

uint64_t sub_1BF0E1584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = a1;
  v20 = sub_1BF0E0EF4(a1, a2);
  if (*(v20 + 16))
  {
    v36 = v19;
    v37 = a8;
    v21 = a5;
    sub_1BEFF1184(0, &qword_1EBDCA9E0, sub_1BF096F0C, type metadata accessor for Promise);
    v22 = swift_allocObject();
    v38 = 0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v23 = UnfairLock.init(options:)(&v38);
    sub_1BEFF1184(0, &qword_1EBDCAA08, sub_1BF096F0C, type metadata accessor for Seal);
    swift_allocObject();
    *(v22 + 16) = sub_1BF0942FC(v23);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1BF0E3174;
    *(v24 + 24) = v22;
    swift_retain_n();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF09EA68();
    v26 = v25;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF147214(v26, a13, a14, a11, v21, a6, v20, a9, a10);

    v27 = swift_allocObject();
    v27[2] = sub_1BF0E3184;
    v27[3] = v24;
    v27[4] = a2;
    v28 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = off_1ED8F0218;
    sub_1BF09A64C();

    v30 = swift_allocObject();
    v30[2] = a12;
    v30[3] = a2;
    v30[4] = sub_1BF0E3184;
    v30[5] = v24;
    v30[6] = sub_1BF0E317C;
    v30[7] = v22;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BEFF77FC(v29, sub_1BF0E31AC, v30);

    a8 = v37;
    v19 = v36;
  }

  else
  {

    sub_1BF17923C();
    type metadata accessor for AuthToken(0);
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v31 = sub_1BF179DAC();
    sub_1BEFF1184(0, &qword_1EBDCA9E0, sub_1BF096F0C, type metadata accessor for Promise);
    swift_allocObject();
    sub_1BF0AAE6C(a2, v31);
  }

  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  v32 = off_1ED8F0218;
  sub_1BF0DB114(off_1ED8F0218, sub_1BF0E370C, 0);

  v33 = swift_allocObject();
  v33[2] = a12;
  v33[3] = v19;
  v33[4] = a7;
  v33[5] = a8;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF0DB2A4(v32, sub_1BF0E31BC, v33);

  v34 = sub_1BF0DB114(v32, sub_1BF0E370C, 0);

  return v34;
}

uint64_t sub_1BF0E1B34(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if ((a2 & 1) == 0 || !*(a3 + 16))
  {
    return a6(a1);
  }

  sub_1BF17923C();
  type metadata accessor for AuthToken(0);
  sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v8 = sub_1BF179DAC();
  a4(a3, v8);
}

uint64_t sub_1BF0E1C24(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *))
{
  if ((a2 & 2) == 0)
  {
    goto LABEL_7;
  }

  v6 = sub_1BF0E0EF4(a3, a1);
  if (!*(v6 + 16))
  {

LABEL_7:
    sub_1BF17923C();
    type metadata accessor for AuthToken(0);
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v11 = sub_1BF179DAC();
    sub_1BEFF1184(0, &qword_1EBDCA9E0, sub_1BF096F0C, type metadata accessor for Promise);
    swift_allocObject();
    return sub_1BF0AAE6C(a1, v11);
  }

  v12 = 0;
  v13 = 1;
  a4(v6, &v12);

  *(swift_allocObject() + 16) = a1;
  v7 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1BF09A51C();
  v9 = v8;

  return v9;
}

uint64_t sub_1BF0E1E18(uint64_t a1, uint64_t a2)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return a2;
}

uint64_t sub_1BF0E1E54(void *a1, uint64_t a2)
{
  sub_1BF0DC608(a1, a2);
  OUTLINED_FUNCTION_0_53();
  sub_1BEFF1184(0, v2, v3, type metadata accessor for Promise);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  return sub_1BF0AADDC();
}

uint64_t sub_1BF0E1EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = *(a1 + 16);
  sub_1BEFF1184(0, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
  v7 = swift_allocObject();
  if (v6)
  {
    v10 = 0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v8 = UnfairLock.init(options:)(&v10);
    sub_1BEFF1184(0, &qword_1ED8E9DC8, sub_1BF027B68, type metadata accessor for Seal);
    swift_allocObject();
    *(v7 + 16) = sub_1BF034CD4(v8);
    swift_retain_n();
    sub_1BF0E2058(sub_1BF0E30E0, v7, sub_1BF0E30E8, v7, a2, a3, a1);

    return v7;
  }

  else
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return sub_1BF0AADDC();
  }
}

uint64_t sub_1BF0E2058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  a5(a7);
  v12 = swift_allocObject();
  v12[2] = sub_1BF0E30F0;
  v12[3] = v11;
  v12[4] = a7;
  v13 = qword_1ED8F0210;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (v13 != -1)
  {
    swift_once();
  }

  sub_1BF08C6B4(off_1ED8F0218, sub_1BF0E3128, v12);
}

void sub_1BF0E21B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BEFF51A8(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BF0E22B0(void *a1)
{
  v3 = *(sub_1BF17923C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BF0E0790(a1, v4);
}

unint64_t *sub_1BF0E239C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = swift_retain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      a2 = sub_1BF0E277C(v16, v10, a1, a2, a3);
      MEMORY[0x1BFB547B0](v16, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = (v17 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1BF1470D8(0, v10, v13);

  sub_1BF0E2574(v13, v10, a1, a2);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v14;
  }

LABEL_6:

  return a2;
}

void sub_1BF0E2574(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for AuthToken(0);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1BF0E3424(*(a3 + 56) + *(v24 + 72) * v17, v8, type metadata accessor for AuthToken);
    v18 = v25(v8);
    sub_1BF0E2F3C(v8, type metadata accessor for AuthToken);
    if (v18)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1BF0E2824(v22, v21, v23, a3);

        return;
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1BF0E277C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    sub_1BF0E2574(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_1BF0E2824(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AuthToken(0);
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v59 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = v47 - v13;
  v58 = sub_1BF17923C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v50 = v47 - v19;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1BF0E2E40(0);
  result = sub_1BF17B52C();
  v21 = result;
  if (a2 < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *a1;
  }

  v23 = 0;
  v47[1] = v56 + 16;
  v48 = a2;
  v57 = v56 + 32;
  v24 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v25 = v58;
  while (v22)
  {
    v26 = v16;
    v27 = __clz(__rbit64(v22));
    v53 = (v22 - 1) & v22;
LABEL_16:
    v30 = v27 | (v23 << 6);
    v31 = a4[6];
    v32 = v56;
    v55 = *(v56 + 72);
    v33 = v50;
    (*(v56 + 16))(v50, v31 + v55 * v30, v25);
    v34 = a4[7];
    v54 = *(v52 + 72);
    v35 = v34 + v54 * v30;
    v36 = v51;
    sub_1BF0E3424(v35, v51, type metadata accessor for AuthToken);
    v37 = *(v32 + 32);
    v16 = v26;
    v37(v26, v33, v25);
    sub_1BF0A8A64(v36, v59);
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = sub_1BF179F1C();
    v38 = -1 << *(v21 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v24 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_25:
    *(v24 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v37((*(v21 + 48) + v41 * v55), v16, v58);
    result = sub_1BF0A8A64(v59, *(v21 + 56) + v41 * v54);
    ++*(v21 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v47[0];
    v22 = v53;
    if (!a3)
    {
      return v21;
    }
  }

  v28 = v23;
  while (1)
  {
    v23 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v23 >= a2)
    {
      return v21;
    }

    v29 = a1[v23];
    ++v28;
    if (v29)
    {
      v26 = v16;
      v27 = __clz(__rbit64(v29));
      v53 = (v29 - 1) & v29;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BF0E2D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BF0E1E18(*a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void sub_1BF0E2E40(uint64_t a1)
{
  if (!qword_1EBDCA8A8)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken(255);
    sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1BF17B53C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCA8A8);
    }
  }
}

uint64_t sub_1BF0E2F3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BF0E2F94(uint64_t a1)
{
  if (!qword_1ED8E9D18[0])
  {
    v2 = sub_1BF17923C();
    v3 = type metadata accessor for AuthToken(255);
    v4 = sub_1BF00AF3C(&qword_1ED8ED690, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v5 = type metadata accessor for Manager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED8E9D18);
    }
  }
}

uint64_t sub_1BF0E30F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1BF0E31DC(uint64_t a1, uint64_t a2)
{
  sub_1BEFF1184(0, &qword_1ED8EACF8, sub_1BF0D7CEC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF0E3424(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1BF0E349C()
{
  result = qword_1EBDCBEA0;
  if (!qword_1EBDCBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEA0);
  }

  return result;
}

void sub_1BF0E34F0(uint64_t a1)
{
  if (!qword_1ED8E9E18[0])
  {
    v2 = type metadata accessor for AuthToken(255);
    v4 = type metadata accessor for Seal.Resolution(a1, v2, v2, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1ED8E9E18);
    }
  }
}

uint64_t sub_1BF0E354C(uint64_t a1, uint64_t a2)
{
  sub_1BEFF1184(0, &qword_1ED8E9E10, sub_1BF0E34F0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenManagerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF0E3690()
{
  result = qword_1EBDCBEA8;
  if (!qword_1EBDCBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEA8);
  }

  return result;
}

uint64_t sub_1BF0E3740(uint64_t result)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  v2 = (result + 32);
  for (i = MEMORY[0x1E69E6290]; v1; --v1)
  {
    v15 = *v2;
    v16[3] = i;
    v16[4] = MEMORY[0x1E6969DF8];
    v16[0] = &v15;
    v16[1] = v16;
    v4 = __swift_project_boxed_opaque_existential_1(v16, i);
    v5 = *v4;
    if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
    {
      if (v7 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v14 = v6 - v5;
        memcpy(__dst, v5, v6 - v5);
        v8 = *__dst;
        v9 = v12 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v14 << 16)) << 32);
        v12 = v9;
      }

      else
      {
        sub_1BF178F6C();
        swift_allocObject();
        v10 = sub_1BF178F2C();
        v11 = v10;
        if (v7 >= 0x7FFFFFFF)
        {
          sub_1BF1792CC();
          v8 = swift_allocObject();
          *(v8 + 16) = 0;
          *(v8 + 24) = v7;
          v9 = v11 | 0x8000000000000000;
        }

        else
        {
          v8 = v7 << 32;
          v9 = v10 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1BF17939C();
    result = sub_1BF014E18(v8, v9);
    ++v2;
  }

  return result;
}

uint64_t sub_1BF0E3904(uint64_t a1)
{
  v2 = v1;
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = 0;
  v24 = v7;
  v25 = v3;
  if (v6)
  {
    while (1)
    {
      v27 = v2;
      v9 = v8;
LABEL_9:
      v10 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
      v11 = *(a1 + 48) + v10;
      v12 = (*(a1 + 56) + v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = sub_1BF01A91C(*v11, *(v11 + 8));
      v28 = v15[2];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v16 = sub_1BF088784(&v28, &v29);
      v18 = v17;
      sub_1BF17939C();
      sub_1BF014E18(v16, v18);
      sub_1BF0E3740(v15);
      v2 = v27;
      if (v27)
      {
        break;
      }

      v19 = sub_1BF01A91C(v14, v13);
      v28 = v19[2];
      v20 = sub_1BF088784(&v28, &v29);
      v22 = v21;
      sub_1BF17939C();
      sub_1BF014E18(v20, v22);
      sub_1BF0E3740(v19);
      v6 &= v6 - 1;

      v8 = v9;
      v7 = v24;
      v3 = v25;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v27 = v2;
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1BF0E3B34()
{
  OUTLINED_FUNCTION_6_25();
  v5 = *MEMORY[0x1E69E9840];
  v4 = v0;
  sub_1BF088784(&v4, &v5);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  return sub_1BF014E18(v1, v2);
}

uint64_t sub_1BF0E3BB8()
{
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_13_15(v0, *MEMORY[0x1E69E9840], v4, SWORD2(v4), SBYTE6(v4), SHIBYTE(v4), v5);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  return sub_1BF014E18(v1, v2);
}

uint64_t sub_1BF0E3C28()
{
  OUTLINED_FUNCTION_6_25();
  v5 = *MEMORY[0x1E69E9840];
  v4 = v0;
  sub_1BF088784(&v4, &v5);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  return sub_1BF014E18(v1, v2);
}

uint64_t sub_1BF0E3CAC()
{
  OUTLINED_FUNCTION_6_25();
  v5 = *MEMORY[0x1E69E9840];
  v4 = v0;
  sub_1BF088784(&v4, &v5);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  return sub_1BF014E18(v1, v2);
}

uint64_t sub_1BF0E3D30()
{
  OUTLINED_FUNCTION_6_25();
  v5 = *MEMORY[0x1E69E9840];
  v4 = v0;
  sub_1BF088784(&v4, &v5);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  return sub_1BF014E18(v1, v2);
}

uint64_t sub_1BF0E3DB4()
{
  OUTLINED_FUNCTION_6_25();
  v5 = *MEMORY[0x1E69E9840];
  v4 = v0;
  sub_1BF088784(&v4, &v5);
  OUTLINED_FUNCTION_5_20();
  sub_1BF17939C();
  v1 = OUTLINED_FUNCTION_49();
  return sub_1BF014E18(v1, v2);
}

void sub_1BF0E3E38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v4 >> 32;
      if (v4 >> 32 < v4)
      {
        goto LABEL_12;
      }

      v12 = v4;
      goto LABEL_9;
    case 2uLL:
      goto LABEL_4;
    case 3uLL:
      v6 = sub_1BF1794FC();
      *&v24 = 0;
      *(&v24 + 6) = 0;
      OUTLINED_FUNCTION_18_7();
      v8 = v14;
      swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v11 = *(v15 + 64);
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      __break(1u);
LABEL_12:
      __break(1u);
      break;
    default:
      *&v24 = *a1;
      WORD4(v24) = v3;
      BYTE10(v24) = BYTE2(v3);
      BYTE11(v24) = BYTE3(v3);
      BYTE12(v24) = BYTE4(v3);
      BYTE13(v24) = BYTE5(v3);
      v6 = sub_1BF1794FC();
      OUTLINED_FUNCTION_18_7();
      v8 = v7;
      swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v11 = *(v10 + 64);
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_4:
        v12 = *(v4 + 16);
        v13 = *(v4 + 24);
LABEL_9:
        sub_1BF0E5A24(v12, v13, a2);
      }

      else
      {
LABEL_6:
        v16 = v9;
        memcpy(v9, &v24, v11);
        (*(v8 + 16))(a2, v16, v6);
        OUTLINED_FUNCTION_28();
      }

      sub_1BF1794FC();
      v17 = OUTLINED_FUNCTION_49();
      sub_1BF014DC0(v17, v18);
      OUTLINED_FUNCTION_16_11();
      sub_1BF05F1AC(v19, v20, v21, v22);
      v23 = v24;
      sub_1BF014E18(*a1, *(a1 + 8));
      *a1 = v23;
      break;
  }
}

uint64_t sub_1BF0E40B8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E572C(v1, v2);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_14_15();
  return OUTLINED_FUNCTION_11_13();
}

uint64_t sub_1BF0E4110(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E57E0(v1, v2);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_14_15();
  return OUTLINED_FUNCTION_11_13();
}

uint64_t sub_1BF0E4168(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E5894(v1, v2);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_14_15();
  return OUTLINED_FUNCTION_11_13();
}

float sub_1BF0E41C0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E5948(v2, v3);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_49();
  sub_1BF014DC0(v6, v7);
  OUTLINED_FUNCTION_16_11();
  sub_1BF05F1AC(v8, v9, v10, v11);
  sub_1BF014E18(*v1, *(v1 + 8));
  *v1 = v13;
  *(v1 + 8) = v14;
  return v5;
}

void *sub_1BF0E4238@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  result = swift_slowAlloc();
  if (a1)
  {
    v7 = *(v5 + 64);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = result;
      memmove(result, a1, v7);
      (*(v5 + 16))(a2, v8, v4);
      return MEMORY[0x1BFB547B0](v8, -1, -1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void CodableError.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v6 = sub_1BF17910C();
  v7 = [v6 domain];
  sub_1BF17A0AC();
  OUTLINED_FUNCTION_19_0();

  v8 = [v6 code];
  v9 = sub_1BF0E4484(v6);

  *a2 = v2;
  a2[1] = v3;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t CodableError.domain.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

TeaFoundation::CodableError __swiftcall CodableError.init(_:)(NSError *a1)
{
  v5 = v1;
  v6 = [(NSError *)a1 domain];
  sub_1BF17A0AC();
  OUTLINED_FUNCTION_5_20();

  *v5 = v2;
  v5[1] = v3;
  v5[2] = [(NSError *)a1 code];
  v7 = sub_1BF0E4484(a1);

  v5[3] = v7;
  result.errorUserInfo._rawValue = v11;
  result.errorCode = v10;
  result.domain._object = v9;
  result.domain._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1BF0E4484(void *a1)
{
  v2 = sub_1BF179DAC();
  v3 = [a1 userInfo];
  v4 = sub_1BF179D5C();

  sub_1BF17A0AC();
  sub_1BF0243AC(v4, &v24);

  if (v25)
  {
    if (OUTLINED_FUNCTION_20_10(v5, v6, v7, MEMORY[0x1E69E6158], v8, v9, v10, v11, v22, v23, v24))
    {
      sub_1BF17A0AC();
      swift_isUniquelyReferenced_nonNull_native();
      *&v24 = v2;
      OUTLINED_FUNCTION_49();
      sub_1BF010A20();

      v2 = v24;
    }
  }

  else
  {
    sub_1BEFFD168(&v24);
  }

  v12 = [a1 userInfo];
  v13 = sub_1BF179D5C();

  sub_1BF17A0AC();
  sub_1BF0243AC(v13, &v24);

  if (v25)
  {
    if (OUTLINED_FUNCTION_20_10(v14, v15, v16, MEMORY[0x1E69E6158], v17, v18, v19, v20, v22, v23, v24))
    {
      sub_1BF17A0AC();
      OUTLINED_FUNCTION_19_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v24 = v2;
      OUTLINED_FUNCTION_16_11();
      sub_1BF010A20();

      return v24;
    }
  }

  else
  {
    sub_1BEFFD168(&v24);
  }

  return v2;
}

uint64_t CodableError.write(to:)()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1BF01A91C(*v0, v0[1]);
  v9 = v4[2];
  v5 = sub_1BF088784(&v9, &v10);
  v7 = v6;
  sub_1BF17939C();
  sub_1BF014E18(v5, v7);
  sub_1BF0E3740(v4);

  if (!v1)
  {
    v9 = v3;
    sub_1BF088784(&v9, &v10);
    OUTLINED_FUNCTION_19_0();
    sub_1BF17939C();
    sub_1BF014E18(v4, v5);
    v9 = *(v2 + 16);
    sub_1BF088784(&v9, &v10);
    OUTLINED_FUNCTION_19_0();
    sub_1BF17939C();
    sub_1BF014E18(v4, v5);
    return sub_1BF0E3904(v2);
  }

  return result;
}

uint64_t static CodableError.read(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.read(from:)(a1);
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1BF05FF74(a1);
    result = sub_1BF0E4868(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = result;
  }

  return result;
}

void *sub_1BF0E4868(uint64_t *a1)
{
  v4 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1BF05FF74(a1);
  if (v2)
  {
    return v1;
  }

  v7 = v6;
  if (v6 < 0)
  {
    sub_1BF0E5CAC();
    swift_allocError();
    v9 = 1;
    goto LABEL_6;
  }

  if (MEMORY[0x1BFB51150](*a1, a1[1]) < v6)
  {
    sub_1BF0E5CAC();
    swift_allocError();
    v9 = 2;
LABEL_6:
    *v8 = v9;
    swift_willThrow();
    return v1;
  }

  v10 = 0;
  v1 = MEMORY[0x1E69E7CC8];
  v31 = v7;
  while (1)
  {
    if (v7 == v10)
    {
      return v1;
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_1BF05FB18(a1);
    sub_1BF17A10C();
    sub_1BEFF5158(0, &qword_1ED8EDD80, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    sub_1BF060290();
    v33 = sub_1BF17A0DC();
    v12 = v11;

    v34 = v12;
    if (!v12)
    {
      sub_1BF0E5CAC();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();
LABEL_23:

      return v1;
    }

    sub_1BF05FB18(a1);
    sub_1BF17A10C();
    v13 = sub_1BF17A0DC();
    v15 = v14;

    if (!v15)
    {
      sub_1BF0E5CAC();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();

      goto LABEL_23;
    }

    v32 = v13;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1BF014CA8();
    if (__OFADD__(v1[2], (v17 & 1) == 0))
    {
      goto LABEL_26;
    }

    v18 = v16;
    v19 = v17;
    sub_1BF0E5D00(0, &qword_1ED8EADD0, MEMORY[0x1E69E6DC8]);
    if (sub_1BF17B43C())
    {
      v20 = sub_1BF014CA8();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    v7 = v31;
    if (v19)
    {
      v22 = (v1[7] + 16 * v18);
      *v22 = v32;
      v22[1] = v15;
    }

    else
    {
      v1[(v18 >> 6) + 8] |= 1 << v18;
      v23 = (v1[6] + 16 * v18);
      *v23 = v33;
      v23[1] = v34;
      v24 = (v1[7] + 16 * v18);
      *v24 = v32;
      v24[1] = v15;
      v25 = v1[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v1[2] = v27;
    }

    ++v10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0E4C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657355726F727265 && a2 == 0xED00006F666E4972)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF17B86C();

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

uint64_t sub_1BF0E4D8C(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 0x646F43726F727265;
  }

  return 0x657355726F727265;
}

uint64_t sub_1BF0E4DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0E4C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0E4E20(uint64_t a1)
{
  v2 = sub_1BF0E53CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0E4E5C(uint64_t a1)
{
  v2 = sub_1BF0E53CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  sub_1BF0E5420(0, &qword_1EBDCBEB0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v17 - v9;
  v11 = *(v1 + 16);
  v17[0] = *(v1 + 24);
  v17[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0E53CC();
  sub_1BF17BC1C();
  v20 = 0;
  v12 = v17[2];
  sub_1BF17B66C();
  if (!v12)
  {
    v13 = v17[0];
    v19 = 1;
    sub_1BF17B68C();
    v17[3] = v13;
    v18 = 2;
    OUTLINED_FUNCTION_0_54();
    sub_1BF0E5D00(0, v14, v15);
    sub_1BF0E5484(&qword_1EBDCBEC8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1BF17B69C();
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t CodableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF0E5420(0, &qword_1EBDCBED0, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0E53CC();
  sub_1BF17BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = sub_1BF17B5CC();
  v9 = v8;
  v15 = sub_1BF17B5EC();
  OUTLINED_FUNCTION_0_54();
  sub_1BF0E5D00(0, v10, v11);
  sub_1BF0E5484(&qword_1EBDCBED8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1BF17B5FC();
  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v15;
  a2[3] = v16;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BF0E52E8(uint64_t a1)
{
  v2 = sub_1BF0E56D8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BF0E5324(uint64_t a1)
{
  v2 = sub_1BF0E56D8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1BF0E53CC()
{
  result = qword_1EBDCBEB8;
  if (!qword_1EBDCBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEB8);
  }

  return result;
}

void sub_1BF0E5420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF0E53CC();
    v7 = a3(a1, &type metadata for CodableError.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF0E5484(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_54();
    sub_1BF0E5D00(255, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0E55D4()
{
  result = qword_1EBDCBEE0;
  if (!qword_1EBDCBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEE0);
  }

  return result;
}

unint64_t sub_1BF0E562C()
{
  result = qword_1EBDCBEE8;
  if (!qword_1EBDCBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEE8);
  }

  return result;
}

unint64_t sub_1BF0E5684()
{
  result = qword_1EBDCBEF0;
  if (!qword_1EBDCBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEF0);
  }

  return result;
}

unint64_t sub_1BF0E56D8()
{
  result = qword_1EBDCBEF8[0];
  if (!qword_1EBDCBEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBEF8);
  }

  return result;
}

void sub_1BF0E572C(char a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v2 == v3)
      {
        goto LABEL_5;
      }

      __break(1u);
      break;
    case 2uLL:
LABEL_5:
      OUTLINED_FUNCTION_4_23();
      sub_1BF0E5AB8();
      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      break;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
      break;
  }
}

void sub_1BF0E57E0(__int16 a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v2 == v3)
      {
        goto LABEL_5;
      }

      __break(1u);
      return;
    case 2uLL:
LABEL_5:
      OUTLINED_FUNCTION_4_23();
      sub_1BF0E5B2C();
      goto LABEL_6;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      goto LABEL_6;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
LABEL_6:
      OUTLINED_FUNCTION_12_16();
      return;
  }
}

void sub_1BF0E5894(int a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v2 == v3)
      {
        goto LABEL_5;
      }

      __break(1u);
      return;
    case 2uLL:
LABEL_5:
      OUTLINED_FUNCTION_4_23();
      sub_1BF0E5BA0();
      goto LABEL_6;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      goto LABEL_6;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
LABEL_6:
      OUTLINED_FUNCTION_12_16();
      return;
  }
}

uint64_t sub_1BF0E5948(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_7;
      }

      __break(1u);
      break;
    case 2uLL:
      result = *(result + 16);
LABEL_7:
      result = sub_1BF0E5C14(result);
      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      result = MEMORY[0x1BFB547B0]();
      break;
    default:
      *swift_slowAlloc() = result;
      result = MEMORY[0x1BFB547B0]();
      break;
  }

  return result;
}

char *sub_1BF0E5A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1BF178F3C();
  v7 = result;
  if (result)
  {
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v7 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1BF178F4C();
    return sub_1BF0E4238(v7, a3);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

_BYTE *sub_1BF0E5AB8()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return OUTLINED_FUNCTION_12_16();
  }

LABEL_8:
  __break(1u);
  return result;
}

_WORD *sub_1BF0E5B2C()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return OUTLINED_FUNCTION_12_16();
  }

LABEL_8:
  __break(1u);
  return result;
}

_DWORD *sub_1BF0E5BA0()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return OUTLINED_FUNCTION_12_16();
  }

LABEL_8:
  __break(1u);
  return result;
}

_DWORD *sub_1BF0E5C14(uint64_t a1)
{
  v2 = sub_1BF178F3C();
  if (v2)
  {
    v3 = v2;
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v5)
  {
    *result = *v5;
    return MEMORY[0x1BFB547B0]();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1BF0E5CAC()
{
  result = qword_1EBDCAD38[0];
  if (!qword_1EBDCAD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCAD38);
  }

  return result;
}

void sub_1BF0E5D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Bool __swiftcall URL.isHTTPURL()()
{
  v0 = sub_1BF1791EC();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v0 == 1886680168 && v1 == 0xE400000000000000)
  {
    goto LABEL_14;
  }

  v3 = sub_1BF17B86C();

  if ((v3 & 1) == 0)
  {
LABEL_8:
    v5 = sub_1BF1791EC();
    if (!v6)
    {
      v4 = 0;
      return v4 & 1;
    }

    if (v5 != 0x7370747468 || v6 != 0xE500000000000000)
    {
      v4 = sub_1BF17B86C();
LABEL_15:

      return v4 & 1;
    }

LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 1;
  return v4 & 1;
}

Swift::String_optional __swiftcall URL.queryItem(for:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v3 = sub_1BF178E2C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_3_28();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v51 - v10;
  v12 = sub_1BF178F0C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_0_55();
  sub_1BF0E6760(0, v20, v21);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v51 - v28;
  sub_1BF178E7C();
  sub_1BF01DBC0(v29, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v12) == 1)
  {
    v30 = MEMORY[0x1E69681B8];
    sub_1BF0E6F18(v29, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v31 = v25;
    v32 = &qword_1ED8EE420;
    v33 = v30;
    goto LABEL_15;
  }

  (*(v14 + 32))(v19, v25, v12);
  v34 = sub_1BF178E5C();
  if (!v34)
  {
    (*(v14 + 8))(v19, v12);
    OUTLINED_FUNCTION_0_55();
    v31 = v29;
LABEL_15:
    sub_1BF0E6F18(v31, v32, v33);
    v44 = 0;
    v45 = 0;
LABEL_19:
    v34 = v44;
    v35 = v45;
    goto LABEL_21;
  }

  v36 = v34;
  v53 = v29;
  v54 = v14;
  v55 = v12;
  v52 = v11;
  v37 = 0;
  v38 = *(v34 + 16);
  v56 = v5 + 16;
  v57 = v19;
  while (1)
  {
    v39 = v57;
    if (v38 == v37)
    {

      (*(v54 + 8))(v39, v55);
      OUTLINED_FUNCTION_0_55();
      v31 = v53;
      goto LABEL_15;
    }

    if (v37 >= *(v36 + 16))
    {
      break;
    }

    (*(v5 + 16))(v1, v36 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v37, v3);
    if (sub_1BF178E0C() == countAndFlagsBits && v40 == object)
    {

LABEL_18:
      v46 = v52;
      (*(v5 + 32))(v52, v1, v3);
      v44 = sub_1BF178E1C();
      v45 = v47;
      (*(v54 + 8))(v39, v55);
      OUTLINED_FUNCTION_0_55();
      sub_1BF0E6F18(v53, v48, v49);
      (*(v5 + 8))(v46, v3);
      goto LABEL_19;
    }

    v42 = object;
    v43 = sub_1BF17B86C();

    if (v43)
    {

      v39 = v57;
      goto LABEL_18;
    }

    v34 = (*(v5 + 8))(v1, v3);
    ++v37;
    object = v42;
  }

  __break(1u);
LABEL_21:
  result.value._object = v35;
  result.value._countAndFlagsBits = v34;
  return result;
}

uint64_t URL.removingQueryItems(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF178F0C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v45 = v12 - v11;
  OUTLINED_FUNCTION_2_37();
  sub_1BF0E6760(0, v13, v14);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v41 - v17;
  OUTLINED_FUNCTION_0_55();
  sub_1BF0E6760(0, v19, v20);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v41 - v23;
  v25 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v42 = v8;
    v43 = v3;
    v44 = a2;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v26 = v46;
    v27 = a1 + 40;
    do
    {
      v28 = sub_1BF17A15C();
      v30 = v29;
      v46 = v26;
      v31 = *(v26 + 16);
      if (v31 >= *(v26 + 24) >> 1)
      {
        sub_1BF00DD60();
        v26 = v46;
      }

      *(v26 + 16) = v31 + 1;
      v32 = v26 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v30;
      v27 += 16;
      --v25;
    }

    while (v25);
    v3 = v43;
    a2 = v44;
    v8 = v42;
  }

  v33 = sub_1BF09EBD4(v26);
  sub_1BF178E7C();
  sub_1BF0E67B4(v24, v33);

  if (__swift_getEnumTagSinglePayload(v24, 1, v6))
  {
  }

  else
  {
    sub_1BF178E6C();
  }

  if (__swift_getEnumTagSinglePayload(v24, 1, v6))
  {
    v34 = sub_1BF17923C();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v34);
  }

  else
  {
    v35 = v45;
    (*(v8 + 16))(v45, v24, v6);
    sub_1BF178E8C();
    (*(v8 + 8))(v35, v6);
    v34 = sub_1BF17923C();
    if (__swift_getEnumTagSinglePayload(v18, 1, v34) != 1)
    {
      (*(*(v34 - 8) + 32))(a2, v18, v34);
      goto LABEL_16;
    }
  }

  sub_1BF17923C();
  (*(*(v34 - 8) + 16))(a2, v3, v34);
  if (__swift_getEnumTagSinglePayload(v18, 1, v34) != 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_1BF0E6F18(v18, v36, v37);
  }

LABEL_16:
  OUTLINED_FUNCTION_0_55();
  return sub_1BF0E6F18(v24, v38, v39);
}

void sub_1BF0E6760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF0E67B4(uint64_t a1, uint64_t a2)
{
  v49 = sub_1BF178E2C();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v48 = &v37 - v8;
  sub_1BF0E6760(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v37 - v11;
  v13 = sub_1BF178F0C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF01DBC0(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1BF0E6F18(v12, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  result = sub_1BF178E5C();
  if (!result)
  {
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  v19 = result;
  v38 = v17;
  v39 = v14;
  v40 = v13;
  v20 = 0;
  v46 = *(result + 16);
  v44 = v47 + 16;
  v41 = (v47 + 8);
  v42 = (v47 + 32);
  v21 = MEMORY[0x1E69E7CC0];
  for (i = result; ; v19 = i)
  {
LABEL_5:
    if (v20 == v46)
    {
      (*(v39 + 8))(v38, v40);

      return v21;
    }

    if (v20 >= *(v19 + 16))
    {
      break;
    }

    v22 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v23 = *(v47 + 72);
    (*(v47 + 16))(v48, v19 + v22 + v23 * v20++, v49);
    sub_1BF178E0C();
    v24 = sub_1BF17A15C();
    v26 = v25;

    if (*(a2 + 16))
    {
      sub_1BF17BB6C();
      sub_1BF179F3C();
      v27 = sub_1BF17BB9C();
      v28 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v29 = v27 & v28;
        if (((*(a2 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {
          break;
        }

        v30 = (*(a2 + 48) + 16 * v29);
        if (*v30 != v24 || v30[1] != v26)
        {
          v32 = sub_1BF17B86C();
          v27 = v29 + 1;
          if ((v32 & 1) == 0)
          {
            continue;
          }
        }

        result = (*v41)(v48, v49);
        v19 = i;
        goto LABEL_5;
      }
    }

    v33 = *v42;
    (*v42)(v43, v48, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BF070704(0, *(v21 + 16) + 1, 1);
      v21 = v50;
    }

    v36 = *(v21 + 16);
    v35 = *(v21 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1BF070704(v35 > 1, v36 + 1, 1);
      v21 = v50;
    }

    *(v21 + 16) = v36 + 1;
    result = (v33)(v21 + v22 + v36 * v23, v43, v49);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall URL.hashParameter(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1BF178E2C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_3_28();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  v12 = sub_1BF178F0C();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  sub_1BF178EFC();
  sub_1BF17921C();
  sub_1BF178EBC();
  v20 = sub_1BF178E5C();
  if (v20)
  {
    v22 = v20;
    v34 = v19;
    v35 = v14;
    v33 = v11;
    v36 = v12;
    v23 = 0;
    v24 = *(v20 + 16);
    v37 = v5 + 16;
    while (1)
    {
      if (v24 == v23)
      {

        (*(v35 + 8))(v34, v36);
        goto LABEL_13;
      }

      if (v23 >= *(v22 + 16))
      {
        break;
      }

      (*(v5 + 16))(v1, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v3);
      if (sub_1BF178E0C() == countAndFlagsBits && v25 == object)
      {

LABEL_15:

        v30 = v33;
        (*(v5 + 32))(v33, v1, v3);
        v28 = sub_1BF178E1C();
        v29 = v31;
        (*(v35 + 8))(v34, v36);
        (*(v5 + 8))(v30, v3);
        goto LABEL_16;
      }

      v27 = sub_1BF17B86C();

      if (v27)
      {
        goto LABEL_15;
      }

      v20 = (*(v5 + 8))(v1, v3);
      ++v23;
    }

    __break(1u);
  }

  else
  {
    (*(v14 + 8))(v19, v12);
LABEL_13:
    v28 = 0;
    v29 = 0;
LABEL_16:
    v20 = v28;
    v21 = v29;
  }

  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_1BF0E6F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF0E6760(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BF0E6F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t TestDataLoader.contentDirectory.getter()
{
  v1 = *(v0 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t TestDataLoader.__allocating_init(_:contentDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TestDataLoader.init(_:contentDirectory:)(a1, a2, a3);
  return v6;
}

void *TestDataLoader.init(_:contentDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *v3;
  sub_1BF0E734C();
  v9 = v8;
  v11 = v10;
  v12 = *(v31 + 80);
  v33 = a1;
  v30 = *(v31 + 88);
  v13 = (*(v30 + 8))(v12);
  v15 = sub_1BF0E7404(0x6E6F736A2ELL, 0xE500000000000000, v13, v14);
  v17 = v16;

  v29 = a2;
  v32 = v11;
  if (a3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](v15, v17);

    v18 = sub_1BF0E7404(47, 0xE100000000000000, a2, a3);
    v20 = v19;
  }

  else
  {
    v18 = sub_1BF0E7404(v15, v17, v9, v11);
    v20 = v21;
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1BF17A07C();

  v24 = [v22 fileExistsAtPath_];

  if (v24)
  {
    (*(*(v12 - 8) + 8))(v33, v12);
    if (a3)
    {

      v25 = v29;
    }

    else
    {
      v25 = v9;
      a3 = v32;
    }

    v4[4] = v25;
    v4[5] = a3;
    v4[2] = v18;
    v4[3] = v20;
  }

  else
  {

    type metadata accessor for TestDataLoader.TestDataError(0, v12, v30, v26);
    swift_getWitnessTable();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    (*(*(v12 - 8) + 8))(v33, v12);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

void sub_1BF0E734C()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = sub_1BF17A4DC();

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF0E7404(0x6E6F43747365542FLL, 0xED00002F746E6574, v2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF0E7404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF17A30C();
  sub_1BF17A20C();
  return v5;
}

uint64_t sub_1BF0E7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  TestDataLoader.loadData()(a1, a2, a3, a4);
  v14 = swift_allocObject();
  v14[2] = *(v13 + 80);
  v14[3] = a6;
  v14[4] = *(v13 + 88);
  v14[5] = a7;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;
  v14[9] = a4;
  v15 = qword_1ED8F0210;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_1BF09AAC4();
}

uint64_t TestDataLoader.loadData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF0C9B3C(0, a2, a3, a4);
  swift_allocObject();
  return sub_1BF08A5A8();
}

void sub_1BF0E76A0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v25 = a5;
  v26 = a4;
  v22 = a3;
  v23 = a2;
  v12 = *(a7 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = v15[1];
  type metadata accessor for _TeaJSONDecoder();
  swift_initStackObject();
  _TeaJSONDecoder.init()();
  sub_1BF015544(a7, v16, v17, a7, a9, v14);

  if (v9)
  {
    type metadata accessor for TestDataLoader.TestDataError(0, a6, v24, v18);
    swift_getWitnessTable();
    v19 = swift_allocError();
    *v20 = v9;
    v21 = v9;
    v26(v19);
  }

  else
  {
    v23(v14);
    (*(v12 + 8))(v14, a7);
  }
}

uint64_t sub_1BF0E786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v26 = a3;
  v7 = sub_1BF179B5C();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BF179BBC();
  v11 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF179B6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1BEFF6E88();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E7F98], v15);

  v21 = sub_1BF17ADAC();
  (*(v16 + 8))(v19, v15);
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = v27;
  v22[3] = v23;
  v22[4] = v28;
  v22[5] = sub_1BF096904;
  v22[6] = v20;
  aBlock[4] = sub_1BF0E83C0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  sub_1BF179B8C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54, MEMORY[0x1E69E6328]);
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v14, v10, v24);
  _Block_release(v24);

  (*(v30 + 8))(v10, v7);
  (*(v11 + 8))(v14, v29);
}

void sub_1BF0E7C68(uint64_t *a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1BF17A07C();
  v9 = [v7 contentsAtPath_];

  if (v9)
  {
    v11 = sub_1BF17935C();
    v13 = v12;

    a4(v11, v13);

    sub_1BF014E18(v11, v13);
  }

  else
  {
    type metadata accessor for TestDataLoader.TestDataError(0, *(v6 + 80), *(v6 + 88), v10);
    swift_getWitnessTable();
    v14 = swift_allocError();
    *v15 = 0;
    a2();
  }
}

uint64_t TestDataLoader.syncLoadDataWithType<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v8 = *v4;
  v9 = sub_1BF179BEC();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_semaphore_create(0);
  v24 = sub_1BF17AE6C();
  v14 = swift_allocBox();
  v16 = v15;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, a2);
  v28 = a2;
  v29 = a3;
  v30 = v4;
  v31 = a1;
  firstly<A>(closure:)(sub_1BF0E80D8);
  v17 = swift_allocObject();
  v17[2] = *(v8 + 80);
  v17[3] = a2;
  v17[4] = *(v8 + 88);
  v17[5] = a3;
  v17[6] = v14;

  v18 = MEMORY[0x1E69E7CA8];
  v19 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v19, sub_1BF0E8254, v17, v18 + 8);

  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v21 = qword_1ED8F0210;
  v22 = v13;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_1BF08C66C(off_1ED8F0218, sub_1BF095CF0, v20);

  sub_1BF179BCC();
  sub_1BF17ADBC();

  (*(v25 + 8))(v12, v26);
  swift_beginAccess();
  (*(*(v24 - 8) + 16))(v27, v16);
}

uint64_t sub_1BF0E8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF17AE6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - v9;
  v11 = swift_projectBox();
  (*(*(a4 - 8) + 16))(v10, a1, a4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
  swift_beginAccess();
  return (*(v7 + 40))(v11, v10, v6);
}

uint64_t TestDataLoader.deinit()
{

  return v0;
}

uint64_t TestDataLoader.__deallocating_deinit()
{
  TestDataLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF0E8384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF0E86DC()
{
  OUTLINED_FUNCTION_5_21();
  swift_getMetatypeMetadata();
  v3 = objc_allocWithZone(TFKey);
  v11 = OUTLINED_FUNCTION_1_17(v3, v4, v5, v6, v7, v8, v9, v10, v2);
  v14 = sub_1BEFE82CC(v11, v12, v13);
  v15 = [v14 address];

  v30 = v15;
  OUTLINED_FUNCTION_58();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v0;

  v25 = OUTLINED_FUNCTION_7_22(v17, v18, v19, v20, v21, v22, v23, v24, v30);
  v27 = sub_1BEFF7D88(v25, v26, v16);

  if (v27)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BF0E8A58()
{
  OUTLINED_FUNCTION_3_29();
  swift_getMetatypeMetadata();
  v3 = objc_allocWithZone(TFKey);
  v11 = OUTLINED_FUNCTION_1_17(v3, v4, v5, v6, v7, v8, v9, v10, v2);
  v14 = sub_1BEFE82CC(v11, v12, v13);
  v15 = [v14 address];

  OUTLINED_FUNCTION_58();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v25 = OUTLINED_FUNCTION_7_22(v17, v18, v19, v20, v21, v22, v23, v24, v15);
  v27 = sub_1BEFF7D88(v25, v26, v16);

  if (v27)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BF0E8C80(void *a1, void (*a2)(void))
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 104))(v3, v4);
  a2();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0E9020()
{
  OUTLINED_FUNCTION_5_21();
  sub_1BEFE8DAC();
  v3 = objc_allocWithZone(TFKey);
  v4 = v2;
  v12 = OUTLINED_FUNCTION_1_17(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  v15 = sub_1BEFE82CC(v12, v13, v14);
  v16 = [v15 address];

  v31 = v16;
  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v0;

  v26 = OUTLINED_FUNCTION_7_22(v18, v19, v20, v21, v22, v23, v24, v25, v31);
  v28 = sub_1BEFF7D88(v26, v27, v17);

  if (v28)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

_OWORD *sub_1BF0E9528@<X0>(void *(*a1)(__int128 *__return_ptr)@<X5>, _OWORD *a2@<X8>)
{
  result = a1(&v4);
  if (v5)
  {
    return sub_1BEFF9A40(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0E9574()
{
  OUTLINED_FUNCTION_3_29();
  sub_1BEFE8DAC();
  v3 = objc_allocWithZone(TFKey);
  v4 = v2;
  v12 = OUTLINED_FUNCTION_1_17(v4, v5, v6, v7, v8, v9, v10, v11, v2);
  v15 = sub_1BEFE82CC(v12, v13, v14);
  v16 = [v15 address];

  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v26 = OUTLINED_FUNCTION_7_22(v18, v19, v20, v21, v22, v23, v24, v25, v16);
  v28 = sub_1BEFF7D88(v26, v27, v17);

  if (v28)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t UniqueCollection.init()@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1BF179CFC();
  result = sub_1BF179CEC();
  a2[1] = result;
  return result;
}

void UniqueCollection.prepend(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_40();
  v9 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_12_17();
  v16 = v15(v14);
  OUTLINED_FUNCTION_31_8(v16, v17);
  sub_1BF179EAC();

  OUTLINED_FUNCTION_25_8(v1);
  v18(v1, v9);
  if (v3 == 1)
  {
    v19 = OUTLINED_FUNCTION_21_0();
    (v5)(v19);
    v20 = OUTLINED_FUNCTION_16_12();
    (v5)(v20);
    v21 = OUTLINED_FUNCTION_27_7(v0);
    v22 = OUTLINED_FUNCTION_30_6(v21, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_33_6(v22);
    OUTLINED_FUNCTION_20_11();
    v5();
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5EC();
  }

  else
  {
    if (qword_1ED8F01C8 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_29_7();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v24 = OUTLINED_FUNCTION_21_0();
    (v5)(v24);
    OUTLINED_FUNCTION_31_0();
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1BF071CD8();
    *(inited + 32) = v6;
    *(inited + 40) = v25;
    if (v0 != 1)
    {
      OUTLINED_FUNCTION_28_7("collection must contain unique elements, duplicate=%{public}@");
    }

    swift_setDeallocating();
    sub_1BF0C8384();
  }

  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall UniqueCollection.insert(contentsOf:at:)(Swift::OpaquePointer contentsOf, Swift::Int at)
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v60 = v4;
  v6 = v5;
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_54();
  v71 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  v63 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v69 = &v59 - v16;
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v59 - v24;
  v59 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v70 = &v59 - v29;
  v30 = sub_1BF179CFC();
  v80 = v30;
  OUTLINED_FUNCTION_9_22();
  v31 = sub_1BF17A4EC();
  v79 = v31;
  OUTLINED_FUNCTION_9_22();
  if (v31 == sub_1BF17A5AC())
  {
LABEL_16:
    v77 = v30;
    v79 = v60;
    OUTLINED_FUNCTION_54();
    sub_1BF17A65C();
    OUTLINED_FUNCTION_11_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_0();
    swift_getWitnessTable();
    sub_1BF17AC4C();
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v32 = *(v3 + 32);
  v74 = *(v32 + 8);
  v75 = v32 + 8;
  v73 = (v18 + 16);
  v67 = v18 + 32;
  v66 = v9 + 8;
  v65 = (v18 + 8);
  v61 = xmmword_1BF17DEF0;
  v76 = v32;
  v68 = v18;
  v64 = v6;
  while (1)
  {
    OUTLINED_FUNCTION_9_22();
    v33 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v33 & 1) == 0)
    {
      break;
    }

    v34 = v6 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v31;
    v35 = v70;
    v72 = *(v18 + 16);
    v72(v70, v34, v7);
LABEL_5:
    OUTLINED_FUNCTION_26_7();
    sub_1BF17A62C();
    v36 = OUTLINED_FUNCTION_15_13();
    v37(v36, v35, v7);
    v38 = OUTLINED_FUNCTION_77_0();
    v39 = v74;
    v77 = (v74)(v38);
    v78 = v40;
    v41 = v25;
    v42 = v69;
    sub_1BF179EAC();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v7);
    v44 = OUTLINED_FUNCTION_15_13();
    v45(v44, v71);
    if (EnumTagSinglePayload == 1)
    {
      v46 = OUTLINED_FUNCTION_77_0();
      v39(v46);
      OUTLINED_FUNCTION_31_0();
      v47 = v63;
      v48 = v72;
      v72(v63, v41, v7);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v7);
      v77 = EnumTagSinglePayload;
      v78 = v41;
      OUTLINED_FUNCTION_26_7();
      sub_1BF179E9C();
      sub_1BF179EBC();
      v48(v62, v41, v7);
      OUTLINED_FUNCTION_54();
      sub_1BF17A65C();
      sub_1BF17A5DC();
      (*v65)(v41, v7);
      v18 = v68;
      v6 = v64;
      v25 = v41;
    }

    else
    {
      if (qword_1ED8F01C8 != -1)
      {
        OUTLINED_FUNCTION_0_56();
        swift_once();
      }

      OUTLINED_FUNCTION_29_7();
      inited = swift_initStackObject();
      *(inited + 16) = v61;
      v25 = v41;
      v50 = (v74)(v7, v76);
      v52 = v51;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1BF071CD8();
      *(inited + 32) = v50;
      *(inited + 40) = v52;
      v18 = v68;
      v6 = v64;
      if (v39 == 1)
      {
        v53 = OUTLINED_FUNCTION_15_13();
        v54(v53, v7);
        swift_setDeallocating();
        sub_1BF0C8384();
      }

      else
      {
        sub_1BF0C9F7C("collection must contain unique elements, duplicate=%{public}@", 61, 2, inited);
        swift_setDeallocating();
        sub_1BF0C8384();
        v55 = OUTLINED_FUNCTION_15_13();
        v56(v55, v7);
      }
    }

    OUTLINED_FUNCTION_9_22();
    v57 = sub_1BF17A5AC();
    v31 = v79;
    if (v79 == v57)
    {
      v30 = v80;
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_26_7();
  v58 = sub_1BF17B23C();
  if (v59 == 8)
  {
    v77 = v58;
    v35 = v70;
    v72 = *v73;
    v72(v70, &v77, v7);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void UniqueCollection.removeSubrange<A>(_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_54();
  v35 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v30 - v7;
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  *&v44 = *v0;
  OUTLINED_FUNCTION_54();
  v15 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_1BF17A43C();
  v16 = v45;
  v45 = *v0;
  v17 = UniqueCollection.startIndex.getter(v2);
  v18 = *v0;
  v43 = v0 + 1;
  v42 = v18;
  v44 = v18;
  v41 = v2;
  v19 = UniqueCollection.endIndex.getter(v2);
  if (v19 < v17)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (*(&v16 + 1) >= v19 || *(&v16 + 1) < v17 || v16 < v17 || v16 >= v19)
  {
    goto LABEL_18;
  }

  v32 = v15;
  v33 = v0;
  v30 = *(&v16 + 1);
  v31 = v16;
  sub_1BF17A68C();
  v24 = v34;
  v23 = v35;
  v26 = v25;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_7_23();
  v27 = sub_1BF17B02C();
  *&v44 = v27;
  OUTLINED_FUNCTION_7_23();
  if (v27 != sub_1BF17B05C())
  {
    v41 = *(v41 + 32);
    *&v42 = v26;
    v39 = *(v41 + 8);
    v40 = v41 + 8;
    ++v37;
    v38 = v9 + 16;
    v36 = v9 + 8;
    do
    {
      OUTLINED_FUNCTION_7_23();
      sub_1BF17B04C();
      sub_1BF17B03C();
      (*(v9 + 16))(v14, v26 + *(v9 + 72) * v27, v3);
      sub_1BF17B06C();
      *&v45 = v39(v3, v41);
      *(&v45 + 1) = v28;
      sub_1BF179E9C();
      sub_1BF179D7C();
      v26 = v42;

      (*v37)(v24, v23);
      (*(v9 + 8))(v14, v3);
      OUTLINED_FUNCTION_7_23();
      v29 = sub_1BF17B05C();
      v27 = v44;
    }

    while (v44 != v29);
  }

  swift_unknownObjectRelease();
  *&v45 = v31;
  *(&v45 + 1) = v30;
  OUTLINED_FUNCTION_11_14();
  swift_getWitnessTable();
  sub_1BF17AC3C();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall UniqueCollection.remove(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v37 = v4;
  v6 = v5;
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_40();
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_4_1();
  v36 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  OUTLINED_FUNCTION_2_3();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_4_1();
  v35 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v38 = &v35 - v27;
  v28 = v1;
  v40 = *v1;
  UniqueCollection.subscript.getter(v6, v37, v3);
  if (__swift_getEnumTagSinglePayload(v18, 1, v7) == 1)
  {
    (*(v10 + 8))(v18, v8);
  }

  else
  {
    v37 = v8;
    (*(v20 + 32))(v38, v18, v7);
    v29 = v1[1];
    *&v40 = *v28;
    *(&v40 + 1) = v29;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    sub_1BF17ABCC();

    if (v39 == 1)
    {
      (*(v20 + 8))(v38, v7);
    }

    else
    {
      v30 = v38;
      *&v40 = (*(*(v3 + 32) + 8))(v7);
      *(&v40 + 1) = v31;
      OUTLINED_FUNCTION_30_6(v40, MEMORY[0x1E69E6158]);
      v32 = v36;
      sub_1BF179D7C();

      (*(v10 + 8))(v32, v37);
      OUTLINED_FUNCTION_40();
      sub_1BF17A65C();
      v33 = v35;
      sub_1BF17A5FC();
      v34 = *(v20 + 8);
      v34(v33, v7);
      v34(v30, v7);
    }
  }

  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall UniqueCollection.removeAll()()
{
  sub_1BF179E9C();
  sub_1BF179E8C();
  OUTLINED_FUNCTION_54();
  sub_1BF17A65C();

  sub_1BF17A63C();
}

void UniqueCollection.replace(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_8_22();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_22();
  v10 = sub_1BF17A42C();

  if (v10)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_22();
    sub_1BF17ABCC();

    if (a10 != 1)
    {
      v11 = OUTLINED_FUNCTION_9_22();
      UniqueCollection.remove(at:)(v11);
      OUTLINED_FUNCTION_26_7();
      UniqueCollection.insert(_:at:)();
    }

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void UniqueCollection.replace(_:withContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_8_22();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_22();
  v10 = sub_1BF17A42C();

  if (v10)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_22();
    sub_1BF17ABCC();

    if (a10 != 1)
    {
      v11 = OUTLINED_FUNCTION_9_22();
      UniqueCollection.remove(at:)(v11);
      OUTLINED_FUNCTION_26_7();
      UniqueCollection.insert(contentsOf:at:)(v12, v13);
    }

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void UniqueCollection.move(_:to:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Swift::Int at, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_8_22();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_22();
  v22 = sub_1BF17A42C();

  if (v22)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_22();
    sub_1BF17ABCC();

    if (a10 != 1)
    {
      UniqueCollection.remove(at:)(at);
      UniqueCollection.insert(_:at:)();
    }

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_1BF0EACBC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UniqueCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF0EACE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1BF0EAD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

void UniqueCollection.init(keepingFirstUniqueFrom:)()
{
  OUTLINED_FUNCTION_32();
  v31 = v0;
  v32 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - v17;
  v19 = sub_1BF179CFC();
  v35 = v19;
  v20 = sub_1BF179CEC();
  v36 = v20;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = sub_1BF17A4EC();

  v34 = v21;
  if (v21 != sub_1BF17A5AC())
  {
    v27 = v11;
    v28 = v7;
    v29 = (v9 + 32);
    v30 = (v9 + 16);
    while (1)
    {
      v22 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v22)
      {
        (*(v9 + 16))(v18, v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v3);
      }

      else
      {
        v25 = sub_1BF17B23C();
        if (v27 != 8)
        {
          __break(1u);
          return;
        }

        v33[0] = v25;
        (*v30)(v18, v33, v3);
        swift_unknownObjectRelease();
      }

      sub_1BF17A62C();
      (*v29)(v14, v18, v3);
      v33[0] = v35;
      v33[1] = v36;
      type metadata accessor for UniqueCollection(0, v3, v31, v32);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      OUTLINED_FUNCTION_2_39();
      swift_getWitnessTable();
      v23 = sub_1BF17A42C();

      if ((v23 & 1) == 0)
      {
        UniqueCollection.append(_:)();
      }

      (*(v9 + 8))(v14, v3);
      v24 = sub_1BF17A5AC();
      v21 = v34;
      if (v34 == v24)
      {

        v19 = v35;
        v20 = v36;
        v7 = v28;
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  *v7 = v19;
  v7[1] = v20;
  OUTLINED_FUNCTION_26_2();
}

uint64_t UniqueCollection.description.getter(uint64_t a1)
{
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  return sub_1BF17A14C();
}

void sub_1BF0EB12C(void *a1, void (*a2)(void))
{
  v4 = sub_1BF179B6C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  if (off_1ED8F0218 == a1)
  {
    goto LABEL_16;
  }

  if (qword_1ED8EFB98 != -1)
  {
    OUTLINED_FUNCTION_6_27();
    swift_once();
  }

  v12 = qword_1ED8EFC18;
  v13 = 0x1FABC8000;
  if (qword_1ED8EFC18 == a1)
  {
    v14 = [objc_opt_self() isMainThread];
    v13 = 0x1FABC8000uLL;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  if (qword_1ED8EF920 != -1)
  {
    OUTLINED_FUNCTION_5_23();
    v17 = v16;
    swift_once();
    v13 = v17;
  }

  if (qword_1ED8EF928 != a1)
  {
    if (v12 != a1)
    {
      OUTLINED_FUNCTION_17_10();
      return;
    }

    goto LABEL_17;
  }

  if (([objc_opt_self() (v13 + 1514)] & 1) == 0)
  {
LABEL_16:
    a2();
    return;
  }

  if (v12 == a1)
  {
LABEL_17:
    sub_1BEFF6E88();
    v15 = sub_1BF17AD5C();
    goto LABEL_18;
  }

  sub_1BEFF6E88();
  (*(v6 + 104))(v11, *MEMORY[0x1E69E7F88], v4);
  v15 = sub_1BF17ADAC();
  (*(v6 + 8))(v11, v4);
LABEL_18:
  OUTLINED_FUNCTION_17_10();
}

uint64_t SignpostRecorder.init(createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for SignpostRecorder(0, a2, a4, a5) + 28);
  type metadata accessor for Signpost(0, a2, v9, v10);
  *(a3 + v8) = sub_1BF179CFC();
  v11 = sub_1BF1794AC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a3, a1, v11);
}

uint64_t SignpostRecorder.mark(comment:createdDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a1;
  v51 = a2;
  v50 = *(a4 + 16);
  v6 = type metadata accessor for Signpost(255, v50, a3, a4);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v43 = v8;
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - v10;
  v12 = sub_1BF1794AC();
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v41 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v47 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v41 - v32;
  v42 = v14;
  v34 = *(v14 + 16);
  v46 = v35;
  v34(v31);
  v36 = *(a4 + 28);
  v48 = v4;
  v45 = v36;
  v52 = *(v4 + v36);
  sub_1BF17A65C();
  swift_getWitnessTable();
  sub_1BF179F6C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
  {
    (*(v43 + 8))(v11, v44);
    v37 = v47;
    (v34)(v47, v48, v12);
  }

  else
  {
    v38 = v41;
    (v34)(v41, v11, v12);
    (*(v24 + 8))(v11, v6);
    v37 = v47;
    (*(v42 + 32))(v47, v38, v12);
  }

  v39 = v51;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF07CB2C(v46, v37, v49, v39, v50, v33);
  (*(v24 + 16))(v28, v33, v6);
  sub_1BF17A5DC();
  return (*(v24 + 8))(v33, v6);
}

uint64_t sub_1BF0EB820(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v5 <= 0x3F)
  {
    type metadata accessor for Signpost(255, *(a1 + 16), v3, v4);
    result = sub_1BF17A65C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t VersionNumber.major.getter()
{
  if (*(*v0 + 16))
  {
    return *(*v0 + 32);
  }

  else
  {
    return OUTLINED_FUNCTION_0_4();
  }
}

uint64_t VersionNumber.subscript.getter(uint64_t result)
{
  if (*(*v1 + 16) <= result)
  {
    return OUTLINED_FUNCTION_0_4();
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return *(*v1 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t VersionNumber.minor.getter()
{
  if (*(*v0 + 16) < 2uLL)
  {
    return OUTLINED_FUNCTION_0_4();
  }

  else
  {
    return *(*v0 + 40);
  }
}

TeaFoundation::VersionNumber_optional __swiftcall VersionNumber.init(_:)(Swift::String_optional a1)
{
  v2 = v1;
  if (a1.value._object)
  {
    *&a1.value._countAndFlagsBits = VersionNumber.init(_:)(a1.value);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return *&a1.value._countAndFlagsBits;
}

uint64_t sub_1BF0EB9D4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BF0EBA40(sub_1BF0EBA3C, 0, a1, a2);
  v6 = sub_1BF0EBA74(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1BF0EBA74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BF17AEBC();
    if (!v9 || (v10 = v9, v11 = sub_1BF01A8B8(v9, 0), v12 = sub_1BF0EBBD4(v14, (v11 + 4), v10, a1, a2, a3, a4), _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0(), , v12 == v10))
    {
      v13 = sub_1BF17A19C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BF17A19C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BF17B2FC();
LABEL_4:

  return sub_1BF17A19C();
}

unint64_t sub_1BF0EBBD4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF0B603C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BF17A28C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BF17B2FC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF0B603C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1BF17A25C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BF0EBDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1BF0EC8D8();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = sub_1BF17A30C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BF0EB9D4(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BF0EC378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a1;
  v88 = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = sub_1BF17A30C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BF0EB9D4(result, v5);
    v48 = v47;

    v7 = v48;
    if ((v48 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v27 ^ v28 | v26)
          {
            v31 = 65;
          }

          if (!(v27 ^ v28 | v26))
          {
            v32 = 58;
          }

          if (v29)
          {
            v17 = 0;
            v33 = (v29 + 1);
            v19 = 1;
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v32)
              {
                if (v34 < 0x41 || v34 >= v31)
                {
                  OUTLINED_FUNCTION_12_0();
                  if (!v23 || v34 >= v36)
                  {
                    goto LABEL_144;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v17 * a3;
              if ((v37 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_143;
              }

              v38 = v34 + v35;
              v23 = __CFADD__(v37, v38);
              v17 = v37 + v38;
              if (v23)
              {
                goto LABEL_143;
              }

              ++v33;
              --v30;
            }

            while (v30);
LABEL_53:
            v19 = 0;
            LODWORD(v6) = v17;
            goto LABEL_144;
          }

          goto LABEL_73;
        }

LABEL_143:
        LODWORD(v6) = 0;
        v19 = 1;
        goto LABEL_144;
      }

      goto LABEL_148;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (result)
        {
          v42 = 0;
          v19 = 1;
          do
          {
            v43 = *result;
            if (v43 < 0x30 || v43 >= v39)
            {
              if (v43 < 0x41 || v43 >= v40)
              {
                LODWORD(v6) = 0;
                if (v43 < 0x61 || v43 >= v41)
                {
                  goto LABEL_144;
                }

                v44 = -87;
              }

              else
              {
                v44 = -55;
              }
            }

            else
            {
              v44 = -48;
            }

            v45 = v42 * a3;
            if ((v45 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_143;
            }

            v46 = v43 + v44;
            v23 = __CFADD__(v45, v46);
            v42 = v45 + v46;
            if (v23)
            {
              goto LABEL_143;
            }

            ++result;
            --v8;
          }

          while (v8);
          v19 = 0;
          LODWORD(v6) = v42;
          goto LABEL_144;
        }

        goto LABEL_73;
      }

      goto LABEL_143;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          v19 = 1;
          while (1)
          {
            v20 = *v18;
            if (v20 < 0x30 || v20 >= v16)
            {
              if (v20 < 0x41 || v20 >= v15)
              {
                OUTLINED_FUNCTION_12_0();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_144;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v17 * a3;
            if ((v24 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_143;
            }

            v25 = v20 + v21;
            v23 = v24 >= v25;
            v17 = v24 - v25;
            if (!v23)
            {
              goto LABEL_143;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_53;
            }
          }
        }

LABEL_73:
        LODWORD(v6) = 0;
        v19 = 0;
LABEL_144:

        LOBYTE(v87) = v19;
        return (v6 | (v19 << 32));
      }

      goto LABEL_143;
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v49 = HIBYTE(v7) & 0xF;
  v87 = v6;
  v88 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_0_6();
        if (v76 ^ v77 | v75)
        {
          v79 = 65;
        }

        if (!(v76 ^ v77 | v75))
        {
          v80 = 58;
        }

        v81 = &v87;
        v19 = 1;
        while (1)
        {
          v82 = *v81;
          if (v82 < 0x30 || v82 >= v80)
          {
            if (v82 < 0x41 || v82 >= v79)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v23 || v82 >= v84)
              {
                goto LABEL_144;
              }

              v83 = -87;
            }

            else
            {
              v83 = -55;
            }
          }

          else
          {
            v83 = -48;
          }

          v85 = v54 * a3;
          if ((v85 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_143;
          }

          v86 = v82 + v83;
          v23 = __CFADD__(v85, v86);
          v54 = v85 + v86;
          if (v23)
          {
            goto LABEL_143;
          }

          v81 = (v81 + 1);
          if (!--v78)
          {
            goto LABEL_142;
          }
        }
      }

      goto LABEL_143;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        if (v51 ^ v52 | v50)
        {
          v55 = 65;
        }

        if (!(v51 ^ v52 | v50))
        {
          v56 = 58;
        }

        v57 = &v87 + 1;
        v19 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v23 || v58 >= v60)
              {
                goto LABEL_144;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v61 = v54 * a3;
          if ((v61 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_143;
          }

          v62 = v58 + v59;
          v23 = v61 >= v62;
          v54 = v61 - v62;
          if (!v23)
          {
            goto LABEL_143;
          }

          ++v57;
          if (!--v53)
          {
            goto LABEL_142;
          }
        }
      }

      goto LABEL_143;
    }

    goto LABEL_147;
  }

  if (v49)
  {
    if (v49 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      if (v64 ^ v65 | v63)
      {
        v67 = 65;
      }

      if (!(v64 ^ v65 | v63))
      {
        v68 = 58;
      }

      v69 = &v87 + 1;
      v19 = 1;
      do
      {
        v70 = *v69;
        if (v70 < 0x30 || v70 >= v68)
        {
          if (v70 < 0x41 || v70 >= v67)
          {
            OUTLINED_FUNCTION_12_0();
            if (!v23 || v70 >= v72)
            {
              goto LABEL_144;
            }

            v71 = -87;
          }

          else
          {
            v71 = -55;
          }
        }

        else
        {
          v71 = -48;
        }

        v73 = v54 * a3;
        if ((v73 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_143;
        }

        v74 = v70 + v71;
        v23 = __CFADD__(v73, v74);
        v54 = v73 + v74;
        if (v23)
        {
          goto LABEL_143;
        }

        ++v69;
        --v66;
      }

      while (v66);
LABEL_142:
      v19 = 0;
      LODWORD(v6) = v54;
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_149:
  __break(1u);
  return result;
}

unint64_t sub_1BF0EC884()
{
  result = qword_1EBDCBFF0;
  if (!qword_1EBDCBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBFF0);
  }

  return result;
}

unint64_t sub_1BF0EC8D8()
{
  result = qword_1EBDCBFF8[0];
  if (!qword_1EBDCBFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBFF8);
  }

  return result;
}

uint64_t ProxyContainer.__allocating_init(publicContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProxyContainer.init(publicContainer:)(a1);
  return v2;
}

id AsyncBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncBlockCancellingOperation.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = objc_allocWithZone(v1);
  return AsyncBlockCancellingOperation.init(_:)(v2, v0);
}

uint64_t AsyncBlockCancellingOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for AsyncBlockCancelledReporter();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = *(v1 + qword_1EBDCAB08);
  v18[3] = v5;
  v18[4] = &off_1F3DBFB78;
  v18[0] = v6;
  v8 = v1;

  v7(v18);
  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_14_0();
  v9 = swift_allocObject();
  v10 = *((v4 & v3) + 0xF0);
  *(v9 + 16) = v10;
  *(v9 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v9);
  v11 = MEMORY[0x1E69E7CA8];
  v12 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v12, sub_1BF0ECF40, v9, v11 + 8);

  OUTLINED_FUNCTION_14_0();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v2;
  v13[4] = v0;
  v14 = qword_1ED8F0210;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
  }

  v15 = off_1ED8F0218;
  sub_1BEFF77FC(off_1ED8F0218, sub_1BF0ECF3C, v13);

  OUTLINED_FUNCTION_14_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  *(v16 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v16);
  sub_1BF03952C(v15, sub_1BF0ECF58, v16);
}

uint64_t sub_1BF0ECCDC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Result(0, a3, a3, a4);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v15 - v10);
  sub_1BF095D40();
  v12 = swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 2;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_1BF0ECED4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static XPCClassBuilder.buildBlock(_:)()
{
  v0 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  return sub_1BF09EC6C(v0);
}

_BYTE *storeEnumTagSinglePayload for XPCClassBuilder(_BYTE *result, int a2, int a3)
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

uint64_t ShortDescription.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF0ED08C(a1, v7);
  sub_1BF0AAA78(v7, a2, a3);
  return sub_1BEFFD168(a1);
}

uint64_t sub_1BF0ED08C(uint64_t a1, uint64_t a2)
{
  sub_1BF008CC4(0, &qword_1ED8EFBA0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ShortDescription.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_1BF014CA8(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_1BF0075BC(v6, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF0ED1B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1BF0ED08C(a1, v6);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return ShortDescription.subscript.setter(v6, v3, v4);
}

void (*ShortDescription.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v9;
  v9[10] = a4;
  v9[11] = v4;
  v9[8] = a2;
  v9[9] = a3;
  ShortDescription.subscript.getter(v9);
  return sub_1BF0ED2A8;
}

void sub_1BF0ED2A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    sub_1BF0ED08C(*a1, v2 + 32);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    ShortDescription.subscript.setter(v2 + 32, v4, v3);
    sub_1BEFFD168(v2);
  }

  else
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    ShortDescription.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

uint64_t ShortDescription.shortDescription.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  a2[3] = a1;
  a2[4] = &protocol witness table for ShortDescription<A>;
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF0ED398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ShortDescribable.description.getter(a1, WitnessTable);
}

uint64_t sub_1BF0ED3EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t URLHandlerOpenOptions.sourceApplication.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

__n128 URLHandlerOpenOptions.init(sourceApplication:annotation:openInPlace:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = a4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BF0ED4C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0ED51C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t (*Dictionary<>.disableSafeishSafety.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Dictionary<>.disableSafeishSafety.getter(*v1) & 1;
  return sub_1BF0ED5E0;
}

uint64_t getEnumTagSinglePayload for NonCancellingReporter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NonCancellingReporter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MachService.name.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

void *MachService.hostInterface.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1BF0ED7F8(v2);
}

void *sub_1BF0ED7F8(void *result)
{
  if (result)
  {
    v1 = result;

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t MachService.serviceInterface.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  v4 = v2;

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

double MachService.init(name:hostInterface:serviceInterface:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr)@<X2>, void (*a4)(__int128 *__return_ptr, void *)@<X4>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = a3(&v9);
  *(a5 + 16) = v9;
  a4(&v9, v7);
  result = *&v9;
  *(a5 + 32) = v9;
  return result;
}

double MachService.init(_:serviceInterface:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  a3(&v6);
  result = *&v6;
  *(a4 + 32) = v6;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation12XPCInterfaceVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF0ED940(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1BF0ED980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StoreState.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v5 + 8))(v10, a1);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v15 = *(a1 + 16);
    v13 = a2;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  }

  v12 = *(a1 + 16);
  (*(*(v12 - 8) + 32))(a2, v10, v12);
  v13 = a2;
  v14 = 0;
  v15 = v12;
  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t StoreValue.__allocating_init()()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_allocObject();
  StoreValue.init()();
  return v0;
}

uint64_t sub_1BF0EDB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Promise(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  return Promise.__allocating_init(value:)();
}

uint64_t StoreValue.__allocating_init(computation:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_25();
  StoreValue.init(computation:)(v1, v2);
  return v0;
}

{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_25();
  StoreValue.init(computation:)(v1, v2);
  return v0;
}

uint64_t StoreValue.init(computation:)(uint64_t a1, uint64_t a2)
{
  return sub_1BF0EDD00(a1, a2, StoreComputedValue.__allocating_init(computation:));
}

{
  return sub_1BF0EDD00(a1, a2, StoreComputedValue.__allocating_init(computation:));
}

uint64_t sub_1BF0EDD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  OUTLINED_FUNCTION_6_28();
  type metadata accessor for StoreComputedValue(0, *(v8 + 80), *(v8 + 80), v9);
  *(v5 + 16) = a3(a1, a2);
  return v5;
}

uint64_t StoreComputedValue.nextInput(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  v6 = type metadata accessor for StoreState(0, v3, v4, v5);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_59();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v17 - v12;
  (*(*(v3 - 8) + 16))(&v17 - v12, a1, v3, v11);
  swift_storeEnumTagMultiPayload();
  StoreComputedValue.nextInput(_:)(v13);
  v15 = v14;
  (*(v8 + 8))(v13, v6);
  return v15;
}

void StoreComputedValue.nextInput(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v50 = *(v5 - 8);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v47 - v8;
  v51 = type metadata accessor for StoreState(0, *(v4 + 88), v9, v10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = v5;
  v15 = type metadata accessor for StoreState(0, v5, v13, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v47 - v20);
  v22 = *(v1 + *(v4 + 136));
  UnfairLock.lock()();
  OUTLINED_FUNCTION_6_28();
  v24 = *(v23 + 120);
  v25 = *(v2 + v24);
  if (v25 == -1)
  {
    __break(1u);
  }

  else
  {
    v48 = v4;
    *(v2 + v24) = v25 + 1;
    OUTLINED_FUNCTION_6_28();
    v27 = *(v26 + 112);
    swift_beginAccess();
    (*(v17 + 24))(v2 + v27, a1, v15);
    swift_endAccess();
    os_unfair_lock_unlock(*(v22 + 16));
    (*(v17 + 16))(v21, a1, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = v49;
        v32 = v47;
        v33 = (*(v50 + 32))();
        MEMORY[0x1EEE9AC00](v33, v34);
        *(&v47 - 2) = v2;
        *(&v47 - 1) = v31;
        firstly<A>(closure:)(sub_1BF0EE810);
        OUTLINED_FUNCTION_6_28();
        v36 = *(v35 + 144);
        v37 = *(v2 + v36);
        *(swift_allocObject() + 16) = v25;
        v38 = v37;
        Promise.then<A, B>(on:disposeOn:closure:)();

        v39 = *(v2 + v36);
        *(swift_allocObject() + 16) = v25;
        v40 = v39;
        Promise.error<A>(on:disposeOn:closure:)();

        (*(v50 + 8))(v49, v32);
      }

      else
      {
        type metadata accessor for Promise(0, v51, v29, v30);
        swift_storeEnumTagMultiPayload();
        Promise.__allocating_init(value:)();
      }
    }

    else
    {
      v41 = *v21;
      OUTLINED_FUNCTION_6_28();
      v43 = *(v2 + *(v42 + 144));
      v44 = swift_allocObject();
      *(v44 + 16) = v41;
      *(v44 + 24) = v25;
      v45 = v43;
      v46 = v41;
      firstly<A, B>(on:disposeOn:closure:)(v45, v2, sub_1BF0EEAD4, v44, v51, v48);
    }
  }
}

Swift::Void __swiftcall StoreComputedValue.refresh()()
{
  v3 = *v2;
  v4 = type metadata accessor for StoreState(0, *(*v2 + 80), v0, v1);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  v11 = *(v3 + 112);
  swift_beginAccess();
  (*(v6 + 16))(v10, v2 + v11, v4);
  StoreComputedValue.nextInput(_:)(v10);

  (*(v6 + 8))(v10, v4);
}

uint64_t StoreValue.__deallocating_deinit()
{
  StoreValue.deinit();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0EE584(uint64_t a1, void (*a2)(uint64_t))
{
  MEMORY[0x1EEE9AC00](a1, a2);
  type metadata accessor for Promise(0, v6, v4, v5);
  a2(a1);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF0EE638(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StoreState(0, *(*a1 + 88), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v15 - v9;
  *(v15 - v9) = a2;
  swift_storeEnumTagMultiPayload();
  v11 = a2;
  sub_1BF0EE774(v10, a3);
  (*(v7 + 8))(v10, v6);
  type metadata accessor for Promise(0, v6, v12, v13);
  AsyncObservable.value.getter(v10);
  return Promise.__allocating_init(value:)();
}

void sub_1BF0EE774(uint64_t a1, unint64_t a2)
{
  UnfairLock.lock()();
  v5 = *(*v2 + 128);
  if (*(v2 + v5) < a2)
  {
    AsyncObservable.next(value:quiet:)(a1, 0);
    *(v2 + v5) = a2;
  }

  sub_1BF0EEAF0(v2);
}

uint64_t sub_1BF0EE844(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 88);
  v7 = type metadata accessor for StoreState(0, v6, a3, a4);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  (*(*(v6 - 8) + 16))(&v16 - v11, a1, v6, v10);
  swift_storeEnumTagMultiPayload();
  sub_1BF0EE774(v12, a3);
  (*(v8 + 8))(v12, v7);
  type metadata accessor for Promise(0, v7, v13, v14);
  AsyncObservable.value.getter(v12);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF0EE9C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StoreState(0, *(*a2 + 88), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  swift_storeEnumTagMultiPayload();
  v11 = a1;
  sub_1BF0EE774(v10, a3);
  return (*(v7 + 8))(v10, v6);
}

char *StoreComputedValue.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 112);
  type metadata accessor for StoreState(0, *(v1 + 80), v4, v5);
  OUTLINED_FUNCTION_12();
  (*(v6 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();

  return v0;
}

uint64_t StoreComputedValue.__deallocating_deinit()
{
  StoreComputedValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0EEC28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BF0EED4C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of StoreValue.__allocating_init(computation:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t sub_1BF0EEF90(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_24();
  sub_1BF0EF16C(a1, a2);
  return v4;
}

uint64_t sub_1BF0EEFD4()
{
  OUTLINED_FUNCTION_29();
  v4 = type metadata accessor for Seal.Resolution(0, *(v2 + 80), *(v2 + 80), v3);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  OUTLINED_FUNCTION_15_15();
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BF006BE0();
    OUTLINED_FUNCTION_11_16();
    (*(v6 + 8))(v10, v4);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1BF0EF124(uint64_t a1)
{
  sub_1BF17BB6C();
  sub_1BF09E3D0(v3, *v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0EF16C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v8 = type metadata accessor for Seal.Resolution(255, v6, v6, v7);
  v9 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v23[-v14 - 8];
  type metadata accessor for Seal.Handler(0, v6, v16, v17);
  *(v2 + 32) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  __swift_storeEnumTagSinglePayload(v2 + *(v18 + 112), 1, 1, v8);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  *v15 = a2;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
  OUTLINED_FUNCTION_29();
  v20 = *(v19 + 112);
  OUTLINED_FUNCTION_7_2(v2 + v20, v23);
  (*(v11 + 40))(v2 + v20, v15, v9);
  swift_endAccess();
  return v2;
}

void *sub_1BF0EF2EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Seal.Resolution(255, a5, a5, a4);
  v10 = sub_1BF17AE6C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = (&v23 - v14);
  (*(v11 + 16))(&v23 - v14, a1, v10, v13);
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
  {
    result = (*(v11 + 8))(v15, v10);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = (*(*(v9 - 8) + 8))(v15, v9);
    goto LABEL_19;
  }

  v16 = *v15;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v16;

  v18 = v16;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v21 = sub_1BF02E218;
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = sub_1BF02E218;
    v19[4] = v17;
    v20 = a2;
    v21 = sub_1BF097A1C;
  }

  return v21;
}

uint64_t sub_1BF0EF614(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Seal.Resolution(0, a5, a5, a4);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v17 - v13;
  (*(v10 + 16))(&v17 - v13, a1, v9, v12);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return (*(v10 + 8))(v14, v9);
  }

  v16 = sub_1BF006210(a2, a3, a4);
  v16();
}

_BYTE *sub_1BF0EF750(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF0EF834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BF0EF958(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}