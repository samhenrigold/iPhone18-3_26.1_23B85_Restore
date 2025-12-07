void sub_231544E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    v29 = *(a1 + 16);
    sub_23152D598(0, v1, 0);
    v5 = sub_2315634C4();
    v6 = v29;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_30;
        }

        ++v7;
        v10 = v5 & 0x3F;
        v11 = 0xE800000000000000;
        v12 = 0x6449656C646E7562;
        switch(*(*(a1 + 48) + v5))
        {
          case 1:
            v12 = 0x6449797469746E65;
            break;
          case 2:
            v12 = 0x73556E69616D6F64;
            v11 = 0xED00006573614365;
            break;
          case 3:
            v12 = 0x7355646572616873;
            v11 = 0xEC00000064497265;
            break;
          case 4:
            v11 = 0xE600000000000000;
            v12 = 0x746E65746E69;
            break;
          default:
            break;
        }

        v14 = *(v30 + 16);
        v13 = *(v30 + 24);
        if (v14 >= v13 >> 1)
        {
          v27 = v3;
          v28 = v7;
          v26 = v4;
          sub_23152D598(v13 > 1, v14 + 1, 1);
          v10 = v5 & 0x3F;
          v4 = v26;
          v3 = v27;
          v7 = v28;
          v8 = a1 + 56;
          v6 = v29;
        }

        *(v30 + 16) = v14 + 1;
        v15 = v30 + 16 * v14;
        *(v15 + 32) = v12;
        *(v15 + 40) = v11;
        if (v4)
        {
          goto LABEL_34;
        }

        v16 = 1 << *(a1 + 32);
        if (v5 >= v16)
        {
          goto LABEL_31;
        }

        v17 = *(v8 + 8 * v9);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_32;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_33;
        }

        v18 = v17 & (-2 << v10);
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (a1 + 64 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              v24 = v7;
              sub_2314ABA68(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v29;
              v7 = v24;
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_24;
            }
          }

          v25 = v7;
          sub_2314ABA68(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v29;
          v7 = v25;
        }

LABEL_24:
        if (v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_231545198(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_231545280(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_231545348(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_2315453F4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_8();
  }

  sub_231586274();
}

uint64_t sub_231545464(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_231545524(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_13_9();
      break;
    default:
      break;
  }

  sub_231586274();
}

uint64_t sub_2315455F0(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_23154566C(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_231545738(uint64_t a1)
{
  DomainUseCase.rawValue.getter();
  sub_231586274();
}

uint64_t sub_231545798(uint64_t a1, char a2)
{
  sub_231586274();
}

uint64_t sub_23154584C(uint64_t a1, char a2)
{
  sub_231586D14();
  MEMORY[0x231930A00](a2 & 1);
  return sub_231586D44();
}

uint64_t sub_2315458A8(uint64_t a1, uint64_t a2)
{
  sub_231586D14();
  v2 = DomainUseCase.rawValue.getter();
  OUTLINED_FUNCTION_11_15(v2, v3, v4);

  return sub_231586D44();
}

uint64_t sub_231545910(uint64_t a1, char a2)
{
  sub_231586D14();
  sub_231586274();

  return sub_231586D44();
}

uint64_t sub_2315459A0(uint64_t a1, unsigned __int8 a2)
{
  sub_231586D14();
  MEMORY[0x231930A00](a2);
  return sub_231586D44();
}

uint64_t sub_2315459FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_231586D14();
  v5 = a3(a2);
  OUTLINED_FUNCTION_11_15(v5, v6, v7);

  return sub_231586D44();
}

uint64_t sub_231545A50(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_231586D14();
  if (!v2)
  {
    OUTLINED_FUNCTION_14_8();
  }

  sub_231586274();

  return sub_231586D44();
}

uint64_t sub_231545B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_231586D14();
  a3(v6, a2);
  return sub_231586D44();
}

uint64_t sub_231545B68(uint64_t a1, uint64_t a2)
{
  sub_231586D14();
  MEMORY[0x231930A00](a2);
  return sub_231586D44();
}

uint64_t SignalParameterization.init(types:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231553E24(a1);
  *a2 = result;
  return result;
}

void SignalParameterization.byBundleId.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  v32 = *v30;
  if (*(*v30 + 16))
  {
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_0_81();
    if (v33)
    {
      OUTLINED_FUNCTION_3_32();
      while (2)
      {
        v34 = 0x797469746E65;
        switch(*(*(v32 + 48) + v31))
        {
          case 1:
            goto LABEL_9;
          case 2:
            OUTLINED_FUNCTION_2_32();
            v35 = OUTLINED_FUNCTION_9_18();
            goto LABEL_7;
          case 3:
            v35 = OUTLINED_FUNCTION_12_12();
LABEL_7:
            v34 = v35 & 0xFFFFFFFFFFFFLL | 0x7355000000000000;
            goto LABEL_9;
          case 4:
            v34 = 0x746E65746E69;
LABEL_9:
            v36 = OUTLINED_FUNCTION_16_10(v34);

            if (v36)
            {
              break;
            }

            OUTLINED_FUNCTION_1_37();
            if ((v37 & 1) == 0)
            {
              break;
            }

            continue;
          default:

            goto LABEL_11;
        }

        break;
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.byEntityId.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  v32 = *v30;
  if (*(*v30 + 16))
  {
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_0_81();
    if (v33)
    {
      OUTLINED_FUNCTION_3_32();
      while (2)
      {
        v34 = 0x656C646E7562;
        switch(*(*(v32 + 48) + v31))
        {
          case 1:

            break;
          case 2:
            OUTLINED_FUNCTION_2_32();
            v35 = OUTLINED_FUNCTION_9_18();
            goto LABEL_7;
          case 3:
            v35 = OUTLINED_FUNCTION_12_12();
LABEL_7:
            v34 = v35 & 0xFFFFFFFFFFFFLL | 0x7355000000000000;
            goto LABEL_9;
          case 4:
            v34 = 0x746E65746E69;
            goto LABEL_9;
          default:
LABEL_9:
            v36 = OUTLINED_FUNCTION_16_10(v34);

            if (v36)
            {
              break;
            }

            OUTLINED_FUNCTION_1_37();
            if ((v37 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.byDomainUseCase.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  v34 = *v30;
  if (*(*v30 + 16))
  {
    OUTLINED_FUNCTION_13_9();
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_4_27();
    if (v35)
    {
      OUTLINED_FUNCTION_6_21();
      while (2)
      {
        v36 = v32;
        switch(*(*(v34 + 48) + v31))
        {
          case 1:
            v36 = OUTLINED_FUNCTION_5_25();
            goto LABEL_8;
          case 2:

            break;
          case 3:
            v36 = OUTLINED_FUNCTION_12_12() & 0xFFFFFFFFFFFFLL | 0x7355000000000000;
            goto LABEL_8;
          case 4:
            v36 = v33;
            goto LABEL_8;
          default:
LABEL_8:
            v37 = OUTLINED_FUNCTION_15_9(v36);

            if (v37)
            {
              break;
            }

            OUTLINED_FUNCTION_10_14();
            if ((v38 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.bySharedUserId.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  v34 = *v30;
  if (*(*v30 + 16))
  {
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_4_27();
    if (v35)
    {
      OUTLINED_FUNCTION_6_21();
      while (2)
      {
        v36 = v32;
        switch(*(*(v34 + 48) + v31))
        {
          case 1:
            v36 = OUTLINED_FUNCTION_5_25();
            goto LABEL_8;
          case 2:
            OUTLINED_FUNCTION_9_18();
            OUTLINED_FUNCTION_2_32();
            goto LABEL_8;
          case 3:

            break;
          case 4:
            v36 = v33;
            goto LABEL_8;
          default:
LABEL_8:
            v37 = OUTLINED_FUNCTION_15_9(v36);

            if (v37)
            {
              break;
            }

            OUTLINED_FUNCTION_10_14();
            if ((v38 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.byIntent.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  v32 = *v30;
  if (*(*v30 + 16))
  {
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_0_81();
    if (v33)
    {
      OUTLINED_FUNCTION_3_32();
      while (2)
      {
        switch(*(*(v32 + 48) + v31))
        {
          case 1:
            OUTLINED_FUNCTION_5_25();
            goto LABEL_7;
          case 2:
            OUTLINED_FUNCTION_9_18();
            OUTLINED_FUNCTION_2_32();
            goto LABEL_7;
          case 4:

            break;
          default:
LABEL_7:
            v34 = sub_231586C44();

            if (v34)
            {
              break;
            }

            OUTLINED_FUNCTION_1_37();
            if ((v35 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

uint64_t SignalParameterization.description.getter()
{
  if (!*(*v0 + 16))
  {
    return 1701736302;
  }

  sub_231544E48(*v0);
  v4 = v1;

  sub_231546A58(&v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314AA8B4(&qword_280D6FBF8, &qword_27DD5B0E8, &unk_231589320, MEMORY[0x277D83958]);
  v2 = sub_231586154();

  return v2;
}

uint64_t SignalParameterization.ParameterizationType.rawValue.getter()
{
  result = 0x6449656C646E7562;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_25();
      break;
    case 2:
      v2 = OUTLINED_FUNCTION_9_18();
      goto LABEL_6;
    case 3:
      v2 = OUTLINED_FUNCTION_12_12();
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7355000000000000;
      break;
    case 4:
      result = 0x746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231546330(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_231586864();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_231586864();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return 0;
  }

  if (v4)
  {

    sub_231586824();
    _s4NodeCMa();
    sub_23152B510();
    sub_231586554();
    v2 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);

    v10 = 0;
  }

  result = _s4NodeCMa();
  v28 = v8;
  v16 = (v9 + 64) >> 6;
LABEL_15:
  while (v2 < 0)
  {
    v21 = sub_231586894();
    if (!v21)
    {
LABEL_34:
      sub_2314A4B70(v2);
      return 1;
    }

    v30[0] = v21;
    swift_dynamicCast();
    v22 = v11;
    v19 = v31;
    v29 = v22;
    if (!v6)
    {
LABEL_26:
      v27 = v6;
      if (*(a1 + 16))
      {
        sub_231586D14();
        sub_2314AAAAC(v30);
        v23 = sub_231586D44();
        v24 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v25 = v23 & v24;
          if (((*(a1 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
          {
            break;
          }

          v26 = sub_2314AB36C(*(*(a1 + 48) + 8 * v25), v19);
          v23 = v25 + 1;
          if (v26)
          {

            v6 = v27;
            v8 = v28;
            v11 = v29;
            goto LABEL_15;
          }
        }
      }

LABEL_32:
      sub_2314A4B70(v2);
      return 0;
    }

LABEL_22:
    v20 = sub_2315868A4();

    v11 = v29;
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = v11;
  if (v11)
  {
LABEL_21:
    v29 = (v17 - 1) & v17;
    v19 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    v31 = v19;

    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_34;
    }

    v17 = *(v8 + 8 * v10);
    ++v18;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void sub_231546630(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v25 = a1 + 56;

    v9 = 0;
    v23 = v4;
    v24 = v2;
    v22 = v8;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_10:
        if (!*(a1 + 16))
        {
          break;
        }

        v11 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v10 << 6)));
        sub_231586D14();
        sub_231545524(v26, v11);
        v12 = sub_231586D44();
        v13 = -1 << *(a1 + 32);
        v14 = v12 & ~v13;
        if (((*(v25 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          break;
        }

        v7 &= v7 - 1;
        v15 = ~v13;
        while (1)
        {
          v16 = 0xE800000000000000;
          v17 = 0x6449656C646E7562;
          switch(*(*(a1 + 48) + v14))
          {
            case 1:
              v17 = 0x6449797469746E65;
              break;
            case 2:
              v17 = 0x73556E69616D6F64;
              v16 = 0xED00006573614365;
              break;
            case 3:
              v17 = 0x7355646572616873;
              v16 = 0xEC00000064497265;
              break;
            case 4:
              v16 = 0xE600000000000000;
              v17 = 0x746E65746E69;
              break;
            default:
              break;
          }

          v18 = 0xE800000000000000;
          v19 = 0x6449656C646E7562;
          switch(v11)
          {
            case 1:
              v19 = 0x6449797469746E65;
              break;
            case 2:
              v19 = 0x73556E69616D6F64;
              v18 = 0xED00006573614365;
              break;
            case 3:
              v19 = 0x7355646572616873;
              v18 = 0xEC00000064497265;
              break;
            case 4:
              v18 = 0xE600000000000000;
              v19 = 0x746E65746E69;
              break;
            default:
              break;
          }

          if (v17 == v19 && v16 == v18)
          {
            break;
          }

          v21 = sub_231586C44();

          if (v21)
          {
            goto LABEL_31;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v25 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_31:
        v9 = v10;
        v4 = v23;
        v2 = v24;
        v8 = v22;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

LABEL_33:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {

          return;
        }

        v7 = *(v4 + 8 * v10);
        ++v9;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

SiriSignals::SignalParameterization::ParameterizationType_optional __swiftcall SignalParameterization.ParameterizationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_231546A1C@<X0>(uint64_t *a1@<X8>)
{
  result = SignalParameterization.ParameterizationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_231546A58(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231562A7C(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_231546C4C(v9);
  *a1 = v2;
  return result;
}

unint64_t sub_231546AC8()
{
  result = qword_280D6D008;
  if (!qword_280D6D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6D008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalParameterization.ParameterizationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231546C4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2315863E4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_231546E08(v7, v8, a1, v4);
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
    return sub_231546D40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231546D40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_231586C44();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

void sub_231546E08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_231586C44();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_231586C44()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_231586C44() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F0BEC();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_23154743C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_231547310(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_231547310(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_23154743C((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_23154743C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2314AA8FC(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_231586C44() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2314AA8FC(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_231586C44() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_2315475E8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_231547618(uint64_t a1)
{
  v3 = 0;
  v4 = 0xE000000000000000;
  if (qword_280D6EB00 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
  }

  OUTLINED_FUNCTION_52(a1, v2);

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_7_10();
  type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  sub_231586A54();
  return v3;
}

uint64_t sub_231547714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v3 = *v0;
  v2 = v0[1];
  *(inited + 32) = *v0;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  swift_bridgeObjectRetain_n();
  return sub_2315860F4();
}

uint64_t sub_231547794()
{
  memcpy(__dst, v0, 0x41uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = NowPlayingCountSignal.id.getter();
  *(inited + 40) = v2;
  v4 = __dst[0];
  v3 = __dst[1];
  if (__dst[1])
  {

    v9 = NowPlayingCountSignal.id.getter();
    v10 = v5;
    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v4, v3);

    v6 = v9;
    v7 = v10;
  }

  else
  {
    v6 = NowPlayingCountSignal.id.getter();
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  return sub_2315860F4();
}

uint64_t sub_2315478C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AD88 != -1)
  {
    swift_once();
  }

  v2 = qword_27DD5B4D8;
  v1 = unk_27DD5B4E0;
  *(inited + 32) = qword_27DD5B4D8;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  swift_bridgeObjectRetain_n();
  return sub_2315860F4();
}

uint64_t sub_23154797C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  *(inited + 32) = (*(v3 + 8))(v2, v3);
  *(inited + 40) = v4;
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  *(inited + 48) = (*(v6 + 8))(v5, v6);
  *(inited + 56) = v7;
  return sub_2315860F4();
}

uint64_t sub_231547A64()
{
  OUTLINED_FUNCTION_58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_36_1(inited, xmmword_231588340);
  return OUTLINED_FUNCTION_111(v1, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
}

uint64_t sub_231547AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_109(inited, xmmword_231588340);
  return OUTLINED_FUNCTION_121(v1, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
}

uint64_t sub_231547B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_66(inited, xmmword_231588340);
  return OUTLINED_FUNCTION_121(v1, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
}

uint64_t sub_231547B9C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_3_5();
    swift_once();
  }

  v8 = *a3;
  v9 = *a4;
  *(inited + 32) = *a3;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = swift_bridgeObjectRetain_n();
  return OUTLINED_FUNCTION_111(v10, MEMORY[0x277D837D0], v11, MEMORY[0x277D837E0]);
}

uint64_t sub_231547C50(uint64_t a1, unsigned int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v3);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CB18 != -1)
  {
    swift_once();
  }

  v4 = qword_280D6CB20;
  v5 = *algn_280D6CB28;
  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v6 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v6);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  MEMORY[0x23192FF80](v4, v5);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t sub_231547E2C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6C988 != -1)
  {
    swift_once();
  }

  v4 = 0x636973754DLL;
  swift_beginAccess();
  v11 = qword_280D6C990;
  v13 = qword_280D6C998;
  v5 = 0xE500000000000000;
  v6 = 0x636973754DLL;
  switch(a2)
  {
    case 1:
      v7 = 1701079382;
      goto LABEL_8;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x74736163646F50;
      break;
    case 3:
      v7 = 1768186194;
LABEL_8:
      v6 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v6 = 0x6F6F626F69647541;
      v5 = 0xE90000000000006BLL;
      break;
    case 5:
      v5 = 0xE700000000000000;
      v6 = 0x6C6172656E6547;
      break;
    default:
      break;
  }

  MEMORY[0x23192FF80](v6, v5);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v12 = qword_280D6C990;
  v14 = qword_280D6C998;
  v8 = 0xE500000000000000;
  switch(a2)
  {
    case 0:
      break;
    case 1:
      v9 = 1701079382;
      goto LABEL_15;
    case 2:
      v8 = 0xE700000000000000;
      v4 = 0x74736163646F50;
      break;
    case 3:
      v9 = 1768186194;
LABEL_15:
      v4 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v4 = 0x6F6F626F69647541;
      v8 = 0xE90000000000006BLL;
      break;
    case 5:
      v8 = 0xE700000000000000;
      v4 = 0x6C6172656E6547;
      break;
    default:
      JUMPOUT(0);
  }

  MEMORY[0x23192FF80](v4, v8);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  return sub_2315860F4();
}

uint64_t sub_2315480B0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27DD5BB40;
  v4 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v3, v4);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v6 = qword_27DD5BB40;
  v5 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v6, v5);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t sub_231548258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EBB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280D6EBC0;
  v2 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v4 = qword_280D6EBC0;
  v3 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v4, v3);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t sub_231548410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EB00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280D6EB08;
  v2 = qword_280D6EB10;

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v4 = qword_280D6EB08;
  v3 = qword_280D6EB10;

  MEMORY[0x23192FF80](v4, v3);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t SignalProviding.subSignalIDToCacheKeyMapping.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v1 = OUTLINED_FUNCTION_18_3();
  *(inited + 32) = v2(v1);
  *(inited + 40) = v3;
  v4 = OUTLINED_FUNCTION_18_3();
  *(inited + 48) = v5(v4);
  *(inited + 56) = v6;
  return sub_2315860F4();
}

uint64_t SignalProviding.adaptCached(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_2314A5168(v2, v3);
}

uint64_t sub_231548744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientInDayLightHourSignal;
  *(v0 + 64) = &protocol witness table for ClientInDayLightHourSignal;
  if (qword_27DD5AD58 != -1)
  {
    swift_once();
  }

  v1 = unk_27DD5B390;
  *(v0 + 32) = qword_27DD5B388;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2315487F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientRegionSignal;
  *(v0 + 64) = &protocol witness table for ClientRegionSignal;
  *(v0 + 32) = swift_allocObject();
  ClientRegionSignal.init()();
  return v0;
}

uint64_t sub_231548878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 64) = &protocol witness table for ClientTimeRangeSignal;
  if (qword_280D6D2F8 != -1)
  {
    swift_once();
  }

  v1 = *algn_280D6D308;
  *(v0 + 32) = qword_280D6D300;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_231548920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for DeviceClassSignal;
  *(v0 + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    swift_once();
  }

  v1 = unk_280D6F908;
  *(v0 + 32) = qword_280D6F900;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2315489C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_28460FF28;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231548CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v2 = [v1 Connected];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 64) = &protocol witness table for IsCarPlayConnectedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F180;
  v3[5] = qword_280D6F178;
  v3[6] = v4;
  v3[2] = v2;
  v3[3] = sub_23151532C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231548E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610070;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231548F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_2846100C8;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

void static SignalProviding.instances(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ValueMetadata *a13, _UNKNOWN **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  v37 = v32[4];
  v38 = v32[5];
  a13 = &type metadata for SignalComputationContext;
  a14 = &protocol witness table for SignalComputationContext;
  v39 = swift_allocObject();
  a10 = v39;
  v39[2] = v33;
  v39[3] = v34;
  v39[4] = v35;
  v39[5] = v36;
  v39[6] = v37;
  v39[7] = v38;
  v40 = *(v29 + 104);

  v40(&a10, v31, v29);
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_44();
}

uint64_t static SignalProviding.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_231549278(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t (*)(), void, uint64_t))
{
  v6 = sub_2315859F4();
  v7 = OUTLINED_FUNCTION_19(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_231588340;
  *(v11 + 56) = a1(0);
  *(v11 + 64) = a2;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));
  sub_2315859E4();
  a3(sub_23149A718, 0, v10);
  return v11;
}

uint64_t sub_23154936C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_284610608;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_2315494EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v7[3] = &type metadata for BiomeSQLQueryResultProvider;
  v7[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6F168;
  *(v1 + 16) = qword_280D6F160;
  *(v1 + 24) = v2;
  sub_2314A2C74(v7, v6);
  type metadata accessor for BiomeQueriesAppInFocus();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_23149FD3C(v6, v3 + 24);
  *(v1 + 32) = v3;
  *(v1 + 40) = sub_2314E03E4;
  *(v1 + 48) = 0;

  __swift_destroy_boxed_opaque_existential_1(v7);
  *(v1 + 56) = v4;
  *(v1 + 64) = -1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  return v0;
}

uint64_t sub_231549670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610688;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t sub_2315497D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_2846106E0;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231549944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v6 = &type metadata for SubscriptionStatusProvider;
  v7 = &off_28461D0D8;
  *(v0 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v0 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6C970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6C980;
  *(v1 + 16) = qword_280D6C978;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = &unk_284610788;
  *(v1 + 40) = v3;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  sub_23149FD3C(&v5, v1 + 88);

  return v0;
}

uint64_t sub_231549A94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6F928;
  *(v1 + 16) = qword_280D6F920;
  *(v1 + 24) = v2;
  *(v1 + 32) = &unk_2846107B8;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v3 = swift_allocObject();

  v4 = MEMORY[0x277D84F90];
  *(v1 + 40) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v3);
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  return v0;
}

uint64_t sub_231549BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingStateSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280D6F620;
  *(v0 + 32) = qword_280D6F618;
  *(v0 + 40) = v1;
  type metadata accessor for BiomeQueriesNowPlaying(0);
  v2 = swift_allocObject();

  *(v0 + 48) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v2);
  return v0;
}

uint64_t sub_231549D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 Install];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6C958 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6C968;
  *(v3 + 16) = qword_280D6C960;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = MEMORY[0x277D84F90];
  *(v3 + 40) = v2;
  *(v3 + 48) = sub_2314E03E4;
  *(v3 + 56) = 0;
  *(v3 + 64) = v5;
  *(v3 + 72) = -1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;

  return v0;
}

uint64_t sub_231549E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F020 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F030;
  *(v3 + 16) = qword_280D6F028;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = -1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t sub_231549FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t sub_23154A110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v0 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5C1A0;
  *(v3 + 16) = qword_27DD5C198;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t sub_23154A280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v0 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6D5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6D608;
  *(v3 + 16) = qword_280D6D600;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = v2;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;

  return v0;
}

uint64_t sub_23154A3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for WifiStateSignal;
  *(v0 + 64) = &protocol witness table for WifiStateSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Wireless];
  swift_unknownObjectRelease();
  v4 = [v3 WiFi];
  swift_unknownObjectRelease();
  if (qword_27DD5AE58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27DD5C1B0;
  v5 = qword_27DD5C1B8;
  v1[2] = v4;
  v1[3] = sub_23151532C;
  v1[4] = 0;
  v1[5] = v6;
  v1[6] = v5;

  return v0;
}

uint64_t sub_23154A560()
{
  v1 = *v0;
  result = MEMORY[0x277D84F90];
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_89();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      switch(v4)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_138();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_139();
      if (v7)
      {
        OUTLINED_FUNCTION_143(v6 > 1);
        v5 = v9;
      }

      result = OUTLINED_FUNCTION_106(v5);
    }

    while (!v8);
  }

  return result;
}

uint64_t sub_23154A66C(uint64_t a1)
{
  v32 = sub_231585B14();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionDisambiguationFrequencySignal(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_23154A560();
  v34 = a1;
  v12 = sub_2314DCE50(sub_23155BBB4, v33, v11);

  v13 = *(v12 + 16);
  v14 = *(sub_23154A560() + 16);

  if (v13 == v14)
  {
    v36 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v15 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v17 = a1;
    v18 = v32;
    (*(v2 + 16))(v4, v17, v32);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v31 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315650;
      v36 = 0;
      v37 = 0xE000000000000000;
      v38 = v22;
      if (qword_280D6EDE8 != -1)
      {
        swift_once();
      }

      MEMORY[0x23192FF80](qword_280D6EDF0, *algn_280D6EDF8);
      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v35 = v10[*(v5 + 24)];
      sub_231586A54();
      sub_23155B9E0(v10, type metadata accessor for ActionDisambiguationFrequencySignal);
      v23 = sub_2314A22E8();

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = sub_23154A560();
      sub_23155B9E0(v8, type metadata accessor for ActionDisambiguationFrequencySignal);
      MEMORY[0x231930080](v24, MEMORY[0x277D837D0]);

      v25 = sub_2314A22E8();

      *(v21 + 14) = v25;
      *(v21 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v4, v32);
      v26 = sub_2314A22E8();

      *(v21 + 24) = v26;
      _os_log_impl(&dword_231496000, v19, v31, "%s: >=1 of %s missing from interaction fields %s.", v21, 0x20u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x231931280](v27, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    else
    {
      sub_23155B9E0(v8, type metadata accessor for ActionDisambiguationFrequencySignal);

      (*(v2 + 8))(v4, v18);
      sub_23155B9E0(v10, type metadata accessor for ActionDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_23154ABA4(uint64_t a1)
{
  v32 = sub_231585B14();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppDisambiguationFrequencySignal(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_23154A560();
  v34 = a1;
  v12 = sub_2314DCE50(sub_23155BBB4, v33, v11);

  v13 = *(v12 + 16);
  v14 = *(sub_23154A560() + 16);

  if (v13 == v14)
  {
    v36 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v15 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v17 = a1;
    v18 = v32;
    (*(v2 + 16))(v4, v17, v32);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v31 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315650;
      v36 = 0;
      v37 = 0xE000000000000000;
      v38 = v22;
      if (qword_280D6F000 != -1)
      {
        swift_once();
      }

      MEMORY[0x23192FF80](qword_280D6F008, *algn_280D6F010);
      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v35 = v10[*(v5 + 24)];
      sub_231586A54();
      sub_23155B9E0(v10, type metadata accessor for AppDisambiguationFrequencySignal);
      v23 = sub_2314A22E8();

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      v24 = sub_23154A560();
      sub_23155B9E0(v8, type metadata accessor for AppDisambiguationFrequencySignal);
      MEMORY[0x231930080](v24, MEMORY[0x277D837D0]);

      v25 = sub_2314A22E8();

      *(v21 + 14) = v25;
      *(v21 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v4, v32);
      v26 = sub_2314A22E8();

      *(v21 + 24) = v26;
      _os_log_impl(&dword_231496000, v19, v31, "%s: >=1 of %s missing from interaction fields %s.", v21, 0x20u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x231931280](v27, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    else
    {
      sub_23155B9E0(v8, type metadata accessor for AppDisambiguationFrequencySignal);

      (*(v2 + 8))(v4, v18);
      sub_23155B9E0(v10, type metadata accessor for AppDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_23154B0DC(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal(0);
  v7 = MEMORY[0x28223BE20](AppDisambiguationResultSignal - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_231555378();
  v30 = a1;
  v13 = sub_2314DCE50(sub_23155BBB4, v29, v12);

  v14 = *(v13 + 16);
  v15 = *(sub_231555378() + 16);

  if (v14 == v15)
  {
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v16 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v5, a1, v2);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v20 = 136315650;
      v27 = v2;

      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationResultSignal);
      v21 = sub_2314A22E8();

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      v22 = sub_231555378();
      sub_23155B9E0(v9, type metadata accessor for LastAppDisambiguationResultSignal);
      MEMORY[0x231930080](v22, MEMORY[0x277D837D0]);

      v23 = sub_2314A22E8();

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v5, v27);
      v24 = sub_2314A22E8();

      *(v20 + 24) = v24;
      _os_log_impl(&dword_231496000, v18, v19, "%s: >=1 of %s missing from interaction fields %s.", v20, 0x20u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x231931280](v25, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    else
    {
      sub_23155B9E0(v9, type metadata accessor for LastAppDisambiguationResultSignal);

      (*(v3 + 8))(v5, v2);
      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationResultSignal);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_23154B5B4(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal(0);
  v7 = MEMORY[0x28223BE20](AppDisambiguationRecencySignal - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_231555378();
  v30 = a1;
  v13 = sub_2314DCE50(sub_23155BBB4, v29, v12);

  v14 = *(v13 + 16);
  v15 = *(sub_231555378() + 16);

  if (v14 == v15)
  {
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v16 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v5, a1, v2);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v20 = 136315650;
      v27 = v2;

      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationRecencySignal);
      v21 = sub_2314A22E8();

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      v22 = sub_231555378();
      sub_23155B9E0(v9, type metadata accessor for LastAppDisambiguationRecencySignal);
      MEMORY[0x231930080](v22, MEMORY[0x277D837D0]);

      v23 = sub_2314A22E8();

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v5, v27);
      v24 = sub_2314A22E8();

      *(v20 + 24) = v24;
      _os_log_impl(&dword_231496000, v18, v19, "%s: >=1 of %s missing from interaction fields %s.", v20, 0x20u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x231931280](v25, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    else
    {
      sub_23155B9E0(v9, type metadata accessor for LastAppDisambiguationRecencySignal);

      (*(v3 + 8))(v5, v2);
      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationRecencySignal);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_23154BA8C(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal(0);
  v7 = MEMORY[0x28223BE20](ActionDisambiguationResultSignal - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_231555378();
  v30 = a1;
  v13 = sub_2314DCE50(sub_23155BBB4, v29, v12);

  v14 = *(v13 + 16);
  v15 = *(sub_231555378() + 16);

  if (v14 == v15)
  {
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v16 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v5, a1, v2);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v20 = 136315650;
      v27 = v2;

      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationResultSignal);
      v21 = sub_2314A22E8();

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      v22 = sub_231555378();
      sub_23155B9E0(v9, type metadata accessor for LastActionDisambiguationResultSignal);
      MEMORY[0x231930080](v22, MEMORY[0x277D837D0]);

      v23 = sub_2314A22E8();

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v5, v27);
      v24 = sub_2314A22E8();

      *(v20 + 24) = v24;
      _os_log_impl(&dword_231496000, v18, v19, "%s: >=1 of %s missing from interaction fields %s.", v20, 0x20u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x231931280](v25, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    else
    {
      sub_23155B9E0(v9, type metadata accessor for LastActionDisambiguationResultSignal);

      (*(v3 + 8))(v5, v2);
      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationResultSignal);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_23154BF64(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal(0);
  v7 = MEMORY[0x28223BE20](ActionDisambiguationRecencySignal - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_231555378();
  v30 = a1;
  v13 = sub_2314DCE50(sub_23155BBB4, v29, v12);

  v14 = *(v13 + 16);
  v15 = *(sub_231555378() + 16);

  if (v14 == v15)
  {
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v16 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v5, a1, v2);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v20 = 136315650;
      v27 = v2;

      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationRecencySignal);
      v21 = sub_2314A22E8();

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      v22 = sub_231555378();
      sub_23155B9E0(v9, type metadata accessor for LastActionDisambiguationRecencySignal);
      MEMORY[0x231930080](v22, MEMORY[0x277D837D0]);

      v23 = sub_2314A22E8();

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v5, v27);
      v24 = sub_2314A22E8();

      *(v20 + 24) = v24;
      _os_log_impl(&dword_231496000, v18, v19, "%s: >=1 of %s missing from interaction fields %s.", v20, 0x20u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x231931280](v25, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    else
    {
      sub_23155B9E0(v9, type metadata accessor for LastActionDisambiguationRecencySignal);

      (*(v3 + 8))(v5, v2);
      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationRecencySignal);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_23154C43C(uint64_t a1)
{
  v34 = sub_231585B14();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_23154A560();
  v36 = a1;
  v12 = sub_2314DCE50(sub_23155AB5C, v35, v11);

  v13 = *(v12 + 16);
  v14 = *(sub_23154A560() + 16);

  if (v13 == v14)
  {
    v38[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v15 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v17 = a1;
    v18 = v34;
    (*(v2 + 16))(v4, v17, v34);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v33 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315650;
      v39 = 0;
      v40 = 0xE000000000000000;
      v41 = v22;
      if (qword_280D6EBB8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v24 = qword_280D6EBC0;
      v23 = qword_280D6EBC8;

      MEMORY[0x23192FF80](v24, v23);

      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v37 = v10[*(v5 + 24)];
      sub_231586A54();
      sub_23155B9E0(v10, type metadata accessor for SelectedAppDisambiguationFrequencySignal);
      v25 = sub_2314A22E8();

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_23154A560();
      sub_23155B9E0(v8, type metadata accessor for SelectedAppDisambiguationFrequencySignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v4, v34);
      v28 = sub_2314A22E8();

      *(v21 + 24) = v28;
      _os_log_impl(&dword_231496000, v19, v33, "%s: >=1 of %s missing from interaction fields %s.", v21, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    else
    {
      sub_23155B9E0(v8, type metadata accessor for SelectedAppDisambiguationFrequencySignal);

      (*(v2 + 8))(v4, v18);
      sub_23155B9E0(v10, type metadata accessor for SelectedAppDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_23154C9A0(uint64_t a1)
{
  v34 = sub_231585B14();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_23154A560();
  v36 = a1;
  v12 = sub_2314DCE50(sub_23155BBB4, v35, v11);

  v13 = *(v12 + 16);
  v14 = *(sub_23154A560() + 16);

  if (v13 == v14)
  {
    v38[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v15 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v17 = a1;
    v18 = v34;
    (*(v2 + 16))(v4, v17, v34);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v33 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315650;
      v39 = 0;
      v40 = 0xE000000000000000;
      v41 = v22;
      if (qword_280D6EB00 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v24 = qword_280D6EB08;
      v23 = qword_280D6EB10;

      MEMORY[0x23192FF80](v24, v23);

      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v37 = v10[*(v5 + 24)];
      sub_231586A54();
      sub_23155B9E0(v10, type metadata accessor for SelectedActionDisambiguationFrequencySignal);
      v25 = sub_2314A22E8();

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = sub_23154A560();
      sub_23155B9E0(v8, type metadata accessor for SelectedActionDisambiguationFrequencySignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v4, v34);
      v28 = sub_2314A22E8();

      *(v21 + 24) = v28;
      _os_log_impl(&dword_231496000, v19, v33, "%s: >=1 of %s missing from interaction fields %s.", v21, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    else
    {
      sub_23155B9E0(v8, type metadata accessor for SelectedActionDisambiguationFrequencySignal);

      (*(v2 + 8))(v4, v18);
      sub_23155B9E0(v10, type metadata accessor for SelectedActionDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_23154CF04(uint64_t a1)
{
  v3 = 0;
  v4 = 0xE000000000000000;
  if (qword_280D6EBB8 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
  }

  OUTLINED_FUNCTION_52(a1, v2);

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_7_10();
  type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  sub_231586A54();
  return v3;
}

uint64_t sub_23154CFC8(uint64_t a1, char a2)
{
  v4 = 0;
  v5 = 0xE000000000000000;
  if (qword_27DD5AE30 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_52(a1, v3);

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return v4;
}

uint64_t sub_23154D08C(uint64_t a1, char a2)
{
  if (qword_280D6C988 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22_4(&qword_280D6C990, v4);
  v5 = qword_280D6C990;
  v6 = qword_280D6C998;

  v2 = OUTLINED_FUNCTION_18_3();
  MEMORY[0x23192FF80](v2);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  return v5;
}

uint64_t sub_23154D1D4(uint64_t a1, __int16 a2)
{
  v2 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_7_10();
  if (qword_280D6CB18 != -1)
  {
    swift_once();
  }

  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return 0;
}

uint64_t sub_23154D2B0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_1_34();
}

uint64_t sub_23154D304()
{
  if (qword_27DD5AD88 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_3_10();
}

void sub_23154D3A8()
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_129(v4, v5);
  v7 = type metadata accessor for ActionDisambiguationFrequencySignal(v6);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_128();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v1 + *(v7 + 24)), byte_28460FCD0);
  if (v13)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);
    OUTLINED_FUNCTION_41_0();
    sub_2314A6578();
    v15 = sub_231585FE4();
    v16 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v16))
    {
      v17 = OUTLINED_FUNCTION_22();
      v18 = OUTLINED_FUNCTION_47();
      *v17 = 136315138;
      OUTLINED_FUNCTION_27_2(v18);
      if (qword_280D6EDE8 != -1)
      {
        OUTLINED_FUNCTION_1(&qword_280D6EDE8);
      }

      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_147(v19, v20, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      OUTLINED_FUNCTION_7_25();
      sub_23155B9E0(v2, v21);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_114();
      *(v17 + 4) = v49;
      OUTLINED_FUNCTION_55(&dword_231496000, v22, v23, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_7_25();
      sub_23155B9E0(v2, v37);
    }

    sub_2315860F4();
    v38 = OUTLINED_FUNCTION_32_1();
    v0(v38);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v24 = OUTLINED_FUNCTION_123();
    v0(v24);
    v25 = OUTLINED_FUNCTION_122();
    v26(v25);
    OUTLINED_FUNCTION_154();
    if (v2)
    {

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v27 = sub_231585FF4();
      __swift_project_value_buffer(v27, qword_280D72248);
      OUTLINED_FUNCTION_41_0();
      sub_2314A6578();
      v28 = sub_231585FE4();
      v29 = sub_2315865E4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_22();
        v31 = OUTLINED_FUNCTION_47();
        *v30 = 136315138;
        OUTLINED_FUNCTION_27_2(v31);
        if (qword_280D6EDE8 != -1)
        {
          OUTLINED_FUNCTION_1(&qword_280D6EDE8);
        }

        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_147(v32, v33, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
        OUTLINED_FUNCTION_7_25();
        sub_23155B9E0(v48, v34);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v30 + 4) = v49;
        OUTLINED_FUNCTION_144(&dword_231496000, v35, v36, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        OUTLINED_FUNCTION_7_25();
        sub_23155B9E0(v48, v47);
      }

      (v0)(v3, v10);
    }

    else
    {
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14(sub_23155BA34, v40, v41);
      sub_2315860F4();
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v42);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v43, v44, v45);
      OUTLINED_FUNCTION_3_19();
      v46 = OUTLINED_FUNCTION_32_1();
      v0(v46);
      OUTLINED_FUNCTION_113();
      (v0)(v3, v10);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154D86C()
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_129(v4, v5);
  v7 = type metadata accessor for AppDisambiguationFrequencySignal(v6);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_128();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v1 + *(v7 + 24)), byte_28460FCD0);
  if (v13)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);
    OUTLINED_FUNCTION_42_0();
    sub_2314A6578();
    v15 = sub_231585FE4();
    v16 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v16))
    {
      v17 = OUTLINED_FUNCTION_22();
      v18 = OUTLINED_FUNCTION_47();
      *v17 = 136315138;
      OUTLINED_FUNCTION_27_2(v18);
      if (qword_280D6F000 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_280D6F000);
      }

      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_147(v19, v20, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      OUTLINED_FUNCTION_10_15();
      sub_23155B9E0(v2, v21);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_114();
      *(v17 + 4) = v49;
      OUTLINED_FUNCTION_55(&dword_231496000, v22, v23, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_10_15();
      sub_23155B9E0(v2, v37);
    }

    sub_2315860F4();
    v38 = OUTLINED_FUNCTION_32_1();
    v0(v38);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v24 = OUTLINED_FUNCTION_123();
    v0(v24);
    v25 = OUTLINED_FUNCTION_122();
    v26(v25);
    OUTLINED_FUNCTION_154();
    if (v2)
    {

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v27 = sub_231585FF4();
      __swift_project_value_buffer(v27, qword_280D72248);
      OUTLINED_FUNCTION_42_0();
      sub_2314A6578();
      v28 = sub_231585FE4();
      v29 = sub_2315865E4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_22();
        v31 = OUTLINED_FUNCTION_47();
        *v30 = 136315138;
        OUTLINED_FUNCTION_27_2(v31);
        if (qword_280D6F000 != -1)
        {
          OUTLINED_FUNCTION_0_2(&qword_280D6F000);
        }

        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_147(v32, v33, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
        OUTLINED_FUNCTION_10_15();
        sub_23155B9E0(v48, v34);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v30 + 4) = v49;
        OUTLINED_FUNCTION_144(&dword_231496000, v35, v36, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        OUTLINED_FUNCTION_10_15();
        sub_23155B9E0(v48, v47);
      }

      (v0)(v3, v10);
    }

    else
    {
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14(sub_23155B874, v40, v41);
      sub_2315860F4();
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v42);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v43, v44, v45);
      OUTLINED_FUNCTION_3_19();
      v46 = OUTLINED_FUNCTION_32_1();
      v0(v46);
      OUTLINED_FUNCTION_113();
      (v0)(v3, v10);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154DD30()
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_130(v4, v5);
  v7 = type metadata accessor for SelectedAppDisambiguationFrequencySignal(v6);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v3 + *(v7 + 24)), byte_28460FCD0);
  if (v18)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    OUTLINED_FUNCTION_40_0();
    sub_2314A6578();
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v21))
    {
      v22 = OUTLINED_FUNCTION_22();
      v23 = OUTLINED_FUNCTION_47();
      *v22 = 136315138;
      v24 = OUTLINED_FUNCTION_27_2(v23);
      if (qword_280D6EBB8 != -1)
      {
        v24 = OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
      }

      OUTLINED_FUNCTION_52(v24, &v66);
      v25 = qword_280D6EBC8;

      v26 = OUTLINED_FUNCTION_124();
      MEMORY[0x23192FF80](v26, v25);

      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_152(v27, v28, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      OUTLINED_FUNCTION_9_19();
      sub_23155B9E0(v0, v29);
      OUTLINED_FUNCTION_3_10();
      v30 = sub_2314A22E8();

      *(v22 + 4) = v30;
      OUTLINED_FUNCTION_55(&dword_231496000, v31, v32, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_9_19();
      sub_23155B9E0(v0, v52);
    }

    v68 = sub_2315860F4();
    v53 = OUTLINED_FUNCTION_32_1();
    v1(v53);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v33 = *(v15 + 8);
    v34 = OUTLINED_FUNCTION_39();
    v33(v34);
    v35 = OUTLINED_FUNCTION_136();
    v36(v35);
    OUTLINED_FUNCTION_154();
    if (v0)
    {
      v65 = v33;

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v37 = sub_231585FF4();
      __swift_project_value_buffer(v37, qword_280D72248);
      OUTLINED_FUNCTION_40_0();
      sub_2314A6578();
      v38 = sub_231585FE4();
      v39 = sub_2315865E4();
      if (OUTLINED_FUNCTION_21_4(v39))
      {
        v40 = v7;
        v41 = OUTLINED_FUNCTION_22();
        v42 = OUTLINED_FUNCTION_47();
        *v41 = 136315138;
        v43 = OUTLINED_FUNCTION_27_2(v42);
        if (qword_280D6EBB8 != -1)
        {
          v43 = OUTLINED_FUNCTION_0_73(&qword_280D6EBB8);
        }

        OUTLINED_FUNCTION_52(v43, &v66);
        v44 = qword_280D6EBC8;

        v45 = OUTLINED_FUNCTION_124();
        MEMORY[0x23192FF80](v45, v44);

        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_152(v46, v47, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
        v48 = v68;
        OUTLINED_FUNCTION_9_19();
        sub_23155B9E0(v40, v49);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v41 + 4) = v48;
        OUTLINED_FUNCTION_142(&dword_231496000, v50, v51, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_10();

        (v65)(v2, v13);
      }

      else
      {

        OUTLINED_FUNCTION_9_19();
        sub_23155B9E0(v11, v64);
        (v33)(v2, v13);
      }
    }

    else
    {
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v54);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14(sub_23155AAF8, v55, v56);
      sub_2315860F4();
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v57);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v58, v59, v60);
      OUTLINED_FUNCTION_3_19();
      v61 = OUTLINED_FUNCTION_76();
      v62(v61);
      sub_2314A5EEC(v66, v67);
      v63 = OUTLINED_FUNCTION_39();
      v33(v63);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154E264()
{
  OUTLINED_FUNCTION_93();
  v6 = OUTLINED_FUNCTION_130(v4, v5);
  v7 = type metadata accessor for SelectedActionDisambiguationFrequencySignal(v6);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v3 + *(v7 + 24)), byte_28460FCD0);
  if (v18)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    OUTLINED_FUNCTION_39_1();
    sub_2314A6578();
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v21))
    {
      v22 = OUTLINED_FUNCTION_22();
      v23 = OUTLINED_FUNCTION_47();
      *v22 = 136315138;
      v24 = OUTLINED_FUNCTION_27_2(v23);
      if (qword_280D6EB00 != -1)
      {
        v24 = OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
      }

      OUTLINED_FUNCTION_52(v24, &v66);
      v25 = qword_280D6EB10;

      v26 = OUTLINED_FUNCTION_124();
      MEMORY[0x23192FF80](v26, v25);

      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_152(v27, v28, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      OUTLINED_FUNCTION_8_21();
      sub_23155B9E0(v0, v29);
      OUTLINED_FUNCTION_3_10();
      v30 = sub_2314A22E8();

      *(v22 + 4) = v30;
      OUTLINED_FUNCTION_55(&dword_231496000, v31, v32, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_8_21();
      sub_23155B9E0(v0, v52);
    }

    v68 = sub_2315860F4();
    v53 = OUTLINED_FUNCTION_32_1();
    v1(v53);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v33 = *(v15 + 8);
    v34 = OUTLINED_FUNCTION_39();
    v33(v34);
    v35 = OUTLINED_FUNCTION_136();
    v36(v35);
    OUTLINED_FUNCTION_154();
    if (v0)
    {
      v65 = v33;

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v37 = sub_231585FF4();
      __swift_project_value_buffer(v37, qword_280D72248);
      OUTLINED_FUNCTION_39_1();
      sub_2314A6578();
      v38 = sub_231585FE4();
      v39 = sub_2315865E4();
      if (OUTLINED_FUNCTION_21_4(v39))
      {
        v40 = v7;
        v41 = OUTLINED_FUNCTION_22();
        v42 = OUTLINED_FUNCTION_47();
        *v41 = 136315138;
        v43 = OUTLINED_FUNCTION_27_2(v42);
        if (qword_280D6EB00 != -1)
        {
          v43 = OUTLINED_FUNCTION_0_72(&qword_280D6EB00);
        }

        OUTLINED_FUNCTION_52(v43, &v66);
        v44 = qword_280D6EB10;

        v45 = OUTLINED_FUNCTION_124();
        MEMORY[0x23192FF80](v45, v44);

        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_152(v46, v47, &type metadata for Aggregation.Bucket, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
        v48 = v68;
        OUTLINED_FUNCTION_8_21();
        sub_23155B9E0(v40, v49);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v41 + 4) = v48;
        OUTLINED_FUNCTION_142(&dword_231496000, v50, v51, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_10();

        (v65)(v2, v13);
      }

      else
      {

        OUTLINED_FUNCTION_8_21();
        sub_23155B9E0(v11, v64);
        (v33)(v2, v13);
      }
    }

    else
    {
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v54);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14(sub_23155ABA4, v55, v56);
      sub_2315860F4();
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v57);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v58, v59, v60);
      OUTLINED_FUNCTION_3_19();
      v61 = OUTLINED_FUNCTION_76();
      v62(v61);
      sub_2314A5EEC(v66, v67);
      v63 = OUTLINED_FUNCTION_39();
      v33(v63);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_23154E7CC(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = sub_2314CE1D0(a1);
  if (v3)
  {
    v5 = v3;
    v6 = 1;
    a2(&v5);
    return sub_2314A5EEC(v5, v6);
  }

  else
  {
    v5 = -1;
    v6 = 0;
    return a2(&v5);
  }
}

uint64_t sub_23154E950(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  if (a7)
  {
    v20 = a4;
    a8(a6, a7);
    OUTLINED_FUNCTION_96();
  }

  OUTLINED_FUNCTION_95();
  v9 = a2();
  v17 = OUTLINED_FUNCTION_75(v9, v10, v11, v12, v13, v14, v15, v16, v20);

  return sub_2314A5EEC(v17, v18);
}

uint64_t sub_23154EA08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  v4 = OUTLINED_FUNCTION_18_3();
  return CalendarSignal.value(completion:)(v4);
}

uint64_t sub_23154EA50(uint64_t a1, void (*a2)(uint64_t *))
{
  v5 = -1;
  v6 = 0;
  a2(&v5);
  v2 = v5;
  v3 = v6;

  return sub_2314A5EEC(v2, v3);
}

uint64_t sub_23154EAB4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a7;
  v12 = 1;

  a2(&v11);
  v8 = v11;
  v9 = v12;

  return sub_2314A5EEC(v8, v9);
}

uint64_t sub_23154EB6C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = sub_2314CE450(a1);
  if (v3)
  {
    v5 = v3;
    v6 = 1;
    a2(&v5);
    return sub_2314A5EEC(v5, v6);
  }

  else
  {
    v5 = -1;
    v6 = 0;
    return a2(&v5);
  }
}

uint64_t sub_23154EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = v3[1];
  *(v6 + 16) = *v3;
  *(v6 + 32) = v7;
  v8 = v3[3];
  *(v6 + 48) = v3[2];
  *(v6 + 64) = v8;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  sub_2314BC914(v3, &v10);

  sub_2314BC6A8(sub_23155BBA0, v6);
}

uint64_t sub_23154ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  return (*(v8 + 24))(a2, a3, v7, v8);
}

uint64_t sub_23154EF9C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = -1;
  v4 = 0;
  return a2(&v3);
}

uint64_t sub_23154EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  sub_2315216FC(v3, v8);
  v6 = swift_allocObject();
  memcpy(v6 + 2, v8, 0x70uLL);
  v6[16] = a2;
  v6[17] = a3;

  sub_2315773B4(sub_23155BB9C, v6);
}

void sub_23154F1A4()
{
  OUTLINED_FUNCTION_100();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

void sub_23154F1F8()
{
  OUTLINED_FUNCTION_100();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

uint64_t sub_23154F2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ActionDisambiguationFrequencySignal(0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  sub_23154D3A8();
}

uint64_t sub_23154F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppDisambiguationFrequencySignal(0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  sub_23154D86C();
}

uint64_t sub_23154F550(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = a2;
  v26 = sub_231585884();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2315859B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2315856B4();
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CalendarSignal(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2314A6578();
  v30 = a3;

  v18 = sub_231585984();
  (*(v3 + 24))(v18);
  sub_231585964();
  (*(v5 + 8))(v7, v26);
  (*(v9 + 8))(v11, v8);
  switch(*(v3 + 16))
  {
    case 1:
      v19 = sub_231585684();
      break;
    case 2:
      v19 = sub_231585694();
      break;
    case 3:
      v19 = sub_231585674();
      break;
    default:
      v19 = sub_2315856A4();
      break;
  }

  if (v20)
  {
    v21 = -1;
  }

  else
  {
    v21 = v19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v23 = v17[1];
  *(inited + 32) = *v17;
  *(inited + 40) = v23;
  *(inited + 48) = v21;
  *(inited + 56) = 0;

  sub_2315860F4();
  v29();

  (*(v27 + 8))(v14, v28);

  return sub_23155B9E0(v17, type metadata accessor for CalendarSignal);
}

uint64_t sub_23154F8E4(uint64_t a1, void (*a2)(void), uint64_t a3)
{

  v6 = sub_23155AC08(v3, v9);
  v7 = sub_2314CE1D0(v6);
  if (v7)
  {
    sub_2315565A0(v7, 1u, a2, a3, v3);
  }

  else
  {
    sub_2315565A0(-1, 0, a2, a3, v3);
  }

  return sub_23155AC64(v3);
}

uint64_t sub_23154FB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x49uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_23155A900(v3, &v8);
  TimeTodaySpentInApp.value(completion:)(sub_23155A8F4, v6);
}

uint64_t sub_23154FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = v3[1];
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  v9 = *v3;
  v8 = v3[1];
  *(v6 + 64) = v3[2];
  *(v6 + 73) = *(v3 + 41);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v11[4] = v9;
  v11[5] = v8;
  v12[0] = v3[2];
  *(v12 + 9) = *(v3 + 41);

  sub_23155A898(v3, v11);
  TotalTimeSpentInApp.value(completion:)(sub_23155A88C, v6);
}

uint64_t sub_23154FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(v3 + 16);
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(v3 + 32);

  sub_23155AF74(v3, v9);
  sub_2314E2A04();
}

void sub_23154FD4C()
{
  OUTLINED_FUNCTION_93();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v39 = v7;
  v36 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_2315859B4();
  OUTLINED_FUNCTION_4_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_2315856B4();
  OUTLINED_FUNCTION_4_1();
  v37 = v22;
  v38 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = v4(0) - 8;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v27);
  v29 = (&v36 - v28);
  sub_2314A6578();
  v30 = v0 + *(v26 + 28);
  v40 = v6;

  sub_231585984();
  type metadata accessor for CalendarSignal(0);
  (*(v30 + 24))();
  sub_231585964();
  (*(v9 + 8))(v13, v36);
  (*(v16 + 8))(v20, v14);
  switch(*(v30 + 16))
  {
    case 1:
      v31 = sub_231585684();
      break;
    case 2:
      v31 = sub_231585694();
      break;
    case 3:
      v31 = sub_231585674();
      break;
    default:
      v31 = sub_2315856A4();
      break;
  }

  if (v32)
  {
    v33 = -1;
  }

  else
  {
    v33 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v35 = v29[1];
  *(inited + 32) = *v29;
  *(inited + 40) = v35;
  *(inited + 48) = v33;
  *(inited + 56) = 0;

  sub_2315860F4();
  v39();

  (*(v37 + 8))(v25, v38);

  sub_23155B9E0(v29, v41);
  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231550084(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  *(inited + 48) = -1;
  *(inited + 56) = 0;

  sub_2315860F4();
  a2();
}

uint64_t sub_231550144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainFrequencySignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainFrequencySignal.value(completion:)(sub_23155B554, v6);
}

uint64_t sub_231550288(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  *(inited + 48) = a7;
  *(inited + 56) = 1;
  swift_bridgeObjectRetain_n();

  sub_2315860F4();
  a2();
}

uint64_t sub_231550360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x41uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_231525A94(v3, &v8);
  NowPlayingCountSignal.value(completion:)(sub_23155ACB8);
}

uint64_t sub_231550510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v3[1];
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  v8 = v3[3];
  *(v6 + 64) = v3[2];
  *(v6 + 80) = v8;
  v9 = swift_allocObject();
  v10 = v3[1];
  *(v9 + 16) = *v3;
  *(v9 + 32) = v10;
  v11 = v3[3];
  *(v9 + 48) = v3[2];
  *(v9 + 64) = v11;
  *(v9 + 80) = sub_23155B7E4;
  *(v9 + 88) = v6;
  sub_2314BC914(v3, v13);
  sub_2314BC914(v3, v13);

  sub_2314BC6A8(sub_2314BC364, v9);
}

uint64_t sub_231550610(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  v10 = a4;

  DomainDefaultAppSignal.value(completion:)(sub_23155B5E4);
}

uint64_t sub_2315506C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2315583CC(v3, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v12[1];
  *(v6 + 32) = v12[0];
  *(v6 + 48) = v7;
  *(v6 + 64) = v13;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v10 = *(v9 + 24);

  v10(sub_23155A138, v6, v8, v9);
}

uint64_t sub_231550798(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_67(inited, xmmword_231588340)[3].n128_u8[8] = 0;

  sub_2315860F4();
  OUTLINED_FUNCTION_102();
  a2();
}

void sub_23155084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_80(v30, v31, v32, v33);
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_126(v34);
  *(v35 + 64) = *(v27 + 32);

  v28(v27, &a9);
  v36 = OUTLINED_FUNCTION_105();
  v26(v36);

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2315508C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainRecencyRankSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainRecencyRankSignal.value(completion:)(sub_23155B528, v6);
}

uint64_t sub_231550A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainUserPersonaSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainUserPersonaSignal.value(completion:)(sub_23155B08C, v6);
}

uint64_t sub_231550B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;

  ForegroundWarmAppSignal.value(completion:)(sub_23155AFD0);
}

uint64_t sub_231550C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(v3 + 16);
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(v3 + 32);
  v8 = *(v3 + 16);
  v11 = *v3;
  v12 = v8;
  v13 = *(v3 + 32);

  sub_231505824(v3, v10);
  ForegroundAppBiomeSignal.value(completion:)(sub_23155AF68, v6);
}

void sub_231550CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_80(v30, v31, v32, v33);
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_126(v34);
  *(v35 + 64) = *(v27 + 32);

  v28(v27, &a10);
  v36 = OUTLINED_FUNCTION_105();
  v26(v36);

  OUTLINED_FUNCTION_44();
}

uint64_t sub_231550D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DomainAffinityScoreSignal(0) - 8;
  MEMORY[0x28223BE20](v6);
  sub_2314A6578();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_2314A65D0();

  DomainAffinityScoreSignal.valueForApps(bundleIDs:completion:)(a1, sub_23155B6BC, v7);
}

uint64_t sub_231551358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainTotalFrequencySignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainTotalFrequencySignal.value(completion:)(sub_23155B0B8, v6);
}

uint64_t sub_2315517C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  sub_23155AFDC(v3, v13);
  if (sub_2314CD40C())
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    sub_23155AFDC(v3, v13);

    v6 = sub_231585FE4();
    v7 = sub_2315865D4();
    sub_23155B038(v4);

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315394;

      v10 = sub_2314A22E8();

      *(v8 + 4) = v10;
      *(v8 + 12) = 2080;
      sub_2315860E4();
      v11 = sub_2314A22E8();

      *(v8 + 14) = v11;
      _os_log_impl(&dword_231496000, v6, v7, "%s value: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v9, -1, -1);
      MEMORY[0x231931280](v8, -1, -1);
    }

    sub_2315569E8();
  }

  else
  {
    sub_2315569E8();
  }

  return sub_23155B038(v4);
}

uint64_t sub_231551C44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v5 = a5;
  v9 = a5 >> 8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = v5;
  *(v10 + 41) = v9;

  v11 = a4;
  DomainTaskAbandonmentSignal.value(completion:)(sub_23155B420, v10);
}

uint64_t sub_231551D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;

  v12 = a6;
  TimeSpentInAppAffinityScore.value(completion:)(sub_23155A95C, v11);
}

uint64_t sub_231551DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactRecencySignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactRecencySignal.value(completion:)(sub_23155B2EC, v6);
}

uint64_t sub_231551F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2315216FC(v3, __src);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  memcpy(v7 + 4, __src, 0x70uLL);
  __swift_project_boxed_opaque_existential_1((v4 + 72), *(v4 + 96));
  sub_2315216FC(v4, v10);
  v8 = swift_allocObject();
  memcpy(v8 + 2, v10, 0x70uLL);
  v8[16] = sub_23155ACD0;
  v8[17] = v7;

  sub_2315773B4(sub_231521734, v8);
}

uint64_t sub_231552028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactFrequencySignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactFrequencySignal.value(completion:)(sub_23155B344, v6);
}

uint64_t sub_23155216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x49uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_23155A9C0(v3, &v8);
  TimeSinceAppLastLaunchedSignal.value(completion:)(sub_23155A8F4, v6);
}

uint64_t sub_231552218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x51uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_23155AA70(v3, &v8);
  TimeSinceAppLastInstalledSignal.value(completion:)(sub_23155AA64, v6);
}

uint64_t sub_2315522C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactRecencyRankSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactRecencyRankSignal.value(completion:)(sub_23155B318, v6);
}

uint64_t sub_231552408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToHandleAffinityScoreSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToHandleAffinityScoreSignal.value(completion:)(sub_23155B164, v6);
}

uint64_t sub_23155254C(uint64_t a1, void (*a2)(void))
{
  AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal(0);
  MEMORY[0x28223BE20](AppDisambiguationResultSignal - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v6)
  {
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v9 = v5[1];
    *(inited + 32) = *v5;
    *(inited + 40) = v9;
    *(inited + 48) = v7;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v5, type metadata accessor for LastAppDisambiguationResultSignal);
}

uint64_t sub_2315526EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = a7;

  v14 = a4;

  NotificationsCountByContactSignal.value(completion:)(sub_23155ACC4, v13);
}

uint64_t sub_2315527BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactAffinityScoreSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactAffinityScoreSignal.value(completion:)(sub_23155B39C, v6);
}

uint64_t sub_231552900(uint64_t a1, void (*a2)(void))
{
  AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal(0);
  MEMORY[0x28223BE20](AppDisambiguationRecencySignal - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v7)
  {
    v8 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v10 = v5[1];
    *(inited + 32) = *v5;
    *(inited + 40) = v10;
    *(inited + 48) = v8;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v5, type metadata accessor for LastAppDisambiguationRecencySignal);
}

uint64_t sub_231552A9C(uint64_t a1, void (*a2)(void))
{
  ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal(0);
  MEMORY[0x28223BE20](ActionDisambiguationResultSignal - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v6)
  {
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v9 = v5[1];
    *(inited + 32) = *v5;
    *(inited + 40) = v9;
    *(inited + 48) = v7;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v5, type metadata accessor for LastActionDisambiguationResultSignal);
}

uint64_t sub_231552C3C(uint64_t a1, void (*a2)(void))
{
  ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal(0);
  MEMORY[0x28223BE20](ActionDisambiguationRecencySignal - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v7)
  {
    v8 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v10 = v5[1];
    *(inited + 32) = *v5;
    *(inited + 40) = v10;
    *(inited + 48) = v8;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v5, type metadata accessor for LastActionDisambiguationRecencySignal);
}

uint64_t sub_231552DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactFrequencyByIntentSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactFrequencyByIntentSignal.value(completion:)(sub_23155B370, v6);
}

uint64_t sub_231552F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactTimeSinceLastUsedSignal.value(completion:)(sub_23155B2C0, v6);
}

uint64_t sub_231553060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainTotalFrequencyByCountryCodeSignal.value(completion:)(sub_23155B138, v6);
}

uint64_t sub_2315531A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0) - 8;
  MEMORY[0x28223BE20](v6);
  sub_2314A6578();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_2314A65D0();

  DomainToContactAffinityScoreByNameSignal.valueForApps(bundleIDs:completion:)(a1, sub_23155B3C8, v7);
}

uint64_t sub_2315532F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  sub_23154DD30();
}

uint64_t sub_231553434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactAffinityScoreByIntentSignal.value(completion:)(sub_23155B3F4, v6);
}

uint64_t sub_231553578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0) - 8;
  MEMORY[0x28223BE20](v5);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  DomainToContactTotalFrequencyByIntentSignal.value(completion:)(sub_23155B190, v6);
}

uint64_t sub_2315536BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2314A65D0();

  sub_23154E264();
}

void SignalProviding.subSignalValueForApps(bundleIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v25 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35, v20, v36);
  v37 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v26;
  *(v38 + 3) = v24;
  *(v38 + 4) = v30;
  *(v38 + 5) = v28;
  (*(v33 + 32))(&v38[v37], v35, v26);
  v39 = *(v24 + 8);
  v40 = *(v39 + 32);

  v40(v32, sub_2315575FC, v38, v26, v39);

  OUTLINED_FUNCTION_3_6();
}

double static SignalProviding.debounceIntervalSeconds.getter()
{
  v0 = sub_2314A1DFC(5, 1);

  return v0;
}

uint64_t sub_231553A64(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if (a6)
  {
    v19 = a3;
    a7(a5, a6);
    OUTLINED_FUNCTION_96();
  }

  OUTLINED_FUNCTION_95();
  v8 = a1();
  v16 = OUTLINED_FUNCTION_75(v8, v9, v10, v11, v12, v13, v14, v15, v19);

  return sub_2314A5EEC(v16, v17);
}

uint64_t sub_231553AEC(uint64_t (*a1)(uint64_t *))
{
  v12 = -1;
  v13 = 0;
  v1 = a1(&v12);
  v9 = OUTLINED_FUNCTION_75(v1, v2, v3, v4, v5, v6, v7, v8, v12);

  return sub_2314A5EEC(v9, v10);
}

double sub_231553B9C()
{
  OUTLINED_FUNCTION_108();

  return OUTLINED_FUNCTION_97();
}

double SignalProviding.cacheExpirationPolicy()()
{
  OUTLINED_FUNCTION_108();

  return OUTLINED_FUNCTION_97();
}

uint64_t static SignalProviding.instances()(uint64_t a1, uint64_t a2)
{
  v4[3] = &type metadata for NoParameters;
  v4[4] = &protocol witness table for NoParameters;
  v2 = (*(a2 + 104))(v4, a1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

void static SignalProviding.instances(with:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v4 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v4, qword_280D72248);
  v5 = sub_231585FE4();
  v6 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v6))
  {
    v7 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_47();
    *v7 = 136315138;
    (*(v1 + 120))(v3, v1);
    sub_2314A22E8();
    OUTLINED_FUNCTION_3_19();
    *(v7 + 4) = v1;
    _os_log_impl(&dword_231496000, v5, v6, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v7, 0xCu);
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_119();
}

uint64_t sub_231553FC8(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_231585B14() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_2315546B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_231585884();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  sub_231585B04();
  sub_2315857F4();
  v7 = v6;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_39();
  result = v10(v9);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = -v7;
  if (__OFSUB__(0, v7))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v13 = *(a3(0) + 24);
  result = 1;
  switch(*(a2 + v13))
  {
    case 1:
      v14 = v12 < 600;
      goto LABEL_14;
    case 2:
      v14 = v12 < 3600;
      goto LABEL_14;
    case 3:
      v15 = 21600;
      goto LABEL_13;
    case 4:
      v15 = 86400;
      goto LABEL_13;
    case 5:
      v15 = 604800;
      goto LABEL_13;
    case 6:
      v15 = 2419200;
LABEL_13:
      v14 = v12 < v15;
      goto LABEL_14;
    case 7:
      return result;
    default:
      v14 = v12 < 120;
LABEL_14:
      result = v14;
      break;
  }

  return result;
}

uint64_t sub_231554868(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a2);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v24 = *a1;
    v10 = OUTLINED_FUNCTION_3_5();
    v12 = sub_23149C888(v10, v11);
    if (__OFADD__(*(v9 + 16), (v13 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v14 = v12;
      v15 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v16 = OUTLINED_FUNCTION_3_5();
        v18 = sub_23149C888(v16, v17);
        if ((v15 & 1) != (v19 & 1))
        {
LABEL_14:
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        v14 = v18;
      }

      *a1 = v24;
      if (v15)
      {
      }

      else
      {
        result = sub_231575360(v14, v7, v8, 0, v24);
      }

      v20 = *(v24 + 56);
      v21 = *(v20 + 8 * v14);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v20 + 8 * v14) = v23;
        return result;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_23155501C()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23154EE84(v8, v9);
}

uint64_t sub_23155505C()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_2315517C0(v8, v9, v10);
}

uint64_t sub_231555378()
{
  v1 = OUTLINED_FUNCTION_101();
  v3 = *(v0 + *(v2(v1) + 24));
  result = MEMORY[0x277D84F90];
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_89();
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      switch(v6)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_138();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_139();
      if (v9)
      {
        OUTLINED_FUNCTION_143(v8 > 1);
        v7 = v11;
      }

      result = OUTLINED_FUNCTION_106(v7);
    }

    while (!v10);
  }

  return result;
}

void sub_23155553C()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

void sub_231555794()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

void sub_23155597C()
{
  OUTLINED_FUNCTION_93();
  v17[1] = v2;
  v17[2] = v3;
  v17[0] = v4;
  v5 = v0;
  v6(0);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v7);
  v8 = sub_231585D14();
  OUTLINED_FUNCTION_4_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  sub_231585D04();
  OUTLINED_FUNCTION_17_11();
  sub_231585C84();
  v15 = *(v10 + 8);
  v15(v14, v8);
  (*(v10 + 32))(v14, v1, v8);
  v16 = sub_231585CF4();
  v19 = sub_2315860F4();
  v18 = sub_2315860F4();
  MEMORY[0x28223BE20](v18);
  v17[-4] = v5;
  v17[-3] = &v18;
  v17[-2] = &v19;
  sub_2315031C0(v17[0], &v17[-6], v16);
  OUTLINED_FUNCTION_3_19();

  v15(v14, v8);
  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231555CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v47 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  v11 = OUTLINED_FUNCTION_19(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  v45 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  result = a6(a1);
  if (v25)
  {
    v26 = result;
    v27 = v25;
    v46 = v6;
    sub_231585B04();
    sub_23149C774();
    v29 = v28;
    (*(v19 + 8))(v23, v17);
    v30 = sub_23149CA24(v26, v27, *a3);
    if (v31)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_82(isUniquelyReferenced_nonNull_native);
      *a3 = v48;
      v33 = sub_231585AF4();
      sub_231566A14(0xD000000000000018, 0x8000000231590120, v33, v16);

      v34 = sub_231585E34();
      if (__swift_getEnumTagSinglePayload(v16, 1, v34) == 1)
      {
        v35 = v16;
LABEL_8:
        sub_23155B0E4(v35, &qword_27DD5B4A0, &qword_23158A530);
        goto LABEL_13;
      }

      v39 = v16;
      sub_231585E24();
      OUTLINED_FUNCTION_103();
      (*(v40 + 8))(v16, v34);
    }

    else
    {
      if (v30 >= v29)
      {
      }

      v36 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_82(v36);
      *a3 = v48;
      v33 = sub_231585AF4();
      v37 = v45;
      sub_231566A14(0xD000000000000018, 0x8000000231590120, v33, v45);

      v38 = sub_231585E34();
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
      {
        v35 = v37;
        goto LABEL_8;
      }

      v39 = v37;
      sub_231585E24();
      OUTLINED_FUNCTION_103();
      (*(v41 + 8))(v37, v38);
    }

    if ((v39 & 1) == 0)
    {
      v42 = v47;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v42;
      sub_23157562C(v33, v26, v27, v43);
      *v42 = v48;
    }

LABEL_13:
    sub_231561874(v26, v27);
  }

  return result;
}

uint64_t sub_23155622C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_231547794();
}

uint64_t sub_231556268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_23154D368();
}

uint64_t sub_2315562A0()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_23154EB18(v2, v3);
}

uint64_t sub_2315562E4()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_231550360(v2, v3, v4);
}

uint64_t sub_23155634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_231547714();
}

uint64_t sub_231556388()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_23154E7CC(v2, v3);
}

uint64_t sub_2315563CC()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_23154F8E4(v2, v3, v4);
}

BOOL static SignalProviding.cacheable()(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 72))(a1) + 16);

  return v2 != 0;
}

uint64_t sub_23155653C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_146(a1);

  return a4(v7, v5, v4, v6);
}

uint64_t sub_2315565A0(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, __int128 *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  v13 = *a5;
  v10 = v13;
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_23155A1A0(&v13, &v12);
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556674(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, const void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  memcpy(__dst, a5, sizeof(__dst));
  *(inited + 32) = NowPlayingCountSignal.id.getter();
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556750(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AD88 != -1)
  {
    swift_once();
  }

  v7 = unk_27DD5B4E0;
  *(inited + 32) = qword_27DD5B4D8;
  *(inited + 40) = v7;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_23155684C(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v10 = a5[3];
  v11 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v10);
  *(inited + 32) = (*(v11 + 8))(v10, v11);
  *(inited + 40) = v12;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556948()
{
  OUTLINED_FUNCTION_26_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_29_2(inited, xmmword_231588340, *(v1 + 24), v3, v4, v5, v6, v7, v8, v9, v11);
  OUTLINED_FUNCTION_150();
  sub_2315860F4();
  OUTLINED_FUNCTION_132();
  v0();
}

uint64_t sub_2315569E8()
{
  OUTLINED_FUNCTION_26_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_29_2(inited, xmmword_231588340, *v1, v3, v4, v5, v6, v7, v8, v9, v11);
  OUTLINED_FUNCTION_150();
  sub_2315860F4();
  OUTLINED_FUNCTION_132();
  v0();
}

void sub_231556A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_67(inited, xmmword_231588340)[3].n128_u8[8] = v27;

  OUTLINED_FUNCTION_148();
  sub_2315860F4();
  OUTLINED_FUNCTION_102();
  v26();

  OUTLINED_FUNCTION_115();
}

void sub_231556B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_116();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (*v32 != -1)
  {
    swift_once();
  }

  v40 = *v28;
  *(inited + 32) = *v30;
  *(inited + 40) = v40;
  *(inited + 48) = v38;
  *(inited + 56) = v36;

  sub_2314A5168(v38, v36);
  sub_2315860F4();
  v34();

  OUTLINED_FUNCTION_115();
}

uint64_t sub_231556C10(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5, unsigned int a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v10 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v10);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CB18 != -1)
  {
    swift_once();
  }

  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556D98(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6C988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_280D6C990;
  v16 = qword_280D6C998;
  v11 = 0xE500000000000000;
  v12 = 0x636973754DLL;
  switch(a6)
  {
    case 1:
      v13 = 1701079382;
      goto LABEL_8;
    case 2:
      v11 = 0xE700000000000000;
      v12 = 0x74736163646F50;
      break;
    case 3:
      v13 = 1768186194;
LABEL_8:
      v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v11 = 0xE90000000000006BLL;
      v12 = 0x6F6F626F69647541;
      break;
    case 5:
      v11 = 0xE700000000000000;
      v12 = 0x6C6172656E6547;
      break;
    default:
      break;
  }

  MEMORY[0x23192FF80](v12, v11);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556F88(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v10 = a5[1];
  *(inited + 32) = *a5;
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231557050(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_27DD5BB40;
  v11 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v10, v11);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_2315571D8(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EBB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_280D6EBC0;
  v10 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v9, v10);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for SelectedAppDisambiguationFrequencySignal(0);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231557370(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EB00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_280D6EB08;
  v10 = qword_280D6EB10;

  MEMORY[0x23192FF80](v9, v10);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  type metadata accessor for SelectedActionDisambiguationFrequencySignal(0);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231557508(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = (*(*(a6 + 8) + 8))(a5);
  *(inited + 40) = v12;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_2314A5168(v9, v10);
  sub_2315860F4();
  a2();
}

uint64_t SignalProviding.getValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231557660, 0, 0);
}

uint64_t sub_231557660()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_231557758;
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4, 0, 0, 0x65756C6156746567, 0xEA00000000002928, sub_231557DDC, v2, &type metadata for SignalValue);
}

uint64_t sub_231557758()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_231557868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  (*(*(a4 + 8) + 24))(sub_23155BA98, v12, a3);
}

uint64_t sub_2315579D8(uint64_t a1)
{
  sub_2314A5168(*a1, *(a1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  return sub_231586484();
}

uint64_t sub_231557A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x51uLL);
  return sub_231547714();
}

void sub_231557A74()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x51uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  sub_23154F0E0(v2, v3, v4);
}

uint64_t sub_231557AB8()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x51uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_231552218(v2, v3, v4);
}

void sub_231557B00()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  v8 = OUTLINED_FUNCTION_18_9();
  sub_23154F08C(v8, v9, v10);
}

uint64_t sub_231557B40()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23155216C(v8, v9, v10);
}

uint64_t sub_231557BA0()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23154E8B0(v8, v9, v10);
}

uint64_t sub_231557BE0()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v12);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23154FB34(v8, v9, v10);
}

uint64_t sub_231557C20()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  return sub_231547714();
}

void sub_231557C54()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  sub_23154E904(v0, v1, v2);
}

uint64_t sub_231557C84()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  return sub_23154FBE0(v0, v1, v2);
}

uint64_t sub_231557F30()
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v1 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v1, qword_280D72248);
  v2 = sub_231585FE4();
  v3 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v3))
  {
    OUTLINED_FUNCTION_22();
    v7[3] = OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    OUTLINED_FUNCTION_22_4(&qword_27DD5B170, v7);

    v4 = sub_2314A22E8();

    *(v0 + 4) = v4;
    OUTLINED_FUNCTION_51(&dword_231496000, v5, v3, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_53();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231558038()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v3 = 136315138;
    swift_beginAccess();

    v4 = sub_2314A22E8();

    *(v3 + 4) = v4;
    _os_log_impl(&dword_231496000, v1, v2, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x231931280](v6, -1, -1);
    MEMORY[0x231931280](v3, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2315581A4()
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v0 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v2))
  {
    v3 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_47();
    *v3 = 136315138;
    *(v3 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v1, v2, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v3, 0xCu);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_10();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231558294()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v3 = 136315138;
    *(v3 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v1, v2, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x231931280](v5, -1, -1);
    MEMORY[0x231931280](v3, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_231558428()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v3 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v3, qword_280D72248);
  v4 = sub_231585FE4();
  v5 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v5))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    if (*v2 != -1)
    {
      swift_once();
    }

    *(v0 + 4) = sub_2314A22E8();
    OUTLINED_FUNCTION_51(&dword_231496000, v6, v5, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231558528()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v3 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v3, qword_280D72248);
  v4 = sub_231585FE4();
  v5 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v5))
  {
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_54();
    *v0 = 136315138;
    if (*v2 != -1)
    {
      swift_once();
    }

    *(v0 + 4) = sub_2314A22E8();
    OUTLINED_FUNCTION_51(&dword_231496000, v6, v5, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231558628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  v23 = v22;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v24 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v24, qword_280D72248);
  v25 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_22();
    v30 = OUTLINED_FUNCTION_54();
    *v20 = 136315138;
    v27 = OUTLINED_FUNCTION_3_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    sub_231586204();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v20 + 4) = v23;
    OUTLINED_FUNCTION_51(&dword_231496000, v29, v21, "%s no intent given");
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231558728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  v23 = v22;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v24 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v24, qword_280D72248);
  v25 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_22();
    v30 = OUTLINED_FUNCTION_54();
    *v20 = 136315138;
    v27 = OUTLINED_FUNCTION_3_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    sub_231586204();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v20 + 4) = v23;
    OUTLINED_FUNCTION_51(&dword_231496000, v29, v21, "%s no intent given");
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_119();
}

uint64_t sub_231558828()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-1] - v1;
  v3 = sub_231585D34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[3] = &type metadata for NoParameters;
  v11[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v11, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_23155B0E4(v2, &qword_27DD5B008, &unk_23158A5C0);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = (*(v4 + 32))(v6, v2, v3);
    MEMORY[0x28223BE20](v8);
    *(&v10 - 2) = v6;
    v7 = sub_2314DCD00(sub_231502BC0, (&v10 - 4), &unk_284610020);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_231558A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[3] = &type metadata for SignalComputationContext;
  v18[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v18[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23155B0E4(v4, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = (*(v6 + 32))(v8, v4, v5);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_284610020;
    }

    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v8;

    v11 = sub_2314DCD00(sub_23155BBCC, (&v16 - 4), v14);

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

void sub_231558CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_118();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v30 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v30, qword_280D72248);
  v31 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_22();
    a12 = OUTLINED_FUNCTION_54();
    *v22 = 136315138;
    if (*v29 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_4(v27, &a9);
    v33 = *v27;

    OUTLINED_FUNCTION_3_28();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v22 + 4) = v33;
    OUTLINED_FUNCTION_51(&dword_231496000, v34, v23, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_117();
}

uint64_t sub_231558DF4()
{
  OUTLINED_FUNCTION_16_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v2);
  v4 = v18 - v3;
  v19[3] = &type metadata for NoParameters;
  v19[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v19, v4);
  v5 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  sub_23155B0E4(v4, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v7 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v7, qword_280D72248);
    v8 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_22();
      v11 = OUTLINED_FUNCTION_47();
      v18[2] = v11;
      *v10 = 136315138;
      v18[1] = v0(0);
      v12 = OUTLINED_FUNCTION_18_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      sub_231586204();
      v14 = sub_2314A22E8();

      *(v10 + 4) = v14;
      OUTLINED_FUNCTION_145(&dword_231496000, v15, v16, "%s no intent given");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return MEMORY[0x277D84F90];
}

uint64_t sub_231558FE8(_OWORD *a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v4);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v25[3] = &type metadata for SignalComputationContext;
  v25[4] = &protocol witness table for SignalComputationContext;
  v8 = swift_allocObject();
  v25[0] = v8;
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  sub_2314B5008(a1, &v24);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v25, v7);
  v10 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
  sub_23155B0E4(v7, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v12 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v12, qword_280D72248);
    v13 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_90();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_22();
      v16 = OUTLINED_FUNCTION_47();
      v24 = v16;
      *v15 = 136315138;
      v23 = a2(0);
      v17 = OUTLINED_FUNCTION_18_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      sub_231586204();
      v19 = sub_2314A22E8();

      *(v15 + 4) = v19;
      OUTLINED_FUNCTION_145(&dword_231496000, v20, v21, "%s no intent given");
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return MEMORY[0x277D84F90];
}

uint64_t sub_23155921C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_231585D34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &type metadata for NoParameters;
  v38 = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v36, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_23155B0E4(v2, &qword_27DD5B008, &unk_23158A5C0);
LABEL_22:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = v37;
  v8 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v9 = (v8[3])(v7, v8);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &unk_28460FF58;
  }

  v11 = v37;
  v12 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v13 = (v12[6])(v11, v12);
  if (!v13)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      v34 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      _os_log_impl(&dword_231496000, v21, v22, "%s no intent given", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x231931280](v24, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    goto LABEL_21;
  }

  v14 = v13;
  v15 = v37;
  v16 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v17 = *((v16[1])(v15, v16) + 16);

  if (!v17)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      v34 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v31 = sub_2314A22E8();

      *(v29 + 4) = v31;
      _os_log_impl(&dword_231496000, v27, v28, "%s no bundleIds given", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x231931280](v30, -1, -1);
      MEMORY[0x231931280](v29, -1, -1);
    }

LABEL_21:
    (*(v4 + 8))(v6, v3);
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v18);
  *(&v33 - 4) = v6;
  *(&v33 - 3) = v14;
  *(&v33 - 2) = v36;
  v19 = sub_2314DCD00(sub_2314EF3D0, (&v33 - 6), v10);

  (*(v4 + 8))(v6, v3);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v19;
}

uint64_t sub_2315597A8(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37[-v3];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = &type metadata for SignalComputationContext;
  v42 = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v40[0] = v9;
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = a1[2];
  sub_2314B5008(a1, &v39);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v40, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23155B0E4(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_22:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = v41;
  v12 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v13 = (v12[3])(v11, v12);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_28460FF58;
  }

  v15 = v41;
  v16 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v17 = (v16[6])(v15, v16);
  if (!v17)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136315138;
      v38 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "%s no intent given", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }

    goto LABEL_21;
  }

  v18 = v17;
  v19 = v41;
  v20 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v21 = *((v20[1])(v19, v20) + 16);

  if (!v21)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v30 = sub_231585FF4();
    __swift_project_value_buffer(v30, qword_280D72248);
    v31 = sub_231585FE4();
    v32 = sub_2315865E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v33 = 136315138;
      v38 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v35 = sub_2314A22E8();

      *(v33 + 4) = v35;
      _os_log_impl(&dword_231496000, v31, v32, "%s no bundleIds given", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x231931280](v34, -1, -1);
      MEMORY[0x231931280](v33, -1, -1);
    }

LABEL_21:
    (*(v6 + 8))(v8, v5);
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v22);
  *&v37[-32] = v8;
  *&v37[-24] = v18;
  *&v37[-16] = v40;
  v23 = sub_2314DCD00(sub_23155BBFC, &v37[-48], v14);

  (*(v6 + 8))(v8, v5);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v23;
}

uint64_t sub_231559F68(uint64_t a1, void (*a2)(void), uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v5 = a4[1];
  v7[0] = *a4;
  v7[1] = v5;
  v8[0] = a4[2];
  *(v8 + 9) = *(a4 + 41);
  return sub_2315565A0(v4, *(a1 + 8), a2, a3, v7);
}

uint64_t sub_23155A04C(uint64_t a1, void (*a2)(void), uint64_t a3, void *__src)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  memcpy(__dst, __src, 0x41uLL);
  return sub_231556674(v6, v7, a2, a3, __dst);
}

uint64_t sub_23155A0B0(uint64_t a1, void (*a2)(void), uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  v5 = a4[1];
  v8[0] = *a4;
  v8[1] = v5;
  v6 = a4[3];
  v8[2] = a4[2];
  v8[3] = v6;
  return sub_2315565A0(v4, *(a1 + 8), a2, a3, v8);
}

uint64_t sub_23155A444(uint64_t a1, void (*a2)(void), uint64_t a3, void *__src)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  memcpy(__dst, __src, 0x51uLL);
  return sub_2315565A0(v6, v7, a2, a3, __dst);
}

void sub_23155A76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_118();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v30 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v30, qword_280D72248);
  v31 = sub_231585FE4();
  sub_2315865E4();
  OUTLINED_FUNCTION_90();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_22();
    a12 = OUTLINED_FUNCTION_54();
    *v22 = 136315138;
    if (*v29 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_4(v27, &a9);
    v33 = *v27;

    OUTLINED_FUNCTION_3_28();
    sub_2314A22E8();
    OUTLINED_FUNCTION_7_18();
    *(v22 + 4) = v33;
    OUTLINED_FUNCTION_51(&dword_231496000, v34, v23, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list");
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_53();
  }

  OUTLINED_FUNCTION_117();
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t objectdestroy_24Tm()
{

  v1 = OUTLINED_FUNCTION_98();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_62Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t objectdestroy_9Tm()
{

  v1 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23155B0E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_28();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_123Tm()
{
  v2 = OUTLINED_FUNCTION_101();
  v3(v2);
  OUTLINED_FUNCTION_19_9();
  v5 = *(v4 + 80);

  v6 = v1 + ((v5 + 32) & ~v5);
  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v7 + 8))(v6);

  v8 = *(v0 + 32);
  sub_231585A84();
  OUTLINED_FUNCTION_4_28();
  (*(v9 + 8))(v6 + v8);
  v10 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t objectdestroy_127Tm(uint64_t a1, void (*a2)(void))
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = (v5(v4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v10 + 8))(v2 + v8);
  a2(*(v2 + v8 + v6[8] + 8));

  return MEMORY[0x2821FE8E8](v2, v8 + v9, v7 | 7);
}

uint64_t objectdestroy_18Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  a1(*(v1 + 40));
  v3 = OUTLINED_FUNCTION_1_34();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

uint64_t objectdestroy_114Tm()
{
  v1 = OUTLINED_FUNCTION_101();
  v3 = *(v2(v1) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v7 + 8))(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_76Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_79Tm()
{

  v1 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_197Tm()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_42Tm()
{
  v2 = OUTLINED_FUNCTION_101();
  v3(v2);
  OUTLINED_FUNCTION_19_9();
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  v9 = *(v0 + 28);
  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v10 + 8))(v1 + v6 + v9);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_23155B9E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_28();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23155BA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  OUTLINED_FUNCTION_19(v2);

  return sub_2315579D8(a1);
}

unint64_t sub_23155BB10()
{
  result = qword_280D6D010;
  if (!qword_280D6D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6D010);
  }

  return result;
}

void OUTLINED_FUNCTION_31_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x231931280);
}

void OUTLINED_FUNCTION_44_0()
{

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_231585D14();
}

void *OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_66(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v6 = *v3;
  v5 = v3[1];
  v2[4] = *v3;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v5;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_70()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_76()
{
  *(v1 - 128) = v0;
  *(v1 - 120) = 1;
  return v1 - 128;
}

void OUTLINED_FUNCTION_82(uint64_t a1)
{
  *(v5 - 72) = *v3;

  sub_23157562C(v1, v4, v2, a1);
}

BOOL OUTLINED_FUNCTION_83(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x49uLL);
}

void OUTLINED_FUNCTION_89()
{

  sub_23152D598(0, v0, 0);
}

double OUTLINED_FUNCTION_97()
{
  result = v1;
  *v0 = v1;
  *(v0 + 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_99()
{

  sub_23155597C();
}

void OUTLINED_FUNCTION_100()
{

  sub_23155597C();
}

uint64_t OUTLINED_FUNCTION_106(uint64_t result)
{
  *(result + 16) = v1;
  v5 = result + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2 | 0x8000000000000000;
  return result;
}

double OUTLINED_FUNCTION_107()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_108()
{

  return sub_2314A1DFC(1, 2);
}

uint64_t OUTLINED_FUNCTION_109(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v2[4] = v6;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v5;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_112()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_113()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_2314A5EEC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_114()
{
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2315860F4();
}

__n128 OUTLINED_FUNCTION_126(uint64_t a1)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  result = *v1;
  v5 = *(v1 + 16);
  *(a1 + 32) = *v1;
  *(a1 + 48) = v5;
  return result;
}

void OUTLINED_FUNCTION_142(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_143(uint64_t a1)
{

  sub_23152D598(a1, v1, 1);
}

void OUTLINED_FUNCTION_144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_145(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void *OUTLINED_FUNCTION_146(void *a1)
{
  v2 = a1[3];

  return __swift_project_boxed_opaque_existential_1(a1, v2);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_231586A54();
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_2314A5168(v1, v0);
}

uint64_t OUTLINED_FUNCTION_150()
{

  return sub_2314A5168(v1, v0);
}

void OUTLINED_FUNCTION_151()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_231586A54();
}

uint64_t OUTLINED_FUNCTION_153(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231553FC8(a1, v3, a3, v4);
}

uint64_t OUTLINED_FUNCTION_154()
{

  return sub_231585CF4();
}

uint64_t sub_23155C480()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2F0, &qword_231589310);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_35_1();
  type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(v3);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_34_3();
  if (__swift_getEnumTagSinglePayload(v5, v6, v7) == 1)
  {
    v8 = OUTLINED_FUNCTION_13_7();
    sub_2314A2910(v8, v9, &qword_231589310);
    v10 = OUTLINED_FUNCTION_32_2();
    sub_231561B9C(v10, v11, v12, v13, v14, v15, v16);

    v17 = OUTLINED_FUNCTION_30_2();
    return sub_2314A2910(v17, v18, v19);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_13_7();
    sub_2314ABAD8(v21, v22, v23);
    swift_isUniquelyReferenced_nonNull_native();
    v24 = OUTLINED_FUNCTION_13_10();
    sub_231575FB4(v24, v25, v26, v27);

    *v0 = v28;
  }

  return result;
}

uint64_t sub_23155C5E8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_35_1();
  v3 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_34_3();
  if (__swift_getEnumTagSinglePayload(v5, v6, v3) == 1)
  {
    v7 = OUTLINED_FUNCTION_13_7();
    sub_2314A2910(v7, v8, &unk_23158A5C0);
    v9 = OUTLINED_FUNCTION_32_2();
    sub_231561A5C(v9, v10, v11, v12, v13, v14);

    v15 = OUTLINED_FUNCTION_30_2();
    return sub_2314A2910(v15, v16, v17);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_84();
    v20(v19);
    swift_isUniquelyReferenced_nonNull_native();
    v21 = OUTLINED_FUNCTION_13_10();
    sub_2315761D0(v21, v22, v23, v24);

    *v0 = v25;
  }

  return result;
}

uint64_t sub_23155C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE60, &qword_23158E058);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_2314A2910(a1, &qword_27DD5BE60, &qword_23158E058);
    sub_231561B9C(a2, a3, &qword_27DD5BE68, &qword_23158E060, type metadata accessor for SignalRepository.PrewarmStatus.Record, type metadata accessor for SignalRepository.PrewarmStatus.Record, v10);

    return sub_2314A2910(v10, &qword_27DD5BE60, &qword_23158E058);
  }

  else
  {
    sub_2314ABAD8(a1, v13, type metadata accessor for SignalRepository.PrewarmStatus.Record);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_2315762D8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_23155C934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_231571BB0(*(a1 + 16), 0);
  v4 = sub_231572028(&v7, v3 + 32, v1, a1);
  v5 = v7;

  sub_2314A4B70(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_231561E00(&v7);
  return v7;
}

void sub_23155CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (!v29)
  {
    goto LABEL_4;
  }

  v30 = sub_231571BB0(*(v27 + 16), 0);
  sub_231572A38();
  v32 = v31;

  v33 = OUTLINED_FUNCTION_30_2();
  sub_2314A4B70(v33);
  if (v32 != v29)
  {
    __break(1u);
LABEL_4:
    v30 = MEMORY[0x277D84F90];
  }

  a10 = v30;
  sub_231561E00(&a10);
  OUTLINED_FUNCTION_44();
}

uint64_t sub_23155CF34()
{
  v7 = sub_231586674();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_231586654();
  MEMORY[0x28223BE20](v3);
  v4 = sub_231586064();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2314AA3E8();
  sub_231586044();
  v8 = MEMORY[0x277D84F90];
  sub_2314AA79C(&qword_280D6FE90, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314AA8B4(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0, MEMORY[0x277D83970]);
  sub_2315867C4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_2315866A4();
  qword_280D6DCA8 = result;
  return result;
}

uint64_t sub_23155D198()
{
  v7 = sub_231586674();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_231586654();
  MEMORY[0x28223BE20](v3);
  v4 = sub_231586064();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2314AA3E8();
  sub_231586044();
  v8 = MEMORY[0x277D84F90];
  sub_2314AA79C(&qword_280D6FE90, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314AA8B4(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0, MEMORY[0x277D83970]);
  sub_2315867C4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_2315866A4();
  qword_280D6DCE0 = result;
  return result;
}

id static SignalRepository.mainPrewarmingQueue.getter()
{
  if (qword_280D6DCD8 != -1)
  {
    OUTLINED_FUNCTION_28_2(&qword_280D6DCD8);
  }

  v1 = qword_280D6DCE0;

  return v1;
}

uint64_t sub_23155D448()
{
  v0 = sub_231586674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231586654();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_231586064();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314AA3E8();
  sub_231586044();
  sub_231586644();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_2315866A4();
  qword_280D72188 = result;
  return result;
}

uint64_t sub_23155D5F8()
{
  v7 = sub_231586674();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_231586654();
  MEMORY[0x28223BE20](v3);
  v4 = sub_231586064();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2314AA3E8();
  sub_231586044();
  v8 = MEMORY[0x277D84F90];
  sub_2314AA79C(&qword_280D6FE90, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314AA8B4(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0, MEMORY[0x277D83970]);
  sub_2315867C4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_2315866A4();
  qword_280D72180 = result;
  return result;
}

uint64_t sub_23155D85C()
{
  type metadata accessor for SignalRepository(0);
  result = sub_2314A2E60();
  qword_280D6DC98 = result;
  return result;
}

uint64_t static SignalRepository.shared.getter()
{
  if (qword_280D6DC90 != -1)
  {
    swift_once();
  }
}

void sub_23155D8F4()
{
  OUTLINED_FUNCTION_17_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v1 = OUTLINED_FUNCTION_19(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11_0();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_35();
  v78 = v6;
  OUTLINED_FUNCTION_29_0();
  v80 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v73 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  v74 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  if (qword_280D70420 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v14 = sub_231585FF4();
  v72 = __swift_project_value_buffer(v14, qword_280D72248);
  v15 = sub_231585FE4();
  v16 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v16))
  {
    v17 = OUTLINED_FUNCTION_5_3();
    *v17 = 0;
    _os_log_impl(&dword_231496000, v15, v16, "SignalRepository: hourlyPrewarm triggered", v17, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_23155CDC8(v18, v19, v20, v21, v22, v23, v24, v25, v65, SBYTE8(v65), v66, v67, v68, v69, v70, *(&v70 + 1), v71, v72, v73, v74, v75, v76);
  v26 = 0;
  v28 = v27 + 56;
  v76 = v27;
  OUTLINED_FUNCTION_44_1();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v68 = v73 + 16;
  v71 = (v73 + 32);
  v79 = (v73 + 8);
  *&v34 = 136315138;
  v65 = v34;
  v70 = xmmword_231588340;
  v75 = v4;
  v69 = v13;
  while (v31)
  {
LABEL_10:
    v36 = (*(v76 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v31)))));
    v37 = *v36;
    v38 = v36[1];

    v39 = v81;
    os_unfair_lock_lock(v81 + 30);
    v40 = *&v39[32]._os_unfair_lock_opaque;
    v41 = *(v40 + 16);
    v77 = v37;
    if (v41 && (v42 = sub_23149C888(v37, v38), (v43 & 1) != 0))
    {
      v44 = v80;
      (*(v73 + 16))(v78, *(v40 + 56) + *(v73 + 72) * v42, v80);
      v45 = 0;
    }

    else
    {
      v45 = 1;
      v44 = v80;
    }

    v46 = v78;
    __swift_storeEnumTagSinglePayload(v78, v45, 1, v44);
    sub_2314A0710(v46, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v44) == 1)
    {
      sub_231585794();
      sub_2314A2910(v4, &qword_27DD5BF60, &qword_231587FD0);
    }

    else
    {
      (*v71)(v13, v4, v44);
    }

    v47 = v13;
    v31 &= v31 - 1;
    v48 = v81;
    os_unfair_lock_unlock(v81 + 30);
    v49 = v74;
    (*&v48[8]._os_unfair_lock_opaque)();
    sub_2315857A4();
    v51 = v50;
    v52 = *v79;
    (*v79)(v49, v44);
    sub_2315864D4();
    if (v51 <= v53)
    {

      v54 = sub_231585FE4();
      v55 = sub_2315865D4();

      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_22();
        v67 = v52;
        v56 = OUTLINED_FUNCTION_42_1();
        v82 = v56;
        *v52 = v65;
        v57 = v77;
        *(v52 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v54, v55, "SignalRepository: prewarming signals based on biome event update on %s within past one hour", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        OUTLINED_FUNCTION_26_4();
        v52 = v67;
        OUTLINED_FUNCTION_10();
      }

      else
      {

        v57 = v77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE28, &qword_23158DE48);
      inited = swift_initStackObject();
      *(inited + 16) = v70;
      *(inited + 32) = v57;
      *(inited + 40) = v38;
      *(inited + 48) = 4;
      v59 = sub_23149CA8C(inited);
      sub_23149B7B4(v59, 0, v60, v61);

      v13 = v69;
      v52(v69, v80);
      v4 = v75;
    }

    else
    {
      v52(v47, v44);

      v13 = v47;
      v4 = v75;
    }
  }

  while (1)
  {
    v35 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v35 >= v33)
    {
      break;
    }

    v31 = *(v28 + 8 * v35);
    ++v26;
    if (v31)
    {
      v26 = v35;
      goto LABEL_10;
    }
  }

  v62 = sub_23149CA8C(&unk_284612AB8);
  sub_23149B7B4(v62, 0, v63, v64);

  OUTLINED_FUNCTION_16_3();
}

void sub_23155DE48()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_231562DDC(v2, &v29);
  if (!v30)
  {
    sub_2314A2910(&v29, &qword_27DD5BE90, &qword_23158E090);
    goto LABEL_12;
  }

  sub_23149FD3C(&v29, v31);
  if (!*(v0 + 24))
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_12;
  }

  v10 = v32;
  v11 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_11_2();
  (*(v12 + 16))();

  sub_2315344E8(&v29, &v27);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v25 = v27;
  v26 = v28;
  (*(v11 + 16))(&v29, v4, &v25, v10, v11);
  sub_2314D70F4(v25, v26);
  v13 = BYTE8(v29);
  if (BYTE8(v29) == 255)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v17 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v17, qword_280D72248);
    sub_2314A5780(v31, &v29);
    v18 = sub_231585FE4();
    v19 = sub_2315865D4();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_22();
      v27 = OUTLINED_FUNCTION_42_1();
      *v5 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v29, v30);
      v20 = OUTLINED_FUNCTION_54_0();
      v22 = v21(v20);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      sub_2314A22E8();
      OUTLINED_FUNCTION_54_0();

      *(v5 + 4) = v22;
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    goto LABEL_11;
  }

  v14 = v29;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_11_2();
  v16 = (*(v15 + 16))();
  v27 = v14;
  v28 = v13;
  (*(v0 + 32))(v16);
  sub_231536060(&v29, &v27, v9);
  v23 = OUTLINED_FUNCTION_77();
  v24(v23);

  sub_2314D70F4(v14, v13);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_12:
  OUTLINED_FUNCTION_3_6();
}

void sub_23155E3E4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v60 = v2;
  v61 = v3;
  if (qword_280D70420 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v4 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v4, qword_280D72248);

  v58 = v0;
  v5 = sub_231585FE4();
  v6 = sub_2315865D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_22();
    v8 = OUTLINED_FUNCTION_47();
    v66[0] = v8;
    *v7 = 136315138;
    v9 = sub_23149B2D0();
    sub_23155CDC8(v9, v10, v11, v12, v13, v14, v15, v16, v52, SBYTE8(v52), v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_23155CCC4();
    sub_231586524();

    v17 = sub_2314A22E8();

    *(v7 + 4) = v17;
    _os_log_impl(&dword_231496000, v5, v6, "SignalRepository: will subscribe to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v0 = v1;
  v18 = sub_23149B2D0();
  sub_23155CDC8(v18, v19, v20, v21, v22, v23, v24, v25, v52, SBYTE8(v52), v53, v54, v55, v56, v57, v58, v1, v60, v61, v62, v63, v64);
  v26 = sub_23155CCC4();
  v1 = 0;
  v27 = 0;
  v28 = v26 + 56;
  OUTLINED_FUNCTION_44_1();
  v32 = v31 & v30;
  v34 = (v33 + 63) >> 6;
  v55 = v61 + 8;
  v56 = (v60 - 8);
  v54 = v61 + 16;
  *&v35 = 136315138;
  v52 = v35;
  v57 = v29;
  while (v32)
  {
LABEL_10:
    v37 = *(v26 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v32))));
    v38 = *(v37 + 8);
    v32 &= v32 - 1;
    v65 = *v37;
    v66[0] = v65;
    v66[1] = v38;
    MEMORY[0x28223BE20](v29);
    v0 = &v52 - 2;
    *(&v52 - 2) = v66;

    if (sub_2314E62A8(sub_2314BB954, (&v52 - 2), &unk_284612970))
    {
    }

    else
    {

      v39 = sub_231585FE4();
      v40 = sub_2315865D4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_22();
        v42 = OUTLINED_FUNCTION_47();
        v66[0] = v42;
        *v41 = v52;
        *(v41 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v39, v40, "SignalRepository: subscribing to %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_10();
      }

      v63 = &v52;
      v64 = v27;
      v62 = *v56;
      OUTLINED_FUNCTION_5_1();
      MEMORY[0x28223BE20](v43);
      v45 = &v52 - v44;
      if (qword_280D6DCB8 != -1)
      {
        swift_once();
      }

      v46 = qword_280D72180;
      v47 = v61;
      v48 = v38;
      v49 = v60;
      (*(v61 + 8))(v65, v48, qword_280D72180, v60, v61);
      v65 = *(v47 + 16);
      v50 = v59;

      v51 = v46;
      v0 = v45;
      v65(sub_23149A714, v50, v49, v47);

      v29 = (*(v62 + 8))(v45, v49);
      v27 = v64;
      v26 = v57;
    }
  }

  while (1)
  {
    v36 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v36 >= v34)
    {
      break;
    }

    v32 = *(v28 + 8 * v36);
    ++v1;
    if (v32)
    {
      v1 = v36;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_23155E880@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v14 = *a1;
  if (*(v14 + 16) && (v15 = sub_23149C888(a2, a3), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = sub_231585884();
    (*(*(v19 - 8) + 16))(v13, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = v13;
    v21 = 0;
  }

  else
  {
    v19 = sub_231585884();
    v20 = v13;
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
  sub_2314A0710(v13, v11);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v11, 1, v19) != 1)
  {
    return (*(*(v19 - 8) + 32))(a4, v11, v19);
  }

  sub_231585794();
  return sub_2314A2910(v11, &qword_27DD5BF60, &qword_231587FD0);
}

uint64_t sub_23155EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE28, &qword_23158DE48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = 0;

  v6 = sub_23149CA8C(inited);
  sub_23149B7B4(v6, 0, v7, v8);
}

void sub_23155EAEC()
{
  v1 = v0;
  if (qword_280D6E340 != -1)
  {
    swift_once();
  }

  v2 = *(qword_280D721C8 + 56);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v3 = sub_231585FF4();
  __swift_project_value_buffer(v3, qword_280D72248);
  v4 = sub_231585FE4();
  v5 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 != 2;
    _os_log_impl(&dword_231496000, v4, v5, "SignalRepository: #AppInstallListener starting check for meDevice, currently=%{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_5_8();
  }

  if (qword_280D6DCA0 != -1)
  {
    swift_once();
  }

  v7 = qword_280D6DCA8;
  v8 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v9 = sub_231560678(0xD000000000000012, 0x80000002315931E0, v7);
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 Install];
  swift_unknownObjectRelease();
  v12 = [v11 DSLPublisher];

  v13 = sub_231585FE4();
  v14 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v14))
  {
    v15 = OUTLINED_FUNCTION_5_3();
    *v15 = 0;
    OUTLINED_FUNCTION_51_0();
    _os_log_impl(v16, v17, v18, v19, v15, 2u);
    OUTLINED_FUNCTION_10();
  }

  v20 = [v12 subscribeOn_];
  v28 = nullsub_1;
  v29 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2314B901C;
  v27 = &block_descriptor_18;
  v21 = _Block_copy(&v24);
  v28 = sub_231562B30;
  v29 = v1;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_23149A630;
  v27 = &block_descriptor_3;
  v22 = _Block_copy(&v24);

  v23 = [v20 sinkWithCompletion:v21 receiveInput:v22];
  _Block_release(v22);
  _Block_release(v21);
}

void sub_23155EE84(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v11 = sub_231585FF4();
    __swift_project_value_buffer(v11, qword_280D72248);
    v18 = sub_231585FE4();
    v12 = sub_2315865E4();
    if (os_log_type_enabled(v18, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_231496000, v18, v12, "SignalRepository: #AppInstallListener event is not BMAppInstall", v13, 2u);
      MEMORY[0x231931280](v13, -1, -1);
    }

    goto LABEL_9;
  }

  v4 = [v3 eventBody];
  if (v4)
  {
    v18 = v4;
    v5 = sub_2314D752C(v4);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = [v18 isInstall];
      type metadata accessor for AudioAppSignalsSyncer();
      v10 = AudioAppSignalsSyncer.__allocating_init()();
      sub_231562E4C(v10, v7, v8, v9 ^ 1, a2);

      swift_unknownObjectRelease();
LABEL_9:

      return;
    }
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);
  v15 = sub_231585FE4();
  v16 = sub_2315865E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_231496000, v15, v16, "SignalRepository: #AppInstallListener event has no body/bundleID", v17, 2u);
    MEMORY[0x231931280](v17, -1, -1);
  }

  swift_unknownObjectRelease();
}

void sub_23155F118(char a1)
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v2 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v2, qword_280D72248);
  oslog = sub_231585FE4();
  v3 = sub_2315865D4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_231496000, oslog, v3, "SignalRepository: #AppInstallListener AudioAppSignalsSyncer success=%{BOOL}d", v4, 8u);
    OUTLINED_FUNCTION_26_4();
  }
}

uint64_t sub_23155F200(uint64_t a1)
{
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
  v3 = sub_2315860F4();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v44 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      v46 = *(v44 + 16 * v5);
      (*(*(v44 + 16 * v5 + 8) + 120))();
      v6 = sub_231586224();
      v8 = v7;

      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_23149C888(v6, v8);
      if (__OFADD__(v3[2], (v10 & 1) == 0))
      {
        goto LABEL_38;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE38, &qword_23158DE60);
      if (sub_231586A64())
      {
        v13 = sub_23149C888(v6, v8);
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_40;
        }

        v11 = v13;
      }

      if (v12)
      {

        *(v3[7] + 16 * v11) = v46;
      }

      else
      {
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v15 = (v3[6] + 16 * v11);
        *v15 = v6;
        v15[1] = v8;
        *(v3[7] + 16 * v11) = v46;
        v16 = v3[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_39;
        }

        v3[2] = v18;
      }

      if (v4 == ++v5)
      {
        goto LABEL_13;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = 0;
    v20 = *(a1 + 16);
    v45 = MEMORY[0x277D84F90];
    v21 = a1 + 40;
    v43 = a1 + 40;
LABEL_14:
    v22 = v21 + 16 * v19;
    for (i = v19; v20 != i; ++i)
    {
      if (i >= v20)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_36;
      }

      v24 = sub_231586224();
      v26 = v25;
      if (v3[2])
      {
        v27 = v24;

        v28 = sub_23149C888(v27, v26);
        if (v29)
        {
          v41 = *(v3[7] + 16 * v28);

          v34 = v45;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_19_2();
            sub_2314F18AC();
            v34 = v38;
          }

          v21 = v43;
          v37 = *(v34 + 16);
          v36 = *(v34 + 24);
          if (v37 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_18(v36);
            sub_2314F18AC();
            v34 = v39;
          }

          *(v34 + 16) = v37 + 1;
          v45 = v34;
          *(v34 + 16 * v37 + 32) = v41;
          goto LABEL_14;
        }
      }

      else
      {
      }

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v30 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v30, qword_280D72248);

      v31 = sub_231585FE4();
      v32 = sub_2315865E4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_22();
        v47 = OUTLINED_FUNCTION_47();
        *v33 = 136315138;
        *(v33 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v31, v32, "SignalRepository: No match to name %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_31_3();
      }

      v22 += 16;
    }

    sub_2314A8208();
  }

  return result;
}

void sub_23155F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v9 = sub_231585884();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v16 = sub_231585FF4();
  __swift_project_value_buffer(v16, qword_280D72248);
  (*(v10 + 16))(v15, a5, v9);

  v17 = sub_231585FE4();
  v18 = sub_2315865D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a6;
    v20 = v19;
    v29 = swift_slowAlloc();
    v31 = v29;
    *v20 = 136315394;
    sub_231586D94();
    v21 = sub_2314A22E8();

    *(v20 + 4) = v21;
    *(v20 + 12) = 2048;
    (*(a4 + 32))(v22);
    sub_2315857A4();
    v24 = v23;
    v25 = *(v10 + 8);
    v25(v13, v9);
    v25(v15, v9);
    *(v20 + 14) = v24;
    _os_log_impl(&dword_231496000, v17, v18, "SignalRepository: willPrewarm before dispatchGroup.leave() prewarmableSignalType: %s in %f seconds", v20, 0x16u);
    v26 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x231931280](v26, -1, -1);
    v27 = v20;
    a6 = v30;
    MEMORY[0x231931280](v27, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  dispatch_group_leave(a6);
}

void sub_23155F90C()
{
  OUTLINED_FUNCTION_17_3();
  v30 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  OUTLINED_FUNCTION_4_1();
  v28 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_12();
  v29 = v3;
  os_unfair_lock_lock((v0 + 16));
  v4 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));

  v6 = sub_23155C934(v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v33 = MEMORY[0x277D84F90];
    sub_23152D598(0, v7, 0);
    v8 = 0;
    v9 = (v6 + 40);
    v31 = v6;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v32 = *v9;
      swift_bridgeObjectRetain_n();
      MEMORY[0x23192FF80](64, 0xE100000000000000);
      if (*(v4 + 16))
      {
        v12 = sub_23149C888(v11, v10);
        if (v13)
        {
          sub_2314ABA74(*(v4 + 56) + *(v28 + 72) * v12, v29);
          sub_231585784();
          OUTLINED_FUNCTION_88();
          if (!(v16 ^ v17 | v15))
          {
            goto LABEL_19;
          }

          if (v14 <= -9.22337204e18)
          {
            goto LABEL_20;
          }

          if (v14 >= 9.22337204e18)
          {
            goto LABEL_21;
          }

          sub_231586C24();
          if (*(v29 + *(v30 + 24)))
          {
            v18 = 88;
          }

          else
          {
            v18 = 120;
          }

          MEMORY[0x23192FF80](v18, 0xE100000000000000);
          sub_2314ABD30(v29);
        }
      }

      v19 = OUTLINED_FUNCTION_24_3();
      MEMORY[0x23192FF80](v19);

      v21 = *(v33 + 16);
      v20 = *(v33 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_18(v20);
        sub_23152D598(v23, v21 + 1, 1);
      }

      ++v8;
      *(v33 + 16) = v21 + 1;
      v22 = v33 + 16 * v21;
      *(v22 + 32) = v11;
      *(v22 + 40) = v32;
      v9 += 2;
      v6 = v31;
      if (v7 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:

    v24 = OUTLINED_FUNCTION_3_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_2_34();
    sub_2314AA8B4(v26, &qword_27DD5B0E8, &unk_231589320, v27);
    OUTLINED_FUNCTION_52_0();
    sub_231586154();

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_16_3();
  }
}

uint64_t sub_23155FC34()
{
  v1 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  sub_23149C774();
  v4 = sub_231586C24();
  if (*(v0 + *(v1 + 24)))
  {
    v2 = 88;
  }

  else
  {
    v2 = 120;
  }

  MEMORY[0x23192FF80](v2, 0xE100000000000000);

  return v4;
}

void sub_23155FCCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE60, &qword_23158E058);
  OUTLINED_FUNCTION_19(v10);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - v12);
  v22[0] = a1;
  v22[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
  v14 = sub_231586204();
  v16 = v15;
  os_unfair_lock_lock(v5 + 4);
  v17 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v18 = *(v17 + 20);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  (*(v19 + 16))(v13 + v18, a3);
  *v13 = v14;
  v13[1] = v16;
  *(v13 + *(v17 + 24)) = a4;
  v20 = OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v17);

  sub_23155C75C(v13, v14, v16);
  os_unfair_lock_unlock(v5 + 4);
}

void sub_23155FE18()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  OUTLINED_FUNCTION_4_1();
  v45 = v4;
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_12();
  v44 = v5;
  os_unfair_lock_lock((v0 + 16));
  v6 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  v7 = *(v2 + 16);
  if (v7)
  {
    v47 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_0();
    sub_23152D598(v8, v9, v10);
    v11 = v47;
    v12 = v2 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
      v13 = sub_231586204();
      v15 = v14;
      v17 = *(v47 + 16);
      v16 = *(v47 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = OUTLINED_FUNCTION_18(v16);
        sub_23152D598(v20, v17 + 1, 1);
      }

      *(v47 + 16) = v18;
      v19 = v47 + 16 * v17;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v12 += 16;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      goto LABEL_21;
    }
  }

  v21 = (v11 + 40);
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  do
  {
    v24 = *(v21 - 1);
    v25 = *v21;
    v26 = *(v6 + 16);

    if (v26 && (v27 = OUTLINED_FUNCTION_24_3(), v29 = sub_23149C888(v27, v28), (v30 & 1) != 0) && (sub_2314ABA74(*(v6 + 56) + *(v45 + 72) * v29, v44), v31 = *(v44 + *(v46 + 24)), sub_2314ABD30(v44), v31 == 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_2();
        sub_23149D588();
        v22 = v39;
      }

      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_18(v32);
        OUTLINED_FUNCTION_83_0();
        sub_23149D588();
        v22 = v35;
      }

      else
      {
        v35 = v22;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_2();
        sub_23149D588();
        v23 = v38;
      }

      v33 = *(v23 + 16);
      v36 = *(v23 + 24);
      v34 = v33 + 1;
      if (v33 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_18(v36);
        OUTLINED_FUNCTION_83_0();
        sub_23149D588();
        v23 = v35;
      }

      else
      {
        v35 = v23;
      }
    }

    *(v35 + 16) = v34;
    v37 = v35 + 16 * v33;
    *(v37 + 32) = v24;
    *(v37 + 40) = v25;
    v21 += 2;
    --v18;
  }

  while (v18);
LABEL_21:

  v40 = OUTLINED_FUNCTION_3_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  OUTLINED_FUNCTION_2_34();
  sub_2314AA8B4(v42, &qword_27DD5B0E8, &unk_231589320, v43);
  OUTLINED_FUNCTION_52_0();
  sub_231586154();

  OUTLINED_FUNCTION_52_0();
  sub_231586154();

  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231560174()
{
  v0 = sub_231585884();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  __swift_allocate_value_buffer(v4, qword_280D72190);
  v5 = __swift_project_value_buffer(v4, qword_280D72190);
  sub_231585794();
  *v5 = 0x656E696665646E75;
  *(v5 + 1) = 0xE900000000000064;
  result = (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
  v5[*(v4 + 24)] = 0;
  return result;
}

uint64_t sub_231560294()
{
  result = sub_2314A1DFC(30, 1);
  qword_280D721A8 = result;
  unk_280D721B0 = v1;
  qword_280D721B8 = v2;
  return result;
}

uint64_t sub_2315602C8()
{
  sub_2314A2910(v0 + 24, &qword_27DD5BE70, &unk_23158E068);

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

void sub_231560334()
{
  if (__OFADD__(*(v0 + 40), *(v0 + 48)))
  {
    __break(1u);
  }
}

uint64_t sub_23156036C()
{
  sub_231586954();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x23192FF80](v1, v2);

  v3 = OUTLINED_FUNCTION_52_0();
  MEMORY[0x23192FF80](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_231560334();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  v7 = sub_2315861D4();
  MEMORY[0x23192FF80](v7);

  MEMORY[0x23192FF80](0x756F656D69742025, 0xEC000000202C7374);
  v8 = sub_231586C24();
  MEMORY[0x23192FF80](v8);

  MEMORY[0x23192FF80](0x756365736E6F6320, 0xEC00000065766974);
  return 0x3D74756F656D6954;
}

uint64_t sub_2315604F8()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t SignalRepository.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  sub_2314A2910(v0 + 128, &qword_27DD5BE40, &qword_23158DE68);

  v1 = v0 + OBJC_IVAR____TtC11SiriSignals16SignalRepository_lastAppInstallEventAt;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE48, &qword_23158DE70) + 28);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v1 + v2);
  return v0;
}

uint64_t SignalRepository.__deallocating_deinit()
{
  SignalRepository.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_231560678(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231586174();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

void sub_2315606DC()
{
  OUTLINED_FUNCTION_13_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_2();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v6 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v6);
      OUTLINED_FUNCTION_17_12(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_26();
        sub_2314AA8FC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_231560794(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEE8, &unk_23158E120);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2314F2764((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEF0, &unk_23158ECD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2315608AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BED8, &qword_23158E110);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2314F2764((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEE0, &qword_23158E118);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2315609C4()
{
  OUTLINED_FUNCTION_13_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_2();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
      v7 = OUTLINED_FUNCTION_43_1(v6);
      OUTLINED_FUNCTION_12_13(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_26();
        sub_2314F2768(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_231560AF0()
{
  OUTLINED_FUNCTION_13_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_2();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5C0, &qword_23158E0D0);
      v6 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v6);
      OUTLINED_FUNCTION_17_12(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_26();
        sub_2314F18F8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_231560BD0()
{
  OUTLINED_FUNCTION_13_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_2();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEB8, &qword_23158E0D8);
      v6 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_16_12(v6);
      OUTLINED_FUNCTION_17_12(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_26();
        sub_2314AA8FC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEC0, &qword_23158E0E0);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_231560C98()
{
  OUTLINED_FUNCTION_13_4();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_13(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_2();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4E8, &qword_23158A630);
      v7 = OUTLINED_FUNCTION_43_1(v6);
      OUTLINED_FUNCTION_12_13(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_26();
        sub_2314F2764(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF08, &qword_23158E148);
    OUTLINED_FUNCTION_9_20();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_231560D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_85();
  if ((v12 & 1) == 0 || (OUTLINED_FUNCTION_3_13(), v13 == v14))
  {
LABEL_6:
    OUTLINED_FUNCTION_57_0();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = OUTLINED_FUNCTION_20();
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v9;
      v17[3] = 2 * ((v18 - 32) / 8);
      if (v8)
      {
LABEL_8:
        v19 = OUTLINED_FUNCTION_59_0();
        a7(v19);
        *(v7 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      if (v8)
      {
        goto LABEL_8;
      }
    }

    memcpy(v17 + 4, (v7 + 32), 8 * v9);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v13)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_231560E58(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF30, &qword_23158EF50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  if (v5)
  {
    sub_2314F1918();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}