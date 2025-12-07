void sub_26C12396C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
  }

  else
  {
    if (!v6)
    {
      v7 = BYTE6(v5);
LABEL_13:
      a1[2] = v7;
      *a2 = v3;
      *(a2 + 8) = v4;
      sub_26C0BBAA4(v3, v5);
      return;
    }

    v7 = v3 >> 32;
    v8 = v3;
  }

  if (v7 < v8)
  {
    __break(1u);
  }

  else
  {
    if (v6 == 2)
    {
      v9 = *(v3 + 24);
    }

    else
    {
      v9 = v3 >> 32;
    }

    if (v9 >= v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

char *sub_26C1239F0(uint64_t *a1, uint64_t a2)
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
    sub_26C1298E0(&v65, bswap32(v13) >> 16, 0xDu, 0, &v53, &v59);
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

uint64_t sub_26C123F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = v3;
  v7 = *(a2 + 8);
  sub_26C0BBAA4(v8, v9);
  sub_26C0BBAA4(v3, v7);
  LOBYTE(v3) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v8, &v6);
  sub_26C0BB9B0(v6, v7);
  sub_26C0BB9B0(v8, v9);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BD914(v2, v4);
}

char *sub_26C12401C(char *a1, char *a2, char **a3)
{
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 <= 0xFF)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v6 = sub_26C0CDAAC(0, *(v6 + 2) + 1, 1, v6);
  *v3 = v6;
LABEL_7:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_26C0CDAAC((v9 > 1), v10 + 1, 1, v6);
    *v3 = v6;
  }

  *(v6 + 2) = v10 + 1;
  v6[v10 + 32] = v7;
  return sub_26C0C62A0(v5, v4);
}

uint64_t sub_26C124140(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26C148BDC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C1241CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
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

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_26C12444C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_26C148BDC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26C1247A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C12482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for SessionKeyManager.State.EarlySecret(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for SessionKeyManager.State.HandshakeSecret(319, v4, v5, v7);
    if (v10 <= 0x3F)
    {
      result = type metadata accessor for SessionKeyManager.State.MasterSecret(319, v4, v5, v9);
      if (v12 <= 0x3F)
      {
        result = type metadata accessor for SessionKeyManager.State.AllSecrets(319, v4, v5, v11);
        if (v13 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C1248F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_26C148BDC() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v8 + v7;
  v10 = ((v8 + v7 + ((v8 + v7 + ((v5 + v7) & ~v7)) & ~v7)) & ~v7) + v8;
  v11 = ((v10 + v7) & ~v7) + v8;
  if (v10 <= v11)
  {
    v10 = ((v10 + v7) & ~v7) + v8;
  }

  v12 = ((v9 + ((v11 + v7) & ~v7)) & ~v7) + v8;
  if (v12 > v10)
  {
    v10 = v12;
  }

  v13 = ((v9 + ((v9 + (v9 & ~v7)) & ~v7)) & ~v7) + v8;
  if (v13 > v10)
  {
    v10 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_29;
  }

  v14 = v10 + 1;
  v15 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v18 = ((a2 + ~(-1 << v15) - 251) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_29:
      v20 = *(a1 + v10);
      if (v20 >= 5)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return (v14 | v19) + 252;
}

void sub_26C124AE4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_26C148BDC() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = v10 + v9;
  v12 = ((v10 + v9 + ((v10 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v10;
  v13 = ((v12 + v9) & ~v9) + v10;
  if (v12 <= v13)
  {
    v12 = ((v12 + v9) & ~v9) + v10;
  }

  v14 = ((v11 + ((v13 + v9) & ~v9)) & ~v9) + v10;
  if (v14 > v12)
  {
    v12 = v14;
  }

  v15 = ((v11 + ((v11 + (v11 & ~v9)) & ~v9)) & ~v9) + v10;
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = v15 + 1;
  if (a3 < 0xFC)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 251) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFB)
  {
    v18 = a2 - 252;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_43:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v15] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_28;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_26C124D9C(uint64_t a1)
{
  result = sub_26C148BDC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C124E3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26C148BDC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C124ED0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v11;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v12 = *(*(v8 - 8) + 64);
  v15 = ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + ((v12 + v11 + (v14 & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11)) & ~v11) + v12;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v24 = *(v6 + 48);

          return v24(a1, v7, v5);
        }

        else
        {
          v22 = *(v9 + 48);

          return v22((a1 + v14) & ~v11);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_26C125160(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_26C148BDC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = *(v10 + 64);
  v16 = ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + ((v15 + v13 + (v14 & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13)) & ~v13) + v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26C12547C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26C148BDC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C12550C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26C148BDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
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

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_26C125784(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_26C148BDC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_26C125A88()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AD78);
  __swift_project_value_buffer(v0, qword_28047AD78);
  return sub_26C148A8C();
}

void sub_26C125B0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = sub_26C148A7C();
  v8 = sub_26C14900C();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_26C0E5DE8(a1, a2, &v12);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_26C0E5DE8(a3, a4, &v12);
    _os_log_impl(&dword_26C0B5000, oslog, v8, "invalid state transition for session key manager: state %s event: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v10, -1, -1);
    MEMORY[0x26D69C3A0](v9, -1, -1);
  }
}

uint64_t sub_26C125C94()
{
  v1 = *(v0 + 4);
  sub_26C1491AC();
  sub_26C1491CC();
  if (v1 != 1)
  {
    sub_26C1491EC();
  }

  return sub_26C14920C();
}

uint64_t sub_26C125D04()
{
  if (*(v0 + 4) == 1)
  {
    return sub_26C1491CC();
  }

  sub_26C1491CC();
  return sub_26C1491EC();
}

uint64_t sub_26C125D54(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_26C1491AC();
  sub_26C1491CC();
  if (v2 != 1)
  {
    sub_26C1491EC();
  }

  return sub_26C14920C();
}

uint64_t sub_26C125DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_26C125DF8()
{
  result = qword_28047AD90;
  if (!qword_28047AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD90);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t sub_26C125E74()
{
  result = qword_28047AD98;
  if (!qword_28047AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AD98);
  }

  return result;
}

void sub_26C125EC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = 0;
      v6 = BYTE6(v1);
      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_7:
    sub_26C0BBAA4(*a1, v1);
    goto LABEL_9;
  }

  v6 = 0;
  v5 = 0;
LABEL_9:
  if (v6 < v3 || v6 < v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = sub_26C14889C();
  v10 = v9;
  sub_26C1488CC();
  v11 = v10;
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v12)
    {
LABEL_15:
      sub_26C0BB9B0(v8, v10);
      sub_26C0BB9B0(v2, v1);
      return;
    }

LABEL_20:
    sub_26C0BB9B0(v8, v11);
    sub_26C0BB9B0(v2, v1);
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_15;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  sub_26C0BB9B0(v8, v11);
  sub_26C0BB9B0(v2, v1);
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_26C12601C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  if (v6 != 8 && v6 != 1)
  {
    v14 = v6 | 0x390000;
    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v18 = v14;
    v19 = 0;
    LOBYTE(v20) = 0;
LABEL_16:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v8 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v12 = BYTE6(v9);
    v13 = v8 >> 32;
    if (!v11)
    {
      v13 = v12;
    }
  }

  result = v13 - v10;
  if (__OFSUB__(v13, v10))
  {
    __break(1u);
  }

  else
  {
    result = sub_26C0DE248(result, &v18);
    v16 = v19;
    if (v19 >> 60 == 15)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v18 = 0;
      v19 = 0;
      LOBYTE(v20) = 2;
      goto LABEL_16;
    }

    v17 = v20;
    *a3 = v18;
    a3[1] = v16;
    a3[2] = v17;
  }

  return result;
}

uint64_t sub_26C126138()
{
  v1 = *(v0 + 2);
  sub_26C1491AC();
  if (v1)
  {
    MEMORY[0x26D69BEF0](1);
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C1491CC();
  }

  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C1261C0()
{
  if (*(v0 + 2))
  {
    MEMORY[0x26D69BEF0](1);
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C1491CC();
  }

  return sub_26C1491CC();
}

uint64_t sub_26C126224(uint64_t a1)
{
  v2 = *(v1 + 2);
  sub_26C1491AC();
  if (v2)
  {
    MEMORY[0x26D69BEF0](1);
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C1491CC();
  }

  sub_26C1491CC();
  return sub_26C14920C();
}

BOOL sub_26C1262A8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 2))
  {
    v2 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 2);
  }
}

uint64_t ClientTicketRequest.init(newSessionCount:resumptionCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ClientTicketRequest.description.getter()
{
  sub_26C14908C();
  MEMORY[0x26D69BC90](0xD00000000000001FLL, 0x800000026C15AE30);
  v0 = sub_26C14911C();
  MEMORY[0x26D69BC90](v0);

  MEMORY[0x26D69BC90](0xD000000000000013, 0x800000026C15AE50);
  v1 = sub_26C14911C();
  MEMORY[0x26D69BC90](v1);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0;
}

uint64_t ClientTicketRequest.hashValue.getter()
{
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

unint64_t sub_26C126530()
{
  result = qword_28047ADA0;
  if (!qword_28047ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADA0);
  }

  return result;
}

unint64_t sub_26C126598()
{
  sub_26C14908C();

  v0 = sub_26C14911C();
  MEMORY[0x26D69BC90](v0);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_26C126648()
{
  result = qword_28047ADA8;
  if (!qword_28047ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADA8);
  }

  return result;
}

unint64_t sub_26C1266A0()
{
  result = qword_28047ADB0;
  if (!qword_28047ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADB0);
  }

  return result;
}

uint64_t sub_26C1266F4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 == 8)
  {
    result = sub_26C1368E8();
    if ((result & 0x100) == 0)
    {
      *a3 = result;
      *(a3 + 2) = 1;
      return result;
    }
  }

  else
  {
    if (v5 != 1)
    {
      *a2 = v5 | 0x3A0000;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      goto LABEL_10;
    }

    v6 = sub_26C1368E8();
    if ((v6 & 0x100) == 0)
    {
      v7 = v6;
      result = sub_26C1368E8();
      if ((result & 0x100) == 0)
      {
        *a3 = v7 | (result << 8);
        *(a3 + 2) = 0;
        return result;
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
LABEL_10:
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s13TicketRequestOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t _s13TicketRequestOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_26C126920(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 8;
    v6 = *v3;
    v7 = *(v3 - 1);
    v11 = *(v3 - 6);
    v12 = v7;
    v13 = v6;
    v8 = sub_26C12751C(&v11);
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

uint64_t sub_26C1269B0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 3;
    v6 = *v3;
    v10 = *(v3 - 1);
    v11 = v6;
    v7 = sub_26C1277A0(&v10);
    v3 = v5;
    v8 = __OFADD__(a1, v7);
    a1 += v7;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26C126A38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_26C1491AC();
  if (v3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491DC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C12A598(v5, v1);
    sub_26C12A494(v5, v2);
  }

  return sub_26C14920C();
}

void sub_26C126AC4(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491DC();
  }

  else
  {
    v4 = *(v1 + 8);
    MEMORY[0x26D69BEF0](0);
    sub_26C12A598(a1, v3);

    sub_26C12A494(a1, v4);
  }
}

uint64_t sub_26C126B50(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_26C1491AC();
  if (v4)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491DC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    sub_26C12A598(v6, v2);
    sub_26C12A494(v6, v3);
  }

  return sub_26C14920C();
}

BOOL sub_26C126BD8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v4 == v5;
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    return (sub_26C0BC888(v4, v5) & 1) != 0 && (sub_26C0BCDF8(v8, v7) & 1) != 0;
  }
}

uint64_t sub_26C126C64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C12A598(v4, v1);
  sub_26C12A494(v4, v2);
  return sub_26C14920C();
}

void sub_26C126CB8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_26C12A598(a1, v3);

  sub_26C12A494(a1, v4);
}

uint64_t sub_26C126CF8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26C1491AC();
  sub_26C12A598(v5, v2);
  sub_26C12A494(v5, v3);
  return sub_26C14920C();
}

uint64_t sub_26C126D48(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_26C0BC888(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BCDF8(v2, v3);
}

void *sub_26C126DA4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  result = sub_26C1491AC();
  v5 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v1);
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
    sub_26C1491EC();
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C126E74(uint64_t a1)
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
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C1491EC();
  }

  return result;
}

void *sub_26C126F1C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  result = sub_26C1491AC();
  v6 = v2 >> 62;
  if ((v2 >> 62) > 1)
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
    v7 = BYTE6(v2);
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
    sub_26C1491EC();
    return sub_26C14920C();
  }

  return result;
}

unint64_t sub_26C126FF4()
{
  result = qword_28047ADB8;
  if (!qword_28047ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADB8);
  }

  return result;
}

unint64_t sub_26C12704C()
{
  result = qword_28047ADC0;
  if (!qword_28047ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADC0);
  }

  return result;
}

unint64_t sub_26C1270A4()
{
  result = qword_28047ADC8;
  if (!qword_28047ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADC8);
  }

  return result;
}

unint64_t sub_26C1270FC()
{
  result = qword_28047ADD0;
  if (!qword_28047ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADD0);
  }

  return result;
}

unint64_t sub_26C127150(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v10 = 0;
    if (v7 == 2)
    {
      v10 = *(v5 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v6);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  v24 = 0;
  v11 = MEMORY[0x277D838B0];
  v12 = MEMORY[0x277CC9C18];
  v27 = MEMORY[0x277D838B0];
  v28 = MEMORY[0x277CC9C18];
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_1(&v25, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v13 = sub_26C126920(0, a1);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  if (v13 >> 16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  sub_26C10064C(v13, v10);
  v15 = *v2;
  v16 = v2[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v20 = *(v15 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  v24 = 0;
  v27 = v11;
  v28 = v12;
  v25 = &v24;
  v26 = &v25;
  __swift_project_boxed_opaque_existential_1(&v25, v11);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v21 = sub_26C1269B0(0, a2);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v22 = v21;
  if (v21 >> 16)
  {
    goto LABEL_22;
  }

  sub_26C10064C(v21, v20);
  return v14 + v22 + 4;
}

uint64_t sub_26C127318(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v7 = *a1;
  if (v7 == 2)
  {
    if ((a2 & 1) == 0)
    {
      v16 = sub_26C1365D4();
      if ((v16 & 0x10000) == 0)
      {
        return v16;
      }

      goto LABEL_13;
    }

LABEL_6:
    v15 = v7 | 0x290000;
    *a3 = v15;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v18 = v15;
    v19 = 0;
    v20 = 0;
LABEL_14:
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v5;
  }

  if (v7 != 1)
  {
    goto LABEL_6;
  }

  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  v5 = v4;
  sub_26C0BBAA4(*v3, v8);
  v11 = sub_26C0DFA98(v3, &v18);
  if (!v4)
  {
    v5 = v11;
    if (v11)
    {
      sub_26C0BB9B0(v9, v8);
      v9 = *v3;
      v8 = v3[1];
      v10 = v3[2];
      sub_26C0BBAA4(*v3, v8);
      if (sub_26C0DFA6C(v3, &v18))
      {
        sub_26C0BB9B0(v9, v8);
        return v5;
      }

      sub_26C0BB9B0(*v3, v3[1]);
    }

    else
    {
      sub_26C0BB9B0(*v3, v3[1]);
    }

    *v3 = v9;
    v3[1] = v8;
    v3[2] = v10;
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    v18 = 0;
    v19 = 0;
    v20 = 2;
    goto LABEL_14;
  }

  sub_26C0BB9B0(*v3, v3[1]);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  *v3 = v9;
  v3[1] = v8;
  v3[2] = v10;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  return v5;
}

unint64_t sub_26C12751C(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
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

  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  LOWORD(v25) = 0;
  v12 = MEMORY[0x277D838B0];
  v13 = MEMORY[0x277CC9C18];
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = (&v25 + 2);
  __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v14 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = 0;
      v16 = BYTE6(v2);
      if (BYTE6(v2) < v10)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v15 = v3;
    v16 = v3 >> 32;
LABEL_15:
    sub_26C0BBAA4(v3, v2);
    if (v16 < v10)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v14 == 2)
  {
    v15 = *(v3 + 16);
    v16 = *(v3 + 24);
    goto LABEL_15;
  }

  v16 = 0;
  v15 = 0;
  if (v10 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v16 < v15)
  {
    goto LABEL_33;
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
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v21 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v17, v20);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_32;
  }

  v23 = *(v17 + 16);
  v22 = *(v17 + 24);
  sub_26C0BB9B0(v17, v20);
  sub_26C0BB9B0(v3, v2);
  v2 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v17, v20);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_35;
    }

    v2 = HIDWORD(v17) - v17;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v2 >> 16)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C10064C(v2, v9);
  v25 = bswap32(v11);
  v28 = v12;
  v29 = v13;
  v26 = &v25;
  v27 = &v26;
  __swift_project_boxed_opaque_existential_1(&v26, v12);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  return v2 + 6;
}

unint64_t sub_26C1277A0(uint64_t *a1)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
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

  v10 = a1[2];
  v22 = 0;
  v23[3] = MEMORY[0x277D838B0];
  v23[4] = MEMORY[0x277CC9C18];
  v23[0] = &v22;
  v23[1] = v23;
  __swift_project_boxed_opaque_existential_1(v23, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v11 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = 0;
      v13 = BYTE6(v2);
      if (BYTE6(v2) < v10)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v12 = v3;
    v13 = v3 >> 32;
LABEL_15:
    sub_26C0BBAA4(v3, v2);
    if (v13 < v10)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v11 == 2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    goto LABEL_15;
  }

  v13 = 0;
  v12 = 0;
  if (v10 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v13 < v12)
  {
    goto LABEL_33;
  }

  v14 = sub_26C14889C();
  v16 = v15;
  sub_26C1488CC();
  v17 = v16;
  v18 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (!v18)
    {
      sub_26C0BB9B0(v14, v16);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v16);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v18 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v14, v17);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_32;
  }

  v20 = *(v14 + 16);
  v19 = *(v14 + 24);
  sub_26C0BB9B0(v14, v17);
  sub_26C0BB9B0(v3, v2);
  v2 = v19 - v20;
  if (__OFSUB__(v19, v20))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v14, v17);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      goto LABEL_35;
    }

    v2 = HIDWORD(v14) - v14;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v2 > 0xFF)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C100778(v2, v9);
  return v2 + 1;
}

char *sub_26C1279DC(uint64_t *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  sub_26C0BBAA4(*a1, v6);
  sub_26C0E09A8(a1, &v30, &v33);
  if (v2)
  {
    v29 = a2;
    v8 = MEMORY[0x277D84F90];
    sub_26C0BB9B0(*a1, a1[1]);
    v10 = v30;
    v9 = v31;
    v11 = v32;
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    LOBYTE(v34) = v11;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    goto LABEL_3;
  }

  v12 = *(&v33 + 1);
  if (*(&v33 + 1) >> 60 == 15)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_6:
    sub_26C0BB9B0(*a1, a1[1]);
    sub_26C0BB344(v33, v12);
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    return v8;
  }

  v29 = a2;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26C0BB9B0(v5, v6);
    v14 = v33;
    v15 = v34;
    v16 = a1[2];
    v17 = v16 + 4;
    if (__OFADD__(v16, 4))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = v19 >> 62;
    if ((v19 >> 62) <= 1)
    {
      if (v20)
      {
        v21 = v18 >> 32;
      }

      else
      {
        v21 = BYTE6(v19);
      }

LABEL_16:
      if (v21 < v17)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    if (v20 == 2)
    {
      v21 = *(v18 + 24);
      goto LABEL_16;
    }

    if (v17 > 0)
    {
LABEL_35:
      sub_26C0BB344(v33, v12);
      return v8;
    }

LABEL_19:
    *&v33 = *a1;
    *(&v33 + 1) = v19;
    if (v17 < v16)
    {
      goto LABEL_38;
    }

    v30 = v16;
    v31 = v16 + 4;
    sub_26C0BBAA4(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v33, *(&v33 + 1));
    a1[2] = v17;
    v22 = v12 >> 62;
    if ((v12 >> 62) > 1)
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
      v23 = BYTE6(v12);
    }

    v24 = __OFSUB__(v23, v15);
    v25 = v23 - v15;
    if (v24)
    {
      goto LABEL_39;
    }

    if (v25 <= 0)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_26C0CDF10(0, *(v8 + 2) + 1, 1, v8);
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    if (v27 >= v26 >> 1)
    {
      v8 = sub_26C0CDF10((v26 > 1), v27 + 1, 1, v8);
    }

    *(v8 + 2) = v27 + 1;
    v28 = &v8[32 * v27];
    *(v28 + 4) = v14;
    *(v28 + 5) = v12;
    *(v28 + 6) = v15;
    *(v28 + 14) = bswap32(0);
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    sub_26C0BBAA4(*a1, v6);
    sub_26C0E09A8(a1, &v30, &v33);
    v12 = *(&v33 + 1);
    if (*(&v33 + 1) >> 60 == 15)
    {
      goto LABEL_6;
    }
  }

  v33 = xmmword_26C14B8C0;
  v11 = 2;
  LOBYTE(v34) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB344(v14, v12);

  v9 = 0;
  v10 = 9;
LABEL_3:
  *v29 = v10;
  *(v29 + 8) = v9;
  *(v29 + 16) = v11;
  return v8;
}

char *sub_26C127D7C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
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
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v7 = v3 >> 62;
  v40 = v2 >> 32;
  v8 = MEMORY[0x277D84F90];
  v41 = BYTE6(v3);
  v42 = v3 >> 62;
  v44 = a1[1];
  v45 = *a1;
  while (v7 <= 1)
  {
    v9 = v41;
    if (v7)
    {
      v9 = v40;
    }

LABEL_8:
    if (v9 < v5)
    {
      goto LABEL_71;
    }

LABEL_11:
    v10 = *a1;
    v11 = a1[1];
    v47 = *a1;
    if (v5 < v4)
    {
      goto LABEL_77;
    }

    sub_26C0BBAA4(v2, v3);
    sub_26C0BBAA4(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v47, v11);
    a1[2] = v5;
    v12 = *a1;
    v13 = a1[1];
    v14 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (v14)
      {
        v15 = v12 >> 32;
      }

      else
      {
        v15 = BYTE6(v13);
      }

LABEL_18:
      if (v15 < v5)
      {
        goto LABEL_72;
      }

      goto LABEL_21;
    }

    if (v14 == 2)
    {
      v15 = *(v12 + 24);
      goto LABEL_18;
    }

    if (v5 > 0)
    {
      goto LABEL_72;
    }

LABEL_21:
    v43 = v8;
    v16 = sub_26C14889C();
    v18 = v16;
    v19 = v17;
    a1[2] = v5;
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v16 = *(v16 + 16);
        v21 = *(v18 + 24);
      }

      else
      {
        v16 = 0;
        v21 = 0;
      }
    }

    else if (v20)
    {
      v16 = v16;
      v21 = v18 >> 32;
    }

    else
    {
      v16 = 0;
      v21 = BYTE6(v17);
    }

    v22 = __OFSUB__(v21, v16);
    v23 = v21 - v16;
    if (v22)
    {
      goto LABEL_78;
    }

    v24 = v16 + v23;
    if (__OFADD__(v16, v23))
    {
      goto LABEL_79;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        v25 = v18 >> 32;
      }

      else
      {
        v25 = BYTE6(v17);
      }

LABEL_36:
      if (v25 < v24)
      {
        goto LABEL_83;
      }

      goto LABEL_39;
    }

    if (v20 == 2)
    {
      v25 = *(v18 + 24);
      goto LABEL_36;
    }

    if (v24 > 0)
    {
      goto LABEL_84;
    }

LABEL_39:
    if (v24 < v16)
    {
      goto LABEL_80;
    }

    v26 = sub_26C14889C();
    v28 = v27;
    v29 = 0;
    v30 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v29 = *(v26 + 16);
      }
    }

    else if (v30)
    {
      v29 = v26;
    }

    v46 = v26;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v31 = *(v18 + 24);
      }

      else
      {
        v31 = 0;
      }
    }

    else if (v20)
    {
      v31 = v18 >> 32;
    }

    else
    {
      v31 = BYTE6(v19);
    }

    if (__OFSUB__(v31, v24))
    {
      goto LABEL_81;
    }

    if (v31 != v24)
    {
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v46, v28);
      sub_26C0BB9B0(v18, v19);
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v45;
      a1[1] = v44;
      a1[2] = v4;
      swift_willThrowTypedImpl();
      v8 = v43;

      v37 = 1;
LABEL_74:
      *a2 = v37;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      return v8;
    }

    sub_26C0BB9B0(v18, v19);
    sub_26C0BB9B0(v45, v44);
    if (v30 > 1)
    {
      v8 = v43;
      if (v30 == 2)
      {
        v32 = *(v46 + 24);
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v8 = v43;
      if (v30)
      {
        v32 = v46 >> 32;
      }

      else
      {
        v32 = BYTE6(v28);
      }
    }

    v22 = __OFSUB__(v32, v29);
    v33 = v32 - v29;
    if (v22)
    {
      goto LABEL_82;
    }

    if (v33 <= 31)
    {
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v46, v28);

      v37 = 9;
      goto LABEL_74;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_26C0CE01C(0, *(v8 + 2) + 1, 1, v8);
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    if (v35 >= v34 >> 1)
    {
      v8 = sub_26C0CE01C((v34 > 1), v35 + 1, 1, v8);
    }

    *(v8 + 2) = v35 + 1;
    v36 = &v8[24 * v35];
    v2 = v45;
    *(v36 + 4) = v46;
    *(v36 + 5) = v28;
    *(v36 + 6) = v29;
    v4 = a1[2];
    v5 = v4 + 1;
    v3 = v44;
    LODWORD(v7) = v42;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_76;
    }
  }

  if (v7 == 2)
  {
    v9 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v5 < 1)
  {
    goto LABEL_11;
  }

LABEL_71:
  sub_26C0BBAA4(v2, v3);
  v12 = *a1;
  v13 = a1[1];
LABEL_72:
  sub_26C0BB9B0(v12, v13);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return v8;
}

uint64_t sub_26C1282B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = v3;
  v7 = *(a2 + 8);
  sub_26C0BBAA4(v8, v9);
  sub_26C0BBAA4(v3, v7);
  LOBYTE(v3) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v8, &v6);
  sub_26C0BB9B0(v6, v7);
  sub_26C0BB9B0(v8, v9);
  return v3 & (v2 == v4);
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_26C128378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 28))
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

uint64_t sub_26C1283CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C12844C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C128494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26C12853C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 81))
  {
    return (*a1 + 115);
  }

  v3 = ((*(a1 + 80) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 80) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C128590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

unint64_t sub_26C12863C(__int128 *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  v20[2] = a1[2];
  v20[3] = v2;
  v20[4] = a1[4];
  v3 = *a1;
  v4 = a1[1];
  v21 = *(a1 + 80);
  v20[0] = v3;
  v20[1] = v4;
  v5 = 0;
  switch(v21 >> 4)
  {
    case 1:
      v5 = 10;
      break;
    case 2:
      v5 = 43;
      break;
    case 3:
      v5 = 16;
      break;
    case 4:
      v5 = 51;
      break;
    case 5:
      v5 = 42;
      break;
    case 6:
      v5 = 13;
      break;
    case 7:
      v5 = 20;
      break;
    case 8:
      v5 = 57;
      break;
    case 9:
      v5 = 45;
      break;
    case 0xA:
      v5 = 41;
      break;
    case 0xB:
      v5 = 58;
      break;
    case 0xC:
      v5 = 35387;
      break;
    case 0xD:
      v5 = LOWORD(v20[0]);
      break;
    default:
      break;
  }

  v15 = bswap32(v5) >> 16;
  v6 = MEMORY[0x277D838B0];
  v7 = MEMORY[0x277CC9C18];
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v8 = *v1;
  v9 = v1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v8 >> 32;
  }

  else
  {
    v11 = BYTE6(v9);
  }

  v15 = 0;
  v18 = v6;
  v19 = v7;
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, v6);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_26C1293B8(v1, v20);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v13 = v12;
  if (v12 >> 16)
  {
    goto LABEL_26;
  }

  sub_26C10064C(v12, v11);
  return v13 + 4;
}

uint64_t sub_26C12882C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v6 = *v3;
    LOWORD(v10) = *(v3 - 12);
    v11 = *(v3 - 1);
    v12 = v6;
    v7 = sub_26C140E28(&v10);
    v3 = v5;
    v8 = __OFADD__(a1, v7);
    a1 += v7;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

void sub_26C1288BC(_WORD *a1@<X8>)
{
  v2 = 0;
  switch(*(v1 + 80) >> 4)
  {
    case 1:
      *a1 = 10;
      break;
    case 2:
      *a1 = 43;
      break;
    case 3:
      *a1 = 16;
      break;
    case 4:
      *a1 = 51;
      break;
    case 5:
      *a1 = 42;
      break;
    case 6:
      *a1 = 13;
      break;
    case 7:
      *a1 = 20;
      break;
    case 8:
      *a1 = 57;
      break;
    case 9:
      *a1 = 45;
      break;
    case 0xA:
      *a1 = 41;
      break;
    case 0xB:
      *a1 = 58;
      break;
    case 0xC:
      *a1 = -30149;
      break;
    case 0xD:
      v2 = *v1;
      goto LABEL_12;
    default:
LABEL_12:
      *a1 = v2;
      break;
  }
}

void sub_26C128984(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5) | (*(v1 + 7) << 16);
  v7 = *(v1 + 8);
  v8 = *(v1 + 9) | ((*(v1 + 13) | (*(v1 + 15) << 16)) << 32);
  v9 = *(v1 + 16);
  v10 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v14 = *(v1 + 5);
  v13 = *(v1 + 6);
  v15 = *(v1 + 7);
  v16 = *(v1 + 8);
  v17 = *(v1 + 80);
  v18 = *(v1 + 9);
  switch(v17 >> 4)
  {
    case 1u:
      MEMORY[0x26D69BEF0](1);
      MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v34 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v34)
      {
        v35 = (v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32;
        do
        {
          v35 += 2;
          sub_26C1491DC();
          --v34;
        }

        while (v34);
      }

      return;
    case 2u:
      v31 = v7;
      MEMORY[0x26D69BEF0](2);
      if (v31)
      {
        v20 = 1;
        goto LABEL_23;
      }

      MEMORY[0x26D69BEF0](0);
      MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v52 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v52)
      {
        v53 = (v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 33;
        do
        {
          v53 += 2;
          sub_26C1491CC();
          sub_26C1491CC();
          --v52;
        }

        while (v52);
      }

      return;
    case 3u:
      v32 = v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40);
      MEMORY[0x26D69BEF0](3);
      if (v9)
      {
        MEMORY[0x26D69BEF0](1);

        sub_26C148F4C();
      }

      else
      {
        MEMORY[0x26D69BEF0](0);
        MEMORY[0x26D69BEF0](*(v32 + 16));
        v54 = *(v32 + 16);
        if (v54)
        {
          v55 = v32 + 40;
          do
          {

            sub_26C148F4C();

            v55 += 16;
            --v54;
          }

          while (v54);
        }
      }

      return;
    case 4u:
      v94 = v11;
      v21 = v7;
      MEMORY[0x26D69BEF0](4);
      v22 = (v10 >> 52) & 3;
      if (v22)
      {
        if (v22 != 1)
        {
          v43 = 2;
          goto LABEL_79;
        }

        v23 = v21 | (v8 << 8);
        v24 = v10 & 0xFFFFFFFFFFFFFFLL;
        MEMORY[0x26D69BEF0](1);
        sub_26C1491DC();
        v25 = v24 >> 54;
        if ((v24 >> 54) > 1)
        {
          if (v25 == 2)
          {
            v26 = *(v23 + 24);
          }

          else
          {
            v26 = 0;
          }
        }

        else if (v25)
        {
          v26 = (v8 >> 24);
        }

        else
        {
          v26 = BYTE5(v24);
        }

        if (v26 < v94)
        {
          goto LABEL_141;
        }

        goto LABEL_97;
      }

      MEMORY[0x26D69BEF0](0);
      sub_26C12A6A8(a1, v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40));
      return;
    case 5u:
      MEMORY[0x26D69BEF0](5);
      if (v5)
      {
        goto LABEL_125;
      }

      sub_26C1491CC();
      sub_26C1491EC();
      return;
    case 6u:
      MEMORY[0x26D69BEF0](6);
      MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v40 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v40)
      {
        v41 = (v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32;
        do
        {
          v41 += 2;
          sub_26C1491DC();
          --v40;
        }

        while (v40);
      }

      return;
    case 7u:
      v33 = v7;
      MEMORY[0x26D69BEF0](7);
      if (v33)
      {
        goto LABEL_29;
      }

      MEMORY[0x26D69BEF0](0);
      MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v56 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v56)
      {
        v57 = (v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32;
        do
        {
          ++v57;
          sub_26C1491CC();
          --v56;
        }

        while (v56);
      }

      return;
    case 8u:
      v44 = (v5 << 32) | (v6 << 40);
      v45 = v2 | (v3 << 16) | (v4 << 24) | v44;
      MEMORY[0x26D69BEF0](8);
      v46 = (v8 >> 54) & 3;
      if (((v8 >> 54) & 3) > 1)
      {
        if (v46 == 2)
        {
          v47 = *(v45 + 24);
        }

        else
        {
          v47 = 0;
        }
      }

      else if (v46)
      {
        v47 = v44 >> 32;
      }

      else
      {
        v47 = (((v8 & 0xFFFFFFFFFFFFFFuLL) >> 32) >> 8);
      }

      if (v47 < (v9 | (v10 << 8)))
      {
        goto LABEL_137;
      }

      goto LABEL_97;
    case 9u:
      MEMORY[0x26D69BEF0](9);
      MEMORY[0x26D69BEF0](*((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10));
      v29 = *((v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 0x10);
      if (v29)
      {
        v30 = (v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40)) + 32;
        do
        {
          ++v30;
          sub_26C1491CC();
          --v29;
        }

        while (v29);
      }

      return;
    case 0xAu:
      v42 = v7;
      MEMORY[0x26D69BEF0](10);
      if (v9)
      {
        v43 = 1;
LABEL_79:
        MEMORY[0x26D69BEF0](v43);
        sub_26C1491DC();
      }

      else
      {
        MEMORY[0x26D69BEF0](0);
        sub_26C12A598(a1, v2 | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40));

        sub_26C12A494(a1, v42 | (v8 << 8));
      }

      return;
    case 0xBu:
      MEMORY[0x26D69BEF0](11);
      if (v3)
      {
LABEL_29:
        MEMORY[0x26D69BEF0](1);
      }

      else
      {
        v20 = 0;
LABEL_23:
        MEMORY[0x26D69BEF0](v20);
        sub_26C1491CC();
      }

      goto LABEL_125;
    case 0xCu:
      v86 = v18;
      v87 = v15;
      v89 = v16;
      v90 = v12;
      v91 = v14;
      v92 = v7;
      v88 = v13;
      v95 = v11;
      MEMORY[0x26D69BEF0](12);
      if (v17)
      {
        v93 = v92 | (v8 << 8);
        MEMORY[0x26D69BEF0](1);
        sub_26C1491DC();
        v27 = (v10 >> 54) & 3;
        if (((v10 >> 54) & 3) > 1)
        {
          if (v27 == 2)
          {
            v28 = *(v93 + 24);
          }

          else
          {
            v28 = 0;
          }
        }

        else if (v27)
        {
          v28 = (v8 >> 24);
        }

        else
        {
          v28 = (((v10 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v28 < v95)
        {
          goto LABEL_139;
        }

        v71 = sub_26C14889C();
        v73 = v72;
        sub_26C1488BC();
        sub_26C0BB9B0(v71, v73);
        if (v91 >> 60 == 15)
        {
          sub_26C1491CC();
        }

        else
        {
          sub_26C1491CC();
          v74 = v91 >> 62;
          if ((v91 >> 62) > 1)
          {
            v75 = v88;
            if (v74 == 2)
            {
              v76 = *(v90 + 24);
            }

            else
            {
              v76 = 0;
            }
          }

          else
          {
            v75 = v88;
            if (v74)
            {
              v76 = v90 >> 32;
            }

            else
            {
              v76 = BYTE6(v91);
            }
          }

          if (v76 < v75)
          {
            goto LABEL_142;
          }

          v80 = sub_26C14889C();
          v82 = v81;
          sub_26C1488BC();
          sub_26C0BB9B0(v80, v82);
        }

        if (v89 >> 60 == 15)
        {
LABEL_125:
          sub_26C1491CC();
          return;
        }

        sub_26C1491CC();
        v83 = v89 >> 62;
        if ((v89 >> 62) > 1)
        {
          v84 = v86;
          if (v83 == 2)
          {
            v85 = *(v87 + 24);
          }

          else
          {
            v85 = 0;
          }
        }

        else
        {
          v84 = v86;
          if (v83)
          {
            v85 = v87 >> 32;
          }

          else
          {
            v85 = BYTE6(v89);
          }
        }

        if (v85 < v84)
        {
          __break(1u);
          goto LABEL_136;
        }

        goto LABEL_97;
      }

      v48 = (v5 << 16) & 0xFFFF000000FFFFFFLL | ((v6 & 0xFFFFFF) << 24);
      v49 = v2 | ((v3 | (v4 << 8) | v48) << 16);
      MEMORY[0x26D69BEF0](0);
      v50 = (v8 >> 54) & 3;
      if (((v8 >> 54) & 3) > 1)
      {
        v51 = 0;
        if (v50 == 2)
        {
          v51 = *(v49 + 24);
        }
      }

      else if (v50)
      {
        v51 = (v48 >> 16);
      }

      else
      {
        v51 = (((v8 & 0xFFFFFFFFFFFFFFuLL) >> 32) >> 8);
      }

      if (v51 < (v9 | (v10 << 8)))
      {
        goto LABEL_138;
      }

      v62 = sub_26C14889C();
      v64 = v63;
      sub_26C1488BC();
      sub_26C0BB9B0(v62, v64);
      v65 = v90 >> 62;
      if ((v90 >> 62) > 1)
      {
        v66 = v91;
        if (v65 == 2)
        {
          v67 = *(v95 + 24);
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v66 = v91;
        if (v65)
        {
          v67 = v95 >> 32;
        }

        else
        {
          v67 = BYTE6(v90);
        }
      }

      if (v67 >= v66)
      {
        v77 = sub_26C14889C();
        v79 = v78;
        sub_26C1488BC();
        sub_26C0BB9B0(v77, v79);
        sub_26C12A6A8(a1, v88);
        return;
      }

      goto LABEL_140;
    case 0xDu:
      v36 = v11;
      v37 = v7 | (v8 << 8);
      MEMORY[0x26D69BEF0](13);
      sub_26C1491DC();
      v38 = (v10 >> 54) & 3;
      if (((v10 >> 54) & 3) > 1)
      {
        if (v38 != 2)
        {
          goto LABEL_92;
        }

        v39 = *(v37 + 24);
      }

      else if (v38)
      {
        v39 = (v8 >> 24);
      }

      else
      {
        v39 = (((v10 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
      }

      goto LABEL_93;
    default:
      MEMORY[0x26D69BEF0](0);
      if ((~v8 & 0xF0000000000000) != 0)
      {
        v58 = (v5 << 32) | (v6 << 40);
        v59 = v2 | (v3 << 16) | (v4 << 24) | v58;
        v36 = v8 & 0xFFFFFFFFFFFFFFLL;
        MEMORY[0x26D69BEF0](0);
        v60 = (v8 & 0xFFFFFFFFFFFFFFuLL) >> 54;
        if (v60 > 1)
        {
          v61 = 0;
          if (v60 == 2)
          {
            v61 = *(v59 + 24);
          }
        }

        else if (v60)
        {
          v61 = v58 >> 32;
        }

        else
        {
          v61 = BYTE5(v36);
        }

        if (v61 >= (v9 | (v10 << 8)))
        {
          goto LABEL_97;
        }

        __break(1u);
LABEL_92:
        v39 = 0;
LABEL_93:
        if (v39 < v36)
        {
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
        }

        else
        {
LABEL_97:
          v68 = sub_26C14889C();
          v70 = v69;
          sub_26C1488BC();

          sub_26C0BB9B0(v68, v70);
        }
      }

      else
      {
        MEMORY[0x26D69BEF0](1);
      }

      return;
  }
}

uint64_t sub_26C1292DC()
{
  sub_26C1491AC();
  sub_26C128984(v1);
  return sub_26C14920C();
}

uint64_t sub_26C129320(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C128984(v2);
  return sub_26C14920C();
}

unint64_t sub_26C129364()
{
  result = qword_28047ADD8;
  if (!qword_28047ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADD8);
  }

  return result;
}

void sub_26C1293B8(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9) | ((*(a2 + 13) | (*(a2 + 15) << 16)) << 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 80);
  switch(v9 >> 4)
  {
    case 1u:
      sub_26C13F30C(v3);
      return;
    case 2u:
      sub_26C12B460(v3, v4 & 1);
      return;
    case 3u:
      sub_26C12C82C(v3, v4 | (v5 << 8), v6 & 1);
      return;
    case 4u:
      v14 = (v7 >> 52) & 3;
      if (!v14)
      {
        v21 = *a1;
        v22 = a1[1];
        v23 = v22 >> 62;
        v24 = *a2;
        if ((v22 >> 62) > 1)
        {
          if (v23 == 2)
          {
            v27 = *(v21 + 24);
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v25 = BYTE6(v22);
          v26 = v21 >> 32;
          if (v23)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }
        }

        LOWORD(v36) = 0;
        v39 = MEMORY[0x277D838B0];
        *&v40 = MEMORY[0x277CC9C18];
        *&v37 = &v36;
        *(&v37 + 1) = &v36 + 2;
        __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277D838B0]);
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v37);
        v35 = sub_26C12882C(0, v24);
        if ((v35 & 0x8000000000000000) == 0)
        {
          if (!(v35 >> 16))
          {
            sub_26C10064C(v35, v27);
            return;
          }

          goto LABEL_59;
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v14 == 1)
      {
        *&v37 = *a2;
        *(&v37 + 1) = v4 | (v5 << 8);
        v38 = (v7 << 8) & 0xCFFFFFFFFFFFFFFFLL | v6;
        v39 = v8;
        sub_26C140E28(&v37);
      }

      else
      {
LABEL_25:
        LOWORD(v36) = bswap32(v3) >> 16;
        v13 = MEMORY[0x277D838B0];
        v39 = MEMORY[0x277D838B0];
        *&v40 = MEMORY[0x277CC9C18];
        *&v37 = &v36;
        *(&v37 + 1) = &v36 + 2;
LABEL_26:
        __swift_project_boxed_opaque_existential_1(&v37, v13);
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      return;
    case 5u:
      if ((v3 & 0x100000000) == 0)
      {
        v36 = bswap32(v3);
        v39 = MEMORY[0x277D838B0];
        *&v40 = MEMORY[0x277CC9C18];
        *&v37 = &v36;
        *(&v37 + 1) = &v37;
        __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277D838B0]);
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      return;
    case 6u:
      sub_26C12C504(v3);
      return;
    case 7u:
      sub_26C12BD34(v3, v4 & 1);
      return;
    case 8u:
      *&v37 = *a2;
      BYTE8(v37) = v4;
      *(&v37 + 9) = v5;
      HIBYTE(v37) = BYTE6(v5);
      *(&v37 + 13) = WORD2(v5);
      LOBYTE(v38) = v6;
      *(&v38 + 1) = v7;
      HIBYTE(v38) = BYTE6(v7);
      *(&v38 + 5) = WORD2(v7);
      sub_26C125EC8(&v37);
      return;
    case 9u:
      sub_26C1416EC(v3);
      return;
    case 0xAu:
      if (v6)
      {
        goto LABEL_25;
      }

      sub_26C127150(v3, v4 | (v5 << 8));
      return;
    case 0xBu:
      if ((v3 & 0x10000) == 0)
      {
        LOBYTE(v36) = *a2;
        v10 = MEMORY[0x277D838B0];
        v11 = MEMORY[0x277CC9C18];
        v39 = MEMORY[0x277D838B0];
        *&v40 = MEMORY[0x277CC9C18];
        *&v37 = &v36;
        *(&v37 + 1) = &v36 + 1;
        v12 = BYTE1(v3);
        __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277D838B0]);
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v37);
        LOBYTE(v36) = v12;
        v39 = v10;
        *&v40 = v11;
        *&v37 = &v36;
        *(&v37 + 1) = &v36 + 1;
        v13 = v10;
        goto LABEL_26;
      }

      LOBYTE(v36) = *a2;
      v39 = MEMORY[0x277D838B0];
      *&v40 = MEMORY[0x277CC9C18];
      *&v37 = &v36;
      *(&v37 + 1) = &v36 + 1;
      __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277D838B0]);
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v37);
      return;
    case 0xCu:
      *&v37 = *a2;
      BYTE8(v37) = v4;
      *(&v37 + 9) = v5;
      HIBYTE(v37) = BYTE6(v5);
      *(&v37 + 13) = WORD2(v5);
      LOBYTE(v38) = v6;
      *(&v38 + 1) = v7;
      HIBYTE(v38) = BYTE6(v7);
      *(&v38 + 5) = WORD2(v7);
      v39 = v8;
      v15 = *(a2 + 48);
      v40 = *(a2 + 32);
      v41 = v15;
      v42 = *(a2 + 64);
      v43 = v9 & 0xF;
      sub_26C12D7B8(&v37);
      return;
    case 0xDu:
      v16 = *(a2 + 8) | (v5 << 8);
      v17 = (v7 >> 54) & 3;
      if (((v7 >> 54) & 3) > 1)
      {
        if (v17 == 2)
        {
          v20 = *((*(a2 + 8) | (v5 << 8)) + 0x10);
          v19 = *(v16 + 24);
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }
      }

      else
      {
        v18 = (v5 >> 24);
        if (v17)
        {
          v19 = v18;
        }

        else
        {
          v19 = (((v7 & 0xFFFFFFFFFFFFFFLL) >> 32) >> 8);
        }

        if (v17)
        {
          v20 = v16;
        }

        else
        {
          v20 = 0;
        }
      }

      if (v19 < v8 || v19 < v20)
      {
        __break(1u);
        goto LABEL_58;
      }

      v28 = sub_26C14889C();
      v30 = v29;
      sub_26C1488CC();
      v31 = v30;
      v32 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v32 != 2)
        {
          goto LABEL_42;
        }

        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        sub_26C0BB9B0(v28, v31);
        if (!__OFSUB__(v33, v34))
        {
          return;
        }

        __break(1u);
      }

      else if (!v32)
      {
LABEL_42:
        sub_26C0BB9B0(v28, v30);
        return;
      }

      sub_26C0BB9B0(v28, v31);
      if (!__OFSUB__(HIDWORD(v28), v28))
      {
        return;
      }

LABEL_60:
      __break(1u);
      return;
    default:
      *&v37 = *a2;
      BYTE8(v37) = v4;
      *(&v37 + 9) = v5;
      HIBYTE(v37) = BYTE6(v5);
      *(&v37 + 13) = WORD2(v5);
      LOBYTE(v38) = v6;
      *(&v38 + 1) = v7;
      HIBYTE(v38) = BYTE6(v7);
      *(&v38 + 5) = WORD2(v7);
      sub_26C13F480(&v37);
      return;
  }
}

void sub_26C1298E0(uint64_t *a1@<X0>, unsigned __int16 a2@<W1>, unsigned __int8 a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v116 = *MEMORY[0x277D85DE8];
  if (a2 > 0x29u)
  {
    if (a2 > 0x32u)
    {
      if (a2 <= 0x39u)
      {
        if (a2 == 51)
        {
          LOBYTE(v105) = a3;
          sub_26C1408A8(&v105, a4 & 1, &v106, &v110);
          if (!v6)
          {
            v27 = v111;
            *a6 = v110;
            *(a6 + 16) = v27;
            *(a6 + 80) = 64;
            return;
          }

          goto LABEL_43;
        }

        if (a2 == 57)
        {
          LOBYTE(v105) = a3;
          sub_26C12601C(&v105, &v106, &v110);
          if (!v6)
          {
            v12 = v111;
            *a6 = v110;
            *(a6 + 16) = v12;
            *(a6 + 80) = 0x80;
            return;
          }

LABEL_43:
          v35 = v107;
          v36 = v106;
LABEL_53:
          *a5 = v36;
          *(a5 + 16) = v35;
          return;
        }

        goto LABEL_54;
      }

      if (a2 != 58)
      {
        if (a2 == 35387)
        {
          v108 = &type metadata for SwiftTLSFeatureFlags;
          v109 = sub_26C0ECE20();
          v23 = sub_26C14897C();
          __swift_destroy_boxed_opaque_existential_1(&v106);
          if (v23)
          {
            LOBYTE(v105) = a3;
            sub_26C12E470(&v105, a4 & 1, &v106, &v110);
            if (!v6)
            {
LABEL_31:
              v24 = v115 & 1 | 0xC0;
              v25 = v111;
              *a6 = v110;
              *(a6 + 16) = v25;
              v26 = v113;
              *(a6 + 32) = v112;
              *(a6 + 48) = v26;
              *(a6 + 64) = v114;
              *(a6 + 80) = v24;
              return;
            }
          }

          else
          {
            LOBYTE(v105) = a3;
            sub_26C12E7B8(&v105, a4 & 1, &v106, &v110);
            if (!v6)
            {
              goto LABEL_31;
            }
          }

          v36 = v106;
          v35 = v107;
          goto LABEL_53;
        }

LABEL_54:
        v47 = *a1;
        v48 = a1[1];
        v49 = a1[2];
        v50 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          if (v50 == 2)
          {
            v52 = *(v47 + 24);
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          v51 = BYTE6(v48);
          v52 = v47 >> 32;
          if (!v50)
          {
            v52 = v51;
          }
        }

        if (!__OFSUB__(v52, v49))
        {
          sub_26C0DE248(v52 - v49, &v110);
          v55 = *(&v110 + 1);
          if (*(&v110 + 1) >> 60 == 15)
          {
            __break(1u);
          }

          else
          {
            v56 = v111;
            v57 = v110;
            *a6 = a2;
            *(a6 + 8) = v57;
            *(a6 + 16) = v55;
            *(a6 + 24) = v56;
            *(a6 + 80) = -48;
          }

          return;
        }

LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      LOBYTE(v105) = a3;
      sub_26C1266F4(&v105, &v110, &v106);
      if (!v6)
      {
        v28 = BYTE2(v106);
        *a6 = v106;
        *(a6 + 2) = v28;
        *(a6 + 80) = -80;
        return;
      }

LABEL_52:
      v35 = v111;
      v36 = v110;
      goto LABEL_53;
    }

    if (a2 != 42)
    {
      if (a2 == 43)
      {
        LOBYTE(v106) = a3;
        v33 = sub_26C12B630(&v106, &v110);
        if (!v6)
        {
          LOBYTE(v105) = v34 & 1;
          *a6 = v33;
          *(a6 + 8) = v34 & 1;
          *(a6 + 80) = 32;
          return;
        }
      }

      else
      {
        if (a2 != 45)
        {
          goto LABEL_54;
        }

        LOBYTE(v106) = a3;
        v18 = sub_26C141844(&v106, &v110);
        if (!v6)
        {
          *a6 = v18;
          *(a6 + 80) = -112;
          return;
        }
      }

      goto LABEL_52;
    }

    LODWORD(v29) = 0;
    v30 = 1;
    if (a3 != 8)
    {
      if (a3 == 4)
      {
        v29 = sub_26C13675C();
        if ((v29 & 0x100000000) != 0)
        {
          v110 = 0uLL;
          v32 = 2;
          LOBYTE(v111) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          v31 = 0;
          goto LABEL_85;
        }

        v30 = 0;
      }

      else if (a3 != 1)
      {
        v31 = a3 | 0x330000;
        v110 = v31;
        LOBYTE(v111) = 0;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v32 = 0;
LABEL_85:
        *a5 = v31;
        *(a5 + 8) = 0;
        *(a5 + 16) = v32;
        return;
      }
    }

    LOBYTE(v110) = v30;
    *a6 = v29;
    *(a6 + 4) = v30;
    *(a6 + 80) = 80;
    return;
  }

  if (a2 > 0xFu)
  {
    switch(a2)
    {
      case 0x10u:
        LOBYTE(v106) = a3;
        v37 = sub_26C12CA78(&v106, &v110);
        if (!v6)
        {
          LOBYTE(v105) = v39 & 1;
          *a6 = v37;
          *(a6 + 8) = v38;
          *(a6 + 16) = v39 & 1;
          *(a6 + 80) = 48;
          return;
        }

        break;
      case 0x14u:
        LOBYTE(v106) = a3;
        v45 = sub_26C12BED8(&v106, &v110);
        if (!v6)
        {
          LOBYTE(v105) = v46 & 1;
          *a6 = v45;
          *(a6 + 8) = v46 & 1;
          *(a6 + 80) = 112;
          return;
        }

        break;
      case 0x29u:
        LOBYTE(v106) = a3;
        v19 = sub_26C127318(&v106, a4 & 1, &v110);
        if (!v6)
        {
          LOBYTE(v105) = v21 & 1;
          *a6 = v19;
          *(a6 + 8) = v20;
          *(a6 + 16) = v21 & 1;
          *(a6 + 80) = -96;
          return;
        }

        break;
      default:
        goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (!a2)
  {
    LOBYTE(v105) = a3;
    sub_26C13F7CC(&v105, &v106, &v110);
    if (!v6)
    {
      v53 = v111;
      *a6 = v110;
      *(a6 + 16) = v53;
      *(a6 + 80) = 0;
      return;
    }

    goto LABEL_43;
  }

  if (a2 == 10)
  {
    if (a3 != 8 && a3 != 1)
    {
      v44 = a3 | 0xA0000;
      v110 = v44;
      LOBYTE(v111) = 0;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v17 = 0;
      goto LABEL_65;
    }

    v41 = *a1;
    v40 = a1[1];
    v42 = a1[2];
    sub_26C0BBAA4(*a1, v40);
    v43 = sub_26C1365D4();
    if ((v43 & 0x10000) != 0 || (sub_26C0DE248(v43, &v110), *(&v110 + 1) >> 60 == 15))
    {
      sub_26C0BB9B0(*a1, a1[1]);
      *a1 = v41;
      a1[1] = v40;
      a1[2] = v42;
      v110 = 0uLL;
      v17 = 2;
      LOBYTE(v111) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v44 = 0;
LABEL_65:
      *a5 = v44;
      goto LABEL_68;
    }

    v91 = v42;
    v93 = v41;
    v95 = v40;
    v97 = a6;
    v58 = *(&v110 + 1) >> 62;
    v59 = v110;
    v60 = v111;
    v61 = v110 >> 32;
    v99 = v110 >> 32;
    if ((*(&v110 + 1) >> 62) > 1)
    {
      if (v58 == 2)
      {
        v61 = *(v110 + 24);
      }

      else
      {
        v61 = 0;
      }
    }

    else if (!v58)
    {
      v61 = BYTE14(v110);
    }

    v101 = BYTE14(v110);
    v103 = *(&v110 + 1);
    v66 = __OFSUB__(v61, v111);
    v67 = v61 - v111;
    if (v66)
    {
      goto LABEL_148;
    }

    v68 = sub_26C0CE388(0, (v67 / 2) & ~((v67 + (v67 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
    v105 = 0;
    v69 = v60 + 2;
    if (__OFADD__(v60, 2))
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v70 = v68;
    while (1)
    {
      if (v58 > 1)
      {
        v71 = v103;
        if (v58 != 2)
        {
          if (v69 >= 1)
          {
            v76 = 0;
            goto LABEL_133;
          }

          goto LABEL_102;
        }

        v72 = *(v59 + 24);
      }

      else
      {
        v72 = v101;
        v71 = v103;
        if (v58)
        {
          v72 = v99;
        }
      }

      if (v72 < v69)
      {
        v76 = v101;
        if (v58)
        {
          v76 = v99;
          if (v58 == 2)
          {
            v76 = *(v59 + 24);
          }
        }

LABEL_133:
        if (!__OFSUB__(v76, v60))
        {
          if (v76 != v60)
          {
            v110 = xmmword_26C149860;
            v17 = 2;
            LOBYTE(v111) = 2;
            v89 = v71;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();

            sub_26C0BB9B0(v59, v89);
            sub_26C0BB9B0(*a1, a1[1]);
            *a1 = v93;
            a1[1] = v95;
            a1[2] = v91;
            v110 = xmmword_26C149860;
            LOBYTE(v111) = 2;
            swift_willThrowTypedImpl();
            v44 = 1;
            goto LABEL_65;
          }

          sub_26C0BB9B0(v59, v71);
          sub_26C0BB9B0(v93, v95);
          v87 = v97;
          *v97 = v70;
          v88 = 16;
LABEL_142:
          *(v87 + 80) = v88;
          return;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
      }

LABEL_102:
      *&v110 = v59;
      *(&v110 + 1) = v71;
      if (v69 < v60)
      {
        goto LABEL_145;
      }

      *&v106 = v60;
      *(&v106 + 1) = v69;
      sub_26C0BBAA4(v59, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
      sub_26C0BE710();
      sub_26C0BE764();
      sub_26C14878C();
      sub_26C0BB9B0(v110, *(&v110 + 1));
      v73 = v105;
      v75 = *(v70 + 2);
      v74 = *(v70 + 3);
      if (v75 >= v74 >> 1)
      {
        v70 = sub_26C0CE388((v74 > 1), v75 + 1, 1, v70);
      }

      *(v70 + 2) = v75 + 1;
      *&v70[2 * v75 + 32] = bswap32(v73) >> 16;
      v105 = 0;
      v60 = v69;
      v66 = __OFADD__(v69, 2);
      v69 += 2;
      if (v66)
      {
        goto LABEL_143;
      }
    }
  }

  if (a2 != 13)
  {
    goto LABEL_54;
  }

  if (a3 != 13 && a3 != 1)
  {
    v54 = a3 | 0xD0000;
    v110 = v54;
    LOBYTE(v111) = 0;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v17 = 0;
    goto LABEL_67;
  }

  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  sub_26C0BBAA4(*a1, v13);
  v16 = sub_26C1365D4();
  if ((v16 & 0x10000) != 0 || (sub_26C0DE248(v16, &v110), *(&v110 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*a1, a1[1]);
    *a1 = v14;
    a1[1] = v13;
    a1[2] = v15;
    v110 = 0uLL;
    v17 = 2;
    LOBYTE(v111) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    *a5 = 0;
    goto LABEL_68;
  }

  v92 = v15;
  v94 = v14;
  v96 = v13;
  v98 = a6;
  v62 = *(&v110 + 1) >> 62;
  v63 = v110;
  v64 = v111;
  v65 = v110 >> 32;
  v100 = v110 >> 32;
  if ((*(&v110 + 1) >> 62) > 1)
  {
    if (v62 == 2)
    {
      v65 = *(v110 + 24);
    }

    else
    {
      v65 = 0;
    }
  }

  else if (!v62)
  {
    v65 = BYTE14(v110);
  }

  v102 = BYTE14(v110);
  v104 = *(&v110 + 1);
  v66 = __OFSUB__(v65, v111);
  v77 = v65 - v111;
  if (v66)
  {
    goto LABEL_149;
  }

  v78 = sub_26C0CE358(0, (v77 / 2) & ~((v77 + (v77 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  v105 = 0;
  v79 = v64 + 2;
  if (__OFADD__(v64, 2))
  {
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v80 = v78;
  while (v62 > 1)
  {
    v81 = v104;
    if (v62 == 2)
    {
      v82 = *(v63 + 24);
      goto LABEL_120;
    }

    if (v79 >= 1)
    {
      v86 = 0;
      goto LABEL_138;
    }

LABEL_123:
    *&v110 = v63;
    *(&v110 + 1) = v81;
    if (v79 < v64)
    {
      goto LABEL_146;
    }

    *&v106 = v64;
    *(&v106 + 1) = v79;
    sub_26C0BBAA4(v63, v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v110, *(&v110 + 1));
    v83 = v105;
    v85 = *(v80 + 2);
    v84 = *(v80 + 3);
    if (v85 >= v84 >> 1)
    {
      v80 = sub_26C0CE358((v84 > 1), v85 + 1, 1, v80);
    }

    *(v80 + 2) = v85 + 1;
    *&v80[2 * v85 + 32] = bswap32(v83) >> 16;
    v105 = 0;
    v64 = v79;
    v66 = __OFADD__(v79, 2);
    v79 += 2;
    if (v66)
    {
      goto LABEL_144;
    }
  }

  v82 = v102;
  v81 = v104;
  if (v62)
  {
    v82 = v100;
  }

LABEL_120:
  if (v82 >= v79)
  {
    goto LABEL_123;
  }

  v86 = v102;
  if (v62)
  {
    v86 = v100;
    if (v62 == 2)
    {
      v86 = *(v63 + 24);
    }
  }

LABEL_138:
  if (__OFSUB__(v86, v64))
  {
    goto LABEL_151;
  }

  if (v86 == v64)
  {
    sub_26C0BB9B0(v63, v81);
    sub_26C0BB9B0(v94, v96);
    v87 = v98;
    *v98 = v80;
    v88 = 96;
    goto LABEL_142;
  }

  v110 = xmmword_26C149860;
  v17 = 2;
  LOBYTE(v111) = 2;
  v90 = v81;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();

  sub_26C0BB9B0(v63, v90);
  sub_26C0BB9B0(*a1, a1[1]);
  *a1 = v94;
  a1[1] = v96;
  a1[2] = v92;
  v110 = xmmword_26C149860;
  LOBYTE(v111) = 2;
  swift_willThrowTypedImpl();
  v54 = 1;
LABEL_67:
  *a5 = v54;
LABEL_68:
  *(a5 + 8) = 0;
  *(a5 + 16) = v17;
}

void sub_26C12A494(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v4 = (a2 + 48);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v9 = *(v5 + 24);
LABEL_10:
        sub_26C0BBAA4(*(v4 - 2), *(v4 - 1));
        if (v9 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 3;
      v10 = sub_26C14889C();
      v12 = v11;
      sub_26C1488BC();
      sub_26C0BB9B0(v10, v12);
      sub_26C0BB9B0(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v8)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v9 = v5 >> 32;
    goto LABEL_10;
  }
}

void sub_26C12A598(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v4 = a2 + 56;
    while (1)
    {
      v5 = *(v4 - 24);
      v6 = *(v4 - 16);
      v7 = *(v4 - 8);
      v8 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v9 = *(v5 + 24);
LABEL_10:
        sub_26C0BBAA4(*(v4 - 24), *(v4 - 16));
        if (v9 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 32;
      v10 = sub_26C14889C();
      v12 = v11;
      sub_26C1488BC();
      sub_26C0BB9B0(v10, v12);
      sub_26C1491EC();
      sub_26C0BB9B0(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v8)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v9 = v5 >> 32;
    goto LABEL_10;
  }
}

void sub_26C12A6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_26C1491DC();
      v8 = v6 >> 62;
      if ((v6 >> 62) <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v9 = *(v5 + 24);
LABEL_10:
        sub_26C0BBAA4(v5, v6);
        if (v9 < v7)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v7 > 0)
      {
LABEL_15:
        __break(1u);
        return;
      }

LABEL_13:
      v4 += 4;
      v10 = sub_26C14889C();
      v12 = v11;
      sub_26C1488BC();
      sub_26C0BB9B0(v10, v12);
      sub_26C0BB9B0(v5, v6);
      if (!--v3)
      {
        return;
      }
    }

    if (!v8)
    {
      if (BYTE6(v6) < v7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v9 = v5 >> 32;
    goto LABEL_10;
  }
}

uint64_t sub_26C12A7B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x26D69BEF0](v4);
  if (v4)
  {
    v6 = 0;
    v27 = a2 + 32;
    while (1)
    {
      v7 = (v27 + 32 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        v11 = v10 == 2 ? *(v8 + 24) : 0;
      }

      else
      {
        v11 = v10 ? v8 >> 32 : BYTE6(v9);
      }

      if (v11 < v7[2])
      {
        break;
      }

      v12 = v7[3];
      sub_26C0BBAA4(*v7, v7[1]);

      v13 = sub_26C14889C();
      v15 = v14;
      sub_26C1488BC();
      sub_26C0BB9B0(v13, v15);
      MEMORY[0x26D69BEF0](*(v12 + 16));
      v16 = *(v12 + 16);
      if (v16)
      {
        v17 = v16 - 1;
        for (i = 32; ; i += 88)
        {
          v19 = *(v12 + i + 16);
          v29[0] = *(v12 + i);
          v29[1] = v19;
          v20 = *(v12 + i + 32);
          v21 = *(v12 + i + 48);
          v22 = *(v12 + i + 64);
          v30 = *(v12 + i + 80);
          v29[3] = v21;
          v29[4] = v22;
          v29[2] = v20;
          v23 = *(v12 + i + 16);
          v33 = *(v12 + i);
          v34 = v23;
          v24 = *(v12 + i + 32);
          v25 = *(v12 + i + 48);
          v26 = *(v12 + i + 64);
          v38 = *(v12 + i + 80);
          v36 = v25;
          v37 = v26;
          v35 = v24;
          sub_26C0BE40C(v29, v28);
          sub_26C128984(a1);
          v31[2] = v35;
          v31[3] = v36;
          v31[4] = v37;
          v32 = v38;
          v31[0] = v33;
          v31[1] = v34;
          sub_26C0BE468(v31);
          if (!v17)
          {
            break;
          }

          --v17;
        }
      }

      sub_26C0BB9B0(v8, v9);

      if (++v6 == v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C12A998(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v61[16] = a1[2];
  *&v61[32] = v2;
  v4 = a1[3];
  *&v61[48] = a1[4];
  v5 = a1[1];
  v60 = *a1;
  *v61 = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v64 = *(a2 + 32);
  v65 = v6;
  v8 = *(a2 + 48);
  v66 = *(a2 + 64);
  v9 = *(a2 + 16);
  *v63 = *a2;
  *&v63[16] = v9;
  v68[2] = *&v61[16];
  v68[3] = v4;
  v68[4] = a1[4];
  v68[0] = v60;
  v68[1] = v3;
  v74 = *(a2 + 64);
  v73 = v8;
  v62 = *(a1 + 80);
  v67 = *(a2 + 80);
  v69 = *(a1 + 80);
  v75 = *(a2 + 80);
  v72 = v64;
  v70 = *v63;
  v71 = v7;
  v10 = v60;
  v11 = *(&v60 + 5) | (BYTE7(v60) << 16);
  v12 = BYTE8(v60);
  v13 = *(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32);
  switch(v62 >> 4)
  {
    case 1:
      if ((v67 & 0xF0) != 0x10)
      {
        goto LABEL_60;
      }

      v23 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      v24 = *(v23 + 0x10);
      if (v24 != *(*v63 + 16))
      {
        goto LABEL_103;
      }

      if (!v24 || v23 == *v63)
      {
        goto LABEL_98;
      }

      v25 = (v23 + 32);
      v26 = (*v63 + 32);
      do
      {
        if (*v25 != *v26)
        {
          goto LABEL_103;
        }

        ++v25;
        ++v26;
        --v24;
      }

      while (v24);
      goto LABEL_98;
    case 2:
      if ((v67 & 0xF0) != 0x20)
      {
        goto LABEL_35;
      }

      LOWORD(v19) = *v63;
      if (BYTE8(v60))
      {
        if ((v63[8] & 1) == 0)
        {
          goto LABEL_103;
        }

        goto LABEL_64;
      }

      if ((v63[8] & 1) == 0)
      {
        v36 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
        v37 = *(v36 + 0x10);
        if (v37 == *(*v63 + 16))
        {
          if (!v37 || v36 == *v63)
          {
            goto LABEL_98;
          }

          v38 = (v36 + 33);
          v39 = (*v63 + 33);
          while (*(v38 - 1) == *(v39 - 1))
          {
            v40 = *v38;
            v38 += 2;
            if (v40 != *v39)
            {
              break;
            }

            v39 += 2;
            if (!--v37)
            {
              goto LABEL_98;
            }
          }
        }
      }

      goto LABEL_103;
    case 3:
      if ((v67 & 0xF0) != 0x30)
      {
        sub_26C0FF14C(v60, *(&v60 + 1), v5 & 1);
        goto LABEL_104;
      }

      v20 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      if ((v5 & 1) == 0)
      {
        if (v63[16])
        {
          goto LABEL_103;
        }

        v21 = sub_26C0BC79C(v20, *v63);
        goto LABEL_90;
      }

      if ((v63[16] & 1) == 0)
      {
        goto LABEL_103;
      }

      if (__PAIR128__(BYTE8(v60) | (v13 << 8), v20) != *v63)
      {
        v21 = sub_26C14912C();
LABEL_90:
        v41 = v21;
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        goto LABEL_110;
      }

LABEL_98:
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      sub_26C12B3E4(v68);
      v27 = 1;
      return v27 & 1;
    case 4:
      if ((v67 & 0xF0) == 0x40)
      {
        LODWORD(v51) = v60;
        BYTE4(v51) = BYTE4(v60);
        *(&v51 + 5) = *(&v60 + 5);
        HIBYTE(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
        *(&v51 + 13) = *(&v60 + 13);
        LOBYTE(v52) = v5;
        *(&v52 + 1) = v5 >> 8;
        BYTE7(v52) = (*(&v52 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *(&v52 + 5) = DWORD1(v5) >> 8;
        *(&v52 + 1) = *&v61[8];
        v49 = *v63;
        v50 = *&v63[16];
        sub_26C0BE40C(v63, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        v14 = sub_26C141408(&v51, &v49);
        goto LABEL_51;
      }

      sub_26C0FF158(v60, *(&v60 + 1), *v61);
      goto LABEL_104;
    case 5:
      if ((v67 & 0xF0) != 0x50)
      {
        goto LABEL_104;
      }

      sub_26C12B3E4(v68);
      if (BYTE4(v60))
      {
        if (v63[4])
        {
          goto LABEL_111;
        }
      }

      else if ((v63[4] & 1) == 0 && (v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24)) == *v63)
      {
        goto LABEL_111;
      }

      goto LABEL_106;
    case 6:
      if ((v67 & 0xF0) != 0x60)
      {
        goto LABEL_60;
      }

      v28 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      v29 = *(v28 + 0x10);
      if (v29 != *(*v63 + 16))
      {
        goto LABEL_103;
      }

      if (!v29 || v28 == *v63)
      {
        goto LABEL_98;
      }

      v30 = (v28 + 32);
      v31 = (*v63 + 32);
      while (*v30 == *v31)
      {
        ++v30;
        ++v31;
        if (!--v29)
        {
          goto LABEL_98;
        }
      }

LABEL_103:
      sub_26C0BE40C(&v60, &v57);
LABEL_104:
      sub_26C0BE40C(v63, &v57);
LABEL_105:
      sub_26C12B3E4(v68);
      goto LABEL_106;
    case 7:
      if ((v67 & 0xF0) != 0x70)
      {
LABEL_35:
        sub_26C0B8B24(v60, BYTE8(v60) & 1);
        goto LABEL_104;
      }

      v22 = v63[0];
      if ((BYTE8(v60) & 1) == 0)
      {
        if (v63[8])
        {
          goto LABEL_103;
        }

        v42 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
        v43 = *(v42 + 0x10);
        if (v43 != *(*v63 + 16))
        {
          goto LABEL_103;
        }

        if (v43 && v42 != *v63)
        {
          v44 = (v42 + 32);
          v45 = (*v63 + 32);
          do
          {
            if (*v44 != *v45)
            {
              goto LABEL_103;
            }

            ++v44;
            ++v45;
            --v43;
          }

          while (v43);
        }

        goto LABEL_98;
      }

      if ((v63[8] & 1) == 0)
      {
        goto LABEL_103;
      }

      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      sub_26C12B3E4(v68);
      if (v10 == v22)
      {
        goto LABEL_111;
      }

      goto LABEL_106;
    case 8:
      if ((v67 & 0xF0) == 0x80)
      {
        LODWORD(v51) = v60;
        BYTE4(v51) = BYTE4(v60);
        *(&v51 + 5) = *(&v60 + 5);
        HIBYTE(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
        *(&v51 + 13) = *(&v60 + 13);
        LOBYTE(v52) = v5;
        *(&v52 + 1) = v5 >> 8;
        BYTE7(v52) = (*(&v52 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *(&v52 + 5) = DWORD1(v5) >> 8;
        v49 = *v63;
        *&v50 = *&v63[16];
        sub_26C0BE40C(v63, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        v27 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v51, &v49);
        sub_26C12B3E4(v68);
        sub_26C0BB9B0(v49, *(&v49 + 1));
        sub_26C0BB9B0(v51, *(&v51 + 1));
        return v27 & 1;
      }

      v35 = *(&v60 + 1);
      v34 = v60;
      goto LABEL_75;
    case 9:
      if ((v67 & 0xF0) != 0x90)
      {
LABEL_60:

        goto LABEL_104;
      }

      v15 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
      v16 = *(v15 + 0x10);
      if (v16 != *(*v63 + 16))
      {
        goto LABEL_103;
      }

      if (v16 && v15 != *v63)
      {
        v17 = (v15 + 32);
        v18 = (*v63 + 32);
        do
        {
          if (*v17 != *v18)
          {
            goto LABEL_103;
          }

          ++v17;
          ++v18;
          --v16;
        }

        while (v16);
      }

      goto LABEL_98;
    case 0xA:
      if ((v67 & 0xF0) != 0xA0)
      {
        sub_26C10B28C(v60, *(&v60 + 1), v5 & 1);
        goto LABEL_104;
      }

      v19 = *v63;
      if (v5)
      {
        if ((v63[16] & 1) == 0)
        {
          goto LABEL_103;
        }

LABEL_64:
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        sub_26C12B3E4(v68);
        if (v10 != v19)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v63[16])
        {
          goto LABEL_103;
        }

        v47 = v60 | (BYTE2(v60) << 16) | (BYTE3(v60) << 24) | (BYTE4(v60) << 32) | (v11 << 40);
        v48 = *&v63[8];
        sub_26C0BE40C(&v60, &v57);
        sub_26C0BE40C(v63, &v57);
        if ((sub_26C0BC888(v47, v19) & 1) == 0)
        {
          goto LABEL_105;
        }

        v41 = sub_26C0BCDF8(v12 | (v13 << 8), v48);
LABEL_110:
        sub_26C12B3E4(v68);
        if ((v41 & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_111;
    case 0xB:
      if ((v67 & 0xF0) != 0xB0)
      {
        goto LABEL_104;
      }

      sub_26C12B3E4(v68);
      if ((BYTE2(v60) & 1) == 0)
      {
        if ((v63[2] & 1) != 0 || v60 != *v63)
        {
          goto LABEL_106;
        }

LABEL_111:
        v27 = 1;
        return v27 & 1;
      }

      if ((v63[2] & 1) != 0 && v60 == v63[0])
      {
        goto LABEL_111;
      }

LABEL_106:
      v27 = 0;
      return v27 & 1;
    case 0xC:
      if ((v67 & 0xF0) == 0xC0)
      {
        LODWORD(v57) = v60;
        BYTE4(v57) = BYTE4(v60);
        *(&v57 + 5) = *(&v60 + 5);
        HIBYTE(v57) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
        *(&v57 + 13) = *(&v60 + 13);
        v58[0] = v5;
        *&v58[1] = v5 >> 8;
        v58[7] = (*&v58[1] | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
        *&v58[5] = DWORD1(v5) >> 8;
        *&v58[8] = *&v61[8];
        *&v58[24] = *&v61[24];
        *&v58[40] = *&v61[40];
        *&v58[56] = *&v61[56];
        v59 = v62 & 0xF;
        v51 = *v63;
        v52 = *&v63[16];
        v53 = v64;
        v54 = v65;
        v55 = v66;
        v56 = v67 & 0xF;
        sub_26C0BE40C(v63, &v49);
        sub_26C0BE40C(&v60, &v49);
        sub_26C0BE40C(&v60, &v49);
        sub_26C0BE40C(v63, &v49);
        v14 = sub_26C131574(&v57, &v51);
        goto LABEL_51;
      }

      v32 = a1[3];
      *&v58[16] = a1[2];
      *&v58[32] = v32;
      *&v58[48] = a1[4];
      v33 = a1[1];
      v57 = *a1;
      *v58 = v33;
      v59 = a1[5] & 0xF;
      sub_26C0FF0B0(&v57, &v51);
      goto LABEL_104;
    case 0xD:
      if ((v67 & 0xF0) != 0xD0)
      {
        v34 = *(&v60 + 1);
        v35 = *v61;
LABEL_75:
        sub_26C0BBAA4(v34, v35);
        goto LABEL_104;
      }

      if (v60 != *v63)
      {
        goto LABEL_103;
      }

      LOBYTE(v51) = BYTE8(v60);
      *(&v51 + 1) = *(&v60 + 9);
      BYTE7(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
      *(&v51 + 5) = *(&v60 + 13);
      BYTE8(v51) = v5;
      *(&v51 + 9) = v5 >> 8;
      HIBYTE(v51) = (*(&v51 + 9) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
      *(&v51 + 13) = DWORD1(v5) >> 8;
      *&v52 = *&v61[8];
      v49 = *&v63[8];
      *&v50 = *&v63[24];
      sub_26C0BE40C(v63, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      v14 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v51, &v49);
      goto LABEL_51;
    default:
      if (v67 > 0xFu)
      {
        sub_26C10B340(v60, *(&v60 + 1));
        goto LABEL_104;
      }

      LODWORD(v51) = v60;
      BYTE4(v51) = BYTE4(v60);
      *(&v51 + 5) = *(&v60 + 5);
      HIBYTE(v51) = (*(&v60 + 9) | ((*(&v60 + 13) | (HIBYTE(v60) << 16)) << 32)) >> 48;
      *(&v51 + 13) = *(&v60 + 13);
      LOBYTE(v52) = v5;
      *(&v52 + 1) = v5 >> 8;
      BYTE7(v52) = (*(&v52 + 1) | (((DWORD1(v5) >> 8) | (BYTE7(v5) << 16)) << 32)) >> 48;
      *(&v52 + 5) = DWORD1(v5) >> 8;
      v49 = *v63;
      *&v50 = *&v63[16];
      sub_26C0BE40C(v63, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(&v60, &v57);
      sub_26C0BE40C(v63, &v57);
      v14 = sub_26C140410(&v51, &v49);
LABEL_51:
      v27 = v14;
      sub_26C12B3E4(v68);
      sub_26C0BE468(v63);
      sub_26C0BE468(&v60);
      return v27 & 1;
  }
}

uint64_t sub_26C12B3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ADE0, &qword_26C14E958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C12B460(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v17 = a1;
    v20 = MEMORY[0x277D838B0];
    v21 = MEMORY[0x277CC9C18];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    return 2;
  }

  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
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
    v8 = BYTE6(v6);
    v9 = v5 >> 32;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  LOBYTE(v17) = 0;
  v11 = MEMORY[0x277D838B0];
  v12 = MEMORY[0x277CC9C18];
  v20 = MEMORY[0x277D838B0];
  v21 = MEMORY[0x277CC9C18];
  v18 = &v17;
  v19 = (&v17 + 1);
  __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v13 = *(a1 + 16);
  if (!v13)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = a1 + 33;
  do
  {
    v17 = *(v15 - 1);
    v20 = v11;
    v21 = v12;
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_1(&v18, v11);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    if (v14 == 0x8000000000000002)
    {
      __break(1u);
LABEL_21:
      __break(1u);
    }

    v15 += 2;
    v14 -= 2;
    --v13;
  }

  while (v13);
  v16 = -v14;
  if (v14 > 0)
  {
    goto LABEL_21;
  }

  if (v16 > 0xFF)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  sub_26C100778(v16, v10);
  return v16 + 1;
}

uint64_t sub_26C12B630(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  if (v5 != 1)
  {
    if (v5 != 2)
    {
      v12 = v5 | 0x2B0000;
      *a2 = v12;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v24 = v12;
      LOBYTE(v25) = 0;
      goto LABEL_10;
    }

    v6 = sub_26C1365D4();
    if ((v6 & 0x10000) == 0)
    {
      return bswap32(v6) >> 16;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v24 = 0uLL;
    LOBYTE(v25) = 2;
LABEL_10:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v9 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  sub_26C0BBAA4(*v2, v8);
  v11 = sub_26C1368E8();
  if ((v11 & 0x100) != 0 || (sub_26C0DE248(v11, &v22), *(&v22 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v9;
    v2[1] = v8;
    v2[2] = v10;
    goto LABEL_8;
  }

  v24 = v22;
  v25 = v23;
  sub_26C12BA38(&v24, &v26);
  if (v3)
  {
    v13 = *(&v22 + 1);
    v14 = v22;
    v15 = v23;
    v17 = *(&v24 + 1);
    v16 = v24;
LABEL_24:
    sub_26C0BB9B0(v16, v17);
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v9;
    v2[1] = v8;
    v2[2] = v10;
    *&v24 = v14;
    *(&v24 + 1) = v13;
    LOBYTE(v25) = v15;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    return result;
  }

  result = v24;
  v18 = *(&v24 + 1) >> 62;
  if ((*(&v24 + 1) >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v24 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v24 >> 32;
  }

  else
  {
    v19 = BYTE14(v24);
  }

  if (!__OFSUB__(v19, v25))
  {
    if (v19 == v25)
    {
      sub_26C0BB9B0(v24, *(&v24 + 1));
      sub_26C0BB9B0(v9, v8);
      return v26;
    }

    v22 = xmmword_26C149860;
    v15 = 2;
    LOBYTE(v23) = 2;
    v21 = *(&v24 + 1);
    v20 = v24;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    v17 = v21;
    v16 = v20;
    v13 = 0;
    v14 = 1;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C12B86C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491CC();
    return sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v5 = *(a2 + 16);
    result = MEMORY[0x26D69BEF0](v5);
    if (v5)
    {
      v6 = a2 + 33;
      do
      {
        v6 += 2;
        sub_26C1491CC();
        result = sub_26C1491CC();
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_26C12B8F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26C1491AC();
  sub_26C12B86C(v4, v1, v2);
  return sub_26C14920C();
}

uint64_t sub_26C12B950(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26C1491AC();
  sub_26C12B86C(v5, v2, v3);
  return sub_26C14920C();
}

uint64_t sub_26C12B99C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (v6 & 1) != 0 && v4 == v5;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_26C0BC724(v4, v5);
  }
}

unint64_t sub_26C12B9E4()
{
  result = qword_28047ADE8;
  if (!qword_28047ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADE8);
  }

  return result;
}

uint64_t sub_26C12BA38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v3);
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

  v10 = __OFSUB__(v9, v5);
  v11 = v9 - v5;
  if (v10)
  {
    goto LABEL_29;
  }

  result = sub_26C0CE248(0, (v11 / 2) & ~((v11 + (v11 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  v13 = a1[1];
  v24 = *a1;
  v14 = v5 + 2;
  if (__OFADD__(v5, 2))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v15 = result;
  v16 = v13 >> 62;
  v17 = BYTE6(v13);
  while (1)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v24 + 24) < v14)
        {
          break;
        }
      }

      else if (v14 > 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v18 = v17;
    if (v16)
    {
      v18 = v24 >> 32;
    }

    if (v18 < v14)
    {
      break;
    }

LABEL_20:
    v25 = *a1;
    v26 = a1[1];
    if (v14 < v5)
    {
      goto LABEL_28;
    }

    sub_26C0BBAA4(*a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    result = sub_26C0BB9B0(v25, v26);
    a1[2] = v14;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_26C0CE248((v19 > 1), v20 + 1, 1, v15);
      v15 = result;
    }

    v21 = bswap32(0) >> 16;
    *(v15 + 16) = v20 + 1;
    v22 = v15 + 2 * v20;
    *(v22 + 32) = BYTE1(v21);
    *(v22 + 33) = v21;
    v5 = v14;
    v10 = __OFADD__(v14, 2);
    v14 += 2;
    if (v10)
    {
      goto LABEL_27;
    }
  }

  *a2 = v15;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26C12BC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C12BCD4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26C12BD34(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v17 = a1;
    v20 = MEMORY[0x277D838B0];
    v21 = MEMORY[0x277CC9C18];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    return 1;
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
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
      v8 = BYTE6(v6);
      v9 = v5 >> 32;
      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }
    }

    v17 = 0;
    v11 = MEMORY[0x277D838B0];
    v12 = MEMORY[0x277CC9C18];
    v20 = MEMORY[0x277D838B0];
    v21 = MEMORY[0x277CC9C18];
    v18 = &v17;
    v19 = &v18;
    __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x277D838B0]);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = a1 + 32;
      do
      {
        v16 = *(v15 + v14++);
        v17 = v16;
        v20 = v11;
        v21 = v12;
        v18 = &v17;
        v19 = &v18;
        __swift_project_boxed_opaque_existential_1(&v18, v11);
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v18);
      }

      while (v13 != v14);
      if (v13 > 0xFF)
      {
        __break(1u);
      }
    }

    sub_26C100778(v13, v10);
    return v13 + 1;
  }
}

char *sub_26C12BED8(unsigned __int8 *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (v5 != 1)
  {
    if (v5 != 8)
    {
      v12 = v5 | 0x140000;
      *a2 = v12;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v31 = v12;
      LOBYTE(v32) = 0;
      goto LABEL_10;
    }

    v6 = sub_26C1368E8();
    if ((v6 & 0x100) == 0)
    {
      return v6;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v31 = 0uLL;
    LOBYTE(v32) = 2;
LABEL_10:
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v3;
  }

  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  sub_26C0BBAA4(*v2, v7);
  v10 = sub_26C1368E8();
  if ((v10 & 0x100) != 0 || (sub_26C0DE248(v10, &v31), v11 = *(&v31 + 1), *(&v31 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
    goto LABEL_8;
  }

  v26 = v9;
  v27 = v2;
  v14 = *(&v31 + 1) >> 62;
  v15 = v31;
  v16 = v32;
  v17 = BYTE14(v31);
  v30 = BYTE14(v31);
  if ((*(&v31 + 1) >> 62) > 1)
  {
    if (v14 == 2)
    {
      v17 = *(v31 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v14)
  {
    v17 = v31 >> 32;
  }

  v29 = v31 >> 32;
  v28 = a2;
  v18 = __OFSUB__(v17, v32);
  v19 = v17 - v32;
  if (v18)
  {
    goto LABEL_47;
  }

  v20 = sub_26C0CE344(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  v21 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3 = v20;
  while (v14 > 1)
  {
    if (v14 == 2)
    {
      if (*(v15 + 24) < v21)
      {
        goto LABEL_37;
      }
    }

    else if (v21 >= 1)
    {
      v25 = 0;
      goto LABEL_41;
    }

LABEL_31:
    *&v31 = v15;
    *(&v31 + 1) = v11;
    if (v21 < v16)
    {
      goto LABEL_46;
    }

    sub_26C0BBAA4(v15, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v31, *(&v31 + 1));
    v24 = *(v3 + 2);
    v23 = *(v3 + 3);
    if (v24 >= v23 >> 1)
    {
      v3 = sub_26C0CE344((v23 > 1), v24 + 1, 1, v3);
    }

    *(v3 + 2) = v24 + 1;
    v3[v24 + 32] = 0;
    v16 = v21;
    v18 = __OFADD__(v21++, 1);
    if (v18)
    {
      goto LABEL_45;
    }
  }

  v22 = v30;
  if (v14)
  {
    v22 = v29;
  }

  if (v22 >= v21)
  {
    goto LABEL_31;
  }

LABEL_37:
  v25 = v30;
  if (v14)
  {
    v25 = v29;
    if (v14 == 2)
    {
      v25 = *(v15 + 24);
    }
  }

LABEL_41:
  if (__OFSUB__(v25, v16))
  {
LABEL_48:
    __break(1u);
  }

  if (v25 == v16)
  {
    sub_26C0BB9B0(v15, v11);
    sub_26C0BB9B0(v8, v7);
  }

  else
  {
    v31 = xmmword_26C149860;
    LOBYTE(v32) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    sub_26C0BB9B0(v15, v11);
    sub_26C0BB9B0(*v27, v27[1]);
    *v27 = v8;
    v27[1] = v7;
    v27[2] = v26;
    v31 = xmmword_26C149860;
    LOBYTE(v32) = 2;
    swift_willThrowTypedImpl();
    *v28 = xmmword_26C149860;
    *(v28 + 16) = 2;
  }

  return v3;
}

uint64_t sub_26C12C294(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x26D69BEF0](1);
    return sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v5 = *(a2 + 16);
    result = MEMORY[0x26D69BEF0](v5);
    if (v5)
    {
      v6 = a2 + 32;
      do
      {
        ++v6;
        result = sub_26C1491CC();
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_26C12C304(uint64_t a1, char a2)
{
  sub_26C1491AC();
  if (a2)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v4 = *(a1 + 16);
    MEMORY[0x26D69BEF0](v4);
    if (v4)
    {
      v5 = a1 + 32;
      do
      {
        ++v5;
        sub_26C1491CC();
        --v4;
      }

      while (v4);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12C3BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26C1491AC();
  if (v3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    MEMORY[0x26D69BEF0](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v2 + 32;
      do
      {
        ++v5;
        sub_26C1491CC();
        --v4;
      }

      while (v4);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12C458(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (a1[1])
  {
    return (v6 & 1) != 0 && v4 == v5;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_26C0BE8D0();
  }
}

unint64_t sub_26C12C4A0()
{
  result = qword_28047ADF0;
  if (!qword_28047ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADF0);
  }

  return result;
}

unint64_t sub_26C12C504(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v15 = 0;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  v13 = a1 + 32;
  do
  {
    v15 = bswap32(*(v13 + v12)) >> 16;
    v18 = v9;
    v19 = v10;
    v16 = &v15;
    v17 = &v16;
    __swift_project_boxed_opaque_existential_1(&v16, v9);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v16);
    if (v12 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (v12 >> 16)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  sub_26C10064C(v12, v8);
  return v12 + 2;
}

uint64_t sub_26C12C680(uint64_t a1)
{
  sub_26C1491AC();
  v2 = *(a1 + 16);
  MEMORY[0x26D69BEF0](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 2;
      sub_26C1491DC();
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C12C6F8()
{
  v1 = *v0;
  result = MEMORY[0x26D69BEF0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 2;
      result = sub_26C1491DC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26C12C74C(uint64_t a1)
{
  v2 = *v1;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      v4 += 2;
      sub_26C1491DC();
      --v3;
    }

    while (v3);
  }

  return sub_26C14920C();
}

unint64_t sub_26C12C7C8()
{
  result = qword_28047ADF8;
  if (!qword_28047ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADF8);
  }

  return result;
}

unint64_t sub_26C12C82C(uint64_t a1, unint64_t a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = xmmword_26C14A1B0;
  v25 = 0;
  v4 = MEMORY[0x277D838B0];
  if (a3)
  {
    sub_26C0D7104(a1, a2);
    goto LABEL_20;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      if ((*v6 & 0x1000000000000000) != 0)
      {
        if (sub_26C148F6C() <= 255)
        {
          v9 = sub_26C148F6C();
          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
            break;
          }

          goto LABEL_12;
        }
      }

      else if ((v7 & 0x2000000000000000) != 0 || (v8 & 0xFFFFFFFFFF00) == 0)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v7) & 0xF;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFLL;
LABEL_12:
          if (v9 > 0xFF)
          {
            __break(1u);
            goto LABEL_30;
          }
        }

        LOBYTE(v19) = v9;
        v22 = v4;
        v23 = MEMORY[0x277CC9C18];
        v20 = &v19;
        v21 = (&v19 + 1);
        __swift_project_boxed_opaque_existential_1(&v20, v4);

        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v20);
        sub_26C0D1D1C(v8, v7);
        if ((v7 & 0x1000000000000000) != 0)
        {
          sub_26C148F6C();
        }
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

LABEL_20:
  v10 = *v3;
  v11 = v3[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v13 = BYTE6(v11);
    v14 = v10 >> 32;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }
  }

  v19 = 0;
  v22 = v4;
  v23 = MEMORY[0x277CC9C18];
  v20 = &v19;
  v21 = &v20;
  __swift_project_boxed_opaque_existential_1(&v20, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  sub_26C12D41C(v3, &v24);
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v17 = v16;
  if (v16 >> 16)
  {
    goto LABEL_31;
  }

  sub_26C10064C(v16, v15);
  sub_26C0BB9B0(v24, *(&v24 + 1));
  return v17 + 2;
}

char *sub_26C12CA78(unsigned __int8 *a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (v5 != 8 && v5 != 1)
  {
    *a2 = v5 | 0x100000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&v59 = v5 | 0x100000;
    *(&v59 + 1) = 0;
    LOBYTE(v60) = 0;
LABEL_10:
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  result = sub_26C0E0978(v2, &v55, &v57);
  if (v3)
  {
    v8 = v56;
    *a2 = v55;
    *(a2 + 16) = v8;
    return result;
  }

  if (*(&v57 + 1) >> 60 == 15)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v59 = 0uLL;
    LOBYTE(v60) = 2;
    goto LABEL_10;
  }

  v49 = a2;
  v9 = v58;
  v59 = v57;
  v60 = v58;
  if (v5 == 1)
  {
    v17 = *(&v57 + 1) >> 62;
    v51 = v57;
    v50 = v57 >> 32;
    v18 = MEMORY[0x277D84F90];
    v53 = BYTE14(v57);
    v54 = *(&v57 + 1) >> 62;
    if ((*(&v57 + 1) >> 62) <= 1)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v17 == 2)
    {
      v19 = *(v51 + 24);
    }

    else
    {
      v19 = 0;
    }

    while (1)
    {
      v20 = __OFSUB__(v19, v9);
      v21 = v19 - v9;
      if (v20)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        __break(1u);
        __break(1u);
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
      }

      if (v21 < 1)
      {
        v14 = v18;
        sub_26C0BB9B0(v59, *(&v59 + 1));
        return v14;
      }

      v22 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_85;
      }

      v24 = BYTE14(v59);
      v23 = v59;
      v25 = *(&v59 + 1) >> 62;
      if ((*(&v59 + 1) >> 62) <= 1)
      {
        break;
      }

      if (v25 == 2)
      {
        v26 = *(v59 + 24);
        goto LABEL_32;
      }

      if (v22 >= 1)
      {
        goto LABEL_72;
      }

LABEL_35:
      v57 = v59;
      if (v22 < v9)
      {
        goto LABEL_86;
      }

      *&v55 = v9;
      *(&v55 + 1) = v9 + 1;
      sub_26C0BBAA4(v59, *(&v59 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
      sub_26C0BE710();
      sub_26C0BE764();
      sub_26C14878C();
      sub_26C0BB9B0(v57, *(&v57 + 1));
      v60 = ++v9;
      if (v25 <= 1)
      {
        if (v25)
        {
          v27 = v23 >> 32;
        }

        else
        {
          v27 = v24;
        }

LABEL_42:
        if (v27 < v22)
        {
          goto LABEL_72;
        }

        goto LABEL_45;
      }

      if (v25 == 2)
      {
        v27 = *(v23 + 24);
        goto LABEL_42;
      }

      if (v22 >= 1)
      {
LABEL_72:

        *v49 = xmmword_26C14EC10;
        *(v49 + 16) = 2;
        v57 = xmmword_26C14EC10;
        LOBYTE(v58) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v48 = *(&v59 + 1);
        v47 = v59;
        return sub_26C0BB9B0(v47, v48);
      }

LABEL_45:
      v28 = sub_26C14889C();
      v29 = v28;
      v31 = v30;
      v60 = v22;
      v32 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v32 != 2)
        {
          goto LABEL_52;
        }

        v28 = *(v28 + 16);
        v33 = *(v29 + 24);
      }

      else
      {
        if (!v32)
        {
          goto LABEL_52;
        }

        v28 = v28;
        v33 = v29 >> 32;
      }

      if (v33 < v28)
      {
        goto LABEL_87;
      }

LABEL_52:
      v34 = sub_26C14889C();
      v36 = v34;
      v37 = v35;
      v38 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v38 == 2)
        {
          v52 = v18;
          v39 = *(v34 + 16);
          v40 = *(v34 + 24);
          if (sub_26C1487BC() && __OFSUB__(v39, sub_26C1487EC()))
          {
            goto LABEL_90;
          }

          if (__OFSUB__(v40, v39))
          {
            goto LABEL_89;
          }

          sub_26C1487DC();
          v18 = v52;
        }

        else
        {
          *(&v57 + 6) = 0;
          *&v57 = 0;
        }
      }

      else if (v38)
      {
        if (v34 >> 32 < v34)
        {
          goto LABEL_88;
        }

        if (sub_26C1487BC() && __OFSUB__(v36, sub_26C1487EC()))
        {
          goto LABEL_91;
        }

        sub_26C1487DC();
      }

      else
      {
        *&v57 = v34;
        WORD4(v57) = v35;
        BYTE10(v57) = BYTE2(v35);
        BYTE11(v57) = BYTE3(v35);
        BYTE12(v57) = BYTE4(v35);
        BYTE13(v57) = BYTE5(v35);
      }

      v41 = sub_26C148F3C();
      v43 = v42;
      sub_26C0BB9B0(v29, v31);
      sub_26C0BB9B0(v36, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_26C0CE13C(0, *(v18 + 2) + 1, 1, v18);
      }

      v45 = *(v18 + 2);
      v44 = *(v18 + 3);
      if (v45 >= v44 >> 1)
      {
        v18 = sub_26C0CE13C((v44 > 1), v45 + 1, 1, v18);
      }

      *(v18 + 2) = v45 + 1;
      v46 = &v18[16 * v45];
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
      LODWORD(v17) = v54;
      if (v54 > 1)
      {
        goto LABEL_18;
      }

LABEL_21:
      v19 = v53;
      if (v17)
      {
        v19 = v50;
      }
    }

    if (v25)
    {
      v26 = v59 >> 32;
    }

    else
    {
      v26 = BYTE14(v59);
    }

LABEL_32:
    if (v26 < v22)
    {
      goto LABEL_72;
    }

    goto LABEL_35;
  }

  v10 = sub_26C0D7260(result);
  v12 = *(&v59 + 1);
  v11 = v59;
  if (!v13)
  {
    goto LABEL_80;
  }

  v14 = v10;
  v15 = *(&v59 + 1) >> 62;
  if ((*(&v59 + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v59 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v59 >> 32;
  }

  else
  {
    v16 = BYTE14(v59);
  }

  if (__OFSUB__(v16, v60))
  {
    goto LABEL_92;
  }

  if (v16 - v60 > 0)
  {

LABEL_80:
    *a2 = xmmword_26C14EC10;
    *(a2 + 16) = 2;
    v57 = xmmword_26C14EC10;
    LOBYTE(v58) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v47 = v11;
    v48 = v12;
    return sub_26C0BB9B0(v47, v48);
  }

  sub_26C0BB9B0(v59, *(&v59 + 1));
  return v14;
}

uint64_t sub_26C12D114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x26D69BEF0](1);

    return sub_26C148F4C();
  }

  else
  {
    MEMORY[0x26D69BEF0](0, a2, a3);
    v6 = *(a2 + 16);
    result = MEMORY[0x26D69BEF0](v6);
    if (v6)
    {
      v7 = a2 + 40;
      do
      {

        sub_26C148F4C();

        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_26C12D1D4(uint64_t a1, uint64_t a2, char a3)
{
  sub_26C1491AC();
  if (a3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C148F4C();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v5 = *(a1 + 16);
    MEMORY[0x26D69BEF0](v5);
    if (v5)
    {
      v6 = a1 + 40;
      do
      {

        sub_26C148F4C();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12D2B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_26C1491AC();
  if (v3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C148F4C();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    MEMORY[0x26D69BEF0](*(v2 + 16));
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v2 + 40;
      do
      {

        sub_26C148F4C();

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12D36C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_26C0BC79C(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_26C14912C();
  }
}

unint64_t sub_26C12D3C8()
{
  result = qword_28047AE00;
  if (!qword_28047AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE00);
  }

  return result;
}

void sub_26C12D41C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = 0;
      v7 = BYTE6(v2);
      goto LABEL_9;
    }

    v6 = v3;
    v7 = v3 >> 32;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
LABEL_7:
    sub_26C0BBAA4(*a2, a2[1]);
    goto LABEL_9;
  }

  v7 = 0;
  v6 = 0;
LABEL_9:
  if (v7 < v4 || v7 < v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = sub_26C14889C();
  v11 = v10;
  sub_26C1488CC();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
LABEL_15:
      sub_26C0BB9B0(v9, v11);
      sub_26C0BB9B0(v3, v2);
      return;
    }

LABEL_20:
    sub_26C0BB9B0(v9, v12);
    sub_26C0BB9B0(v3, v2);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_15;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  sub_26C0BB9B0(v9, v12);
  sub_26C0BB9B0(v3, v2);
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_26C12D584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C12D5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26C12D660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
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

uint64_t sub_26C12D6B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C12D728(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v6 = *v3;
    LOWORD(v10) = *(v3 - 12);
    v11 = *(v3 - 1);
    v12 = v6;
    v7 = sub_26C12EFB4(&v10);
    v3 = v5;
    v8 = __OFADD__(a1, v7);
    a1 += v7;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

unint64_t sub_26C12D7B8(__int128 *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a1[3];
  v26 = a1[2];
  *v27 = v2;
  *&v27[16] = a1[4];
  v28 = *(a1 + 80);
  v3 = a1[1];
  v24 = *a1;
  v25 = v3;
  *(&v17 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v18 = sub_26C0ECE20();
  v4 = sub_26C14897C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v5 = *(&v24 + 1);
  v6 = v25;
  if ((v4 & 1) == 0)
  {
    v9 = *v27;
    if (v28)
    {
      v16 = v24;
      v17 = v25;
      v18 = v26;
      v19 = *v27;
      v20 = *&v27[8];
      v21 = *&v27[24];
      return sub_26C12F9D0(&v16);
    }

    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v23 = *v27;
    v10 = *v1;
    v11 = v1[1];
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v13 = *(v10 + 24);
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      v13 = v10 >> 32;
    }

    else
    {
      v13 = BYTE6(v11);
    }

    v15 = 0;
    *(&v17 + 1) = MEMORY[0x277D838B0];
    *&v18 = MEMORY[0x277CC9C18];
    *&v16 = &v15;
    *(&v16 + 1) = &v16;
    __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v16);
    sub_26C0FF0B0(&v24, &v16);

    v14 = sub_26C131804(0, v9, v1, v22);
    sub_26C1317D4(&v24);

    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v14 >> 16))
    {
      sub_26C10064C(v14, v13);
      return v14 + 2;
    }

    __break(1u);
  }

  if (v28)
  {
    LOWORD(v16) = v24;
    *(&v16 + 1) = *(&v24 + 1);
    v17 = v25;
    sub_26C0BBAA4(*(&v24 + 1), v25);
    v7 = sub_26C12EFB4(&v16);
    sub_26C0BB9B0(v5, v6);
    return v7;
  }

  else
  {
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = *v27;
    return sub_26C12EAE0(&v16);
  }
}

uint64_t sub_26C12D9F0()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AE08);
  __swift_project_value_buffer(v0, qword_28047AE08);
  return sub_26C148A8C();
}

uint64_t sub_26C12DA74(uint64_t a1)
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
LABEL_21:
    __break(1u);
    return result;
  }

  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = sub_26C14889C();
  v12 = v11;
  sub_26C1488BC();
  result = sub_26C0BB9B0(v10, v12);
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

  if (v14 < v9)
  {
    goto LABEL_21;
  }

  v15 = sub_26C14889C();
  v17 = v16;
  sub_26C1488BC();
  sub_26C0BB9B0(v15, v17);

  return sub_26C12B45C();
}

uint64_t sub_26C12DBB0(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  result = sub_26C1491DC();
  v12 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v2 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v2 >> 32;
  }

  else
  {
    v13 = BYTE6(v3);
  }

  if (v13 < v5)
  {
    __break(1u);
    goto LABEL_34;
  }

  v14 = sub_26C14889C();
  v16 = v15;
  sub_26C1488BC();
  sub_26C0BB9B0(v14, v16);
  if (v6 >> 60 == 15)
  {
    sub_26C1491CC();
    goto LABEL_20;
  }

  result = sub_26C1491CC();
  v17 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v4 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v4 >> 32;
  }

  else
  {
    v18 = BYTE6(v6);
  }

  if (v18 < v7)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v19 = sub_26C14889C();
  v21 = v20;
  sub_26C1488BC();
  sub_26C0BB9B0(v19, v21);
LABEL_20:
  if (v9 >> 60 == 15)
  {
    return sub_26C1491CC();
  }

  result = sub_26C1491CC();
  v22 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v8 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v8 >> 32;
  }

  else
  {
    v23 = BYTE6(v9);
  }

  if (v23 < v10)
  {
    goto LABEL_35;
  }

  v24 = sub_26C14889C();
  v26 = v25;
  sub_26C1488BC();

  return sub_26C0BB9B0(v24, v26);
}

uint64_t sub_26C12DDD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 80))
  {
    v9 = *(v1 + 64);
    v36 = *(v1 + 72);
    v37 = *(v1 + 56);
    MEMORY[0x26D69BEF0](1);
    result = sub_26C1491DC();
    v11 = v5 >> 62;
    if ((v5 >> 62) > 1)
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
      v12 = BYTE6(v5);
    }

    if (v12 >= v4)
    {
      v20 = sub_26C14889C();
      v22 = v21;
      sub_26C1488BC();
      sub_26C0BB9B0(v20, v22);
      if (v7 >> 60 == 15)
      {
        sub_26C1491CC();
        goto LABEL_39;
      }

      result = sub_26C1491CC();
      v23 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v23 == 2)
        {
          v24 = *(v6 + 24);
        }

        else
        {
          v24 = 0;
        }
      }

      else if (v23)
      {
        v24 = v6 >> 32;
      }

      else
      {
        v24 = BYTE6(v7);
      }

      if (v24 >= v8)
      {
        v28 = sub_26C14889C();
        v30 = v29;
        sub_26C1488BC();
        sub_26C0BB9B0(v28, v30);
LABEL_39:
        if (v9 >> 60 == 15)
        {
          return sub_26C1491CC();
        }

        sub_26C1491CC();
        v31 = v9 >> 62;
        if ((v9 >> 62) > 1)
        {
          result = v36;
          if (v31 == 2)
          {
            v32 = *(v37 + 24);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          result = v36;
          if (v31)
          {
            v32 = v37 >> 32;
          }

          else
          {
            v32 = BYTE6(v9);
          }
        }

        if (v32 >= result)
        {
          v33 = sub_26C14889C();
          v35 = v34;
          sub_26C1488BC();

          return sub_26C0BB9B0(v33, v35);
        }

LABEL_56:
        __break(1u);
        return result;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  result = MEMORY[0x26D69BEF0](0);
  v13 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(v2 + 24);
    }
  }

  else if (v13)
  {
    v14 = v2 >> 32;
  }

  else
  {
    v14 = BYTE6(v3);
  }

  if (v14 < v5)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = sub_26C14889C();
  v17 = v16;
  sub_26C1488BC();
  result = sub_26C0BB9B0(v15, v17);
  v18 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v4 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v4 >> 32;
  }

  else
  {
    v19 = BYTE6(v6);
  }

  if (v19 < v7)
  {
    goto LABEL_54;
  }

  v25 = sub_26C14889C();
  v27 = v26;
  sub_26C1488BC();
  sub_26C0BB9B0(v25, v27);

  return sub_26C12B45C();
}

uint64_t sub_26C12E14C()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_26C1491AC();
  sub_26C12DA74(v4);
  return sub_26C14920C();
}

uint64_t sub_26C12E1AC(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_26C1491AC();
  sub_26C12DA74(v5);
  return sub_26C14920C();
}

uint64_t sub_26C12E208()
{
  sub_26C1491AC();
  sub_26C12DBB0(v1);
  return sub_26C14920C();
}

uint64_t sub_26C12E24C(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C12DBB0(v2);
  return sub_26C14920C();
}

uint64_t sub_26C12E28C()
{
  sub_26C1491AC();
  sub_26C12DDD0(v1);
  return sub_26C14920C();
}

uint64_t sub_26C12E2D0(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C12DDD0(v2);
  return sub_26C14920C();
}

unint64_t sub_26C12E314()
{
  result = qword_28047AE20;
  if (!qword_28047AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE20);
  }

  return result;
}

unint64_t sub_26C12E36C()
{
  result = qword_28047AE28;
  if (!qword_28047AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE28);
  }

  return result;
}

unint64_t sub_26C12E3C4()
{
  result = qword_28047AE30;
  if (!qword_28047AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE30);
  }

  return result;
}

unint64_t sub_26C12E41C()
{
  result = qword_28047AE38;
  if (!qword_28047AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE38);
  }

  return result;
}

double sub_26C12E470@<D0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  if (a2)
  {
    if (qword_28047A778 != -1)
    {
      swift_once();
    }

    v7 = sub_26C148A9C();
    __swift_project_value_buffer(v7, qword_28047AE08);
    v8 = sub_26C148A7C();
    v9 = sub_26C14900C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26C0B5000, v8, v9, "PAKE extension not supported for hello retry requests", v10, 2u);
      MEMORY[0x26D69C3A0](v10, -1, -1);
    }

LABEL_18:
    *a3 = v6 | 0x8A3B0000;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&v30 = v6 | 0x8A3B0000;
    *(&v30 + 1) = 0;
    LOBYTE(v31) = 0;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return *&v13;
  }

  if (v6 == 2)
  {
    sub_26C12F8EC(&v34, &v30);
    if (v4)
    {
      v13 = v34;
      v15 = v35;
    }

    else
    {
      v26 = v31;
      if (v31 >> 60 != 15)
      {
        v27 = *(&v31 + 1);
        v28 = *(&v30 + 1);
        *a4 = v30;
        *(a4 + 8) = v28;
        *(a4 + 16) = v26;
        *(a4 + 24) = v27;
        *(a4 + 32) = xmmword_26C14A540;
        *(a4 + 48) = 0;
        *(a4 + 56) = 0;
        *&v13 = 0xF000000000000000;
        *(a4 + 64) = xmmword_26C14C1D0;
        *(a4 + 80) = 1;
        return *&v13;
      }

      v30 = 0u;
      v15 = 2;
      LOBYTE(v31) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v13 = 0uLL;
    }

    *a3 = v13;
    *(a3 + 16) = v15;
  }

  else
  {
    if (v6 != 1)
    {
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v16 = sub_26C148A9C();
      __swift_project_value_buffer(v16, qword_28047AE08);
      v17 = sub_26C148A7C();
      v18 = sub_26C14900C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v30 = v20;
        *v19 = 136315138;
        LOBYTE(v34) = v6;
        v21 = HandshakeType.description.getter();
        v23 = sub_26C0E5DE8(v21, v22, &v30);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_26C0B5000, v17, v18, "PAKE extension not supported in message type %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x26D69C3A0](v20, -1, -1);
        MEMORY[0x26D69C3A0](v19, -1, -1);
      }

      goto LABEL_18;
    }

    sub_26C12F234(&v34, &v30);
    if (v4)
    {
      v12 = v35;
      *&v13 = v34;
      *a3 = v34;
      *(a3 + 16) = v12;
    }

    else
    {
      v24 = v33;
      v25 = v31;
      *a4 = v30;
      *(a4 + 16) = v25;
      *&v13 = v32;
      *(a4 + 32) = v32;
      *(a4 + 48) = v24;
      *(a4 + 80) = 0;
    }
  }

  return *&v13;
}

__n128 sub_26C12E7B8@<Q0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (a2)
  {
    if (qword_28047A778 != -1)
    {
      swift_once();
    }

    v8 = sub_26C148A9C();
    __swift_project_value_buffer(v8, qword_28047AE08);
    v9 = sub_26C148A7C();
    v10 = sub_26C14900C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26C0B5000, v9, v10, "PAKE extension not supported for hello retry requests", v11, 2u);
      MEMORY[0x26D69C3A0](v11, -1, -1);
    }

LABEL_19:
    *a3 = v7 | 0x8A3B0000;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v31.n128_u64[0] = v7 | 0x8A3B0000;
    v31.n128_u64[1] = 0;
    LOBYTE(v32) = 0;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return result;
  }

  if (v7 == 2)
  {
    sub_26C130848(&v31, v35);
    if (v5)
    {
      v16 = v32;
      result.n128_u64[0] = v31.n128_u64[0];
      *a3 = v31;
      *(a3 + 16) = v16;
    }

    else
    {
      v29.n128_u8[0] = 1;
      v28 = v35[3];
      *(a4 + 32) = v35[2];
      *(a4 + 48) = v28;
      *(a4 + 64) = v35[4];
      result = v35[1];
      *a4 = v35[0];
      *(a4 + 16) = result;
      *(a4 + 80) = 1;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v17 = sub_26C148A9C();
      __swift_project_value_buffer(v17, qword_28047AE08);
      v18 = sub_26C148A7C();
      v19 = sub_26C14900C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v31.n128_u64[0] = v21;
        *v20 = 136315138;
        v29.n128_u8[0] = v7;
        v22 = HandshakeType.description.getter();
        v24 = sub_26C0E5DE8(v22, v23, &v31);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_26C0B5000, v18, v19, "PAKE extension not supported in message type %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x26D69C3A0](v21, -1, -1);
        MEMORY[0x26D69C3A0](v20, -1, -1);
      }

      goto LABEL_19;
    }

    sub_26C0DE5F4(v4, &v29, &v31);
    if (v5)
    {
      result = v29;
      v14 = v30;
LABEL_11:
      *a3 = result;
      *(a3 + 16) = v14;
      return result;
    }

    v25 = v34;
    if (!v34)
    {
      v31 = 0u;
      v14 = 2;
      LOBYTE(v32) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      result = 0uLL;
      goto LABEL_11;
    }

    result = v31;
    v26 = v32;
    v27 = v33;
    v31.n128_u8[0] = 0;
    *a4 = result;
    *(a4 + 16) = v26;
    *(a4 + 32) = v27;
    *(a4 + 48) = v25;
    *(a4 + 80) = 0;
  }

  return result;
}

unint64_t sub_26C12EAE0(uint64_t *a1)
{
  v51 = *MEMORY[0x277D85DE8];
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
  v12 = a1[4];
  v13 = a1[5];
  v45 = a1[6];
  v46 = 0;
  v49 = MEMORY[0x277D838B0];
  v50 = MEMORY[0x277CC9C18];
  v47 = &v46;
  v48 = &v47;
  __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v14 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = 0;
      v16 = BYTE6(v2);
      if (BYTE6(v2) < v11)
      {
        goto LABEL_73;
      }

      goto LABEL_17;
    }

    v15 = v3;
    v16 = v3 >> 32;
LABEL_14:
    sub_26C0BBAA4(v3, v2);
    if (v16 < v11)
    {
      goto LABEL_73;
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
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_17:
  if (v16 < v15)
  {
    goto LABEL_73;
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
LABEL_31:
      v3 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v21 != 2)
  {
LABEL_30:
    sub_26C0BB9B0(v17, v20);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_31;
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
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    v2 = HIDWORD(v17) - v17;
  }

  v3 = MEMORY[0x277D838B0];
  v17 = MEMORY[0x277CC9C18];
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v2 >> 16)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_32:
  sub_26C10064C(v2, v9);
  v24 = *v1;
  v25 = v1[1];
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v27 = *(v24 + 24);
    }

    else
    {
      v27 = 0;
    }
  }

  else if (v26)
  {
    v27 = v24 >> 32;
  }

  else
  {
    v27 = BYTE6(v25);
  }

  v46 = 0;
  v49 = v3;
  v50 = v17;
  v47 = &v46;
  v48 = &v47;
  __swift_project_boxed_opaque_existential_1(&v47, v3);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v28 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = 0;
      v30 = BYTE6(v12);
      if (BYTE6(v12) < v13)
      {
        goto LABEL_75;
      }

      goto LABEL_49;
    }

    v29 = v10;
    v30 = v10 >> 32;
LABEL_46:
    sub_26C0BBAA4(v10, v12);
    if (v30 < v13)
    {
      goto LABEL_75;
    }

    goto LABEL_49;
  }

  if (v28 == 2)
  {
    v29 = *(v10 + 16);
    v30 = *(v10 + 24);
    goto LABEL_46;
  }

  v30 = 0;
  v29 = 0;
  if (v13 > 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_49:
  if (v30 < v29)
  {
    goto LABEL_75;
  }

  v31 = sub_26C14889C();
  v33 = v32;
  sub_26C1488CC();
  v34 = v33;
  v35 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v35)
    {
      sub_26C0BB9B0(v31, v33);
      sub_26C0BB9B0(v10, v12);
      v12 = BYTE6(v33);
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (v35 != 2)
  {
LABEL_62:
    sub_26C0BB9B0(v31, v34);
    sub_26C0BB9B0(v10, v12);
    v12 = 0;
    goto LABEL_63;
  }

  v37 = *(v31 + 16);
  v36 = *(v31 + 24);
  sub_26C0BB9B0(v31, v34);
  sub_26C0BB9B0(v10, v12);
  v12 = v36 - v37;
  if (__OFSUB__(v36, v37))
  {
    __break(1u);
LABEL_57:
    sub_26C0BB9B0(v31, v34);
    sub_26C0BB9B0(v10, v12);
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_80;
    }

    v12 = HIDWORD(v31) - v31;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v12 >> 16)
  {
    __break(1u);
    goto LABEL_62;
  }

LABEL_63:
  sub_26C10064C(v12, v27);
  v38 = *v1;
  v39 = v1[1];
  v40 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v41 = *(v38 + 24);
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v40)
  {
    v41 = v38 >> 32;
  }

  else
  {
    v41 = BYTE6(v39);
  }

  v46 = 0;
  v49 = v3;
  v50 = v17;
  v47 = &v46;
  v48 = &v47;
  __swift_project_boxed_opaque_existential_1(&v47, v3);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v42 = sub_26C12D728(0, v45);
  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v43 = v42;
  if (v42 >> 16)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_26C10064C(v42, v41);
  return v2 + v12 + v43 + 6;
}