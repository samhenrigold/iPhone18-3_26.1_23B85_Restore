unint64_t sub_1C8F1F094@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  result = sub_1C8D307DC(*(*v1 + 40));
  v25 = v2;
  v26 = ~(-1 << *(v2 + 32));
  v27 = v2 + 56;
  while (1)
  {
    v4 = result & v26;
    if (((*(v27 + (((result & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v26)) & 1) == 0)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -1;
      return result;
    }

    v5 = *(v25 + 48) + 40 * v4;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    sub_1C8D54590(*v5, v7, v8, v9, v10);
    SystemToolProtocol.Identifier.rawValue.getter();
    v12 = v11;
    v14 = v13;
    SystemToolProtocol.Identifier.rawValue.getter();
    if (v12 == v16 && v14 == v15)
    {
      break;
    }

    v18 = sub_1C9064C2C();
    sub_1C8D3ED20(v6, v7, v8, v9, v10);

    if (v18)
    {
      goto LABEL_11;
    }

    result = v4 + 1;
  }

  sub_1C8D3ED20(v6, v7, v8, v9, v10);

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v1;
  v28 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C8D8E0A4();
    v20 = v28;
  }

  v21 = *(v20 + 48) + 40 * v4;
  v22 = *(v21 + 32);
  v23 = *(v21 + 16);
  *a1 = *v21;
  *(a1 + 16) = v23;
  *(a1 + 32) = v22;
  result = sub_1C8F1FD98(v4);
  *v1 = v28;
  return result;
}

uint64_t sub_1C8F1F298(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1C9064D6C();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v10 & 1) == 0)
  {
    sub_1C8D8E198();
    v9 = v21;
  }

  v8 = *(*(v9 + 48) + 8 * v7);
  v11 = sub_1C8F1FFDC(v7);
  OUTLINED_FUNCTION_37_19(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
  return v8;
}

void sub_1C8F1F37C(uint64_t a1)
{
  OUTLINED_FUNCTION_16_28(a1);
  TypeIdentifier.hash(into:)(v17);
  sub_1C9064DBC();
  OUTLINED_FUNCTION_22_29();
  do
  {
    OUTLINED_FUNCTION_24_26();
    if ((v4 & 1) == 0)
    {
      *v1 = 0xF000000000000007;
      return;
    }

    v17[0] = *(*(v3 + 48) + 8 * v2);

    v5 = static TypeIdentifier.== infix(_:_:)(v17, &v18);
  }

  while ((v5 & 1) == 0);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_36_18();
  if ((v7 & 1) == 0)
  {
    sub_1C8D8D444();
    v6 = v17[0];
  }

  OUTLINED_FUNCTION_26_18(v6);
  sub_1C8F20154();
  OUTLINED_FUNCTION_37_19(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17[0]);
}

unint64_t sub_1C8F1F458(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v10 = sub_1C9064DBC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1F60C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C9064D7C();

        sub_1C9063FBC();
        v10 = sub_1C9064DBC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1F7C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    v9 = v4;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v29 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48) + 40 * v6;
        v12 = *v10;
        v11 = *(v10 + 8);
        v13 = *(v10 + 24);
        v31 = *(v10 + 16);
        v14 = *(v10 + 32);
        sub_1C9064D7C();
        v30 = v13;
        if (v14)
        {
          if (v14 == 1)
          {

            MEMORY[0x1CCA81A90](v31, v13);

            MEMORY[0x1CCA81A90](46, 0xE100000000000000);

            MEMORY[0x1CCA81A90](v12, v11);
          }
        }

        else
        {

          MEMORY[0x1CCA81A90](v12, v11);
        }

        sub_1C9063FBC();

        v15 = sub_1C9064DBC();
        sub_1C8D3ED20(v12, v11, v31, v30, v14);
        v16 = v15 & v7;
        if (v2 >= v29)
        {
          if (v16 >= v29 && v2 >= v16)
          {
LABEL_19:
            v19 = *(v3 + 48);
            v20 = v19 + 40 * v2;
            v21 = (v19 + 40 * v6);
            if (40 * v2 < (40 * v6) || v20 >= v21 + 40 || v2 != v6)
            {
              v24 = *v21;
              v25 = v21[1];
              *(v20 + 32) = *(v21 + 4);
              *v20 = v24;
              *(v20 + 16) = v25;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v29 || v2 >= v16)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v9 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v9 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1FD98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v32 = v3;
      v33 = v4;
      do
      {
        v10 = *(v3 + 48) + 40 * v6;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = v7;
        v14 = *(v10 + 16);
        v15 = *(v10 + 24);
        v16 = *(v10 + 32);
        sub_1C9064D7C();
        sub_1C8D54590(v11, v12, v14, v15, v16);
        SystemToolProtocol.Identifier.rawValue.getter();
        sub_1C9063FBC();

        v17 = sub_1C9064DBC();
        v18 = v14;
        v7 = v13;
        sub_1C8D3ED20(v11, v12, v18, v15, v16);
        v19 = v17 & v13;
        if (v2 >= v9)
        {
          if (v19 >= v9 && v2 >= v19)
          {
LABEL_9:
            v4 = v33;
            v3 = v32;
            v21 = *(v32 + 48);
            v22 = v21 + 40 * v2;
            v23 = (v21 + 40 * v6);
            if (40 * v2 < (40 * v6) || v22 >= v23 + 40 || v2 != v6)
            {
              v26 = *v23;
              v27 = v23[1];
              *(v22 + 32) = *(v23 + 4);
              *v22 = v26;
              *(v22 + 16) = v27;
              v2 = v6;
            }

            goto LABEL_23;
          }
        }

        else if (v19 >= v9 || v2 >= v19)
        {
          goto LABEL_9;
        }

        v3 = v32;
        v4 = v33;
LABEL_23:
        v6 = (v6 + 1) & v13;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v29 = *(v3 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v31;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C8F1FFDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1C9064D6C() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C8F20154()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v3 = *v0;
  v4 = *v0 + 56;
  v5 = -1 << *(*v0 + 32);
  v6 = (v1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v80 = v7;
    v8 = sub_1C90646EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1C9064D7C();
        memcpy(v85, v86, sizeof(v85));
        switch(v10 >> 61)
        {
          case 1uLL:
            v17 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            MEMORY[0x1CCA82810](1);
            switch(v17)
            {
              case 0:
LABEL_16:
                v12 = 0;
                goto LABEL_86;
              case 1:
LABEL_61:
                v12 = 1;
                goto LABEL_86;
              case 2:
LABEL_72:
                v12 = 2;
                goto LABEL_86;
              case 3:
LABEL_79:
                v12 = 3;
                goto LABEL_86;
              case 4:
LABEL_75:
                v12 = 4;
                goto LABEL_86;
              case 5:
LABEL_81:
                v12 = 5;
                goto LABEL_86;
              case 6:
LABEL_83:
                v12 = 6;
                goto LABEL_86;
              case 7:
LABEL_80:
                v12 = 7;
                goto LABEL_86;
              case 8:
LABEL_85:
                v12 = 8;
                goto LABEL_86;
              case 9:
LABEL_77:
                v12 = 9;
                goto LABEL_86;
              case 10:
LABEL_84:
                v12 = 10;
                goto LABEL_86;
              case 11:
LABEL_74:
                v12 = 11;
                goto LABEL_86;
              case 12:
LABEL_76:
                v12 = 12;
                goto LABEL_86;
              case 13:
LABEL_82:
                v12 = 13;
                goto LABEL_86;
              case 14:
LABEL_73:
                v12 = 14;
                goto LABEL_86;
              case 15:
LABEL_78:
                v12 = 16;
                goto LABEL_86;
              default:
                v19 = *(v17 + 16);
                MEMORY[0x1CCA82810](15);
                switch(v19 >> 61)
                {
                  case 1uLL:
                    v25 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    MEMORY[0x1CCA82810](1);
                    switch(v25)
                    {
                      case 0:
                        goto LABEL_16;
                      case 1:
                        goto LABEL_61;
                      case 2:
                        goto LABEL_72;
                      case 3:
                        goto LABEL_79;
                      case 4:
                        goto LABEL_75;
                      case 5:
                        goto LABEL_81;
                      case 6:
                        goto LABEL_83;
                      case 7:
                        goto LABEL_80;
                      case 8:
                        goto LABEL_85;
                      case 9:
                        goto LABEL_77;
                      case 10:
                        goto LABEL_84;
                      case 11:
                        goto LABEL_74;
                      case 12:
                        goto LABEL_76;
                      case 13:
                        goto LABEL_82;
                      case 14:
                        goto LABEL_73;
                      case 15:
                        goto LABEL_78;
                      default:
                        v19 = *(v25 + 16);
                        MEMORY[0x1CCA82810](15);
                        switch(v19 >> 61)
                        {
                          case 1uLL:
                            v34 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                            MEMORY[0x1CCA82810](1);
                            switch(v34)
                            {
                              case 0:
                                goto LABEL_16;
                              case 1:
                                goto LABEL_61;
                              case 2:
                                goto LABEL_72;
                              case 3:
                                goto LABEL_79;
                              case 4:
                                goto LABEL_75;
                              case 5:
                                goto LABEL_81;
                              case 6:
                                goto LABEL_83;
                              case 7:
                                goto LABEL_80;
                              case 8:
                                goto LABEL_85;
                              case 9:
                                goto LABEL_77;
                              case 10:
                                goto LABEL_84;
                              case 11:
                                goto LABEL_74;
                              case 12:
                                goto LABEL_76;
                              case 13:
                                goto LABEL_82;
                              case 14:
                                goto LABEL_73;
                              case 15:
                                goto LABEL_78;
                              default:
                                v58 = *(v34 + 16);
                                MEMORY[0x1CCA82810](15);
                                __dst[0] = v58;

                                TypeIdentifier.hash(into:)(v85);
                                break;
                            }

                            break;
                          case 2uLL:
                            goto LABEL_108;
                          case 3uLL:
                            v76 = v10;
                            v78 = v9;
                            v79 = v4;
                            v47 = v19 & 0x1FFFFFFFFFFFFFFFLL;
                            memcpy(__dst, ((v19 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                            v48 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                            v49 = *(v47 + 128);
                            memcpy(__src, (v47 + 136), 0x51uLL);
                            MEMORY[0x1CCA82810](3);

                            v50 = ContainerDefinition.hash(into:)(v85);
                            if (v49)
                            {
                              OUTLINED_FUNCTION_38_20(v50, v51, v52, v53, v54, v55, v56, v57, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v76, v9, v4, v80, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v48, v49, *&v83[16]);
                              memcpy(v82, v83, 0x61uLL);
                              sub_1C9064D9C();
                              sub_1C8CC1340(v83, __dst);
                              ContainerDefinition.hash(into:)(v85);
                              memcpy(__dst, v82, 0x61uLL);
                              sub_1C8CC15FC(__dst);
                            }

                            else
                            {
                              sub_1C9064D9C();
                            }

                            v4 = v79;
                            sub_1C9063FBC();
                            v9 = v78;
                            break;
                          case 4uLL:
                            goto LABEL_107;
                          default:
                            goto LABEL_27;
                        }

                        break;
                    }

                    break;
                  case 2uLL:
LABEL_108:
                    v43 = v4;
                    v44 = v3;
                    v45 = v43;
                    MEMORY[0x1CCA82810](2);

                    OUTLINED_FUNCTION_35_20();
                    sub_1C9063FBC();
                    v46 = v45;
                    v3 = v44;
                    v4 = v46;
                    goto LABEL_9;
                  case 3uLL:
                    v75 = v10;
                    v77 = v9;
                    v21 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v66 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v67 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
                    v22 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                    v68 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
                    v63 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
                    v64 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
                    v69 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x58);
                    v70 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
                    v71 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
                    v65 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                    v72 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
                    memcpy(__src, ((v19 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
                    v73 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);
                    v74 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
                    MEMORY[0x1CCA82810](3);

                    OUTLINED_FUNCTION_35_20();
                    sub_1C9063FBC();
                    v23 = *(v21 + 16);
                    MEMORY[0x1CCA82810](v23);
                    if (v23)
                    {
                      v24 = v21 + 40;
                      do
                      {

                        sub_1C9063FBC();

                        v24 += 16;
                        --v23;
                      }

                      while (v23);
                    }

                    sub_1C9063FBC();
                    sub_1C9064D9C();
                    if (v22)
                    {
                      sub_1C9063FBC();
                    }

                    v9 = v77;
                    MEMORY[0x1CCA82810](v68);
                    sub_1C9064D9C();
                    if (v69)
                    {
                      sub_1C9063FBC();
                    }

                    if (v70)
                    {
                      MEMORY[0x1CCA82810](1);
                      sub_1C9063FBC();
                    }

                    else
                    {
                      MEMORY[0x1CCA82810](0);
                    }

                    v26 = MEMORY[0x1CCA82810](v71);
                    if (v72)
                    {
                      OUTLINED_FUNCTION_38_20(v26, v27, v28, v29, v30, v31, v32, v33, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v77, v4, v80, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], v82[0], v82[1], v82[2], v82[3], v82[4], v82[5], v82[6], v82[7], v82[8], v82[9], v82[10], v82[11], v82[12], v65, v72, *&v83[16]);
                      memcpy(v82, v83, 0x61uLL);
                      sub_1C9064D9C();
                      sub_1C8CC1340(v83, __dst);
                      ContainerDefinition.hash(into:)(v85);
                      memcpy(__dst, v82, 0x61uLL);
                      sub_1C8CC15FC(__dst);
                    }

                    else
                    {
                      sub_1C9064D9C();
                    }

                    goto LABEL_9;
                  case 4uLL:
LABEL_107:
                    MEMORY[0x1CCA82810](4);

                    OUTLINED_FUNCTION_35_20();
                    goto LABEL_9;
                  default:
LABEL_27:
                    v20 = *(v19 + 16);
                    MEMORY[0x1CCA82810](0);
                    LOBYTE(__dst[0]) = v20;
                    TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                    goto LABEL_87;
                }

                break;
            }

            break;
          case 2uLL:
            MEMORY[0x1CCA82810](2);

            sub_1C9063FBC();
            goto LABEL_9;
          case 3uLL:
            memcpy(__dst, ((v10 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
            MEMORY[0x1CCA82810](3);
            v13 = __dst[2];

            sub_1C8D3EFB8(__dst, v83);
            sub_1C9063FBC();
            v14 = *(v13 + 16);
            MEMORY[0x1CCA82810](v14);
            if (v14)
            {
              v15 = v13 + 40;
              do
              {

                sub_1C9063FBC();

                v15 += 16;
                --v14;
              }

              while (v14);
            }

            v16 = __dst[6];
            sub_1C9063FBC();
            sub_1C9064D9C();
            if (v16)
            {
              sub_1C9063FBC();
            }

            v18 = __dst[9];
            MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
            sub_1C9064D9C();
            if (v18)
            {
              sub_1C9063FBC();
            }

            if (__dst[11])
            {
              MEMORY[0x1CCA82810](1);
              OUTLINED_FUNCTION_35_20();
              sub_1C9063FBC();
            }

            else
            {
              MEMORY[0x1CCA82810](0);
            }

            MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
            if (__dst[14])
            {
              memcpy(__src, &__dst[13], 0x61uLL);
              sub_1C9064D9C();
              memcpy(v82, &__dst[13], 0x61uLL);
              sub_1C8CC1340(v82, v83);
              ContainerDefinition.hash(into:)(v85);
              memcpy(v83, __src, 0x61uLL);
              sub_1C8CC15FC(v83);
            }

            else
            {
              sub_1C9064D9C();
            }

            sub_1C9063FBC();
            sub_1C8D3F014(__dst);
            break;
          case 4uLL:
            MEMORY[0x1CCA82810](4);

LABEL_9:
            sub_1C9063FBC();
            break;
          default:
            v11 = *(v10 + 16);
            MEMORY[0x1CCA82810](0);
            switch(v11)
            {
              case 23:
                v12 = 0;
                goto LABEL_86;
              case 24:
                v12 = 1;
                goto LABEL_86;
              case 25:
                v12 = 2;
                goto LABEL_86;
              case 26:
                v12 = 3;
                goto LABEL_86;
              case 27:
                v12 = 4;
                goto LABEL_86;
              case 28:
                v12 = 5;
                goto LABEL_86;
              case 29:
                v12 = 6;
                goto LABEL_86;
              case 30:
                v12 = 7;
                goto LABEL_86;
              case 31:
                v12 = 8;
                goto LABEL_86;
              case 32:
                v12 = 9;
                goto LABEL_86;
              case 33:
                v12 = 10;
                goto LABEL_86;
              case 34:
                v12 = 12;
                goto LABEL_86;
              case 35:
                v12 = 13;
                goto LABEL_86;
              case 36:
                v12 = 14;
                goto LABEL_86;
              case 37:
                v12 = 15;
                goto LABEL_86;
              case 38:
                v12 = 16;
                goto LABEL_86;
              case 39:
                v12 = 17;
                goto LABEL_86;
              case 40:
                v12 = 18;
                goto LABEL_86;
              case 41:
                v12 = 19;
                goto LABEL_86;
              case 42:
                v12 = 20;
                goto LABEL_86;
              case 43:
                v12 = 21;
                goto LABEL_86;
              case 44:
                v12 = 22;
                goto LABEL_86;
              case 45:
                v12 = 23;
                goto LABEL_86;
              case 46:
                v12 = 24;
                goto LABEL_86;
              default:
                MEMORY[0x1CCA82810](11);
                if (v11 == 22)
                {
                  sub_1C9064D9C();
                }

                else
                {
                  sub_1C9064D9C();
                  v12 = v11;
LABEL_86:
                  MEMORY[0x1CCA82810](v12);
                }

LABEL_87:

                break;
            }

            break;
        }

        v35 = sub_1C9064DBC();

        v36 = v35 & v80;
        if (v2 >= v9)
        {
          if (v36 >= v9 && v2 >= v36)
          {
LABEL_99:
            v39 = *(v3 + 48);
            v40 = (v39 + 8 * v2);
            v41 = (v39 + 8 * v6);
            if (v2 != v6 || v40 >= v41 + 1)
            {
              *v40 = *v41;
              v2 = v6;
            }
          }
        }

        else if (v36 >= v9 || v2 >= v36)
        {
          goto LABEL_99;
        }

        v6 = (v6 + 1) & v80;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v1) - 1;
  }

  v59 = *(v3 + 16);
  v60 = __OFSUB__(v59, 1);
  v61 = v59 - 1;
  if (v60)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v61;
    ++*(v3 + 36);
    OUTLINED_FUNCTION_163();
  }
}

uint64_t sub_1C8F20BF4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C90627EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C9062E6C();
  v21[3] = v14;
  v21[4] = MEMORY[0x1E69A0050];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a2, v14);
  sub_1C902DC0C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C8D3F0C4(v9, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v4 + 32))(v6, v19, v3);
    v20[3] = v10;
    v20[4] = MEMORY[0x1E699FE60];
    v16 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(v11 + 16))(v16, v13, v10);
    sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70, MEMORY[0x1E699FF70]);
    sub_1C906292C();
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1C8F20F18()
{
  OUTLINED_FUNCTION_164();
  v26 = v2;
  v27 = v1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v5);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = sub_1C90627EC();
  OUTLINED_FUNCTION_11();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v29[3] = sub_1C9062E6C();
  v29[4] = MEMORY[0x1E69A0050];
  __swift_allocate_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_10_0();
  (*(v20 + 16))();
  sub_1C902CF6C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8D3F0C4(v12, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    (*(v8 + 32))(v0, v27, v6);
    v28[3] = v13;
    v28[4] = MEMORY[0x1E699FE60];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(v15 + 16))(boxed_opaque_existential_1, v19, v13);
    sub_1C8D28184(v24, v23, v25, v26);
    sub_1C906292C();
    (*(v8 + 8))(v0, v6);
    (*(v15 + 8))(v19, v13);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F211D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3162B0, &unk_1C9084E50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1C90627EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = v13;
  v22[4] = MEMORY[0x1E699FE60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v15 = *(v10 + 16);
  v15(boxed_opaque_existential_1, a2, v9);
  sub_1C902CF6C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8D3F0C4(v8, &qword_1EC3162B0, &unk_1C9084E50);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = v19;
    (*(v19 + 32))(v5, v20, v3);
    v21[3] = v9;
    v21[4] = MEMORY[0x1E699FE60];
    v17 = __swift_allocate_boxed_opaque_existential_1(v21);
    v15(v17, v12, v9);
    sub_1C8D28184(&qword_1EDA69380, &qword_1EC313278, &qword_1C90C63C0, MEMORY[0x1E699FF48]);
    sub_1C906292C();
    (*(v16 + 8))(v5, v3);
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1C8F214D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C8D3ED20(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C8F21500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchedTool(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_23_26()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t TypeIdentifier.protobuf(useCase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v33 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
      v34 = swift_allocBox();
      __dst[0] = v33;
      TypeIdentifier.BuiltInTypeIdentifier.protobuf(useCase:)(a1);
      v13 = v34 | 0x4000000000000000;
      break;
    case 2uLL:
      v20 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
      v22 = v20[2];
      v21 = v20[3];
      v24 = v20[4];
      v23 = v20[5];
      type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
      v25 = swift_allocBox();
      v27 = v26;

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v27 = v22;
      v27[1] = v21;
      v13 = v25 | 0x2000000000000000;
      v27[2] = v24;
      v27[3] = v23;
      break;
    case 3uLL:
      v28 = (v11 & 0x1FFFFFFFFFFFFFFFLL);
      memcpy(v49, ((v11 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
      memcpy(v50, v28 + 15, 0x61uLL);
      v29 = v28[28];
      v30 = v28[29];
      v45 = v29;
      memcpy(v48, v49, 0x61uLL);
      v46 = v30;

      sub_1C8CC1340(v49, __dst);
      sub_1C8D52860(v50, __dst, &qword_1EC312EF8, &unk_1C90839D0);
      ContainerDefinition.protobuf(useCase:)(v10);
      memcpy(__dst, v48, 0x61uLL);
      sub_1C8CC15FC(__dst);
      type metadata accessor for ToolKitProtoContainerDefinition(0);
      OUTLINED_FUNCTION_13_29(v10, 0);
      if (v50[1])
      {
        v47[0] = v50[0];
        v47[1] = v50[1];
        memcpy(&v47[2], &v50[2], 0x51uLL);
        ContainerDefinition.protobuf(useCase:)(v7);
        memcpy(v48, v47, 0x61uLL);
        sub_1C8CC15FC(v48);
        v31 = v7;
        v32 = 0;
      }

      else
      {
        v31 = v7;
        v32 = 1;
      }

      OUTLINED_FUNCTION_13_29(v31, v32);
      v35 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(0);
      v36 = swift_allocBox();
      v38 = v37;
      v39 = *(v35 + 20);
      OUTLINED_FUNCTION_13_29(v37 + v39, 1);
      v40 = *(v35 + 24);
      OUTLINED_FUNCTION_13_29(v38 + v40, 1);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8F228E4(v10, v38 + v39);
      sub_1C8F228E4(v7, v38 + v40);
      v41 = v46;
      *v38 = v45;
      v38[1] = v41;
      v13 = v36 | 0x6000000000000000;
      break;
    case 4uLL:
      v14 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      type metadata accessor for ToolKitProtoTypeIdentifier.Codable(0);
      v17 = swift_allocBox();
      v19 = v18;

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v19 = v16;
      v19[1] = v15;
      v13 = v17 | 0x8000000000000000;
      break;
    default:
      v12 = *(v11 + 16);
      type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
      v13 = swift_allocBox();
      LOBYTE(__dst[0]) = v12;
      TypeIdentifier.PrimitiveTypeIdentifier.protobuf(useCase:)();
      break;
  }

  v42 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  MEMORY[0x1EEE9AC00](v42);
  *(&v44 - 2) = v13;
  sub_1C8F22DE4(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
  sub_1C9063ACC();
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.init(protobuf:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  switch(*a1)
  {
    case 23:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v4);
      v6 = 23;
      goto LABEL_30;
    case 24:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v23);
      v6 = 24;
      goto LABEL_30;
    case 25:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v19);
      v6 = 25;
      goto LABEL_30;
    case 26:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v21);
      v6 = 26;
      goto LABEL_30;
    case 27:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v10);
      v6 = 27;
      goto LABEL_30;
    case 28:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v26);
      v6 = 28;
      goto LABEL_30;
    case 29:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v29);
      v6 = 29;
      goto LABEL_30;
    case 30:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v22);
      v6 = 30;
      goto LABEL_30;
    case 31:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v32);
      v6 = 31;
      goto LABEL_30;
    case 32:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v12);
      v6 = 32;
      goto LABEL_30;
    case 33:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v31);
      v6 = 33;
      goto LABEL_30;
    case 34:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v9);
      v6 = 34;
      goto LABEL_30;
    case 35:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v11);
      v6 = 35;
      goto LABEL_30;
    case 36:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v28);
      v6 = 36;
      goto LABEL_30;
    case 37:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v8);
      v6 = 37;
      goto LABEL_30;
    case 38:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v20);
      v6 = 38;
      goto LABEL_30;
    case 39:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v7);
      v6 = 39;
      goto LABEL_30;
    case 40:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v24);
      v6 = 40;
      goto LABEL_30;
    case 41:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v30);
      v6 = 42;
      goto LABEL_30;
    case 42:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v34);
      v6 = 43;
      goto LABEL_30;
    case 43:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v25);
      v6 = 41;
      goto LABEL_30;
    case 44:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v27);
      v6 = 44;
      goto LABEL_30;
    case 45:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v33);
      v6 = 46;
      goto LABEL_30;
    case 46:
      OUTLINED_FUNCTION_0_73();
      result = sub_1C8F22C30(a1, v35);
      v6 = 45;
      goto LABEL_30;
    case 47:
      v13 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      v15 = sub_1C8D4F674(&qword_1EC319E28, &qword_1EC319E20, &qword_1C90A7A88);
      OUTLINED_FUNCTION_213(v15);
      *v16 = &type metadata for TypeIdentifier.PrimitiveTypeIdentifier;
      OUTLINED_FUNCTION_10_0();
      (*(v17 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_0_73();
      return sub_1C8F22C30(a1, v18);
    default:
      v40 = *a1;
      v36 = TypeIdentifier.MeasurementUnitType.init(protobuf:)(&v40);
      if (v37)
      {

        OUTLINED_FUNCTION_0_73();
        result = sub_1C8F22C30(a1, v38);
        v6 = 22;
      }

      else
      {
        v6 = v36;
        OUTLINED_FUNCTION_0_73();
        result = sub_1C8F22C30(a1, v39);
      }

LABEL_30:
      *a2 = v6;
      return result;
  }
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.protobuf(useCase:)()
{
  v1 = *v0;
  if ((v1 - 23) >= 0x18 && v1 != 22)
  {
    TypeIdentifier.MeasurementUnitType.protobuf(useCase:)(v1, v4);
  }

  v2 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C8F22DE4(qword_1EDA6C580, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Primitive);
  return OUTLINED_FUNCTION_12_34();
}

uint64_t TypeIdentifier.init(protobuf:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeIdentifier.Codable(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v9 = OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v85 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  v86 = type metadata accessor for ToolKitProtoTypeIdentifier.Attributed(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v87 = (v17 - v16);
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  v19 = OUTLINED_FUNCTION_9(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = type metadata accessor for ToolKitProtoTypeIdentifier.Custom(0);
  v27 = OUTLINED_FUNCTION_9(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v30 = (v29 - v28);
  v31 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v32 = OUTLINED_FUNCTION_9(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25();
  v35 = (v33 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v84 - v37;
  v39 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v84 = a1;
    switch(v39 >> 61)
    {
      case 1uLL:
        v73 = v39;

        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v84, v74);
        v75 = swift_projectBox();
        sub_1C8F22C88(v75, v30, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
        v76 = swift_allocObject();
        v77 = v30[1];
        *(v76 + 16) = *v30;
        *(v76 + 24) = v77;
        v79 = v30[2];
        v78 = v30[3];

        sub_1C8F22C30(v30, type metadata accessor for ToolKitProtoTypeIdentifier.Custom);
        *(v76 + 32) = v79;
        *(v76 + 40) = v78;
        result = sub_1C8D076D8(v73);
        v47 = v76 | 0x4000000000000000;
        goto LABEL_12;
      case 2uLL:
        v58 = v39;
        v59 = swift_projectBox();
        sub_1C8F22C88(v59, v25, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);
        v60 = swift_allocObject();
        sub_1C8F22C88(v25, v22, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);

        v61 = v93;
        TypeIdentifier.BuiltInTypeIdentifier.init(protobuf:)(v22, (v60 + 16));
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v84, v62);
        OUTLINED_FUNCTION_1_68();
        if (v61)
        {
          OUTLINED_FUNCTION_1();
          swift_deallocUninitializedObject();
          v51 = v58;
          goto LABEL_15;
        }

        result = sub_1C8D076D8(v58);
        v47 = v60 | 0x2000000000000000;
        goto LABEL_12;
      case 3uLL:
        v63 = v39;
        v64 = swift_projectBox();
        v65 = v87;
        sub_1C8F22C88(v64, v87, type metadata accessor for ToolKitProtoTypeIdentifier.Attributed);
        v66 = swift_allocObject();
        v67 = v86;
        v68 = sub_1C8D52860(v65 + *(v86 + 20), v14, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C8F06C94(v68, v69, v70);

        v71 = v93;
        sub_1C906351C();
        if (v71)
        {
          OUTLINED_FUNCTION_2_63();
          sub_1C8F22C30(v84, v72);
          OUTLINED_FUNCTION_4_50();
          swift_deallocUninitializedObject();
          v51 = v63;
          goto LABEL_15;
        }

        memcpy(v91, __src, sizeof(v91));
        sub_1C8D52860(v65 + *(v67 + 24), v85, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C906350C();
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v80, v81);
        memcpy(v89, v90, sizeof(v89));
        v83 = *v65;
        v82 = v65[1];

        OUTLINED_FUNCTION_4_50();
        memcpy((v66 + 16), v91, 0x61uLL);
        memcpy((v66 + 120), v89, 0x61uLL);
        *(v66 + 224) = v83;
        *(v66 + 232) = v82;
        result = sub_1C8D076D8(v63);
        v47 = v66 | 0x6000000000000000;
        goto LABEL_12;
      case 4uLL:
        v52 = v39;

        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v84, v53);
        v54 = swift_projectBox();
        sub_1C8F22C88(v54, v7, type metadata accessor for ToolKitProtoTypeIdentifier.Codable);
        v55 = swift_allocObject();
        v57 = *v7;
        v56 = v7[1];

        sub_1C8F22C30(v7, type metadata accessor for ToolKitProtoTypeIdentifier.Codable);
        *(v55 + 16) = v57;
        *(v55 + 24) = v56;
        result = sub_1C8D076D8(v52);
        v47 = v55 | 0x8000000000000000;
        goto LABEL_12;
      default:
        v45 = v39;
        v46 = swift_projectBox();
        sub_1C8F22C88(v46, v38, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
        v47 = swift_allocObject();
        sub_1C8F22C88(v38, v35, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);

        v48 = v93;
        TypeIdentifier.PrimitiveTypeIdentifier.init(protobuf:)(v35, (v47 + 16));
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v84, v49);
        OUTLINED_FUNCTION_0_73();
        sub_1C8F22C30(v38, v50);
        if (v48)
        {
          swift_deallocUninitializedObject();
          v51 = v45;
LABEL_15:
          result = sub_1C8D076D8(v51);
        }

        else
        {
          result = sub_1C8D076D8(v45);
LABEL_12:
          *v88 = v47;
        }

        break;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319E30, &qword_1C90A7A90);
    v40 = sub_1C8D4F674(&qword_1EC319E38, &qword_1EC319E30, &qword_1C90A7A90);
    OUTLINED_FUNCTION_213(v40);
    *v41 = &type metadata for ToolKitProtoTypeIdentifierKind;
    OUTLINED_FUNCTION_10_0();
    (*(v42 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_2_63();
    return sub_1C8F22C30(a1, v43);
  }

  return result;
}

void TypeIdentifier.BuiltInTypeIdentifier.init(protobuf:)(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *a1;
  switch(*a1)
  {
    case 0uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 0;
      goto LABEL_21;
    case 1uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 1;
      goto LABEL_21;
    case 2uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 2;
      goto LABEL_21;
    case 3uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 3;
      goto LABEL_21;
    case 4uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 4;
      goto LABEL_21;
    case 5uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 5;
      goto LABEL_21;
    case 6uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 6;
      goto LABEL_21;
    case 7uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 7;
      goto LABEL_21;
    case 8uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 8;
      goto LABEL_21;
    case 9uLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 9;
      goto LABEL_21;
    case 0xAuLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 10;
      goto LABEL_21;
    case 0xBuLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 11;
      goto LABEL_21;
    case 0xCuLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 12;
      goto LABEL_21;
    case 0xDuLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 13;
      goto LABEL_21;
    case 0xEuLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 14;
      goto LABEL_21;
    case 0xFuLL:
      OUTLINED_FUNCTION_1_68();
      v14 = 15;
      goto LABEL_21;
    case 0x10uLL:
      v15 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      v17 = sub_1C8D4F674(&qword_1EC319E48, &qword_1EC319E40, &qword_1C90A7A98);
      OUTLINED_FUNCTION_213(v17);
      *v18 = &type metadata for TypeIdentifier.BuiltInTypeIdentifier;
      OUTLINED_FUNCTION_10_0();
      (*(v19 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_68();
      return;
    default:
      v20 = swift_projectBox();
      sub_1C8F22C88(v20, v12, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_1C8F22C88(v12, v9, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_1C8D3F120(v13);
      TypeIdentifier.init(protobuf:)(v9, &v24);
      if (v2)
      {

        __break(1u);
      }

      else
      {
        v21 = v24;
        OUTLINED_FUNCTION_1_68();
        OUTLINED_FUNCTION_2_63();
        sub_1C8F22C30(v12, v22);
        v14 = swift_allocObject();
        *(v14 + 16) = v21;
        sub_1C8D98198(v13);
LABEL_21:
        *a2 = v14;
      }

      return;
  }
}

unint64_t TypeIdentifier.BuiltInTypeIdentifier.protobuf(useCase:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 >= 0x10)
  {
    type metadata accessor for ToolKitProtoTypeIdentifier(0);
    v2 = swift_allocBox();
    TypeIdentifier.protobuf(useCase:)(a1);
  }

  v4 = type metadata accessor for ToolKitProtoTypeIdentifier.Builtin(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C8F22DE4(qword_1EDA618D0, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin, &protocol conformance descriptor for ToolKitProtoTypeIdentifier.Builtin);
  OUTLINED_FUNCTION_12_34();
  return sub_1C8D3F130(v2);
}

uint64_t sub_1C8F2287C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  result = sub_1C8D076D8(v4);
  *a1 = a2;
  return result;
}

uint64_t sub_1C8F228E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TypeIdentifier.protobuf.getter()
{
  v0 = sub_1C906348C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  (*(v1 + 104))(v3 - v2, *MEMORY[0x1E69E0760], v0);
  TypeIdentifier.protobuf(useCase:)(v4);
  return (*(v1 + 8))(v4, v0);
}

ToolKit::TypeIdentifier::MeasurementUnitType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypeIdentifier.MeasurementUnitType.init(protobuf:)(ToolKit::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType protobuf)
{
  v1 = *protobuf;
  result = ToolKit_TypeIdentifier_MeasurementUnitType_length;
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_mass;
      break;
    case 3:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_temperature;
      break;
    case 4:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_volume;
      break;
    case 5:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_speed;
      break;
    case 6:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_energy;
      break;
    case 7:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_duration;
      break;
    case 8:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_acceleration;
      break;
    case 9:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_angle;
      break;
    case 10:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_area;
      break;
    case 11:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_concentrationMass;
      break;
    case 12:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_dispersion;
      break;
    case 13:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_electricCharge;
      break;
    case 14:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_electricCurrent;
      break;
    case 15:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_electricPotentialDifference;
      break;
    case 16:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_electricResistance;
      break;
    case 17:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_frequency;
      break;
    case 18:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_fuelEfficiency;
      break;
    case 19:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_illuminance;
      break;
    case 20:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_informationStorage;
      break;
    case 21:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_power;
      break;
    case 22:
      result = ToolKit_TypeIdentifier_MeasurementUnitType_pressure;
      break;
    default:
      v3 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      sub_1C8D4F674(&qword_1EDA62BC0, &qword_1EC319E50, &qword_1C90A7AA0);
      swift_allocError();
      *v5 = &type metadata for TypeIdentifier.MeasurementUnitType;
      OUTLINED_FUNCTION_10_0();
      (*(v6 + 104))();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1C8F22C30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8F22C88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t sub_1C8F22D24@<X0>(ToolKit::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType a1@<W0>, _BYTE *a2@<X8>)
{
  result = TypeIdentifier.MeasurementUnitType.init(protobuf:)(a1);
  if (!v4)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C8F22D7C(unint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  sub_1C8D3F120(a2);
  result = sub_1C8D98198(v4);
  *a1 = a2;
  return result;
}

uint64_t sub_1C8F22DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8F22E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA669D0;
  if (!qword_1EDA669D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669D0);
  }

  return result;
}

unint64_t sub_1C8F22E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E58;
  if (!qword_1EC319E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E58);
  }

  return result;
}

unint64_t sub_1C8F22EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E60;
  if (!qword_1EC319E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E60);
  }

  return result;
}

unint64_t sub_1C8F22F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E68;
  if (!qword_1EC319E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E68);
  }

  return result;
}

uint64_t sub_1C8F22FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6863726165536469 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7105633 && a2 == 0xE300000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6574736567677573 && a2 == 0xE900000000000064;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x61655365756C6176 && a2 == 0xEB00000000686372;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C9064C2C();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_1C8F23304(char a1)
{
  result = 0x644965707974;
  switch(a1)
  {
    case 1:
      result = 0x73697261706D6F63;
      break;
    case 2:
      result = 0x6553676E69727473;
      break;
    case 3:
      result = 0x6863726165536469;
      break;
    case 4:
      result = 0x6261686372616573;
      break;
    case 5:
      result = 7105633;
      break;
    case 6:
      result = 0x64696C6176;
      break;
    case 7:
      result = 0x6574736567677573;
      break;
    case 8:
      result = 0x61655365756C6176;
      break;
    case 9:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F2342C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F40, &qword_1C90A7FD8);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v44 = *(v1 + 16);
  v50 = *(v1 + 24);
  v8 = *(v1 + 25);
  v42 = *(v1 + 26);
  v43 = v8;
  v9 = *(v1 + 27);
  v39 = *(v1 + 28);
  v40 = v9;
  v38 = *(v1 + 29);
  v10 = *(v1 + 32);
  v41 = *(v1 + 40);
  v11 = *(v1 + 56);
  v35 = *(v1 + 48);
  v36 = v11;
  v37 = v10;
  v12 = *(v1 + 64);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1C8F24B94(v17, v18, v19);
  sub_1C9064E1C();
  LOBYTE(v46) = 0;
  v20 = v45;
  sub_1C9064B2C();
  if (v20)
  {
    return (*(v4 + 8))(v7, v16);
  }

  v21 = v50;
  v23 = v42;
  v22 = v43;
  v45 = v12;
  v24 = v41;
  v46 = v44;
  v51 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313368, &unk_1C906B510);
  sub_1C8F250F4(&qword_1EC319F48, &unk_1C908BCF8);
  OUTLINED_FUNCTION_2_64();
  sub_1C9064B8C();
  LOBYTE(v46) = v21;
  v51 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EC0, &unk_1C90C82C0);
  sub_1C8F251A4();
  OUTLINED_FUNCTION_2_64();
  sub_1C9064B0C();
  LOBYTE(v46) = v22;
  v51 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319ED0, &unk_1C90A7FA0);
  sub_1C8F25230();
  v26 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v26);
  LOBYTE(v46) = v23;
  v51 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EE0, &unk_1C90C82B0);
  sub_1C8F252BC();
  v27 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v27);
  LOBYTE(v46) = v40;
  v51 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EF0, &unk_1C90A7FB0);
  sub_1C8F25348();
  v28 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v28);
  LOBYTE(v46) = v39;
  v51 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F00, &unk_1C90C82A0);
  sub_1C8F253D4();
  v29 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v29);
  LOBYTE(v46) = v38;
  v51 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F10, &unk_1C90A7FC0);
  sub_1C8F25460();
  v30 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v30);
  v46 = v37;
  v51 = 8;
  sub_1C8CD1784(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F20, &unk_1C90C8290);
  sub_1C8F254EC();
  v31 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v31);
  sub_1C8CD0FB0(v46);
  v46 = v24;
  v47 = v35;
  v48 = v36;
  v49 = v45;
  v51 = 9;
  sub_1C8D16DD0(v24, v35, v36, v45, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F30, &qword_1C90A7FD0);
  sub_1C8F25578();
  v33 = OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_22_30(v33);
  sub_1C8D16E14(v46, v47);
  return (*(v4 + 8))(v7, v16);
}

uint64_t sub_1C8F23848@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EA8, &qword_1C90A7F98);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F24B94(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_1C9064A0C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313368, &unk_1C906B510);
  OUTLINED_FUNCTION_18_29(1);
  sub_1C8F250F4(&qword_1EC319EB8, &unk_1C908BC78);
  OUTLINED_FUNCTION_0_74();
  sub_1C9064A6C();
  v27 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EC0, &unk_1C90C82C0);
  OUTLINED_FUNCTION_18_29(2);
  sub_1C8F24C2C();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319ED0, &unk_1C90A7FA0);
  OUTLINED_FUNCTION_18_29(3);
  sub_1C8F24CB8();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EE0, &unk_1C90C82B0);
  OUTLINED_FUNCTION_18_29(4);
  sub_1C8F24D44();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319EF0, &unk_1C90A7FB0);
  OUTLINED_FUNCTION_18_29(5);
  sub_1C8F24DD0();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F00, &unk_1C90C82A0);
  OUTLINED_FUNCTION_18_29(6);
  sub_1C8F24E5C();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F10, &unk_1C90A7FC0);
  OUTLINED_FUNCTION_18_29(7);
  sub_1C8F24EE8();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v26 = v9;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F20, &unk_1C90C8290);
  OUTLINED_FUNCTION_18_29(8);
  sub_1C8F24F74();
  OUTLINED_FUNCTION_0_74();
  sub_1C90649EC();
  v12 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319F30, &qword_1C90A7FD0);
  v46 = 9;
  sub_1C8F25000();
  sub_1C90649EC();
  v13 = OUTLINED_FUNCTION_6_41();
  v14(v13);
  v23 = v41;
  v22 = v42;
  v21 = v43;
  v20 = v44;
  __src[0] = v26;
  __src[1] = v11;
  __src[2] = v27;
  v25 = v45;
  LOBYTE(__src[3]) = v45;
  v24 = v51;
  BYTE1(__src[3]) = v51;
  v15 = v50;
  BYTE2(__src[3]) = v50;
  v16 = v49;
  BYTE3(__src[3]) = v49;
  v17 = v48;
  BYTE4(__src[3]) = v48;
  v18 = v47;
  BYTE5(__src[3]) = v47;
  __src[4] = v12;
  __src[5] = v41;
  __src[6] = v42;
  __src[7] = v43;
  __src[8] = v44;
  memcpy(a2, __src, 0x48uLL);
  sub_1C8F2508C(__src, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v26;
  v29[1] = v11;
  v29[2] = v27;
  v30 = v25;
  v31 = v24;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v12;
  v37 = v23;
  v38 = v22;
  v39 = v21;
  v40 = v20;
  return sub_1C8F250C4(v29);
}

uint64_t sub_1C8F23DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F22FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F23E20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8F232FC();
  *a1 = result;
  return result;
}

uint64_t sub_1C8F23E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F24B94(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F23E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F24B94(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

double sub_1C8F23EF4@<D0>(uint64_t a2@<X8>)
{
  if (qword_1EC3115E8 != -1)
  {
    OUTLINED_FUNCTION_17_31(&qword_1EC3115E8);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EC390E00);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v5 = v4;
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  if (qword_1EC3115F0 != -1)
  {
    OUTLINED_FUNCTION_16_29(&qword_1EC3115F0);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390E18);
  sub_1C9062E5C();
  sub_1C8D27E84();
  v9 = v8;

  *(a2 + 16) = v9;
  if (qword_1EC3115F8 != -1)
  {
    OUTLINED_FUNCTION_15_29(&qword_1EC3115F8);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390E30);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CE10(v10, v11);

  *(a2 + 24) = v26;
  if (qword_1EC311600 != -1)
  {
    OUTLINED_FUNCTION_14_37(&qword_1EC311600);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390E48);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CDE0(v12, v13);

  *(a2 + 25) = v26;
  if (qword_1EC311608 != -1)
  {
    OUTLINED_FUNCTION_13_30(&qword_1EC311608);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390E60);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CDB0(v14, v15);

  *(a2 + 26) = v26;
  if (qword_1EC311610 != -1)
  {
    OUTLINED_FUNCTION_12_35(&qword_1EC311610);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390E78);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CD80(v16, v17);

  *(a2 + 27) = v26;
  if (qword_1EC311618 != -1)
  {
    OUTLINED_FUNCTION_11_34(&qword_1EC311618);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390E90);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CCF0(v18, v19);

  *(a2 + 28) = v26;
  if (qword_1EC311620 != -1)
  {
    OUTLINED_FUNCTION_10_41(&qword_1EC311620);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390EA8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CCC0(v20, v21);

  *(a2 + 29) = v26;
  if (qword_1EC311628 != -1)
  {
    OUTLINED_FUNCTION_9_36(&qword_1EC311628);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390EC0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_5_48();
  sub_1C905CC10(v22);

  *(a2 + 32) = v26;
  if (qword_1EC311630 != -1)
  {
    OUTLINED_FUNCTION_8_43(&qword_1EC311630);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EC390ED8);
  v23 = sub_1C9062E5C();
  sub_1C905CBE0(v23, v24);

  result = *&v26;
  *(a2 + 40) = v26;
  *(a2 + 56) = v27;
  return result;
}

uint64_t sub_1C8F242C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8F24A94(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8F243BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 25);
  LODWORD(v75) = *(v5 + 26);
  HIDWORD(v75) = *(v5 + 27);
  LODWORD(v81) = *(v5 + 28);
  HIDWORD(v81) = *(v5 + 29);
  v10 = *(v5 + 32);
  v101 = *(v5 + 48);
  v107 = *(v5 + 40);
  v87 = *(v5 + 64);
  v94 = *(v5 + 56);
  v11 = qword_1EC3115E8;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_17_31(&qword_1EC3115E8);
  }

  v12 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v12, qword_1EC390E00);
  sub_1C9062E5C();
  sub_1C9062BFC();
  if (qword_1EC3115F0 != -1)
  {
    OUTLINED_FUNCTION_16_29(&qword_1EC3115F0);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390E18);
  sub_1C9062E5C();
  v130 = OUTLINED_FUNCTION_20_27();
  v136 = sub_1C8D28184(&qword_1EC313370, &qword_1EC313368, &unk_1C906B510, &unk_1C908BBDC);
  sub_1C9062BFC();
  if (qword_1EC3115F8 != -1)
  {
    OUTLINED_FUNCTION_15_29(&qword_1EC3115F8);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390E30);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    v13 = OUTLINED_FUNCTION_1_69(&qword_1EC319FC8);
  }

  OUTLINED_FUNCTION_4_51(v13, v14, v15, v16, v17, v18, v19, v20, v69, v75, v81, v87, v94, v101, v107, v7, v6, v124, v130, v136);
  if (qword_1EC311600 != -1)
  {
    OUTLINED_FUNCTION_14_37(&qword_1EC311600);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390E48);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v9)
  {
    v21 = OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    v21 = OUTLINED_FUNCTION_1_69(&qword_1EC319FC0);
  }

  OUTLINED_FUNCTION_4_51(v21, v22, v23, v24, v25, v26, v27, v28, v70, v76, v82, v88, v95, v102, v108, v114, v119, v125, v131, v137);
  v29 = v10;
  if (qword_1EC311608 != -1)
  {
    OUTLINED_FUNCTION_13_30(&qword_1EC311608);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390E60);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v77)
  {
    v30 = OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    v30 = OUTLINED_FUNCTION_1_69(&qword_1EC319FB8);
  }

  OUTLINED_FUNCTION_4_51(v30, v31, v32, v33, v34, v35, v36, v37, v71, v77, v83, v89, v96, v103, v109, v115, v120, v126, v132, v138);
  v38 = v104;
  if (qword_1EC311610 != -1)
  {
    OUTLINED_FUNCTION_12_35(&qword_1EC311610);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390E78);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if ((v78 & 0x100000000) != 0)
  {
    v39 = OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    v39 = OUTLINED_FUNCTION_1_69(&qword_1EC319FB0);
  }

  OUTLINED_FUNCTION_4_51(v39, v40, v41, v42, v43, v44, v45, v46, v72, v78, v84, v90, v97, v104, v110, v116, v121, v127, v133, v139);
  if (qword_1EC311618 != -1)
  {
    OUTLINED_FUNCTION_11_34(&qword_1EC311618);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390E90);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if (v85)
  {
    v47 = OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    v47 = OUTLINED_FUNCTION_1_69(&qword_1EC319FA8);
  }

  OUTLINED_FUNCTION_4_51(v47, v48, v49, v50, v51, v52, v53, v54, v73, v79, v85, v91, v98, v105, v111, v117, v122, v128, v134, v140);
  if (qword_1EC311620 != -1)
  {
    OUTLINED_FUNCTION_10_41(&qword_1EC311620);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390EA8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if ((v86 & 0x100000000) != 0)
  {
    v55 = OUTLINED_FUNCTION_3_53();
  }

  else
  {
    OUTLINED_FUNCTION_20_27();
    v55 = OUTLINED_FUNCTION_1_69(&qword_1EC319FA0);
  }

  OUTLINED_FUNCTION_4_51(v55, v56, v57, v58, v59, v60, v61, v62, v74, v80, v86, v92, v99, v106, v112, v118, v123, v129, v135, v141);
  if (qword_1EC311628 != -1)
  {
    OUTLINED_FUNCTION_9_36(&qword_1EC311628);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390EC0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_19_28();
  if ((~v29 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319F98);
  }

  sub_1C8CD1784(v29);
  sub_1C9062BFC();
  if (qword_1EC311630 != -1)
  {
    OUTLINED_FUNCTION_8_43(&qword_1EC311630);
  }

  OUTLINED_FUNCTION_10(v12, qword_1EC390ED8);
  sub_1C9062E5C();
  if (v38)
  {
    OUTLINED_FUNCTION_20_27();
    OUTLINED_FUNCTION_1_69(&qword_1EC319F90);
    v64 = swift_allocObject();
    v65 = v113;
    v64[2] = v113;
    v64[3] = v38;
    v67 = v93;
    v66 = v100;
    v64[4] = v100;
    v64[5] = v93;
  }

  else
  {
    v65 = v113;
    v67 = v93;
    v66 = v100;
  }

  sub_1C8D16DD0(v65, v38, v66, v67, v63);
  return sub_1C9062BFC();
}

uint64_t sub_1C8F2496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_1EC319E70;

  return v5;
}

unint64_t sub_1C8F249A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E80;
  if (!qword_1EC319E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E80);
  }

  return result;
}

unint64_t sub_1C8F24A00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F24A40(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8F24A94(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8D16A8C(v7, v8, v9);
  a1[3] = v10;
  result = sub_1C8F24AE8(v10, v11, v12);
  a1[4] = result;
  return result;
}

unint64_t sub_1C8F24A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E88;
  if (!qword_1EC319E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E88);
  }

  return result;
}

unint64_t sub_1C8F24A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E90;
  if (!qword_1EC319E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E90);
  }

  return result;
}

unint64_t sub_1C8F24AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319E98;
  if (!qword_1EC319E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319E98);
  }

  return result;
}

unint64_t sub_1C8F24B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319EA0;
  if (!qword_1EC319EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EA0);
  }

  return result;
}

unint64_t sub_1C8F24B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319EB0;
  if (!qword_1EC319EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EB0);
  }

  return result;
}

uint64_t sub_1C8F24BE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComparisonPredicate.Template(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8F24C2C()
{
  result = qword_1EC319EC8;
  if (!qword_1EC319EC8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EC0, &unk_1C90C82C0);
    v6 = sub_1C8DCE280(v1, v2, v3);
    sub_1C8DCE1D8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EC8);
  }

  return result;
}

unint64_t sub_1C8F24CB8()
{
  result = qword_1EC319ED8;
  if (!qword_1EC319ED8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319ED0, &unk_1C90A7FA0);
    v6 = sub_1C8D0BD80(v1, v2, v3);
    sub_1C8D0BDD4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319ED8);
  }

  return result;
}

unint64_t sub_1C8F24D44()
{
  result = qword_1EC319EE8;
  if (!qword_1EC319EE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EE0, &unk_1C90C82B0);
    v6 = sub_1C8EF8FAC(v1, v2, v3);
    sub_1C8EF8E50(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EE8);
  }

  return result;
}

unint64_t sub_1C8F24DD0()
{
  result = qword_1EC319EF8;
  if (!qword_1EC319EF8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EF0, &unk_1C90A7FB0);
    v6 = sub_1C8DCDE28(v1, v2, v3);
    sub_1C8DCDA34(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319EF8);
  }

  return result;
}

unint64_t sub_1C8F24E5C()
{
  result = qword_1EC319F08;
  if (!qword_1EC319F08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F00, &unk_1C90C82A0);
    v6 = sub_1C8DCDDD4(v1, v2, v3);
    sub_1C8DCD98C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F08);
  }

  return result;
}

unint64_t sub_1C8F24EE8()
{
  result = qword_1EC319F18;
  if (!qword_1EC319F18)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F10, &unk_1C90A7FC0);
    v6 = sub_1C8D943C0(v1, v2, v3);
    sub_1C8D94414(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F18);
  }

  return result;
}

unint64_t sub_1C8F24F74()
{
  result = qword_1EC319F28;
  if (!qword_1EC319F28)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F20, &unk_1C90C8290);
    v6 = sub_1C8E2E59C(v1, v2, v3);
    sub_1C8E2E5F0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F28);
  }

  return result;
}

unint64_t sub_1C8F25000()
{
  result = qword_1EC319F38;
  if (!qword_1EC319F38)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F30, &qword_1C90A7FD0);
    v6 = sub_1C8EF9000(v1, v2, v3);
    sub_1C8EF8EA4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F38);
  }

  return result;
}

uint64_t sub_1C8F250F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313368, &unk_1C906B510);
    sub_1C8F24BE8(&qword_1EDA633B8, &protocol conformance descriptor for ComparisonPredicate.Template);
    sub_1C8F24BE8(&qword_1EDA633C0, &protocol conformance descriptor for ComparisonPredicate.Template);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8F251A4()
{
  result = qword_1EC319F50;
  if (!qword_1EC319F50)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EC0, &unk_1C90C82C0);
    v6 = sub_1C8DCE280(v1, v2, v3);
    sub_1C8DCE1D8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F50);
  }

  return result;
}

unint64_t sub_1C8F25230()
{
  result = qword_1EC319F58;
  if (!qword_1EC319F58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319ED0, &unk_1C90A7FA0);
    v6 = sub_1C8D0BD80(v1, v2, v3);
    sub_1C8D0BDD4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F58);
  }

  return result;
}

unint64_t sub_1C8F252BC()
{
  result = qword_1EC319F60;
  if (!qword_1EC319F60)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EE0, &unk_1C90C82B0);
    v6 = sub_1C8EF8FAC(v1, v2, v3);
    sub_1C8EF8E50(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F60);
  }

  return result;
}

unint64_t sub_1C8F25348()
{
  result = qword_1EC319F68;
  if (!qword_1EC319F68)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319EF0, &unk_1C90A7FB0);
    v6 = sub_1C8DCDE28(v1, v2, v3);
    sub_1C8DCDA34(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F68);
  }

  return result;
}

unint64_t sub_1C8F253D4()
{
  result = qword_1EC319F70;
  if (!qword_1EC319F70)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F00, &unk_1C90C82A0);
    v6 = sub_1C8DCDDD4(v1, v2, v3);
    sub_1C8DCD98C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F70);
  }

  return result;
}

unint64_t sub_1C8F25460()
{
  result = qword_1EC319F78;
  if (!qword_1EC319F78)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F10, &unk_1C90A7FC0);
    v6 = sub_1C8D943C0(v1, v2, v3);
    sub_1C8D94414(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F78);
  }

  return result;
}

unint64_t sub_1C8F254EC()
{
  result = qword_1EC319F80;
  if (!qword_1EC319F80)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F20, &unk_1C90C8290);
    v6 = sub_1C8E2E59C(v1, v2, v3);
    sub_1C8E2E5F0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F80);
  }

  return result;
}

unint64_t sub_1C8F25578()
{
  result = qword_1EC319F88;
  if (!qword_1EC319F88)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319F30, &qword_1C90A7FD0);
    v6 = sub_1C8EF9000(v1, v2, v3);
    sub_1C8EF8EA4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319F88);
  }

  return result;
}

uint64_t sub_1C8F256A4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8F24B94(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t getEnumTagSinglePayload for PredicateTemplatesRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PredicateTemplatesRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8F25884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319FD0;
  if (!qword_1EC319FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FD0);
  }

  return result;
}

unint64_t sub_1C8F258DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319FD8;
  if (!qword_1EC319FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FD8);
  }

  return result;
}

unint64_t sub_1C8F25934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC319FE0;
  if (!qword_1EC319FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FE0);
  }

  return result;
}

uint64_t LNEffectiveBundleIdentifierGrouping.isLinkSystemFrameworkIntent.getter()
{
  v1 = [v0 effectiveBundleIdentifiers];
  v2 = [v1 firstObject];

  if (v2)
  {
    sub_1C906468C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_1C8F25B28();
    if (swift_dynamicCast())
    {
      v3 = [v0 effectiveBundleIdentifiers];
      v4 = [v3 count];

      if (v4 == 1)
      {
        v5 = [v7 type];

        if (v5 == 3)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C8F25AC0(v10);
  }

  return 0;
}

uint64_t sub_1C8F25AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164F0, &qword_1C907A7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8F25B28()
{
  result = qword_1EC319FE8;
  if (!qword_1EC319FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC319FE8);
  }

  return result;
}

uint64_t ToolSummaryComponent.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 == 255)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319FF0, &qword_1C90A8100);
    sub_1C8F25C64();
    swift_allocError();
    *v12 = &type metadata for ToolKitProtoToolSummaryString.ToolKitProtoComponentKind;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x1E69E08B0], v11);
    swift_willThrow();
    return OUTLINED_FUNCTION_1_70();
  }

  else
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v9 = v6 & 1;
    OUTLINED_FUNCTION_264(*a1, v7, v6 & 1, a2, a3, a4);
    result = OUTLINED_FUNCTION_1_70();
    *a5 = v8;
    *(a5 + 8) = v7;
    *(a5 + 16) = v9;
  }

  return result;
}

unint64_t sub_1C8F25C64()
{
  result = qword_1EC319FF8;
  if (!qword_1EC319FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC319FF0, &qword_1C90A8100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319FF8);
  }

  return result;
}

uint64_t ToolSummaryComponent.protobuf(useCase:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6);
  sub_1C8F25E08();
  sub_1C9063ACC();
  return OUTLINED_FUNCTION_265(v1, v2);
}

uint64_t sub_1C8F25D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = a4 & 1;
  OUTLINED_FUNCTION_264(a2, a3, a4 & 1, a4, a5, a6);
  result = sub_1C8D06DF8(v9, v10, v11);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v12;
  return result;
}

unint64_t sub_1C8F25E08()
{
  result = qword_1EC31A000;
  if (!qword_1EC31A000)
  {
    type metadata accessor for ToolKitProtoToolSummaryString.Component(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A000);
  }

  return result;
}

uint64_t ToolSummaryString.init(protobuf:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1C8F25F28(a1, a3, a4);

  v7 = sub_1C90641EC();
  result = sub_1C8F26414(a1, type metadata accessor for ToolKitProtoToolSummaryString);
  if (!v4)
  {
    *a2 = v7;
  }

  return result;
}

unint64_t sub_1C8F25F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A008;
  if (!qword_1EC31A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A008);
  }

  return result;
}

uint64_t ToolSummaryString.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1C8F25FF8(a1, a3, a4);
  result = sub_1C90641FC();
  if (!v4)
  {
    v7 = result;
    type metadata accessor for ToolKitProtoToolSummaryString(0);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a2 = v7;
  }

  return result;
}

unint64_t sub_1C8F25FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A010;
  if (!qword_1EC31A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A010);
  }

  return result;
}

uint64_t ToolInvocationSignature.init(protobuf:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v45 = sub_1C8D2BCE0(v6);

  v44 = sub_1C8D2BCE0(v7);
  v46 = a1;
  v8 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A018, &qword_1C90A8108);
  v9 = sub_1C906493C();
  v10 = v9;
  v11 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;
  v47 = v9 + 64;
  v50 = v8;

  v17 = 0;
  v48 = v10;
  if (v14)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v51 = (v14 - 1) & v14;
LABEL_10:
      v21 = v18 | (v17 << 6);
      v22 = (*(v50 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = sub_1C8F2635C(*(v50 + 56) + *(v49 + 72) * v21, v5);
      v28 = sub_1C8DDC704(v25, v26, v27);
      sub_1C8F263C0(v28, v29, v30);

      v31 = v52;
      v32 = sub_1C906436C();
      v52 = v31;
      if (v31)
      {
        break;
      }

      v33 = v32;
      OUTLINED_FUNCTION_0_75();
      result = sub_1C8F26414(v5, v34);
      v10 = v48;
      *(v47 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v35 = (v10[6] + 16 * v21);
      *v35 = v23;
      v35[1] = v24;
      *(v10[7] + 8 * v21) = v33;
      v36 = v10[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_17;
      }

      v10[2] = v38;
      v14 = v51;
      if (!v51)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_0_75();
    sub_1C8F26414(v5, v41);
    OUTLINED_FUNCTION_2_65();
  }

  else
  {
LABEL_5:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        result = OUTLINED_FUNCTION_2_65();
        v39 = v43;
        v40 = v44;
        *v43 = v45;
        v39[1] = v40;
        v39[2] = v10;
        return result;
      }

      v20 = *(v11 + 8 * v17);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8F2635C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8F263C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A020;
  if (!qword_1EC31A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A020);
  }

  return result;
}

uint64_t sub_1C8F26414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ToolInvocationSignature.protobuf(useCase:)@<X0>(uint64_t a1@<X0>, uint64_t *a6@<X8>)
{
  v8 = v7;
  v11 = *v6;
  v12 = v6[1];
  v13 = v6[2];

  v14 = sub_1C8D7904C(v11);
  v15 = sub_1C8D7904C(v12);
  sub_1C8D759FC(sub_1C8F265DC, _0, v13, v16, v17, v18, v19, v20, _0[0], _0[1], a1, _0[3], _0[4], _0[5], _0[6], _0[7], _0[8], _0[9], _0[10], _0[11]);
  if (v8)
  {
  }

  else
  {
    v23 = v21;
    type metadata accessor for ToolKitProtoToolInvocationSignature(0);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a6 = v14;
    a6[1] = v15;
    a6[2] = v23;
  }

  return result;
}

uint64_t sub_1C8F2654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1C8DDC704(a1, a2, a3);
  sub_1C8F0750C(v6, v7, v8);
  result = sub_1C906437C();
  if (!v4)
  {
    v10 = result;
    type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
    result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *a4 = v10;
  }

  return result;
}

unint64_t sub_1C8F26630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A028;
  if (!qword_1EC31A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A028);
  }

  return result;
}

unint64_t sub_1C8F26688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A030;
  if (!qword_1EC31A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A030);
  }

  return result;
}

uint64_t sub_1C8F26708(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8F26768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60DB8;
  if (!qword_1EDA60DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DB8);
  }

  return result;
}

uint64_t sub_1C8F26810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701603686 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8F26944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F26810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26E38(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F269A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26E38(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F269E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26EE0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F26A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26EE0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F26A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26E8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F26A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26E8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F26AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26F34(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F26B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F26F34(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentationConfiguration.ImageRepresentation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A038, &qword_1C90A8290);
  OUTLINED_FUNCTION_11();
  v38 = v4;
  v39 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v31 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A040, &qword_1C90A8298);
  OUTLINED_FUNCTION_11();
  v35 = v8;
  v36 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v31 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A048, &qword_1C90A82A0);
  OUTLINED_FUNCTION_11();
  v32 = v12;
  v33 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A050, &qword_1C90A82A8);
  OUTLINED_FUNCTION_11();
  v18 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = *v0;
  v23 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8F26E38(v23, v24, v25);
  v26 = sub_1C9064E1C();
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1C8F26EE0(v26, v27, v28);
      v15 = v34;
      OUTLINED_FUNCTION_2_66(&type metadata for DisplayRepresentationConfiguration.ImageRepresentation.DataCodingKeys);
      v30 = v35;
      v29 = v36;
    }

    else
    {
      sub_1C8F26E8C(v26, v27, v28);
      v15 = v37;
      OUTLINED_FUNCTION_2_66(&type metadata for DisplayRepresentationConfiguration.ImageRepresentation.FileCodingKeys);
      v30 = v38;
      v29 = v39;
    }
  }

  else
  {
    sub_1C8F26F34(v26, v27, v28);
    OUTLINED_FUNCTION_2_66(&type metadata for DisplayRepresentationConfiguration.ImageRepresentation.NoneCodingKeys);
    v30 = v32;
    v29 = v33;
  }

  (*(v30 + 8))(v15, v29);
  (*(v18 + 8))(v21, v16);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8F26E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F00;
  if (!qword_1EDA62F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F00);
  }

  return result;
}

unint64_t sub_1C8F26E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A058;
  if (!qword_1EC31A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A058);
  }

  return result;
}

unint64_t sub_1C8F26EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EE8;
  if (!qword_1EDA62EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EE8);
  }

  return result;
}

unint64_t sub_1C8F26F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A060;
  if (!qword_1EC31A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A060);
  }

  return result;
}

void DisplayRepresentationConfiguration.ImageRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_196();
  a23 = v26;
  a24 = v27;
  v93 = v24;
  v29 = v28;
  v88 = v30;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A068, &qword_1C90A82B0);
  OUTLINED_FUNCTION_11();
  v89 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v91 = &v80 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A070, &qword_1C90A82B8);
  OUTLINED_FUNCTION_11();
  v86 = v35;
  v87 = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v80 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A078, &qword_1C90A82C0);
  OUTLINED_FUNCTION_11();
  v85 = v40;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v80 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A080, &unk_1C90A82C8);
  OUTLINED_FUNCTION_11();
  v90 = v45;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_73();
  v47 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1C8F26E38(v47, v48, v49);
  v50 = v93;
  sub_1C9064DEC();
  if (v50)
  {
    goto LABEL_10;
  }

  v82 = v39;
  v83 = v43;
  v84 = v38;
  v52 = v91;
  v51 = v92;
  v93 = v29;
  v53 = sub_1C9064A9C();
  v57 = sub_1C8CB8914(v53, 0);
  if (v55 == v56 >> 1)
  {
    goto LABEL_9;
  }

  v81 = 0;
  if (v55 < (v56 >> 1))
  {
    LODWORD(v58) = *(v54 + v55);
    sub_1C8CB891C(v55 + 1, v56 >> 1, v57, v54, v55, v56);
    v60 = v59;
    v62 = v61;
    v63 = swift_unknownObjectRelease();
    v66 = v60 == v62 >> 1;
    v67 = v89;
    if (v66)
    {
      if (v58)
      {
        if (v58 == 1)
        {
          a13 = 1;
          sub_1C8F26EE0(v63, v64, v65);
          v68 = v84;
          OUTLINED_FUNCTION_74(&type metadata for DisplayRepresentationConfiguration.ImageRepresentation.DataCodingKeys, &a13);
          v69 = v88;
          v70 = v44;
          v71 = v90;
          swift_unknownObjectRelease();
          (*(v86 + 8))(v68, v87);
          (*(v71 + 8))(v25, v70);
        }

        else
        {
          LODWORD(v87) = v58;
          a14 = 2;
          sub_1C8F26E8C(v63, v64, v65);
          v76 = v81;
          sub_1C906498C();
          v69 = v88;
          v58 = v44;
          v77 = v90;
          if (v76)
          {
            (*(v90 + 8))(v25, v58);
            swift_unknownObjectRelease();
            v29 = v93;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v67 + 8))(v52, v51);
          (*(v77 + 8))(v25, v58);
          LOBYTE(v58) = v87;
        }
      }

      else
      {
        a12 = 0;
        sub_1C8F26F34(v63, v64, v65);
        v75 = v83;
        OUTLINED_FUNCTION_74(&type metadata for DisplayRepresentationConfiguration.ImageRepresentation.NoneCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v85 + 8))(v75, v82);
        v78 = OUTLINED_FUNCTION_41();
        v79(v78);
        v69 = v88;
      }

      *v69 = v58;
      __swift_destroy_boxed_opaque_existential_1(v93);
      goto LABEL_11;
    }

LABEL_9:
    v72 = sub_1C90647DC();
    swift_allocError();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v74 = &type metadata for DisplayRepresentationConfiguration.ImageRepresentation;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x1E69E6AF8], v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v90 + 8))(v25, v44);
    v29 = v93;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v29);
LABEL_11:
    OUTLINED_FUNCTION_198();
    return;
  }

  __break(1u);
}

uint64_t sub_1C8F275AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001C90CCE40 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8F2764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F275AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8F27678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F27988(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F276B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F27988(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void DisplayRepresentationConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A088, &qword_1C90A82D8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_73();
  v7 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8F27988(v7, v8, v9);
  v10 = sub_1C9064E1C();
  sub_1C8F279DC(v10, v11, v12);
  sub_1C9064B8C();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_198();
}

void DisplayRepresentationConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A090, &qword_1C90A82E0);
  OUTLINED_FUNCTION_11();
  v21 = v20;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_73();
  v23 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1C8F27988(v23, v24, v25);
  v26 = sub_1C9064DEC();
  if (!v13)
  {
    sub_1C8F27A30(v26, v27, v28);
    sub_1C9064A6C();
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8F27988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EB0;
  if (!qword_1EDA62EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EB0);
  }

  return result;
}

unint64_t sub_1C8F279DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605E8[0];
  if (!qword_1EDA605E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA605E8);
  }

  return result;
}

unint64_t sub_1C8F27A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA605E0;
  if (!qword_1EDA605E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605E0);
  }

  return result;
}

unint64_t sub_1C8F27A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A098;
  if (!qword_1EC31A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A098);
  }

  return result;
}

unint64_t sub_1C8F27AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A0A0;
  if (!qword_1EC31A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisplayRepresentationConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C8F27C00(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F27D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A0A8;
  if (!qword_1EC31A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0A8);
  }

  return result;
}

unint64_t sub_1C8F27D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A0B0;
  if (!qword_1EC31A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0B0);
  }

  return result;
}

unint64_t sub_1C8F27DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EA0;
  if (!qword_1EDA62EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EA0);
  }

  return result;
}

unint64_t sub_1C8F27E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EA8;
  if (!qword_1EDA62EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EA8);
  }

  return result;
}

unint64_t sub_1C8F27E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EB8;
  if (!qword_1EDA62EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EB8);
  }

  return result;
}

unint64_t sub_1C8F27EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EC0;
  if (!qword_1EDA62EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EC0);
  }

  return result;
}

unint64_t sub_1C8F27F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62ED8;
  if (!qword_1EDA62ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62ED8);
  }

  return result;
}

unint64_t sub_1C8F27F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EE0;
  if (!qword_1EDA62EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EE0);
  }

  return result;
}

unint64_t sub_1C8F27FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EC8;
  if (!qword_1EDA62EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EC8);
  }

  return result;
}

unint64_t sub_1C8F28028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62ED0;
  if (!qword_1EDA62ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62ED0);
  }

  return result;
}

unint64_t sub_1C8F28080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EF0;
  if (!qword_1EDA62EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EF0);
  }

  return result;
}

unint64_t sub_1C8F280D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62EF8;
  if (!qword_1EDA62EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62EF8);
  }

  return result;
}

ToolKit::TriggerFlag __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TriggerFlag.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  v3 = v1;
  v4 = *(protobuf._rawValue + 2);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C8D0979C(0, v4, 0);
    v5 = 32;
    v6 = v16;
    do
    {
      v7 = qword_1C90A89D8[*(protobuf._rawValue + v5)];
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C8D0979C(v8 > 1, v9 + 1, 1);
      }

      *(v16 + 16) = v9 + 1;
      *(v16 + 8 * v9 + 32) = v7;
      ++v5;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v6 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v6 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if ((v14 & ~v11) == 0)
      {
        v13 = 0;
      }

      v11 |= v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  *v3 = v11;
  return result;
}

uint64_t TriggerFlag.protobuf(useCase:)()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(&unk_1F489B938 + v1 + 32);
    v5 = (v4 & ~v2) != 0 || v4 >= 5;
    if (!v5 && ((0x17u >> v4) & 1) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D01A54(0, *(v3 + 16) + 1, 1, v3);
        v3 = v8;
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C8D01A54(v6 > 1, v7 + 1, 1, v3);
        v3 = v9;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + v7 + 32) = 0x300020100uLL >> (8 * v4);
    }

    v1 += 8;
  }

  while (v1 != 24);
  return v3;
}

uint64_t sub_1C8F283BC@<X0>(uint64_t *a1@<X8>)
{
  result = TriggerFlag.protobuf(useCase:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TriggerDefinition.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = a1[1];
  v40 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  v11 = a1[7];
  v10 = a1[8];
  sub_1C8F06C40(v12, v13, v14);

  v15 = sub_1C90641EC();
  if (v2)
  {
    sub_1C8F288FC(a1);
  }

  else
  {
    v16 = v15;
    v37 = v7;
    v38 = v9;
    v35 = v11;
    v36 = v8;
    v39 = v10;
    v17 = v41;
    v18 = type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
    v19 = sub_1C8D774FC(a1 + *(v18 + 40), v6);
    sub_1C8D1FD40(v19, v20, v21);
    v22 = sub_1C906351C();
    v24 = v43;
    sub_1C8D1FC54(v22, v25, v26);

    v27 = sub_1C90641EC();
    v28 = v38;
    v29 = v39;
    v30 = v37;
    v31 = v27;

    TriggerFlag.init(protobuf:)(v32);
    result = sub_1C8F288FC(a1);
    v33 = v42;
    *v17 = v40;
    v17[1] = v30;
    v34 = v35;
    v17[2] = v36;
    v17[3] = v28;
    v17[4] = v34;
    v17[5] = v29;
    v17[6] = v16;
    v17[7] = v31;
    v17[8] = v24;
    v17[9] = v33;
  }

  return result;
}

uint64_t TriggerDefinition.protobuf(useCase:)@<X0>(void *a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v35 - v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[5];
  v39 = v2[4];
  v40 = v8;
  v11 = v2[7];
  v42 = v6;
  v43 = v11;
  v12 = v2[8];
  v13 = v2[9];
  v14 = v10;
  sub_1C8F06DE4(v15, v16, v17);

  v18 = sub_1C90641FC();
  if (v3)
  {
  }

  else
  {
    v20 = v18;
    v35 = v13;
    v36 = v7;
    v37 = v9;
    v38 = v14;
    v45 = v12;

    v21 = v44;
    TypeInstance.protobuf(useCase:)();

    v22 = type metadata accessor for ToolKitProtoTypeInstance(0);
    v23 = __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    sub_1C8D531CC(v23, v24, v25);
    v26 = sub_1C90641FC();
    v28 = v36;
    v27 = v37;
    v29 = v26;
    v45 = v35;
    v35 = v22;
    v43 = TriggerFlag.protobuf(useCase:)();
    v30 = *(type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0) + 40);
    v31 = v41;
    __swift_storeEnumTagSinglePayload(v41 + v30, 1, 1, v35);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v31 = v42;
    v31[1] = v28;
    v32 = v39;
    v31[2] = v40;
    v31[3] = v27;
    v33 = v38;
    v31[7] = v32;
    v31[8] = v33;
    v31[4] = v20;
    result = sub_1C8D7732C(v21, v31 + v30);
    v34 = v43;
    v31[5] = v29;
    v31[6] = v34;
  }

  return result;
}

uint64_t sub_1C8F288FC(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoTriggerDefinition.Version1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8F28958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8F289C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A0B8;
  if (!qword_1EC31A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0B8);
  }

  return result;
}

unint64_t sub_1C8F28A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A0C0;
  if (!qword_1EC31A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtobufConstants(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7ToolKit35ContainerMetadataLocalizationRecordVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C8F28B4C@<D0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  if (*(a1 + 104))
  {
    v9 = *(a1 + 112);
    v8 = *(a1 + 120);
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v15 = *(a1 + 64);
  v14 = *(a1 + 72);
  v16 = *(a1 + 80);
  v35 = *(a1 + 81);
  v17 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v36 = *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v36 = 0;
  }

  v18 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v37 = v14;
  }

  else
  {
    v15 = 0;
    v37 = 0;
  }

  v40 = *(a1 + 16);
  v20 = *(a1 + 128);
  v38 = v12;
  if (v20)
  {
    v34 = v11;
    v21 = *(v20 + 16);
    if (v21)
    {
      v30 = v13;
      v31 = v16;
      v32 = v9;
      v33 = v8;
      sub_1C8F294A4(&v40, v39);
      v39[0] = MEMORY[0x1E69E7CC0];
      sub_1C8CA6480();
      v22 = v39[0];
      v23 = (v20 + 64);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v39[0] = v22;
        v26 = *(v22 + 16);
        v27 = *(v22 + 24);

        if (v26 >= v27 >> 1)
        {
          sub_1C8CA6480();
          v22 = v39[0];
        }

        *(v22 + 16) = v26 + 1;
        v28 = v22 + 16 * v26;
        *(v28 + 32) = v24;
        *(v28 + 40) = v25;
        v23 += 6;
        --v21;
      }

      while (v21);
      sub_1C8D501D4(a1);
      v9 = v32;
      v8 = v33;
      v16 = v31;
      v13 = v30;
    }

    else
    {
      sub_1C8F294A4(&v40, v39);
      sub_1C8D501D4(a1);
      v22 = MEMORY[0x1E69E7CC0];
    }

    v11 = v34;
  }

  else
  {
    sub_1C8F294A4(&v40, v39);
    sub_1C8D501D4(a1);
    v22 = MEMORY[0x1E69E7CC0];
  }

  *a6 = v9;
  *(a6 + 8) = v8;
  *(a6 + 16) = v22;
  result = *&v40;
  *(a6 + 24) = v40;
  *(a6 + 40) = v11;
  *(a6 + 48) = v36;
  *(a6 + 56) = v35;
  *(a6 + 64) = v13;
  *(a6 + 72) = v38;
  *(a6 + 80) = v15;
  *(a6 + 88) = v37;
  *(a6 + 96) = v16;
  return result;
}

uint64_t sub_1C8F28D90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90CCE60 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8F28EAC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x617A696C61636F6CLL;
  }

  return 0x736D796E6F6E7973;
}

void *sub_1C8F28F10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0C8, &qword_1C90A8B50);
  MEMORY[0x1EEE9AC00](v23);
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F29388(v5, v6, v7);
  v8 = sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __dst[111] = 0;
  sub_1C8E2A994(v8, v9, v10);
  OUTLINED_FUNCTION_1_71();
  sub_1C9064A6C();
  v11 = memcpy(__dst, v27, 0x52uLL);
  LOBYTE(v24[0]) = 1;
  sub_1C8DDD798(v11, v12, v13);
  OUTLINED_FUNCTION_1_71();
  sub_1C90649EC();
  v14 = v25[1];
  v19 = v25[2];
  v20 = v25[3];
  v21 = v25[4];
  v22 = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0D0, &qword_1C90A8B58);
  __dst[110] = 2;
  sub_1C8F29420();
  sub_1C90649EC();
  v15 = OUTLINED_FUNCTION_0_2();
  v16(v15);
  v17 = v26;
  memcpy(v24, __dst, 0x58uLL);
  v24[11] = v22;
  v24[12] = v14;
  v24[13] = v19;
  v24[14] = v20;
  v24[15] = v21;
  v24[16] = v26;
  sub_1C8D50178(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v25, __dst, 0x58uLL);
  v25[11] = v22;
  v25[12] = v14;
  v25[13] = v19;
  v25[14] = v20;
  v25[15] = v21;
  v25[16] = v17;
  sub_1C8D501D4(v25);
  return memcpy(a2, v24, 0x88uLL);
}

uint64_t sub_1C8F29238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F28D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F29260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F29388(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F29388(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void *sub_1C8F292D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8F28F10(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x88uLL);
  }

  return result;
}

uint64_t sub_1C8F29324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D80AB8(a1, a2, a3);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C8F29388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695E8;
  if (!qword_1EDA695E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695E8);
  }

  return result;
}

uint64_t sub_1C8F293DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C8F29420()
{
  result = qword_1EDA69470;
  if (!qword_1EDA69470)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC31A0D0, &qword_1C90A8B58);
    sub_1C8EFEE10(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69470);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedContainerMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F295E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A0D8;
  if (!qword_1EC31A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A0D8);
  }

  return result;
}

unint64_t sub_1C8F29638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695D8;
  if (!qword_1EDA695D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695D8);
  }

  return result;
}

unint64_t sub_1C8F29690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA695E0;
  if (!qword_1EDA695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695E0);
  }

  return result;
}

uint64_t sub_1C8F296E4(char a1)
{
  v2 = 0xE300000000000000;
  v3 = 5459817;
  switch(a1)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x534F64615069;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x534F63616DLL;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x534F6863746177;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1397716596;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v3 = 0x534F6E6F69736976;
      break;
    case 6:
      v2 = 0xEF79726F73736563;
      v3 = 0x6341206F69647541;
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA81A90](v3, v2);
}

uint64_t RuntimeDeviceCapability.isSatisfied.getter()
{
  switch(*(v0 + 8))
  {
    case 0:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1038];
      goto LABEL_10;
    case 1:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1040];
      goto LABEL_10;
    case 2:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1020];
      goto LABEL_10;
    case 3:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1018];
      goto LABEL_10;
    case 4:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1050];
      goto LABEL_10;
    case 5:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1048];
      goto LABEL_10;
    case 6:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1010];
      goto LABEL_10;
    case 7:
      v1 = [objc_opt_self() currentDevice];
      v2 = v1;
      v3 = MEMORY[0x1E69E1058];
LABEL_10:
      v4 = [v1 hasCapability_];

      break;
    default:
      v6 = *(v0 + 16);
      v7 = sub_1C9063EBC();
      v8 = MGIsQuestionValid();

      if (v8)
      {
        v9 = sub_1C9063EBC();
        v10 = MGGetBoolAnswer();

        v4 = v10 ^ v6 ^ 1;
      }

      else
      {
        v4 = 0;
      }

      break;
  }

  return v4 & 1;
}

uint64_t static RuntimeDeviceCapability.== infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a2[1];
  v10 = *(a2 + 16);
  switch(v7)
  {
    case 0uLL:
      if (v9)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 0);
      v12 = 0;
      goto LABEL_18;
    case 1uLL:
      if (v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 1;
      v14 = OUTLINED_FUNCTION_13_31(*a1, 1uLL);
      sub_1C8F29C58(v14, 1uLL);
      return v13 & 1;
    case 2uLL:
      if (v9 != 2)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 2uLL);
      v12 = 2;
      goto LABEL_18;
    case 3uLL:
      if (v9 != 3)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 3uLL);
      v12 = 3;
      goto LABEL_18;
    case 4uLL:
      if (v9 != 4)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 4uLL);
      v12 = 4;
      goto LABEL_18;
    case 5uLL:
      if (v9 != 5)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 5uLL);
      v12 = 5;
      goto LABEL_18;
    case 6uLL:
      if (v9 != 6)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 6uLL);
      v12 = 6;
      goto LABEL_18;
    case 7uLL:
      if (v9 != 7)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_13_31(*a1, 7uLL);
      v12 = 7;
LABEL_18:
      sub_1C8F29C58(v11, v12);
      v13 = 1;
      return v13 & 1;
    default:
      if (v9 < 8)
      {
LABEL_20:
        v15 = OUTLINED_FUNCTION_30_25();
        sub_1C8D07280(v15, v16, v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_11_35();
        sub_1C8D07280(v21, v22, v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_11_35();
        sub_1C8F29C58(v27, v28);
        v29 = OUTLINED_FUNCTION_30_25();
        sub_1C8F29C58(v29, v30);
        v13 = 0;
        return v13 & 1;
      }

      v32 = *a1;
      if (v6 == *a2 && v7 == v9)
      {
        sub_1C8D07280(v32, v7, v10, a4, a5, a6);
        v51 = OUTLINED_FUNCTION_11_35();
        sub_1C8D07280(v51, v52, v53, v54, v55, v56);
        v57 = OUTLINED_FUNCTION_11_35();
        sub_1C8F29C58(v57, v58);
        sub_1C8F29C58(v6, v7);
      }

      else
      {
        v34 = sub_1C9064C2C();
        v35 = OUTLINED_FUNCTION_30_25();
        sub_1C8D07280(v35, v36, v37, v38, v39, v40);
        v41 = OUTLINED_FUNCTION_11_35();
        sub_1C8D07280(v41, v42, v43, v44, v45, v46);
        v47 = OUTLINED_FUNCTION_11_35();
        sub_1C8F29C58(v47, v48);
        v49 = OUTLINED_FUNCTION_30_25();
        sub_1C8F29C58(v49, v50);
        v13 = 0;
        if ((v34 & 1) == 0)
        {
          return v13 & 1;
        }
      }

      v13 = v10 ^ v8 ^ 1;
      return v13 & 1;
  }
}

uint64_t sub_1C8F29C58(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_1C8F29C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6547656C69626F6DLL && a2 == 0xED0000746C617473;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F73726570 && a2 == 0xEF746F7073746F48;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73726574736F70 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C90CD030 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72616C756C6C6563 && a2 == 0xEC00000061746144;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E614D6567617473 && a2 == 0xEC00000072656761;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001C90CD050 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E4F737961776C61 && a2 == 0xEF79616C70736944;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6F69746172626976 && a2 == 0xE90000000000006ELL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

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

unint64_t sub_1C8F29F60(char a1)
{
  result = 0x6547656C69626F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6F73726570;
      break;
    case 2:
      result = 0x73726574736F70;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x72616C756C6C6563;
      break;
    case 5:
      result = 0x6E614D6567617473;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6E4F737961776C61;
      break;
    case 8:
      result = 0x6F69746172626976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F2A0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2ADB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2ADB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AEB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AEB4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AF08(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AF08(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F29C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2A238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AD10(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AD10(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2B004(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2B004(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AFB0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AFB0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AF5C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AF5C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AE0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AE0C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AE60(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AE60(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2A508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AD64(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F2AD64(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RuntimeDeviceCapability.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v90 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0E0, &qword_1C90A8C80);
  OUTLINED_FUNCTION_11();
  v86 = v6;
  v87 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v85 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0E8, &qword_1C90A8C88);
  OUTLINED_FUNCTION_11();
  v83 = v10;
  v84 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  v82 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0F0, &qword_1C90A8C90);
  OUTLINED_FUNCTION_11();
  v80 = v14;
  v81 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v79 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A0F8, &qword_1C90A8C98);
  OUTLINED_FUNCTION_11();
  v77 = v18;
  v78 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v76 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A100, &qword_1C90A8CA0);
  OUTLINED_FUNCTION_11();
  v74 = v22;
  v75 = v21;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_97();
  v73 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A108, &qword_1C90A8CA8);
  OUTLINED_FUNCTION_11();
  v71 = v26;
  v72 = v25;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v28);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A110, &qword_1C90A8CB0);
  OUTLINED_FUNCTION_11();
  v69 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A118, &qword_1C90A8CB8);
  OUTLINED_FUNCTION_11();
  v67 = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v64 - v35;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A120, &qword_1C90A8CC0);
  OUTLINED_FUNCTION_11();
  v65 = v37;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A128, &qword_1C90A8CC8);
  OUTLINED_FUNCTION_11();
  v88 = v39;
  v89 = v40;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v42 = v0[1];
  v64 = *v0;
  v43 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8F2AD10(v43, v44, v45);
  v46 = sub_1C9064E1C();
  switch(v42)
  {
    case 0:
      sub_1C8F2AFB0(v46, v47, v48);
      v49 = v88;
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v50(v36, v32);
      v51 = OUTLINED_FUNCTION_184_3();
      v53 = v49;
      goto LABEL_12;
    case 1:
      sub_1C8F2AF5C(v46, v47, v48);
      v54 = v68;
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.PostersCodingKeys);
      OUTLINED_FUNCTION_9_37();
      v56 = v54;
      v57 = v70;
      goto LABEL_11;
    case 2:
      sub_1C8F2AF08(v46, v47, v48);
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.CellularTelephonyCodingKeys);
      goto LABEL_10;
    case 3:
      sub_1C8F2AEB4(v46, v47, v48);
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.CellularDataCodingKeys);
      goto LABEL_10;
    case 4:
      sub_1C8F2AE60(v46, v47, v48);
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.StageManagerCodingKeys);
      goto LABEL_10;
    case 5:
      sub_1C8F2AE0C(v46, v47, v48);
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.RemovingBackgroundsCodingKeys);
      goto LABEL_10;
    case 6:
      sub_1C8F2ADB8(v46, v47, v48);
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.AlwaysOnDisplayCodingKeys);
      goto LABEL_10;
    case 7:
      sub_1C8F2AD64(v46, v47, v48);
      OUTLINED_FUNCTION_3_54(&type metadata for RuntimeDeviceCapability.VibrationCodingKeys);
LABEL_10:
      v56 = OUTLINED_FUNCTION_30();
LABEL_11:
      v55(v56, v57);
      v51 = OUTLINED_FUNCTION_184_3();
      v53 = v36;
LABEL_12:
      v52(v51, v53);
      break;
    default:
      v58 = v65;
      v93 = 0;
      sub_1C8F2B004(v46, v47, v48);
      v59 = v88;
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      v92 = 0;
      v60 = v66;
      v61 = v90;
      sub_1C9064B2C();
      if (!v61)
      {
        v91 = 1;
        sub_1C9064B3C();
      }

      (*(v58 + 8))(v2, v60);
      v62 = OUTLINED_FUNCTION_184_3();
      v63(v62, v59);
      break;
  }

  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8F2AD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69618;
  if (!qword_1EDA69618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69618);
  }

  return result;
}

unint64_t sub_1C8F2AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A130;
  if (!qword_1EC31A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A130);
  }

  return result;
}

unint64_t sub_1C8F2ADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A138;
  if (!qword_1EC31A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A138);
  }

  return result;
}

unint64_t sub_1C8F2AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A140;
  if (!qword_1EC31A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A140);
  }

  return result;
}

unint64_t sub_1C8F2AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A148;
  if (!qword_1EC31A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A148);
  }

  return result;
}

unint64_t sub_1C8F2AEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A150;
  if (!qword_1EC31A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A150);
  }

  return result;
}

unint64_t sub_1C8F2AF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A158;
  if (!qword_1EC31A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A158);
  }

  return result;
}

unint64_t sub_1C8F2AF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A160;
  if (!qword_1EC31A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A160);
  }

  return result;
}

unint64_t sub_1C8F2AFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A168;
  if (!qword_1EC31A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A168);
  }

  return result;
}

unint64_t sub_1C8F2B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69600;
  if (!qword_1EDA69600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69600);
  }

  return result;
}

uint64_t RuntimeDeviceCapability.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 1;
      goto LABEL_10;
    case 1:
      v2 = 2;
      goto LABEL_10;
    case 2:
      v2 = 3;
      goto LABEL_10;
    case 3:
      v2 = 4;
      goto LABEL_10;
    case 4:
      v2 = 5;
      goto LABEL_10;
    case 5:
      v2 = 6;
      goto LABEL_10;
    case 6:
      v2 = 7;
      goto LABEL_10;
    case 7:
      v2 = 8;
LABEL_10:
      result = MEMORY[0x1CCA82810](v2);
      break;
    default:
      MEMORY[0x1CCA82810](0);
      sub_1C9063FBC();
      result = sub_1C9064D9C();
      break;
  }

  return result;
}

uint64_t RuntimeDeviceCapability.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_298();
  switch(v1)
  {
    case 0:
      v2 = 1;
      goto LABEL_10;
    case 1:
      v2 = 2;
      goto LABEL_10;
    case 2:
      v2 = 3;
      goto LABEL_10;
    case 3:
      v2 = 4;
      goto LABEL_10;
    case 4:
      v2 = 5;
      goto LABEL_10;
    case 5:
      v2 = 6;
      goto LABEL_10;
    case 6:
      v2 = 7;
      goto LABEL_10;
    case 7:
      v2 = 8;
LABEL_10:
      MEMORY[0x1CCA82810](v2);
      break;
    default:
      MEMORY[0x1CCA82810](0);
      sub_1C9063FBC();
      sub_1C9064D9C();
      break;
  }

  return sub_1C9064DBC();
}

void RuntimeDeviceCapability.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_196();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v116 = v33;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A170, &qword_1C90A8CD0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A178, &qword_1C90A8CD8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A180, &qword_1C90A8CE0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A188, &qword_1C90A8CE8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A190, &qword_1C90A8CF0);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A198, &qword_1C90A8CF8);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v114 = v40;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1A0, &qword_1C90A8D00);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v113 = v42;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1A8, &qword_1C90A8D08);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_233();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1B0, &qword_1C90A8D10);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1B8, &unk_1C90A8D18);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_86();
  v118 = v32;
  v46 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1C8F2AD10(v46, v47, v48);
  sub_1C9064DEC();
  if (v27)
  {
    goto LABEL_8;
  }

  v49 = sub_1C9064A9C();
  v50 = sub_1C8CB8914(v49, 0);
  if (v52 == v51 >> 1)
  {
LABEL_7:
    sub_1C90647DC();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v68 = &type metadata for RuntimeDeviceCapability;
    v69 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v69);
    OUTLINED_FUNCTION_42_13();
    (*(v70 + 104))(v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = OUTLINED_FUNCTION_1_72();
    v72(v71);
LABEL_8:
    v73 = v118;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_198();
    return;
  }

  OUTLINED_FUNCTION_119_0();
  if (v57 < (v53 >> 1))
  {
    v58 = *(v56 + v54);
    v59 = sub_1C8CB891C(v54 + 1, v53 >> 1, v50, v56, v54, v55);
    v61 = v60;
    v63 = v62;
    v64 = swift_unknownObjectRelease();
    if (v61 == v63 >> 1)
    {
      switch(v58)
      {
        case 1:
          a10 = 1;
          sub_1C8F2AFB0(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.PersonalHotspotCodingKeys, &a10);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v88(v28, v110);
          v89 = OUTLINED_FUNCTION_1_72();
          v90(v89);
          v59 = 0;
          v104 = 0;
          v109 = 0;
          break;
        case 2:
          a11 = 2;
          sub_1C8F2AF5C(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.PostersCodingKeys, &a11);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v78(v113, v111);
          v79 = OUTLINED_FUNCTION_1_72();
          v80(v79);
          OUTLINED_FUNCTION_35_21();
          v104 = 1;
          break;
        case 3:
          a12 = 3;
          sub_1C8F2AF08(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.CellularTelephonyCodingKeys, &a12);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v81(v114, v112);
          v82 = OUTLINED_FUNCTION_1_72();
          v83(v82);
          OUTLINED_FUNCTION_35_21();
          v104 = 2;
          break;
        case 4:
          a13 = 4;
          sub_1C8F2AEB4(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.CellularDataCodingKeys, &a13);
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_30();
          v75(v74);
          v76 = OUTLINED_FUNCTION_1_72();
          v77(v76);
          OUTLINED_FUNCTION_35_21();
          v104 = 3;
          break;
        case 5:
          a14 = 5;
          sub_1C8F2AE60(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.StageManagerCodingKeys, &a14);
          swift_unknownObjectRelease();
          v91 = OUTLINED_FUNCTION_30();
          v92(v91);
          v93 = OUTLINED_FUNCTION_1_72();
          v94(v93);
          OUTLINED_FUNCTION_35_21();
          v104 = 4;
          break;
        case 6:
          a15 = 6;
          sub_1C8F2AE0C(v64, v65, v66);
          OUTLINED_FUNCTION_6_42(&type metadata for RuntimeDeviceCapability.RemovingBackgroundsCodingKeys, &a15);
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_30();
          v96(v95);
          v97 = OUTLINED_FUNCTION_1_72();
          v98(v97);
          OUTLINED_FUNCTION_35_21();
          v104 = 5;
          break;
        case 7:
          a16 = 7;
          sub_1C8F2ADB8(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.AlwaysOnDisplayCodingKeys, &a16);
          swift_unknownObjectRelease();
          v84 = OUTLINED_FUNCTION_30();
          v85(v84);
          v86 = OUTLINED_FUNCTION_1_72();
          v87(v86);
          OUTLINED_FUNCTION_35_21();
          v104 = 6;
          break;
        case 8:
          a17 = 8;
          sub_1C8F2AD64(v64, v65, v66);
          OUTLINED_FUNCTION_6_42(&type metadata for RuntimeDeviceCapability.VibrationCodingKeys, &a17);
          swift_unknownObjectRelease();
          v99 = OUTLINED_FUNCTION_184_3();
          v100(v99, v115);
          v101 = OUTLINED_FUNCTION_1_72();
          v102(v101);
          OUTLINED_FUNCTION_35_21();
          v104 = 7;
          break;
        default:
          v119 = 0;
          sub_1C8F2B004(v64, v65, v66);
          OUTLINED_FUNCTION_4_52(&type metadata for RuntimeDeviceCapability.MobileGestaltCodingKeys, &v119);
          v59 = sub_1C9064A0C();
          v104 = v103;
          v117 = sub_1C9064A1C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9_37();
          v105 = OUTLINED_FUNCTION_276();
          v106(v105);
          v107 = OUTLINED_FUNCTION_43_18();
          v108(v107);
          v109 = v117 & 1;
          break;
      }

      v73 = v118;
      *v116 = v59;
      *(v116 + 8) = v104;
      *(v116 + 16) = v109;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C8F2BD60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1C9064D7C();
  RuntimeDeviceCapability.hash(into:)(v4);
  return sub_1C9064DBC();
}

uint64_t sub_1C8F2BDE4()
{
  v2 = sub_1C9063D3C();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_1C906336C();
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v3 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 216) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C8F2BF34, 0, 0);
}

uint64_t sub_1C8F2BF34()
{
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_24_0();
  switch(*(v0 + 216))
  {
    case 1:
      *(v0 + 96) = [objc_opt_self() standardClient];
      v19 = OUTLINED_FUNCTION_24_27();
      v20(v19);
      v21 = swift_task_alloc();
      *(v0 + 104) = v21;
      *v21 = v0;
      v21[1] = sub_1C8F2C320;
      goto LABEL_10;
    case 2:
      *(v0 + 120) = [objc_opt_self() standardClient];
      v13 = OUTLINED_FUNCTION_24_27();
      v14(v13);
      v15 = swift_task_alloc();
      *(v0 + 128) = v15;
      *v15 = v0;
      v15[1] = sub_1C8F2C4D0;
      goto LABEL_10;
    case 3:
      *(v0 + 144) = [objc_opt_self() standardClient];
      v16 = OUTLINED_FUNCTION_24_27();
      v17(v16);
      v18 = swift_task_alloc();
      *(v0 + 152) = v18;
      *v18 = v0;
      v18[1] = sub_1C8F2C680;
      goto LABEL_10;
    case 4:
      *(v0 + 168) = [objc_opt_self() standardClient];
      v10 = OUTLINED_FUNCTION_24_27();
      v11(v10);
      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_1C8F2C830;
      goto LABEL_10;
    case 5:
      *(v0 + 192) = [objc_opt_self() standardClient];
      v22 = OUTLINED_FUNCTION_24_27();
      v23(v22);
      v24 = swift_task_alloc();
      *(v0 + 200) = v24;
      *v24 = v0;
      v24[1] = sub_1C8F2C9E0;
LABEL_10:
      OUTLINED_FUNCTION_54_12();

      result = MEMORY[0x1EEE50578](v25, v26, v27, v28, v29, v30, v31, v32);
      break;
    default:
      VCIsDeviceLocked();

      OUTLINED_FUNCTION_54_12();

      result = v3(v1, v2, v3, v4, v5, v6, v7, v8);
      break;
  }

  return result;
}

uint64_t sub_1C8F2C320(uint64_t a1)
{
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *v4 = *v2;
  v3[14] = v1;

  OUTLINED_FUNCTION_50_15();
  v6 = *(v5 + 96);
  (*(v3[6] + 8))(v3[11], v3[5]);

  if (v1)
  {
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_54_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_24();

    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_54_12();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C8F2C4D0(uint64_t a1)
{
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *v4 = *v2;
  v3[17] = v1;

  OUTLINED_FUNCTION_50_15();
  v6 = *(v5 + 120);
  (*(v3[6] + 8))(v3[10], v3[5]);

  if (v1)
  {
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_54_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_24();

    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_54_12();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C8F2C680(uint64_t a1)
{
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *v4 = *v2;
  v3[20] = v1;

  OUTLINED_FUNCTION_50_15();
  v6 = *(v5 + 144);
  (*(v3[6] + 8))(v3[9], v3[5]);

  if (v1)
  {
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_54_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_24();

    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_54_12();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C8F2C830(uint64_t a1)
{
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *v4 = *v2;
  v3[23] = v1;

  OUTLINED_FUNCTION_50_15();
  v6 = *(v5 + 168);
  (*(v3[6] + 8))(v3[8], v3[5]);

  if (v1)
  {
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_54_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_24();

    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_54_12();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C8F2C9E0(uint64_t a1)
{
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *v4 = *v2;
  v3[26] = v1;

  OUTLINED_FUNCTION_50_15();
  v6 = *(v5 + 192);
  (*(v3[6] + 8))(v3[7], v3[5]);

  if (v1)
  {
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_54_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_24();

    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_54_12();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1C8F2CB90()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 112);
  sub_1C906371C();
  v2 = v1;
  v3 = sub_1C9063D1C();
  sub_1C906444C();
  OUTLINED_FUNCTION_60_12();
  if (OUTLINED_FUNCTION_58_10())
  {
    OUTLINED_FUNCTION_57_11();
    v4 = OUTLINED_FUNCTION_34_14();
    OUTLINED_FUNCTION_56_11(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_49_15(v5);
    OUTLINED_FUNCTION_18_30(&dword_1C8C9B000, v6, v7, "Failed to check device state RuntimeDeviceState.isSatisfied(): %@");
    sub_1C8D14208(v4, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_17();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_17_32();
  v9(v8);
  OUTLINED_FUNCTION_16_30();

  v10 = OUTLINED_FUNCTION_20_28();

  return v11(v10);
}

uint64_t sub_1C8F2CCDC()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 136);
  sub_1C906371C();
  v2 = v1;
  v3 = sub_1C9063D1C();
  sub_1C906444C();
  OUTLINED_FUNCTION_60_12();
  if (OUTLINED_FUNCTION_58_10())
  {
    OUTLINED_FUNCTION_57_11();
    v4 = OUTLINED_FUNCTION_34_14();
    OUTLINED_FUNCTION_56_11(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_49_15(v5);
    OUTLINED_FUNCTION_18_30(&dword_1C8C9B000, v6, v7, "Failed to check device state RuntimeDeviceState.isSatisfied(): %@");
    sub_1C8D14208(v4, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_17();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_17_32();
  v9(v8);
  OUTLINED_FUNCTION_16_30();

  v10 = OUTLINED_FUNCTION_20_28();

  return v11(v10);
}

uint64_t sub_1C8F2CE28()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 160);
  sub_1C906371C();
  v2 = v1;
  v3 = sub_1C9063D1C();
  sub_1C906444C();
  OUTLINED_FUNCTION_60_12();
  if (OUTLINED_FUNCTION_58_10())
  {
    OUTLINED_FUNCTION_57_11();
    v4 = OUTLINED_FUNCTION_34_14();
    OUTLINED_FUNCTION_56_11(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_49_15(v5);
    OUTLINED_FUNCTION_18_30(&dword_1C8C9B000, v6, v7, "Failed to check device state RuntimeDeviceState.isSatisfied(): %@");
    sub_1C8D14208(v4, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_17();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_17_32();
  v9(v8);
  OUTLINED_FUNCTION_16_30();

  v10 = OUTLINED_FUNCTION_20_28();

  return v11(v10);
}

uint64_t sub_1C8F2CF74()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 184);
  sub_1C906371C();
  v2 = v1;
  v3 = sub_1C9063D1C();
  sub_1C906444C();
  OUTLINED_FUNCTION_60_12();
  if (OUTLINED_FUNCTION_58_10())
  {
    OUTLINED_FUNCTION_57_11();
    v4 = OUTLINED_FUNCTION_34_14();
    OUTLINED_FUNCTION_56_11(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_49_15(v5);
    OUTLINED_FUNCTION_18_30(&dword_1C8C9B000, v6, v7, "Failed to check device state RuntimeDeviceState.isSatisfied(): %@");
    sub_1C8D14208(v4, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_17();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_17_32();
  v9(v8);
  OUTLINED_FUNCTION_16_30();

  v10 = OUTLINED_FUNCTION_20_28();

  return v11(v10);
}

uint64_t sub_1C8F2D0C0()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 208);
  sub_1C906371C();
  v2 = v1;
  v3 = sub_1C9063D1C();
  sub_1C906444C();
  OUTLINED_FUNCTION_60_12();
  if (OUTLINED_FUNCTION_58_10())
  {
    OUTLINED_FUNCTION_57_11();
    v4 = OUTLINED_FUNCTION_34_14();
    OUTLINED_FUNCTION_56_11(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_49_15(v5);
    OUTLINED_FUNCTION_18_30(&dword_1C8C9B000, v6, v7, "Failed to check device state RuntimeDeviceState.isSatisfied(): %@");
    sub_1C8D14208(v4, &qword_1EC312EC8, &qword_1C9071EA0);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_17();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_17_32();
  v9(v8);
  OUTLINED_FUNCTION_16_30();

  v10 = OUTLINED_FUNCTION_20_28();

  return v11(v10);
}

uint64_t sub_1C8F2D20C()
{
  v1 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0)
  {
    return VCIsDeviceLocked() ^ 1;
  }

  sub_1C906371C();
  v7 = sub_1C9063D1C();
  v8 = sub_1C906445C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C8C9B000, v7, v8, "Programming error: call into the RuntimeRequirement.isSatisfied() async function instead.", v9, 2u);
    MEMORY[0x1CCA833A0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v1);
  return 0;
}

uint64_t sub_1C8F2D370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656B636F6C6E75 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C90CCF10 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C90CCEF0 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C90CCED0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001C90CCEB0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000021 && 0x80000001C90CCE80 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

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

unint64_t sub_1C8F2D55C(char a1)
{
  result = 0x64656B636F6C6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F2D63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F2D370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2D664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30B24(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30B24(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2D6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30BCC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30BCC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2D754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30C20(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30C20(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2D7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30D1C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30D1C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2D844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30C74(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30C74(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2D8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30B78(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30B78(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2D934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30CC8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30CC8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RuntimeDeviceState.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1C0, &qword_1C90A8D28);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1C8, &qword_1C90A8D30);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1D0, &qword_1C90A8D38);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1D8, &qword_1C90A8D40);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1E0, &qword_1C90A8D48);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1E8, &qword_1C90A8D50);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A1F0, &qword_1C90A8D58);
  OUTLINED_FUNCTION_11();
  v9 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_233();
  v11 = *v0;
  v12 = OUTLINED_FUNCTION_246();
  v14 = __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1C8F30B24(v14, v15, v16);
  v17 = sub_1C9064E1C();
  switch(v11)
  {
    case 1:
      sub_1C8F30CC8(v17, v18, v19);
      v11 = v22;
      OUTLINED_FUNCTION_104_0();
      sub_1C9064ACC();
      v20 = OUTLINED_FUNCTION_184_3();
      goto LABEL_9;
    case 2:
      sub_1C8F30C74(v17, v18, v19);
      OUTLINED_FUNCTION_7_45(&type metadata for RuntimeDeviceState.UseModelAvailableCodingKeys);
      goto LABEL_8;
    case 3:
      sub_1C8F30C20(v17, v18, v19);
      OUTLINED_FUNCTION_7_45(&type metadata for RuntimeDeviceState.PhotosMemoriesAvailableCodingKeys);
      goto LABEL_8;
    case 4:
      sub_1C8F30BCC(v17, v18, v19);
      OUTLINED_FUNCTION_7_45(&type metadata for RuntimeDeviceState.ImagePlaygroundAvailableCodingKeys);
      goto LABEL_8;
    case 5:
      sub_1C8F30B78(v17, v18, v19);
      OUTLINED_FUNCTION_7_45(&type metadata for RuntimeDeviceState.VisualIntelligenceCameraAvailableCodingKeys);
      goto LABEL_8;
    default:
      sub_1C8F30D1C(v17, v18, v19);
      OUTLINED_FUNCTION_7_45(&type metadata for RuntimeDeviceState.UnlockedCodingKeys);
LABEL_8:
      v20 = OUTLINED_FUNCTION_30();
LABEL_9:
      v21(v20);
      (*(v9 + 8))(v1, v11);
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t RuntimeDeviceState.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void RuntimeDeviceState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_196();
  a25 = v29;
  a26 = v30;
  v126 = v26;
  v32 = v31;
  v122 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A220, &qword_1C90A8D60);
  OUTLINED_FUNCTION_11();
  v118 = v34;
  v119 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v120 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A228, &qword_1C90A8D68);
  OUTLINED_FUNCTION_11();
  v116 = v38;
  v117 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v125 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A230, &qword_1C90A8D70);
  OUTLINED_FUNCTION_11();
  v114 = v43;
  v115 = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v121 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A238, &qword_1C90A8D78);
  OUTLINED_FUNCTION_11();
  v112 = v47;
  v113 = v46;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v124 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A240, &qword_1C90A8D80);
  OUTLINED_FUNCTION_11();
  v110 = v51;
  v111 = v50;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v104 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A248, &qword_1C90A8D88);
  OUTLINED_FUNCTION_11();
  v109 = v56;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_110();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A250, &qword_1C90A8D90);
  OUTLINED_FUNCTION_11();
  v123 = v59;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_233();
  v61 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1C8F30B24(v61, v62, v63);
  v64 = v126;
  sub_1C9064DEC();
  v126 = v64;
  if (v64)
  {
LABEL_12:
    v94 = v32;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v94);
    OUTLINED_FUNCTION_198();
    return;
  }

  v105 = v28;
  v104 = v55;
  v106 = v54;
  v107 = v32;
  v65 = v124;
  v66 = v123;
  v108 = v27;
  v67 = sub_1C9064A9C();
  v68 = sub_1C8CB8914(v67, 0);
  v70 = v58;
  if (v71 == v69 >> 1)
  {
    v72 = v66;
LABEL_10:
    sub_1C90647DC();
    v88 = swift_allocError();
    v90 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v90 = &type metadata for RuntimeDeviceState;
    v91 = v108;
    v92 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v92);
    OUTLINED_FUNCTION_42_13();
    (*(v93 + 104))(v90);
    v126 = v88;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v72 + 8))(v91, v70);
LABEL_11:
    v32 = v107;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_119_0();
  if (v77 < (v73 >> 1))
  {
    v78 = *(v76 + v74);
    sub_1C8CB891C(v74 + 1, v73 >> 1, v68, v76, v74, v75);
    v80 = v79;
    v82 = v81;
    v83 = swift_unknownObjectRelease();
    if (v80 == v82 >> 1)
    {
      v86 = v122;
      switch(v78)
      {
        case 1:
          a12 = 1;
          sub_1C8F30CC8(v83, v84, v85);
          v65 = v106;
          OUTLINED_FUNCTION_19_29(&type metadata for RuntimeDeviceState.WritingToolsAvailableCodingKeys, &a12);
          v126 = 0;
          swift_unknownObjectRelease();
          v99 = v110;
          v97 = v111;
          goto LABEL_25;
        case 2:
          a13 = 2;
          sub_1C8F30C74(v83, v84, v85);
          OUTLINED_FUNCTION_19_29(&type metadata for RuntimeDeviceState.UseModelAvailableCodingKeys, &a13);
          v126 = 0;
          swift_unknownObjectRelease();
          v99 = v112;
          v97 = v113;
          goto LABEL_25;
        case 3:
          a14 = 3;
          sub_1C8F30C20(v83, v84, v85);
          v65 = v121;
          OUTLINED_FUNCTION_19_29(&type metadata for RuntimeDeviceState.PhotosMemoriesAvailableCodingKeys, &a14);
          v126 = 0;
          swift_unknownObjectRelease();
          v99 = v114;
          v97 = v115;
          goto LABEL_25;
        case 4:
          a15 = 4;
          sub_1C8F30BCC(v83, v84, v85);
          OUTLINED_FUNCTION_34();
          v95 = v126;
          sub_1C906498C();
          v126 = v95;
          if (v95)
          {
            v100 = OUTLINED_FUNCTION_276();
            v101(v100);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_184_3();
LABEL_26:
          v98(v96, v97);
LABEL_27:
          v102 = OUTLINED_FUNCTION_276();
          v103(v102);
          *v86 = v78;
          v94 = v107;
          break;
        case 5:
          a16 = 5;
          sub_1C8F30B78(v83, v84, v85);
          v65 = v120;
          OUTLINED_FUNCTION_19_29(&type metadata for RuntimeDeviceState.VisualIntelligenceCameraAvailableCodingKeys, &a16);
          v126 = 0;
          swift_unknownObjectRelease();
          v97 = v118;
          v99 = v119;
LABEL_25:
          v98 = *(v99 + 8);
          v96 = v65;
          goto LABEL_26;
        default:
          a11 = 0;
          sub_1C8F30D1C(v83, v84, v85);
          v87 = v105;
          OUTLINED_FUNCTION_19_29(&type metadata for RuntimeDeviceState.UnlockedCodingKeys, &a11);
          v126 = 0;
          swift_unknownObjectRelease();
          (*(v109 + 8))(v87, v104);
          goto LABEL_27;
      }

      goto LABEL_13;
    }

    v72 = v66;
    v70 = v58;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t RuntimeRequirement.isSatisfied()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = *(v0 + 32);
  *(v1 + 56) = *(v0 + 40);
  *(v1 + 72) = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 33);
  v7 = v0 + 33;
  *(v1 + 121) = v3;
  *(v1 + 48) = v8;
  *(v1 + 52) = *(v7 + 4);
  *(v1 + 54) = *(v7 + 6);
  *(v1 + 88) = v4;
  *(v1 + 104) = v5;
  *(v1 + 122) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1C8F2E66C, 0, 0);
}

uint64_t sub_1C8F2E66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(*(v5 + 80) >> 62)
  {
    case 1:
      v6 = RuntimeDeviceCapability.isSatisfied.getter();
      goto LABEL_8;
    case 2:
      v7 = *(v5 + 32);
      v8 = *(v5 + 40);
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      v11 = *(v5 + 121);

      v6 = sub_1C8F2EADC(v10, v9, v7, v8, v11 & 1);
      goto LABEL_8;
    case 3:
      *(v5 + 120) = *(v5 + 16);
      v12 = swift_task_alloc();
      *(v5 + 112) = v12;
      *v12 = v5;
      v12[1] = sub_1C8F2E828;

      return sub_1C8F2BDE4();
    default:
      v6 = RuntimeAvailabilityAnnotation.isSatisified.getter();
LABEL_8:
      v14 = *(v5 + 8);
      v15 = v6 & 1;

      return v14(v15);
  }
}

uint64_t sub_1C8F2E828(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t static RuntimeRequirement.featureFlagIsSatisfied(domain:feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;

  return sub_1C8F2EADC(a1, a2, a3, a4, v5) & 1;
}

uint64_t RuntimeRequirement.isSatisfied.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  switch(*(v5 + 64) >> 62)
  {
    case 1:
      v11 = RuntimeDeviceCapability.isSatisfied.getter();
      break;
    case 2:

      v11 = sub_1C8F2EADC(v6, v7, v8, v9, v10 & 1);
      break;
    case 3:
      v11 = sub_1C8F2D20C();
      break;
    default:
      v11 = RuntimeAvailabilityAnnotation.isSatisified.getter();
      break;
  }

  return v11 & 1;
}

uint64_t sub_1C8F2EAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, char a5@<W3>)
{
  result = sub_1C8F2EBB0(a2, a3, a1, a5);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C8F2EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = v10;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v6 = sub_1C8F2EBB0(a3, a4, v8, a5 & 1);

      return v6 & 1;
    }
  }

  sub_1C906477C();

  if (!v5)
  {
    v6 = v11;
  }

  return v6 & 1;
}

uint64_t sub_1C8F2EBB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v5 = toolkit_os_feature_enabled() ^ a4 ^ 1;
  }

  else
  {
    sub_1C906477C();
    if (!v4)
    {
      v5 = v7;
    }
  }

  return v5 & 1;
}

uint64_t RuntimeRequirement.description.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = v0[8];
  v6 = *(v0 + 96);
  switch(v5 >> 62)
  {
    case 1uLL:
      switch(v0[1])
      {
        case 0:
        case 6:
          OUTLINED_FUNCTION_2_67();
          result = v23 | 3;
          break;
        case 1:
          OUTLINED_FUNCTION_2_67();
          result = v21 - 5;
          break;
        case 2:
          result = 0xD00000000000001DLL;
          break;
        case 3:
          result = 0xD000000000000018;
          break;
        case 4:
          result = 0xD000000000000018;
          break;
        case 5:
          OUTLINED_FUNCTION_2_67();
          result = v22 | 7;
          break;
        case 7:
          goto LABEL_30;
        default:
          OUTLINED_FUNCTION_40_20();
          sub_1C906478C();

          OUTLINED_FUNCTION_66_12();
          MEMORY[0x1CCA81A90](8236, 0xE200000000000000);
          v8 = (v2 & 1) == 0;
          goto LABEL_5;
      }

      break;
    case 2uLL:
      OUTLINED_FUNCTION_40_20();
      sub_1C906478C();

      OUTLINED_FUNCTION_66_12();
      MEMORY[0x1CCA81A90](47, 0xE100000000000000);
      MEMORY[0x1CCA81A90](v2, v3);
      MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
      v8 = (v4 & 1) == 0;
LABEL_5:
      if (v8)
      {
        v9 = 0x65736C6166;
      }

      else
      {
        v9 = 1702195828;
      }

      if (v8)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      MEMORY[0x1CCA81A90](v9, v10);

      result = v24;
      break;
    case 3uLL:
      result = 0x64656B636F6C6E75;
      switch(*v0)
      {
        case 1u:
LABEL_30:
          OUTLINED_FUNCTION_2_67();
          result = v20 - 3;
          break;
        case 2u:
          OUTLINED_FUNCTION_2_67();
          result = v17 - 7;
          break;
        case 3u:
          OUTLINED_FUNCTION_2_67();
          result = v18 - 1;
          break;
        case 4u:
          result = 0xD000000000000018;
          break;
        case 5u:
          OUTLINED_FUNCTION_2_67();
          result = v19 + 9;
          break;
        default:
          return result;
      }

      break;
    default:
      OUTLINED_FUNCTION_40_20();
      sub_1C906478C();
      MEMORY[0x1CCA81A90](0x6D726F6674616C70, 0xEB0000000028203ALL);
      sub_1C8F296E4(v1);
      OUTLINED_FUNCTION_53_12();
      if (v4 == 2)
      {
        v7 = OUTLINED_FUNCTION_45_19();
      }

      else
      {
        v7 = RuntimePlatformVersion.stringValue.getter();
        v2 = v12;
      }

      MEMORY[0x1CCA81A90](v7, v2);

      OUTLINED_FUNCTION_53_12();
      if (v5 == 2)
      {
        v13 = OUTLINED_FUNCTION_45_19();
      }

      else
      {
        v13 = RuntimePlatformVersion.stringValue.getter();
        v2 = v14;
      }

      MEMORY[0x1CCA81A90](v13, v2);

      OUTLINED_FUNCTION_53_12();
      if (v6 == 2)
      {
        v15 = OUTLINED_FUNCTION_45_19();
      }

      else
      {
        v15 = RuntimePlatformVersion.stringValue.getter();
        v2 = v16;
      }

      MEMORY[0x1CCA81A90](v15, v2);

      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      result = v24;
      break;
  }

  return result;
}

uint64_t static RuntimeRequirement.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v103, a2, 0x61uLL);
  memcpy(v104, __src, 0x61uLL);
  v4 = memcpy(v105, a2, sizeof(v105));
  v11 = *&__dst[8];
  v12 = __dst[0];
  v13 = *&__dst[16];
  v14 = *&__dst[24];
  v15 = __dst[32];
  switch(*&__dst[64] >> 62)
  {
    case 1:
      if (*&v103[4] >> 62 != 1)
      {
        sub_1C8D07280(*__dst, *&__dst[8], *&__dst[16], v6, v7, v8);
        goto LABEL_22;
      }

      LOBYTE(v80) = __dst[16];
      LOBYTE(v90) = v103[1];
      v41 = OUTLINED_FUNCTION_55_12(v4, *&__dst[8], v5, v6, v7, v8, v9, v10, *__dst, *&__dst[8], v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, *&v103[0], *(&v103[0] + 1), v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
      v49 = OUTLINED_FUNCTION_67_10(v41, v42, v43, v44, v45, v46, v47, v48, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
      v57 = OUTLINED_FUNCTION_55_12(v49, v50, v51, v52, v53, v54, v55, v56, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
      OUTLINED_FUNCTION_67_10(v57, v58, v59, v60, v61, v62, v63, v64, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
      v16 = static RuntimeDeviceCapability.== infix(_:_:)(&v79, &v88, v65, v66, v67, v68);
      sub_1C8D14208(v104, &qword_1EC31A258, &qword_1C90A8DA8);
      sub_1C8D0722C(v103);
      sub_1C8D0722C(__dst);
      return v16 & 1;
    case 2:
      if (*&v103[4] >> 62 != 2)
      {

        goto LABEL_22;
      }

      v18 = *(&v103[0] + 1);
      v17 = *&v103[0];
      v19 = v103[1];
      v20 = v103[2];
      if (*__dst != *&v103[0] || *&__dst[8] != *(&v103[0] + 1))
      {
        v4 = sub_1C9064C2C();
        if ((v4 & 1) == 0)
        {
          OUTLINED_FUNCTION_55_12(v4, v11, v17, v18, v7, v8, v9, v10, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
          v69 = __dst;
          goto LABEL_23;
        }
      }

      if (v13 == v19 && v14 == *(&v19 + 1))
      {
        v71 = OUTLINED_FUNCTION_55_12(v4, v11, v17, v18, v7, v8, v9, v10, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
        OUTLINED_FUNCTION_67_10(v71, v72, v73, v74, v75, v76, v77, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
        sub_1C8D14208(v104, &qword_1EC31A258, &qword_1C90A8DA8);
LABEL_26:
        v16 = v15 ^ v20 ^ 1;
        return v16 & 1;
      }

      v23 = sub_1C9064C2C();
      v24 = v23;
      v32 = OUTLINED_FUNCTION_55_12(v23, v25, v26, v27, v28, v29, v30, v31, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96]);
      OUTLINED_FUNCTION_67_10(v32, v33, v34, v35, v36, v37, v38, v39, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, v86, v87, v88, v89, v90, v91, v92, *(&v92 + 1), v93, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
      sub_1C8D14208(v104, &qword_1EC31A258, &qword_1C90A8DA8);
      v16 = 0;
      if (v24)
      {
        goto LABEL_26;
      }

      return v16 & 1;
    case 3:
      if (*&v103[4] >> 62 != 3)
      {
        goto LABEL_22;
      }

      v40 = v103[0];
      sub_1C8D14208(v104, &qword_1EC31A258, &qword_1C90A8DA8);
      v16 = v40 == v12;
      return v16 & 1;
    default:
      if (*&v103[4] >> 62)
      {
LABEL_22:
        v69 = v103;
LABEL_23:
        sub_1C8D07344(v69, &v92);
        sub_1C8D14208(v104, &qword_1EC31A258, &qword_1C90A8DA8);
        v16 = 0;
      }

      else
      {
        v92 = *__dst;
        v93 = *&__dst[16];
        v94 = *&__dst[24];
        LOBYTE(v95) = __dst[32];
        *(&v95 + 1) = *&__dst[33];
        HIBYTE(v95) = (*&__dst[33] | ((*&__dst[37] | (__dst[39] << 16)) << 32)) >> 48;
        *(&v95 + 5) = *&__dst[37];
        v96 = *&__dst[40];
        v97 = *&__dst[56];
        v98 = *&__dst[64] & 0x3FFFFFFFFFFFFFFFLL;
        v99 = *&__dst[72];
        v100 = *&__dst[88];
        LOBYTE(v101) = __dst[96];
        v79 = v103[0];
        v80 = v103[1];
        v81 = v103[2];
        v82 = v103[3];
        v83 = *&v103[4];
        v84 = *(&v103[4] + 8);
        v85 = *(&v103[5] + 1);
        LOBYTE(v86) = v103[6];
        v16 = static RuntimeAvailabilityAnnotation.== infix(_:_:)(&v92, &v79);
        sub_1C8D14208(v104, &qword_1EC31A258, &qword_1C90A8DA8);
      }

      return v16 & 1;
  }
}

uint64_t sub_1C8F2F3D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C90CD070 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

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

unint64_t sub_1C8F2F540(char a1)
{
  result = 0x6D726F6674616C70;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x4665727574616566;
      break;
    case 3:
      result = 0x7453656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F2F5D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8F2F6E0(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 0x65727574616566;
  }

  return 0x65756C6176;
}

uint64_t sub_1C8F2F738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F2F3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2F760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30D70(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2F79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30D70(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2F7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30EC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30EC0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30DC4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2F88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30DC4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2F8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F2F5D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F2F8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30E6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30E6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8F2F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30F68(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8F2F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8F30F68(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void RuntimeRequirement.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v76 = v1;
  v4 = v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A260, &qword_1C90A8DB0);
  OUTLINED_FUNCTION_11();
  v66 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v7);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A268, &qword_1C90A8DB8);
  OUTLINED_FUNCTION_11();
  v69 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v10);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A270, &qword_1C90A8DC0);
  OUTLINED_FUNCTION_11();
  v63 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53[-v13];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A278, &qword_1C90A8DC8);
  OUTLINED_FUNCTION_11();
  v61 = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_233();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A280, &qword_1C90A8DD0);
  OUTLINED_FUNCTION_11();
  v77 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53[-v19];
  v21 = *v0;
  v74 = v0[1];
  v75 = v21;
  v22 = v0[2];
  v72 = v0[3];
  v73 = v22;
  v71 = *(v0 + 32);
  v23 = *(v0 + 33) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 32);
  v24 = v0[6];
  v60 = v0[5];
  v59 = v24;
  v25 = v0[8];
  v58 = v0[7];
  v26 = v0[10];
  v57 = v0[9];
  v56 = v26;
  v55 = v0[11];
  v54 = *(v0 + 96);
  v27 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C8F30D70(v27, v28, v29);
  v30 = sub_1C9064E1C();
  switch(v25 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_62_12();
      sub_1C8F30EC0(v46, v47, v48);
      v41 = v94;
      OUTLINED_FUNCTION_104_0();
      v49 = sub_1C9064ACC();
      v78 = v75;
      v79 = v74;
      LOBYTE(v80) = v73;
      sub_1C8F30F14(v49, v50, v51);
      OUTLINED_FUNCTION_65_10(&v78);
      goto LABEL_9;
    case 2uLL:
      OUTLINED_FUNCTION_61_14();
      sub_1C8F30E6C(v38, v39, v40);
      v14 = v67;
      v41 = v94;
      OUTLINED_FUNCTION_104_0();
      sub_1C9064ACC();
      LOBYTE(v78) = 0;
      v25 = v70;
      v42 = v76;
      sub_1C9064B2C();
      if (!v42)
      {
        OUTLINED_FUNCTION_62_12();
        sub_1C9064B2C();
        OUTLINED_FUNCTION_61_14();
        sub_1C9064B3C();
      }

      goto LABEL_9;
    case 3uLL:
      LOBYTE(v78) = 3;
      sub_1C8F30DC4(v30, v31, v32);
      v14 = v65;
      v41 = v94;
      OUTLINED_FUNCTION_104_0();
      v43 = sub_1C9064ACC();
      LOBYTE(v78) = v75;
      sub_1C8F30E18(v43, v44, v45);
      OUTLINED_FUNCTION_65_10(&v78);
LABEL_9:
      OUTLINED_FUNCTION_296();
      v52(v14, v25);
      (*(v77 + 8))(v20, v41);
      break;
    default:
      LOBYTE(v78) = 0;
      sub_1C8F30F68(v30, v31, v32);
      v33 = sub_1C9064ACC();
      v78 = v75;
      v79 = v74;
      v80 = v73;
      v81 = v72;
      v82 = v71;
      v85 = BYTE6(v23);
      v84 = WORD2(v23);
      v83 = v23;
      v86 = v60;
      v87 = v59;
      v88 = v58;
      v89 = v25 & 0x3FFFFFFFFFFFFFFFLL;
      v90 = v57;
      v91 = v56;
      v92 = v55;
      v93 = v54;
      sub_1C8F30FBC(v33, v34, v35);
      v36 = v62;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v37(v2, v36);
      (*(v77 + 8))(v20, v94);
      break;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t RuntimeRequirement.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  switch(v1[8] >> 62)
  {
    case 1uLL:
      MEMORY[0x1CCA82810](1);
      switch(v3)
      {
        case 0:
          v5 = 1;
          goto LABEL_15;
        case 1:
          v5 = 2;
          goto LABEL_15;
        case 2:
          v5 = 3;
          goto LABEL_15;
        case 3:
          v5 = 4;
          goto LABEL_15;
        case 4:
          v5 = 5;
          goto LABEL_15;
        case 5:
          v5 = 6;
          goto LABEL_15;
        case 6:
          v5 = 7;
          goto LABEL_15;
        case 7:
          v5 = 8;
          goto LABEL_15;
        default:
          MEMORY[0x1CCA82810](0);
          sub_1C9063FBC();
          goto LABEL_4;
      }

    case 2uLL:
      MEMORY[0x1CCA82810](2);
      sub_1C9063FBC();
      sub_1C9063FBC();
LABEL_4:
      result = sub_1C9064D9C();
      break;
    case 3uLL:
      MEMORY[0x1CCA82810](3);
      v5 = v2;
LABEL_15:
      result = MEMORY[0x1CCA82810](v5);
      break;
    default:
      MEMORY[0x1CCA82810](0);
      result = RuntimeAvailabilityAnnotation.hash(into:)();
      break;
  }

  return result;
}

uint64_t RuntimeRequirement.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  RuntimeRequirement.hash(into:)(v1);
  return sub_1C9064DBC();
}

void RuntimeRequirement.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v113 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A288, &qword_1C90A8DD8);
  OUTLINED_FUNCTION_11();
  v107 = v6;
  v108 = v5;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v111 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A290, &qword_1C90A8DE0);
  OUTLINED_FUNCTION_11();
  v109 = v10;
  v110 = v9;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  v112 = v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A298, &qword_1C90A8DE8);
  OUTLINED_FUNCTION_11();
  v105 = v13;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A2A0, &qword_1C90A8DF0);
  OUTLINED_FUNCTION_11();
  v104 = v16;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_86();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31A2A8, &qword_1C90A8DF8);
  OUTLINED_FUNCTION_11();
  v20 = v19;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v100 - v22;
  v114 = v3;
  v24 = OUTLINED_FUNCTION_276();
  v26 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1C8F30D70(v26, v27, v28);
  sub_1C9064DEC();
  if (v0)
  {
    goto LABEL_9;
  }

  v103 = v1;
  v102 = v15;
  v126 = v20;
  v29 = v113;
  v30 = sub_1C9064A9C();
  v31 = sub_1C8CB8914(v30, 0);
  if (v33 == v32 >> 1)
  {
LABEL_8:
    sub_1C90647DC();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v57 = &type metadata for RuntimeRequirement;
    v58 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v58);
    OUTLINED_FUNCTION_42_13();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_57_0();
    v61(v60, v18);
LABEL_9:
    v62 = v114;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_198();
    return;
  }

  OUTLINED_FUNCTION_119_0();
  v101 = v23;
  v100[1] = 0;
  if (v38 < (v34 >> 1))
  {
    v39 = v31;
    v40 = v18;
    v41 = *(v37 + v35);
    sub_1C8CB891C(v35 + 1, v34 >> 1, v39, v37, v35, v36);
    v43 = v42;
    v45 = v44;
    v46 = swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      v49 = v40;
      v50 = v101;
      switch(v41)
      {
        case 1:
          OUTLINED_FUNCTION_62_12();
          sub_1C8F30EC0(v69, v70, v71);
          v72 = OUTLINED_FUNCTION_29_22(&type metadata for RuntimeRequirement.DeviceCapabilityCodingKeys, &v115);
          sub_1C8F31064(v72, v73, v74);
          v84 = v106;
          OUTLINED_FUNCTION_34();
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v92 = OUTLINED_FUNCTION_246();
          v93(v92);
          v94 = OUTLINED_FUNCTION_44_21();
          v95(v94);
          v85 = 0;
          v83 = v115;
          v82 = v116;
          v88 = 0x4000000000000000;
          v50 = v117;
          break;
        case 2:
          OUTLINED_FUNCTION_61_14();
          sub_1C8F30E6C(v63, v64, v65);
          OUTLINED_FUNCTION_29_22(&type metadata for RuntimeRequirement.FeatureFlagCodingKeys, &v115);
          LOBYTE(v115) = 0;
          v83 = sub_1C9064A0C();
          v82 = v75;
          OUTLINED_FUNCTION_62_12();
          v50 = sub_1C9064A0C();
          v84 = v96;
          OUTLINED_FUNCTION_61_14();
          v111 = sub_1C9064A1C();
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_57_0();
          v98(v97);
          OUTLINED_FUNCTION_15_19();
          v99(v101, v49);
          v85 = v111 & 1;
          v88 = 0x8000000000000000;
          break;
        case 3:
          LOBYTE(v115) = 3;
          sub_1C8F30DC4(v46, v47, v48);
          v66 = OUTLINED_FUNCTION_29_22(&type metadata for RuntimeRequirement.DeviceStateCodingKeys, &v115);
          sub_1C8F31010(v66, v67, v68);
          v84 = v108;
          OUTLINED_FUNCTION_34();
          sub_1C9064A6C();
          v82 = v126;
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_246();
          v77(v76);
          v78 = OUTLINED_FUNCTION_44_21();
          v79(v78);
          v85 = 0;
          v83 = v115;
          v88 = 0xC000000000000000;
          break;
        default:
          LOBYTE(v115) = 0;
          sub_1C8F30F68(v46, v47, v48);
          v51 = v103;
          v52 = OUTLINED_FUNCTION_29_22(&type metadata for RuntimeRequirement.PlatformCodingKeys, &v115);
          sub_1C8F310B8(v52, v53, v54);
          v55 = v102;
          OUTLINED_FUNCTION_104_0();
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_9_37();
          v80(v51, v55);
          OUTLINED_FUNCTION_15_19();
          v81(v50, v49);
          v83 = v115;
          v82 = v116;
          v50 = v117;
          v84 = v118;
          v85 = v119;
          v86 = v120;
          v87 = v121;
          v88 = v122;
          v89 = v123;
          v90 = v124;
          v91 = v125;
          break;
      }

      v62 = v114;
      *v29 = v83;
      *(v29 + 8) = v82;
      *(v29 + 16) = v50;
      *(v29 + 24) = v84;
      *(v29 + 32) = v85;
      *(v29 + 40) = v86;
      *(v29 + 56) = v87;
      *(v29 + 64) = v88;
      *(v29 + 72) = v89;
      *(v29 + 88) = v90;
      *(v29 + 96) = v91;
      goto LABEL_10;
    }

    v18 = v40;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C8F30AB0(uint64_t a1)
{
  sub_1C9064D7C();
  RuntimeRequirement.hash(into:)(v2);
  return sub_1C9064DBC();
}

unint64_t sub_1C8F30B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635B8;
  if (!qword_1EDA635B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635B8);
  }

  return result;
}

unint64_t sub_1C8F30B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A1F8;
  if (!qword_1EC31A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A1F8);
  }

  return result;
}

unint64_t sub_1C8F30BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A200;
  if (!qword_1EC31A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A200);
  }

  return result;
}

unint64_t sub_1C8F30C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A208;
  if (!qword_1EC31A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A208);
  }

  return result;
}

unint64_t sub_1C8F30C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A210;
  if (!qword_1EC31A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A210);
  }

  return result;
}

unint64_t sub_1C8F30CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A218;
  if (!qword_1EC31A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A218);
  }

  return result;
}

unint64_t sub_1C8F30D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635A0;
  if (!qword_1EDA635A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635A0);
  }

  return result;
}

unint64_t sub_1C8F30D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AE8;
  if (!qword_1EDA69AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AE8);
  }

  return result;
}

unint64_t sub_1C8F30DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63588;
  if (!qword_1EDA63588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63588);
  }

  return result;
}

unint64_t sub_1C8F30E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A58;
  if (!qword_1EDA60A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A58);
  }

  return result;
}

unint64_t sub_1C8F30E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AA8;
  if (!qword_1EDA69AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AA8);
  }

  return result;
}

unint64_t sub_1C8F30EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A90;
  if (!qword_1EDA69A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A90);
  }

  return result;
}

unint64_t sub_1C8F30F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63098;
  if (!qword_1EDA63098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63098);
  }

  return result;
}

unint64_t sub_1C8F30F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AD0;
  if (!qword_1EDA69AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AD0);
  }

  return result;
}

unint64_t sub_1C8F30FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F10;
  if (!qword_1EDA62F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F10);
  }

  return result;
}

unint64_t sub_1C8F31010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A50;
  if (!qword_1EDA60A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A50);
  }

  return result;
}

unint64_t sub_1C8F31064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63090;
  if (!qword_1EDA63090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63090);
  }

  return result;
}

unint64_t sub_1C8F310B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA62F08;
  if (!qword_1EDA62F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F08);
  }

  return result;
}

unint64_t sub_1C8F31110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2B0;
  if (!qword_1EC31A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2B0);
  }

  return result;
}

unint64_t sub_1C8F31168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2B8;
  if (!qword_1EC31A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2B8);
  }

  return result;
}

unint64_t sub_1C8F311C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2C0;
  if (!qword_1EC31A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2C0);
  }

  return result;
}

uint64_t sub_1C8F31214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 17))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8F31268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_1C8F312E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 33);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C8F31324(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 97) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 8;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 81) = 0u;
      return result;
    }

    *(a1 + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8F313AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64) | (a2 << 62);
  *(result + 32) = *(result + 32);
  *(result + 64) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RuntimeRequirement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RuntimeRequirement.FeatureFlagCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8F315A8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1C8F31654(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RuntimeDeviceCapability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RuntimeDeviceCapability.MobileGestaltCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F319CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2C8;
  if (!qword_1EC31A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2C8);
  }

  return result;
}

unint64_t sub_1C8F31A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2D0;
  if (!qword_1EC31A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2D0);
  }

  return result;
}

unint64_t sub_1C8F31A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2D8;
  if (!qword_1EC31A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2D8);
  }

  return result;
}

unint64_t sub_1C8F31AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2E0;
  if (!qword_1EC31A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2E0);
  }

  return result;
}

unint64_t sub_1C8F31B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2E8;
  if (!qword_1EC31A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2E8);
  }

  return result;
}

unint64_t sub_1C8F31B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2F0;
  if (!qword_1EC31A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2F0);
  }

  return result;
}

unint64_t sub_1C8F31BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A2F8;
  if (!qword_1EC31A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A2F8);
  }

  return result;
}

unint64_t sub_1C8F31C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31A300;
  if (!qword_1EC31A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31A300);
  }

  return result;
}

unint64_t sub_1C8F31C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AC0;
  if (!qword_1EDA69AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AC0);
  }

  return result;
}

unint64_t sub_1C8F31CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AC8;
  if (!qword_1EDA69AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AC8);
  }

  return result;
}

unint64_t sub_1C8F31D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A80;
  if (!qword_1EDA69A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A80);
  }

  return result;
}

unint64_t sub_1C8F31D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A88;
  if (!qword_1EDA69A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A88);
  }

  return result;
}

unint64_t sub_1C8F31DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69A98;
  if (!qword_1EDA69A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69A98);
  }

  return result;
}

unint64_t sub_1C8F31E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AA0;
  if (!qword_1EDA69AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AA0);
  }

  return result;
}

unint64_t sub_1C8F31E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69AB0;
  if (!qword_1EDA69AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69AB0);
  }

  return result;
}