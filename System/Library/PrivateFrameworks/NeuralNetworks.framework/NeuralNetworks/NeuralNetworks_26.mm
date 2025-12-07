uint64_t sub_25BC8912C()
{
  v1 = *(v0 + 24);
  switch(v1)
  {
    case 255:
      sub_25BB6D800();
      return sub_25BCB6FBC();
    case 254:
      return 95;
    case 253:
      return 3026478;
    default:
      v4 = sub_25BCB77FC();
      MEMORY[0x25F876C90](0x20616B612820, 0xE600000000000000);
      v3 = DebugValueLocator.description.getter();
      MEMORY[0x25F876C90](v3);

      MEMORY[0x25F876C90](41, 0xE100000000000000);
      return v4;
  }
}

uint64_t sub_25BC8922C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_11_53();
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0x206B6E61722061, 0xE700000000000000);
  v3 = OUTLINED_FUNCTION_92();
  v5 = sub_25BC88558(v3, v4, v2);
  MEMORY[0x25F876C90](v5);

  OUTLINED_FUNCTION_3_3();
  MEMORY[0x25F876C90]();
  v6 = *(v1 + 16) + 1;
  v7 = 56;
  do
  {
    if (!--v6)
    {
      v20 = MEMORY[0x25F876F80](v1, &unk_286D56150);
      MEMORY[0x25F876C90](v20);

      return v23;
    }

    v8 = *(v1 + v7);
    v7 += 32;
  }

  while (v8 > 0xFC);
  MEMORY[0x25F876C90](0x200A5B202020200ALL, 0xEF20202020202020);
  v9 = *(v1 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v10 = (v1 + 56);
    do
    {
      v11 = *v10;
      switch(v11)
      {
        case 255:
          sub_25BB6D800();
          v12 = sub_25BCB6FBC();
          v13 = v14;
          break;
        case 254:
          v12 = 0xD00000000000001DLL;
          v13 = 0x800000025BCE6960;
          break;
        case 253:
          v12 = 0xD000000000000029;
          v13 = 0x800000025BCE6930;
          break;
        default:
          OUTLINED_FUNCTION_11_53();
          sub_25BCB70FC();
          v15 = sub_25BCB77FC();
          v13 = v16;

          MEMORY[0x25F876C90](0x6D61732820202020, 0xED00002073612065);
          v17 = DebugValueLocator.description.getter();
          MEMORY[0x25F876C90](v17);

          MEMORY[0x25F876C90](41, 0xE100000000000000);
          v12 = v15;
          break;
      }

      v18 = *(v24 + 16);
      if (v18 >= *(v24 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      v10 += 32;
      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v13;
      --v9;
    }

    while (v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  sub_25BCB627C();

  v21 = OUTLINED_FUNCTION_110();
  MEMORY[0x25F876C90](v21);

  MEMORY[0x25F876C90](0x2E0A5D202020200ALL, 0xEA00000000002E2ELL);
  return v23;
}

void requireCompatibleNumericScalarTypes(_:from:_:from:function:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40)
{
  OUTLINED_FUNCTION_29_32();
  v45 = 0;
  v47 = *(v46 + 16);
  do
  {
    if (v45 == 4)
    {
      OUTLINED_FUNCTION_18_45();
      v47 = v51;
      goto LABEL_10;
    }

    v48 = &unk_286D463F8 + v45++;
  }

  while (v48[32] != *v43);
  v49 = 0;
  do
  {
    if (v49 == 4)
    {
      OUTLINED_FUNCTION_18_45();
LABEL_10:
      sub_25BC8FACC();
      v52 = OUTLINED_FUNCTION_17_48();
      sub_25BBFA14C(v52, v53, v47);
      sub_25BADDD28(v42, v41, v40, a9, a39, a40, a10);
    }

    v50 = &unk_286D463F8 + v49++;
  }

  while (v50[32] != *v44);
  OUTLINED_FUNCTION_27_34();
}

uint64_t requireAxis(_:from:forRank:from:function:file:line:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -a3;
  if (__OFSUB__(0, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 > a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result >= a3 || v4 > result)
  {
LABEL_11:
    v6 = *a4;
    v7 = *(a4 + 8);
    v8 = *(a4 + 16);
    OUTLINED_FUNCTION_20_37();
    sub_25BC02C38(v9, v10, v11);
    sub_25BC02C38(v6, v7, v8);
    OUTLINED_FUNCTION_8_58();
  }

  return result;
}

void sub_25BC897C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, __int16 a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t (*a50)(void, uint64_t, uint64_t), uint64_t (*a51)(uint64_t))
{
  OUTLINED_FUNCTION_28_31();
  a43 = v51;
  a44 = v52;
  v81 = v53;
  v80 = v54;
  v78 = v55;
  v79 = v56;
  v58 = v57;
  v60 = v59;
  v61 = a48;
  v62 = a51;
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = *(v63 + 16);
  v68 = *v67;
  v69 = *(v67 + 8);
  v77 = *(v67 + 16);
  v70 = a50(0, a48, a49);
  v71 = OUTLINED_FUNCTION_17_48();
  if ((v62(v71) & 1) == 0)
  {
    v75 = a47;
    v76 = a46;
    v74 = a45;
    a19 = v61;
    v72 = __swift_allocate_boxed_opaque_existential_0(&a16);
    (*(*(v61 - 8) + 16))(v72, v60, v61);
    a20 = v64;
    a21 = v65;
    a22 = v66;
    a26 = v70;
    v73 = __swift_allocate_boxed_opaque_existential_0(&a23);
    (*(*(v70 - 8) + 16))(v73, v58, v70);
    a27 = v68;
    a28 = v69;
    a29 = v77;
    a31 = 12;
    sub_25BC02C38(v64, v65, v66);
    sub_25BC02C38(v68, v69, v77);
    sub_25BADDD28(v78, v79, v80, v81, v74, v76, v75);
  }

  OUTLINED_FUNCTION_30_29();
}

uint64_t sub_25BC89940(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = sub_25BCB62FC();
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = sub_25BCB73DC();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_25BCB75CC();
      if (v6 <= 0x3F)
      {
        v1 = sub_25BCB68CC();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_25BC89A38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = 8;
  if (v4 > 8)
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_24;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 251) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_24:
      v13 = *(a1 + v6);
      if (v13 >= 5)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 252;
}

void sub_25BC89BA0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (a3 < 0xFC)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 251) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFB)
  {
    v11 = a2 - 252;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v6 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_25BC89DC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_25BC89E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_25BC89E44(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25BC89E68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 25))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC89EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_25BC89F00(uint64_t result, unsigned int a2)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
  }

  else if (a2)
  {
    *(result + 24) = ~a2;
  }

  return result;
}

uint64_t sub_25BC89F38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_25BC89F78(uint64_t result, int a2, int a3)
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

uint64_t sub_25BC89FF4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&var1, a1);
  if (var1 - 1 > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_25BCD5D10[(var1 - 1)];
  }
}

Swift::Bool __swiftcall ScalarType.isCastable(to:)(NeuralNetworks::ScalarType to)
{
  v2 = *to;
  v3 = *v1;
  if (sub_25BAA80BC(v3, &unk_286D42270) && sub_25BAA80BC(v2, &unk_286D427E8))
  {
    return 0;
  }

  return v3 == 12 || v2 != 12;
}

uint64_t ScalarType.size.getter()
{
  if (*v0 - 1 > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_25BCD5D10[(*v0 - 1)];
  }
}

uint64_t sub_25BC8A124(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 947154537 && a2 == 0xE400000000000000;
  if (v3 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3631746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x3436746E69 && a2 == 0xE500000000000000;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x38746E6975 && a2 == 0xE500000000000000;
          if (v9 || (sub_25BCB789C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x3631746E6975 && a2 == 0xE600000000000000;
            if (v10 || (sub_25BCB789C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x3233746E6975 && a2 == 0xE600000000000000;
              if (v11 || (sub_25BCB789C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x3436746E6975 && a2 == 0xE600000000000000;
                if (v12 || (sub_25BCB789C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x363174616F6C66 && a2 == 0xE700000000000000;
                  if (v13 || (sub_25BCB789C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x363174616F6C6662 && a2 == 0xE800000000000000;
                    if (v14 || (sub_25BCB789C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x323374616F6C66 && a2 == 0xE700000000000000;
                      if (v15 || (sub_25BCB789C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x343674616F6C66 && a2 == 0xE700000000000000;
                        if (v16 || (sub_25BCB789C() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 1819242338 && a2 == 0xE400000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_25BCB789C();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
  }
}

uint64_t sub_25BC8A4EC(char a1)
{
  result = 947154537;
  switch(a1)
  {
    case 1:
      result = 0x3631746E69;
      break;
    case 2:
      result = 0x3233746E69;
      break;
    case 3:
      result = 0x3436746E69;
      break;
    case 4:
      result = 0x38746E6975;
      break;
    case 5:
      result = 0x3631746E6975;
      break;
    case 6:
      result = 0x3233746E6975;
      break;
    case 7:
      result = 0x3436746E6975;
      break;
    case 8:
      result = 0x363174616F6C66;
      break;
    case 9:
      result = 0x363174616F6C6662;
      break;
    case 10:
      result = 0x323374616F6C66;
      break;
    case 11:
      result = 0x343674616F6C66;
      break;
    case 12:
      result = 1819242338;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BC8A618(uint64_t a1)
{
  v2 = sub_25BC8B828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A654(uint64_t a1)
{
  v2 = sub_25BC8B828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A690(uint64_t a1)
{
  v2 = sub_25BC8B72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A6CC(uint64_t a1)
{
  v2 = sub_25BC8B72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC8A124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC8A738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC8A4E4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC8A760(uint64_t a1)
{
  v2 = sub_25BC8B6D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A79C(uint64_t a1)
{
  v2 = sub_25BC8B6D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A7D8(uint64_t a1)
{
  v2 = sub_25BC8B87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A814(uint64_t a1)
{
  v2 = sub_25BC8B87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A850(uint64_t a1)
{
  v2 = sub_25BC8B7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A88C(uint64_t a1)
{
  v2 = sub_25BC8B7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A8C8(uint64_t a1)
{
  v2 = sub_25BC8B780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A904(uint64_t a1)
{
  v2 = sub_25BC8B780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A940(uint64_t a1)
{
  v2 = sub_25BC8BAC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A97C(uint64_t a1)
{
  v2 = sub_25BC8BAC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8A9B8(uint64_t a1)
{
  v2 = sub_25BC8BA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8A9F4(uint64_t a1)
{
  v2 = sub_25BC8BA74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AA30(uint64_t a1)
{
  v2 = sub_25BC8BA20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AA6C(uint64_t a1)
{
  v2 = sub_25BC8BA20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AAA8(uint64_t a1)
{
  v2 = sub_25BC8BB1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AAE4(uint64_t a1)
{
  v2 = sub_25BC8BB1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AB20(uint64_t a1)
{
  v2 = sub_25BC8B978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AB5C(uint64_t a1)
{
  v2 = sub_25BC8B978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AB98(uint64_t a1)
{
  v2 = sub_25BC8B924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8ABD4(uint64_t a1)
{
  v2 = sub_25BC8B924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AC10(uint64_t a1)
{
  v2 = sub_25BC8B8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8AC4C(uint64_t a1)
{
  v2 = sub_25BC8B8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BC8AC88(uint64_t a1)
{
  v2 = sub_25BC8B9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC8ACC4(uint64_t a1)
{
  v2 = sub_25BC8B9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScalarType.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79D0, &qword_25BCD50B0);
  OUTLINED_FUNCTION_2();
  v100 = v5;
  v101 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_23();
  v99 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79D8, &qword_25BCD50B8);
  OUTLINED_FUNCTION_2();
  v97 = v9;
  v98 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_23();
  v96 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79E0, &qword_25BCD50C0);
  OUTLINED_FUNCTION_2();
  v94 = v13;
  v95 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_23();
  v93 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79E8, &qword_25BCD50C8);
  OUTLINED_FUNCTION_2();
  v91 = v17;
  v92 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_23();
  v90 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79F0, &qword_25BCD50D0);
  OUTLINED_FUNCTION_2();
  v88 = v21;
  v89 = v20;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_23();
  v87 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB79F8, &qword_25BCD50D8);
  OUTLINED_FUNCTION_2();
  v85 = v25;
  v86 = v24;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A00, &qword_25BCD50E0);
  OUTLINED_FUNCTION_0_92(v28, &v120);
  v83 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A08, &qword_25BCD50E8);
  OUTLINED_FUNCTION_0_92(v32, &v119);
  v82 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A10, &qword_25BCD50F0);
  OUTLINED_FUNCTION_0_92(v36, &v118);
  v81 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A18, &qword_25BCD50F8);
  OUTLINED_FUNCTION_0_92(v40, v109);
  v80 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A20, &qword_25BCD5100);
  OUTLINED_FUNCTION_0_92(v44, &v103);
  v79 = v45;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A28, &qword_25BCD5108);
  OUTLINED_FUNCTION_0_92(v48, &v100);
  v77 = v49;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v50);
  v52 = &v75 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A30, &qword_25BCD5110);
  OUTLINED_FUNCTION_2();
  v76 = v54;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v55);
  v57 = &v75 - v56;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7A38, &qword_25BCD5118);
  OUTLINED_FUNCTION_2();
  v59 = v58;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v60);
  v62 = &v75 - v61;
  v63 = *v2;
  v64 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC8B6D8();
  v102 = v62;
  sub_25BCB7B6C();
  v65 = (v59 + 8);
  switch(v63)
  {
    case 1:
      v105 = 1;
      sub_25BC8BAC8();
      v72 = v102;
      v73 = v103;
      sub_25BCB770C();
      (*(v77 + 8))(v52, v78);
      return (*v65)(v72, v73);
    case 2:
      v106 = 2;
      sub_25BC8BA74();
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Int32CodingKeys, &v106);
      v69 = OUTLINED_FUNCTION_4_69();
      v71 = &v103;
      goto LABEL_13;
    case 3:
      v107 = 3;
      sub_25BC8BA20();
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Int64CodingKeys, &v107);
      v69 = OUTLINED_FUNCTION_4_69();
      v71 = v109;
      goto LABEL_13;
    case 4:
      v108 = 4;
      sub_25BC8B9CC();
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Uint8CodingKeys, &v108);
      v69 = OUTLINED_FUNCTION_4_69();
      v71 = &v118;
      goto LABEL_13;
    case 5:
      v110 = 5;
      sub_25BC8B978();
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Uint16CodingKeys, &v110);
      v69 = OUTLINED_FUNCTION_4_69();
      v71 = &v119;
      goto LABEL_13;
    case 6:
      v111 = 6;
      sub_25BC8B924();
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Uint32CodingKeys, &v111);
      v69 = OUTLINED_FUNCTION_4_69();
      v71 = &v120;
LABEL_13:
      v67 = *(v71 - 32);
      goto LABEL_17;
    case 7:
      v112 = 7;
      sub_25BC8B8D0();
      v66 = v84;
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Uint64CodingKeys, &v112);
      v68 = v85;
      v67 = v86;
      goto LABEL_16;
    case 8:
      v113 = 8;
      sub_25BC8B87C();
      v66 = v87;
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Float16CodingKeys, &v113);
      v68 = v88;
      v67 = v89;
      goto LABEL_16;
    case 9:
      v114 = 9;
      sub_25BC8B828();
      v66 = v90;
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Bfloat16CodingKeys, &v114);
      v68 = v91;
      v67 = v92;
      goto LABEL_16;
    case 10:
      v115 = 10;
      sub_25BC8B7D4();
      v66 = v93;
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Float32CodingKeys, &v115);
      v68 = v94;
      v67 = v95;
      goto LABEL_16;
    case 11:
      v116 = 11;
      sub_25BC8B780();
      v66 = v96;
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.Float64CodingKeys, &v116);
      v68 = v97;
      v67 = v98;
      goto LABEL_16;
    case 12:
      v117 = 12;
      sub_25BC8B72C();
      v66 = v99;
      OUTLINED_FUNCTION_3_62(&type metadata for ScalarType.BoolCodingKeys, &v117);
      v68 = v100;
      v67 = v101;
LABEL_16:
      v70 = *(v68 + 8);
      v69 = v66;
LABEL_17:
      v70(v69, v67);
      break;
    default:
      v104 = 0;
      sub_25BC8BB1C();
      v64 = v102;
      v62 = v103;
      sub_25BCB770C();
      (*(v76 + 8))(v57, v53);
      break;
  }

  return (*v65)(v64, v62);
}

unint64_t sub_25BC8B6D8()
{
  result = qword_2815502B0[0];
  if (!qword_2815502B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815502B0);
  }

  return result;
}

unint64_t sub_25BC8B72C()
{
  result = qword_27FBB7A40;
  if (!qword_27FBB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A40);
  }

  return result;
}

unint64_t sub_25BC8B780()
{
  result = qword_27FBB7A48;
  if (!qword_27FBB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A48);
  }

  return result;
}

unint64_t sub_25BC8B7D4()
{
  result = qword_2815501F8;
  if (!qword_2815501F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501F8);
  }

  return result;
}

unint64_t sub_25BC8B828()
{
  result = qword_27FBB7A50;
  if (!qword_27FBB7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A50);
  }

  return result;
}

unint64_t sub_25BC8B87C()
{
  result = qword_27FBB7A58;
  if (!qword_27FBB7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A58);
  }

  return result;
}

unint64_t sub_25BC8B8D0()
{
  result = qword_27FBB7A60;
  if (!qword_27FBB7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A60);
  }

  return result;
}

unint64_t sub_25BC8B924()
{
  result = qword_27FBB7A68;
  if (!qword_27FBB7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A68);
  }

  return result;
}

unint64_t sub_25BC8B978()
{
  result = qword_27FBB7A70;
  if (!qword_27FBB7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A70);
  }

  return result;
}

unint64_t sub_25BC8B9CC()
{
  result = qword_27FBB7A78;
  if (!qword_27FBB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A78);
  }

  return result;
}

unint64_t sub_25BC8BA20()
{
  result = qword_27FBB7A80;
  if (!qword_27FBB7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A80);
  }

  return result;
}

unint64_t sub_25BC8BA74()
{
  result = qword_27FBB7A88;
  if (!qword_27FBB7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A88);
  }

  return result;
}

unint64_t sub_25BC8BAC8()
{
  result = qword_27FBB7A90;
  if (!qword_27FBB7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A90);
  }

  return result;
}

unint64_t sub_25BC8BB1C()
{
  result = qword_27FBB7A98;
  if (!qword_27FBB7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7A98);
  }

  return result;
}

uint64_t ScalarType.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t ScalarType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v128 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AA0, &qword_25BCD5120);
  OUTLINED_FUNCTION_2();
  v118 = v4;
  v119 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_23();
  v127 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AA8, &qword_25BCD5128);
  OUTLINED_FUNCTION_2();
  v116 = v8;
  v117 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_23();
  v126 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AB0, &qword_25BCD5130);
  OUTLINED_FUNCTION_2();
  v114 = v12;
  v115 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_23();
  v125 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AB8, &qword_25BCD5138);
  OUTLINED_FUNCTION_0_92(v15, &v150);
  v113 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_23();
  v124 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AC0, &qword_25BCD5140);
  OUTLINED_FUNCTION_0_92(v19, &v149);
  v112 = v20;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_23();
  v123 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AC8, &qword_25BCD5148);
  OUTLINED_FUNCTION_0_92(v23, &v148);
  v111 = v24;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_23();
  v131 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AD0, &qword_25BCD5150);
  OUTLINED_FUNCTION_0_92(v27, &v147);
  v110 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_23();
  v130 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AD8, &qword_25BCD5158);
  OUTLINED_FUNCTION_0_92(v31, v140);
  v108 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_23();
  v129 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AE0, &qword_25BCD5160);
  OUTLINED_FUNCTION_0_92(v35, v139);
  v107 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_23();
  v122 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AE8, &qword_25BCD5168);
  OUTLINED_FUNCTION_0_92(v39, &v133);
  v106 = v40;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_23();
  v121 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AF0, &qword_25BCD5170);
  OUTLINED_FUNCTION_0_92(v43, &v131);
  v105 = v44;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_23();
  v120 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7AF8, &qword_25BCD5178);
  OUTLINED_FUNCTION_0_92(v47, &v129);
  v104 = v48;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v49);
  v51 = &v98 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B00, &qword_25BCD5180);
  OUTLINED_FUNCTION_2();
  v103 = v53;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v54);
  v56 = &v98 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B08, &unk_25BCD5188);
  OUTLINED_FUNCTION_2();
  v59 = v58;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v60);
  v61 = a1[3];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_25BC8B6D8();
  v62 = v133;
  sub_25BCB7B2C();
  if (v62)
  {
    goto LABEL_9;
  }

  v101 = v56;
  v100 = v52;
  v102 = v51;
  v63 = v129;
  v64 = v130;
  v65 = v131;
  v133 = v59;
  v66 = sub_25BCB76EC();
  result = sub_25BC72094(v66, 0);
  if (v69 == v70 >> 1)
  {
LABEL_8:
    v81 = sub_25BCB71BC();
    swift_allocError();
    v83 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48B8, &unk_25BCC0130);
    *v83 = &type metadata for ScalarType;
    sub_25BCB763C();
    sub_25BCB71AC();
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x277D84160], v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = OUTLINED_FUNCTION_8_59();
    v85(v84, v57);
LABEL_9:
    v86 = v132;
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v99 = v57;
  v98 = 0;
  if (v69 < (v70 >> 1))
  {
    v71 = *(v68 + v69);
    sub_25BC8C8E8(v69 + 1, v70 >> 1, result, v68, v69, v70);
    v73 = v72;
    v75 = v74;
    swift_unknownObjectRelease();
    if (v73 == v75 >> 1)
    {
      v76 = v128;
      v77 = v98;
      switch(v71)
      {
        case 1:
          v135 = 1;
          sub_25BC8BAC8();
          OUTLINED_FUNCTION_10_53(&type metadata for ScalarType.Int16CodingKeys, &v135);
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_4_69();
          v92 = &v129;
          goto LABEL_26;
        case 2:
          v136 = 2;
          sub_25BC8BA74();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Int32CodingKeys, &v136);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = &v131;
          goto LABEL_27;
        case 3:
          v137 = 3;
          sub_25BC8BA20();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Int64CodingKeys, &v137);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = &v133;
          goto LABEL_27;
        case 4:
          v138 = 4;
          sub_25BC8B9CC();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Uint8CodingKeys, &v138);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = v139;
          goto LABEL_27;
        case 5:
          v140[0] = 5;
          sub_25BC8B978();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Uint16CodingKeys, v140);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = v140;
          goto LABEL_27;
        case 6:
          v140[1] = 6;
          sub_25BC8B924();
          v65 = v99;
          sub_25BCB762C();
          if (v77)
          {
            v93 = OUTLINED_FUNCTION_8_59();
            v94(v93, v65);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v110 + 8))(v64, v109);
LABEL_28:
          v95 = OUTLINED_FUNCTION_8_59();
          v97 = v65;
LABEL_29:
          v96(v95, v97);
          v86 = v132;
          *v76 = v71;
          break;
        case 7:
          v141 = 7;
          sub_25BC8B8D0();
          OUTLINED_FUNCTION_10_53(&type metadata for ScalarType.Uint64CodingKeys, &v141);
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_4_69();
          v92 = &v148;
LABEL_26:
          v91(v90, *(v92 - 32));
          v95 = OUTLINED_FUNCTION_8_59();
          v97 = v63;
          goto LABEL_29;
        case 8:
          v142 = 8;
          sub_25BC8B87C();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Float16CodingKeys, &v142);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = &v149;
          goto LABEL_27;
        case 9:
          v143 = 9;
          sub_25BC8B828();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Bfloat16CodingKeys, &v143);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = &v150;
          goto LABEL_27;
        case 10:
          v144 = 10;
          sub_25BC8B7D4();
          v87 = v125;
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Float32CodingKeys, &v144);
          swift_unknownObjectRelease();
          v89 = v114;
          v88 = v115;
          goto LABEL_23;
        case 11:
          v145 = 11;
          sub_25BC8B780();
          v87 = v126;
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Float64CodingKeys, &v145);
          swift_unknownObjectRelease();
          v89 = v116;
          v88 = v117;
          goto LABEL_23;
        case 12:
          v146 = 12;
          sub_25BC8B72C();
          v87 = v127;
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.BoolCodingKeys, &v146);
          swift_unknownObjectRelease();
          v89 = v118;
          v88 = v119;
LABEL_23:
          (*(v89 + 8))(v87, v88);
          goto LABEL_28;
        default:
          v134 = 0;
          sub_25BC8BB1C();
          OUTLINED_FUNCTION_2_77(&type metadata for ScalarType.Int8CodingKeys, &v134);
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_5_62();
          v80 = &v124;
LABEL_27:
          v79(v78, *(v80 - 32));
          goto LABEL_28;
      }

      return __swift_destroy_boxed_opaque_existential_1(v86);
    }

    v57 = v99;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC8C8A0(uint64_t a1)
{
  sub_25BCB79CC();
  ScalarType.hash(into:)();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC8C8E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_25BC8C968()
{
  result = qword_27FBB7B10;
  if (!qword_27FBB7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B10);
  }

  return result;
}

uint64_t sub_25BC8C9CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_25BC8CB38()
{
  result = qword_27FBB7B18;
  if (!qword_27FBB7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B18);
  }

  return result;
}

unint64_t sub_25BC8CB90()
{
  result = qword_281550280;
  if (!qword_281550280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550280);
  }

  return result;
}

unint64_t sub_25BC8CBE8()
{
  result = qword_281550288;
  if (!qword_281550288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550288);
  }

  return result;
}

unint64_t sub_25BC8CC40()
{
  result = qword_281550270;
  if (!qword_281550270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550270);
  }

  return result;
}

unint64_t sub_25BC8CC98()
{
  result = qword_281550278;
  if (!qword_281550278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550278);
  }

  return result;
}

unint64_t sub_25BC8CCF0()
{
  result = qword_281550260;
  if (!qword_281550260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550260);
  }

  return result;
}

unint64_t sub_25BC8CD48()
{
  result = qword_281550268;
  if (!qword_281550268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550268);
  }

  return result;
}

unint64_t sub_25BC8CDA0()
{
  result = qword_281550250;
  if (!qword_281550250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550250);
  }

  return result;
}

unint64_t sub_25BC8CDF8()
{
  result = qword_281550258;
  if (!qword_281550258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550258);
  }

  return result;
}

unint64_t sub_25BC8CE50()
{
  result = qword_281550240;
  if (!qword_281550240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550240);
  }

  return result;
}

unint64_t sub_25BC8CEA8()
{
  result = qword_281550248;
  if (!qword_281550248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550248);
  }

  return result;
}

unint64_t sub_25BC8CF00()
{
  result = qword_281550230;
  if (!qword_281550230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550230);
  }

  return result;
}

unint64_t sub_25BC8CF58()
{
  result = qword_281550238;
  if (!qword_281550238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550238);
  }

  return result;
}

unint64_t sub_25BC8CFB0()
{
  result = qword_281550220;
  if (!qword_281550220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550220);
  }

  return result;
}

unint64_t sub_25BC8D008()
{
  result = qword_281550228;
  if (!qword_281550228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550228);
  }

  return result;
}

unint64_t sub_25BC8D060()
{
  result = qword_281550210;
  if (!qword_281550210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550210);
  }

  return result;
}

unint64_t sub_25BC8D0B8()
{
  result = qword_281550218;
  if (!qword_281550218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550218);
  }

  return result;
}

unint64_t sub_25BC8D110()
{
  result = qword_281550200;
  if (!qword_281550200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550200);
  }

  return result;
}

unint64_t sub_25BC8D168()
{
  result = qword_281550208;
  if (!qword_281550208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550208);
  }

  return result;
}

unint64_t sub_25BC8D1C0()
{
  result = qword_2815501C8;
  if (!qword_2815501C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501C8);
  }

  return result;
}

unint64_t sub_25BC8D218()
{
  result = qword_2815501D0;
  if (!qword_2815501D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501D0);
  }

  return result;
}

unint64_t sub_25BC8D270()
{
  result = qword_2815501E8;
  if (!qword_2815501E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501E8);
  }

  return result;
}

unint64_t sub_25BC8D2C8()
{
  result = qword_2815501F0;
  if (!qword_2815501F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501F0);
  }

  return result;
}

unint64_t sub_25BC8D320()
{
  result = qword_2815501D8;
  if (!qword_2815501D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501D8);
  }

  return result;
}

unint64_t sub_25BC8D378()
{
  result = qword_2815501E0;
  if (!qword_2815501E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501E0);
  }

  return result;
}

unint64_t sub_25BC8D3D0()
{
  result = qword_281550290;
  if (!qword_281550290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550290);
  }

  return result;
}

unint64_t sub_25BC8D428()
{
  result = qword_281550298;
  if (!qword_281550298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550298);
  }

  return result;
}

unint64_t sub_25BC8D480()
{
  result = qword_2815502A0;
  if (!qword_2815502A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815502A0);
  }

  return result;
}

unint64_t sub_25BC8D4D8()
{
  result = qword_2815502A8;
  if (!qword_2815502A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815502A8);
  }

  return result;
}

void sub_25BC8D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v27 = OUTLINED_FUNCTION_6_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v92 = v28 - v29;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  v91 = v31;
  OUTLINED_FUNCTION_7();
  v32 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v90 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_0();
  v94 = v35 - v36;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_1();
  v95 = v38;
  OUTLINED_FUNCTION_7();
  v39 = sub_25BCB50EC();
  OUTLINED_FUNCTION_2();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v46 = sub_25BAC4018();
  if (sub_25BB3EE04(v46, v25))
  {
    v48 = v47;
    v87 = v21;
    *v45 = 0;
    *(v45 + 8) = 0;
    v49 = v41;
    v50 = 1;
    *(v45 + 16) = 1;
    *(v45 + 24) = vdupq_n_s64(1uLL);
    v51 = *MEMORY[0x277D82E18];
    v88 = v49;
    v89 = v39;
    (*(v49 + 104))(v45, v51, v39);
    v52 = *(v20 + 96);
    if (*(v52 + 16) >= 2uLL)
    {
      v50 = *(v52 + 32);
    }

    OUTLINED_FUNCTION_18_46();
    a10 = v52;
    ObjectType = swift_getObjectType();
    v54 = *(v48 + 8);
    sub_25BCB617C();
    v93 = ObjectType;
    v54(&v96, ObjectType, v48);
    sub_25BBC0130(&a10, &v96, 0, 0);
    v85 = v87;
    v87 = v55;
    if (*(*(v55 + 16) + 16))
    {
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    (*(v48 + 16))(&a10, v93, v48);
    v59 = *(a10 + 16);
    v86 = v50;
    if (!v59)
    {
    }

    OUTLINED_FUNCTION_5_0();

    v61 = v90;
    v60 = v91;
    v62 = *(v90 + 16);
    v62(v91, v94, v32);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v32);
    v66 = v92;
    v62(v92, v95, v32);
    OUTLINED_FUNCTION_5_1();
    v70 = __swift_storeEnumTagSinglePayload(v67, v68, v69, v32);
    v84[1] = v84;
    MEMORY[0x28223BE20](v70);
    v84[-8] = v45;
    OUTLINED_FUNCTION_7_61(v84);
    MEMORY[0x28223BE20](v71);
    v72 = v87;
    v84[-6] = v87;
    v84[-5] = &off_286D4DBE0;
    v84[-4] = v66;
    v84[-3] = sub_25BC8F728;
    v84[-2] = v73;

    OUTLINED_FUNCTION_39_0();
    v74 = v85;
    sub_25BC675C0(v75, &v84[-8], v76, v77);
    if (v74)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v60);
      v78 = *(v61 + 8);
      v78(v94, v32);
      v78(v95, v32);
      sub_25BB0EA20(v66);
      OUTLINED_FUNCTION_28_32();
      v79(v45);
    }

    else
    {

      sub_25BB0EA20(v60);
      v80 = *(v61 + 8);
      v80(v94, v32);
      v80(v95, v32);
      sub_25BB0EA20(v66);
      OUTLINED_FUNCTION_28_32();
      v81(v45);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v83 = OUTLINED_FUNCTION_31(v82);
      *(v83 + 16) = xmmword_25BCBAE50;
      *(v83 + 32) = v72;
      *(v83 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v56 = sub_25BB0E2EC();
    v57 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v56);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5D70, v57, v58);
  }

  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BC8DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v118 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v16 = OUTLINED_FUNCTION_6_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_37();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v119 = v22;
  OUTLINED_FUNCTION_7();
  v23 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v124 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_0();
  v122 = (v26 - v27);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v28);
  v126 = v111 - v29;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  v32 = v111 - v31;
  v33 = sub_25BCB50EC();
  OUTLINED_FUNCTION_2();
  v123 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = sub_25BAC4018();
  v40 = sub_25BB3EE04(v39, v14);
  v121 = v41;
  if (!v40)
  {
    goto LABEL_13;
  }

  v120 = v40;
  v125 = v32;
  v42 = sub_25BAC4018();
  v43 = sub_25BB3EE04(v42, v14);
  if (!v43)
  {
    swift_unknownObjectRelease();
LABEL_13:
    v72 = sub_25BB0E2EC();
    v73 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v72);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5D80, v73, v74);
    goto LABEL_16;
  }

  v45 = v43;
  v46 = v44;
  *v38 = 0;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v116 = 1;
  *(v38 + 24) = vdupq_n_s64(1uLL);
  v47 = *MEMORY[0x277D82E18];
  v48 = *(v123 + 104);
  v114 = v33;
  v48(v38, v47, v33);
  OUTLINED_FUNCTION_29_33(v10[3], v10[4]);
  OUTLINED_FUNCTION_26_37(v10[5].n128_i64[1]);
  v49 = v10[6].n128_u64[0];
  swift_getObjectType();
  if (sub_25BC5D23C() > 1)
  {
    v50 = OUTLINED_FUNCTION_12_49();
    v51(v50);
    if (!*(a10 + 16))
    {
      OUTLINED_FUNCTION_0_25();
      OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v109, v110, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
    }

    v116 = *(a10 + 32);
  }

  v113 = v38;
  v115 = v19;
  v117 = v12;
  type metadata accessor for NativeTensorStorage(0);
  v127 = v49;
  v52 = *(v46 + 8);
  sub_25BCB617C();
  v53 = OUTLINED_FUNCTION_12_49();
  v52(v53);
  v54 = OUTLINED_FUNCTION_17_49();
  v55 = v118;
  sub_25BBC0130(v54, v56, v57, v58);
  v118 = v59;
  v112 = v55;
  ObjectType = swift_getObjectType();
  v61 = OUTLINED_FUNCTION_15_50(ObjectType);
  v62(v61);
  OUTLINED_FUNCTION_48();
  if (!v63)
  {
  }

  v64 = v119;
  v65 = v124;
  OUTLINED_FUNCTION_5_0();

  v66 = OUTLINED_FUNCTION_12_49();
  v67(v66);
  OUTLINED_FUNCTION_48();
  v68 = v117;
  if (!v69)
  {
  }

  v70 = v118;
  OUTLINED_FUNCTION_5_0();

  v71 = *(*(v70 + 16) + 16);
  v111[0] = v45;
  if (v71)
  {
    sub_25BCB617C();
  }

  v75 = v122;
  OUTLINED_FUNCTION_5_0();

  v76 = *(v65 + 16);
  v77 = v125;
  v76(v64, v125, v23);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v23);
  v76(v68, v126, v23);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v23);
  v84 = v115;
  v76(v115, v75, v23);
  OUTLINED_FUNCTION_5_1();
  v88 = __swift_storeEnumTagSinglePayload(v85, v86, v87, v23);
  v119 = v111;
  MEMORY[0x28223BE20](v88);
  v89 = v113;
  v111[-10] = v77;
  v111[-9] = v89;
  OUTLINED_FUNCTION_4_70(v111);
  *(v90 - 16) = v116;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_16_52();
  *(v92 - 64) = v77;
  *(v92 - 56) = v46;
  *(v92 - 48) = v68;
  v93 = v118;
  *(v92 - 40) = v118;
  *(v92 - 32) = &off_286D4DBE0;
  *(v92 - 24) = v84;
  *(v92 - 16) = sub_25BC8F740;
  *(v92 - 8) = v94;

  OUTLINED_FUNCTION_39_0();
  v95 = v55;
  v96 = v112;
  sub_25BC675C0(v97, v95, v98, &v128);
  if (v96)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_117();
    sub_25BB0EA20(v64);
    v99 = *(v124 + 8);
    v99(v122, v23);
    v99(v126, v23);
    sub_25BB0EA20(v84);
    sub_25BB0EA20(v117);
    v100 = OUTLINED_FUNCTION_20_38();
    (v99)(v100);
    v101 = OUTLINED_FUNCTION_14_47();
    v102(v101);
  }

  else
  {

    OUTLINED_FUNCTION_117();
    sub_25BB0EA20(v64);
    v103 = *(v124 + 8);
    v103(v122, v23);
    v103(v126, v23);
    sub_25BB0EA20(v84);
    sub_25BB0EA20(v117);
    v104 = OUTLINED_FUNCTION_20_38();
    (v103)(v104);
    v105 = OUTLINED_FUNCTION_14_47();
    v106(v105);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v108 = OUTLINED_FUNCTION_31(v107);
    *(v108 + 16) = xmmword_25BCBAE50;
    *(v108 + 32) = v93;
    *(v108 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_16:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BC8E1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v99 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v27 = OUTLINED_FUNCTION_6_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_1();
  v103 = v32;
  OUTLINED_FUNCTION_7();
  sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v100 = v34;
  v101 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_0();
  v37 = v35 - v36;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_1();
  v104 = v39;
  OUTLINED_FUNCTION_7();
  v40 = sub_25BCB50EC();
  OUTLINED_FUNCTION_2();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v46 = (v45 - v44);
  v47 = sub_25BAC4018();
  v48 = sub_25BB3EE04(v47, v25);
  if (v48)
  {
    v50 = v49;
    v51 = v48;
    *v46 = *(v20 + 192);
    v52 = *MEMORY[0x277D82E20];
    v96 = v42;
    (*(v42 + 104))(v46, v52, v40);
    v53 = *(v20 + 96);
    v54 = *(v53 + 16);
    v102 = v46;
    v97 = v40;
    v98 = v30;
    if (v54 < 2)
    {
      v55 = 1;
    }

    else
    {
      v55 = *(v53 + 32);
    }

    v94 = v55;
    v59 = v103;
    v60 = v37;
    OUTLINED_FUNCTION_18_46();
    a10 = v53;
    ObjectType = swift_getObjectType();
    v62 = *(v50 + 8);
    sub_25BCB617C();
    v103 = v51;
    v62(&v105, ObjectType, v50);
    sub_25BBC0130(&a10, &v105, 0, 0);
    v64 = v63;
    v93 = v99;
    if (*(*(v63 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v65 = v101;
    v66 = v59;
    OUTLINED_FUNCTION_5_0();

    (*(v50 + 16))(&a10, ObjectType, v50);
    v67 = *(a10 + 16);
    v99 = v64;
    v95 = ObjectType;
    if (!v67)
    {
    }

    OUTLINED_FUNCTION_5_0();

    v68 = v100;
    v69 = *(v100 + 16);
    v69(v59, v60, v101);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v101);
    v73 = v98;
    v101 = v60;
    v74 = v104;
    v69(v98, v104, v65);
    OUTLINED_FUNCTION_5_1();
    v78 = __swift_storeEnumTagSinglePayload(v75, v76, v77, v65);
    MEMORY[0x28223BE20](v78);
    *&v92[-64] = v102;
    OUTLINED_FUNCTION_7_61(v92);
    MEMORY[0x28223BE20](v79);
    v80 = v99;
    *&v92[-48] = v99;
    *&v92[-40] = &off_286D4DBE0;
    *&v92[-32] = v73;
    *&v92[-24] = sub_25BC8F7F8;
    *&v92[-16] = v81;

    OUTLINED_FUNCTION_39_0();
    v82 = v93;
    sub_25BC675C0(v83, &v92[-64], v84, v85);
    if (v82)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v66);
      v86 = *(v68 + 8);
      v86(v101, v65);
      v86(v74, v65);
      sub_25BB0EA20(v73);
      OUTLINED_FUNCTION_28_32();
      v87(v102);
    }

    else
    {

      sub_25BB0EA20(v66);
      v88 = *(v68 + 8);
      v88(v101, v65);
      v88(v74, v65);
      sub_25BB0EA20(v73);
      OUTLINED_FUNCTION_28_32();
      v89(v102);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v91 = OUTLINED_FUNCTION_31(v90);
      *(v91 + 16) = xmmword_25BCBAE50;
      *(v91 + 32) = v80;
      *(v91 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v56 = sub_25BB0E2EC();
    v57 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v56);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5D90, v57, v58);
  }

  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BC8E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v16 = OUTLINED_FUNCTION_6_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_37();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v113 = v22;
  OUTLINED_FUNCTION_7();
  v23 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_0();
  v116 = (v27 - v28);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v29);
  v120 = v106 - v30;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v31);
  v33 = v106 - v32;
  sub_25BCB50EC();
  OUTLINED_FUNCTION_2();
  v117 = v35;
  v118 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v121 = (v37 - v36);
  v38 = sub_25BAC4018();
  v39 = sub_25BB3EE04(v38, v14);
  v115 = v40;
  if (!v39)
  {
    goto LABEL_7;
  }

  v112 = v11;
  v114 = v39;
  v119 = v33;
  v41 = sub_25BAC4018();
  v42 = sub_25BB3EE04(v41, v14);
  if (!v42)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v51 = sub_25BB0E2EC();
    v52 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v51);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD5DA0, v52, v53);
    goto LABEL_17;
  }

  v44 = v42;
  v45 = v43;
  v109 = v25;
  *v121 = v10[11].n128_u8[8];
  (*(v117 + 104))();
  OUTLINED_FUNCTION_29_33(v10[3], v10[4]);
  OUTLINED_FUNCTION_26_37(v10[5].n128_i64[1]);
  v46 = v10[6].n128_u64[0];
  ObjectType = swift_getObjectType();
  v48 = sub_25BC5D23C();
  v111 = v12;
  v110 = v19;
  if (v48 <= 1)
  {
    v108 = 1;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_27_35();
    v50(v49);
    if (!*(a10 + 16))
    {
      OUTLINED_FUNCTION_0_25();
      OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v104, v105, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
    }

    v108 = *(a10 + 32);
  }

  type metadata accessor for NativeTensorStorage(0);
  v122[0] = v46;
  v54 = *(v45 + 8);
  sub_25BCB617C();
  v55 = OUTLINED_FUNCTION_27_35();
  v54(v55);
  v56 = OUTLINED_FUNCTION_17_49();
  v57 = v112;
  sub_25BBC0130(v56, v58, v59, v60);
  v62 = v61;
  v107 = v57;
  v63 = swift_getObjectType();
  v64 = OUTLINED_FUNCTION_15_50(v63);
  v65(v64);
  OUTLINED_FUNCTION_48();
  if (!v66)
  {
  }

  v67 = v109;
  OUTLINED_FUNCTION_5_0();

  v68 = *(v45 + 16);
  v109 = v45;
  v68(v122, ObjectType, v45);
  OUTLINED_FUNCTION_48();
  v69 = v111;
  v70 = v110;
  if (!v71)
  {
  }

  OUTLINED_FUNCTION_5_0();

  v72 = *(*(v62 + 16) + 16);
  v112 = v62;
  v106[2] = v44;
  if (v72)
  {
    sub_25BCB617C();
  }

  v73 = v116;
  OUTLINED_FUNCTION_5_0();

  v74 = *(v67 + 16);
  v75 = v113;
  v76 = v119;
  v74(v113, v119, v23);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v23);
  v74(v69, v120, v23);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v23);
  v74(v70, v73, v23);
  OUTLINED_FUNCTION_5_1();
  v86 = __swift_storeEnumTagSinglePayload(v83, v84, v85, v23);
  v106[1] = v106;
  MEMORY[0x28223BE20](v86);
  v87 = v121;
  v106[-10] = v76;
  v106[-9] = v87;
  OUTLINED_FUNCTION_4_70(v106);
  *(v88 - 16) = v108;
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_16_52();
  v90 = v109;
  *(v91 - 64) = v76;
  *(v91 - 56) = v90;
  v92 = v112;
  *(v91 - 48) = v69;
  *(v91 - 40) = v92;
  *(v91 - 32) = &off_286D4DBE0;
  *(v91 - 24) = v70;
  *(v91 - 16) = sub_25BC8F810;
  *(v91 - 8) = v93;

  OUTLINED_FUNCTION_39_0();
  v94 = v57;
  v95 = v107;
  sub_25BC675C0(v96, v94, v97, &v123);
  if (v95)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_117();
    sub_25BB0EA20(v75);
    v98 = *(v67 + 8);
    v98(v116, v23);
    v99 = OUTLINED_FUNCTION_20_38();
    (v98)(v99);
    sub_25BB0EA20(v70);
    sub_25BB0EA20(v69);
    v98(v119, v23);
    (*(v117 + 8))(v121, v118);
  }

  else
  {

    OUTLINED_FUNCTION_117();
    sub_25BB0EA20(v75);
    v100 = *(v67 + 8);
    v100(v116, v23);
    v101 = OUTLINED_FUNCTION_20_38();
    (v100)(v101);
    sub_25BB0EA20(v70);
    sub_25BB0EA20(v69);
    v100(v119, v23);
    (*(v117 + 8))(v121, v118);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v103 = OUTLINED_FUNCTION_31(v102);
    *(v103 + 16) = xmmword_25BCBAE50;
    *(v103 + 32) = v92;
    *(v103 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_17:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC8EE94(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EED8(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EF1C(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB44F0, type metadata accessor for Max2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EF60(uint64_t a1)
{
  result = sub_25BC8EFA4(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC8EFA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BC8EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a8;
  v37 = a7;
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v26 = a3;
  v27 = a1;
  v29 = a2;
  v28 = a9;
  v30 = sub_25BCB531C();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25BCB530C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25BCB50EC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = sub_25BCB51AC();
  (*(v18 + 16))(v20, v26, v17);
  sub_25BB45648(v36);
  memcpy(v35, v36, sizeof(v35));
  (*(v14 + 104))(v16, *MEMORY[0x277D82F78], v13);
  v21 = v30;
  v22 = v31;
  *v12 = v28;
  v12[1] = v22;
  (*(v10 + 104))(v12, *MEMORY[0x277D82F80], v21);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB518C())
  {
    sub_25BCB519C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v24 = xmmword_25BCD5DB0;
    *(v24 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BC8F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v41 = a7;
  v44 = a6;
  v34 = a5;
  v32 = a4;
  v30[2] = a3;
  v38 = a2;
  v39 = a9;
  v37 = a10;
  v35 = a11;
  v36 = sub_25BCB531C();
  v13 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_25BCB530C();
  v16 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BCB50EC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25BCB54EC();
  v23 = MEMORY[0x28223BE20](v22);
  v30[1] = a1;
  (*(v25 + 16))(v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v23);
  sub_25BCB6D8C();
  sub_25BCB51AC();
  (*(v19 + 16))(v21, v34, v18);
  sub_25BB45648(v43);
  memcpy(v42, v43, sizeof(v42));
  (*(v16 + 104))(v31, *MEMORY[0x277D82F78], v33);
  v26 = v36;
  v27 = v37;
  *v15 = v35;
  v15[1] = v27;
  (*(v13 + 104))(v15, *MEMORY[0x277D82F80], v26);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB518C())
  {
    sub_25BCB517C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v29 = xmmword_25BCD5DC0;
    *(v29 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t BFloat16.init<A>(_:)()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_109();
  v3();
  sub_25BB18A50();
  sub_25BCB60BC();
  v4 = OUTLINED_FUNCTION_9_23();
  result = v5(v4);
  *v1 = v7;
  return result;
}

uint64_t BFloat16.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_30_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_109();
  v13();
  if (sub_25BCB6F9C() < 65)
  {
    v18 = sub_25BCB6FAC();
    v19 = sub_25BCB6F8C();
    v20 = *(v8 + 8);
    v21 = OUTLINED_FUNCTION_9_23();
    v20(v21);
    result = (v20)(v12, v4);
    if (v18)
    {
      v17 = v19;
    }

    else
    {
      v17 = v19;
    }
  }

  else
  {
    sub_25BB18A50();
    sub_25BBF2100();
    sub_25BCB60DC();
    v14 = *(v8 + 8);
    v15 = OUTLINED_FUNCTION_9_23();
    v14(v15);
    result = (v14)(v12, v4);
    HIWORD(v17) = v22;
  }

  *v6 = HIWORD(v17);
  return result;
}

ValueMetadata *sub_25BC8FACC()
{
  v1 = MEMORY[0x277D84900];
  switch(*v0)
  {
    case 1:
      v1 = MEMORY[0x277D84958];
      break;
    case 2:
      v1 = MEMORY[0x277D849A8];
      break;
    case 3:
      v1 = MEMORY[0x277D83B88];
      break;
    case 4:
      v1 = MEMORY[0x277D84B78];
      break;
    case 5:
      v1 = MEMORY[0x277D84C58];
      break;
    case 6:
      v1 = MEMORY[0x277D84CC0];
      break;
    case 7:
      v1 = MEMORY[0x277D84D38];
      break;
    case 8:
      v1 = MEMORY[0x277D84DC8];
      break;
    case 9:
      v1 = &type metadata for BFloat16;
      sub_25BB18AFC();
      break;
    case 0xA:
      v1 = MEMORY[0x277D83A90];
      break;
    case 0xB:
      v1 = MEMORY[0x277D839F8];
      break;
    case 0xC:
      v1 = MEMORY[0x277D839B0];
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t static TensorScalarKind.allCases.getter()
{
  OUTLINED_FUNCTION_11_54();
  v0 = 0;
  v1 = v16;
  v2 = *(v16 + 16);
  do
  {
    v3 = byte_286D46448[v0 + 32];
    v4 = *(v16 + 24);
    if (v2 >= v4 >> 1)
    {
      OUTLINED_FUNCTION_12_50(v4);
    }

    ++v0;
    *(v16 + 16) = v2 + 1;
    *(v16 + v2++ + 32) = v3;
  }

  while (v0 != 4);
  OUTLINED_FUNCTION_11_54();
  v5 = 0;
  v6 = v16;
  v7 = *(v16 + 16);
  do
  {
    v8 = byte_286D46470[v5 + 32];
    v17 = v6;
    v9 = *(v6 + 24);
    if (v7 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_12_50(v9);
      v6 = v17;
    }

    ++v5;
    *(v6 + 16) = v7 + 1;
    *(v6 + v7++ + 32) = v8 | 0x40;
  }

  while (v5 != 4);
  sub_25BC0390C(v6);
  OUTLINED_FUNCTION_11_54();
  v10 = 0;
  v11 = v1;
  v12 = *(v1 + 16);
  do
  {
    v13 = byte_286D46498[v10 + 32];
    v18 = v11;
    v14 = *(v11 + 24);
    if (v12 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_12_50(v14);
      v11 = v18;
    }

    ++v10;
    *(v11 + 16) = v12 + 1;
    *(v11 + v12++ + 32) = v13 | 0x80;
  }

  while (v10 != 4);
  sub_25BC0390C(v11);
  sub_25BC0390C(&unk_286D464C0);
  return v1;
}

ValueMetadata *TensorScalarKind.type.getter()
{
  v1 = *v0;
  v2 = MEMORY[0x277D839B0];
  switch(v1 >> 6)
  {
    case 1:
      v1 &= 0x3Fu;
      v3 = qword_279971E18;
      goto LABEL_4;
    case 2:
      v2 = MEMORY[0x277D84DC8];
      switch(v1 & 0x3F)
      {
        case 1:
          v2 = &type metadata for BFloat16;
          sub_25BC933A0();
          break;
        case 2:
          v2 = MEMORY[0x277D83A90];
          break;
        case 3:
          v2 = MEMORY[0x277D839F8];
          break;
        default:
          return v2;
      }

      break;
    case 3:
      return v2;
    default:
      v3 = qword_279971DD8;
LABEL_4:
      v2 = v3[v1];
      break;
  }

  return v2;
}

ValueMetadata *TensorFloatingPointScalarKind.type.getter(uint64_t a1)
{
  v2 = MEMORY[0x277D84DC8];
  switch(*v1)
  {
    case 1:
      v2 = &type metadata for BFloat16;
      sub_25BC933A0();
      break;
    case 2:
      v2 = MEMORY[0x277D83A90];
      break;
    case 3:
      v2 = MEMORY[0x277D839F8];
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_25BC900BC@<X0>(uint64_t *a1@<X8>)
{
  result = static TensorScalarKind.allCases.getter();
  *a1 = result;
  return result;
}

BOOL TensorScalarKind.isCastable(to:)(unsigned __int8 *a1)
{
  v2 = *v1;
  switch(*a1 >> 6)
  {
    case 2:
      goto LABEL_4;
    case 3:
      result = v2 == 192;
      break;
    default:
      if ((v2 & 0xC0) == 0x80)
      {
        result = 0;
      }

      else
      {
LABEL_4:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t TensorScalarKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 12;
  switch(v1 >> 6)
  {
    case 1u:
      v2 = (v1 & 0x3F) + 4;
      break;
    case 2u:
      v2 = (v1 & 0x3F) + 8;
      break;
    case 3u:
      return v2;
    default:
      v2 = *v0;
      break;
  }

  return v2;
}

NeuralNetworks::TensorSignedIntegerScalarKind_optional __swiftcall TensorSignedIntegerScalarKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NeuralNetworks::TensorFloatingPointScalarKind_optional __swiftcall TensorFloatingPointScalarKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 8;
  if ((rawValue - 8) >= 4)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25BC90238@<X0>(uint64_t *a1@<X8>)
{
  result = TensorScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC90318@<X0>(uint64_t *a1@<X8>)
{
  result = TensorSignedIntegerScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC90408@<X0>(uint64_t *a1@<X8>)
{
  result = TensorUnsignedIntegerScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC90510@<X0>(uint64_t *a1@<X8>)
{
  result = TensorFloatingPointScalarKind.rawValue.getter();
  *a1 = result;
  return result;
}

void static TensorScalar.tensorScalarKind.getter()
{
  OUTLINED_FUNCTION_22_37();
  v1();
  sub_25BC9068C(v0);
}

uint64_t sub_25BC906C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_25BCB6FAC() & 1) != 0 && sub_25BCB6F9C() >= 9)
  {
    v28 = 0x80;
    if (sub_25BCB6FAC())
    {
      if (sub_25BCB6F9C() >= 8)
      {
        sub_25BC93FE0();
        sub_25BCB6F5C();
        v13 = sub_25BCB629C();
        result = (*(v9 + 8))(v12, a2);
        if (v13)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v26 = a5;
    v15 = sub_25BCB6FAC();
    v16 = sub_25BCB6F9C();
    if (v15)
    {
      if (v16 <= 8)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        v18 = sub_25BCB629C();
        v19 = *(v9 + 8);
        result = v19(v12, a2);
        if (v18)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        (*(v9 + 16))(v12, a1, a2);
        sub_25BCB6F8C();
        v19(v12, a2);
        a5 = v26;
      }

      else
      {
        sub_25BC93FE0();
        sub_25BCB6F5C();
        v17 = sub_25BCB629C();
        result = (*(v9 + 8))(v12, a2);
        a5 = v26;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_15;
    }

    a5 = v26;
    if (v16 < 8)
    {
LABEL_12:
      (*(v9 + 16))(v12, a1, a2);
      sub_25BCB6F8C();
      (*(v9 + 8))(v12, a2);
    }
  }

LABEL_15:
  if (sub_25BCB6F9C() <= 8)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v20 = a5;
    v29 = 127;
    v21 = sub_25BCB6FAC();
    v22 = sub_25BCB6F9C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v22 < 9)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_25BC93FE0();
    sub_25BCB6F5C();
    v23 = sub_25BCB629C();
    (*(v9 + 8))(v12, a2);
    a5 = v20;
    if (v23)
    {
      __break(1u);
LABEL_20:
      if (sub_25BCB6F9C() == 8 && (sub_25BCB6FAC() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v22 >= 8)
  {
    goto LABEL_18;
  }

LABEL_24:
  (*(v9 + 16))(v12, a1, a2);
  sub_25BCB6F8C();
  (*(v9 + 8))(v12, a2);
  a5 = v20;
LABEL_25:
  v24 = sub_25BCB6F8C();
  result = (*(v9 + 8))(a1, a2);
  *a5 = v24;
  return result;
}

uint64_t sub_25BC90BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _WORD *a5@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_25BCB6FAC() & 1) != 0 && sub_25BCB6F9C() >= 17)
  {
    v28 = 0x8000;
    if (sub_25BCB6FAC())
    {
      if (sub_25BCB6F9C() >= 16)
      {
        sub_25BC93F8C();
        sub_25BCB6F5C();
        v13 = sub_25BCB629C();
        result = (*(v9 + 8))(v12, a2);
        if (v13)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v26 = a5;
    v15 = sub_25BCB6FAC();
    v16 = sub_25BCB6F9C();
    if (v15)
    {
      if (v16 <= 16)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        v18 = sub_25BCB629C();
        v19 = *(v9 + 8);
        result = v19(v12, a2);
        if (v18)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        (*(v9 + 16))(v12, a1, a2);
        sub_25BCB6F8C();
        v19(v12, a2);
        a5 = v26;
      }

      else
      {
        sub_25BC93F8C();
        sub_25BCB6F5C();
        v17 = sub_25BCB629C();
        result = (*(v9 + 8))(v12, a2);
        a5 = v26;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_15;
    }

    a5 = v26;
    if (v16 < 16)
    {
LABEL_12:
      (*(v9 + 16))(v12, a1, a2);
      sub_25BCB6F8C();
      (*(v9 + 8))(v12, a2);
    }
  }

LABEL_15:
  if (sub_25BCB6F9C() <= 16)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v20 = a5;
    v29 = 0x7FFF;
    v21 = sub_25BCB6FAC();
    v22 = sub_25BCB6F9C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v22 < 17)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_25BC93F8C();
    sub_25BCB6F5C();
    v23 = sub_25BCB629C();
    (*(v9 + 8))(v12, a2);
    a5 = v20;
    if (v23)
    {
      __break(1u);
LABEL_20:
      if (sub_25BCB6F9C() == 16 && (sub_25BCB6FAC() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v22 >= 16)
  {
    goto LABEL_18;
  }

LABEL_24:
  (*(v9 + 16))(v12, a1, a2);
  sub_25BCB6F8C();
  (*(v9 + 8))(v12, a2);
  a5 = v20;
LABEL_25:
  v24 = sub_25BCB6F8C();
  result = (*(v9 + 8))(a1, a2);
  *a5 = v24;
  return result;
}

uint64_t sub_25BC91138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_25BCB6FAC() & 1) != 0 && sub_25BCB6F9C() >= 33)
  {
    v28 = 0x80000000;
    if (sub_25BCB6FAC())
    {
      if (sub_25BCB6F9C() >= 32)
      {
        sub_25BBF2FDC();
        sub_25BCB6F5C();
        v13 = sub_25BCB629C();
        result = (*(v9 + 8))(v12, a2);
        if (v13)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v26 = a5;
    v15 = sub_25BCB6FAC();
    v16 = sub_25BCB6F9C();
    if (v15)
    {
      if (v16 <= 32)
      {
        swift_getAssociatedConformanceWitness();
        sub_25BCB790C();
        sub_25BCB788C();
        v18 = sub_25BCB629C();
        v19 = *(v9 + 8);
        result = v19(v12, a2);
        if (v18)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        (*(v9 + 16))(v12, a1, a2);
        sub_25BCB6F8C();
        v19(v12, a2);
        a5 = v26;
      }

      else
      {
        sub_25BBF2FDC();
        sub_25BCB6F5C();
        v17 = sub_25BCB629C();
        result = (*(v9 + 8))(v12, a2);
        a5 = v26;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_15;
    }

    a5 = v26;
    if (v16 < 32)
    {
LABEL_12:
      (*(v9 + 16))(v12, a1, a2);
      sub_25BCB6F8C();
      (*(v9 + 8))(v12, a2);
    }
  }

LABEL_15:
  if (sub_25BCB6F9C() <= 32)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v20 = a5;
    v29 = 0x7FFFFFFF;
    v21 = sub_25BCB6FAC();
    v22 = sub_25BCB6F9C();
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v22 < 33)
    {
      goto LABEL_24;
    }

LABEL_18:
    sub_25BBF2FDC();
    sub_25BCB6F5C();
    v23 = sub_25BCB629C();
    (*(v9 + 8))(v12, a2);
    a5 = v20;
    if (v23)
    {
      __break(1u);
LABEL_20:
      if (sub_25BCB6F9C() == 32 && (sub_25BCB6FAC() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v22 >= 32)
  {
    goto LABEL_18;
  }

LABEL_24:
  (*(v9 + 16))(v12, a1, a2);
  sub_25BCB6F8C();
  (*(v9 + 8))(v12, a2);
  a5 = v20;
LABEL_25:
  v24 = sub_25BCB6F8C();
  result = (*(v9 + 8))(a1, a2);
  *a5 = v24;
  return result;
}

uint64_t sub_25BC9168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v52 = a7;
  v53 = a5;
  OUTLINED_FUNCTION_30_1();
  v8 = v7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_38();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_102_0();
  if (sub_25BCB6FAC())
  {
    OUTLINED_FUNCTION_1_77();
    if (sub_25BCB6F9C() >= 65)
    {
      v54 = 0x8000000000000000;
      OUTLINED_FUNCTION_102_0();
      if (sub_25BCB6FAC())
      {
        OUTLINED_FUNCTION_1_77();
        if (sub_25BCB6F9C() >= 64)
        {
          v15 = v52();
          OUTLINED_FUNCTION_5_63(v15);
          OUTLINED_FUNCTION_0_93();
          v16 = sub_25BCB629C();
          v17 = OUTLINED_FUNCTION_2_78();
          result = v18(v17);
          if (v16)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v51 = v8;
      OUTLINED_FUNCTION_102_0();
      v20 = sub_25BCB6FAC();
      OUTLINED_FUNCTION_1_77();
      v21 = sub_25BCB6F9C();
      if (v20)
      {
        if (v21 <= 64)
        {
          OUTLINED_FUNCTION_18_47(v21, v22, v23, MEMORY[0x277D846F0], MEMORY[0x277D846E8]);
          OUTLINED_FUNCTION_17_50(&unk_25BCC2450);
          OUTLINED_FUNCTION_16_53(v11);
          OUTLINED_FUNCTION_0_93();
          v32 = sub_25BCB629C();
          v33 = *(v13 + 8);
          v34 = OUTLINED_FUNCTION_194();
          result = v33(v34);
          if (v32)
          {
LABEL_26:
            __break(1u);
            return result;
          }

          v35 = OUTLINED_FUNCTION_4_71();
          v36(v35);
          OUTLINED_FUNCTION_102_0();
          sub_25BCB6F8C();
          v37 = OUTLINED_FUNCTION_194();
          v33(v37);
          v8 = v51;
        }

        else
        {
          v24 = v52();
          OUTLINED_FUNCTION_5_63(v24);
          OUTLINED_FUNCTION_0_93();
          v25 = sub_25BCB629C();
          v26 = OUTLINED_FUNCTION_2_78();
          result = v27(v26);
          v8 = v51;
          if (v25)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_15;
      }

      v8 = v51;
      if (v21 < 64)
      {
LABEL_12:
        v28 = OUTLINED_FUNCTION_4_71();
        v29(v28);
        OUTLINED_FUNCTION_102_0();
        sub_25BCB6F8C();
        v30 = OUTLINED_FUNCTION_2_78();
        v31(v30);
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_1_77();
  if (sub_25BCB6F9C() <= 64)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v54 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_102_0();
    v38 = sub_25BCB6FAC();
    OUTLINED_FUNCTION_1_77();
    v39 = sub_25BCB6F9C();
    if ((v38 & 1) == 0)
    {
      break;
    }

    if (v39 < 65)
    {
      goto LABEL_24;
    }

LABEL_18:
    v40 = v52();
    OUTLINED_FUNCTION_5_63(v40);
    OUTLINED_FUNCTION_109();
    v41 = sub_25BCB629C();
    v42 = OUTLINED_FUNCTION_2_78();
    v43(v42);
    if (v41)
    {
      __break(1u);
LABEL_20:
      OUTLINED_FUNCTION_1_77();
      if (sub_25BCB6F9C() == 64)
      {
        OUTLINED_FUNCTION_102_0();
        if ((sub_25BCB6FAC() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_25;
  }

  if (v39 >= 64)
  {
    goto LABEL_18;
  }

LABEL_24:
  v44 = OUTLINED_FUNCTION_4_71();
  v45(v44);
  OUTLINED_FUNCTION_102_0();
  sub_25BCB6F8C();
  v46 = OUTLINED_FUNCTION_2_78();
  v47(v46);
LABEL_25:
  OUTLINED_FUNCTION_1_77();
  v48 = sub_25BCB6F8C();
  v49 = OUTLINED_FUNCTION_9_23();
  result = v50(v49);
  *v8 = v48;
  return result;
}

uint64_t sub_25BC91A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v20[1] = a4;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (sub_25BCB6FAC() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_25BCB790C(), sub_25BCB788C(), v12 = sub_25BCB62AC(), result = (*(v8 + 8))(v10, a2), (v12))
  {
    v21 = a5;
    if (sub_25BCB6F9C() >= 8)
    {
      v22 = -1;
      v14 = sub_25BCB6FAC();
      v15 = sub_25BCB6F9C();
      if (v14)
      {
        if (v15 <= 8)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          v16 = sub_25BCB628C();
          v17 = *(v8 + 8);
          v17(v10, a2);
          if (v16)
          {
            (*(v8 + 16))(v10, a1, a2);
            sub_25BCB6F8C();
            v17(v10, a2);
          }

          goto LABEL_12;
        }
      }

      else if (v15 < 9)
      {
LABEL_11:
        (*(v8 + 16))(v10, a1, a2);
        sub_25BCB6F8C();
        (*(v8 + 8))(v10, a2);
        goto LABEL_12;
      }

      sub_25BC93E90();
      sub_25BCB6F5C();
      v18 = sub_25BCB629C();
      (*(v8 + 8))(v10, a2);
      if (v18)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v19 = sub_25BCB6F8C();
    result = (*(v8 + 8))(a1, a2);
    *v21 = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC91E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _WORD *a5@<X8>)
{
  v20[1] = a4;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (sub_25BCB6FAC() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_25BCB790C(), sub_25BCB788C(), v12 = sub_25BCB62AC(), result = (*(v8 + 8))(v10, a2), (v12))
  {
    v21 = a5;
    if (sub_25BCB6F9C() >= 16)
    {
      v22 = -1;
      v14 = sub_25BCB6FAC();
      v15 = sub_25BCB6F9C();
      if (v14)
      {
        if (v15 <= 16)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          v16 = sub_25BCB628C();
          v17 = *(v8 + 8);
          v17(v10, a2);
          if (v16)
          {
            (*(v8 + 16))(v10, a1, a2);
            sub_25BCB6F8C();
            v17(v10, a2);
          }

          goto LABEL_12;
        }
      }

      else if (v15 < 17)
      {
LABEL_11:
        (*(v8 + 16))(v10, a1, a2);
        sub_25BCB6F8C();
        (*(v8 + 8))(v10, a2);
        goto LABEL_12;
      }

      sub_25BC93E3C();
      sub_25BCB6F5C();
      v18 = sub_25BCB629C();
      (*(v8 + 8))(v10, a2);
      if (v18)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v19 = sub_25BCB6F8C();
    result = (*(v8 + 8))(a1, a2);
    *v21 = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v20[1] = a4;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (sub_25BCB6FAC() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_25BCB790C(), sub_25BCB788C(), v12 = sub_25BCB62AC(), result = (*(v8 + 8))(v10, a2), (v12))
  {
    v21 = a5;
    if (sub_25BCB6F9C() >= 32)
    {
      v22 = -1;
      v14 = sub_25BCB6FAC();
      v15 = sub_25BCB6F9C();
      if (v14)
      {
        if (v15 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          v16 = sub_25BCB628C();
          v17 = *(v8 + 8);
          v17(v10, a2);
          if (v16)
          {
            (*(v8 + 16))(v10, a1, a2);
            sub_25BCB6F8C();
            v17(v10, a2);
          }

          goto LABEL_12;
        }
      }

      else if (v15 < 33)
      {
LABEL_11:
        (*(v8 + 16))(v10, a1, a2);
        sub_25BCB6F8C();
        (*(v8 + 8))(v10, a2);
        goto LABEL_12;
      }

      sub_25BC93DE8();
      sub_25BCB6F5C();
      v18 = sub_25BCB629C();
      (*(v8 + 8))(v10, a2);
      if (v18)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v19 = sub_25BCB6F8C();
    result = (*(v8 + 8))(a1, a2);
    *v21 = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC92680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v44 = a7;
  v45 = a5;
  OUTLINED_FUNCTION_30_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_21_38();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  OUTLINED_FUNCTION_102_0();
  v15 = sub_25BCB6FAC();
  if (v15 & 1) == 0 || (OUTLINED_FUNCTION_18_47(v15, v16, v17, MEMORY[0x277D846F0], MEMORY[0x277D846E8]), OUTLINED_FUNCTION_17_50(&unk_25BCC2450), OUTLINED_FUNCTION_16_53(v14), OUTLINED_FUNCTION_0_93(), v18 = sub_25BCB62AC(), v19 = OUTLINED_FUNCTION_3_63(), result = v20(v19), (v18))
  {
    OUTLINED_FUNCTION_1_77();
    if (sub_25BCB6F9C() >= 64)
    {
      v43 = v8;
      v46 = -1;
      OUTLINED_FUNCTION_102_0();
      v22 = sub_25BCB6FAC();
      OUTLINED_FUNCTION_1_77();
      v23 = sub_25BCB6F9C();
      if (v22)
      {
        if (v23 <= 64)
        {
          OUTLINED_FUNCTION_18_47(v23, v24, v25, MEMORY[0x277D846F0], MEMORY[0x277D846E8]);
          OUTLINED_FUNCTION_17_50(&unk_25BCC2450);
          OUTLINED_FUNCTION_16_53(v14);
          OUTLINED_FUNCTION_0_93();
          v26 = sub_25BCB628C();
          v27 = *(v10 + 8);
          v28 = OUTLINED_FUNCTION_194();
          v27(v28);
          if (v26)
          {
            v29 = OUTLINED_FUNCTION_4_71();
            v30(v29);
            OUTLINED_FUNCTION_102_0();
            sub_25BCB6F8C();
            v31 = OUTLINED_FUNCTION_194();
            v27(v31);
          }

          goto LABEL_12;
        }
      }

      else if (v23 < 65)
      {
LABEL_11:
        v36 = OUTLINED_FUNCTION_4_71();
        v37(v36);
        OUTLINED_FUNCTION_102_0();
        sub_25BCB6F8C();
        v38 = OUTLINED_FUNCTION_3_63();
        v39(v38);
LABEL_12:
        v8 = v43;
        goto LABEL_13;
      }

      v32 = v44();
      OUTLINED_FUNCTION_5_63(v32);
      OUTLINED_FUNCTION_109();
      v33 = sub_25BCB629C();
      v34 = OUTLINED_FUNCTION_3_63();
      v35(v34);
      v8 = v43;
      if (v33)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_13:
    OUTLINED_FUNCTION_1_77();
    v40 = sub_25BCB6F8C();
    v41 = OUTLINED_FUNCTION_9_23();
    result = v42(v41);
    *v8 = v40;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static TensorFloatingPointScalar.tensorScalarKind.getter()
{
  OUTLINED_FUNCTION_22_37();
  result = v1();
  *v0 = v3 | 0x80;
  return result;
}

void *sub_25BC929E8()
{
  sub_25BB95A00();

  return sub_25BCB60BC();
}

uint64_t sub_25BC92A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, short float *a5@<X8>)
{
  if (sub_25BCB6F9C() < 65)
  {
    v10 = sub_25BCB6FAC();
    v11 = sub_25BCB6F8C();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    sub_25BB95A00();
    sub_25BB95A54();
    sub_25BCB60DC();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v9 = v12;
  }

  *a5 = v9;
  return result;
}

uint64_t sub_25BC92BCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25BCB789C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25BC92C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC92BCC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BC92C84(uint64_t a1)
{
  v2 = sub_25BC933F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC92CC0(uint64_t a1)
{
  v2 = sub_25BC933F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BFloat16.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B28, &qword_25BCD5E40);
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC933F4();
  sub_25BCB7B6C();
  sub_25BCB77AC();
  return (*(v4 + 8))(v7, v2);
}

uint64_t BFloat16.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7B38, &qword_25BCD5E48);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC933F4();
  sub_25BCB7B2C();
  if (!v2)
  {
    v11 = sub_25BCB76CC();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_25BC93024()
{
  sub_25BB18A50();

  return sub_25BCB60BC();
}

uint64_t sub_25BC93090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a5@<X8>)
{
  if (sub_25BCB6F9C() < 65)
  {
    v10 = sub_25BCB6FAC();
    v11 = sub_25BCB6F8C();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    sub_25BB18A50();
    sub_25BBF2100();
    sub_25BCB60DC();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v9 = v12;
  }

  *a5 = v9;
  return result;
}

void *sub_25BC931DC()
{
  sub_25BB675B0();

  return sub_25BCB60BC();
}

uint64_t sub_25BC93248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a5@<X8>)
{
  if (sub_25BCB6F9C() < 65)
  {
    v10 = sub_25BCB6FAC();
    v11 = sub_25BCB6F8C();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    sub_25BB675B0();
    sub_25BB67604();
    sub_25BCB60DC();
    result = (*(*(a2 - 8) + 8))(a1, a2);
    v9 = v12;
  }

  *a5 = v9;
  return result;
}

unint64_t sub_25BC933A0()
{
  result = qword_27FBB7B20;
  if (!qword_27FBB7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B20);
  }

  return result;
}

unint64_t sub_25BC933F4()
{
  result = qword_27FBB7B30;
  if (!qword_27FBB7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B30);
  }

  return result;
}

unint64_t sub_25BC9344C()
{
  result = qword_27FBB7B40;
  if (!qword_27FBB7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B40);
  }

  return result;
}

unint64_t sub_25BC934D4()
{
  result = qword_27FBB7B58;
  if (!qword_27FBB7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B58);
  }

  return result;
}

unint64_t sub_25BC9355C()
{
  result = qword_27FBB7B70;
  if (!qword_27FBB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B70);
  }

  return result;
}

unint64_t sub_25BC935E4()
{
  result = qword_27FBB7B88;
  if (!qword_27FBB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7B88);
  }

  return result;
}

unint64_t sub_25BC93668(uint64_t a1)
{
  result = sub_25BB18AFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BC93690(uint64_t a1)
{
  *(a1 + 8) = sub_25BC936C0();
  result = sub_25BC93714();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25BC936C0()
{
  result = qword_27FBB7BA0;
  if (!qword_27FBB7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BA0);
  }

  return result;
}

unint64_t sub_25BC93714()
{
  result = qword_27FBB7BA8;
  if (!qword_27FBB7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BA8);
  }

  return result;
}

unint64_t sub_25BC9376C()
{
  result = qword_27FBB7BB0;
  if (!qword_27FBB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TensorScalarKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3D)
  {
    if (a2 + 195 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 195) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 196;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for TensorScalarKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 195 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 195) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3C)
  {
    v6 = ((a2 - 61) >> 8) + 1;
    *result = a2 - 61;
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BC9392C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 3) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_25BC93958(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 1) & 3 | 0xC0;
  }

  *result = v2;
  return result;
}

_BYTE *sub_25BC939A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TensorFloatingPointScalar.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

uint64_t getEnumTagSinglePayload for BFloat16(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for BFloat16(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BFloat16.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BC93CE4()
{
  result = qword_27FBB7BB8;
  if (!qword_27FBB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BB8);
  }

  return result;
}

unint64_t sub_25BC93D3C()
{
  result = qword_27FBB7BC0;
  if (!qword_27FBB7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BC0);
  }

  return result;
}

unint64_t sub_25BC93D94()
{
  result = qword_27FBB7BC8;
  if (!qword_27FBB7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BC8);
  }

  return result;
}

unint64_t sub_25BC93DE8()
{
  result = qword_27FBB7BD0;
  if (!qword_27FBB7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BD0);
  }

  return result;
}

unint64_t sub_25BC93E3C()
{
  result = qword_27FBB7BD8;
  if (!qword_27FBB7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BD8);
  }

  return result;
}

unint64_t sub_25BC93E90()
{
  result = qword_27FBB7BE0;
  if (!qword_27FBB7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BE0);
  }

  return result;
}

unint64_t sub_25BC93EE4()
{
  result = qword_27FBB7BE8;
  if (!qword_27FBB7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BE8);
  }

  return result;
}

unint64_t sub_25BC93F38()
{
  result = qword_27FBB7BF0;
  if (!qword_27FBB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BF0);
  }

  return result;
}

unint64_t sub_25BC93F8C()
{
  result = qword_27FBB7BF8;
  if (!qword_27FBB7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7BF8);
  }

  return result;
}

unint64_t sub_25BC93FE0()
{
  result = qword_27FBB7C00;
  if (!qword_27FBB7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C00);
  }

  return result;
}

unint64_t sub_25BC94034()
{
  result = qword_27FBB7C08;
  if (!qword_27FBB7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C08);
  }

  return result;
}

unint64_t sub_25BC94088()
{
  result = qword_27FBB7C10;
  if (!qword_27FBB7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C10);
  }

  return result;
}

unint64_t sub_25BC940DC()
{
  result = qword_27FBB7C18;
  if (!qword_27FBB7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7C18);
  }

  return result;
}

unint64_t sub_25BC94130()
{
  result = qword_27FBB7C20[0];
  if (!qword_27FBB7C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7C20);
  }

  return result;
}

unint64_t sub_25BC941CC(void *__src, void (*a2)(uint64_t *__return_ptr, _BYTE *))
{
  v7 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  a2(&v5, __dst);
  if (v2)
  {
    __break(1u);
  }

  __dst[0] = BYTE4(v5);
  return v5 | (BYTE4(v5) << 32);
}

uint64_t sub_25BC94270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NativeTensorStorage(0);
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v9, ObjectType, a2);
  (*(a2 + 8))(&v10, ObjectType, a2);
  v8 = v10;
  if (v10 - 1 > 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_25BCD6A08[(v10 - 1)];
  }

  return sub_25BBC0CD4(&v9, &v8, v6, v4, a1, a2);
}

void sub_25BC94340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v31);
  sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v68 = v32;
  v69 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_0();
  v36 = (v34 - v35);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v65 - v38;
  v40 = sub_25BAC4018();
  v41 = sub_25BB3EE04(v40, v25);
  if (v41)
  {
    v43 = v41;
    v44 = v42;
    type metadata accessor for NativeTensorStorage(0);
    a10 = *(v20 + 56);
    v70 = *(v20 + 64);
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    sub_25BBC0130(v45, v46, v47, v48);
    v66 = v21;
    v67 = v49;
    if (*(*(v49 + 16) + 16))
    {
      sub_25BCB617C();
    }

    sub_25BCB50AC();
    OUTLINED_FUNCTION_36_22();
    sub_25BCB54FC();
    ObjectType = swift_getObjectType();
    (*(v44 + 16))(&a10, ObjectType, v44);
    if (!a10[2])
    {
    }

    OUTLINED_FUNCTION_36_22();
    sub_25BCB54FC();
    v54 = v69;
    v55 = *(v69 + 16);
    v65 = v39;
    v56 = v39;
    v57 = v68;
    v55(v29, v56, v68);
    v58 = OUTLINED_FUNCTION_2_6(v29);
    MEMORY[0x28223BE20](v58);
    *(&v65 - 4) = v43;
    *(&v65 - 3) = v44;
    *(&v65 - 2) = v36;
    *(&v65 - 1) = v20;
    v60 = v66;
    v59 = v67;
    sub_25BBF3504(v29, sub_25BC9A80C);
    if (v60)
    {

      swift_unknownObjectRelease();
      sub_25BAA6F5C(v29, &qword_27FBB4080, &qword_25BCBC638);
      v61 = *(v54 + 8);
      v61(v65, v57);
      v61(v36, v57);
    }

    else
    {
      sub_25BAA6F5C(v29, &qword_27FBB4080, &qword_25BCBC638);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v63 = OUTLINED_FUNCTION_31(v62);
      *(v63 + 16) = xmmword_25BCBAE50;
      *(v63 + 32) = v59;
      *(v63 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v64 = *(v54 + 8);
      v64(v65, v57);
      v64(v36, v57);
    }
  }

  else
  {
    v50 = sub_25BB0E2EC();
    v51 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v50);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6840, v51, v52);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC94714@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14[-v10];
  swift_getObjectType();
  v12 = sub_25BCB54EC();
  (*(*(v12 - 8) + 16))(v11, a3, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v15 = a1;
  v16 = a4;
  sub_25BC675C0(sub_25BC9A828, v14, MEMORY[0x277D84F78] + 8, a5);
  return sub_25BAA6F5C(v11, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC94880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB516C();
  sub_25BCB617C();
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB515C())
  {
    sub_25BCB50CC();
    if (v3)
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000034, 0x800000025BCE69B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](46, 0xE100000000000000);
      sub_25BB0E2EC();
      swift_allocError();
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      *(v4 + 16) = 0x2000;
      swift_willThrow();
    }
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v6 = xmmword_25BCD6840;
    *(v6 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t *sub_25BC94A70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = sub_25BAC4018();
  v6 = sub_25BB3EE04(v5, a1);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(&v22, ObjectType, v9);
    v4 = &v22;
    v11 = sub_25BC8FACC();
    if (dynamic_cast_existential_2_conditional(v11, v11, MEMORY[0x277D82DD8], &protocol descriptor for TensorScalar))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v4 = OUTLINED_FUNCTION_31(v12);
      *(v4 + 1) = xmmword_25BCBAE50;
      v13 = *(v2 + 48);
      type metadata accessor for ViewingTensorStorage();
      v14 = swift_allocObject();
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v13;
      v4[4] = v14;
      v4[5] = &off_286D4A4E0;
      sub_25BCB617C();
    }

    else
    {
      v18 = sub_25BB0E2EC();
      v19 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v18);
      OUTLINED_FUNCTION_15_51(xmmword_25BCD6850, v19, v20);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = sub_25BB0E2EC();
    v16 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v15);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6850, v16, v17);
  }

  return v4;
}

uint64_t sub_25BC94BE0(uint64_t a1)
{
  v5 = sub_25BAC4018();
  if (!sub_25BB3EE04(v5, a1))
  {
    v26 = sub_25BB0E2EC();
    v27 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v26);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6860, v27, v28);
    return v3;
  }

  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(v37, ObjectType, v7);
  v9 = sub_25BC8FACC();
  v10 = dynamic_cast_existential_2_conditional(v9, v9, MEMORY[0x277D82DD8], &protocol descriptor for TensorScalar);
  if (!v10)
  {
    v29 = sub_25BB0E2EC();
    v30 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v29);
    OUTLINED_FUNCTION_15_51(xmmword_25BCD6860, v30, v31);
    swift_unknownObjectRelease();
    return v3;
  }

  v13 = v10;
  v14 = v11;
  v15 = v12;
  v16 = *(v1 + 40);
  v40 = *(v1 + 48);
  v39 = *(v16 + 160);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_25BCB617C();
  Tensor.init(ones:scalarType:on:)(&v40, &v39, v37, &v41);
  v17 = *(v41 + 16);

  v18 = sub_25BA928B4();
  [v18 lock];

  v19 = OUTLINED_FUNCTION_20_10();
  sub_25BA92920(v19, v20, 0, v21);
  if (!v2)
  {
    [*(v17 + 224) unlock];

    OUTLINED_FUNCTION_28_33();
    v33 = sub_25BC94E48(v22, v23, v24, v25, v13, v13, v14, v15);
    v35 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = OUTLINED_FUNCTION_31(v36);
    *(v3 + 16) = xmmword_25BCBAE50;
    *(v3 + 32) = v33;
    *(v3 + 40) = v35;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v3;
  }

  [*(v17 + 224) unlock];

  __break(1u);
  return result;
}

uint64_t sub_25BC94E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v40 = a4;
  v41 = a8;
  v38 = a3;
  v39 = a7;
  v37 = a6;
  v36 = sub_25BCB564C();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 16);
  v52 = a1;
  v42 = ObjectType;
  v16(&v43, ObjectType, a2);
  v17 = *(v9 + 48);
  static ShapeInference.broadcasting(_:toRank:)(&v43, *(v17 + 16), &v45);

  v18 = v45;
  if (!v45)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_25BCB70FC();
    v43 = v45;
    v44 = v46;
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE07B0);
    v16(&v45, v42, a2);
    v32 = MEMORY[0x25F876F80](v45, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v32);

    MEMORY[0x25F876C90](0x6E6172206F742060, 0xEB0000000060206BLL);
    v45 = *(v17 + 16);
    v33 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v33);

    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE07D0);
    v45 = v43;
    v46 = v44;
    v51 = 3;
    sub_25BCB617C();
    sub_25BA97890("applied(to:_:type:)", 19, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSTensorTransformationOps.swift", 123, 2, 80, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  type metadata accessor for NativeTensorStorage(0);
  v45 = *(v9 + 48);
  v19 = *(a2 + 8);
  sub_25BCB617C();
  v19(&v43, v42, a2);
  v20 = v35;
  sub_25BBC0130(&v45, &v43, 0, 0);
  v22 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = v39;
  *(&v35 - 6) = v37;
  *(&v35 - 5) = v23;
  *(&v35 - 4) = v41;
  *(&v35 - 3) = v18;
  v24 = v40;
  *(&v35 - 2) = v38;
  *(&v35 - 1) = v24;
  sub_25BCB563C();
  v25 = sub_25BCB562C();
  if (v20)
  {
    (*(v12 + 8))(v14, v36);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v26 = v25;
    v27 = (*(v12 + 8))(v14, v36);
    v28 = MEMORY[0x28223BE20](v27);
    v29 = v39;
    *(&v35 - 8) = v37;
    *(&v35 - 7) = v29;
    v30 = v38;
    *(&v35 - 6) = v41;
    *(&v35 - 5) = v30;
    *(&v35 - 4) = v40;
    *(&v35 - 3) = v22;
    *(&v35 - 2) = v18;
    *(&v35 - 1) = v26;
    (*(a2 + 64))(sub_25BC9A854, v28);

    return v22;
  }

  return result;
}

uint64_t sub_25BC952A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v26[1] = a1;
  v28 = sub_25BCB56AC();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BCB577C();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v30 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  MEMORY[0x28223BE20](v14);
  v27 = v26 - v15;
  sub_25BB46100(v8);
  sub_25BCB578C();
  v16 = *(v6 + 8);
  v17 = v28;
  v16(v8, v28);
  ObjectType = swift_getObjectType();
  (*(v31 + 16))(&v32, ObjectType);
  sub_25BB46100(v8);
  sub_25BCB578C();

  v16(v8, v17);
  swift_getWitnessTable();
  v19 = v30;
  v20 = v27;
  sub_25BCB566C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25BCBAE50;
  *(v21 + 56) = v9;
  *(v21 + 64) = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v21 + 32));
  v23 = v29;
  (*(v29 + 32))(boxed_opaque_existential_0, v19, v9);
  v24 = *(v23 + 8);
  v24(v13, v9);
  v24(v20, v9);
  return v21;
}

uint64_t sub_25BC95600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v27 = a6;
  v28 = a3;
  v29 = a4;
  v30 = a7;
  return (*(a4 + 64))(sub_25BC9A888, v20, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BC95720(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = a12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  v21 = swift_allocObject();
  v21[1] = xmmword_25BCBAE90;
  v60 = a5;
  v59 = a8;
  if (a1)
  {
    v22 = *(*(a12 - 8) + 72);
    if (!v22)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (a2 - a1 == 0x8000000000000000 && v22 == -1)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }
  }

  v68[0] = *(a3 + 16);
  sub_25BCB617C();
  v24 = sub_25BC6FC68();
  a2 = sub_25BBFCCC8(1, v24);
  a5 = v25;
  v14 = v26;
  a8 = v27;
  v62 = v21;
  v63 = a12;
  if (v27)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    if (__OFSUB__(a8 >> 1, v14))
    {
      goto LABEL_49;
    }

    if (v29 != (a8 >> 1) - v14)
    {
      goto LABEL_50;
    }

    a8 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v14 = a7;
    v20 = a12;
    if (a8)
    {
      goto LABEL_16;
    }

    a8 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  while (1)
  {
    a8 = sub_25BABA62C(a2, a5, v14, a8);
    v14 = a7;
LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    a5 = a13;
    sub_25BCB6C0C();
    memcpy(v21 + 2, __src, 0xA0uLL);
    if (a4)
    {
      v30 = *(*(v20 - 8) + 72);
      if (!v30)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v60 - a4 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_56;
      }
    }

    v68[0] = a6;
    sub_25BCB617C();
    v32 = sub_25BC6FC68();
    a2 = sub_25BBFCCC8(1, v32);
    v34 = v33;
    a8 = v35;
    v37 = v36;
    if (v36)
    {
      sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x277D84F90];
      }

      v39 = *(v38 + 16);

      if (__OFSUB__(v37 >> 1, a8))
      {
        __break(1u);
      }

      else if (v39 == (v37 >> 1) - a8)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v21 = v62;
        v20 = v63;
        if (v40)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      swift_unknownObjectRelease();
      v21 = v62;
      v20 = v63;
    }

    sub_25BABA62C(a2, v34, a8, v37);
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:
    sub_25BCB6C0C();
    memcpy(v21 + 12, v67, 0xA0uLL);
    if (!v14)
    {
      goto LABEL_36;
    }

    v41 = *(*(v20 - 8) + 72);
    if (v41)
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_unknownObjectRelease();
    v21 = v62;
    v20 = v63;
  }

  if (v59 - v14 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_57;
  }

LABEL_36:
  ObjectType = swift_getObjectType();
  v44 = *(a10 + 16);
  v44(&v69, ObjectType, a10);
  v44(v68, ObjectType, a10);
  v45 = sub_25BC6FC68();

  v46 = sub_25BBFCCC8(1, v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  if ((v51 & 1) == 0)
  {
LABEL_37:
    sub_25BABA62C(v46, v48, v50, v52);
    v53 = v13;
    v54 = v62;
    goto LABEL_43;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);

  if (__OFSUB__(v52 >> 1, v50))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v56 != (v52 >> 1) - v50)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v57 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v53 = v13;
  v54 = v62;
  if (!v57)
  {
LABEL_43:
    swift_unknownObjectRelease();
  }

  sub_25BCB6C0C();
  memcpy(v54 + 22, v68, 0xA0uLL);
  v69 = v54;
  sub_25BCB579C();
  if (v53)
  {
    goto LABEL_58;
  }
}

void sub_25BC95CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  *&v113 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v27 = OUTLINED_FUNCTION_6_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v103 = v28 - v29;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  v111 = v31;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v104 = v20;
  v32 = *(v20 + 40);
  v33 = sub_25BA9BEA0(v32);
  sub_25BCB617C();
  v34 = 0;
  v105 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v34)
    {

      v47 = v105;
      v48 = *(v105 + 16);
      if (v48 == sub_25BAAF4F4())
      {
        type metadata accessor for NativeTensorStorage(0);
        a10 = *(v104 + 64);
        LOBYTE(v114) = *(v104 + 72);
        sub_25BCB617C();
        OUTLINED_FUNCTION_17_10();
        sub_25BBC0130(v49, v50, v51, v52);
        v54 = v53;
        v110 = v113;
        v102 = *(v105 + 16);
        if (v102)
        {
          ObjectType = swift_getObjectType();
          v55 = 0;
          v56 = 0;
          while (v56 < *(v47 + 16))
          {
            v106 = v56;
            v113 = *(v47 + 16 * v56 + 32);
            v57 = v113;
            v58 = swift_getObjectType();
            v59 = *(&v113 + 1);
            v61 = *(&v113 + 1) + 16;
            v60 = *(*(&v113 + 1) + 16);
            swift_unknownObjectRetain();

            v62 = OUTLINED_FUNCTION_99();
            v112 = v60;
            v60(v62);
            if (!*(a10 + 16))
            {
            }

            v63 = OUTLINED_FUNCTION_20_10();
            sub_25BBF5F44(v63, v64);

            v65 = sub_25BCB54EC();
            OUTLINED_FUNCTION_5_1();
            __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
            v69 = OUTLINED_FUNCTION_99();
            v112(v69);
            v70 = *(a10 + 16);
            v107 = v61;
            v108 = v57;
            if (!v70)
            {
            }

            v71 = v103;
            v72 = OUTLINED_FUNCTION_20_10();
            sub_25BBF5F44(v72, v73);

            OUTLINED_FUNCTION_5_1();
            v77 = __swift_storeEnumTagSinglePayload(v74, v75, v76, v65);
            p_ObjectType = &ObjectType;
            MEMORY[0x28223BE20](v77);
            *(&ObjectType - 6) = v55;
            *(&ObjectType - 5) = v113;
            v78 = v104;
            *(&ObjectType - 3) = v104;
            *(&ObjectType - 2) = v54;
            *(&ObjectType - 1) = &off_286D4DBE0;
            MEMORY[0x28223BE20](v79);
            OUTLINED_FUNCTION_14_1();
            v80 = ObjectType;
            *(v81 - 64) = v58;
            *(v81 - 56) = v80;
            *(v81 - 48) = v59;
            *(v81 - 40) = v82;
            *(v81 - 32) = v54;
            *(v81 - 24) = v71;
            *(v81 - 16) = sub_25BC9A8C4;
            *(v81 - 8) = v83;
            v84 = v54;
            v85 = v110;
            v86 = v111;
            sub_25BC6789C(sub_25BC9A8F0, v87, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
            v110 = v85;
            if (v85)
            {
              sub_25BAA6F5C(v86, &qword_27FBB4080, &qword_25BCBC638);
              swift_unknownObjectRelease();

              OUTLINED_FUNCTION_38_26();
              v99 = OUTLINED_FUNCTION_31_32();
              sub_25BAA6F5C(v99, v100, &qword_25BCBC638);
              goto LABEL_30;
            }

            sub_25BAA6F5C(v86, &qword_27FBB4080, &qword_25BCBC638);
            v54 = v84;

            v88 = OUTLINED_FUNCTION_31_32();
            sub_25BAA6F5C(v88, v89, &qword_25BCBC638);
            v90 = OUTLINED_FUNCTION_99();
            v112(v90);
            v91 = *(v78 + 48);
            v114 = a10;
            v92 = TensorShape.subscript.getter(v91);

            swift_unknownObjectRelease();
            v93 = __OFADD__(v55, v92);
            v55 += v92;
            if (v93)
            {
              goto LABEL_34;
            }

            v47 = v105;
            v56 = v106 + 1;
            if (v102 == v106 + 1)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_33;
        }

LABEL_27:

        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v95 = OUTLINED_FUNCTION_31(v94);
        *(v95 + 16) = xmmword_25BCBAE50;
        *(v95 + 32) = v54;
        *(v95 + 40) = &off_286D4DBE0;
      }

      else
      {

        v96 = sub_25BB0E2EC();
        v97 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v96);
        OUTLINED_FUNCTION_11_2(xmmword_25BCD6870, v97, v98);
      }

LABEL_30:
      OUTLINED_FUNCTION_16();
      return;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](v34, v32);
    }

    else
    {
      if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }
    }

    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v36 = sub_25BAC4018();
    if (*(v25 + 16) && (v37 = sub_25BAFEEB0(v36), (v38 & 1) != 0))
    {
      v39 = (*(v25 + 56) + 16 * v37);
      v41 = *v39;
      v40 = v39[1];
      swift_unknownObjectRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BAFDF7C();
        v105 = v45;
        a10 = v45;
      }

      v43 = *(v105 + 16);
      if (v43 >= *(v105 + 24) >> 1)
      {
        sub_25BAFDF7C();
        v105 = v46;
        a10 = v46;
      }

      v44 = swift_getObjectType();
      sub_25BBB9CD4(v43, v41, &a10, v44, v40);
      v34 = v35;
    }

    else
    {

      ++v34;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_25BC96278(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 136);
  if (v8)
  {
    v13 = (a5 + 16);
    ObjectType = swift_getObjectType();
    v33 = *v13;
    (*v13)(v37, ObjectType, a5);
    v46 = v37[0];
    v14 = sub_25BC6FC68();

    v15 = *(a6 + 48);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      v16 = *(v14 + 8 * v15 + 32);

      v17 = a3 * v16;
      if ((a3 * v16) >> 64 == (a3 * v16) >> 63)
      {
        v18 = sub_25BC5D954(ObjectType, a5);
        if ((v17 * v18) >> 64 == (v17 * v18) >> 63)
        {
          *(a2 + 136) = v17 * v18 + v8;
          v19 = a1[1];
          v20 = v19 == 0x10000;
          if (v19 == 0x10000)
          {
            v21 = 163840;
          }

          else
          {
            v21 = 294912;
          }

          v22 = 3;
          if (v20)
          {
            v22 = 1;
          }

          v36 = v22;
          a1[1] = v21;
          if (*(a2 + 4) == 0x10000)
          {
            v23 = 163840;
          }

          else
          {
            v23 = 294912;
          }

          *(a2 + 4) = v23;
          v33(&v46, ObjectType, a5);
          if (!*(v46 + 16))
          {
LABEL_27:
            memset(v37, 0, sizeof(v37));
            v38 = -1;
            v40 = 0;
            v41 = 0;
            v39 = 0;
            v42 = -1;
            v43 = 4;
            sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
          }

          v24 = *(v46 + 32);

          sub_25BBF69E4(v24, v36);
          v33(v37, ObjectType, a5);
          v46 = v37[0];
          v25 = sub_25BC6FC68();

          if (*(v25 + 16))
          {
            v26 = *(v25 + 32);

            sub_25BBF6A98(v26, v36);
            sub_25BBF69E4(v24, v36);
            v27 = swift_getObjectType();
            (*(a8 + 16))(v37, v27);
            v46 = v37[0];
            v28 = sub_25BC6FC68();

            if (*(v28 + 16))
            {
              v29 = *(v28 + 32);

              sub_25BBF6A98(v29, v36);
              memcpy(__dst, a1, sizeof(__dst));
              memcpy(v45, a2, sizeof(v45));
              sub_25BCB6E0C();
              sub_25BCB6D6C();
              return sub_25BCB545C();
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v31 = 0xD00000000000002CLL;
  *(v31 + 8) = 0x800000025BCE6AD0;
  *(v31 + 16) = 0x2000;
  return swift_willThrow();
}

void sub_25BC96624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v113 = v34;
  v35 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  v114 = (v39 - v40);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v104 - v42;
  v44 = sub_25BAC4018();
  v45 = sub_25BB3EE04(v44, v27);
  v122 = v46;
  v123 = v45;
  if (!v45)
  {
    v98 = sub_25BB0E2EC();
    v99 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v98);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6880, v99, v100);
    goto LABEL_20;
  }

  v47 = *(v20 + 72);
  v112 = *(v47 + 16);
  if (!v112)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_20:
    OUTLINED_FUNCTION_16();
    return;
  }

  v110 = v32;
  v108 = type metadata accessor for NativeTensorStorage(0);
  ObjectType = swift_getObjectType();
  v48 = 0;
  v49 = 0;
  v106 = *(v122 + 16);
  v107 = v122 + 16;
  v105 = (v37 + 16);
  v111 = (v37 + 8);
  v50 = (v47 + 40);
  v109 = v25;
  v51 = MEMORY[0x277D84F90];
  v52 = v114;
  v121 = v43;
  v104 = v47;
  while (v49 < *(v47 + 16))
  {
    v115 = v50;
    v116 = v49;
    v53 = *v50;
    a10 = *(v50 - 1);
    LOBYTE(v124) = v53;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    sub_25BBC0130(v54, v55, v56, v57);
    v59 = v58;
    v119 = v24;
    v60 = *(v58 + 16);

    sub_25BCB617C();
    v106(&a10, ObjectType, v122);
    v124 = a10;
    v61 = sub_25BC6FC68();

    if (!v60[2])
    {

      v60 = &unk_286D43270;
    }

    sub_25BBF5F44(v60, v61);

    v62 = *(*(v59 + 16) + 16);
    v117 = v51;
    if (v62)
    {
      sub_25BCB617C();
    }

    v63 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v63, v64);

    v65 = v52;
    v118 = swift_getObjectType();
    v66 = v59;
    v67 = *v105;
    v68 = v113;
    (*v105)(v113, v121, v35);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v35);
    v72 = v110;
    v67(v110, v65, v35);
    OUTLINED_FUNCTION_5_1();
    v76 = __swift_storeEnumTagSinglePayload(v73, v74, v75, v35);
    MEMORY[0x28223BE20](v76);
    *(&v104 - 6) = v48;
    *(&v104 - 5) = v59;
    v77 = v109;
    *(&v104 - 4) = &off_286D4DBE0;
    *(&v104 - 3) = v77;
    v78 = v122;
    *(&v104 - 2) = v123;
    *(&v104 - 1) = v78;
    MEMORY[0x28223BE20](v79);
    OUTLINED_FUNCTION_14_1();
    v80 = v119;
    v81 = v118;
    *(v82 - 64) = ObjectType;
    *(v82 - 56) = v81;
    *(v82 - 48) = v83;
    *(v82 - 40) = v84;
    *(v82 - 32) = v66;
    *(v82 - 24) = v72;
    *(v82 - 16) = sub_25BC9A908;
    *(v82 - 8) = v85;
    sub_25BC6789C(sub_25BC9AB74, v86, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v119 = v80;
    if (v80)
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_38_26();
      sub_25BAA6F5C(v68, &qword_27FBB4080, &qword_25BCBC638);
      v101 = *v111;
      (*v111)(v65, v35);
      v101(v121, v35);
      v102 = OUTLINED_FUNCTION_34_0();
      sub_25BAA6F5C(v102, v103, &qword_25BCBC638);

      goto LABEL_20;
    }

    sub_25BAA6F5C(v68, &qword_27FBB4080, &qword_25BCBC638);
    v87 = *v111;
    (*v111)(v65, v35);
    v87(v121, v35);
    sub_25BAA6F5C(v72, &qword_27FBB4080, &qword_25BCBC638);
    v88 = v66;
    v89 = *(v77 + 64);
    a10 = *(v66 + 16);
    v90 = TensorShape.subscript.getter(v89);
    v91 = __OFADD__(v48, v90);
    v48 += v90;
    v52 = v114;
    if (v91)
    {
      goto LABEL_22;
    }

    v51 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAFDF7C();
      v51 = v96;
    }

    v92 = v88;
    v93 = *(v51 + 16);
    v24 = v119;
    v94 = v116;
    if (v93 >= *(v51 + 24) >> 1)
    {
      sub_25BAFDF7C();
      v94 = v116;
      v51 = v97;
    }

    v49 = v94 + 1;
    *(v51 + 16) = v93 + 1;
    v95 = v51 + 16 * v93;
    *(v95 + 32) = v92;
    *(v95 + 40) = &off_286D4DBE0;
    v50 = v115 + 16;
    v47 = v104;
    if (v112 == v49)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_25BC96C08(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8)
  {
    ObjectType = swift_getObjectType();
    v34 = *(a5 + 16);
    v35 = ObjectType;
    v34(v36, ObjectType, a5);
    v45 = v36[0];
    v14 = sub_25BC6FC68();

    v15 = *(a6 + 64);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      v16 = *(v14 + 8 * v15 + 32);

      v17 = a3 * v16;
      if ((a3 * v16) >> 64 == (a3 * v16) >> 63)
      {
        v18 = sub_25BC5D954(v35, a5);
        if ((v17 * v18) >> 64 == (v17 * v18) >> 63)
        {
          *(a1 + 136) = v17 * v18 + v8;
          v19 = *(a1 + 4);
          v20 = v19 == 0x10000;
          if (v19 == 0x10000)
          {
            v21 = 163840;
          }

          else
          {
            v21 = 294912;
          }

          if (v20)
          {
            v22 = 1;
          }

          else
          {
            v22 = 3;
          }

          *(a1 + 4) = v21;
          if (a2[1] == 0x10000)
          {
            v23 = 163840;
          }

          else
          {
            v23 = 294912;
          }

          a2[1] = v23;
          v34(&v45, v35, a5);
          if (!*(v45 + 16))
          {
LABEL_27:
            memset(v36, 0, sizeof(v36));
            v37 = -1;
            v39 = 0;
            v40 = 0;
            v38 = 0;
            v41 = -1;
            v42 = 4;
            sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
          }

          v24 = *(v45 + 32);

          sub_25BBF69E4(v24, v22);
          v25 = swift_getObjectType();
          (*(a8 + 16))(v36, v25);
          v45 = v36[0];
          v26 = sub_25BC6FC68();

          if (*(v26 + 16))
          {
            v27 = *(v26 + 32);

            sub_25BBF6A98(v27, v22);
            sub_25BBF69E4(v24, v22);
            v34(v36, v35, a5);
            v45 = v36[0];
            v28 = sub_25BC6FC68();

            if (*(v28 + 16))
            {
              v29 = *(v28 + 32);

              sub_25BBF6A98(v29, v22);
              memcpy(__dst, a1, sizeof(__dst));
              memcpy(v44, a2, sizeof(v44));
              sub_25BCB6E0C();
              sub_25BCB6D6C();
              return sub_25BCB545C();
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v31 = 0xD00000000000002BLL;
  *(v31 + 8) = 0x800000025BCE6B00;
  *(v31 + 16) = 0x2000;
  return swift_willThrow();
}

uint64_t sub_25BC96FA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BAC4018();
  v5 = sub_25BB3EE04(v4, a1);
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = type metadata accessor for NativeTensorStorage(0);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(&v19, ObjectType, v8);
    v18 = *(v2 + 48);
    swift_unknownObjectRetain();

    sub_25BBC0694(&v19, &v18, v9, v7, v8);
    v12 = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v2 = OUTLINED_FUNCTION_31(v13);
    *(v2 + 16) = xmmword_25BCBAE50;
    *(v2 + 32) = v12;
    *(v2 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_25BB0E2EC();
    v15 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v14);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD6890, v15, v16);
  }

  return v2;
}

void sub_25BC970E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  a22 = v23;
  a23 = v24;
  v45 = v25;
  v27 = v26;
  v44 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(v30 + 8))(&a13, ObjectType, v30);
  a12 = *(v27 + 48);
  v42 = sub_25BC5DA5C();
  (*(v37 + 104))(v40, *MEMORY[0x277D84660], v35);
  sub_25BAA83F4(v34, v32, &a13, v44, v45, &a12, v42);
  (*(v37 + 8))(v40, v35);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC97258@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 80))
  {
    case 1:
      v15 = sub_25BBD1FD0();
      LODWORD(v17) = 0;
      BYTE4(v17) = 7;
      sub_25BA97890("bnnsReductionFunction", 21, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSTensorTransformationOps.swift", 123, 2, 265, v11, v14, v15, v10, 0xD000000000000031, 0x800000025BCE6BD0, 0, 0, 0, 0, 0, 0, v17, v18, v19, v20, v21);
    case 2:
      v3 = MEMORY[0x277D82EF0];
      goto LABEL_6;
    case 3:
      v3 = MEMORY[0x277D82EF8];
      goto LABEL_6;
    case 4:
      v3 = MEMORY[0x277D82F28];
      goto LABEL_6;
    case 5:
      v8 = sub_25BCB52EC();
      v6 = a1;
      v7 = 1;
      goto LABEL_7;
    case 6:
      v16 = sub_25BBD1FD0();
      LODWORD(v17) = 0;
      BYTE4(v17) = 7;
      sub_25BA97890("bnnsReductionFunction", 21, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSTensorTransformationOps.swift", 123, 2, 278, v13, v14, v16, v12, 0xD000000000000031, 0x800000025BCE6B70, 0, 0, 0, 0, 0, 0, v17, v18, v19, v20, v21);
    default:
      v3 = MEMORY[0x277D82F00];
LABEL_6:
      v4 = *v3;
      v5 = sub_25BCB52EC();
      (*(*(v5 - 8) + 104))(a1, v4, v5);
      v6 = a1;
      v7 = 0;
      v8 = v5;
LABEL_7:

      return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  }
}

void sub_25BC97434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  a22 = v26;
  a23 = v27;
  v176 = v24;
  v28 = v23;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v32 = OUTLINED_FUNCTION_6_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_0();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_11();
  v169 = v37;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_11();
  v168 = v39;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_11();
  v171 = v41;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_11();
  v44 = v43;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4_1();
  v167 = v46;
  v47 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v174 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4_0();
  v172 = v50 - v51;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_11();
  v175 = v53;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_11();
  v170 = v55;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v57);
  v59 = &v160 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = &v160 - v61;
  v63 = sub_25BAC4018();
  v177 = sub_25BB3EE04(v63, v30);
  if (!v177)
  {
    goto LABEL_8;
  }

  v165 = v64;
  v65 = sub_25BAC4018();
  v66 = sub_25BB3EE04(v65, v30);
  v166 = v67;
  v173 = v66;
  if (!v66)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    v72 = sub_25BBD1FD0();
    v74 = v73;
    v75 = sub_25BB0E2EC();
    v76 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v75);
    *v77 = v72;
    v77[1] = v74;
    OUTLINED_FUNCTION_9_58(v76, v77);
    goto LABEL_9;
  }

  v68 = sub_25BAC4018();
  v164 = sub_25BB3EE04(v68, v30);
  if (!v164)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v70 = *(v23 + 80);
  v71 = v69;
  v163 = v35;
  switch(v70)
  {
    case 5:

      goto LABEL_12;
    default:
      v78 = sub_25BCB789C();

      if (v78)
      {
LABEL_12:
        v162 = type metadata accessor for NativeTensorStorage(0);
        ObjectType = swift_getObjectType();
        (*(v71 + 16))(v178, ObjectType, v71);
        (*(v71 + 8))(&a13, ObjectType, v71);
        v81 = v176;
        v82 = v44;
        v83 = sub_25BBC0BE0();
        v176 = v81;
      }

      else
      {
        OUTLINED_FUNCTION_26_38();
        v80 = swift_unknownObjectRetain();
        v82 = v44;
        v83 = sub_25BC94270(v80, v71);
      }

      v84 = *(v28 + 48);
      v162 = v83;
      if (v84)
      {
        if (v84 != 2)
        {
          v178[0] = sub_25BBD1FD0();
          v178[1] = v152;
          OUTLINED_FUNCTION_13_50(0x800000025BCE6B30);
          OUTLINED_FUNCTION_24_29();
          sub_25BA97890(v153, v154, v155, v156, v157, v158, 315, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
        }

        swift_getObjectType();
        OUTLINED_FUNCTION_4_72();
        v95();
        OUTLINED_FUNCTION_14_48();
        v96 = v170;
        if (!v97)
        {
        }

        v98 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v98, v99);

        swift_getObjectType();
        OUTLINED_FUNCTION_4_72();
        v171 = v100;
        v101();
        OUTLINED_FUNCTION_14_48();
        if (!v102)
        {
        }

        v103 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v103, v104);

        if (*(*(v83 + 16) + 16))
        {
          sub_25BCB617C();
        }

        v124 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v124, v125);

        v126 = v174;
        v127 = *(v174 + 16);
        v128 = v168;
        (v127)(v168, v175, v47);
        OUTLINED_FUNCTION_2_6(v128);
        v129 = v169;
        (v127)(v169, v96, v47);
        OUTLINED_FUNCTION_2_6(v129);
        v130 = v163;
        OUTLINED_FUNCTION_13_24();
        v127();
        v131 = OUTLINED_FUNCTION_2_6(v130);
        v161 = &v160;
        MEMORY[0x28223BE20](v131);
        OUTLINED_FUNCTION_14_1();
        v132 = v165;
        *(v133 - 64) = v177;
        *(v133 - 56) = v132;
        v134 = v162;
        *(v133 - 48) = v129;
        *(v133 - 40) = v134;
        *(v133 - 32) = &off_286D4DBE0;
        *(v133 - 24) = v130;
        *(v133 - 16) = sub_25BC9A9A0;
        *(v133 - 8) = v28;
        v135 = v176;
        sub_25BC675C0(sub_25BC9A9BC, v136, MEMORY[0x277D84F78] + 8, &a20);
        if (v135)
        {
          OUTLINED_FUNCTION_26_38();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_117();
          sub_25BAA6F5C(v128, &qword_27FBB4080, &qword_25BCBC638);
          v137 = *(v126 + 8);
          v137(v172, v47);
          v138 = OUTLINED_FUNCTION_25_34();
          (v137)(v138);
          v137(v170, v47);
          sub_25BAA6F5C(v163, &qword_27FBB4080, &qword_25BCBC638);
          v122 = v129;
          goto LABEL_33;
        }

        v123 = v126;
        v62 = v170;
      }

      else
      {
        v170 = v82;
        v172 = *(v28 + 40);
        swift_getObjectType();
        OUTLINED_FUNCTION_4_72();
        v175 = v85;
        v86();
        OUTLINED_FUNCTION_14_48();
        if (!v87)
        {
        }

        v88 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v88, v89);

        swift_getObjectType();
        OUTLINED_FUNCTION_4_72();
        v90();
        OUTLINED_FUNCTION_14_48();
        if (!v91)
        {
        }

        v92 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v92, v93);

        v94 = v59;
        if (*(*(v83 + 16) + 16))
        {
          sub_25BCB617C();
        }

        v105 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v105, v106);

        v107 = *(v174 + 16);
        v108 = v167;
        v107(v167, v62, v47);
        OUTLINED_FUNCTION_2_6(v108);
        v109 = v170;
        v168 = v94;
        v107(v170, v94, v47);
        OUTLINED_FUNCTION_2_6(v109);
        v110 = v171;
        v169 = v25;
        v107(v171, v25, v47);
        v111 = OUTLINED_FUNCTION_2_6(v110);
        v161 = &v160;
        MEMORY[0x28223BE20](v111);
        OUTLINED_FUNCTION_33_29();
        *(v112 - 16) = v113;
        *(v112 - 8) = v28;
        MEMORY[0x28223BE20](v114);
        OUTLINED_FUNCTION_14_1();
        v115 = v165;
        *(v116 - 64) = v177;
        *(v116 - 56) = v115;
        v117 = v162;
        *(v116 - 48) = v109;
        *(v116 - 40) = v117;
        *(v116 - 32) = &off_286D4DBE0;
        *(v116 - 24) = v110;
        *(v116 - 16) = sub_25BC9A9D4;
        *(v116 - 8) = v118;
        v119 = v176;
        sub_25BC675C0(sub_25BC9AB8C, v120, MEMORY[0x277D84F78] + 8, &a20);
        if (v119)
        {
          OUTLINED_FUNCTION_26_38();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_117();
          sub_25BAA6F5C(v108, &qword_27FBB4080, &qword_25BCBC638);
          v121 = *(v174 + 8);
          v121(v169, v47);
          v121(v168, v47);
          v121(v62, v47);
          sub_25BAA6F5C(v171, &qword_27FBB4080, &qword_25BCBC638);
          v122 = v170;
LABEL_33:
          sub_25BAA6F5C(v122, &qword_27FBB4080, &qword_25BCBC638);
          break;
        }

        v123 = v174;
        v172 = v169;
        v175 = v168;
        v163 = v171;
      }

      OUTLINED_FUNCTION_28_33();
      sub_25BAA6F5C(v139, v140, v141);
      v142 = *(v123 + 8);
      v142(v172, v47);
      v143 = OUTLINED_FUNCTION_25_34();
      (v142)(v143);
      v142(v62, v47);
      OUTLINED_FUNCTION_28_33();
      sub_25BAA6F5C(v144, v145, v146);
      OUTLINED_FUNCTION_28_33();
      sub_25BAA6F5C(v147, v148, v149);
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v151 = OUTLINED_FUNCTION_31(v150);
      *(v151 + 16) = xmmword_25BCBAE50;
      *(v151 + 32) = v162;
      *(v151 + 40) = &off_286D4DBE0;
      OUTLINED_FUNCTION_26_38();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      break;
  }

LABEL_9:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC97F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB63A0, &qword_25BCC9098);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18[-v9];
  sub_25BC97258(&v18[-v9]);
  sub_25BCB6E0C();
  v11 = sub_25BCB6D6C();
  v19 = a2;
  v20 = a3;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = a4;
  v26 = v10;
  if ((sub_25BC941CC(a1, sub_25BC9A9F0) & 0x1FFFFFFFFLL) != 0)
  {
    v15 = sub_25BCB547C();
    sub_25BC9AA28(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D83080], v15);
    swift_willThrow();
  }

  return sub_25BAA6F5C(v10, &qword_27FBB63A0, &qword_25BCC9098);
}

uint64_t sub_25BC98130(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB63A0, &qword_25BCC9098);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  sub_25BC97258(&v16[-v7]);
  sub_25BCB6E0C();
  v9 = sub_25BCB6D6C();
  v17 = a2;
  v18 = a3;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v8;
  if ((sub_25BC941CC(a1, sub_25BC9AA70) & 0x1FFFFFFFFLL) != 0)
  {
    v13 = sub_25BCB547C();
    sub_25BC9AA28(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D83080], v13);
    swift_willThrow();
  }

  return sub_25BAA6F5C(v8, &qword_27FBB63A0, &qword_25BCC9098);
}

void sub_25BC982F8()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v161 = v7 - v8;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_11();
  v157 = v11;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_11();
  v156 = v13;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_11();
  v158 = v15;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  v155 = v17;
  v18 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v163 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v160 = v21 - v22;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_11();
  v164 = v24;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_11();
  v27 = v26;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_11();
  v30 = v29;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_11();
  v162 = v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  v35 = &v149 - v34;
  v36 = sub_25BAC4018();
  v37 = sub_25BB3EE04(v36, v4);
  v165 = v38;
  v166 = v37;
  if (v37)
  {
    v39 = sub_25BAC4018();
    v40 = sub_25BB3EE04(v39, v4);
    v159 = v41;
    if (v40)
    {
      v42 = v40;
      v150 = v2;
      type metadata accessor for NativeTensorStorage(0);
      v167[0] = *(v0 + 80);
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_10();
      sub_25BBC0130(v43, v44, v45, v46);
      v48 = v47;
      v152 = v1;
      v49 = *(v0 + 56);
      v154 = v42;
      if (v49)
      {
        if (v49 != 2)
        {
          v167[0] = sub_25BC3D690();
          v167[1] = v141;
          OUTLINED_FUNCTION_13_50(0x800000025BCE6C10);
          OUTLINED_FUNCTION_24_29();
          sub_25BA97890(v142, v143, v144, v145, v146, v147, 391, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
        }

        ObjectType = swift_getObjectType();
        v72 = v159;
        v73 = v159 + 16;
        v74 = *(v159 + 16);
        v153 = v48;

        v158 = ObjectType;
        v74(v167, ObjectType, v72);
        v75 = v166;
        v76 = v161;
        if (!*(v167[0] + 16))
        {
        }

        v77 = v163;
        v78 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v78, v79);

        swift_getObjectType();
        OUTLINED_FUNCTION_4_72();
        v80();
        OUTLINED_FUNCTION_14_48();
        if (!v81)
        {
        }

        v82 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v82, v83);

        if (*(*(v153 + 16) + 16))
        {
          sub_25BCB617C();
        }

        v105 = v160;
        v106 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v106, v107);

        v108 = *(v77 + 16);
        v109 = v157;
        v108(v157, v27, v18);
        OUTLINED_FUNCTION_2_6(v109);
        v162 = v27;
        v110 = v150;
        v108(v150, v164, v18);
        OUTLINED_FUNCTION_2_6(v110);
        v108(v76, v105, v18);
        v111 = OUTLINED_FUNCTION_2_6(v76);
        v151 = &v149;
        MEMORY[0x28223BE20](v111);
        OUTLINED_FUNCTION_14_1();
        v112 = v165;
        *(v113 - 64) = v75;
        *(v113 - 56) = v112;
        v114 = v153;
        *(v113 - 48) = v110;
        *(v113 - 40) = v114;
        *(v113 - 32) = &off_286D4DBE0;
        *(v113 - 24) = v76;
        *(v113 - 16) = sub_25BC98CEC;
        *(v113 - 8) = 0;
        v115 = OUTLINED_FUNCTION_22_38();
        OUTLINED_FUNCTION_37_27(v115, v116, v117, v158, v118);
        if (v73)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_38_26();
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_49_0();
          sub_25BAA6F5C(v119, v120, v121);
          v122 = *(v77 + 8);
          v122(v160, v18);
          v123 = OUTLINED_FUNCTION_25_34();
          (v122)(v123);
          v122(v162, v18);
          OUTLINED_FUNCTION_49_0();
          sub_25BAA6F5C(v124, v125, v126);
          OUTLINED_FUNCTION_49_0();
          goto LABEL_24;
        }
      }

      else
      {
        v161 = *(v0 + 40);
        v50 = swift_getObjectType();
        v51 = v159;
        v52 = v159 + 16;
        v53 = *(v159 + 16);

        v164 = v50;
        v53(v167, v50, v51);
        OUTLINED_FUNCTION_14_48();
        if (!v54)
        {
        }

        v55 = v158;
        v56 = v30;
        v57 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v57, v58);

        swift_getObjectType();
        OUTLINED_FUNCTION_4_72();
        v59();
        OUTLINED_FUNCTION_14_48();
        v60 = v155;
        if (!v61)
        {
        }

        v62 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v62, v63);

        v64 = v48;
        if (*(*(v48 + 16) + 16))
        {
          sub_25BCB617C();
        }

        v84 = OUTLINED_FUNCTION_20_10();
        sub_25BBF5A38(v84, v85);

        v86 = v56;
        v87 = *(v163 + 16);
        OUTLINED_FUNCTION_13_24();
        v87();
        OUTLINED_FUNCTION_2_6(v60);
        (v87)(v55, v162, v18);
        OUTLINED_FUNCTION_2_6(v55);
        v88 = v156;
        v160 = v86;
        (v87)(v156, v86, v18);
        v89 = OUTLINED_FUNCTION_2_6(v88);
        v151 = &v149;
        MEMORY[0x28223BE20](v89);
        OUTLINED_FUNCTION_33_29();
        *(v90 - 16) = v91;
        MEMORY[0x28223BE20](v92);
        OUTLINED_FUNCTION_14_1();
        v93 = v165;
        *(v94 - 64) = v166;
        *(v94 - 56) = v93;
        *(v94 - 48) = v55;
        *(v94 - 40) = v64;
        *(v94 - 32) = &off_286D4DBE0;
        *(v94 - 24) = v88;
        *(v94 - 16) = sub_25BC9AAA8;
        *(v94 - 8) = v95;
        v96 = OUTLINED_FUNCTION_22_38();
        OUTLINED_FUNCTION_37_27(v96, v97, v98, v164, v99);
        if (v52)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_38_26();
          OUTLINED_FUNCTION_117();
          sub_25BAA6F5C(v60, &qword_27FBB4080, &qword_25BCBC638);
          v100 = *(v163 + 8);
          v100(v160, v18);
          v100(v162, v18);
          v101 = OUTLINED_FUNCTION_34_0();
          (v100)(v101);
          sub_25BAA6F5C(v88, &qword_27FBB4080, &qword_25BCBC638);
          v102 = v158;
          v103 = &qword_27FBB4080;
          v104 = &qword_25BCBC638;
LABEL_24:
          sub_25BAA6F5C(v102, v103, v104);
          goto LABEL_25;
        }

        v153 = v64;
        v77 = v163;
        v164 = v162;
        v161 = v88;
        v162 = v35;
      }

      v127 = v153;

      OUTLINED_FUNCTION_49_0();
      sub_25BAA6F5C(v128, v129, v130);
      v131 = *(v77 + 8);
      v131(v160, v18);
      v132 = OUTLINED_FUNCTION_25_34();
      (v131)(v132);
      v131(v162, v18);
      OUTLINED_FUNCTION_49_0();
      sub_25BAA6F5C(v133, v134, v135);
      OUTLINED_FUNCTION_49_0();
      sub_25BAA6F5C(v136, v137, v138);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v140 = OUTLINED_FUNCTION_31(v139);
      *(v140 + 16) = xmmword_25BCBAE50;
      *(v140 + 32) = v127;
      *(v140 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  v65 = sub_25BC3D690();
  v67 = v66;
  v68 = sub_25BB0E2EC();
  v69 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v68);
  *v70 = v65;
  v70[1] = v67;
  OUTLINED_FUNCTION_9_58(v69, v70);
LABEL_25:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC98C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  return sub_25BCB550C();
}

uint64_t sub_25BC98CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  return sub_25BCB552C();
}

uint64_t sub_25BC98D70(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_25BAC4018();
  v7 = sub_25BB3EE04(v6, a1);
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v11 = type metadata accessor for NativeTensorStorage(0);
    v20 = *(v4 + 72);
    v19 = *(v4 + 80);
    swift_unknownObjectRetain();

    sub_25BCB617C();
    sub_25BBC0838(&v20, &v19, v11, v9, v10);
    if (!v3)
    {
      v16 = v12;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v4 = OUTLINED_FUNCTION_31(v17);
      *(v4 + 16) = xmmword_25BCBAE50;
      *(v4 + 32) = v16;
      *(v4 + 40) = &off_286D4DBE0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_25BB0E2EC();
    v14 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v13);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD68A0, v14, v15);
  }

  return v4;
}

uint64_t sub_25BC98EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  (*(a4 + 16))(&v16, ObjectType, a4);
  v12 = v16;
  (*(a4 + 8))(&v15, ObjectType, a4);
  LOBYTE(a4) = v15;
  v13 = sub_25BCA283C();
  sub_25BC98FAC(a1, a2, v12, a4, v13, a6);
}

void sub_25BC98FAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SliceOperation();
  v7 = sub_25BC6FC68();
  v8 = 0;
  v9 = 0;
  v29 = *(v7 + 16);
  v28 = a5;
  v10 = (a5 + 48);
  v11 = MEMORY[0x277D84F90];
  v27 = v7;
  while (v29 != v9)
  {
    if (v9 >= *(v7 + 16))
    {
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
      goto LABEL_28;
    }

    v12 = *(v28 + 16);
    if (v9 == v12)
    {
      break;
    }

    v13 = v9 + 1;
    if (v9 >= v12)
    {
      goto LABEL_23;
    }

    v14 = *(v7 + 8 * v9 + 32);
    v15 = v14 * *v10;
    if ((v14 * *v10) >> 64 != v15 >> 63)
    {
      goto LABEL_24;
    }

    v16 = *(v10 - 2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BA96630(0, *(v11 + 16) + 1, 1, v11);
      v11 = v21;
    }

    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_25BA96630(v17 > 1, v18 + 1, 1, v11);
      v11 = v22;
    }

    *(v11 + 16) = v18 + 1;
    *(v11 + 8 * v18 + 32) = v15;
    v19 = v14 * v16;
    if ((v14 * v16) >> 64 != (v14 * v16) >> 63)
    {
      goto LABEL_25;
    }

    v10 += 3;
    v9 = v13;
    v20 = __OFADD__(v8, v19);
    v8 += v19;
    v7 = v27;
    if (v20)
    {
      goto LABEL_26;
    }
  }

  if ((a4 - 1) > 0xAu)
  {
    v23 = 1;
  }

  else
  {
    v23 = qword_25BCD6A08[(a4 - 1)];
  }

  if ((v8 * v23) >> 64 != (v8 * v23) >> 63)
  {
    goto LABEL_27;
  }

  if (!a1 || !__OFSUB__(a2 - a1, v8 * v23))
  {
    sub_25BC991EC();

    return;
  }

LABEL_28:
  __break(1u);
}

void sub_25BC991EC()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v32 = v3;
  v60 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *(v2 + 8);
  if (v18 > 0xC || ((1 << v18) & 0x1777) == 0)
  {
    v26 = sub_25BB0E2EC();
    v27 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v26);
    OUTLINED_FUNCTION_15_51(xmmword_25BCD68B0, v27, v28);
LABEL_12:
    OUTLINED_FUNCTION_16();
    return;
  }

  v29 = v15;
  v30 = v14;
  v31 = v0;
  v19 = *v2;
  v20 = sub_25BCB6F2C();
  v21 = sub_25BAFFC44(v19);
  if (!v21[2])
  {

    v21 = &unk_286D464E8;
  }

  sub_25BBF5A38(v21, 0);

  v42 = v18;
  sub_25BCB617C();
  sub_25BBF678C(v20, v17, &v42, v60, v43);
  if (sub_25BB456E4(v43) != 1)
  {
    memcpy(v44, v43, sizeof(v44));
    if (v19[2])
    {
      sub_25BCB617C();
    }

    else
    {
      v19 = &unk_286D46510;
    }

    if (!v19[2])
    {
    }

    v22 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v22);
    sub_25BCB54FC();
    v23 = sub_25BCB54CC();
    sub_25BCB54BC();
    sub_25BCB54DC();
    v42 = v18;
    v24 = sub_25BBF4F40();
    v33 = v18;
    v25 = sub_25BBF4F40();
    (*(v29 + 8))(v12, v30);
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v45 = 0;
    v46 = v23;
    v54 = v41;
    v55 = v32;
    v56 = v24;
    v57 = 0;
    v58 = v25;
    v59 = 1065353216;
    sub_25BCB6E0C();
    OUTLINED_FUNCTION_17_10();
    sub_25BCB6D6C();
    sub_25BCB545C();
    goto LABEL_12;
  }

  __break(1u);
}

void sub_25BC99570()
{
  OUTLINED_FUNCTION_17_1();
  v71 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - v7;
  v9 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = sub_25BAC4018();
  v17 = sub_25BB3EE04(v16, v4);
  v80 = v18;
  if (!v17)
  {
    goto LABEL_16;
  }

  v19 = v17;
  v20 = sub_25BAC4018();
  v21 = sub_25BB3EE04(v20, v4);
  v77 = v22;
  v78 = v21;
  if (!v21)
  {
    swift_unknownObjectRelease();
LABEL_16:
    v44 = sub_25BB0E2EC();
    v45 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v44);
    *v46 = 0xD000000000000013;
    v46[1] = 0x800000025BCE0890;
    OUTLINED_FUNCTION_9_58(v45, v46);
    goto LABEL_22;
  }

  v69 = v8;
  v70 = v0;
  v76 = *(v0 + 48);
  v23 = *(v76 + 16);
  v24 = MEMORY[0x277D84F90];
  v79 = v19;
  if (v23)
  {
    v65 = v15;
    v66 = v2;
    v67 = v11;
    v68 = v9;
    sub_25BAA21EC(0, v23, 0);
    ObjectType = swift_getObjectType();
    v73 = *(v77 + 16);
    v74 = v77 + 16;
    v72 = swift_getObjectType();
    v25 = *(v80 + 16);
    v26 = 4;
    do
    {
      v73(&v89, ObjectType, v77);
      v27 = *(v89 + 16);
      if (v26 - 4 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v89 + 8 * v26);

      v25(&v81, v72, v80);
      v27 = *(v81 + 16);
      if (v26 - 4 >= v27)
      {
        goto LABEL_26;
      }

      v29 = *(v81 + 8 * v26);

      v27 = v28 - v29;
      if (__OFSUB__(v28, v29))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v82[1] = 0;
        v82[2] = 0;
        v82[0] = v26 - 4;
        v83 = -1;
        v85 = 0;
        v86 = 0;
        v84 = v27;
        v87 = -1;
        v88 = 4;
        sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
      }

      v30 = *(v76 + 8 * v26);
      v31 = v27 - v30;
      if (__OFSUB__(v27, v30))
      {
        goto LABEL_25;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_25BAA21EC(v32 > 1, v33 + 1, 1);
      }

      *(v24 + 16) = v33 + 1;
      *(v24 + 8 * v33 + 32) = v31;
      ++v26;
    }

    while (v26 - v23 != 4);
    v9 = v68;
    v11 = v67;
    v2 = v66;
    v15 = v65;
  }

  v34 = v71;
  v35 = v11;
  type metadata accessor for NativeTensorStorage(0);
  v82[0] = *(v70 + 72);
  sub_25BCB617C();
  OUTLINED_FUNCTION_17_10();
  sub_25BBC0130(v36, v37, v38, v39);
  v41 = v40;
  v77 = v34;
  v42 = *(v40 + 16);
  v43 = v69;
  if (v42[2])
  {
    sub_25BCB617C();
  }

  else
  {
    v42 = &unk_286D438D8;
  }

  sub_25BBF5A38(v42, 0);

  v47 = swift_getObjectType();
  (*(v80 + 16))(v82, v47);
  v48 = v82[0];
  if (!*(v82[0] + 16))
  {

    v48 = &unk_286D43900;
  }

  sub_25BBF5A38(v48, 0);

  v49 = OUTLINED_FUNCTION_99();
  v50(v49);
  OUTLINED_FUNCTION_5_1();
  v54 = __swift_storeEnumTagSinglePayload(v51, v52, v53, v9);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_14_1();
  v55 = v80;
  *(v56 - 64) = v79;
  *(v56 - 56) = v55;
  v57 = v76;
  v58 = v77;
  *(v56 - 48) = v2;
  *(v56 - 40) = v57;
  v59 = v70;
  *(v56 - 32) = v24;
  *(v56 - 24) = v59;
  *(v56 - 16) = 1;
  sub_25BBF3504(v43, sub_25BC9AAF4);
  if (v58)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25BAA6F5C(v43, &qword_27FBB4080, &qword_25BCBC638);
    v60 = *(v35 + 8);
    v60(v15, v9);
    v60(v2, v9);
  }

  else
  {
    sub_25BAA6F5C(v43, &qword_27FBB4080, &qword_25BCBC638);

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v62 = OUTLINED_FUNCTION_31(v61);
    *(v62 + 16) = xmmword_25BCBAE50;
    *(v62 + 32) = v41;
    *(v62 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v63 = *(v35 + 8);
    v63(v15, v9);
    v63(v2, v9);
  }

LABEL_22:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC99B88@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a8;
  v21 = a9;
  v22 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v19 - v15;
  swift_getObjectType();
  v17 = sub_25BCB54EC();
  (*(*(v17 - 8) + 16))(v16, a4, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v24 = a1;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = v20;
  sub_25BC675C0(sub_25BC9AB18, v23, MEMORY[0x277D84F78] + 8, v21);
  return sub_25BAA6F5C(v16, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC99D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_25BCB50DC();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  (*(v14 + 104))(v13, *MEMORY[0x277D82E00], v11);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BBA8C44(a3, a4);
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v26 = a2;
    v27 = a6;
    v28 = MEMORY[0x277D84F90];
    sub_25BB00B14(0, v17, 0);
    v18 = v28;
    v19 = *(v28 + 16);
    v20 = 32;
    do
    {
      v21 = *(v16 + v20);
      v28 = v18;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        v25 = v21;
        sub_25BB00B14(v22 > 1, v19 + 1, 1);
        v21 = v25;
        v18 = v28;
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 16 * v19 + 32) = v21;
      v20 += 16;
      ++v19;
      --v17;
    }

    while (v17);
  }

  sub_25BCB514C();
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB513C())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v24 = 0xD000000000000013;
    *(v24 + 8) = 0x800000025BCE0890;
    *(v24 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BC99FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v71 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v27 = OUTLINED_FUNCTION_6_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &v67 - v32;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  v37 = sub_25BAC4018();
  if (sub_25BB3EE04(v37, v25))
  {
    v39 = v38;
    v68 = v30;
    v70 = v20;
    type metadata accessor for NativeTensorStorage(0);
    ObjectType = swift_getObjectType();
    (*(v39 + 16))(&a10, ObjectType, v39);
    v41 = *(v39 + 8);
    v69 = ObjectType;
    v41(&v72, ObjectType, v39);
    OUTLINED_FUNCTION_17_10();
    v42 = v71;
    sub_25BBC0130(v43, v44, v45, v46);
    v48 = v47;
    v67 = v42;
    if (*(*(v47 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v52 = v68;
    v53 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5CD8(v53, v54);

    v71 = v35;
    v55 = *(v35 + 16);
    OUTLINED_FUNCTION_13_24();
    v55();
    OUTLINED_FUNCTION_2_6(v33);
    OUTLINED_FUNCTION_13_24();
    v55();
    v56 = OUTLINED_FUNCTION_2_6(v52);
    v68 = &v67;
    MEMORY[0x28223BE20](v56);
    *(&v67 - 6) = v48;
    *(&v67 - 5) = &off_286D4DBE0;
    *(&v67 - 4) = v52;
    *(&v67 - 3) = sub_25BC9AB38;
    *(&v67 - 2) = v70;

    OUTLINED_FUNCTION_22_38();
    v57 = v67;
    sub_25BC675C0(v58, (&v67 - 8), v59, v60);
    if (v57)
    {
      swift_unknownObjectRelease();

      sub_25BAA6F5C(v33, &qword_27FBB4080, &qword_25BCBC638);
      v61 = OUTLINED_FUNCTION_34_0();
      v62(v61);
      sub_25BAA6F5C(v52, &qword_27FBB4080, &qword_25BCBC638);
    }

    else
    {

      sub_25BAA6F5C(v33, &qword_27FBB4080, &qword_25BCBC638);
      sub_25BAA6F5C(v52, &qword_27FBB4080, &qword_25BCBC638);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v64 = OUTLINED_FUNCTION_31(v63);
      *(v64 + 16) = xmmword_25BCBAE50;
      *(v64 + 32) = v48;
      *(v64 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v65 = OUTLINED_FUNCTION_34_0();
      v66(v65);
    }
  }

  else
  {
    v49 = sub_25BB0E2EC();
    v50 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v49);
    OUTLINED_FUNCTION_11_2(xmmword_25BCD68C0, v50, v51);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC9A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  return sub_25BCB51BC();
}

uint64_t sub_25BC9A444(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6158, type metadata accessor for BandPartOperation, byte_25BCCDD6C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A49C(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6168, type metadata accessor for SliceGradientOperation, byte_25BCD7164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A4F4(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6170, type metadata accessor for SliceOperation, byte_25BCD7164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A54C(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6190, type metadata accessor for GatherOperation, "1%\a+,");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A5A4(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6188, type metadata accessor for ScatterOperation, byte_25BCCE194);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A5FC(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154FAA0, type metadata accessor for CastOperation, byte_25BCCE2AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A654(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_27FBB6178, type metadata accessor for SplitOperation, aAL);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A6AC(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154F658, type metadata accessor for ConcatOperation, aI_0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A704(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154ED78, type metadata accessor for BroadcastOperation, byte_25BCCE338);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A75C(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154F1F8, type metadata accessor for ReshapeOperation, byte_25BCCE3C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9A7B4(uint64_t a1)
{
  result = sub_25BC9AA28(&qword_28154E7E8, type metadata accessor for TransposeOperation, byte_25BCCE07C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9AA28(unint64_t *a1, void (*a2)(uint64_t), const char *a3, ...)
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

uint64_t OUTLINED_FUNCTION_36_22()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t static CodingUserInfoKey.optimizerSerializationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_25BCB73FC();
  v5 = sub_25BCB741C();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9ACB8(uint64_t a1)
{
  v1 = *(a1 + 8);

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v2 = *(*(v1 + 16) + 160);
  sub_25BAA51C8(v10, v9);
  v7 = MEMORY[0x277D84F90];
  v6 = v2;
  sub_25BAA51C8(v9, v5);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v7, &unk_286D46560, &v6, v5, &v8);
  sub_25BA9C2C8(v9);
  sub_25BA9C2C8(v10);
  v3 = v8;
  v9[0] = v1;
  Tensor.squared()();
  v5[0] = *&v10[0];
  v8 = &unk_286D423B0;
  Tensor.reshaped(to:)(&v8, v9);

  v5[0] = v9[0];
  Tensor.sum(squeezingAxes:)(&v8, &unk_286D423D8);

  *&v10[0] = v3;
  static Tensor.* infix(_:_:)();
}

uint64_t OptimizerSerializationContext.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OptimizerSerializationContext.init(_:)(a1);
  return v2;
}

uint64_t OptimizerSerializationContext.__deallocating_deinit()
{
  OptimizerSerializationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9B0A8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7CA8, &unk_25BCD6BC0);
  swift_allocObject();
  result = sub_25BC9B1C0(0);
  *a2 = result;
  return result;
}

uint64_t sub_25BC9B11C(uint64_t a1)
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

uint64_t sub_25BC9B1C0(int a1)
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + 16) = sub_25BAA6F2C();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t *sub_25BC9B214()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_25BC9B294()
{
  sub_25BC9B214();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9B304@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  switch(result)
  {
    case 0:
      break;
    case 1:
      sub_25BCB70FC();
      OUTLINED_FUNCTION_0_95();
      type metadata accessor for SNNDataType(0);
      sub_25BCB73CC();
      OUTLINED_FUNCTION_2_80();
      OUTLINED_FUNCTION_3_64(v19, v20, v21, v22, v23, v24, v25, v26, v34, v37, v40);
      OUTLINED_FUNCTION_1_79();
      sub_25BA97890(v27, v28, v29, v30, v31, v32, 25, v33, v36, v39, v42, 1, 0xE000000000000000, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    case 2:
      v2 = 8;
      break;
    case 3:
      v2 = 10;
      break;
    case 4:
      v2 = 11;
      break;
    case 5:
      v2 = 0;
      break;
    case 6:
      v2 = 1;
      break;
    case 7:
      v2 = 2;
      break;
    case 8:
      v2 = 3;
      break;
    case 9:
      v2 = 4;
      break;
    case 10:
      v2 = 5;
      break;
    case 11:
      v2 = 6;
      break;
    case 12:
      v2 = 7;
      break;
    default:
      v3 = result;
      sub_25BCB70FC();
      OUTLINED_FUNCTION_0_95();
      type metadata accessor for SNNDataType(0);
      sub_25BCB73CC();
      OUTLINED_FUNCTION_2_80();
      OUTLINED_FUNCTION_3_64(v4, v5, v6, v7, v8, v9, v10, v11, v34, v37, v40);
      OUTLINED_FUNCTION_1_79();
      sub_25BA97890(v12, v13, v14, v15, v16, v17, 51, v18, v35, v38, v41, v3, 0xE000000000000000, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_25BC9B4AC(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  swift_beginAccess();
  sub_25BAC27B0(v2 + 16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E80, &unk_25BCC2610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E88, &qword_25BCD6CE0);
  if (swift_dynamicCast())
  {
    sub_25BB6D9C4(v13, v16);
    v4 = v17;
    v5 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v6 = *(v5 + 24);
    v7 = sub_25BB67604();
    v8 = sub_25BC9CF64();
    v9 = v6(a1, &v19, MEMORY[0x277D84D38], v7, v8, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v9;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  result = sub_25BB6D720(v13);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v9 = MEMORY[0x277D84F90];
    if (a1)
    {
      v15[0] = MEMORY[0x277D84F90];
      sub_25BB0056C();
      v9 = v15[0];
      do
      {
        swift_beginAccess();
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, *(v2 + 40));
        sub_25BB67604();
        sub_25BC9CF64();
        sub_25BCB622C();
        swift_endAccess();
        v11 = *&v13[0];
        v15[0] = v9;
        v12 = *(v9 + 16);
        if (v12 >= *(v9 + 24) >> 1)
        {
          sub_25BB0056C();
          v9 = v15[0];
        }

        *(v9 + 16) = v12 + 1;
        *(v9 + 8 * v12 + 32) = v11;
        --a1;
      }

      while (a1);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9B6DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v9 = type metadata accessor for AnyRandomNumberGenerator();
  v10 = sub_25BC9CF20(&qword_27FBB7CB0, &unk_25BCC2598);
  v8[0] = v5;
  __swift_project_boxed_opaque_existential_1(v8, v9);

  v6 = sub_25BC9B4AC(a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_25BC9B788(uint64_t a1, float a2, float a3)
{
  if (COERCE_UNSIGNED_INT(fabs(a3 - a2)) > 0x7F7FFFFF)
  {
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000035, 0x800000025BCE6F10, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/Random.swift", 94, 2, 661);
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    return sub_25BC9CC00(v3, sub_25BC9CF00);
  }

  return result;
}

uint64_t sub_25BC9B87C(void *a1, void *a2, float a3, float a4, float a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_25BC54B00(0, a1[1]);
  v14 = *(v13 + 16);
  result = sub_25BC9B6DC(v14, 16777217);
  v16 = -v14;
  for (i = 4; ; ++i)
  {
    if (v16 + i == 4)
    {

      *a2 = a7;
      return result;
    }

    v18 = i - 4;
    if ((i - 4) >= *(result + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v19 = *(result + 8 * i);
    if (v19 == 0x1000000)
    {
      break;
    }

    if (v18 >= *(v13 + 16))
    {
      goto LABEL_11;
    }

    *(*a1 + 4 * *(v13 + 8 * i)) = (vcvts_n_f32_u64(v19, 0x18uLL) * a5) + a3;
  }

  if (v18 < *(v13 + 16))
  {
    v20 = *(v13 + 8 * i);

    *(*a1 + 4 * v20) = a4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25BC9B9AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3 - a2 == -1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v3;
        v9 = 32;
        v10 = v3;
        do
        {
          *(v6 + v9) = sub_25BB6AAA8();
          v9 += 8;
          --v10;
        }

        while (v10);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      *(v6 + 16) = v3;
      return v6;
    }
  }

  else
  {
    result = sub_25BC9B6DC(result, a3 - a2 + 1);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = result;
      if (!v3)
      {
        v6 = MEMORY[0x277D84F90];
LABEL_14:
        *(v6 + 16) = v3;

        return v6;
      }

      result = sub_25BCB67DC();
      *(result + 16) = v3;
      if (*(v5 + 16) >= v3)
      {
        v6 = result;
        v7 = 32;
        v8 = v3;
        do
        {
          *(result + v7) = *(v5 + v7) + a2;
          v7 += 8;
          --v8;
        }

        while (v8);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9BAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_59();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  sub_25BCB6ADC();
  OUTLINED_FUNCTION_9_59();
  OUTLINED_FUNCTION_35_8();
  swift_getAssociatedConformanceWitness();
  return sub_25BCB68DC();
}

uint64_t sub_25BC9BC08()
{
  OUTLINED_FUNCTION_3_65();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_25BCB6ADC();
  swift_beginAccess();
  type metadata accessor for AnyRandomNumberGenerator();
  swift_getAssociatedConformanceWitness();
  sub_25BC9CF20(&qword_27FBB4E78, &unk_25BCC25B4);
  v6 = sub_25BCB668C();
  (*(v2 + 8))(v5, AssociatedTypeWitness);
  swift_endAccess();
  return v6;
}

uint64_t RandomSampler.__allocating_init(generator:)(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v2 = swift_allocObject();
  RandomSampler.init(generator:)(a1);
  return v2;
}

uint64_t sub_25BC9BDEC(void *a1)
{
  v3 = type metadata accessor for AnyRandomNumberGenerator();
  v4 = a1[3];
  v5 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  OUTLINED_FUNCTION_9();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = sub_25BB6D898(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_25BC9BF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_65();
  v6 = *(v5 + 8);
  OUTLINED_FUNCTION_2_81(v7, v8, v9, MEMORY[0x277D83CB0]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v27[-1] - v11;
  OUTLINED_FUNCTION_11_3();
  sub_25BCB6ADC();
  OUTLINED_FUNCTION_11_3();
  v13 = sub_25BCB6ABC();
  OUTLINED_FUNCTION_11_3();
  result = sub_25BCB6ABC();
  v15 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v15 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v16 = sub_25BC9B9AC(v13, 0, v15);
    v17 = swift_endAccess();
    v27[0] = v16;
    MEMORY[0x28223BE20](v17);
    *(&v26 - 4) = v3;
    *(&v26 - 3) = a3;
    *(&v26 - 2) = v12;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v21 = OUTLINED_FUNCTION_2_81(v18, v19, v20, MEMORY[0x277D83CB0]);
    sub_25BB074EC();
    v22 = OUTLINED_FUNCTION_8_60();
    v23 = sub_25BB50EEC(v22, sub_25BC9CD48, (&v26 - 6), v18, v21, v6);

    v24 = OUTLINED_FUNCTION_35_8();
    v25(v24);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC9C110@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10[-v6];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25BC1EFDC();
  v8 = sub_25BCB6B8C();
  (*(v5 + 16))(a3);
  v8(v10, 0);
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t RandomSampler.__deallocating_deinit()
{

  OUTLINED_FUNCTION_22();

  return swift_deallocClassInstance();
}

uint64_t WeightedRandomSampler.__allocating_init(generator:weights:)()
{
  OUTLINED_FUNCTION_4_73();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_35_8();
  WeightedRandomSampler.init(generator:weights:)(v1, v2);
  return v0;
}

uint64_t WeightedRandomSampler.init(generator:weights:)(void *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = 0.0;
    do
    {
      v7 = *v5++;
      v6 = v6 + v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  *(v2 + 32) = v6;
  sub_25BAC27B0(a1, v9);
  RandomSampler.init(generator:)(v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t WeightedRandomSampler.__allocating_init(seed:weights:)(unint64_t a1, char a2, uint64_t a3)
{
  sub_25BC3329C(a1, a2 & 1, v7);
  sub_25BAC27B0(v7, v6);
  type metadata accessor for WeightedRandomSampler();
  OUTLINED_FUNCTION_4_73();
  v4 = swift_allocObject();
  WeightedRandomSampler.init(generator:weights:)(v6, a3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

uint64_t sub_25BC9C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_65();
  v7 = *(v6 + 8);
  OUTLINED_FUNCTION_2_81(v8, v9, v10, MEMORY[0x277D83CB0]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = *(*(v3 + 24) + 16);
  OUTLINED_FUNCTION_11_3();
  if (v14 == sub_25BCB6ABC())
  {
    OUTLINED_FUNCTION_11_3();
    sub_25BCB6ADC();
    OUTLINED_FUNCTION_11_3();
    v15 = sub_25BCB6ABC();
    v16 = *(v3 + 32);
    if (v16 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v17 = v15;
      swift_beginAccess();
      v18 = sub_25BC9B788(v17, 0.0, v16);
      swift_endAccess();
      OUTLINED_FUNCTION_11_3();
      v19 = sub_25BCB6ABC();
      if ((v19 & 0x8000000000000000) == 0)
      {
        v30[0] = v30;
        v30[1] = 0;
        v30[2] = v19;
        MEMORY[0x28223BE20](v19);
        v30[-6] = v4;
        v30[-5] = a3;
        v30[-4] = v3;
        v30[-3] = v18;
        v29 = v13;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
        v23 = OUTLINED_FUNCTION_2_81(v20, v21, v22, MEMORY[0x277D83CB0]);
        sub_25BB42928();
        v24 = OUTLINED_FUNCTION_8_60();
        v25 = sub_25BB50EEC(v24, sub_25BC9CD78, &v30[-8], v20, v23, v7);

        v26 = OUTLINED_FUNCTION_35_8();
        v27(v26);
        return v25;
      }
    }

    __break(1u);
  }

  result = sub_25BCB74CC("Fatal error", 11, 2, 0xD00000000000003DLL, 0x800000025BCE6DB0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Data/Sampler.swift", 94, 2, 108);
  __break(1u);
  return result;
}

void sub_25BC9C6F0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v21 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = *a1;
  v15 = *(a2 + 24);
  v16 = *(v15 + 16);
  v17 = v15 + 32;
  v18 = 0.0;
  while (1)
  {
    if (v16 == v13)
    {
LABEL_6:
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_25BC1EFDC();
      v19 = sub_25BCB6B8C();
      (*(v10 + 16))(v21);
      v19(v22, 0);
      (*(v10 + 8))(v12, AssociatedTypeWitness);
      return;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v14 >= *(a3 + 16))
    {
      goto LABEL_8;
    }

    v18 = v18 + *(v17 + 4 * v13++);
    if (*(a3 + 32 + 4 * v14) <= v18)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t WeightedRandomSampler.deinit()
{

  return v0;
}

uint64_t WeightedRandomSampler.__deallocating_deinit()
{
  WeightedRandomSampler.deinit();
  OUTLINED_FUNCTION_4_73();

  return swift_deallocClassInstance();
}

uint64_t static Sampler<>.sequential.getter()
{
  type metadata accessor for SequentialSampler();

  return swift_allocObject();
}

uint64_t sub_25BC9CA24(unint64_t a1, char a2, void (*a3)(void), void (*a4)(uint64_t *))
{
  sub_25BC3329C(a1, a2 & 1, v8);
  a3();
  OUTLINED_FUNCTION_22();
  v6 = swift_allocObject();
  a4(v8);
  return v6;
}

uint64_t sub_25BC9CB04(uint64_t a1, void (*a2)(uint64_t), void (*a3)(_BYTE *))
{
  v5 = sub_25BAC27B0(a1, v8);
  a2(v5);
  OUTLINED_FUNCTION_22();
  v6 = swift_allocObject();
  a3(v8);
  return v6;
}

uint64_t static Sampler<>.weightedRandom(seed:weights:)(unint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for WeightedRandomSampler();
  sub_25BCB617C();
  return WeightedRandomSampler.__allocating_init(seed:weights:)(a1, a2 & 1, a3);
}

uint64_t static Sampler<>.weightedRandom(using:weights:)(uint64_t a1, uint64_t a2)
{
  sub_25BAC27B0(a1, v5);
  type metadata accessor for WeightedRandomSampler();
  OUTLINED_FUNCTION_4_73();
  v3 = swift_allocObject();
  sub_25BCB617C();
  WeightedRandomSampler.init(generator:weights:)(v5, a2);
  return v3;
}

uint64_t sub_25BC9CC00(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_25BCB67DC();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v7[1] = v4;
  v8 = 0;
  v7[0] = v5 + 32;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25BC9CF20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyRandomNumberGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BC9CF64()
{
  result = qword_27FBB7CB8[0];
  if (!qword_27FBB7CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7CB8);
  }

  return result;
}

uint64_t sub_25BC9CFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, v5);
  return sub_25BC9D0B8(v14, a1, v8, a3, a4, a5);
}

uint64_t sub_25BC9D0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for Batches(0, a4, a5, v11);
  *(a6 + *(result + 36)) = a2;
  *(a6 + *(result + 40)) = a3;
  return result;
}

uint64_t sub_25BC9D14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  (*(v13 + 16))(v16 - v15, a1, v17);
  sub_25BCB655C();
  (*(v13 + 8))(a1, a4);
  result = type metadata accessor for Batches.Iterator(0, a4, a5, v18);
  *(a6 + *(result + 36)) = a2;
  *(a6 + *(result + 40)) = a3;
  return result;
}

uint64_t Batches.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7, v2, v5);
  sub_25BC9D14C(v9, *(v2 + *(a1 + 36)), *(v2 + *(a1 + 40)), v5, *(a1 + 24), a2);
  return (*(*(a1 - 8) + 8))(v2, a1);
}

Swift::OpaquePointer_optional __swiftcall Batches.Iterator.next()()
{
  v2 = v0;
  v3 = *(v0 + 24);
  v26 = *(v0 + 16);
  v27 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v22 = v6;
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v25 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v16 = sub_25BCB604C();
  v31 = v16;
  v21 = v2;
  v17 = *(v1 + *(v2 + 36));
  v28 = v1;
  v29 = v17;
  v24 = (v10 + 32);
  while (sub_25BCB681C() < v29)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_25BCB6EDC();
    if (__swift_getEnumTagSinglePayload(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v22 + 8))(v8, v23);
      break;
    }

    (*v24)(v15, v8, AssociatedTypeWitness);
    (*(v10 + 16))(v25, v15, AssociatedTypeWitness);
    sub_25BCB68CC();
    sub_25BCB687C();
    (*(v10 + 8))(v15, AssociatedTypeWitness);
    v16 = v31;
  }

  v30 = v16;
  sub_25BCB68CC();
  swift_getWitnessTable();
  if ((sub_25BCB6B6C() & 1) != 0 || sub_25BCB681C() != v29 && *(v28 + *(v21 + 40)) == 1)
  {

    v16 = 0;
  }

  v19 = v16;
  result.value._rawValue = v19;
  result.is_nil = v18;
  return result;
}

unint64_t sub_25BC9D6C0@<X0>(unint64_t *a1@<X8>)
{
  result = Batches.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_25BC9D6E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unsigned __int8 *sub_25BC9D770(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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

    switch(v12)
    {
      case 1:
        v13 = result[v8];
        if (!result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *&result[v8];
        if (!*&result[v8])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&result[v8];
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v16 = *((&result[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_25BC9D8C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BC9DABC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BC9DB54(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v9 <= 3)
    {
      v10 = ((a2 - v7 + 255) >> 8) + 1;
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

    switch(v12)
    {
      case 1:
        v13 = a1[v9];
        if (!a1[v9])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *&a1[v9];
        if (!*&a1[v9])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&a1[v9];
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v15 = *a1;
        }

        else
        {
          v14 = 0;
          v15 = *a1;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v6 < 0xFE)
  {
    v16 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v16 >= 2)
    {
      v17 = (v16 + 2147483646) & 0x7FFFFFFF;
      return (v17 + 1);
    }

    return 0;
  }

  return __swift_getEnumTagSinglePayload(a1, v6, result);
}

void sub_25BC9DCFC(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v14 = 0;
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v9 + 255) >> 8) + 1;
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
  }

  if (v9 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v8 < 0xFE)
          {
            *(((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BC9DF1C(uint64_t result)
{
  if (result == 3)
  {
    return 48;
  }

  if (result == 2)
  {
    return 32;
  }

  if (result)
  {
    v26 = v1;
    v3 = result;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_0_96();
    type metadata accessor for MTLStorageMode(0);
    sub_25BCB73CC();
    v4 = MEMORY[0x25F876C90](96, 0xE100000000000000);
    OUTLINED_FUNCTION_1_80(v4, v5, v6, v7, v8, v9, v10, v11, v13, 0, 0xE000000000000000);
    sub_25BA97890("resourceOption", 14, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MetalExtensions.swift", 115, 2, 55, v12, v14, v15, v16, v3, 0xE000000000000000, v17, v18, v19, v20, v21, v22, v23, v24, v25, v2, v26);
  }

  return result;
}

uint64_t sub_25BC9DFF4(uint64_t a1)
{
  result = 0x65746176697270;
  switch(a1)
  {
    case 0:
      result = 0x646572616873;
      break;
    case 1:
      result = 0x646567616E616DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656C79726F6D656DLL;
      break;
    default:
      v29 = v1;
      v6 = a1;
      sub_25BCB70FC();
      OUTLINED_FUNCTION_0_96();
      type metadata accessor for MTLStorageMode(0);
      sub_25BCB73CC();
      v7 = MEMORY[0x25F876C90](96, 0xE100000000000000);
      OUTLINED_FUNCTION_1_80(v7, v8, v9, v10, v11, v12, v13, v14, v16, 0, 0xE000000000000000);
      sub_25BA97890("description", 11, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MetalExtensions.swift", 115, 2, 74, v15, v17, v18, v19, v6, 0xE000000000000000, v20, v21, v22, v23, v24, v25, v26, v27, v28, v2, v29);
  }

  return result;
}

void sub_25BC9E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LossOps.swift", 109, 2, 19, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BC9E1C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 128);
  *(v1 + 32) = *(v0 + 120);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BC9E224(uint64_t a1, uint64_t a2)
{
  v5 = sub_25BAC4018();
  v6 = (v2 + 40);
  if (v5 != sub_25BAC4018())
  {
    v7 = *(a1 + 16);
    if (sub_25BAC4018() != v7)
    {
      return 0;
    }

    v6 = (v2 + 48);
  }

  *v6 = a2;

  return 1;
}

uint64_t sub_25BC9E2B8()
{

  return v0;
}

uint64_t sub_25BC9E2F0()
{
  sub_25BC9E2B8();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9E438(uint64_t a1)
{
  sub_25BC9E2B8();
  sub_25BA9D148(*(v1 + 136), *(v1 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9E4A4(uint64_t a1)
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v1 + 152));
  v2 = *(v1 + 160);
  if (v2 == 2)
  {
    return sub_25BCB79EC();
  }

  sub_25BCB79EC();
  return MEMORY[0x25F878200](v2 & 1);
}

uint64_t sub_25BC9E538()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  swift_beginAccess();
  v2 = v0[19];
  v4 = v0[5];
  v3 = v0[6];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v3;

  return v1;
}

uint64_t sub_25BC9E5D0(uint64_t a1, uint64_t a2)
{
  if ((sub_25BC9E224(a1, a2) & 1) == 0)
  {
    v4 = sub_25BAC4018();
    swift_beginAccess();
    if (v4 != sub_25BAC4018())
    {
      return 0;
    }

    *(v2 + 152) = a2;
  }

  return 1;
}

uint64_t sub_25BC9E664()
{
  sub_25BC9E2B8();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC9E6C4(uint64_t a1)
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v1 + 136));
  v2 = *(v1 + 144);
  if (v2 == 2)
  {
    return sub_25BCB79EC();
  }

  sub_25BCB79EC();
  return MEMORY[0x25F878200](v2 & 1);
}

uint64_t sub_25BC9E758(uint64_t a1)
{
  result = sub_25BC9E808(&qword_27FBB7DC0, type metadata accessor for LossOperation, aU_2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9E7B0(uint64_t a1)
{
  result = sub_25BC9E808(&qword_27FBB7DC8, type metadata accessor for BaseLossOperation, &unk_25BCD6ED4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC9E808(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25BC9E84C(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v5, v6, v7, v8);
    v5 = v9;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5[2] <= a2)
  {
LABEL_7:
    __break(1u);
  }
}

void transposedConv2D(_:weight:bias:stride:padding:outputPadding:dilation:groupCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_18();
  v128 = v24;
  v129 = v25;
  v130 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *v33;
  v36 = *v35;
  v38 = *v37;
  v39 = *(*v33 + 16);
  v40 = *(v39 + 160);
  v41 = sub_25BAA80BC(*(v39 + 160), &unk_286D42270);
  if ((v41 & 1) == 0)
  {
LABEL_64:
    OUTLINED_FUNCTION_39_27(v41);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *v131 = v40;
    *&v131[8] = v39;
    OUTLINED_FUNCTION_6_63();
    OUTLINED_FUNCTION_0_97();
    v111 = 348;
    goto LABEL_85;
  }

  if (!OUTLINED_FUNCTION_8_61(*(v39 + 19)))
  {
    *v131 = v40;
    *&v131[8] = xmmword_25BCBCE20;
    v132 = 0;
    OUTLINED_FUNCTION_7_62();
    OUTLINED_FUNCTION_0_97();
    v111 = 349;
    goto LABEL_85;
  }

  v42 = *(v34 + 16);
  v43 = *(v42 + 160);
  v44 = sub_25BAA80BC(*(v42 + 160), &unk_286D42270);
  if (!v44)
  {
    OUTLINED_FUNCTION_39_27(v44);
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *v131 = v43;
    *&v131[8] = v39;
    OUTLINED_FUNCTION_6_63();
    OUTLINED_FUNCTION_0_97();
    v111 = 350;
    goto LABEL_85;
  }

  if (!OUTLINED_FUNCTION_8_61(*(*(v36 + 16) + 152)))
  {
    *v131 = v43;
    *&v131[8] = xmmword_25BCBEAD0;
    v132 = 0;
    OUTLINED_FUNCTION_7_62();
    OUTLINED_FUNCTION_0_97();
    v111 = 351;
    goto LABEL_85;
  }

  v45 = a24;
  if (v38)
  {
    v46 = a24;
    v47 = v38[2];
    v48 = *(v47 + 160);
    v49 = sub_25BAA80BC(*(v47 + 160), &unk_286D42270);
    if (!v49)
    {
      OUTLINED_FUNCTION_39_27(v49);
      OUTLINED_FUNCTION_30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      *v131 = v48;
      *&v131[8] = v47;
      OUTLINED_FUNCTION_6_63();

      OUTLINED_FUNCTION_0_97();
      v111 = 353;
      goto LABEL_85;
    }

    v50 = *(*(v47 + 152) + 16);

    if (!OUTLINED_FUNCTION_35_24())
    {
      *v131 = v50;
      *&v131[8] = xmmword_25BCC7810;
      v132 = 0;
      OUTLINED_FUNCTION_7_62();
      OUTLINED_FUNCTION_0_97();
      v111 = 354;
      goto LABEL_85;
    }

    v51 = OUTLINED_FUNCTION_43(v38[2]);
    if (!v52)
    {
      OUTLINED_FUNCTION_5_64();
LABEL_81:
      v137 = 4;
      goto LABEL_83;
    }

    v53 = *(*(v36 + 16) + 152);
    v54 = *(v53 + 16);
    if (v54 <= 1)
    {
      *&v131[16] = 0;
      *v131 = 1uLL;
      v132 = -1;
      v134 = 0;
      v135 = 0;
      v133 = v54;
      v136 = -1;
      v137 = 4;
      goto LABEL_83;
    }

    v45 = a24;
    v55 = *(v53 + 40);
    if ((v55 * a24) >> 64 != (v55 * a24) >> 63)
    {
      goto LABEL_60;
    }

    if (*(v51 + 32) != v55 * a24)
    {
LABEL_61:
      *v131 = 0;
      *&v131[8] = 0xE000000000000000;
      sub_25BCB70FC();
      v140[0] = *v131;
      v39 = v140;
      MEMORY[0x25F876C90](0xD00000000000003BLL, 0x800000025BCDB540);
      v40 = *(v38[2] + 152);
      v102 = sub_25BCB617C();
      v103 = MEMORY[0x25F876F80](v102, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v103);

      OUTLINED_FUNCTION_36_23();
      v41 = OUTLINED_FUNCTION_43(*(v36 + 16));
      if (v104 > 1)
      {
        if ((*(v41 + 40) * v46) >> 64 == (*(v41 + 40) * v46) >> 63)
        {
          sub_25BCB77FC();
          OUTLINED_FUNCTION_37_28();

          MEMORY[0x25F876C90](93, 0xE100000000000000);
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_12_51();
          sub_25BCB74CC(v112, v113, v114, v115, v116, v117, v118, v119, 355);
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_3_66();
      goto LABEL_81;
    }
  }

  v127 = v38;
  v46 = *(*(v34 + 16) + 152);
  v38 = *(*(v36 + 16) + 152);
  v56 = *(v46 + 16);
  if (v56 <= 1)
  {
    OUTLINED_FUNCTION_3_66();
LABEL_70:
    v137 = 4;
    sub_25BCB617C();
LABEL_83:
    sub_25BCB617C();
LABEL_84:
    OUTLINED_FUNCTION_17_4();
LABEL_85:
    sub_25BADDD28(v105, v106, v107, v108, v109, v110, v111);
  }

  v57 = v38[2];
  if (!v57)
  {
    OUTLINED_FUNCTION_5_64();
    goto LABEL_70;
  }

  if (*(v46 + 40) != v38[4])
  {
    *v131 = 0;
    *&v131[8] = 0xE000000000000000;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB70FC();
    v140[0] = *v131;
    MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE7290);
    if (*(v46 + 16) <= 1uLL)
    {
      OUTLINED_FUNCTION_3_66();
    }

    else
    {
      *v131 = *(v46 + 40);
      sub_25BCB77FC();
      OUTLINED_FUNCTION_37_28();

      MEMORY[0x25F876C90](0xD000000000000040, 0x800000025BCE72B0);
      if (v38[2])
      {
        sub_25BCB77FC();
        OUTLINED_FUNCTION_37_28();

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        *v131 = v140[0];
        v137 = 17;
LABEL_77:
        sub_25BCB617C();
        OUTLINED_FUNCTION_0_97();
        v111 = 360;
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_5_64();
    }

    v137 = 4;
    goto LABEL_84;
  }

  if (v56 != 4)
  {
    *v131 = *(v46 + 16);
    *&v131[8] = xmmword_25BCBCE20;
LABEL_76:
    v132 = 0;
    OUTLINED_FUNCTION_7_62();
    sub_25BCB617C();
    goto LABEL_77;
  }

  if (v57 != 4)
  {
    *v131 = xmmword_25BCD6F30;
    *&v131[16] = 0xE600000000000000;
    goto LABEL_76;
  }

  v58 = v38[5];
  v59 = v58 * v45;
  if ((v58 * v45) >> 64 != (v58 * v45) >> 63)
  {
    __break(1u);
    goto LABEL_42;
  }

  v60 = *(v46 + 48);
  v61 = v60 - 1;
  if (__OFSUB__(v60, 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v62 = v61 * v30;
  if ((v61 * v30) >> 64 != (v61 * v30) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v130 + 0x4000000000000000 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v63 = __OFSUB__(v62, 2 * v130);
  v64 = v62 - 2 * v130;
  if (v63)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v65 = v38[6];
  v63 = __OFSUB__(v65, 1);
  v66 = v65 - 1;
  if (v63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v126 = v45;
  v67 = a22 * v66;
  if ((a22 * v66) >> 64 != (a22 * v66) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = __OFADD__(v64, v67);
  v68 = v64 + v67;
  if (v63)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v63 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (v63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v125 = v30;
  v70 = v69 + v129;
  if (__OFADD__(v69, v129))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v71 = *(v46 + 56);
  v72 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v73 = v72 * v28;
  if ((v72 * v28) >> 64 != (v72 * v28) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v128 + 0x4000000000000000 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v63 = __OFSUB__(v73, 2 * v128);
  v74 = v73 - 2 * v128;
  if (v63)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v75 = v38[7];
  v63 = __OFSUB__(v75, 1);
  v76 = v75 - 1;
  if (v63)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v124 = v28;
  v77 = a23 * v76;
  if ((a23 * v76) >> 64 != (a23 * v76) >> 63)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v63 = __OFADD__(v74, v77);
  v78 = v74 + v77;
  if (v63)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v63 = __OFADD__(v78, 1);
  v79 = v78 + 1;
  if (v63)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v38 = (v79 + a21);
  if (__OFADD__(v79, a21))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v80 = *(v36 + 16);
  v81 = *(v34 + 16);
  v122 = v36;
  v82 = *(v46 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v83 = swift_allocObject();
  v84 = v83;
  *(v83 + 16) = xmmword_25BCBDF80;
  *(v83 + 32) = v82;
  *(v83 + 40) = v59;
  *(v83 + 48) = v70;
  *(v83 + 56) = v38;
  v123 = v32;
  if (v127)
  {
    v120 = v127[2];
  }

  else
  {
    v120 = 0;
  }

  v121 = v34;
  *&v140[0] = v34;
  v85 = Tensor.scalarType.getter(v83);
  v87 = v86;
  v88 = *(v86 + 32);

  v88(&v131[8], v85, v87);
  *v131 = v84;
  v89 = swift_allocObject();
  *(v89 + 16) = v127 != 0;
  *(v89 + 24) = v125;
  *(v89 + 32) = v124;
  *(v89 + 40) = v130;
  *(v89 + 48) = v128;
  *(v89 + 56) = a22;
  *(v89 + 64) = a23;
  *(v89 + 72) = v126;
  v90 = OUTLINED_FUNCTION_78_8();
  v92 = v91;

  v139[55] = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift");
  *(&v140[1] + 8) = xmmword_25BCD6F40;
  OUTLINED_FUNCTION_28(v93);
  v94 = type metadata accessor for ConvolutionTranspose2DOperation();
  OUTLINED_FUNCTION_16_3(v94);
  v95 = OUTLINED_FUNCTION_3();
  sub_25BBA5304(v95, v96, v97, v81, v80, v120, v125, v124, v130, v128, v129, a21, a22, a23, v126, v131, v140, v90, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_25BCBAE70;
  *(v98 + 32) = v122;
  *(v98 + 40) = v121;

  sub_25BAB7DE8(v98, v139);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v139, v138);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v131);

  sub_25BAA4AF4(v131);
  sub_25BAA49B8();
  sub_25BAA4A5C(v131);

  sub_25BAA4AF4(v131);
  v99 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v99);
  OUTLINED_FUNCTION_20_23();
  v131[0] = v100;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_31_33();
  sub_25BC0D39C();
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v101 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v101);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v139);
  *v123 = v101;
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.padded(forSizes:with:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v15[0] = v4;
  if (DynamicType == Tensor.scalarType.getter(DynamicType))
  {
    v15[5] = v4;
    sub_25BAC27B0(a2, v15);
    Tensor.padded(forSizes:mode:)();
    return sub_25BB2B680(v15);
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_12_51();
    result = sub_25BCB74CC(v7, v8, v9, v10, v11, v12, v13, v14, 144);
    __break(1u);
  }

  return result;
}

void Tensor.padded(forSizes:mode:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  sub_25BB2B624(v1, &v111);
  v86 = v6;
  if (*(&v112 + 1) > 2uLL)
  {
    sub_25BA97060(&v111, &v116);
    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
    DynamicType = swift_getDynamicType();
    *&v111 = v7;
    v0 = &v111;
    if (DynamicType != Tensor.scalarType.getter(DynamicType))
    {
      v83 = 155;
      OUTLINED_FUNCTION_10_5();
      goto LABEL_44;
    }

    LOBYTE(v0) = *(*(v7 + 16) + 160);
    if (!sub_25BAA80BC(v0, &unk_286D42270))
    {
      goto LABEL_45;
    }

    __swift_destroy_boxed_opaque_existential_1(&v116);
  }

  else
  {
    sub_25BB2B680(&v111);
  }

  v9 = *(v7 + 16);
  v10 = *(v9 + 152);
  v11 = *(v4 + 16);
  if (v11 != *(v10 + 16))
  {
LABEL_42:
    v83 = 158;
    OUTLINED_FUNCTION_10_5();
LABEL_44:
    OUTLINED_FUNCTION_12_51();
    sub_25BCB74CC(v67, v68, v69, v70, v71, v72, v73, v74, v83);
    __break(1u);
LABEL_45:
    v115[0] = v0;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v111 = v6;
    *(&v111 + 1) = v115;
    v112 = 0uLL;
    LOBYTE(v113) = 6;
    OUTLINED_FUNCTION_22_39();
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28(v75, v76, v77, v78, v79, v80, 156);
  }

  if (v11)
  {
    swift_bridgeObjectRetain_n();
    v12 = (v4 + 16 * v11 + 24);
    v13 = -1;
    v14 = v10;
    while (1)
    {
      v15 = *(v12 - 1);
      v16 = v15 + *v12;
      if (__OFADD__(v15, *v12))
      {
        break;
      }

      v17 = *(v14 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAA2110(v14, v18, v19, v20);
        v14 = v25;
      }

      v21 = v13 + v17;
      if (v13 + v17 < 0)
      {
        goto LABEL_18;
      }

      if (v21 >= *(v14 + 16))
      {
        goto LABEL_19;
      }

      v22 = *(v14 + 32 + 8 * v21);
      v23 = __OFADD__(v22, v16);
      v24 = v22 + v16;
      if (v23)
      {
        goto LABEL_20;
      }

      v12 -= 2;
      *(v14 + 32 + 8 * v21) = v24;
      --v13;
      if (v11 + v13 == -1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:

    v9 = *(v7 + 16);
    v10 = v14;
  }

  else
  {
    sub_25BCB617C();
  }

  sub_25BB2B624(v2, &v111);
  LOBYTE(v116) = *(v9 + 160);
  v26 = sub_25BC8FACC();
  v28 = v27;
  v29 = *(v27 + 32);

  sub_25BCB617C();
  v29(&v116, v26, v28);
  v30 = v116;
  v31 = *(v7 + 16);
  v32 = *(v31 + 152);
  LOBYTE(v116) = *(v31 + 160);
  v33 = sub_25BC8FACC();
  v35 = v34;
  sub_25BB2B624(v2, &v116);
  v36 = swift_allocObject();
  v37 = v117;
  *(v36 + 16) = v116;
  *(v36 + 32) = v37;
  *(v36 + 48) = v118;
  *(v36 + 56) = v4;
  *(v36 + 64) = v32;
  *(v36 + 72) = v33;
  *(v36 + 80) = v35;
  sub_25BCB617C();
  sub_25BCB617C();
  v38 = sub_25BAAF074(sub_25BCA230C, v36);
  v40 = v39;

  v119 = 0;
  type metadata accessor for PadOperation();
  v41 = swift_allocObject();
  *(v41 + 176) = v38;
  *(v41 + 184) = v40;
  *(v41 + 16) = sub_25BAA5EA0(6578544, 0xE300000000000000);
  *(v41 + 24) = v42;
  *(v41 + 32) = v43;
  *(v41 + 40) = v9;
  v44 = v112;
  *(v41 + 48) = v111;
  *(v41 + 64) = v44;
  *(v41 + 80) = v113;
  *(v41 + 88) = v4;
  *(v41 + 96) = v10;
  *(v41 + 104) = v30;
  *(v41 + 112) = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PaddingOps.swift";
  *(v41 + 120) = 112;
  *(v41 + 128) = 2;
  *(v41 + 136) = xmmword_25BCD6F50;
  *(v41 + 152) = "init(id:operand:mode:padding:resultDescriptor:creationSite:backward:)";
  *(v41 + 160) = 69;
  *(v41 + 168) = 2;
  *(v41 + 169) = v119;
  sub_25BAA51C8(*(v7 + 16) + 168, &v116);
  sub_25BAA51C8(&v116, v115);
  v6 = qword_28154F8A8;

  if (v6 != -1)
  {
    swift_once();
  }

  v0 = qword_28154F8B0;
  v45 = pthread_getspecific(qword_28154F8B0);
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_22();
    v46 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
    v47 = swift_allocObject();
    v48 = OUTLINED_FUNCTION_18_48(v47, xmmword_25BCBAE50);
    if ((v48 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v49 = v48;
    v6 = HIDWORD(v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = v6;
    *(inited + 36) = v49;
    sub_25BC9FBFC(inited);
    *(v47 + 128) = 0;
    *(v47 + 136) = 0;
    *(v47 + 144) = v51;
    *(v47 + 152) = 0;
    *(v47 + 160) = 0;
    v46[2] = v47;

    pthread_setspecific(v0, v46);
  }

  swift_beginAccess();
  v52 = v46[2];
  if (!*(v52 + 16))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_33_30(v52, v81, v84, v86, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109);

  sub_25BAA4AF4(&v111);
  v53 = pthread_getspecific(v0);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_22();
    v54 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
    v55 = swift_allocObject();
    v56 = OUTLINED_FUNCTION_18_48(v55, xmmword_25BCBAE50);
    if ((v56 & 0x8000000000000000) != 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v57 = v56;
    v6 = HIDWORD(v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F20, qword_25BCC2460);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_25BCBAE70;
    *(v58 + 32) = v6;
    *(v58 + 36) = v57;
    sub_25BC9FBFC(v58);
    *(v55 + 128) = 0;
    *(v55 + 136) = 0;
    *(v55 + 144) = v59;
    *(v55 + 152) = 0;
    *(v55 + 160) = 0;
    v54[2] = v55;

    pthread_setspecific(v0, v54);
  }

  swift_beginAccess();
  v60 = v54[2];
  if (!*(v60 + 16))
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_33_30(v60, v82, v85, v87, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110);

  v0 = v114;

  sub_25BAA4AF4(&v111);
  v61 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v61);

  v6 = 1;
  LOBYTE(v111) = 1;
  OUTLINED_FUNCTION_31_33();
  sub_25BC0D638();
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v62 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v62);
  v63 = sub_25BAA31C0();
  v64 = *(v63 + 16);
  os_unfair_lock_lock(v64);
  *(v63 + 24) = 1;
  v65 = *(v0 + 4);
  v23 = __OFADD__(v65, 1);
  v66 = v65 + 1;
  if (v23)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v0 + 4) = v66;
  os_unfair_lock_unlock(v64);
  OUTLINED_FUNCTION_9_7();

  sub_25BA9C2C8(&v116);
  *(v63 + 24) = 0;

  *v88 = v62;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC9FB70(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if ((v1 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0uLL;
  do
  {
    v4 = (&v7 & 0xFFFFFFFFFFFFFFF7 | (8 * (v2 & 1)));
    v5 = v2 + 1;
    v6 = *(result + 8 * v2 + 32);
    v7 = v3;
    *v4 = v6;
    v3 = v7;
    v2 = v5;
  }

  while (v1 != v5);

  if (v1 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BC9FBFC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if ((v1 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = (&v7 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v2 & 1)));
    v5 = v2 + 1;
    v6 = *(result + 4 * v2 + 32);
    v7 = v3;
    *v4 = v6;
    v3 = v7;
    v2 = v5;
  }

  while (v1 != v5);

  if (v1 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void maxPool2D(_:kernelSize:stride:padding:)()
{
  OUTLINED_FUNCTION_9_18();
  v45 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_21_39();
  v9 = *v8;
  v10 = *(*v8 + 16);
  v11 = *(v10 + 160);
  if (!sub_25BAA80BC(v11, &unk_286D42270))
  {
    LOBYTE(v57[0]) = v11;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v46 = v10;
    v47 = v57;
    v48 = xmmword_25BCBCE20;
    LOBYTE(v49) = 0;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v51) = 2;
    v53 = 3;
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28(v27, v28, v29, v30, v31, v32, 30);
  }

  v46 = *(v10 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  OUTLINED_FUNCTION_34_23(inited);
  v42 = v7;
  v43 = v2;
  sub_25BCA4578(&v46, v57, v3, v2, v7, v45, &v56);

  v14 = v56;
  if (v56)
  {
    v41 = *(v9 + 16);
    v57[0] = v9;
    Tensor.scalarType.getter(v13);
    OUTLINED_FUNCTION_34();
    v16 = *(v15 + 32);

    v16(&v47, v57, v0);
    v46 = v14;
    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = v4;
    v17[4] = v3;
    v17[5] = v43;
    v17[6] = v7;
    v17[7] = v45;
    v18 = OUTLINED_FUNCTION_78_8();
    v20 = v19;

    v55[55] = 0;
    OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v58 = xmmword_25BCD6F60;
    OUTLINED_FUNCTION_28(v21);
    type metadata accessor for Max2DPoolOperation();
    swift_allocObject();
    v22 = OUTLINED_FUNCTION_3();
    sub_25BB9A684(v22, v23, v24, v41, v1, v4, v3, v43, v42, v45, &v46, v57, v18, v20, v41, v42, v43, v1, v0, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52);
    sub_25BAA51C8(*(v9 + 16) + 168, v55);
    sub_25BAA51C8(v55, v54);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v46);

    sub_25BAA4AF4(&v46);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v46);

    sub_25BAA4AF4(&v46);
    v25 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3(v25);
    LOBYTE(v46) = 1;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_31_33();
    sub_25BC0F080();
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_22();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v26);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v55);
    *v44 = v26;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_12_51();
    sub_25BCB74CC(v33, v34, v35, v36, v37, v38, v39, v40, 38);
    __break(1u);
  }
}

void averagePool2D(_:kernelSize:stride:padding:countIncludesPadding:)()
{
  OUTLINED_FUNCTION_9_18();
  HIDWORD(v56) = v5;
  v59 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_21_39();
  v10 = *v9;
  v11 = *(*v9 + 16);
  v12 = *(v11 + 160);
  if (!sub_25BAA80BC(v12, &unk_286D42270))
  {
    LOBYTE(v70[0]) = v12;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v60 = v11;
    v61 = v70;
    v62 = xmmword_25BCBCE20;
    LOBYTE(v63) = 0;
    OUTLINED_FUNCTION_22_39();
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28(v38, v39, v40, v41, v42, v43, 84);
  }

  v60 = *(v11 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  OUTLINED_FUNCTION_34_23(inited);
  v14 = v3;
  v15 = v3;
  v16 = v2;
  v57 = v8;
  sub_25BCA4578(&v60, v70, v15, v2, v8, v59, &v69);

  v18 = v69;
  if (v69)
  {
    v53 = *(v10 + 16);
    v54 = v10;
    v70[0] = v10;
    Tensor.scalarType.getter(v17);
    OUTLINED_FUNCTION_34();
    v20 = *(v19 + 32);

    v20(&v61, v70, v0);
    v60 = v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = v4;
    *(v21 + 32) = v14;
    *(v21 + 40) = v16;
    *(v21 + 48) = v57;
    *(v21 + 56) = v59;
    *(v21 + 64) = BYTE4(v56) & 1;
    v22 = sub_25BAAF074(sub_25BB9E518, v21);
    v24 = v23;

    v68[55] = 0;
    OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v71 = xmmword_25BCC4A70;
    OUTLINED_FUNCTION_28(v25);
    type metadata accessor for Average2DPoolOperation();
    swift_allocObject();
    LOBYTE(v52) = BYTE4(v56) & 1;
    v26 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v26, v27, v28, v53, v1, v4, v14, v16, v57, v59, v52, &v60, v70, v22, v24, v53, v54, v56, v57, v1, v0, v59, v60, v61, v62, *(&v62 + 1), v63, v64, v65);
    sub_25BAA51C8(*(v55 + 16) + 168, v68);
    sub_25BAA51C8(v68, v67);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v60);

    sub_25BAA4AF4(&v60);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v60);

    v29 = v66;

    sub_25BAA4AF4(&v60);
    v30 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3(v30);
    LOBYTE(v60) = 1;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_31_33();
    sub_25BC0EDE4(v31, v32, v33, v34, v35, v29, v36);
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_22();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v37);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v68);
    *v58 = v37;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_12_51();
    sub_25BCB74CC(v44, v45, v46, v47, v48, v49, v50, v51, 91);
    __break(1u);
  }
}

void sub_25BCA0404(uint64_t *a1@<X0>, const char **a2@<X8>, float a3@<S0>)
{
  v7 = sub_25BCB783C();
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (a3 <= 0.0)
  {
    *a2 = v11;
  }

  else if (a3 >= 1.0)
  {
    *&v75 = *v3;

    Tensor.init(zerosLike:)(&v75);
  }

  else
  {
    v67 = v8;
    v12 = *a1;
    v13 = *(v11 + 2);
    v14 = sub_25BAA80BC(*(v13 + 160), &unk_286D42270);
    if (!v14)
    {
      v98 = v11;
      Tensor.scalarType.getter(v14);
      OUTLINED_FUNCTION_34();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      *&v75 = &v98;
      *(&v75 + 1) = v13;
      v76 = 0uLL;
      LOBYTE(v77) = 6;
      *(&v77 + 1) = v57;
      LOBYTE(v78) = 2;
      BYTE4(v85) = 3;
      OUTLINED_FUNCTION_1_81();
      sub_25BADDD28(v58, v59, v60, v61, v62, v63, 504);
    }

    v15 = *(v12 + 16);
    *&v93 = *(v13 + 152);
    v16 = *(v13 + 160);
    *(&v76 + 1) = MEMORY[0x277D839F8];
    *&v77 = &protocol witness table for Double;
    *&v75 = 0;
    v80 = MEMORY[0x277D839F8];
    v81 = &protocol witness table for Double;
    *(&v77 + 1) = 0x3FF0000000000000;
    LOBYTE(v87) = 2;
    BYTE1(v87) = v16;
    HIBYTE(v97) = 0;
    v98 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
    v99 = 110;
    LOBYTE(v100) = 2;
    v101 = xmmword_25BCBC690;
    v102 = "init(id:state:shape:distribution:creationSite:)";
    v103 = 47;
    LOWORD(v104) = 2;
    type metadata accessor for RandomOperation();
    swift_allocObject();

    sub_25BCB617C();
    v17 = OUTLINED_FUNCTION_3();
    v23 = sub_25BC323E4(v17, v18, v19, v15, v20, v21, v22);
    sub_25BAA51C8(*(v11 + 2) + 168, &v89);
    v68 = a2;
    if (*(&v90 + 1))
    {
      v93 = v89;
      v94 = v90;
      v95 = v91;
      LODWORD(v96) = v92;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v75);

      sub_25BAA51C8(&v75, &v93);
      sub_25BAA4AF4(&v75);
      if (*(&v90 + 1))
      {
        sub_25BA9C2C8(&v89);
      }
    }

    v24 = sub_25BB18AA4();

    sub_25BC170C8(v24, &v93, &v89);
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v75);

    v25 = v82;

    sub_25BAA4AF4(&v75);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v75);

    v26 = v81;

    sub_25BAA4AF4(&v75);
    v27 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3(v27);
    OUTLINED_FUNCTION_20_23();
    LOBYTE(v75) = v28;
    OUTLINED_FUNCTION_19();
    v31 = sub_25BC0C634(v23, 0, &v89, v29, v25, v26, v30);
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;

    sub_25BAA6EB0();
    v33 = sub_25BAA51C8(&v93, &v89);
    v66 = v23;
    if (*(&v90 + 1))
    {
      v75 = v89;
      v76 = v90;
      v77 = v91;
      LODWORD(v78) = v92;
      *&v89 = v32;
      v34 = Tensor.scalarType.getter(v33);
      if (sub_25BBABD24(v34, v35) != 2)
      {
        OUTLINED_FUNCTION_12_51();
        sub_25BC87800(v36, v37, v38, v39, v40, v41, v42, v43, 94);
      }

      v74 = v32;
      Tensor.place(on:)(&v75);
      sub_25BABF0A8(&v75);
      v32 = v74;
    }

    else
    {
      sub_25BA9C2C8(&v89);
      v74 = v32;
    }

    v73 = v32;
    v44 = *(*(v11 + 2) + 160);
    OUTLINED_FUNCTION_27_36();
    v45 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v46 = swift_allocObject();
    v64 = xmmword_25BCBAE50;
    *(v46 + 16) = xmmword_25BCBAE50;
    *(v46 + 32) = a3;
    HIBYTE(v71) = v44;
    sub_25BAA51C8(&v75, &v89);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v72, v46, &v71 + 7, &v89, &v70);
    sub_25BA9C2C8(&v75);
    static Tensor..>= infix(_:_:)(&v73, &v70, v47, v48, v49, v50, v51, v52, v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, *(&v93 + 1), v94, *(&v94 + 1), v95, *(&v95 + 1), v96, v97, v98, v99, v100, v101, *(&v101 + 1), v102, v103, v104);

    v53 = v75;
    LOBYTE(v46) = *(*(v11 + 2) + 160);
    OUTLINED_FUNCTION_27_36();
    v72 = v45;
    v54 = swift_allocObject();
    *(v54 + 16) = v64;
    *(v54 + 32) = 1.0 - a3;
    LOBYTE(v70) = v46;
    sub_25BAA51C8(&v75, &v89);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v72, v54, &v70, &v89, &v73);
    sub_25BA9C2C8(&v75);
    v55 = v73;
    *&v75 = v11;
    *&v89 = v53;
    LOBYTE(v73) = *(*(v11 + 2) + 160);
    v56 = v67;
    (*(v67 + 104))(v10, *MEMORY[0x277D84660], v7);
    Tensor.cast(to:roundingRule:)();
    (*(v56 + 8))(v10, v7);
    static Tensor.* infix(_:_:)();

    v73 = v55;
    static Tensor./ infix(_:_:)();

    sub_25BA9C2C8(&v93);

    *v68 = v75;
  }
}

uint64_t normalize(_:mean:variance:scale:offset:varianceEpsilon:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v17 = *a6;
  v18 = v10;
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(&v18, &v16);

  v13 = v18;
  v17 = v9;
  v18 = v8;
  static Tensor.- infix(_:_:)();
  if (v11)
  {
    v18 = v13;
    static Tensor.* infix(_:_:)();
  }

  else
  {
  }

  static Tensor.* infix(_:_:)();

  v14 = v18;
  if (v12)
  {
    v16 = v12;
    v17 = v18;
    static Tensor.+ infix(_:_:)();
  }

  else
  {

    *a7 = v14;
  }

  return result;
}

uint64_t Tensor.droppingOut(withProbability:seed:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, const char **a3@<X8>, float a4@<S0>)
{
  if (a4 < 0.0 || a4 > 1.0)
  {
    goto LABEL_14;
  }

  v9 = *v4;
  if ((a2 & 1) == 0)
  {
LABEL_10:
    UInt64.vector2.getter(a1);
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v14;
    v27 = 0;
    v28 = 0;
    v26[1] = v9;
    sub_25BB6B668(v26);
    v25 = v26[0];
    sub_25BCA0404(&v25, a3, a4);
  }

  type metadata accessor for ContextManager();
  v10 = sub_25BAA49B8();
  swift_beginAccess();
  v11 = v10[2];
  v12 = *(v11 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[2] = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_25BBF1454();
    v11 = v16;
    v10[2] = v16;
    if (v12)
    {
LABEL_8:
      if (v12 <= *(v11 + 16))
      {
        a1 = sub_25BC32FA0();
        v10[2] = v11;
        swift_endAccess();

        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCE32E0);
  sub_25BCB69CC();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_12_51();
  result = sub_25BCB74CC(v17, v18, v19, v20, v21, v22, v23, v24, 486);
  __break(1u);
  return result;
}

uint64_t sub_25BCA0DA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v8 = *(result + 32);
      v9 = *(v8 + 16);
      v10 = *(*(a2 + 32) + 16);
      v26 = *(a2 + 32);
      v11 = *(v10 + 160);
      v28 = *(v10 + 152);
      LOBYTE(v29) = v11;
      v48 = 0;
      v41[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift";
      v41[1] = 112;
      v42 = 2;
      v43 = xmmword_25BCD6F70;
      v44 = "init(id:gradientOperand:operand:kernelSize:stride:padding:resultDescriptor:creationSite:)";
      v45 = 89;
      v46 = 2;
      v47 = 0;
      type metadata accessor for Max2DPoolGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      sub_25BB9A7A4(0, 0, 0, v9, v10, a3, a4, a5, a6, a7, a8, &v28, v41, a4, v26, a5, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      v17 = v16;
      sub_25BAA51C8(*(v8 + 16) + 168, v40);
      sub_25BAA51C8(v40, v39);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v28);

      v18 = v38;

      sub_25BAA4AF4(&v28);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v28);

      v19 = v37;

      sub_25BAA4AF4(&v28);
      type metadata accessor for TensorRepresentation();
      v20 = swift_allocObject();
      LOBYTE(v28) = 1;
      v21 = sub_25BC11858(v17, 0, v39, 0x100000000, v18, v19, v20);
      type metadata accessor for TensorHandle();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_25BCBAE50;
      *(v23 + 32) = v22;

      *(v23 + 40) = sub_25BAC42B0();
      *(v23 + 48) = v24;

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BCA107C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      HIDWORD(v35) = a9;
      v9 = *(result + 32);
      v10 = *(v9 + 16);
      v11 = *(*(a2 + 32) + 16);
      v36 = *(a2 + 32);
      v12 = *(v11 + 160);
      v38 = *(v11 + 152);
      LOBYTE(v39) = v12;
      v55 = 0;
      OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
      v50 = xmmword_25BCD6F80;
      v51 = "init(id:gradientOperand:operand:kernelSize:stride:padding:countIncludesPadding:resultDescriptor:creationSite:)";
      v52 = 110;
      v53 = v13;
      v54 = 0;
      v34 = v14;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      type metadata accessor for Average2DPoolGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      LOBYTE(v33) = a9 & 1;
      v23 = OUTLINED_FUNCTION_3();
      sub_25BB9A580(v23, v24, v25, v10, v11, v16, v34, a5, v18, v20, v22, v33, &v38, v49, v34, v35, v36, a5, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      v27 = v26;
      sub_25BAA51C8(*(v9 + 16) + 168, v48);
      sub_25BAA51C8(v48, v47);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v38);

      sub_25BAA4AF4(&v38);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v38);

      sub_25BAA4AF4(&v38);
      v28 = type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_16_3(v28);
      OUTLINED_FUNCTION_20_23();
      LOBYTE(v38) = v29;
      OUTLINED_FUNCTION_19();
      sub_25BC11AF4(v27, 0, v47);
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_22();
      v30 = swift_allocObject();
      OUTLINED_FUNCTION_14_2(v30);
      sub_25BAA6EB0();

      sub_25BA9C2C8(v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_25BCBAE50;
      *(v31 + 32) = v30;

      *(v31 + 40) = sub_25BAC42B0();
      *(v31 + 48) = v32;

      return v31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BCA1334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!*(a2 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  v14 = *(v12 + 16);
  sub_25BAA51C8(v14 + 168, v48);
  sub_25BB2B624(a3, v46);
  if (v47 < 3)
  {
    v15 = *(v13 + 16);
    sub_25BB2B624(a3, v41);
    v16 = *(a7 + 32);

    sub_25BCB617C();
    sub_25BCB617C();
    v16(v44, a6, a7);
    v43 = a5;
    v45 = 0;
    *&v49 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PaddingOps.swift";
    *(&v49 + 1) = 112;
    v50 = 2;
    v51 = xmmword_25BCD6F90;
    v52 = "init(id:gradientOperand:operand:mode:padding:resultDescriptor:creationSite:)";
    v53 = 76;
    v54 = 2;
    type metadata accessor for PadGradientOperation();
    swift_allocObject();
    v17 = sub_25BB61158(0, 0, 0, v14, v15, v41, a4, &v43, &v49);
    sub_25BAA51C8(v48, &v43);
    sub_25BAA51C8(&v43, v42);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v41);

    v18 = v41[10];

    sub_25BAA4AF4(v41);
    sub_25BAA49B8();
    sub_25BAA4A5C(v41);

    v19 = v41[9];

    sub_25BAA4AF4(v41);
    type metadata accessor for TensorRepresentation();
    v20 = swift_allocObject();
    LOBYTE(v41[0]) = 1;
    v21 = sub_25BC11D90(v17, 0, v42, 0x100000000, v18, v19, v20);
    type metadata accessor for TensorHandle();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;

    sub_25BAA6EB0();

    sub_25BA9C2C8(&v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25BCBAE50;
    *(v23 + 32) = v22;

    *(v23 + 40) = sub_25BAC42B0();
    *(v23 + 48) = v24;

LABEL_15:

    sub_25BA9C2C8(v48);
    sub_25BB2B680(v46);
    return v23;
  }

  v25 = *(a4 + 16);
  if (v25)
  {
    v41[0] = MEMORY[0x277D84F90];

    sub_25BAA21EC(0, v25, 0);
    v26 = v41[0];
    v27 = (a4 + 32);
    v28 = *(v41[0] + 16);
    do
    {
      v30 = *v27;
      v27 += 2;
      v29 = v30;
      v41[0] = v26;
      v31 = *(v26 + 24);
      v32 = v28 + 1;
      if (v28 >= v31 >> 1)
      {
        sub_25BAA21EC(v31 > 1, v28 + 1, 1);
        v26 = v41[0];
      }

      *(v26 + 16) = v32;
      *(v26 + 8 * v28++ + 32) = v29;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v32 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v32 == *(a5 + 16) && v32 == *(*(*(v12 + 16) + 152) + 16))
  {
    sub_25BB63448(v26, a5);
    v34 = v33;
    v35 = sub_25BCB617C();
    sub_25BB63240(v35, v34);
    v37 = v36;

    sub_25BB638B4(v37, v12, v41);

    v38 = v41[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25BCBAE50;
    *(v23 + 32) = v38;

    *(v23 + 40) = sub_25BAC42B0();
    *(v23 + 48) = v39;

    goto LABEL_15;
  }

LABEL_18:
  result = sub_25BCB74CC("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorIndexing.swift", 107, 2, 24);
  __break(1u);
  return result;
}

uint64_t sub_25BCA181C(uint64_t result, uint64_t a2, char a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = *(result + 32);
  if ((a3 & 1) == 0)
  {
    v28 = 0;
    goto LABEL_8;
  }

  if (v3 < 3)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v4 = *(a2 + 48);

  v28 = v4;

LABEL_8:
  v35[55] = 0;
  v36 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  v37 = 107;
  v38 = 2;
  v39 = xmmword_25BCD6FB0;
  v40 = "init(id:gradient:input:weight:bias:stride:padding:dilation:groupCount:creationSite:)";
  v41 = 84;
  v42 = 2;
  type metadata accessor for ConvolutionTranspose2DGradientOperation();
  swift_allocObject();

  v5 = sub_25BBA5484();
  sub_25BAA51C8(*(v29 + 16) + 168, v35);
  sub_25BAA51C8(v35, v34);
  sub_25BAA51C8(v34, v33);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v30);

  v6 = v32;

  sub_25BAA4AF4(v30);
  sub_25BAA49B8();
  sub_25BAA4A5C(v30);

  v7 = v31;

  sub_25BAA4AF4(v30);
  type metadata accessor for TensorRepresentation();
  v8 = swift_allocObject();
  v30[0] = 1;
  v9 = sub_25BC1202C(v5, 0, v33, 0x100000000, v6, v7, v8);
  type metadata accessor for TensorHandle();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v34);
  sub_25BAA51C8(v35, v34);
  sub_25BAA51C8(v34, v33);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v30);

  v11 = v32;

  sub_25BAA4AF4(v30);
  sub_25BAA49B8();
  sub_25BAA4A5C(v30);

  v12 = v31;

  sub_25BAA4AF4(v30);
  v13 = swift_allocObject();
  v30[0] = 1;
  v14 = sub_25BC1202C(v5, 1, v33, 0x100000000, v11, v12, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBAE70;
  *(v16 + 32) = v10;

  *(v16 + 40) = sub_25BAC42B0();
  *(v16 + 48) = v17;
  *(v16 + 56) = v15;

  *(v16 + 64) = sub_25BAC42B0();
  *(v16 + 72) = v18;
  if (v28)
  {
    sub_25BAA51C8(*(v28 + 16) + 168, v34);
    sub_25BAA51C8(v34, v33);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v30);

    v19 = v32;

    sub_25BAA4AF4(v30);
    sub_25BAA49B8();
    sub_25BAA4A5C(v30);

    v20 = v31;

    sub_25BAA4AF4(v30);
    v21 = swift_allocObject();
    v30[0] = 1;
    v22 = sub_25BC1202C(v5, 2, v33, 0x100000000, v19, v20, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v34);

    v24 = sub_25BAC42B0();
    v26 = v25;
    sub_25BAC98F4();
    v16 = v27;

    sub_25BA9C2C8(v35);
    *(v16 + 16) = 3;
    *(v16 + 80) = v23;
    *(v16 + 88) = v24;
    *(v16 + 96) = v26;
  }

  else
  {
    sub_25BA9C2C8(v35);
  }

  return v16;
}

uint64_t Tensor.topk(_:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v8 = *v3;
  v9 = sub_25BB731F4(*(*(*v3 + 16) + 152));
  if (v10)
  {
    goto LABEL_6;
  }

  v4 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    v56[3] = MEMORY[0x277D83B88];
    v56[0] = a3;
    v57 = xmmword_25BCD6FC0;
    v58 = 0;
    v59 = 0;
    v60 = v4;
    v62 = 0;
    v63 = 0;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    v64 = -1;
    v65 = 12;
    OUTLINED_FUNCTION_1_81();
    sub_25BADDD28(v50, v51, v52, v53, v54, v55, 450);
  }

  if (v9 <= a3)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22();
  *(swift_allocObject() + 16) = a3;

  OUTLINED_FUNCTION_78_8();

  v67[55] = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v68 = xmmword_25BCD6FD0;
  OUTLINED_FUNCTION_28(v11);
  type metadata accessor for TopKOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_3();
  sub_25BC3EA94();
  sub_25BAA51C8(*(v8 + 16) + 168, v67);
  sub_25BAA51C8(v67, v66);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v12 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v12, v13, v14, v15, v16, v17, v18, v19, v56[0]);

  sub_25BAA4AF4(v56);
  v20 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v20, v21, v22, v23, v24, v25, v26, v27, v56[0]);

  sub_25BAA4AF4(v56);
  v28 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v28);
  LOBYTE(v56[0]) = 1;
  v29 = OUTLINED_FUNCTION_28_34();
  sub_25BC122C8(v29, 0);
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v30);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v67);
  *a1 = v30;
  sub_25BAA51C8(*(v8 + 16) + 168, v67);
  sub_25BAA51C8(v67, v66);
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v31 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v31, v32, v33, v34, v35, v36, v37, v38, v56[0]);

  sub_25BAA4AF4(v56);
  v39 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v39, v40, v41, v42, v43, v44, v45, v46, v56[0]);

  sub_25BAA4AF4(v56);
  OUTLINED_FUNCTION_16_3(v28);
  LOBYTE(v56[0]) = 1;
  v47 = OUTLINED_FUNCTION_28_34();
  sub_25BC122C8(v47, 1);
  OUTLINED_FUNCTION_22();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v48);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v67);
  *a2 = v48;
  return result;
}

uint64_t sub_25BCA21A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v10 = *(a2 + 32);
      v4 = v10;

      Tensor.topk(_:)(&v9, &v8, a3);

      v10 = v4;

      Tensor.init(zerosLike:)(&v10);
      sub_25BBFF0D8();

      v5 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *(v6 + 32) = v5;

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v7;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks6TensorV11PaddingModeO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BCA234C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BCA23A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_25BCA2400(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void OUTLINED_FUNCTION_36_23()
{

  JUMPOUT(0x25F876C90);
}

uint64_t Tensor.withUnsafeMetalBuffer<A>(_:)(void (*a1)(void))
{
  v3 = v2;
  v4 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v7 + 16);
    swift_retain_n();
    v9 = sub_25BA928B4();
    [v9 lock];

    sub_25BA92920(v8, 0, 0, v28);
    if (v2)
    {
      [*(v8 + 224) unlock];
      goto LABEL_15;
    }

    v27 = a1;
    [*(v8 + 224) unlock];

    v11 = v28[0];
    v10 = v28[1];
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v12 = qword_281557400;
    v13 = *(v7 + 16);
    v30 = *(v13 + 152);
    v29 = *(v13 + 160);
    sub_25BAA51C8(v13 + 168, v28);
    swift_unknownObjectRetain();
    sub_25BCB617C();
    sub_25BC72A84(&v30, &v29, v28, v12, v11, v10);
    v15 = v14;
    v3 = 0;
    sub_25BA9C2C8(v28);

    v16 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(*(v7 + 16) + 168, v28);
    ObjectType = swift_getObjectType();
    v18 = swift_unknownObjectRetain();
    LOBYTE(v30) = 1;
    v19 = sub_25BC5FAD0(v18, v28, 0x100000000uLL, v16, ObjectType, v15);
    type metadata accessor for TensorHandle();
    v7 = swift_allocObject();
    *(v7 + 16) = v19;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *v4 = v7;
    a1 = v27;
  }

  v20 = *(v7 + 16);
  swift_retain_n();
  v21 = sub_25BA928B4();
  [v21 lock];

  sub_25BA92920(v20, 0, 0, v28);
  if (v3)
  {
    [*(v20 + 224) unlock];
LABEL_15:

    __break(1u);
    return result;
  }

  [*(v20 + 224) unlock];

  v22 = v28[0];
  Class = object_getClass(v28[0]);
  if (Class == _TtC14NeuralNetworks21MPSGraphTensorStorage && v22)
  {
    v24 = sub_25BC29614(Class);
    swift_unknownObjectRelease();
    if (v24)
    {
      v25 = swift_unknownObjectRetain();
      a1(v25);
      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (a1)(0);
}

void sub_25BCA27DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SliceOps.swift", 110, 2, 18, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BCA283C()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_25BB00B9C(0, v2, 0);
    if (v2 <= *(v1 + 16))
    {
      v4 = v0[7];
      if (v2 > *(v4 + 16))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v5 = v0[8];
      if (v2 > *(v5 + 16))
      {
LABEL_14:
        __break(1u);
        return result;
      }

      result = v17;
      v6 = (v1 + 32);
      v7 = (v4 + 32);
      for (i = (v5 + 32); ; ++i)
      {
        v10 = *v6++;
        v9 = v10;
        v12 = *v7++;
        v11 = v12;
        if (v12 < v9)
        {
          break;
        }

        v13 = *i;
        v18 = result;
        v15 = *(result + 16);
        v14 = *(result + 24);
        if (v15 >= v14 >> 1)
        {
          sub_25BB00B9C(v14 > 1, v15 + 1, 1);
          result = v18;
        }

        *(result + 16) = v15 + 1;
        v16 = (result + 24 * v15);
        v16[4] = v9;
        v16[5] = v11;
        v16[6] = v13;
        if (!--v2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_25BCA296C()
{

  return v0;
}

uint64_t sub_25BCA29B4()
{
  sub_25BCA296C();

  return swift_deallocClassInstance();
}

void sub_25BCA2AC4(uint64_t a1)
{
  (*(*v1 + 136))();
  sub_25BCB625C();

  sub_25BAD4C78();
  sub_25BAD4C78();

  sub_25BAD4C78();
}

uint64_t sub_25BCA2B84(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 152) = a10;
  *(v11 + 160) = a11;
  if (!a3)
  {
    v12 = OUTLINED_FUNCTION_1_82();
    a1 = sub_25BAA5EA0(v12, v13);
  }

  return OUTLINED_FUNCTION_0_98(a1, a2, a3);
}

uint64_t sub_25BCA2BEC()
{
  sub_25BCA296C();
  sub_25BA9D148(*(v0 + 152), *(v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t sub_25BCA2C4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a4;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0xD000000000000013, 0x800000025BCE0890);
  }

  return OUTLINED_FUNCTION_0_98(a1, a2, a3);
}

uint64_t sub_25BCA2CC4(uint64_t a1, uint64_t a2)
{
  if (!sub_25BB07E0C(a1, a2))
  {
    v4 = sub_25BAC4018();
    if (v4 != sub_25BAC4018())
    {
      return 0;
    }

    *(v2 + 152) = a2;
  }

  return 1;
}

uint64_t sub_25BCA2D3C()
{
  sub_25BCA296C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BCA2D9C(uint64_t a1)
{
  result = sub_25BCA2E4C(&qword_27FBB6168, type metadata accessor for SliceGradientOperation, byte_25BCD7164);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BCA2DF4(uint64_t a1)
{
  result = sub_25BCA2E4C(&qword_27FBB7DD0, type metadata accessor for BaseSliceOperation, &unk_25BCD713C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BCA2E4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BCA2E94(uint64_t a1)
{
  v3 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for BNNSOperationDispatchable))
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v9 = sub_25BB722C0(*(a1 + 16), 0);
      sub_25BCA51F0();
      v12 = v11;
      sub_25BCB617C();
      sub_25BAB3820(v14);
      if (v12 == v10)
      {
        return v9;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = swift_getObjectType();
  v8 = *(v6 + 16);
  swift_unknownObjectRetain();
  v9 = v8(a1, v7, v6);
  swift_unknownObjectRelease();
  return v9;
}

unint64_t sub_25BCA2FE8(uint64_t a1)
{
  result = sub_25BCA3010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BCA3010()
{
  result = qword_28154E3C0;
  if (!qword_28154E3C0)
  {
    type metadata accessor for PassthroughOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154E3C0);
  }

  return result;
}

uint64_t static Tensor..! prefix(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (*(v4 + 160) != 12)
  {
    LOBYTE(v48) = *(v4 + 160);
    v36 = sub_25BC8FACC();
    v37 = v35;
    v38 = xmmword_25BCBC6A0;
    LOBYTE(v39) = 6;
    v40 = 12;
    LOBYTE(v41) = 0;
    v45 = 3;
    sub_25BADDD28(".!(_:)", 6, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/Logical.swift", 100, 2, 17);
  }

  *&v48 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryLogicalOps.swift";
  *(&v48 + 1) = 117;
  v49 = 2;
  v50 = xmmword_25BCD71A0;
  v51 = "init(id:operator:operand:creationSite:)";
  v52 = 39;
  v53 = 2;
  type metadata accessor for UnaryLogicalOperation();
  swift_allocObject();

  v5 = sub_25BCB24D8(0, 0, 0, v4, &v48);
  sub_25BAA51C8(*(v3 + 16) + 168, v47);
  sub_25BAA51C8(v47, v46);
  v6 = type metadata accessor for ContextManager();
  swift_retain_n();
  v7 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v7, v8, v9, v10, v11, v12, v13, v14, v36);

  sub_25BAA4AF4(&v36);
  v15 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v15, v16, v17, v18, v19, v20, v21, v22, v36);

  OUTLINED_FUNCTION_21_18(v23, v24, v25, v26, v27, v28, v29, v30, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44);
  sub_25BAA4AF4(&v36);
  v31 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v31);
  OUTLINED_FUNCTION_7_36();
  sub_25BC12558(v5, 0, v46);
  v32 = OUTLINED_FUNCTION_17_7();
  v33 = OUTLINED_FUNCTION_15_7(v32);
  *(v33 + 16) = v6;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v47);
  *a2 = v33;
  return result;
}

uint64_t sub_25BCA385C(char a1, uint64_t *a2, void (*a3)(_OWORD *, void *))
{
  v5 = *a2;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6600, &qword_25BCCB580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  sub_25BAA51C8(v9, v8);
  sub_25BC04800();
  sub_25BA9C2C8(v9);
  *&v9[0] = v8[12];
  v8[0] = v5;
  a3(v9, v8);
}

uint64_t sub_25BCA394C(uint64_t *a1, char a2, void (*a3)(uint64_t *, _OWORD *))
{
  v11 = *a1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6600, &qword_25BCCB580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  sub_25BAA51C8(v9, v7);
  sub_25BC04800();
  sub_25BA9C2C8(v9);
  *&v9[0] = v8;
  a3(&v11, v9);
}

uint64_t sub_25BCA3D14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

void sub_25BCA3D28()
{
  OUTLINED_FUNCTION_14_6();
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v2;
    v8 = v1;
    v9 = v0;
    v25 = MEMORY[0x277D84F90];
    sub_25BAA21EC(0, v5, 0);
    if (v5 <= *(v8 + 16))
    {
      if (v5 > *(v7 + 16))
      {
LABEL_24:
        __break(1u);
        return;
      }

      v6 = v25;
      v10 = (v8 + 32);
      v11 = (v9 + 32);
      v12 = (v7 + 32);
      while (1)
      {
        v14 = *v10++;
        v13 = v14;
        v15 = *v11++;
        v16 = __OFSUB__(v13, v15);
        v17 = v13 - v15;
        if (v16)
        {
          break;
        }

        v16 = __OFSUB__(v17, 1);
        v18 = v17 - 1;
        if (v16)
        {
          goto LABEL_19;
        }

        v19 = *v12;
        if (*v12 < 0)
        {
          v16 = __OFSUB__(0, v19);
          v19 = -v19;
          if (v16)
          {
            goto LABEL_22;
          }
        }

        else if (!v19)
        {
          goto LABEL_20;
        }

        v20 = v18 / v19;
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_21;
        }

        v23 = *(v25 + 16);
        v22 = *(v25 + 24);
        if (v23 >= v22 >> 1)
        {
          v24 = OUTLINED_FUNCTION_81(v22);
          sub_25BAA21EC(v24, v23 + 1, 1);
        }

        *(v25 + 16) = v23 + 1;
        *(v25 + 8 * v23 + 32) = v21;
        ++v12;
        if (!--v5)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (sub_25BAB5C48(v6, &unk_286D446F8))
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v4 = v6;
  OUTLINED_FUNCTION_15_2();
}

void sub_25BCA3E80(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7 >= 2 && (v8 = *a3, *(*a3 + 16) >= 2uLL) && ((v29 = *a1, v11 = TensorShape.subscript.getter(v7 - 2), v12 = *(v6 + 16) - 1, v28 = v6, v13 = TensorShape.subscript.getter(v12), v14 = *(v8 + 16) - 2, v29 = v8, v15 = TensorShape.subscript.getter(v14), v16 = *(v8 + 16) - 1, v28 = v8, v17 = TensorShape.subscript.getter(v16), (a2 & 1) == 0) ? (v18 = v13) : (v18 = v11), (a2 & 1) == 0 ? (v19 = v11) : (v19 = v13), (v20 = (a4 & 1) == 0) ? (v21 = v17) : (v21 = v15), v20 ? (v22 = v15) : (v22 = v17), v18 == v22 && (sub_25BCB617C(), sub_25BCA48D4(2, v6, &v28), v27 = v28, sub_25BCB617C(), sub_25BCA48D4(2, v8, &v26), v25 = v26, static ShapeInference.broadcasting(_:_:)(&v27, &v25, &v29), , , (v23 = v29) != 0)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    *a5 = v23;
    sub_25BAC0EB8(inited);
  }

  else
  {
    *a5 = 0;
  }
}

uint64_t sub_25BCA400C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (-v5 > a3 || v5 <= a3)
  {
    OUTLINED_FUNCTION_23_39();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v12, v13, v14, v15, v16, v17, v18);
  }

  v8 = v5 & (a3 >> 63);
  v9 = TensorShape.subscript.getter(v8 + a3);
  v10 = v9 / a2;
  if (a2 == -1)
  {
    if (v9 != 0x8000000000000000)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v9 % a2)
  {
    return 0;
  }

LABEL_10:
  sub_25BCB617C();
  TensorShape.subscript.setter(v10, v8 + a3);
  return sub_25BC553BC(v4, a2);
}

uint64_t sub_25BCA4108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (-v4 <= a3 && v4 > a3)
  {
    v7 = (v4 & (a3 >> 63)) + a3;
    v8 = TensorShape.subscript.getter(v7);
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = (a2 + 32);
      do
      {
        v13 = v12[v10];
        v14 = __OFADD__(v11, v13);
        v11 += v13;
        if (v14)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        ++v10;
      }

      while (v9 != v10);
      if (v8 == v11)
      {
        v36 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_29_0();
        sub_25BAAEF84();
        v15 = v36;
        while (1)
        {
          v16 = *(v3 + 16);
          if (v7 < -v16 || v7 >= v16)
          {
            break;
          }

          v19 = *v12++;
          v18 = v19;
          sub_25BCB617C();
          v23 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25BAA2110(v3, v20, v21, v22);
            v23 = v27;
          }

          v24 = (v16 & (v7 >> 63)) + v7;
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          if (v24 >= *(v23 + 16))
          {
            goto LABEL_30;
          }

          *(v23 + 8 * v24 + 32) = v18;
          v26 = *(v36 + 16);
          v25 = *(v36 + 24);
          if (v26 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_81(v25);
            sub_25BAAEF84();
          }

          *(v36 + 16) = v26 + 1;
          *(v36 + 8 * v26 + 32) = v23;
          if (!--v9)
          {
            return v15;
          }
        }

LABEL_31:
        sub_25BCB617C();
        OUTLINED_FUNCTION_17_4();
        sub_25BADDD28(v29, v30, v31, v32, v33, v34, v35);
      }
    }

    else if (!v8)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return 0;
}

unint64_t sub_25BCA42DC(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *(a2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void static ShapeInference.broadcasting(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14_6();
  a21 = v24;
  a22 = v28;
  v29 = v27;
  v30 = *v26;
  v31 = *v25;
  if (*(*v26 + 16) < *(*v25 + 16))
  {
    *v27 = 0;
    goto LABEL_36;
  }

  if (sub_25BAB5C48(*v25, *v26))
  {
    *v29 = v31;
    OUTLINED_FUNCTION_15_2();

    sub_25BCB617C();
    return;
  }

  v69 = v29;
  v33 = *(v31 + 16);
  sub_25BCB617C();
  v34 = *(v30 + 16);
  sub_25BCB617C();
  v35 = v34 + 3;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    v37 = v33;
    if (v33)
    {
      break;
    }

    if (v35 == 3)
    {
      goto LABEL_39;
    }

    v33 = 0;
    v38 = 0;
LABEL_12:
    if (v35 - 4 >= *(v30 + 16))
    {
      goto LABEL_38;
    }

    v39 = *(v30 + 8 * v35);
    if (!v37)
    {
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_45();
        sub_25BAAE04C(v44, v45, v46, v36);
        v36 = v47;
      }

      OUTLINED_FUNCTION_19_38();
      if (v41)
      {
        v48 = OUTLINED_FUNCTION_4_74(v42);
        sub_25BAAE04C(v48, v49, v50, v36);
        v36 = v51;
      }

      v38 = v39;
      goto LABEL_32;
    }

    if (v39 == 1)
    {
      if (v38 != 1)
      {
        goto LABEL_35;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = OUTLINED_FUNCTION_45();
        sub_25BAAE04C(v52, v53, v54, v36);
        v36 = v55;
      }

      OUTLINED_FUNCTION_19_38();
      if (v41)
      {
        v56 = OUTLINED_FUNCTION_4_74(v40);
        sub_25BAAE04C(v56, v57, v58, v36);
        v36 = v59;
      }

      v38 = 1;
    }

    else
    {
      if (v38 == 1)
      {
        goto LABEL_22;
      }

      if (v38 != v39)
      {
LABEL_35:

        *v69 = 0;
        goto LABEL_36;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = OUTLINED_FUNCTION_45();
        sub_25BAAE04C(v60, v61, v62, v36);
        v36 = v63;
      }

      OUTLINED_FUNCTION_19_38();
      if (v41)
      {
        v64 = OUTLINED_FUNCTION_4_74(v43);
        sub_25BAAE04C(v64, v65, v66, v36);
        v36 = v67;
      }
    }

LABEL_32:
    *(v36 + 16) = v22;
    *(v36 + 8 * v23 + 32) = v38;
    --v35;
  }

  --v33;
  if (v37 - 1 < *(v31 + 16))
  {
    if (v35 == 3)
    {
      goto LABEL_35;
    }

    v38 = *(v31 + 32 + 8 * v33);
    goto LABEL_12;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  a10 = v36;
  sub_25BCB617C();
  v68 = sub_25BAFF7EC(&a10);

  *v69 = v68;
LABEL_36:
  OUTLINED_FUNCTION_15_2();
}

void sub_25BCA4578(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = *result;
  if (*(*result + 16) != 4 || (v10 = *a2, *(*a2 + 16) != 4) || v9[6] < v10[6] && v9[7] < v10[7])
  {
    i = 0;
    goto LABEL_6;
  }

  v58 = a7;
  v14 = v9 + 4;
  sub_25BCB617C();
  v18 = 0;
  for (i = MEMORY[0x277D84F90]; ; *(i + 8 * v7 + 32) = v22)
  {
    if (v18 == 4)
    {

      if (v9[2] > 1uLL && *(i + 16) > 1uLL)
      {
        v14 = v9[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_49;
      }

LABEL_62:
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v51, v52, v53, v54, v55, v56, v57);
    }

    v19 = v9[2];
    if (v18 < -v19 || v18 >= v19)
    {
      goto LABEL_62;
    }

    v21 = (v19 & (v18 >> 63)) + v18;
    if (v21 < 0)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_25BAA2110(i, v15, v16, v17);
      i = v50;
LABEL_49:
      if (*(i + 16) >= 2uLL)
      {
        *(i + 40) = v14;
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_62;
    }

    v22 = v14[v21];
    if (v18)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = OUTLINED_FUNCTION_45();
      sub_25BAAE04C(v40, v41, v42, i);
      i = v43;
    }

    OUTLINED_FUNCTION_17_52();
    if (v24)
    {
      OUTLINED_FUNCTION_6_64(v28);
      i = v44;
    }

    v18 = 1;
LABEL_45:
    *(i + 16) = v8;
  }

  if (v18 == 3)
  {
    v25 = a6;
    v26 = a4;
    v27 = v10 + 7;
    if (v10[2] <= 3uLL)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v18 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = OUTLINED_FUNCTION_45();
        sub_25BAAE04C(v45, v46, v47, i);
        i = v48;
      }

      OUTLINED_FUNCTION_17_52();
      if (v24)
      {
        OUTLINED_FUNCTION_6_64(v23);
        i = v49;
      }

      v18 = 2;
      goto LABEL_45;
    }

    v27 = v10 + 6;
    v25 = a5;
    v26 = a3;
    if (v10[2] <= 2uLL)
    {
      goto LABEL_62;
    }
  }

  if (v25 + 0x4000000000000000 < 0)
  {
    goto LABEL_54;
  }

  v29 = v22 + 2 * v25;
  if (__OFADD__(v22, 2 * v25))
  {
    goto LABEL_55;
  }

  v30 = __OFSUB__(v29, *v27);
  v31 = v29 - *v27;
  if (v30)
  {
    goto LABEL_56;
  }

  if (!v26)
  {
    goto LABEL_57;
  }

  if (v31 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_59;
  }

  v33 = v31 / v26;
  v22 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
    goto LABEL_58;
  }

  if (v22 >= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = OUTLINED_FUNCTION_45();
      sub_25BAAE04C(v35, v36, v37, i);
      i = v38;
    }

    ++v18;
    OUTLINED_FUNCTION_17_52();
    if (v24)
    {
      OUTLINED_FUNCTION_6_64(v34);
      i = v39;
    }

    goto LABEL_45;
  }

  i = 0;
LABEL_52:
  a7 = v58;
LABEL_6:
  *a7 = i;
}

uint64_t sub_25BCA48D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = sub_25BBFD334(*(a2 + 16), -result, 0);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  if (v5 < 0)
  {
    goto LABEL_10;
  }

  TensorShape.subscript.getter(0, v5, a3);
}

void sub_25BCA4950()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100();
  if (!v5)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v12);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      OUTLINED_FUNCTION_12_40();
      *v1 = *(*(v0 + 56) + ((v10 << 9) | (8 * v11)));
      if (v9 == v6)
      {

        v12 = v10;
        goto LABEL_17;
      }

      ++v1;

      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25BCA4A2C(void *a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  sub_25BCB617C();

  if (!a2)
  {
    v10 = 0;
    a3 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    goto LABEL_31;
  }

  v30 = a3;
  v33 = a1;
  v9 = 0;
  v10 = 0;
  v11 = *(v7 + 16);
  v35 = v7 + 32;
  v36 = v7;
  v12 = &qword_27FBB3DB0;
  v13 = &off_279972000;
  v14 = &off_279972000;
  v15 = &qword_25BCCCD60;
  while (2)
  {
    if (__OFADD__(v9, 1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    if (v10 >= v11)
    {
      a3 = v9;
      a1 = v33;
      goto LABEL_27;
    }

    v31 = v9 + 1;
    v32 = a2;
    v34 = v9;
    v16 = v35 + 8 * v10;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      sub_25BC2C250(v16, v41);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      result = OUTLINED_FUNCTION_25_35();
LABEL_21:
      ++v10;
      v16 += 8;
      if (v10 >= v11)
      {
        v10 = v11;
        a1 = v33;
        a3 = v34;
        goto LABEL_27;
      }
    }

    v18 = Strong;
    if (*(Strong + 32) <= 0)
    {
      goto LABEL_19;
    }

    v19 = sub_25BA928B4();
    [v19 v13[150]];

    swift_beginAccess();
    sub_25BA9323C(v18 + 40, v38);
    if (v40)
    {
      if (v40 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v39);
      }

      else
      {
        sub_25BA9778C(v38);
      }

      [*(v18 + 224) v14[151]];

LABEL_19:
      OUTLINED_FUNCTION_25_35();
      goto LABEL_20;
    }

    sub_25BA9BE3C(v38, v37);
    v20 = v11;
    v21 = v15;
    v22 = v12;
    v23 = v14;
    v24 = v13;
    v25 = v37[1];
    ObjectType = swift_getObjectType();
    v27 = *(v25 + 56);
    v28 = v25;
    v13 = v24;
    v14 = v23;
    v12 = v22;
    v15 = v21;
    v11 = v20;
    v7 = v36;
    v29 = v27(ObjectType, v28);
    sub_25BA977E0(v37);
    [*(v18 + 224) v14 + 376];

    result = OUTLINED_FUNCTION_25_35();
    if (v29)
    {
LABEL_20:

      goto LABEL_21;
    }

    *v32 = v18;
    a2 = v32 + 1;
    ++v10;
    v9 = v31;
    if (v31 != v30)
    {
      continue;
    }

    break;
  }

  a1 = v33;
  a3 = v30;
LABEL_27:
  *a1 = v7;
  a1[1] = v10;
  return a3;
}

void sub_25BCA4CDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BB70FE0();
  v8 = v7;

  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v13 = sub_25BA9BEA0(v6);
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (!(v8 - v13 + v9))
        {
          v8 = v13;
          goto LABEL_17;
        }

        v11 = v8 + v9;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x25F8779B0](v8 + v9, v6);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }
        }

        if (__OFADD__(v11, 1))
        {
          goto LABEL_20;
        }

        *(a2 + 8 * v9++) = v12;
        if (v10 == a3)
        {
          v8 = v11 + 1;
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

    __break(1u);
  }

  else
  {
LABEL_17:
    *a1 = v6;
    a1[1] = v8;
  }
}

void *sub_25BCA4E0C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA4EEC()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100();
  if (!v5)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v15);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      v11 = __clz(__rbit64(v2)) | (v7 << 6);
      v12 = (*(v0 + 48) + 16 * v11);
      v13 = v12[1];
      v14 = *(*(v0 + 56) + 8 * v11);
      v2 &= v2 - 1;
      *v1 = *v12;
      v1[1] = v13;
      v1[2] = v14;
      if (v9 == v6)
      {
        sub_25BCB617C();
        v15 = v10;
        goto LABEL_17;
      }

      v1 += 3;
      sub_25BCB617C();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_25BCA4FDC(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, v4, 0xECuLL);
  bzero(__src, 0xECuLL);
  result = sub_25BCA6108(__dst, __src);
  if (!a2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v9 = a3;
LABEL_11:
    memcpy(a1, __src, 0xECuLL);
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      memcpy(v11, __src, 0xECuLL);
      bzero(__src, 0xECuLL);
      if (!v11[0])
      {
        sub_25BAA6F5C(v11, &qword_27FBB4828, &qword_25BCBF518);
        goto LABEL_11;
      }

      memcpy(__dst, v11, 0xECuLL);
      result = memcpy(a2, __dst, 0xECuLL);
      a2 += 240;
      ++v9;
      if (v10 == a3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA50F8()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100();
  if (!v6)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v18);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v4)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v11);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_12_40();
      v13 = v12 | (v11 << 6);
      v14 = *(v0 + 48) + 24 * v13;
      v15 = *(*(v0 + 56) + 8 * v13);
      v17 = *(v14 + 8);
      v16 = *(v14 + 16);
      *v1 = *v14;
      *(v1 + 8) = v17;
      *(v1 + 16) = v16;
      *(v1 + 24) = v15;
      if (v10 == v7)
      {
        sub_25BCB617C();
        v18 = v11;
        goto LABEL_17;
      }

      v1 += 32;
      sub_25BCB617C();
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_25BCA51F0()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100();
  if (!v5)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v12);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v8 < v6)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v10 = v7;
      OUTLINED_FUNCTION_12_40();
      *v1 = *(*(v0 + 56) + ((v10 << 10) | (16 * v11)));
      if (v9 == v6)
      {
        swift_unknownObjectRetain();
        v12 = v10;
        goto LABEL_17;
      }

      ++v1;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_25BCA52D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA5358()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100();
  if (!v5)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v13);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v8 < v6)
    {
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v9 = v7;
      v10 = (*(v0 + 56) + ((v7 << 10) | (16 * __clz(__rbit64(v2)))));
      v11 = *v10;
      v12 = v10[1];
      v2 &= v2 - 1;
      *v1 = v11;
      v1[1] = v12;
      if (v8 + 1 == v6)
      {
        swift_unknownObjectRetain();
        v13 = v9;
        goto LABEL_17;
      }

      v1 += 2;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_25BCA5444(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!a2)
  {
    a3 = 0;
LABEL_10:
    v6 = *(a4 + 16);
LABEL_11:
    *result = a4;
    result[1] = v6;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      if (!(v4 + v5))
      {
        v6 = 0;
        a3 = v4;
        goto LABEL_11;
      }

      if (v4 + v5 > *(a4 + 16))
      {
        break;
      }

      *a2++ = *(a4 + 8 * v4 + 24 + 8 * v5--);
      if (!(a3 + v5))
      {
        v6 = v4 + v5;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BCA54B4()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_0_100();
  if (!v5)
  {
    OUTLINED_FUNCTION_14_50();
LABEL_17:
    OUTLINED_FUNCTION_3_68(v12);
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_83();
    while (v8 < v6)
    {
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v7, 1))
        {
          if (v7 + 1 >= v3)
          {
            OUTLINED_FUNCTION_13_52();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_24_30();
        }

        __break(1u);
        break;
      }

      v9 = v7;
      v10 = (*(v0 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v2)))));
      v11 = v10[1];
      v2 &= v2 - 1;
      *v1 = *v10;
      v1[1] = v11;
      if (v8 + 1 == v6)
      {
        sub_25BCB617C();
        v12 = v9;
        goto LABEL_17;
      }

      v1 += 2;
      sub_25BCB617C();
      OUTLINED_FUNCTION_22_40();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_25BCA55A0(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*v25 >= v23)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD620(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_25BAFD620(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
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
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_25BCA5B6C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_25BCA5A40(&v78, *result, a3);
LABEL_89:
}

uint64_t sub_25BCA5A40(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25BCA5B6C((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25BCA5B6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_25BAB254C(a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*a4 >= *v6)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *a4;
    v13 = v7 == a4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_25BAB254C(a2);
  v10 = &a4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > a4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (*v14 < v16)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v17])
  {
    memmove(v6, a4, 8 * v17);
  }

  return 1;
}

uint64_t sub_25BCA5CE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 8 * result);
  if (v7)
  {
    if (!__OFSUB__(*(v9 + 16), a2))
    {
      result = sub_25BAB254C(v10 + 8 * a2);
      v12 = *(v9 + 16);
      v13 = __OFADD__(v12, v7);
      v14 = v12 + v7;
      if (!v13)
      {
        *(v9 + 16) = v14;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void sub_25BCA5D84()
{
  OUTLINED_FUNCTION_14_6();
  v7 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3;
  v9 = v2;
  v20 = v5;
  v10 = v4;
  v11 = v6;
  v12 = *v0;
  v13 = (v12 + 32 + 24 * v1);
  swift_arrayDestroy();
  v14 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, v9))
  {
    goto LABEL_16;
  }

  sub_25BAC9928((v12 + 32 + 24 * v9), v15 - v9, &v13[3 * v8]);
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (v8 < 1)
  {
    OUTLINED_FUNCTION_15_2();
  }

  else
  {
    *v13 = v10;
    v13[1] = v20;
    v13[2] = v11;
    if (v13 + 3 < &v13[3 * v8])
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_15_2();
  }
}

unint64_t sub_25BCA5E9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 8 * result);
  if (!v10)
  {
    goto LABEL_12;
  }

  v16 = *(v14 + 16);
  v17 = v16 - a2;
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_21;
  }

  result = v15 + 8 * a3;
  v18 = (v14 + 32 + 8 * a2);
  if (result != v18 || v18 + 8 * v17 <= result)
  {
    result = memmove(result, v18, 8 * v17);
    v16 = *(v14 + 16);
  }

  v20 = __OFADD__(v16, v10);
  v21 = v16 + v10;
  if (v20)
  {
    goto LABEL_22;
  }

  *(v14 + 16) = v21;
LABEL_12:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        memcpy(v15, (a5 + 8 * a6), 8 * a3);
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:

  return swift_unknownObjectRelease();
}

uint64_t sub_25BCA5F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 8 * result);
  v14 = &v13[a3];
  if (v8)
  {
    if (__OFSUB__(*(v11 + 16), a2))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    result = sub_25BAB254C(v12 + 8 * a2);
    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, v8);
    v17 = v15 + v8;
    if (v16)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    *(v11 + 16) = v17;
  }

  if (a3 >= 1)
  {
    for (i = a4 & ~(a4 >> 63); i; --i)
    {
      *v13++ = a5;
      if (v13 >= v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShapeInference(_BYTE *result, int a2, int a3)
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

uint64_t sub_25BCA6108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4828, &qword_25BCBF518);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BCA617C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_25BCA6188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25BCA6190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_25BB72150(*(a1 + 16), 0);
  sub_25BCA54B4();
  v4 = v3;
  sub_25BCB617C();
  sub_25BAB3820(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  v6 = v2;
  sub_25BCA8508(&v6);
  return v6;
}

uint64_t Layer<>.compiled(forInput:options:)()
{
  OUTLINED_FUNCTION_8_63();
  v14 = v1;
  v10[0] = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  return sub_25BB0EE34(v6, v0, &v14, v10, sub_25BCA8F18, 0, sub_25BCA8F14, 0, &type metadata for Tensor, &type metadata for Tensor, v7, v8);
}

{
  OUTLINED_FUNCTION_3_69();
  OUTLINED_FUNCTION_26_40();
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
  return OUTLINED_FUNCTION_7_64(v3, v4, v5, v9, sub_25BCA8F10, v6, sub_25BCA8F08, v7, AssociatedTypeWitness, v3, v1, v0);
}

{
  OUTLINED_FUNCTION_3_69();
  OUTLINED_FUNCTION_18_51(v2);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_7_64(AssociatedTypeWitness, v4, v5, v9, sub_25BCA7A80, v6, sub_25BCA8F14, v7, AssociatedTypeWitness, &type metadata for Tensor, v1, v0);
}

{
  OUTLINED_FUNCTION_6_65();
  v4 = v3;
  OUTLINED_FUNCTION_5_66();
  v16 = v5;
  v12[0] = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6778, &qword_25BCCC628);
  return sub_25BB0EE34(v4, v0, &v16, v12, sub_25BCA7C18, 0, sub_25BCA8F0C, 0, v10, v10, v2, v1);
}

{
  OUTLINED_FUNCTION_6_65();
  OUTLINED_FUNCTION_8_63();
  OUTLINED_FUNCTION_24_31(v2);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_20_40(AssociatedTypeWitness, v4, v5, v6, sub_25BCA8F18, v7, sub_25BCA80EC, v8, &type metadata for Tensor, AssociatedTypeWitness, v1, v0);
}

{
  OUTLINED_FUNCTION_6_65();
  OUTLINED_FUNCTION_8_63();
  OUTLINED_FUNCTION_24_31(v2);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_20_40(AssociatedTypeWitness, v4, v5, v6, sub_25BCA8F18, v7, sub_25BCA8154, v8, &type metadata for Tensor, AssociatedTypeWitness, v1, v0);
}

{
  OUTLINED_FUNCTION_3_69();
  v12[0] = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_7_64(AssociatedTypeWitness, v7, v8, v12, sub_25BCA81A0, v9, sub_25BCA8F14, v10, AssociatedTypeWitness, &type metadata for Tensor, v1, v0);
}

{
  OUTLINED_FUNCTION_3_69();
  OUTLINED_FUNCTION_18_51(v2);
  OUTLINED_FUNCTION_7_33();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6778, &qword_25BCCC628);
  return OUTLINED_FUNCTION_7_64(v4, v5, v6, v10, sub_25BCA8F54, v7, sub_25BCA8F0C, v8, AssociatedTypeWitness, v4, v1, v0);
}

uint64_t Layer<>.compiled(forInput:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_25BCA6784(a1, a2, a3, a4, a5, a6, sub_25BCA79F0, sub_25BCA8F14);
}

{
  return sub_25BCA6784(a1, a2, a3, a4, a5, a6, sub_25BCA809C, sub_25BCA8F14);
}

uint64_t Layer<>.compiled(forInput:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_25BCA65F4(a1, a2, a3, a4, a5, &qword_27FBB49F0, &unk_25BCC0140, sub_25BCA8F18, sub_25BCA8F08);
}

{
  return sub_25BCA65F4(a1, a2, a3, a4, a5, &qword_27FBB6778, &qword_25BCCC628, sub_25BCA8F18, sub_25BCA8F0C);
}

uint64_t Layer.compiled(forInput:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_66();
  v25[0] = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v23 = v11;
  v24 = v12;
  v16 = OUTLINED_FUNCTION_34_24(v13, v14, v15, v11);
  OUTLINED_FUNCTION_21_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_30_31(AssociatedTypeWitness, v18, v19, v25, sub_25BCA8F78, v22, sub_25BCA8F74, v20, v16, AssociatedTypeWitness, a4, a5);
}

uint64_t sub_25BCA65F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t (*a9)(uint64_t))
{
  OUTLINED_FUNCTION_8_63();
  v27 = v14;
  v23[0] = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  return sub_25BB0EE34(a1, v9, &v27, v23, a8, 0, a9, 0, &type metadata for Tensor, v21, a4, a5);
}

uint64_t sub_25BCA6784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t))
{
  OUTLINED_FUNCTION_5_66();
  OUTLINED_FUNCTION_26_40();
  OUTLINED_FUNCTION_21_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_25BB0EE34(a1, v8, a2, v18, a7, v17, a8, 0, AssociatedTypeWitness, &type metadata for Tensor, a4, a5);
}

uint64_t Layer<>.compiled(forInput:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_66();
  v29[0] = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v18 = OUTLINED_FUNCTION_34_24(v15, v16, v17, v11);
  OUTLINED_FUNCTION_21_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return OUTLINED_FUNCTION_30_31(AssociatedTypeWitness, v20, v21, v29, sub_25BCA813C, v24, sub_25BCA8148, v22, v18, AssociatedTypeWitness, a4, a5);
}

uint64_t sub_25BCA69A4(uint64_t a1)
{
  v2 = sub_25BCA6190(a1);

  *(v1 + 24) = v2;
  v3 = sub_25BCB617C();
  sub_25BB14688(v3);
  *(v1 + 16) = v4;
  return v1;
}

uint64_t Function.description.getter()
{
  sub_25BAD6FB0(*v0 + 88, v3);
  v1 = sub_25BBE46A4();
  sub_25BA9AC78(v3);
  return v1;
}

uint64_t Function.customMirror.getter(uint64_t a1)
{
  v2 = sub_25BCB7A8C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v11;
  v14[5] = v10;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_25BCB7A7C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  sub_25BB4BC8C(v4);

  return sub_25BCB7ACC();
}

ValueMetadata *sub_25BCA6D48(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = (a3)(a1, a2);
  if (result[1].Kind)
  {
    Kind = result[3].Kind;

    v7 = *(Kind + 152);
    sub_25BCB617C();

    *a1 = v7;
    result = (a3)(v8);
    if (result[1].Kind)
    {

      return sub_25BC8FACC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Function<>.inputCount.getter()
{
  v1 = OUTLINED_FUNCTION_14_51();
  _s9IOMappingVMa(v1, v2, v3, v4);
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  v5 = sub_25BCB722C();
  OUTLINED_FUNCTION_35_25(v5);
  OUTLINED_FUNCTION_15();

  return v0;
}

ValueMetadata *Function<>.tensorProperties(forInputAt:)()
{
  OUTLINED_FUNCTION_33_31();
  v5 = OUTLINED_FUNCTION_29_34(v1, v2, v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v7)
  {
    OUTLINED_FUNCTION_9_61();
    if (v0)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_33_31();
  v5 = OUTLINED_FUNCTION_22_41(v1, v2, v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v7)
  {
    OUTLINED_FUNCTION_9_61();
    if (v0)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Function<>.outputCount.getter()
{
  v1 = OUTLINED_FUNCTION_14_51();
  _s9IOMappingVMa(v1, v2, v3, v4);
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  v5 = sub_25BCB722C();
  OUTLINED_FUNCTION_35_25(v5);
  OUTLINED_FUNCTION_15();

  return v0;
}

ValueMetadata *Function<>.tensorProperties(forOutputAt:)()
{
  OUTLINED_FUNCTION_33_31();
  v5 = OUTLINED_FUNCTION_29_34(v1, v2, v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v7)
  {
    OUTLINED_FUNCTION_9_61();
    if (v0)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_33_31();
  v5 = OUTLINED_FUNCTION_22_41(v1, v2, v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v7)
  {
    OUTLINED_FUNCTION_9_61();
    if (v0)
    {
      OUTLINED_FUNCTION_27_38();
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    OUTLINED_FUNCTION_17_53();

    return sub_25BC8FACC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Function<>.inputCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_75(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  v5 = sub_25BCB722C();
  OUTLINED_FUNCTION_35_25(v5);
  OUTLINED_FUNCTION_15();

  return v4;
}

uint64_t Function<>.inputNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_4_75(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return v4;
}

uint64_t Function<>.tensorProperties(forInputNamed:)@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_14_51();
  v7 = _s9IOMappingVMa(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v13)
  {
    v9 = v14;
    OUTLINED_FUNCTION_9_61();
    if (v1)
    {
      OUTLINED_FUNCTION_27_38();
      v9 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    v10 = *(v9 + 152);
    sub_25BCB617C();

    result = sub_25BC8FACC();
    *a1 = v10;
    a1[1] = result;
    a1[2] = v11;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t Function<>.outputCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_75(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_33();
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_1_84();
  v5 = sub_25BCB722C();
  OUTLINED_FUNCTION_35_25(v5);
  OUTLINED_FUNCTION_15();

  return v4;
}

uint64_t Function<>.outputNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_4_75(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_1_84();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return v4;
}

void sub_25BCA74A4(uint64_t a1@<X0>, char a2@<W6>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (sub_25BADE04C(*a1, a2))
  {
    sub_25BCB617C();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a3 = v5;
  a3[1] = v4;
}

uint64_t Function<>.tensorProperties(forOutputNamed:)@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_14_51();
  v7 = _s9IOMappingVMa(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_28_35();
  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_10_55();
  sub_25BCB662C();

  if (v13)
  {
    v9 = v14;
    OUTLINED_FUNCTION_9_61();
    if (v1)
    {
      OUTLINED_FUNCTION_27_38();
      v9 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_12_53();
    }

    v10 = *(v9 + 152);
    sub_25BCB617C();

    result = sub_25BC8FACC();
    *a1 = v10;
    a1[1] = result;
    a1[2] = v11;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t sub_25BCA7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == a2 && *(a1 + 16) == a3)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C() & 1;
  }
}

void sub_25BCA7750()
{
  byte_27FBB7DD8 = 1;
  qword_27FBB7DE0 = 46;
  unk_27FBB7DE8 = 0xE100000000000000;
  byte_27FBB7DF0 = 1;
}

double static CompilationOptions.default.getter()
{
  if (qword_27FBB33B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_39(&byte_27FBB7DD8);

  sub_25BCB617C();
  return result;
}

void sub_25BCA77E0()
{
  byte_27FBB7DF8 = 2;
  qword_27FBB7E00 = 46;
  unk_27FBB7E08 = 0xE100000000000000;
  byte_27FBB7E10 = 1;
}

double static CompilationOptions.inference.getter()
{
  if (qword_27FBB33B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_19_39(&byte_27FBB7DF8);

  sub_25BCB617C();
  return result;
}

void static Function.load(from:options:)()
{
  v0 = [objc_opt_self() defaultManager];
  sub_25BCB595C();
  v1 = sub_25BCB633C();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    BYTE4(v16) = 0;
    sub_25BA97890("load(from:options:)", 19, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction.swift", 113, 2, 286, v3, v5, v6, v7, 0xD000000000000033, 0x800000025BCE7A40, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  }

  sub_25BCB70FC();

  v4 = sub_25BCB595C();
  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCE7A20);
  sub_25BCB74CC("Fatal error", 11, 2, 0x2720656C6946, 0xE600000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/ComputeFunction/ComputeFunction.swift", 113, 2, 281);
  __break(1u);
}

uint64_t sub_25BCA7A40()
{
  type metadata accessor for TensorArrayOutputParser(0);
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  v0 = sub_25BCB617C();
  return sub_25BC52A00(v0);
}

uint64_t sub_25BCA7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v14[0] = v10;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  type metadata accessor for TensorKeyValuePairsInputParser(0, v14);
  v11 = OUTLINED_FUNCTION_25_36();
  v12(v11);
  return sub_25BC50C10();
}

uint64_t sub_25BCA7C18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F30, &qword_25BCD73E8);
  swift_allocObject();
  v0 = sub_25BCB617C();
  return sub_25BCA69A4(v0);
}

uint64_t sub_25BCA7C68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F28, &qword_25BCD73E0);
  swift_allocObject();
  OUTLINED_FUNCTION_15();
  v2 = sub_25BCB617C();
  sub_25BCA6190(v2);
  OUTLINED_FUNCTION_49();

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_25BCA7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  type metadata accessor for KeyTensorPairsRepresentableInputParser(0, AssociatedTypeWitness, a4, v10);
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  return sub_25BC51A84();
}

uint64_t sub_25BCA7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  type metadata accessor for KeyTensorPairsRepresentableOutputParser(0, AssociatedTypeWitness, a5, v11);
  (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
  return sub_25BC53464();
}

uint64_t sub_25BCA7ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, __n128), uint64_t (*a7)(char *))
{
  v10 = OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  a6(0, v10, a4, v12);
  v15 = OUTLINED_FUNCTION_25_36();
  v16(v15);
  return a7(v14);
}

uint64_t sub_25BCA7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(char *))
{
  v9 = OUTLINED_FUNCTION_31_35();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  v15 = OUTLINED_FUNCTION_7_33();
  a5(v15);
  (*(v11 + 16))(v14, a1, v9);
  return a6(v14);
}

unint64_t sub_25BCA81EC()
{
  result = qword_27FBB7E20[0];
  if (!qword_27FBB7E20[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB7E18, &qword_25BCD7400);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7E20);
  }

  return result;
}

uint64_t Function.CompilationError.description.getter()
{
  v1 = *v0;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BCA83CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BCA8420(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25BCA8460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BCA84B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BCA8508(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BC196DC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25BCA8574(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25BCA8574(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
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
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BCA8730(v7, v8, a1, v4);
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
    return sub_25BCA8668(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BCA8668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_25BCB789C();
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

void sub_25BCA8730(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
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
          v14 = sub_25BCB789C();
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

          else if ((v14 ^ sub_25BCB789C()))
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
            v87 = v5;
            v89 = v9;
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
                if (v37 || (sub_25BCB789C() & 1) == 0)
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
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAFD620(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_25BAFD620(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
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

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_25BCA8D64((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_25BCA8C38(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_25BCA8C38(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_25BCA8D64((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_25BCA8D64(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_25BAC9480(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_25BCB789C() & 1) == 0)
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

  sub_25BAC9480(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_25BCB789C() & 1) != 0)
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

uint64_t LayerState.place(on:)(uint64_t a1)
{
  v2 = v1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    return sub_25BB1B644(a1);
  }

  v5 = sub_25BB1B740(a1);

  *v2 = v5;
  return result;
}

ValueMetadata *LayerState.scalarType.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      return Tensor.scalarType.getter(v0);
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t LayerState.cast(to:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(*(a1 + 8) + 32))(&v4);
  result = sub_25BB1BA04(&v4);
  *a2 = result;
  return result;
}

double LayerState.projectedValue.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void LayerState.shape.getter(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_67(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  *a1 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);

  sub_25BCB617C();
}

uint64_t LayerState.init(initializer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v4);
  result = sub_25BB1AB04(a1);
  *a2 = result;
  return result;
}

void OptionalLayerState.wrappedValue.getter(void *a1@<X8>)
{
  if (*(v1 + 8) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_21_42();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC(v2);
}

void OptionalLayerState.wrappedValue.setter(void *a1)
{
  if (*a1)
  {
    v2 = *v1;
    v8[0] = *a1;
    v8[1] = v2;

    LayerState.wrappedValue.setter(v8, v3);
  }

  else
  {
    OUTLINED_FUNCTION_7_65();
    if (v4)
    {
      OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_8_64("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerState.swift", v5, v6, v7);
      __break(1u);
    }
  }
}

void OptionalLayerState.projectedValue.getter(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_7_65();
  if (v2)
  {
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t OptionalLayerState.init(_:)(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v2 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v2);
    v1 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_5_67(v1);
}

uint64_t OptionalLayerState.init(initializer:)(uint64_t a1)
{
  if (a1)
  {
    v2 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v2);
    v3 = sub_25BB1AB04(a1);
  }

  else
  {
    v4 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v4);
    v3 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_5_67(v3);
}

uint64_t (*LayerState.wrappedValue.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_10_56(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      *v1 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v2);
      return sub_25BCA94DC;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t _s14NeuralNetworks10LayerStateV12wrappedValueAA6TensorVvg_0()
{
  v0 = OUTLINED_FUNCTION_21_42();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  *v1 = v0 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(v0);
}

void *sub_25BCA9580@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v5[1] = *a1;
  result = a2(v5);
  *a3 = v5[0];
  return result;
}

uint64_t sub_25BCA95C8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, __n128))
{
  v6 = *a2;
  v8[0] = *a1;
  v8[1] = v6;

  (a5)(v8);
}

uint64_t _s14NeuralNetworks10LayerStateV12wrappedValueAA6TensorVvs_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*v8 + 32);
  if ((~v9 & 0xF000000000000007) == 0)
  {
    result = OUTLINED_FUNCTION_67("Fatal error", 11, 2, 0xD000000000000048, 0x800000025BCDA1C0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", a7, a8, 317, 0);
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = *a1;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v19[0] = v10 | 0x8000000000000000;

    sub_25BACED40(v19);
  }

  if ((sub_25BAB5C48(*(*(v10 + 16) + 152), *(*((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
    OUTLINED_FUNCTION_14_52();

    sub_25BAB3020(v9);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000003DLL, 0x800000025BCE7AA0);
    v12 = sub_25BCB617C();
    v13 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x25F876F80](v12, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v14);

    MEMORY[0x25F876C90](0x6920747562202C29, 0xEE00207361682074);
    v15 = sub_25BCB617C();
    v16 = MEMORY[0x25F876F80](v15, v13);
    MEMORY[0x25F876C90](v16);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_67("Fatal error", 11, 2, v19[0], v19[1], "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerVariable.swift", v17, v18, 116, 0);
    goto LABEL_9;
  }

  v19[0] = v10 | 0x8000000000000000;

  sub_25BAB3020(v9);
  sub_25BACED40(v19);

  return sub_25BAB310C(v9);
}

uint64_t (*LayerState.value.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_10_56(a1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      *v1 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v2);
      return sub_25BCA98F0;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  __break(1u);
  return result;
}

uint64_t sub_25BCA9908(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v5 = *a1;
  if (a2)
  {

    a3(&v5);
  }

  else
  {

    a3(&v5);
  }
}

uint64_t LayerState.rank.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v0 < 0)
    {
      return *(*(*((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152) + 16);
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  __break(1u);
  return result;
}

uint64_t sub_25BCA9A2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LayerVariableReference();
  v3 = OUTLINED_FUNCTION_5(v2);
  result = OUTLINED_FUNCTION_15_53(v3, v4);
  *a1 = result;
  return result;
}

BOOL sub_25BCA9A70()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

BOOL sub_25BCA9AC4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BCA9A70();
  *a1 = result;
  return result;
}

BOOL sub_25BCA9B2C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BCA9A70();
  *a1 = result;
  return result;
}

uint64_t sub_25BCA9B58(uint64_t a1)
{
  v2 = sub_25BCAB13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCA9B94(uint64_t a1)
{
  v2 = sub_25BCAB13C();

  return MEMORY[0x2821FE720](a1, v2);
}

void LayerState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F38, &qword_25BCD73F0);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_25BCAB13C();
  sub_25BCB7B2C();
  if (!v20)
  {
    type metadata accessor for LayerVariableReference();
    sub_25BCAB190(&qword_28154DA00, &unk_25BCBCC24);
    sub_25BCB76AC();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_16();
}

void LayerState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F48, &qword_25BCD73F8);
  OUTLINED_FUNCTION_2();
  v27 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_25BCAB13C();

  sub_25BCB7B6C();
  a10 = v31;
  type metadata accessor for LayerVariableReference();
  sub_25BCAB190(&qword_28154DA08, &unk_25BCBCBFC);
  sub_25BCB779C();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_16();
}

void (*sub_25BCA9EAC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = LayerState.value.modify(v2);
  return sub_25BC70B04;
}

uint64_t LayerState.hashValue.getter()
{
  sub_25BCB79CC();
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCA9FD8(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

unint64_t LayerState.description.getter()
{
  v1 = *(*v0 + 32);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_14_52();
  sub_25BAB69FC(v3);
  sub_25BCB70FC();

  if (v1 < 0)
  {
    v8 = 0xD000000000000014;
    v5 = sub_25BCB617C();
    v6 = MEMORY[0x25F876F80](v5, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v6);

    v7 = MEMORY[0x25F876C90](0x72616C616373202CLL, 0xEF203A6570797420);
    Tensor.scalarType.getter(v7);
    v4 = sub_25BCB7C1C();
  }

  else
  {
    v8 = 0xD000000000000028;
    v4 = ParameterInitializer.description.getter();
  }

  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](41, 0xE100000000000000);
  sub_25BAB310C(v1);
  return v8;
}

uint64_t LayerState.customMirror.getter()
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = sub_25BCB7A8C();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_5();
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
  inited = swift_initStackObject();
  v10 = inited;
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v11 = MEMORY[0x277D84CC0];
  *(inited + 48) = *(v8 + 16);
  *(inited + 72) = v11;
  strcpy((inited + 80), "isInitialized");
  *(inited + 94) = -4864;
  v12 = *(v8 + 32);
  v14 = (~v12 & 0xF000000000000007) != 0 && v12 < 0;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v14;
  v15 = *(v8 + 32);
  if (v15 < 0 && (v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    *(&v34 + 1) = &type metadata for Tensor;
    *&v33 = v15 & 0x7FFFFFFFFFFFFFFFLL;
    *&v30 = 0x65756C6176;
    *(&v30 + 1) = 0xE500000000000000;
    sub_25BB1D62C(&v33, &v31);
    sub_25BAB69FC(v15);
    sub_25BAFEDAC();
    v10 = v16;
    *(v16 + 16) = 3;
    v17 = v31;
    *(v16 + 128) = v30;
    *(v16 + 144) = v17;
    *(v16 + 160) = v32;
  }

  *&v30 = v8;

  sub_25BAFA508(v10, v18, v19, v20, v21, v22, v23, v24, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v26 = v25;

  *&v33 = v26;
  v27 = sub_25BCB7A7C();
  OUTLINED_FUNCTION_23_40(v27);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  return sub_25BCB7ACC();
}

uint64_t LayerState.placed(on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    return sub_25BB1B644(a1);
  }

  v6 = sub_25BB1B740(a1);

  *a2 = v6;
  return result;
}

void sub_25BCAA528(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4[1] = *a1;
  v5 = v3;
  OptionalLayerState.wrappedValue.getter(v4);
  *a2 = v4[0];
}

uint64_t sub_25BCAA574(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v3;

  OptionalLayerState.wrappedValue.setter(v5);
}

uint64_t *(*OptionalLayerState.wrappedValue.modify(uint64_t a1))(uint64_t *result, char a2)
{
  v3 = *v1;
  *(a1 + 8) = *v1;
  v4 = *(v1 + 8);
  *(a1 + 16) = v4;
  if (v4 != 1)
  {
    *a1 = 0;
    return sub_25BCAA6A8;
  }

  v5 = *(v3 + 32);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if (v5 < 0)
    {
      *a1 = v5 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v5);
      return sub_25BCAA6A8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t *sub_25BCAA6A8(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v8 = *result;
      OUTLINED_FUNCTION_9_7();
      swift_retain_n();

      LayerState.wrappedValue.setter(&v8, v3);
      OUTLINED_FUNCTION_9_7();

LABEL_7:
    }

    if ((result[2] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    OUTLINED_FUNCTION_19_40();
    result = OUTLINED_FUNCTION_8_64("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/LayerState.swift", v5, v6, v7);
    __break(1u);
    return result;
  }

  if (v2)
  {
    v8 = *result;
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    LayerState.wrappedValue.setter(&v8, v4);
    OUTLINED_FUNCTION_9_7();
  }

  if (*(result + 16) == 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t OptionalLayerState.init(wrappedValue:)(void *a1)
{
  if (*a1)
  {
    v1 = type metadata accessor for LayerVariableReference();
    v2 = OUTLINED_FUNCTION_5(v1);
    v4 = OUTLINED_FUNCTION_15_53(v2, v3);
  }

  else
  {
    v5 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v5);
    v4 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_5_67(v4);
}

uint64_t sub_25BCAA820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453726579616C5FLL && a2 == 0xEB00000000657461;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BCAA8F4(char a1)
{
  if (a1)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x7453726579616C5FLL;
  }
}

uint64_t sub_25BCAA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BCAA820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BCAA968(uint64_t a1)
{
  v2 = sub_25BCAB1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCAA9A4(uint64_t a1)
{
  v2 = sub_25BCAB1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void OptionalLayerState.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F50, &qword_25BCD7408);
  OUTLINED_FUNCTION_2();
  v26 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_25BCAB1D4();

  sub_25BCB7B6C();
  sub_25BC86A30();
  sub_25BCB779C();

  if (!v20)
  {
    sub_25BCB776C();
  }

  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_16();
}

void OptionalLayerState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7F60, &qword_25BCD7410);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v22[-v19];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_25BCAB1D4();
  sub_25BCB7B2C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v22[15] = 0;
    sub_25BC869DC();
    sub_25BCB76AC();
    v22[14] = 1;
    v21 = sub_25BCB767C();
    (*(v17 + 8))(v20, v15);
    *v14 = a10;
    *(v14 + 8) = v21 & 1;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OptionalLayerState.customMirror.getter()
{
  v1 = sub_25BCB7A8C();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_5();
  v8 = *v0;
  OUTLINED_FUNCTION_7_65();
  v12[2] = v8;
  if (v9)
  {
    return LayerState.customMirror.getter();
  }

  v13 = 0;
  v12[1] = MEMORY[0x277D84F90];
  v10 = sub_25BCB7A7C();
  OUTLINED_FUNCTION_23_40(v10);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  return sub_25BCB7ACC();
}

unint64_t OptionalLayerState.description.getter()
{
  OUTLINED_FUNCTION_7_65();
  if (v0)
  {
    return LayerState.description.getter();
  }

  else
  {
    return 0;
  }
}

double OptionalLayerState.computeDevice.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {
    sub_25BB1B5A4(a1);
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

void OptionalLayerState.place(on:)()
{
  OUTLINED_FUNCTION_7_65();
  if (v2)
  {
    v3 = v0;
    v4 = v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_25BB1B644(v4);
    }

    else
    {
      v5 = sub_25BB1B740(v4);

      *v3 = v5;
    }
  }
}

uint64_t OptionalLayerState.placed(on:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_65();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v3;
  v6 = *v1;

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = sub_25BB1B740(v5);

    v6 = v9;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v10);
    result = OUTLINED_FUNCTION_66();
    v6 = result;
    v8 = 0;
    goto LABEL_8;
  }

  result = sub_25BB1B644(v5);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = 1;
LABEL_8:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

uint64_t OptionalLayerState.cast(to:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_65();
  if (v4 && (v5 = v2, v6 = *(v3 + 8), v7 = *(v6 + 32), , v7(&v12, v5, v6), v8 = sub_25BB1BA04(&v12), result = , v8))
  {
    v10 = 1;
  }

  else
  {
    v11 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v11);
    result = OUTLINED_FUNCTION_66();
    v8 = result;
    v10 = 0;
  }

  *a1 = v8;
  *(a1 + 8) = v10;
  return result;
}

unint64_t sub_25BCAB13C()
{
  result = qword_27FBB7F40;
  if (!qword_27FBB7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F40);
  }

  return result;
}

uint64_t sub_25BCAB190(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayerVariableReference();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BCAB1D4()
{
  result = qword_27FBB7F58;
  if (!qword_27FBB7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F58);
  }

  return result;
}

unint64_t sub_25BCAB22C()
{
  result = qword_27FBB7F68;
  if (!qword_27FBB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OptionalLayerState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BCAB374(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BCAB420()
{
  result = qword_27FBB7F70;
  if (!qword_27FBB7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F70);
  }

  return result;
}

unint64_t sub_25BCAB478()
{
  result = qword_27FBB7F78;
  if (!qword_27FBB7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F78);
  }

  return result;
}

unint64_t sub_25BCAB4D0()
{
  result = qword_27FBB7F80;
  if (!qword_27FBB7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F80);
  }

  return result;
}

unint64_t sub_25BCAB528()
{
  result = qword_27FBB7F88;
  if (!qword_27FBB7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F88);
  }

  return result;
}

unint64_t sub_25BCAB580()
{
  result = qword_27FBB7F90;
  if (!qword_27FBB7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F90);
  }

  return result;
}

unint64_t sub_25BCAB5D8()
{
  result = qword_27FBB7F98;
  if (!qword_27FBB7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7F98);
  }

  return result;
}

double Parameter.projectedValue.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;

  return result;
}

void OptionalParameter.wrappedValue.getter(void *a1@<X8>)
{
  if (*(v1 + 10) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = OUTLINED_FUNCTION_21_42();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC(v2);
}

uint64_t *OptionalParameter.wrappedValue.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 10) == 1)
  {
    if (v2)
    {
      v10 = *result;
      return Parameter.wrappedValue.setter(&v10);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    v8 = 0xD000000000000034;
    goto LABEL_8;
  }

  if (v2)
  {
    v9 = 399;
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC(v3, v4, v5, v8, v6, v7, 103, 2, v9);
    __break(1u);
  }

  return result;
}

void OptionalParameter.projectedValue.getter(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_62();
  if (v3)
  {
    if (*(v1 + 9))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v6 = v4 | *(v1 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
}

uint64_t Parameter.rank.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v1)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v0 < 0)
    {
      return *(*(*((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152) + 16);
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  __break(1u);
  return result;
}

void Parameter.shape.getter(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_67(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);

  sub_25BCB617C();
}

uint64_t OptionalParameter.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = (v4 >> 8) & 1;
    result = *a1;
  }

  else
  {
    v7 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v7);
    result = OUTLINED_FUNCTION_66();
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 1;
  }

  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 9) = v5;
  *(a2 + 10) = v3 != 0;
  return result;
}

uint64_t Parameter.init(initializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 256;
  v4 = type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5(v4);
  result = sub_25BB1AB04(a1);
  *a2 = result;
  return result;
}

uint64_t OptionalParameter.init(initializer:)(uint64_t a1)
{
  if (a1)
  {
    v2 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v2);
    v3 = sub_25BB1AB04(a1);
  }

  else
  {
    v4 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v4);
    v3 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_7_66(v3);
}

uint64_t Parameter.place(on:)(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    return sub_25BB1B644(a1);
  }

  v4 = sub_25BB1B740(a1);

  *v1 = v4;
  return result;
}

ValueMetadata *Parameter.scalarType.getter()
{
  OUTLINED_FUNCTION_17_54();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      return Tensor.scalarType.getter(v0);
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  __break(1u);
  return result;
}

uint64_t Parameter.cast(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 + 8) + 32))(&v4);
  result = sub_25BB1BA04(&v4);
  *(a2 + 8) = 256;
  *a2 = result;
  return result;
}

uint64_t (*Parameter.wrappedValue.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_6_66();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BCABCD4;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  __break(1u);
  return result;
}

uint64_t _s14NeuralNetworks9ParameterV12wrappedValueAA6TensorVvg_0()
{
  v0 = OUTLINED_FUNCTION_21_42();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    __break(1u);
    return result;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *v1 = v0 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC(v0);
}

void *sub_25BCABD7C@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v7[1] = *a1;
  v8 = v4;
  v9 = v5;
  result = a2(v7);
  *a3 = v7[0];
  return result;
}

uint64_t sub_25BCABDD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t (*Parameter.value.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_6_66();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v3);
      return sub_25BCABEC8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  __break(1u);
  return result;
}

uint64_t sub_25BCABEE0(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v5 = *a1;

    a3(&v5);
  }

  else
  {
    v5 = *a1;
    return (a3)(&v5);
  }
}

uint64_t sub_25BCABFCC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 256;
  v2 = type metadata accessor for LayerVariableReference();
  v3 = OUTLINED_FUNCTION_5(v2);
  result = OUTLINED_FUNCTION_15_53(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_25BCAC018()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BCAC06C(char a1)
{
  if (a1)
  {
    return 0x6E657A6F72467369;
  }

  else
  {
    return 0x656C626169726176;
  }
}

uint64_t sub_25BCAC0C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BCAC018();
  *a1 = result;
  return result;
}

uint64_t sub_25BCAC0F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BCAC06C(*v1);
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_25BCAC140@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BCAC018();
  *a1 = result;
  return result;
}

uint64_t sub_25BCAC168(uint64_t a1)
{
  v2 = sub_25BCAD88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCAC1A4(uint64_t a1)
{
  v2 = sub_25BCAD88C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Parameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_17_1();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FA0, &qword_25BCD78D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_25BCAD88C();
  sub_25BCB7B2C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    type metadata accessor for LayerVariableReference();
    sub_25BCAB190(&qword_28154DA00, &unk_25BCBCC24);
    sub_25BCB76AC();
    v30 = sub_25BCB767C();
    v31 = OUTLINED_FUNCTION_6_3();
    v32(v31);
    *v28 = v33;
    *(v28 + 8) = v30 & 1;
    *(v28 + 9) = 1;

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_16();
}

void Parameter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FA8, &unk_25BCD78D8);
  OUTLINED_FUNCTION_2();
  v26 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_25BCAD88C();

  OUTLINED_FUNCTION_15_54(&unk_286D57948);
  type metadata accessor for LayerVariableReference();
  sub_25BCAB190(&qword_28154DA08, &unk_25BCBCBFC);
  sub_25BCB779C();

  if (!v20)
  {
    sub_25BCB776C();
  }

  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_16();
}

void (*sub_25BCAC54C(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Parameter.value.modify(v2);
  return sub_25BC70B04;
}

uint64_t Parameter.hashValue.getter()
{
  sub_25BCB79CC();
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

unint64_t Parameter.description.getter()
{
  v1 = *(*v0 + 32);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  sub_25BAB69FC(v1);
  sub_25BCB70FC();

  if (v1 < 0)
  {
    v7 = 0xD000000000000012;
    v4 = sub_25BCB617C();
    v5 = MEMORY[0x25F876F80](v4, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v5);

    v6 = MEMORY[0x25F876C90](0x72616C616373202CLL, 0xEF203A6570797420);
    Tensor.scalarType.getter(v6);
    v3 = sub_25BCB7C1C();
  }

  else
  {
    v7 = 0xD000000000000026;
    v3 = ParameterInitializer.description.getter();
  }

  MEMORY[0x25F876C90](v3);

  MEMORY[0x25F876C90](41, 0xE100000000000000);
  sub_25BAB310C(v1);
  return v7;
}

uint64_t Parameter.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB7A8C();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
  inited = swift_initStackObject();
  v15 = inited;
  *(inited + 16) = xmmword_25BCBAE90;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v16 = MEMORY[0x277D84CC0];
  *(inited + 48) = *(v11 + 16);
  *(inited + 72) = v16;
  *(inited + 80) = 0x6E657A6F72467369;
  *(inited + 88) = 0xE800000000000000;
  v17 = MEMORY[0x277D839B0];
  *(inited + 96) = v12;
  *(inited + 120) = v17;
  strcpy((inited + 128), "isInitialized");
  *(inited + 142) = -4864;
  v18 = *(v11 + 32);
  v20 = (~v18 & 0xF000000000000007) != 0 && v18 < 0;
  *(inited + 168) = v17;
  *(inited + 144) = v20;
  v21 = *(v11 + 32);
  if (v21 < 0 && (v21 & 0xF000000000000007) != 0xF000000000000007)
  {
    *&v40 = &type metadata for Tensor;
    v39[2] = v21 & 0x7FFFFFFFFFFFFFFFLL;
    *&v37 = 0x65756C6176;
    *(&v37 + 1) = 0xE500000000000000;
    sub_25BB1D62C(&v39[2], &v38);
    sub_25BAB69FC(v21);
    sub_25BAFEDAC();
    v15 = v22;
    *(v22 + 16) = 4;
    v23 = v38;
    *(v22 + 176) = v37;
    *(v22 + 192) = v23;
    *(v22 + 208) = *v39;
  }

  *&v37 = v11;
  BYTE8(v37) = v12;
  BYTE9(v37) = v13;

  sub_25BAFA508(v15, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39[0], *&v39[1], *&v39[3], v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v32 = v31;

  v39[2] = v32;
  v33 = sub_25BCB7A7C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v33);
  (*(v4 + 104))(v7, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
  sub_25BCA81EC();
  return sub_25BCB7ACC();
}

uint64_t Parameter.placed(on:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v5 = OUTLINED_FUNCTION_18_52();
    return sub_25BB1B644(v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_18_52();
    v8 = sub_25BB1B740(v7);

    *a1 = v8;
  }

  return result;
}

void sub_25BCACBE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6[1] = *a1;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  OptionalParameter.wrappedValue.getter(v6);
  *a2 = v6[0];
}

uint64_t *sub_25BCACC40(uint64_t *a1)
{
  v2 = *a1;

  return OptionalParameter.wrappedValue.setter(&v2);
}

uint64_t (*OptionalParameter.wrappedValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_9_62();
  if (!v3)
  {
    *a1 = 0;
    return sub_25BCACE08;
  }

  v4 = OUTLINED_FUNCTION_6_66();
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      *a1 = v4 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v4);
      return sub_25BCACD50;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

uint64_t sub_25BCACD50(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v10 = *a1;
      return Parameter.wrappedValue.setter(&v10);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v4, v5, v6, 0xD000000000000034, v7, v8, 103, 2, v9);
    __break(1u);
    return result;
  }

  v10 = *a1;

  Parameter.wrappedValue.setter(&v10);
}

void *sub_25BCACE08(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v1, v2, v3, 0xD000000000000037, v4, v5, 103, 2, 399);
    __break(1u);
  }

  return result;
}

uint64_t OptionalParameter.init(wrappedValue:)(void *a1)
{
  if (*a1)
  {
    v1 = type metadata accessor for LayerVariableReference();
    v2 = OUTLINED_FUNCTION_5(v1);
    v4 = OUTLINED_FUNCTION_15_53(v2, v3);
  }

  else
  {
    v5 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v5);
    v4 = OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_7_66(v4);
}

uint64_t sub_25BCACEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656D617261705FLL && a2 == 0xEA00000000007265;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

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

uint64_t sub_25BCACFC8(char a1)
{
  if (a1)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x74656D617261705FLL;
  }
}

uint64_t sub_25BCAD010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BCACEF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BCAD038(uint64_t a1)
{
  v2 = sub_25BCAD8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCAD074(uint64_t a1)
{
  v2 = sub_25BCAD8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void OptionalParameter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FB0, &qword_25BCD78E8);
  OUTLINED_FUNCTION_2();
  v30 = v28;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_5();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_25BCAD8E0();

  OUTLINED_FUNCTION_15_54(&type metadata for OptionalParameter.CodingKeys);
  sub_25BB39990();
  sub_25BCB779C();

  if (!v23)
  {
    sub_25BCB776C();
  }

  (*(v30 + 8))(v24, v27);
  OUTLINED_FUNCTION_16();
}

void OptionalParameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7FC0, &qword_25BCD78F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_25BCAD8E0();
  sub_25BCB7B2C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_25BB3993C();
    sub_25BCB76AC();
    v29 = sub_25BCB767C();
    v30 = OUTLINED_FUNCTION_6_3();
    v31(v30);
    *v27 = v32;
    *(v27 + 8) = v33;
    *(v27 + 9) = v34;
    *(v27 + 10) = v29 & 1;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OptionalParameter.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_25BCB7A8C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *(v1 + 8);
  v12 = *(v1 + 9);
  if (*(v1 + 10) == 1)
  {
    v16 = *v1;
    v17 = v11;
    v18 = v12;
    return Parameter.customMirror.getter(a1);
  }

  else
  {
    v16 = *v1;
    v17 = v11;
    v18 = v12;
    v19 = 0;
    v15[1] = MEMORY[0x277D84F90];
    v14 = sub_25BCB7A7C();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v14);
    (*(v6 + 104))(v9, *MEMORY[0x277D84C38], v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7E18, &qword_25BCD7400);
    sub_25BCA81EC();
    return sub_25BCB7ACC();
  }
}

unint64_t OptionalParameter.description.getter()
{
  OUTLINED_FUNCTION_9_62();
  if (v0)
  {
    return Parameter.description.getter();
  }

  else
  {
    return 0;
  }
}

double OptionalParameter.computeDevice.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 10) == 1)
  {
    sub_25BB1B5A4(a1);
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

void OptionalParameter.place(on:)()
{
  OUTLINED_FUNCTION_9_62();
  if (v2)
  {
    v3 = v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_25BB1B644(v3);
    }

    else
    {
      v4 = sub_25BB1B740(v3);

      *v0 = v4;
    }
  }
}

uint64_t OptionalParameter.placed(on:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_62();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *v1;
  v5 = *(v1 + 9);
  v6 = *(v1 + 8);

  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = OUTLINED_FUNCTION_18_52();
    v11 = sub_25BB1B740(v10);

    v4 = v11;
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v12);
    result = OUTLINED_FUNCTION_66();
    v4 = result;
    v6 = 0;
    v9 = 0;
    v5 = 1;
    goto LABEL_8;
  }

  v7 = OUTLINED_FUNCTION_18_52();
  result = sub_25BB1B644(v7);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = 1;
LABEL_8:
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  *(a1 + 10) = v9;
  return result;
}

uint64_t OptionalParameter.cast(to:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_9_62();
  if (v4 && (v5 = v2, v6 = *(v3 + 8), v7 = *(v6 + 32), , v7(&v12, v5, v6), v8 = sub_25BB1BA04(&v12), result = , v8))
  {
    v10 = 1;
  }

  else
  {
    v11 = type metadata accessor for LayerVariableReference();
    OUTLINED_FUNCTION_5(v11);
    result = OUTLINED_FUNCTION_66();
    v8 = result;
    v10 = 0;
  }

  *a1 = v8;
  *(a1 + 8) = 256;
  *(a1 + 10) = v10;
  return result;
}

unint64_t sub_25BCAD88C()
{
  result = qword_28154BEF0[0];
  if (!qword_28154BEF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154BEF0);
  }

  return result;
}

unint64_t sub_25BCAD8E0()
{
  result = qword_27FBB7FB8;
  if (!qword_27FBB7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FB8);
  }

  return result;
}

unint64_t sub_25BCAD938()
{
  result = qword_27FBB7FC8;
  if (!qword_27FBB7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FC8);
  }

  return result;
}

uint64_t sub_25BCAD98C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_25BCAD9CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_25BCADA2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_25BCADA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_25BCADACC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BCADBA8()
{
  result = qword_27FBB7FD0;
  if (!qword_27FBB7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FD0);
  }

  return result;
}

unint64_t sub_25BCADC00()
{
  result = qword_27FBB7FD8;
  if (!qword_27FBB7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FD8);
  }

  return result;
}

unint64_t sub_25BCADC58()
{
  result = qword_27FBB7FE0;
  if (!qword_27FBB7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7FE0);
  }

  return result;
}

unint64_t sub_25BCADCB0()
{
  result = qword_27FBB7FE8[0];
  if (!qword_27FBB7FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7FE8);
  }

  return result;
}

unint64_t sub_25BCADD08()
{
  result = qword_28154BEE0;
  if (!qword_28154BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BEE0);
  }

  return result;
}

unint64_t sub_25BCADD60()
{
  result = qword_28154BEE8;
  if (!qword_28154BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BEE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Framework(_BYTE *result, int a2, int a3)
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

void SGD.gradientClippingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  *a1 = *(v1 + 16);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

void SGD.regularizationKind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *(a1 + 4) = *(v1 + 36);
  *a1 = v2;
}

double SGD.velocity.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);
  sub_25BCB617C();
  return result;
}

uint64_t SGD.velocity.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

uint64_t SGD.init(for:learningRate:momentum:usesNesterovMomentum:gradientClippingMode:regularizationKind:gradientScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  if (v21 < 0.0)
  {
    OUTLINED_FUNCTION_28_1();
    v34 = 40;
LABEL_9:
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  if (a6 >= 0.0)
  {
    v22 = *v14;
    v23 = *v15 | (*(v15 + 4) << 32);
    if (BYTE4(v23) == 255 || *v15 > 0.0)
    {
      v24 = *(v14 + 2) | (*(v14 + 12) << 32);
      v25 = v13 & 1;
      (*(v17 + 16))(v20, v16, a2);
      result = OptimizerStateDictionary.init(_:)(v20, a2, a3, &v35);
      v27 = v35;
      *a4 = a5;
      *(a4 + 4) = a6;
      *(a4 + 8) = a7;
      *(a4 + 12) = v25;
      *(a4 + 16) = v22;
      *(a4 + 28) = BYTE4(v24);
      *(a4 + 24) = v24;
      *(a4 + 36) = BYTE4(v23);
      *(a4 + 32) = v23;
      *(a4 + 40) = v27;
      *(a4 + 48) = 0;
      return result;
    }

    OUTLINED_FUNCTION_28_1();
    v34 = 43;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_0();
  v33 = 0xD00000000000001DLL;
LABEL_10:
  result = sub_25BCB74CC(v28, v29, v30, v33, v31, v32, 96, 2, v34);
  __break(1u);
  return result;
}

uint64_t (*SGD.update(_:with:)(uint64_t a1, void *a2, uint64_t a3))(_BYTE *, void)
{
  v4 = v3;
  v233 = a1;
  v213 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v231 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v212 = v10 - v9;
  sub_25BCB5EFC();
  OUTLINED_FUNCTION_2();
  v210 = v12;
  v211 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v209 = v14 - v13;
  v15 = sub_25BCB5EBC();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v218 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v206 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v206 - v24;
  WitnessTable = swift_getWitnessTable();
  nullsub_1();
  v239 = a3;
  v230 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v236 = a2;
  sub_25BCB681C();
  sub_25BACC03C();
  v240 = v26;
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v27 = sub_25BCB5EEC();
  v28 = __swift_project_value_buffer(v27, qword_28154BE90);
  sub_25BCB5EAC();
  v217 = v28;
  v29 = sub_25BCB5EDC();
  v30 = sub_25BCB6D5C();
  v31 = sub_25BCB6E1C();
  v238 = v4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v29, v30, v33, "Optimizing", "", v32, 2u);
    v34 = v32;
    v4 = v238;
    MEMORY[0x25F8797F0](v34, -1, -1);
  }

  (*(v17 + 16))(v22, v25, v15);
  sub_25BCB5F2C();
  swift_allocObject();
  v222 = sub_25BCB5F1C();
  v36 = v17 + 8;
  v35 = *(v17 + 8);
  v219 = v36;
  v35(v25, v15);
  OUTLINED_FUNCTION_0_14();
  v37 = OUTLINED_FUNCTION_29_1();
  sub_25BAA51C8(v37, v38);
  v39 = MEMORY[0x277D84F90];
  sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D44E78, v252, v248);
  v40 = sub_25BA9C2C8(v241);
  v251 = v248[0];
  if (*(v4 + 28) != 255 && *(v4 + 28) << 32 == 0x200000000)
  {
    v42 = *(v4 + 16);
    if ((v42 & 0x100000000) != 0)
    {
      v241[0] = v236;
      MEMORY[0x28223BE20](v40);
      v204 = v239;
      v205 = WitnessTable;
      v48 = sub_25BCB68CC();
      v49 = swift_getWitnessTable();
      sub_25BAB2B20(sub_25BB27830, (&v206 - 4), v48, &type metadata for Tensor, MEMORY[0x277D84A98], v49, MEMORY[0x277D84AC0], v50);
      v237 = 0;
      LOBYTE(v241[0]) = 13;
      Tensor.init(stacking:alongAxis:scalarType:)();
      v241[0] = v252[0];
      v245[0] = &unk_286D423B0;
      Tensor.reshaped(to:)(v245, v248);

      v245[0] = v248[0];
      Tensor.sum(squeezingAxes:)(v241, &unk_286D423D8);

      v51 = v241[0];
      OUTLINED_FUNCTION_0_14();
      v52 = *(v51[2] + 160);
      v53 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v53, v54);
      v244[0] = v39;
      v249[0] = v52;
      sub_25BAA51C8(v252, v248);
      Tensor.init(shape:coercingScalars:scalarType:on:)(v244, &unk_286D44EA0, v249, v248, v245);
      sub_25BA9C2C8(v252);
      sub_25BA9C2C8(v241);
      v241[0] = v51;
      v252[0] = v245[0];
      OUTLINED_FUNCTION_29_1();
      static Tensor.* infix(_:_:)();
      sqrt(_:)(v241, v248);

      v47 = v241[0];
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v44 = OUTLINED_FUNCTION_56(v43);
      *(v44 + 16) = xmmword_25BCBAE50;
      *(v44 + 32) = v42;
      v45 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v45, v46);
      sub_25BACC1B0(MEMORY[0x277D84F90], v44, v252, v248);
      sub_25BA9C2C8(v241);
      v47 = v248[0];

      v237 = 0;
    }

    v251 = v47;
  }

  else
  {
    v237 = 0;
  }

  v55 = sub_25BCB681C();
  sub_25BAA1B64();
  v250 = v56;
  if (v55 < 0)
  {
    __break(1u);
LABEL_74:

    __break(1u);
LABEL_75:
    LODWORD(v205) = 0;
    v204 = 329;
    OUTLINED_FUNCTION_7_0();
    v200 = 0xD00000000000002ELL;
    goto LABEL_77;
  }

  v215 = v35;
  v216 = v15;
  if (v55)
  {
    v57 = 0;
    v207 = (v231 + 1);
    v208 = (v231 + 13);
    HIDWORD(v206) = *MEMORY[0x277D84660];
    v226 = xmmword_25BCBAE50;
    v223 = xmmword_25BCBAE70;
    v214 = xmmword_25BCCB750;
    v232 = v55;
    while (1)
    {
      sub_25BCB690C();
      v58 = v241[0];
      v59 = v241[1];

      MEMORY[0x28223BE20](v60);
      v61 = WitnessTable;
      *(&v206 - 8) = v239;
      *(&v206 - 7) = v61;
      v62 = v238;
      *(&v206 - 6) = v59;
      *(&v206 - 5) = v62;
      *(&v206 - 4) = &v251;
      *(&v206 - 3) = v58;
      v204 = &v250;

      v63 = sub_25BCB6FCC();
      if ((v64 & 1) == 0)
      {
        MEMORY[0x28223BE20](v63);
        v72 = *(v239 + 24);
        *(&v206 - 6) = v230;
        *(&v206 - 5) = v72;
        *(&v206 - 4) = v73;
        *(&v206 - 3) = sub_25BACC648;
        v204 = (&v206 - 10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v74 = v237;
        sub_25BAB2F30();
        if (v74)
        {
          goto LABEL_74;
        }

        v237 = 0;

        goto LABEL_64;
      }

      v65 = swift_modifyAtWritableKeyPath();
      v67 = v65;
      if ((*(v66 + 8) & 1) == 0)
      {
        break;
      }

LABEL_63:
      v67(v249, 0);

LABEL_64:
      v172 = sub_25BAC4018();
      v173 = *(v240 + 16);
      if (v173 >= *(v240 + 24) >> 1)
      {
        sub_25BACC03C();
        v240 = v175;
      }

      ++v57;

      v174 = v240;
      *(v240 + 16) = v173 + 1;
      *(v174 + 8 * v173 + 32) = v172;
      if (v232 == v57)
      {
        goto LABEL_67;
      }
    }

    v68 = v66;
    v227 = v65;
    v228 = &v206;
    v69 = v238;
    v70 = *(v238 + 8);
    if (v70 == 1.0)
    {

      v71 = v59;
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      v75 = *(v59[2] + 160);
      v76 = OUTLINED_FUNCTION_12_54();
      sub_25BAA51C8(v76, v77);
      v247 = MEMORY[0x277D84F90];
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v79 = OUTLINED_FUNCTION_56(v78);
      OUTLINED_FUNCTION_4_76(v79);
      *(v80 + 32) = v70;
      v246 = v75;
      v69 = v238;
      v81 = OUTLINED_FUNCTION_7_67();
      sub_25BAA51C8(v81, v82);
      OUTLINED_FUNCTION_2_85();
      sub_25BA9C2C8(v248);
      sub_25BA9C2C8(v241);
      v248[0] = v59;
      v245[0] = v244[0];

      OUTLINED_FUNCTION_5_68();
      static Tensor.* infix(_:_:)();

      v71 = v241[0];
    }

    v83 = *(v69 + 28);
    v229 = v68;
    if (v83 > 0xFEuLL)
    {
      v241[0] = v71;
LABEL_32:
      v108 = *(*v68 + 32);
      if ((~v108 & 0xF000000000000007) == 0)
      {
        goto LABEL_75;
      }

      if ((v108 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_28_1();
        v206 = 325;
        OUTLINED_FUNCTION_7_0();
LABEL_77:
        sub_25BCB74CC(v195, v196, v197, v200, v198, v199, 102, 2, v206);
        __break(1u);
LABEL_78:
        OUTLINED_FUNCTION_17_5();
        v201 = "updateUsingPrimitiveOps(_:parameter:gradient:)";
        v202 = 46;
        v203 = 142;
LABEL_80:
        sub_25BADDD28(v201, v202, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Optimizers/SGD.swift", 96, 2, v203);
      }

      v109 = v241[0];
      sub_25BAB3020(v108);
      v110 = qword_28154E1E0;

      if (v110 != -1)
      {
        swift_once();
      }

      v111 = &byte_27FBB3838;
      swift_beginAccess();
      v231 = v109;
      if (byte_27FBB3838 == 1)
      {
        if (*(v69 + 36) == 255)
        {

          v224 = v109;
        }

        else
        {
          v112 = *(v69 + 32) | (*(v69 + 36) << 32);
          LODWORD(v244[0]) = *(v69 + 32);
          BYTE4(v244[0]) = BYTE4(v112) & 1;
          v248[0] = v109;
          v245[0] = v108 & 0x7FFFFFFFFFFFFFFFLL;
          v113 = OUTLINED_FUNCTION_5_68();
          v111 = v244;
          sub_25BB08FF0(v113, v114);
          v224 = v241[0];
        }

        v115 = *v69;
        v116 = v69;
        v117 = *(*((v108 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
        OUTLINED_FUNCTION_0_14();
        v244[0] = MEMORY[0x277D84F90];
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v119 = OUTLINED_FUNCTION_56(v118);
        OUTLINED_FUNCTION_4_76(v119);
        *(v120 + 32) = v115;
        LOBYTE(v247) = v117;
        v121 = v116;
        v122 = OUTLINED_FUNCTION_12_54();
        sub_25BAA51C8(v122, v123);
        Tensor.init(shape:coercingScalars:scalarType:on:)(v244, v111, &v247, v248, v245);
        v124 = sub_25BA9C2C8(v241);
        v128 = v245[0];
        if (*(v116 + 4) <= 0.0)
        {
          v241[0] = v224;
          v248[0] = v245[0];
          OUTLINED_FUNCTION_12_54();
          static Tensor.* infix(_:_:)();
          static Tensor.- prefix(_:)(v245);

          v248[0] = v108 & 0x7FFFFFFFFFFFFFFFLL;
          v245[0] = v241[0];
          OUTLINED_FUNCTION_5_68();
          static Tensor.+ infix(_:_:)();
        }

        else
        {
          if (*(v116 + 48))
          {
            v129 = OUTLINED_FUNCTION_3_70(v124, v125, v126, v127);
            v130 = OUTLINED_FUNCTION_20_41(v129);
            v131 = v241[0];
            if (!v241[0])
            {
              goto LABEL_78;
            }

            v121 = v238;
          }

          else
          {
            v241[0] = *(v116 + 40);
            v163 = OUTLINED_FUNCTION_3_70(v124, v125, v126, v127);
            v130 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v163, v248);
            v131 = v248[0];
          }

          v221 = &v206;
          MEMORY[0x28223BE20](v130);
          OUTLINED_FUNCTION_17_55();
          *(v164 - 48) = v224;
          *(v164 - 40) = v131;
          *(v164 - 32) = v128;
          *(v164 - 24) = v121;
          *(v164 - 16) = v58;
          v165 = v237;
          sub_25BACDABC(sub_25BCB13D0);
          v237 = v165;
        }
      }

      else
      {
        if (*(v69 + 36) == 255)
        {
        }

        else
        {
          v132 = *(v69 + 32) | (*(v69 + 36) << 32);
          LODWORD(v244[0]) = *(v69 + 32);
          BYTE4(v244[0]) = BYTE4(v132) & 1;
          v248[0] = v109;
          v245[0] = v108 & 0x7FFFFFFFFFFFFFFFLL;
          v133 = OUTLINED_FUNCTION_5_68();
          sub_25BB08FF0(v133, v134);
          v109 = v241[0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
        v135 = swift_allocObject();
        *(v135 + 16) = v223;
        *(v135 + 32) = v108 & 0x7FFFFFFFFFFFFFFFLL;
        *(v135 + 40) = v109;
        sub_25BAB3020(v108);

        sub_25BAB7DE8(v135, v248);
        swift_setDeallocating();
        sub_25BAB3FD0();
        v136 = *v69;
        v137 = v69;
        v138 = *(*((v108 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 160);
        OUTLINED_FUNCTION_0_14();
        v247 = MEMORY[0x277D84F90];
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v140 = OUTLINED_FUNCTION_56(v139);
        OUTLINED_FUNCTION_4_76(v140);
        *(v141 + 32) = v136;
        v246 = v138;
        v142 = v137;
        sub_25BAA51C8(v241, v245);
        OUTLINED_FUNCTION_2_85();
        v143 = sub_25BA9C2C8(v241);
        v147 = *(v137 + 4);
        v225 = v59;
        if (v147 <= 0.0)
        {
          v151 = *((v108 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v221 = v109;
          v152 = v109[2];
          v153 = *(v244[0] + 16);
          v154 = *(v238 + 12);
          LOBYTE(v247) = 0;
          v252[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
          v252[1] = 114;
          v253 = 2;
          v254 = v214;
          v255 = "init(id:parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:creationSite:)";
          v256 = 93;
          v257 = 2;
          type metadata accessor for StochasticGradientDescentOperation();
          swift_allocObject();

          v204 = v252;
          v155 = sub_25BAF4C3C(0, 0, 0, v147, v151, v152, 0, v153, v154);
          v156 = OUTLINED_FUNCTION_7_67();
          sub_25BAA51C8(v156, v157);
          sub_25BAA51C8(v245, v244);
          type metadata accessor for ContextManager();
          swift_retain_n();
          sub_25BAA49B8();
          sub_25BAA4A5C(v241);

          v158 = v243;

          sub_25BAA4AF4(v241);
          sub_25BAA49B8();
          sub_25BAA4A5C(v241);

          v159 = v242;

          sub_25BAA4AF4(v241);
          type metadata accessor for TensorRepresentation();
          v160 = swift_allocObject();
          LOBYTE(v241[0]) = 1;
          v161 = sub_25BC0FDBC(v155, 0, v244, 0x100000000, v158, v159, v160);
          type metadata accessor for TensorHandle();
          v162 = swift_allocObject();
          v162[2] = v161;

          sub_25BAA6EB0();

          sub_25BA9C2C8(v245);
          v241[0] = v162;
        }

        else
        {
          v224 = v244[0];
          if (*(v137 + 48))
          {
            v148 = OUTLINED_FUNCTION_3_70(v143, v144, v145, v146);
            v149 = OUTLINED_FUNCTION_20_41(v148);
            v150 = v241[0];
            if (!v241[0])
            {
              OUTLINED_FUNCTION_17_5();
              v201 = "updateUsingCompositeOp(_:parameter:gradient:)";
              v202 = 45;
              v203 = 101;
              goto LABEL_80;
            }

            v142 = v238;
          }

          else
          {
            v241[0] = *(v137 + 40);
            v166 = OUTLINED_FUNCTION_3_70(v143, v144, v145, v146);
            v149 = OptimizerStateDictionary.subscript.getter(sub_25BB279D0, v166, v245);
            v150 = v245[0];
          }

          v220 = &v206;
          MEMORY[0x28223BE20](v149);
          OUTLINED_FUNCTION_17_55();
          *(v167 - 48) = v109;
          *(v167 - 40) = v150;
          *(v167 - 32) = v224;
          *(v167 - 24) = v142;
          *(v167 - 16) = v248;
          *(v167 - 8) = v58;
          v168 = v237;
          sub_25BACDABC(sub_25BCB13B8);
          v237 = v168;
        }

        sub_25BA9C2C8(v248);
      }

      v169 = v241[0];
      v170 = v250;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BAA1B64();
        v170 = v176;
      }

      v171 = *(v170 + 16);
      if (v171 >= *(v170 + 24) >> 1)
      {
        sub_25BAA1B64();
        v170 = v177;
      }

      *(v170 + 16) = v171 + 1;
      *(v170 + 8 * v171 + 32) = v169;
      v250 = v170;
      v241[0] = v169;

      Parameter.wrappedValue.setter(v241);

      sub_25BAB310C(v108);

      v67 = v227;
      goto LABEL_63;
    }

    v84 = v69;
    v85 = *(v69 + 16);
    v86 = *(v84 + 24) | (v83 << 32);
    if (v83)
    {
      v225 = v59;
      v87 = v251;
      if (HIDWORD(v86) == 1)
      {
        OUTLINED_FUNCTION_0_14();
        v88 = *(v71[2] + 160);
        v89 = OUTLINED_FUNCTION_12_54();
        sub_25BAA51C8(v89, v90);
        v247 = MEMORY[0x277D84F90];
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
        v92 = OUTLINED_FUNCTION_56(v91);
        OUTLINED_FUNCTION_4_76(v92);
        *(v93 + 32) = v85;
        v246 = v88;
        v94 = OUTLINED_FUNCTION_7_67();
        sub_25BAA51C8(v94, v95);

        OUTLINED_FUNCTION_2_85();
        sub_25BA9C2C8(v248);
        sub_25BA9C2C8(v241);
        v96 = v244[0];
        v248[0] = v71;
        Tensor.squared()();
        v245[0] = v241[0];
        v244[0] = &unk_286D423B0;
        Tensor.reshaped(to:)(v244, v248);

        v245[0] = v248[0];
        Tensor.sum(squeezingAxes:)(v244, &unk_286D423D8);
        v69 = v238;

        sqrt(_:)(v241, v244);

        v97 = v241[0];
        v248[0] = v71;
        v241[0] = v96;
        v245[0] = v97;
        v244[0] = v96;
        max(_:_:)();
        static Tensor./ infix(_:_:)();

        OUTLINED_FUNCTION_5_68();
        static Tensor.* infix(_:_:)();

        v59 = v225;
        v68 = v229;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_0_14();
      v98 = *(v71[2] + 160);
      v99 = OUTLINED_FUNCTION_12_54();
      sub_25BAA51C8(v99, v100);
      v247 = MEMORY[0x277D84F90];
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v102 = OUTLINED_FUNCTION_56(v101);
      OUTLINED_FUNCTION_4_76(v102);
      *(v103 + 32) = v86;
      v246 = v98;
      v104 = OUTLINED_FUNCTION_7_67();
      sub_25BAA51C8(v104, v105);

      OUTLINED_FUNCTION_2_85();
      sub_25BA9C2C8(v248);
      sub_25BA9C2C8(v241);
      v241[0] = v71;
      v248[0] = v244[0];
      OUTLINED_FUNCTION_12_54();
      static Tensor.* infix(_:_:)();
      v241[0] = v87;
      LOBYTE(v244[0]) = *(v71[2] + 160);
      v107 = v212;
      v106 = v213;
      (*v208)(v212, HIDWORD(v206), v213);
      Tensor.cast(to:roundingRule:)();
      (*v207)(v107, v106);
      v244[0] = v248[0];
      static Tensor./ infix(_:_:)();

      v59 = v225;
    }

    else
    {
      v248[0] = v71;
      Tensor.clamped(to:)(v241, *&v85, *(&v85 + 1));
    }

    v68 = v229;
    v69 = v238;
    goto LABEL_32;
  }

LABEL_67:
  v178 = sub_25BCB5EDC();
  v179 = v218;
  sub_25BCB5F0C();
  v180 = sub_25BCB6D4C();
  v181 = sub_25BCB6E1C();
  v182 = v216;
  if (v181)
  {

    v183 = v209;
    sub_25BCB5F3C();

    v185 = v210;
    v184 = v211;
    if ((*(v210 + 88))(v183, v211) == *MEMORY[0x277D85B00])
    {
      v186 = "[Error] Interval already ended";
    }

    else
    {
      (*(v185 + 8))(v183, v184);
      v186 = "";
    }

    v187 = swift_slowAlloc();
    *v187 = 0;
    v188 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v178, v180, v188, "Optimizing", v186, v187, 2u);
    MEMORY[0x25F8797F0](v187, -1, -1);
  }

  v215(v179, v182);
  v189 = v250;

  v190 = sub_25BACED8C();
  v241[0] = 1;
  v241[1] = v190;
  Array<A>.resolve(descriptor:)(v241, v189);

  v191 = v238;
  v192 = v239;
  v193 = WitnessTable;
  nullsub_1();
  return sub_25BA9B48C(v191, v192, v193);
}

uint64_t sub_25BCAF81C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v34 = *a7;
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v13 = *(a3 + 16);
  v14 = *(a4 + 16);
  v15 = *(a5 + 4);
  v16 = *(a5 + 12);
  v48 = 0;
  v41 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
  v42 = 114;
  v43 = 2;
  v44 = xmmword_25BCCB750;
  v45 = "init(id:parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:creationSite:)";
  v46 = 93;
  v47 = 2;
  type metadata accessor for StochasticGradientDescentOperation();
  swift_allocObject();

  v17 = sub_25BAF4C3C(0, 0, 0, v15, v11, v12, v13, v14, v16);
  sub_25BAA51C8(a6, v40);
  sub_25BAA51C8(v40, v39);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v18 = v38;

  sub_25BAA4AF4(v36);
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v19 = v37;

  sub_25BAA4AF4(v36);
  type metadata accessor for TensorRepresentation();
  v20 = swift_allocObject();
  LOBYTE(v36[0]) = 1;
  v21 = sub_25BC0FDBC(v17, 0, v39, 0x100000000, v18, v19, v20);
  type metadata accessor for TensorHandle();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v40);
  sub_25BAA51C8(a6, v40);
  sub_25BAA51C8(v40, v39);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v23 = v38;

  sub_25BAA4AF4(v36);
  sub_25BAA49B8();
  sub_25BAA4A5C(v36);

  v24 = v37;

  sub_25BAA4AF4(v36);
  v25 = swift_allocObject();
  LOBYTE(v36[0]) = 1;
  v26 = sub_25BC0FDBC(v17, 1, v39, 0x100000000, v23, v24, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v40);
  v36[0] = v27;
  v29 = type metadata accessor for OptimizerStateDictionary(0, *(v34 + *MEMORY[0x277D84308]), a9, v28);

  OptimizerStateDictionary.subscript.setter(v36, a7, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25BCBAE70;
  *(v30 + 32) = v27;
  *(v30 + 40) = v22;

  sub_25BACEA3C(v30, v31, v32);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
  *a8 = v22;
  return result;
}

uint64_t sub_25BCAFC48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v10 = *a5;
  v11 = *(a4 + 4);
  v12 = *(a4 + 12);
  v26 = a3;
  v27 = a2;
  v13 = v10;
  static Tensor.* infix(_:_:)();
  static Tensor.- prefix(_:)(&v25);

  v14 = v27;
  if (v11 <= 0.0)
  {
    v25 = v27;
    v26 = a1;
    static Tensor.+ infix(_:_:)();

    v18 = v27;
  }

  else
  {
    v26 = v27;

    sub_25BC55E80(v15, v11);
    static Tensor.+ infix(_:_:)();

    v16 = v27;
    if (v12)
    {
      v26 = v14;
      v27 = a1;
      static Tensor.+ infix(_:_:)();
      sub_25BC55E80(v16, v11);
      static Tensor.+ infix(_:_:)();
    }

    else
    {
      v25 = v27;
      v26 = a1;
      static Tensor.+ infix(_:_:)();
    }

    v18 = v27;
    v27 = v16;
    v20 = type metadata accessor for OptimizerStateDictionary(0, *(v13 + *MEMORY[0x277D84308]), a6, v19);

    OptimizerStateDictionary.subscript.setter(&v27, a5, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = v16;
    *(inited + 40) = v18;

    sub_25BACEA3C(inited, v22, v23);

    swift_setDeallocating();
    result = sub_25BAB3FD0();
  }

  *a7 = v18;
  return result;
}

unint64_t sub_25BCAFEAC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BCAFEFC(char a1)
{
  result = 0x6F69746172657469;
  switch(a1)
  {
    case 1:
      result = 0x676E696E7261656CLL;
      break;
    case 2:
      result = 0x6D75746E656D6F6DLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x746E656964617267;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x797469636F6C6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BCB0008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v10 = *a2;
  v11 = *a3;
  if (qword_28154E1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27FBB3838 == 1)
  {
    if (*(v5 + 36) == 255)
    {
    }

    else
    {
      v12 = v5[8] | (*(v5 + 36) << 32);
      LODWORD(v61[0]) = v5[8];
      BYTE4(v61[0]) = BYTE4(v12) & 1;
      v64[0] = v11;
      v63[0] = v10;
      sub_25BB08FF0(v64, v63);
      v11 = v53;
    }

    v13 = *v5;
    v14 = *(*(v10 + 16) + 160);
    LODWORD(v56) = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    v61[0] = sub_25BACD7D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v15 = swift_allocObject();
    sub_25BACD7C4(v15, 1);
    *v16 = v13;
    nullsub_1();
    v18 = v17;
    LOBYTE(v60[0]) = v14;
    sub_25BAA51C8(&v53, v64);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v61, v18, v60, v64, v63);
    sub_25BA9C2C8(&v53);
    if (*(v7 + 1) <= 0.0)
    {
      *&v53 = v11;
      v64[0] = v63[0];
      static Tensor.* infix(_:_:)();
      static Tensor.- prefix(_:)(v63);

      v64[0] = v10;
      v63[0] = v53;
      static Tensor.+ infix(_:_:)();

      *a5 = v53;
      return result;
    }

    if (!*(v7 + 6))
    {
      *&v53 = *(v7 + 5);
      v51 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v19);
      v21 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v51, v64);
LABEL_21:
      MEMORY[0x28223BE20](v21);
      sub_25BACDABC(sub_25BCB16B0);
    }

    v20 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v19);
    v21 = OptimizerStateDictionary.subscript.getter(a1, v20);
    if (v53)
    {
      goto LABEL_21;
    }

    v57 = 0u;
    memset(v58, 0, sizeof(v58));
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v59 = 22;
    v37 = "updateUsingPrimitiveOps(_:parameter:gradient:)";
    v38 = 46;
    v39 = 142;
LABEL_26:
    sub_25BADDD28(v37, v38, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Optimizers/SGD.swift", 96, 2, v39);
  }

  if (*(v5 + 36) == 255)
  {
  }

  else
  {
    v22 = v5[8] | (*(v5 + 36) << 32);
    LODWORD(v61[0]) = v5[8];
    BYTE4(v61[0]) = BYTE4(v22) & 1;
    v64[0] = v11;
    v63[0] = v10;
    sub_25BB08FF0(v64, v63);
    v11 = v53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v23 = swift_allocObject();
  sub_25BACD7C4(v23, 2);
  *v24 = v10;
  v24[1] = v11;
  nullsub_1();
  v26 = v25;

  sub_25BAB7DE8(v26, v63);

  v27 = *v7;
  v28 = *(*(v10 + 16) + 160);
  LODWORD(v56) = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v60[0] = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v29 = swift_allocObject();
  sub_25BACD7C4(v29, 1);
  *v30 = v27;
  nullsub_1();
  v32 = v31;
  v62 = v28;
  sub_25BAA51C8(&v53, v64);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v60, v32, &v62, v64, v61);
  sub_25BA9C2C8(&v53);
  v34 = *(v7 + 1);
  if (v34 <= 0.0)
  {
    v41 = *(v10 + 16);
    v42 = *(v11 + 16);
    v43 = *(v61[0] + 16);
    v44 = *(v7 + 12);
    v62 = 0;
    v64[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
    v64[1] = 114;
    v65 = 2;
    v66 = xmmword_25BCCB750;
    v67 = "init(id:parameter:gradient:velocity:learningRate:momentum:usesNesterovMomentum:creationSite:)";
    v68 = 93;
    v69 = 2;
    type metadata accessor for StochasticGradientDescentOperation();
    swift_allocObject();

    v45 = sub_25BAF4C3C(0, 0, 0, v34, v41, v42, 0, v43, v44);
    sub_25BAA51C8(v63, v61);
    sub_25BAA51C8(v61, v60);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v53);

    v46 = *v58;

    sub_25BAA4AF4(&v53);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v53);

    v47 = *(&v57 + 1);

    sub_25BAA4AF4(&v53);
    type metadata accessor for TensorRepresentation();
    v48 = swift_allocObject();
    LOBYTE(v53) = 1;
    v49 = sub_25BC0FDBC(v45, 0, v60, 0x100000000, v46, v47, v48);
    type metadata accessor for TensorHandle();
    v50 = sub_25BB3F4D8(v49);

    sub_25BA9C2C8(v61);
    *a5 = v50;
  }

  else
  {
    if (*(v7 + 6))
    {
      v35 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v33);
      v36 = OptimizerStateDictionary.subscript.getter(a1, v35);
      if (!v53)
      {
        v57 = 0u;
        memset(v58, 0, sizeof(v58));
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v59 = 22;
        v37 = "updateUsingCompositeOp(_:parameter:gradient:)";
        v38 = 45;
        v39 = 101;
        goto LABEL_26;
      }
    }

    else
    {
      *&v53 = *(v7 + 5);
      v52 = type metadata accessor for OptimizerStateDictionary(0, *(a4 + 16), *(a4 + 24), v33);
      v36 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v52, v64);
    }

    MEMORY[0x28223BE20](v36);
    sub_25BACDABC(sub_25BCB1698);
  }

  return sub_25BA9C2C8(v63);
}

uint64_t sub_25BCB07C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BCB083C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BCB08A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BCB0918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25BCB0988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BCAFEAC();
  *a1 = result;
  return result;
}

unint64_t sub_25BCB09C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BCAFEFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BCB09FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BCAFEF8();
  *a1 = result;
  return result;
}

uint64_t sub_25BCB0A50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BCB0AA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SGD.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v47 = a4;
  type metadata accessor for SGD.CodingKeys(255, a2, a3, a5);
  OUTLINED_FUNCTION_6_67();
  swift_getWitnessTable();
  v49 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2();
  v46 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v48 = v12;
  sub_25BCB7B2C();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v14 = v47;
  LOBYTE(v55) = 0;
  v15 = sub_25BCB769C();
  OUTLINED_FUNCTION_9_63(1);
  sub_25BCB768C();
  v17 = v16;
  OUTLINED_FUNCTION_9_63(2);
  sub_25BCB768C();
  v19 = v18;
  OUTLINED_FUNCTION_9_63(3);
  v20 = sub_25BCB767C();
  LOBYTE(v51) = 5;
  sub_25BB278BC();
  sub_25BCB765C();
  v45 = v20;
  v44 = v55;
  v43 = v57;
  v21 = v56;
  LOBYTE(v51) = 6;
  sub_25BB27868();
  sub_25BCB765C();
  v42 = v21;
  v22 = BYTE4(v55);
  v23 = v55;
  LOBYTE(v55) = 4;
  sub_25BCB768C();
  v25 = v24;
  v40 = v23;
  v41 = v22;
  type metadata accessor for OptimizerStateDictionary(0, a2, a3, v26);
  v71 = 7;
  swift_getWitnessTable();
  sub_25BCB76AC();
  v45 &= 1u;
  v27 = v45;
  v46 = a2;
  v28 = v42 | (v43 << 32);
  v29 = v40 | (v41 << 32);
  v30 = OUTLINED_FUNCTION_101();
  v31(v30);
  v48 = v72;
  *&v51 = __PAIR64__(v19, v17);
  DWORD2(v51) = v25;
  BYTE12(v51) = v27;
  *(&v51 + 13) = v77;
  HIBYTE(v51) = v78;
  v32 = v44;
  *&v52 = v44;
  v49 = HIDWORD(v28);
  BYTE12(v52) = BYTE4(v28);
  DWORD2(v52) = v28;
  HIBYTE(v52) = v76;
  *(&v52 + 13) = v75;
  BYTE4(v53) = BYTE4(v29);
  LODWORD(v53) = v29;
  BYTE7(v53) = v74;
  *(&v53 + 5) = v73;
  *(&v53 + 1) = v72;
  v54 = v15;
  v33 = v51;
  v34 = v52;
  v35 = v53;
  *(v14 + 48) = v15;
  *(v14 + 16) = v34;
  *(v14 + 32) = v35;
  *v14 = v33;
  v37 = type metadata accessor for SGD(0, v46, a3, v36);
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v55, &v51, v37);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v55 = __PAIR64__(v19, v17);
  v56 = v25;
  v57 = v45;
  v58 = v77;
  v59 = v78;
  v60 = v32;
  v62 = v49;
  v61 = v28;
  v63 = v75;
  v64 = v76;
  v66 = BYTE4(v29);
  v65 = v29;
  v68 = v74;
  v67 = v73;
  v69 = v48;
  v70 = v15;
  return (*(v38 + 8))(&v55, v37);
}

uint64_t SGD.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v22 = *(a2 + 16);
  v23 = v6;
  type metadata accessor for SGD.CodingKeys(255, v22, v6, a4);
  OUTLINED_FUNCTION_6_67();
  swift_getWitnessTable();
  v7 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v29 = *(v4 + 12);
  v12 = *(v4 + 16);
  v27 = *(v4 + 28);
  v28 = v12;
  v26 = *(v4 + 24);
  v24 = *(v4 + 36);
  v25 = *(v4 + 32);
  v21 = *(v4 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v7;
  sub_25BCB7B6C();
  LOBYTE(v33) = 0;
  v14 = v31;
  sub_25BCB778C();
  if (v14)
  {
    return (*(v30 + 8))(v11, v7);
  }

  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = v30;
  LOBYTE(v33) = 1;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB777C();
  LOBYTE(v33) = 2;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB777C();
  LOBYTE(v33) = 3;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB776C();
  v33 = v18;
  v34 = v16;
  v35 = (v16 | (v17 << 32)) >> 32;
  v32 = 5;
  sub_25BB2797C();
  OUTLINED_FUNCTION_15_55();
  OUTLINED_FUNCTION_64_0();
  sub_25BCB773C();
  BYTE4(v33) = (v25 | (v24 << 32)) >> 32;
  LODWORD(v33) = v25;
  v32 = 6;
  sub_25BB27928();
  OUTLINED_FUNCTION_15_55();
  OUTLINED_FUNCTION_64_0();
  sub_25BCB773C();
  LOBYTE(v33) = 4;
  OUTLINED_FUNCTION_64_0();
  sub_25BCB777C();
  v33 = v21;
  v32 = 7;
  type metadata accessor for OptimizerStateDictionary(0, v22, v23, v20);
  sub_25BCB617C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_55();
  OUTLINED_FUNCTION_64_0();
  sub_25BCB779C();

  return (*(v19 + 8))(v11, v13);
}

uint64_t sub_25BCB1418(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BCB1454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BCB1490(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_25BCB14D0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

_BYTE *sub_25BCB151C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BCB16DC()
{
  result = qword_27FBB80F0;
  if (!qword_27FBB80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB80F0);
  }

  return result;
}

void sub_25BCB1730()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = (*v0 + 32);
    v3 = 1;
    while (1)
    {
      v4 = *v2++;
      v5 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        break;
      }

      v3 = v5;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 1;
LABEL_7:
    if (v0[8] - 1 > 0xA)
    {
      v6 = 1;
    }

    else
    {
      v6 = qword_25BCD80F8[(v0[8] - 1)];
    }

    if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
    {
      getpagesize();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_25BCB17FC()
{
  v1 = *v0;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0x203D206570616853, 0xE900000000000028);
  v2 = MEMORY[0x25F876F80](v1, MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v2);

  MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE7C90);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_25BCB18F0(unint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (result > 0x100000)
    {
      if (result >= 0xA00000)
      {
        if (!(result >> 26))
        {
          v2 = 0x8000000;
          return NSRoundUpToMultipleOfPageSize(v2);
        }

        goto LABEL_13;
      }

LABEL_8:
      v2 = 0x2000000;
      return NSRoundUpToMultipleOfPageSize(v2);
    }

LABEL_9:
    v2 = 0x800000;
    return NSRoundUpToMultipleOfPageSize(v2);
  }

  if (result <= 0x100000)
  {
    goto LABEL_9;
  }

  if (result < 0xA00000)
  {
    goto LABEL_8;
  }

  if (!(result >> 29))
  {
    v2 = 0x40000000;
    return NSRoundUpToMultipleOfPageSize(v2);
  }

LABEL_13:
  if (!__OFADD__(result, 0x200000))
  {
    v2 = (result + 0x1FFFFF) & 0xFFFFFFFFFFE00000;
    return NSRoundUpToMultipleOfPageSize(v2);
  }

  __break(1u);
  return result;
}

int64_t sub_25BCB198C()
{
  v1 = *(v0 + 16);
  v2 = [v1 size];
  v3 = [v1 usedSize];
  v4 = __OFSUB__(v2, v3);
  result = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BCB1A0C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MPSHeap.Descriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for MPSHeap.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25BCB1B14(uint64_t a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB1B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCDB680);
  v4 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v4);

  MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDB6A0);
  v5 = sub_25BC9DFF4(a3);
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](96, 0xE100000000000000);
  return 0;
}

uint64_t sub_25BCB1CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  MEMORY[0x25F878200](a3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB1D44(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_25BCB79CC();
  MEMORY[0x25F878200](v2);
  MEMORY[0x25F878200](v3);
  return sub_25BCB7A3C();
}

unint64_t sub_25BCB1DD4()
{
  result = qword_27FBB8100;
  if (!qword_27FBB8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPSHeap.Size(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for MPSHeap.Size(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BCB1ECC()
{
  result = qword_27FBB8108;
  if (!qword_27FBB8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8108);
  }

  return result;
}

uint64_t sub_25BCB1F98(uint64_t a1)
{
  OUTLINED_FUNCTION_2_86(a1);
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2030(uint64_t a1)
{
  OUTLINED_FUNCTION_1_85(a1);
  MEMORY[0x25F878200](v1 & 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB206C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_86(a1);
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2148(uint64_t a1)
{
  OUTLINED_FUNCTION_1_85(a1);
  MEMORY[0x25F878200](v1 + 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB21B8(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_2_86(a1);
  a2(a1);
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2234(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_2_86(a1);
  a2(v5, a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2288(uint64_t a1)
{
  OUTLINED_FUNCTION_1_85(a1);
  MEMORY[0x25F878200](v1 + 4);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB22C8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_85(a1);
  MEMORY[0x25F878200](v1 + 8);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB232C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_86(a1);
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB2374(uint64_t a1)
{
  OUTLINED_FUNCTION_1_85(a1);
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BCB23B0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_86(a1);
  MEMORY[0x25F878200](a1);
  return sub_25BCB7A3C();
}

BOOL sub_25BCB23F4()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

BOOL sub_25BCB2474@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BCB23F4();
  *a1 = result;
  return result;
}

uint64_t sub_25BCB24D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  if (!a3)
  {
    a1 = sub_25BC7CAD0();
  }

  v7 = a5[1];
  v9[0] = *a5;
  v9[1] = v7;
  *v10 = a5[2];
  *&v10[9] = *(a5 + 41);
  v11 = 0;
  return sub_25BAB9A8C(a1, a2, a3, a4, v9);
}

uint64_t sub_25BCB2540()
{
  sub_25BA9D740();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for UnaryLogicalOperation.Operator(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BCB2644()
{
  result = qword_27FBB8110;
  if (!qword_27FBB8110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB8118, qword_25BCD82E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8110);
  }

  return result;
}

unint64_t sub_25BCB26AC()
{
  result = qword_27FBB8120;
  if (!qword_27FBB8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8120);
  }

  return result;
}

uint64_t sub_25BCB2728(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = (a2 & 0xC000000000000001);
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v6)
  {
    goto LABEL_86;
  }

  for (i = *(v4 + 32); ; i = MEMORY[0x25F8779B0](0, v4))
  {
    v8 = i;
    if (sub_25BC5E5AC())
    {
      OUTLINED_FUNCTION_4_77();
      sub_25BAB4D78(1uLL, v9, v4);
      v10 = v6 ? MEMORY[0x25F8779B0](1, v4) : *(v4 + 40);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (sub_25BC5E5AC())
    {
      OUTLINED_FUNCTION_4_77();
      sub_25BAB4D78(2uLL, v12, v4);
      v13 = v6 ? MEMORY[0x25F8779B0](2, v4) : *(v4 + 48);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    sub_25BC5E5AC();
    OUTLINED_FUNCTION_4_77();
    if (v16)
    {
      sub_25BAB4D78(3uLL, v15, v4);
      if (v6)
      {
        v17 = 3;
LABEL_20:
        v18 = MEMORY[0x25F8779B0](v17, v4);
        goto LABEL_24;
      }

      v19 = *(v4 + 56);
    }

    else
    {
      sub_25BAB4D78(1uLL, v15, v4);
      if (v6)
      {
        v17 = 1;
        goto LABEL_20;
      }

      v19 = *(v4 + 40);
    }

    v18 = v19;
LABEL_24:
    v138 = v18;
    sub_25BC5E5AC();
    v137 = v8;
    OUTLINED_FUNCTION_4_77();
    if (v21)
    {
      sub_25BAB4D78(4uLL, v20, v4);
      if (v6)
      {
        v22 = 4;
LABEL_29:
        v23 = MEMORY[0x25F8779B0](v22, v4);
        goto LABEL_33;
      }

      v24 = *(v4 + 64);
    }

    else
    {
      sub_25BAB4D78(2uLL, v20, v4);
      if (v6)
      {
        v22 = 2;
        goto LABEL_29;
      }

      v24 = *(v4 + 48);
    }

    v23 = v24;
LABEL_33:
    v139 = v23;
    v25 = sub_25BC5DF28();
    sub_25BC5E19C(v25);
    v27 = v26;
    v28 = sub_25BC5DF28();
    if (v28 != sub_25BC5DE24())
    {
      sub_25BAF99E8(v27);
      sub_25BB50DF0();
      v29 = sub_25BCB672C();

      v30 = [a1 reshapeTensor:v138 withShape:v29 name:0];

      sub_25BAF99E8(v27);
      v31 = sub_25BCB672C();

      v32 = [a1 reshapeTensor:v139 withShape:v31 name:0];

      v138 = v30;
      v139 = v32;
    }

    v33 = "espresso_buffer_t";
    if (*(v3 + 168))
    {
      if (*(v3 + 168) != 1)
      {
        break;
      }

      goto LABEL_41;
    }

    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v140);

    if (!v141)
    {
      sub_25BAA4AF4(v140);
      if (v11)
      {
        goto LABEL_38;
      }

      goto LABEL_50;
    }

    v35 = *(v141 + 24);
    sub_25BAA4AF4(v140);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_41:

    v36 = OUTLINED_FUNCTION_6_68(v137);
    v37 = sub_25BCB33A0(v137, v36, 0, 0, a1);
    v134 = v37;
    if (!sub_25BC5E714())
    {
      v136 = v37;
      goto LABEL_57;
    }

    v38 = *(v3 + 64);
    v4 = *(v38 + 16);
    if (!v4)
    {
      v64 = v37;
      v41 = 1.0;
LABEL_56:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v66 = OUTLINED_FUNCTION_5(v65);
      v33 = "espresso_buffer_t";
      *(v66 + 16) = xmmword_25BCBB6D0;
      sub_25BB50DF0();
      *(v66 + 32) = sub_25BCB6DDC();
      v67 = sub_25BCB672C();

      v140[0] = *(*(v3 + 40) + 160);
      v68 = [a1 constantWithScalar:v67 shape:sub_25BC6640C() dataType:(v41 / (v41 + -1.0))];

      v136 = [a1 multiplicationWithPrimaryTensor:v134 secondaryTensor:v68 name:0];
LABEL_57:
      v69 = *(v3 + 72);
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v70 = OUTLINED_FUNCTION_5(v131);
      v132 = *(v33 + 109);
      *(v70 + 16) = v132;
      sub_25BB50DF0();
      *(v70 + 32) = sub_25BCB6DDC();
      v71 = sub_25BCB672C();

      if (v11)
      {
        [v11 dataType];
      }

      else
      {
        [v36 dataType];
      }

      v72 = OUTLINED_FUNCTION_5_69();
      v135 = [v72 v73];

      if (v11)
      {
        v74 = v11;
      }

      else
      {
        v74 = v36;
      }

      v129 = v11;
      v75 = OUTLINED_FUNCTION_5_69();
      v77 = [v75 v76];

      v78 = OUTLINED_FUNCTION_5(v131);
      *(v78 + 16) = v132;
      v79 = v77;
      *(v78 + 32) = sub_25BCB6DDC();
      v80 = sub_25BCB672C();

      v81 = [a1 constantWithScalar:v80 shape:objc_msgSend(v36 dataType:{sel_dataType), (1.0 - v69)}];

      v130 = v81;
      v82 = [a1 multiplicationWithPrimaryTensor:v36 secondaryTensor:v81 name:0];
      v83 = OUTLINED_FUNCTION_5_69();
      v85 = [v83 v84];

      v86 = v85;
      v87 = [v79 dataType];
      v133 = v79;

      v88 = [v86 dataType];
      if (v87 == 268435472)
      {
        OUTLINED_FUNCTION_2_87();
        if (v88 == v96)
        {
          v97 = OUTLINED_FUNCTION_0_103(a1, sel_castTensor_toType_name_, v79);
          v95 = v79;
          v133 = v97;
          v90 = v86;
LABEL_69:
          v98 = &off_279972000;

          v99 = v36;
          goto LABEL_72;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_87();
        if (v87 == v89)
        {
          v90 = v86;
          if (v88 == v89 - 16)
          {
            v91 = OUTLINED_FUNCTION_5_69();
            v94 = OUTLINED_FUNCTION_0_103(v91, v92, v93);
            v95 = v86;
            v90 = v94;
            goto LABEL_69;
          }

LABEL_71:
          v99 = v36;
          v98 = &off_279972000;
LABEL_72:
          v100 = sub_25BB2BAEC(0x5F676E696E6E7572, 0xEC0000006E61656DLL);
          v128 = v90;
          v102 = sub_25BB2B6D4(v133, v90, v100, v101, a1);
          if (v14)
          {
            v103 = v14;
          }

          else
          {
            v103 = v134;
          }

          v127 = v14;
          v104 = [a1 multiplicationWithPrimaryTensor:v103 secondaryTensor:v135 name:0];

          v60 = v104;
          v105 = [a1 multiplicationWithPrimaryTensor:v136 secondaryTensor:v130 name:0];
          v106 = [a1 v98[185]];

          v107 = v106;
          v108 = [v60 &selRef_ceilWithTensor_name_];

          v109 = [v107 &selRef_ceilWithTensor_name_];
          if (v108 == 268435472)
          {
            OUTLINED_FUNCTION_2_87();
            if (v109 == v113)
            {
              v114 = OUTLINED_FUNCTION_0_103(a1, sel_castTensor_toType_name_, v60);
              v112 = v60;
              v60 = v114;
LABEL_81:
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_87();
            if (v108 == v110 && v109 == v110 - 16)
            {
              v111 = OUTLINED_FUNCTION_0_103(a1, sel_castTensor_toType_name_, v107);
              v112 = v107;
              v107 = v111;
              goto LABEL_81;
            }
          }

          v115 = sub_25BB2BAEC(0xD000000000000010, 0x800000025BCE7D10);
          v117 = sub_25BB2B6D4(v60, v107, v115, v116, a1);
          v118 = *(v3 + 76);
          v119 = OUTLINED_FUNCTION_3_21();
          v121 = sub_25BB2BAEC(v119, v120);
          v123 = sub_25BCB397C(v137, v99, v134, v138, v139, v121, v122, a1, v118);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_25BCBAE60;
          *(v63 + 32) = v123;
          *(v63 + 40) = v102;
          *(v63 + 48) = v117;
          v124 = v123;
          v125 = v102;

          v50 = v138;
          v48 = v134;
          v51 = v139;
          v57 = v133;
          v59 = v128;
          goto LABEL_83;
        }
      }

      v90 = v86;
      goto LABEL_71;
    }

    v39 = v37;
    v6 = (v38 + 32);
    v40 = v39;
    v41 = 1.0;
    while (1)
    {
      v43 = *v6++;
      v42 = v43;
      sub_25BC5DE18();
      if ((v43 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v42 >= *(v44 + 16))
      {
        goto LABEL_85;
      }

      v45 = *(v44 + 8 * v42 + 32);

      v41 = v41 * v45;
      if (!--v4)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    ;
  }

  if (v11)
  {
LABEL_38:
    v34 = v11;
    goto LABEL_51;
  }

LABEL_50:
  v34 = OUTLINED_FUNCTION_6_68(v137);
LABEL_51:
  v136 = v11;
  sub_25BAF99E8(v27);
  sub_25BB50DF0();
  v46 = sub_25BCB672C();

  v47 = [a1 reshapeTensor:v34 withShape:v46 name:0];

  if (v14)
  {
    v48 = v47;
    v49 = v14;
    v50 = v137;
  }

  else
  {
    v50 = v137;
    v48 = v47;
    v49 = sub_25BCB33A0(v137, v47, 0, 0, a1);
  }

  v51 = v14;
  sub_25BAF99E8(v27);

  v52 = sub_25BCB672C();

  v53 = [a1 reshapeTensor:v49 withShape:v52 name:0];

  v54 = *(v3 + 76);
  v56 = *(v3 + 24);
  v55 = *(v3 + 32);
  v57 = v53;
  sub_25BCB617C();
  v58 = v53;
  v59 = v138;
  v60 = v139;
  v61 = sub_25BCB397C(v50, v48, v58, v138, v139, v56, v55, a1, v54);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v63 = OUTLINED_FUNCTION_5(v62);
  *(v63 + 16) = xmmword_25BCBB6D0;
  *(v63 + 32) = v61;
LABEL_83:

  return v63;
}

id sub_25BCB32F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_25BAF99E8(*(v4 + 64));
  sub_25BB50DF0();
  v8 = sub_25BCB672C();

  if (a3)
  {
    a3 = sub_25BCB633C();
  }

  v9 = [a4 meanOfTensor:a1 axes:v8 name:a3];

  return v9;
}

id sub_25BCB33A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_25BAF99E8(*(v5 + 64));
  sub_25BB50DF0();
  v10 = sub_25BCB672C();

  if (a4)
  {
    a4 = sub_25BCB633C();
  }

  v11 = [a5 varianceOfTensor:a1 meanTensor:a2 axes:v10 name:a4];

  return v11;
}

uint64_t sub_25BCB3478(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  sub_25BAB4D78(1uLL, v5 == 0, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = v8;
  if (*(v2 + 48))
  {
    sub_25BAB4D78(2uLL, v5 == 0, a2);
    if (v5)
    {
      v10 = MEMORY[0x25F8779B0](2, a2);
    }

    else
    {
      v10 = *(a2 + 48);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = sub_25BC5DF28();
  sub_25BC5E19C(v13);
  v15 = v14;
  if (v11)
  {
    v16 = sub_25BC5DF28();
    if (v16 == sub_25BC5DE24())
    {
      v50 = v11;
    }

    else
    {
      sub_25BAF99E8(v15);

      sub_25BB50DF0();
      v17 = sub_25BCB672C();

      v50 = [a1 reshapeTensor:v12 withShape:v17 name:0];
    }
  }

  else
  {

    v50 = 0;
  }

  v18 = sub_25BCB32F0(v9, 0, 0, a1);
  v19 = sub_25BCB33A0(v9, v18, 0, 0, a1);
  v51 = a1;
  v49 = v7;
  if (*(v2 + 48) && *(v2 + 56))
  {
    v20 = *(v2 + 64);
    sub_25BAF99E8(v20);
    sub_25BB50DF0();
    v21 = sub_25BCB672C();

    v22 = *(v2 + 76);
    v23 = sub_25BB2BAEC(0x656C616373, 0xE500000000000000);
    v25 = sub_25BCB3B04(v7, v9, v18, v19, v21, v23, v24, a1, v22);

    sub_25BAF99E8(v20);
    v26 = sub_25BCB672C();

    v27 = sub_25BB2BAEC(0x74657366666FLL, 0xE600000000000000);
    v29 = sub_25BCB3BB8(v7, v9, v26, v27, v28, a1);

    v30 = v9;
    v31 = v7;
  }

  else
  {
    v29 = 0;
    v25 = 0;
    v30 = v9;
    v31 = v7;
  }

  v32 = *(v2 + 64);
  v47 = v25;
  sub_25BAF99E8(v32);
  sub_25BB50DF0();
  v33 = sub_25BCB672C();

  v34 = *(v2 + 76);
  v35 = OUTLINED_FUNCTION_3_21();
  v37 = sub_25BB2BAEC(v35, v36);
  v48 = v29;
  v39 = sub_25BCB3A30(v31, v30, v18, v19, v50, v25, v29, v33, v34, v37, v38, v51);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v41 = OUTLINED_FUNCTION_5(v40);
  *(v41 + 16) = xmmword_25BCBB6D0;
  *(v41 + 32) = v39;
  v42 = v39;
  if (v25)
  {
    v43 = v47;
    v44 = [v51 squeezeTensor:v47 name:0];
    MEMORY[0x25F876F40]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25BCB67AC();
    }

    sub_25BCB680C();
  }

  else
  {
    v43 = v47;
  }

  if (v48)
  {
    v45 = [v51 squeezeTensor:v48 name:0];
    MEMORY[0x25F876F40]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25BCB67AC();
    }

    sub_25BCB680C();

    v18 = v19;
    v19 = v48;
  }

  return v41;
}

id sub_25BCB397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, float a9)
{
  v16 = sub_25BCB633C();

  *&v17 = a9;
  v18 = [a8 normalizationWithTensor:a1 meanTensor:a2 varianceTensor:a3 gammaTensor:a4 betaTensor:a5 epsilon:v16 name:v17];

  return v18;
}

id sub_25BCB3A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, void *a12)
{
  v20 = sub_25BCB633C();

  *&v21 = a9;
  v22 = [a12 normalizationGradientWithIncomingGradientTensor:a1 sourceTensor:a2 meanTensor:a3 varianceTensor:a4 gammaTensor:a5 gammaGradientTensor:a6 betaGradientTensor:v21 reductionAxes:a7 epsilon:a8 name:v20];

  return v22;
}

id sub_25BCB3B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, float a9)
{
  v16 = sub_25BCB633C();

  *&v17 = a9;
  v18 = [a8 normalizationGammaGradientWithIncomingGradientTensor:a1 sourceTensor:a2 meanTensor:a3 varianceTensor:a4 reductionAxes:a5 epsilon:v16 name:v17];

  return v18;
}

id sub_25BCB3BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 normalizationBetaGradientWithIncomingGradientTensor:a1 sourceTensor:a2 reductionAxes:a3 name:v10];

  return v11;
}

uint64_t sub_25BCB3C44(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v7, ObjectType, &protocol descriptor for MPSGraphOperationEncodable))
  {
    v10 = v9;
    v11 = swift_getObjectType();
    v12 = *(v10 + 24);
    swift_unknownObjectRetain();
    v4 = v12(a1, a2, v11, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_25BBB9B78();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_25BCB3D58(uint64_t a1)
{
  result = sub_25BCB3D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BCB3D80()
{
  result = qword_28154F010;
  if (!qword_28154F010)
  {
    type metadata accessor for TrackedOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F010);
  }

  return result;
}

uint64_t static GradientClippingMode.== infix(_:_:)(uint64_t *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (*(a1 + 12) == 1)
    {
      if (v4 == 1 && *&v2 == *&v3)
      {
        v5 = 1;
        return v5 & 1;
      }

LABEL_19:
      v5 = 0;
      return v5 & 1;
    }

    if (v4 != 2)
    {
      goto LABEL_19;
    }

    if ((v2 & 0x100000000) != 0)
    {
      if ((v3 & 0x100000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v3 & 0x100000000) != 0 || *&v2 != *&v3)
    {
      goto LABEL_19;
    }

    v6 = *(a1 + 2) == a2[2];
  }

  else
  {
    if (*(a2 + 12))
    {
      goto LABEL_19;
    }

    v6 = *(&v2 + 1) == *(&v3 + 1) && *&v2 == COERCE_FLOAT(*a2);
  }

  v5 = v6;
  return v5 & 1;
}

unint64_t sub_25BCB3E80(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_25BCB3E90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000025BCE7D30 == a2;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x800000025BCE7D50 == a2;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000025BCE7D70 == a2;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000022 && 0x800000025BCE7D90 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_25BCB789C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_25BCB403C(char a1)
{
  result = 0x696D697263736964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25BCB4104@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BCB3E80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BCB41E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BCB3E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BCB4210(uint64_t a1)
{
  v2 = sub_25BCB4528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BCB424C(uint64_t a1)
{
  v2 = sub_25BCB4528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GradientClippingMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB8128, &unk_25BCD8450);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB4528();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BCB457C();
    sub_25BCB76AC();
    if (v20)
    {
      if (v20 != 1)
      {
        OUTLINED_FUNCTION_2_10();
        v15 = sub_25BCB764C();
        OUTLINED_FUNCTION_2_10();
        sub_25BCB768C();
        v14 = v16;
        v17 = OUTLINED_FUNCTION_6_3();
        v18(v17);
        v11 = v15 & 0x1FFFFFFFFLL;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_2_10();
      sub_25BCB768C();
      v8 = v7;
      v9 = OUTLINED_FUNCTION_6_3();
      v10(v9);
      v11 = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
      sub_25BC5B360(&qword_27FBB72B0, MEMORY[0x277D83AC8], MEMORY[0x277D83668]);
      sub_25BCB76AC();
      v12 = OUTLINED_FUNCTION_6_3();
      v13(v12);
      v11 = v19;
    }

    v14 = 0;
LABEL_9:
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 12) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BCB4528()
{
  result = qword_27FBB8130;
  if (!qword_27FBB8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8130);
  }

  return result;
}

unint64_t sub_25BCB457C()
{
  result = qword_27FBB8138;
  if (!qword_27FBB8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8138);
  }

  return result;
}

uint64_t GradientClippingMode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB8140, &qword_25BCD8460);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v13 = *v1;
  v10 = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB4528();
  sub_25BCB7B6C();
  if (v10)
  {
    if (v10 == 1)
    {
      LOBYTE(v14) = 1;
      v15 = 0;
      sub_25BCB487C();
      OUTLINED_FUNCTION_1_12();
      sub_25BCB779C();
      if (!v2)
      {
        LOBYTE(v14) = 2;
LABEL_9:
        sub_25BCB777C();
      }
    }

    else
    {
      LOBYTE(v14) = 2;
      v15 = 0;
      sub_25BCB487C();
      OUTLINED_FUNCTION_1_12();
      sub_25BCB779C();
      if (!v2)
      {
        LOBYTE(v14) = 4;
        OUTLINED_FUNCTION_1_12();
        sub_25BCB772C();
        LOBYTE(v14) = 3;
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    sub_25BCB487C();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v2)
    {
      v14 = v13;
      v15 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
      sub_25BC5B360(&qword_27FBB72A0, MEMORY[0x277D83AA0], MEMORY[0x277D83640]);
      sub_25BCB779C();
    }
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_25BCB487C()
{
  result = qword_27FBB8148;
  if (!qword_27FBB8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8148);
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GradientClippingMode(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 13))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 12);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for GradientClippingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GradientClippingMode.Discriminator(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GradientClippingMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BCB4B78()
{
  result = qword_27FBB8150;
  if (!qword_27FBB8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8150);
  }

  return result;
}

unint64_t sub_25BCB4BD0()
{
  result = qword_27FBB8158;
  if (!qword_27FBB8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8158);
  }

  return result;
}

unint64_t sub_25BCB4C28()
{
  result = qword_27FBB8160;
  if (!qword_27FBB8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8160);
  }

  return result;
}

unint64_t sub_25BCB4C80()
{
  result = qword_27FBB8168;
  if (!qword_27FBB8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8168);
  }

  return result;
}

unint64_t sub_25BCB4CD4()
{
  result = qword_27FBB8170;
  if (!qword_27FBB8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB8170);
  }

  return result;
}

uint64_t MIL::IRArgument::Make()
{
  return MEMORY[0x282182FE0]();
}

{
  return MEMORY[0x282182FE8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}