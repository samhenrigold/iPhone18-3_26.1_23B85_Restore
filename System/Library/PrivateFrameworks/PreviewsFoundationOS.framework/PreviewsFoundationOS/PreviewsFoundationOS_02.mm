uint64_t sub_25F1CE4AC(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v10 = a3 & 0xFFFFFFFFFFFFFFLL;
    v11 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v12 = sub_25F305F9C();
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v19[0] = a2;
          v19[1] = v10;
          v16 = v19 + v9;
        }

        else
        {
          v15 = v11;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v15 = sub_25F30605C();
          }

          v16 = (v15 + v9);
        }

        v12 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v17 = (__clz(v12 ^ 0xFF) - 24);
        if (v17 <= 2)
        {
          if (v17 != 1)
          {
            v12 = v16[1] & 0x3F | ((v12 & 0x1F) << 6);
            v13 = 2;
            goto LABEL_7;
          }

LABEL_21:
          v13 = 1;
          goto LABEL_7;
        }

        if (v17 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v13 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
          v13 = 4;
        }
      }

LABEL_7:
      if (v12 >= a1)
      {
        v14 = a1;
      }

      else
      {
        v14 = v12;
      }

      if (v12 >= *a4)
      {
        a1 = v14;
      }

      else
      {
        a1 = a1;
      }

      v9 += v13;
    }

    while (v9 < v5);
  }

  return a1;
}

unint64_t sub_25F1CE62C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_25F2E2504(a1, a3, a4);
  v8 = sub_25F2E2504(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25F304EDC();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_25F30605C();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25F304EEC();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_25F30605C();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_25F1CE83C(uint64_t result)
{
  if (result <= 0x19)
  {
    return sub_25F304EFC();
  }

  v1 = result + 39;
  if (result >= 0xFFFFFFD9)
  {
    __break(1u);
    return result;
  }

  result = 0;
  if (HIWORD(v1) <= 0x10u && (v1 & 0xFFFFF800) != 0xD800)
  {
    return sub_25F304EFC();
  }

  return result;
}

uint64_t sub_25F1CE948(uint64_t result, unsigned int a2, char a3)
{
  v3 = result >> 1;
  if (a3)
  {
    v3 = result / 0x2BC;
  }

  if (!a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = v3 / a2 + v3;
  if (v4 >= 0x1C8)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 36;
      if (v5 >= 0xFFFFFFDC)
      {
        break;
      }

      v7 = v4 / 0x23;
      v5 += 36;
      v8 = v4 >> 3;
      v4 /= 0x23u;
      if (v8 <= 0x7CA)
      {
        v4 = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v6 = 0;
LABEL_10:
  v9 = 36 * v4 / (v4 + 38);
  result = v6 + v9;
  if (__CFADD__(v6, v9))
  {
    goto LABEL_14;
  }

  return result;
}

int64_t _s20PreviewsFoundationOS8PunycodeO6encode6stringSSSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v65 = 128;
  sub_25F1CE300(0, 0xE000000000000000, a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = 0;
  v63 = 0;
  v64 = 0xE000000000000000;
  result = sub_25F304F2C();
  if (result < 0)
  {
    goto LABEL_107;
  }

  v10 = result;
  if (HIDWORD(result))
  {
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
    return result;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 7;
  if (((a2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  v13 = v12 | (v11 << 16);
  if (sub_25F1CE62C(0xFuLL, v13, v3, a2) <= result)
  {
    v48 = 0;
    v47 = 0xE000000000000000;
LABEL_85:
    v49 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v49 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v50 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v50 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        v61 = v5;
        v62 = v7;
        MEMORY[0x25F8D7130](95, 0xE100000000000000);
        MEMORY[0x25F8D7130](v48, v47);

        return v61;
      }

      else
      {

        return v48;
      }
    }

    else
    {
    }

    return v5;
  }

  v58 = 0;
  v60 = v10;
  v56 = v11;
  v14 = 72;
  v15 = 128;
LABEL_10:
  result = sub_25F1CE4AC(1114111, v3, a2, &v65);
  v57 = result;
  if (result < v15)
  {
    goto LABEL_109;
  }

  if (v60 == -1)
  {
    goto LABEL_110;
  }

  v16 = (result - v15) * (v60 + 1);
  if ((v16 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_111;
  }

  v17 = (v58 + v16);
  if (__CFADD__(v58, v16))
  {
    goto LABEL_95;
  }

  v18 = v56;
  if (!v56)
  {
    goto LABEL_80;
  }

  v51 = v13;
  v52 = v8;
  v53 = v7;

  v19 = 0;
  v20 = v57;
  v54 = v10;
  v55 = v3;
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25F305F9C();
      v22 = v21;
      v23 = result == v20;
      if (result < v20)
      {
        break;
      }

      goto LABEL_28;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v61 = v3;
      v62 = a2 & 0xFFFFFFFFFFFFFFLL;
      v25 = &v61 + v19;
    }

    else
    {
      v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v3 & 0x1000000000000000) == 0)
      {
        v24 = sub_25F30605C();
      }

      v25 = (v24 + v19);
    }

    result = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v46 = (__clz(result ^ 0xFF) - 24);
    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        result = v25[1] & 0x3F | ((result & 0x1F) << 6);
        v22 = 2;
        v23 = result == v20;
        if (result < v20)
        {
          break;
        }

        goto LABEL_28;
      }

LABEL_27:
      v22 = 1;
      v23 = result == v20;
      if (result < v20)
      {
        break;
      }

      goto LABEL_28;
    }

    if (v46 == 3)
    {
      result = ((result & 0xF) << 12) | ((v25[1] & 0x3F) << 6) | v25[2] & 0x3F;
      v22 = 3;
      v23 = result == v20;
      if (result < v20)
      {
        break;
      }

      goto LABEL_28;
    }

    result = ((result & 0xF) << 18) | ((v25[1] & 0x3F) << 12) | ((v25[2] & 0x3F) << 6) | v25[3] & 0x3F;
    v22 = 4;
    v23 = result == v20;
    if (result < v20)
    {
      break;
    }

LABEL_28:
    if (v23)
    {
      v26 = v17;
      v27 = 36;
      v59 = v26;
      while (1)
      {
        v28 = v27 + 36;
        if (v27 < 0xFFFFFFDC)
        {
          break;
        }

        if (v14 < v27)
        {
          v28 = -1;
LABEL_35:
          if (v14 >= 0xFFFFFFE6)
          {
            goto LABEL_103;
          }

          if (v27 >= v14 + 26)
          {
            if (v26 < 0x1A)
            {
              goto LABEL_67;
            }

            v29 = 26;
          }

          else
          {
            v29 = v27 - v14;
            if (v27 < v14)
            {
              goto LABEL_105;
            }

            if (v26 < v29)
            {
LABEL_67:
              v44 = sub_25F1CE83C(v26);
              if (!v45)
              {
                goto LABEL_94;
              }

              MEMORY[0x25F8D7120](v44);

              if (v60 != -1)
              {
                v10 = v54;
                v14 = sub_25F1CE948(v59, v60 + 1, v60 == v54);
                v17 = 0;
                ++v60;
                v3 = v55;
                v18 = v56;
                v20 = v57;
                goto LABEL_16;
              }

LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }
          }

          goto LABEL_46;
        }

        if (!v26)
        {
          goto LABEL_67;
        }

        v27 = -1;
        v29 = 1;
LABEL_47:
        v30 = v26 - v29;
        if (v26 < v29)
        {
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
          goto LABEL_106;
        }

        v31 = 36 - v29;
        if (v29 > 0x24)
        {
          goto LABEL_100;
        }

        if (!v31)
        {
          goto LABEL_101;
        }

        v26 = v30 / v31;
        v32 = v30 % v31;
        v33 = __CFADD__(v29, v32);
        v34 = v29 + v32;
        if (v33)
        {
          goto LABEL_102;
        }

        if (v34 > 0x19)
        {
          v33 = __CFADD__(v34, 39);
          v35 = v34 + 39;
          if (v33)
          {
            goto LABEL_104;
          }

          if (v35 >> 11 == 27 || v35 > 0x10FFFF)
          {
            goto LABEL_94;
          }

          if (v35 > 0x7F)
          {
            v39 = (v35 & 0x3F) << 8;
            v40 = (v35 >> 6) + v39 + 33217;
            v41 = (v39 | (v35 >> 6) & 0x3F) << 8;
            v42 = (v35 >> 18) + ((v41 | (v35 >> 12) & 0x3F) << 8) - 2122219023;
            v43 = (v35 >> 12) + v41 + 8487393;
            if (HIWORD(v35))
            {
              v43 = v42;
            }

            if (v35 >= 0x800)
            {
              v37 = v43;
            }

            else
            {
              v37 = v40;
            }

            goto LABEL_60;
          }
        }

        else
        {
          v35 = v34 + 97;
        }

        v37 = v35 + 1;
LABEL_60:
        v61 = (v37 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v37) >> 3))));
        v38 = sub_25F304EFC();
        MEMORY[0x25F8D7120](v38);

        if (v27 == -1)
        {
          goto LABEL_67;
        }
      }

      if (v14 < v27)
      {
        goto LABEL_35;
      }

      if (!v26)
      {
        goto LABEL_67;
      }

      v29 = 1;
LABEL_46:
      v27 = v28;
      goto LABEL_47;
    }

LABEL_16:
    v19 += v22;
    if (v19 >= v18)
    {

      v7 = v53;
      v13 = v51;
      v8 = v52;
LABEL_80:
      if (v17 == -1)
      {
        goto LABEL_112;
      }

      v15 = v57 + 1;
      if (v57 == -1)
      {
        goto LABEL_113;
      }

      v58 = v17 + 1;
      v65 = v57 + 1;
      if (sub_25F1CE62C(0xFuLL, v13, v3, a2) <= v60)
      {
        v48 = v63;
        v47 = v64;
        goto LABEL_85;
      }

      goto LABEL_10;
    }
  }

  if (v17 != -1)
  {
    v17 = (v17 + 1);
    goto LABEL_16;
  }

LABEL_94:

LABEL_95:

  return 0;
}

uint64_t Sequence.pairs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t PairSequence.Iterator.next()@<X0>(uint64_t a2@<X8>)
{
  v15 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_25F305C1C();
  v14 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v6, v3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v15, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v7 + 32))(v9, v6, AssociatedTypeWitness);
    v12 = swift_getTupleTypeMetadata2();
    v13 = v15;
    (*(v7 + 16))(v15, v9, AssociatedTypeWitness);
    sub_25F305CDC();
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    return (*(*(v12 - 8) + 56))(v13, 0, 1, v12);
  }
}

uint64_t sub_25F1CF3EC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t PairSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, v2, v4);
  sub_25F3050DC();
  return (*(v9 + 32))(a2, v11, AssociatedTypeWitness);
}

uint64_t sub_25F1CF624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  PairSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25F1CF68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F2E7F78(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_25F1CF6FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1CF76C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25F1CF8AC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_25F1CFACC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1CFB4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_25F1CFCE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t FulfillOnceState.__allocating_init(waitingState:initializationCallsite:initializationInfo:failureMode:thingDescription:actionPastParticiple:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_25F1D1EE4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v9 + 80) - 8) + 8))(a1);
  return v11;
}

uint64_t FulfillOnceState.updateWaitingState<A>(update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v23 = v4[19];
  *&v17 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v17 + 1) = 123;
  v18 = 2;
  v19 = xmmword_25F309320;
  v20 = "updateWaitingState(update:)";
  v21 = 27;
  v22 = 2;
  v12 = *(v6 + 80);
  v13 = *(v6 + 88);
  v14 = a3;
  v15 = a1;
  v16 = a2;
  type metadata accessor for FulfillOnceState.State(255, v12, v13, a4);
  v7 = sub_25F30476C();
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v12, v13, a3);

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v17, sub_25F1D1F88, &v11, v7, updated, WitnessTable);
}

uint64_t FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = a1[1];
  v22 = *a1;
  v23 = v7;
  v24[0] = a1[2];
  *(v24 + 9) = *(a1 + 41);
  v25 = v5[19];
  *&v16 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v16 + 1) = 123;
  v17 = 2;
  v18 = xmmword_25F309330;
  v19 = "fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)";
  v20 = 56;
  v21 = 2;
  v15[2] = a2;
  v15[3] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for FulfillOnceState.State(255, v8, v9, a4);
  v10 = sub_25F30476C();
  v12 = type metadata accessor for FulfillOnceState.FulfillmentOutcome(0, v8, v9, v11);

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v16, sub_25F1D1FDC, v15, v10, v12, WitnessTable);
}

__n128 FulfillOnceState.initializationCallsite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

uint64_t FulfillOnceState.thing.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t FulfillOnceState.action.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t FulfillOnceState.init(waitingState:initializationCallsite:initializationInfo:failureMode:thingDescription:actionPastParticiple:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  v12 = sub_25F1D1D10(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v11 + 80) - 8) + 8))(a1);
  return v12;
}

uint64_t FulfillOnceState.__allocating_init<>(initializationCallsite:initializationInfo:failureMode:thingDescription:actionPastParticiple:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v15 = *(a4 + 16);
  v18 = *a4;
  v19 = v15;
  v16 = swift_allocObject();
  return sub_25F1D1D10(v16, v20, a2, a3, &v18, a5, a6, a7, a8);
}

uint64_t FulfillOnceState.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for FulfillOnceState.State(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v37 = *(v4 + 152);
  *&v44 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v44 + 1) = 123;
  v45[0] = 2;
  *&v45[8] = xmmword_25F309340;
  *&v45[24] = "deinit";
  *&v45[32] = 6;
  v45[40] = 2;
  v12 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v44, v12, WitnessTable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(*(v6 - 8) + 8))(v11, v6);
    v14 = *(v4 + 128);
    v36 = *(v4 + 120);
    v15 = *(v4 + 144);
    v35 = *(v4 + 136);
    v16 = *(v4 + 32);
    v41 = *(v4 + 16);
    v42 = v16;
    v43[0] = *(v4 + 48);
    *(v43 + 9) = *(v4 + 57);
    v17 = *(v4 + 80);
    if (v17)
    {
      v18 = *(v4 + 88);

      v19 = sub_25F1D2078(v17, v18);
      v20 = v17(v19);
      v22 = v21;
      sub_25F1AC3AC(v17, v18);
    }

    else
    {

      v20 = 0;
      v22 = 0;
    }

    v25 = *(v5 + 104);
    v26 = *(v5 + 112);
    v37 = *(v5 + 96);
    v24 = v37;
    v38 = v25;
    v39 = v26;
    v27 = *(v5 + 32);
    v44 = *(v5 + 16);
    *v45 = v27;
    *&v45[16] = *(v5 + 48);
    *&v45[25] = *(v5 + 57);
    type metadata accessor for FulfillOnceState.Unfulfilled(0, v6, v7, v23);
    swift_getWitnessTable();
    v28 = swift_allocError();
    *v29 = v36;
    *(v29 + 8) = v14;
    *(v29 + 16) = v35;
    *(v29 + 24) = v15;
    v30 = *(v43 + 9);
    v32 = v42;
    v31 = v43[0];
    *(v29 + 32) = v41;
    *(v29 + 48) = v32;
    *(v29 + 64) = v31;
    *(v29 + 73) = v30;
    *(v29 + 89) = *v40;
    *(v29 + 92) = *&v40[3];
    *(v29 + 96) = v20;
    *(v29 + 104) = v22;
    sub_25F1D2054(v24, v25, v26);
    sub_25F1D07A0(&v44, v28);
    sub_25F1D2018(v37, v38, v39);
  }

  sub_25F1AC3AC(*(v5 + 80), *(v5 + 88));
  sub_25F1D2018(*(v5 + 96), *(v5 + 104), *(v5 + 112));

  return v5;
}

void sub_25F1D07A0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v38[0] = *(a1 + 17);
  *(v38 + 3) = *(a1 + 5);
  v6 = a1[3];
  v37[0] = *(a1 + 2);
  *(v37 + 9) = *(a1 + 41);
  v7 = *v2;
  v8 = *(v2 + 8);
  if (!*(v2 + 16))
  {
    (v7)();
    return;
  }

  if (*(v2 + 16) == 1)
  {
    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v9 = sub_25F30479C();
    __swift_project_value_buffer(v9, qword_281561A40);

    oslog = sub_25F30477C();
    v10 = sub_25F305A0C();
    sub_25F1D2018(v7, v8, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_25F1C53AC(v7, v8, &v36);
      *(v11 + 12) = 2082;
      v30 = v4;
      v31 = v3;
      v32 = v5;
      *v33 = v38[0];
      *&v33[3] = *(v38 + 3);
      v34 = v6;
      v35[0] = v37[0];
      *(v35 + 9) = *(v37 + 9);
      v13 = Callsite.description.getter();
      v15 = sub_25F1C53AC(v13, v14, &v36);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_25F1A2000, oslog, v10, "FulfillOnce failure: %{public}s, callsite: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v12, -1, -1);
      v16 = v11;
LABEL_13:
      MEMORY[0x25F8D9510](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (v7 | v8)
    {
      if (v7 ^ 1 | v8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
        sub_25F30619C();
        sub_25F30627C();
        __break(1u);
      }

      else
      {
        v30 = v4;
        v31 = v3;
        v32 = v5;
        *v33 = *(a1 + 17);
        *&v33[3] = *(a1 + 5);
        v34 = v6;
        v35[0] = *(a1 + 2);
        *(v35 + 9) = *(a1 + 41);
        sub_25F213F98(&v30);
      }

      return;
    }

    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v18 = sub_25F30479C();
    __swift_project_value_buffer(v18, qword_281561A40);
    v19 = a2;
    oslog = sub_25F30477C();
    v20 = sub_25F305A0C();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v21 = 138412546;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v25;
      *v22 = v25;
      *(v21 + 12) = 2080;
      v30 = v4;
      v31 = v3;
      v32 = v5;
      *v33 = v38[0];
      *&v33[3] = *(v38 + 3);
      v34 = v6;
      v35[0] = v37[0];
      *(v35 + 9) = *(v37 + 9);
      v26 = Callsite.description.getter();
      v28 = sub_25F1C53AC(v26, v27, &v36);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_25F1A2000, oslog, v20, "FulfillOnce failure: %@, callsite: %s", v21, 0x16u);
      sub_25F1D313C(v22);
      MEMORY[0x25F8D9510](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x25F8D9510](v23, -1, -1);
      v16 = v21;
      goto LABEL_13;
    }
  }
}

uint64_t FulfillOnceState.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FulfillOnceState.deinit(a1, a2, a3, a4);

  return MEMORY[0x2821FE8D8](v4, 160, 7);
}

uint64_t sub_25F1D0C64@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a2;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FulfillOnceState.State(0, v15, v16, v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - v18;
  (*(v20 + 16))(&v22 - v18, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a5 - 8) + 32))(a7, v19, a5);
    type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, a4, a5, a6);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v12 + 32))(v14, v19, a4);
    v23(v14);
    type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, a4, a5, a6);
    swift_storeEnumTagMultiPayload();
    sub_25F1D0EC4(a1, v14, a4, a5);
    return (*(v12 + 8))(v14, a4);
  }
}

uint64_t sub_25F1D0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FulfillOnceState.State(0, a3, a4, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(*(a3 - 8) + 16))(&v12 - v9, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(v8 + 40))(a1, v10, v7);
}

uint64_t FulfillOnceState.snapshot.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v15 = v4[19];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v9 + 1) = 123;
  v10 = 2;
  v11 = xmmword_25F309350;
  v12 = "snapshot";
  v13 = 8;
  v14 = 2;
  type metadata accessor for FulfillOnceState.State(255, *(v5 + 80), *(v5 + 88), a4);
  v6 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  return SynchronousAccessProviding<>.peek(callsite:)(&v9, v6, WitnessTable);
}

uint64_t sub_25F1D10C4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a6;
  v53 = a3;
  v54 = a2;
  v59 = a8;
  v60 = *(*(*a5 + 88) - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v51 - v14;
  v16 = *(v15 + 80);
  v73 = *(v16 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v51 - v17;
  v61 = v19;
  v21 = type metadata accessor for FulfillOnceState.State(0, v16, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - v23;
  (*(v22 + 16))(&v51 - v23, a1, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = v16;
    v25 = v61;
    v26 = &v24[*(swift_getTupleTypeMetadata2() + 48)];
    *(v72 + 9) = *(v26 + 41);
    v27 = *(v26 + 1);
    v70 = *v26;
    v71 = v27;
    v72[0] = *(v26 + 2);
    v28 = v60;
    v29 = v56;
    (*(v60 + 32))(v56, v24, v25);
    v30 = *(a5 + 96);
    v31 = *(a5 + 104);
    v32 = *(a5 + 112);
    v33 = swift_allocObject();
    *(v33 + 16) = a5;
    v34 = v71;
    *(v33 + 24) = v70;
    *(v33 + 40) = v34;
    *(v33 + 56) = v72[0];
    *(v33 + 65) = *(v72 + 9);
    v35 = *a4;
    v36 = a4[1];
    *(v33 + 88) = *a4;
    *(v33 + 104) = v36;
    v37 = a4[2];
    *(v33 + 120) = v37;
    v38 = *(a4 + 41);
    *(v33 + 129) = v38;
    v65[0] = v35;
    v65[1] = v36;
    v66[0] = v37;
    *(v66 + 9) = v38;
    *&v67 = v30;
    *(&v67 + 1) = v31;
    LOBYTE(v68) = v32;
    *(&v68 + 1) = sub_25F1D31A4;
    v69 = v33;
    v63[4] = v67;
    v63[5] = v68;
    v64 = v33;
    v63[0] = v35;
    v63[1] = v36;
    v63[2] = v66[0];
    v63[3] = v66[1];
    sub_25F1D2054(v30, v31, v32);

    v39 = v62;
    (v58)(v29, v63);
    (*(v28 + 8))(v29, v25);
    result = sub_25F1D31B4(v65);
    if (!v39)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v59, 1, 1, TupleTypeMetadata2);
    }
  }

  else
  {
    (*(v22 + 8))(a1, v21);
    v42 = v18;
    v52 = v18;
    v58 = *(v73 + 32);
    v73 += 32;
    v58(v18, v24, v16);
    v43 = v55;
    v54(v42);
    v44 = v61;
    v45 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
    v46 = v60;
    (*(v60 + 16))(a1, v43, v44);
    v47 = a4[1];
    *v45 = *a4;
    v45[1] = v47;
    v45[2] = a4[2];
    *(v45 + 41) = *(a4 + 41);
    swift_storeEnumTagMultiPayload();
    v48 = swift_getTupleTypeMetadata2();
    v49 = *(v48 + 48);
    v50 = v59;
    v58(v59, v52, v16);
    (*(v46 + 32))(v50 + v49, v43, v44);
    return (*(*(v48 - 8) + 56))(v50, 0, 1, v48);
  }

  return result;
}

__n128 sub_25F1D163C(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = a1[15];
  v3 = a1[16];
  v6 = a1[17];
  v5 = a1[18];
  v21 = *a2;
  v22 = a2[1];
  *v23 = a2[2];
  *&v23[9] = *(a2 + 41);
  v18 = *a3;
  v19 = a3[1];
  *v20 = a3[2];
  *&v20[9] = *(a3 + 41);
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  *v17 = *(a1 + 3);
  *&v17[9] = *(a1 + 57);
  v7 = a1[10];
  v8 = *a1;

  if (v7)
  {

    v11 = v7(v9);
    v7 = v12;
  }

  else
  {

    v11 = 0;
  }

  type metadata accessor for FulfillOnceState.Overfulfilled(0, *(v8 + 80), *(v8 + 88), v10);
  swift_getWitnessTable();
  swift_allocError();
  *v13 = v4;
  *(v13 + 8) = v3;
  *(v13 + 16) = v6;
  *(v13 + 24) = v5;
  *(v13 + 32) = v21;
  *(v13 + 48) = v22;
  *(v13 + 64) = *v23;
  *(v13 + 73) = *&v23[9];
  *(v13 + 137) = *&v20[9];
  *(v13 + 112) = v19;
  *(v13 + 128) = *v20;
  *(v13 + 96) = v18;
  result = v15;
  *(v13 + 201) = *&v17[9];
  *(v13 + 176) = v16;
  *(v13 + 192) = *v17;
  *(v13 + 160) = v15;
  *(v13 + 224) = v11;
  *(v13 + 232) = v7;
  return result;
}

uint64_t FulfillOnceState.fulfill<>(callsite:ifAlreadyFulfilled:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v5[2] = a2;
  v5[3] = a3;
  return FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(a1, nullsub_2, v6, sub_25F1D2088, v5);
}

uint64_t sub_25F1D1840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v2;
  v10[0] = *(a2 + 32);
  *(v10 + 9) = *(a2 + 41);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  v5 = *(a2 + 80);
  v11 = *(a2 + 64);
  v12 = v3;
  v13 = v5;
  v6 = sub_25F1D2054(v11, v3, v5);
  v7 = v4(v6);
  sub_25F1D07A0(v9, v7);

  return sub_25F1D2018(v11, v12, v13);
}

uint64_t sub_25F1D18D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[12];
  v5 = v0[13];

  sub_25F305FAC();
  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](0xD00000000000001FLL, 0x800000025F317710);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](0x616974696E490A2ELL, 0xEF203A64657A696CLL);
  v7 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v8, v5);

  return 0;
}

uint64_t sub_25F1D1A18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[28];
  v5 = v0[29];

  sub_25F305FAC();
  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](0x2073617720, 0xE500000000000000);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](0xD00000000000001CLL, 0x800000025F317740);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v7 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](0x203A6E6961676120, 0xE800000000000000);
  v8 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v8);

  MEMORY[0x25F8D7130](0x6C616974696E490ALL, 0xEE00203A64657A69);
  v9 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v9);

  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v10, v5);

  return 0;
}

Swift::Void __swiftcall OverfulfillHandle.assert()()
{
  v1 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v1;
  v11[0] = *(v0 + 32);
  *(v11 + 9) = *(v0 + 41);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  v12 = *(v0 + 64);
  v13 = v2;
  v14 = v4;
  v5 = sub_25F1D2054(v12, v2, v4);
  v6 = v3(v5);
  sub_25F1D07A0(v10, v6);

  v7 = v12;
  v8 = v13;
  v9 = v14;

  sub_25F1D2018(v7, v8, v9);
}

uint64_t sub_25F1D1D10(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v33 = a4;
  v34 = a6;
  v14 = *(*v9 + 80);
  v15 = *(*v9 + 88);
  v32 = a9;
  v16 = type metadata accessor for FulfillOnceState.State(0, v14, v15, a4);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  v20 = a2[1];
  v37 = *a2;
  v38 = v20;
  v39[0] = a2[2];
  *(v39 + 9) = *(a2 + 41);
  v22 = *a5;
  v21 = a5[1];
  LOBYTE(a5) = *(a5 + 16);
  (*(*(v14 - 8) + 16))(&v31 - v18, a1, v14);
  swift_storeEnumTagMultiPayload();
  v23 = sub_25F203E0C(v19, v16);
  (*(v17 + 8))(v19, v16);
  *(v9 + 152) = v23;
  v24 = v38;
  *(v9 + 16) = v37;
  *(v9 + 32) = v24;
  *(v9 + 48) = v39[0];
  *(v9 + 57) = *(v39 + 9);
  v25 = v33;
  v26 = v34;
  *(v9 + 80) = a3;
  *(v9 + 88) = v25;
  *(v9 + 96) = v22;
  *(v9 + 104) = v21;
  *(v9 + 112) = a5;
  v27 = v35;
  v28 = v36;
  *(v9 + 120) = v26;
  *(v9 + 128) = v27;
  v29 = v32;
  *(v9 + 136) = v28;
  *(v9 + 144) = v29;
  return v9;
}

uint64_t sub_25F1D2018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_25F1D2054(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_25F1D2078(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F1D2088(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v4;
  v9 = *(a2 + 96);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  return v3(v8);
}

uint64_t sub_25F1D2198(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F1D2228(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
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

void sub_25F1D235C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((*(*(*(a4 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 57 > v5)
  {
    v5 = ((*(*(*(a4 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
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

uint64_t sub_25F1D2530(uint64_t a1)
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

uint64_t sub_25F1D25AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 32) - 8) + 64))
  {
    v3 = *(*(*(a3 + 32) - 8) + 64);
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

void sub_25F1D26D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 32) - 8) + 64);
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

uint64_t sub_25F1D289C(uint64_t a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_25F1D2900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  if (v10)
  {
    v13 = *(*(v6 - 8) + 64);
  }

  else
  {
    v13 = *(*(v6 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(*(a3 + 16) - 8) + 64) + v12;
  v15 = a2 - v11;
  if (a2 > v11)
  {
    v16 = v13 + (v14 & ~v12);
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_12;
    }

    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v19 <= 0xFF)
      {
        if (v19 < 2)
        {
          goto LABEL_32;
        }

LABEL_12:
        v18 = *(a1 + v16);
        if (!*(a1 + v16))
        {
          goto LABEL_32;
        }

LABEL_19:
        v20 = (v18 - 1) << v17;
        if (v16 > 3)
        {
          v20 = 0;
        }

        if (v16)
        {
          if (v16 <= 3)
          {
            v21 = v16;
          }

          else
          {
            v21 = 4;
          }

          if (v21 > 2)
          {
            if (v21 == 3)
            {
              v22 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v22 = *a1;
            }
          }

          else if (v21 == 1)
          {
            v22 = *a1;
          }

          else
          {
            v22 = *a1;
          }
        }

        else
        {
          v22 = 0;
        }

        return v11 + (v22 | v20) + 1;
      }

      v18 = *(a1 + v16);
      if (*(a1 + v16))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_32:
  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v24 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v24 = (*(v8 + 48))((a1 + v14) & ~v12, v9, v6);
  }

  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25F1D2B18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = v12 + v13;
  v17 = ((v12 + v13) & ~v13) + *(*(v9 - 8) + 64);
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 == 0 || !v19)
  {
    goto LABEL_22;
  }

  if (v18 > 3)
  {
    v6 = 1;
    if (v15 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v21 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
  if (!HIWORD(v21))
  {
    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v6 = v22;
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    if (v15 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v6 = 4;
  if (v15 < a2)
  {
LABEL_23:
    v23 = ~v15 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> (8 * v18)) + 1;
      if (v18)
      {
        v25 = v23 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v25;
            if (v6 > 1)
            {
LABEL_65:
              if (v6 == 2)
              {
                *&a1[v18] = v24;
              }

              else
              {
                *&a1[v18] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v6 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v6)
    {
      a1[v18] = v24;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v18] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v14 >= 2)
  {
    if (a2 >= v14)
    {
      if (v17 <= 3)
      {
        v28 = ~(-1 << (8 * v17));
      }

      else
      {
        v28 = -1;
      }

      if (v17)
      {
        v29 = v28 & (a2 - v14);
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v17);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *a1 = v29;
            a1[2] = BYTE2(v29);
          }

          else
          {
            *a1 = v29;
          }
        }

        else if (v30 == 1)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else if (v8 >= v11)
    {
      v31 = *(v7 + 56);
      v32 = a2 + 1;

      v31(a1, v32);
    }

    else
    {
      v26 = *(v10 + 56);
      v27 = a2 + 1;

      v26(&a1[v16] & ~v13, v27, v11, v9);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS22FulfillmentFailureModeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F1D2EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F1D2EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25F1D2F34(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25F1D2F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1D2FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F1D3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25F1D3098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_25F1D30E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F1D313C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53838, &qword_25F309710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1D31FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_25F1D327C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_25F1D32C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F1D3358@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, _OWORD *)@<X5>, _BYTE *a6@<X8>)
{
  if (*(a1 + 57))
  {
    v31 = a6;
    v11 = *(a4 + 96);
    v12 = *(a4 + 104);
    v13 = *(a4 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    v16 = *(a1 + 16);
    *(v15 + 24) = *a1;
    *(v15 + 40) = v16;
    *(v15 + 56) = *(a1 + 32);
    *(v15 + 65) = *(a1 + 41);
    v17 = *a3;
    v18 = a3[1];
    *(v15 + 88) = *a3;
    *(v15 + 104) = v18;
    v19 = a3[2];
    *(v15 + 120) = v19;
    v20 = *(a3 + 41);
    *(v15 + 129) = v20;
    v26[0] = v17;
    v26[1] = v18;
    *v27 = v19;
    *&v27[9] = v20;
    *&v28 = v11;
    *(&v28 + 1) = v12;
    LOBYTE(v29) = v13;
    *(&v29 + 1) = sub_25F1D3EE0;
    v30 = v15;
    v24[4] = v28;
    v24[5] = v29;
    v25 = v15;
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = *v27;
    v24[3] = *&v27[16];
    sub_25F1D2054(v11, v12, v13);

    a5(v21, v24);
    result = sub_25F1D31B4(v26);
    if (!v6)
    {
      *v31 = 1;
    }
  }

  else
  {
    result = a2();
    v23 = a3[1];
    *a1 = *a3;
    *(a1 + 16) = v23;
    *(a1 + 32) = a3[2];
    *(a1 + 41) = *(a3 + 41);
    *(a1 + 57) = 1;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_25F1D357C@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t *, __int128 *)@<X5>, uint64_t *a6@<X7>, uint64_t a7@<X8>, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v13 = a1[1];
  v53 = *a1;
  v54 = v13;
  v57 = *(a1 + 32);
  v14 = a1[3];
  v55 = a1[2];
  v56 = v14;
  v15 = v53;
  v16 = v54;
  if ((v57 & 0x100) != 0)
  {
    v46 = v53;
    v17 = *(a4 + 96);
    v18 = *(a4 + 104);
    v19 = *(a4 + 112);
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = *(&v15 + 1);
    *(v21 + 32) = v16;
    *(v21 + 40) = *(a1 + 24);
    *(v21 + 56) = *(a1 + 40);
    *(v21 + 65) = *(a1 + 49);
    v22 = *a3;
    v23 = a3[1];
    *(v21 + 88) = *a3;
    *(v21 + 104) = v23;
    v24 = a3[2];
    *(v21 + 120) = v24;
    v25 = *(a3 + 41);
    *(v21 + 129) = v25;
    *(v49 + 9) = v25;
    v47 = v22;
    v48 = v23;
    v49[0] = v24;
    *&v50 = v17;
    *(&v50 + 1) = v18;
    LOBYTE(v51) = v19;
    *(&v51 + 1) = a10;
    v52 = v21;
    v43 = v50;
    v44 = v51;
    v45 = v21;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v42 = v49[1];
    sub_25F1B7174(&v53, v38, a6, a8);
    sub_25F1D2054(v17, v18, v19);

    v26 = v58;
    a5(&v46, &v39);

    result = sub_25F1D31B4(&v47);
    if (!v26)
    {
      *a7 = 0u;
      *(a7 + 16) = 0u;
    }
  }

  else
  {
    v28 = a1[3];
    v49[0] = a1[2];
    v49[1] = v28;
    LOWORD(v50) = *(a1 + 32);
    v29 = a1[1];
    v47 = *a1;
    v48 = v29;
    sub_25F1B7174(&v53, &v39, a6, a8);
    sub_25F1AF698(&v47, a6, a8);
    v39 = v15;
    *&v40 = v16;
    a2(v38, &v39);
    v31 = a3[1];
    *(a1 + 8) = *a3;
    v32 = v38[0];
    *a1 = v38[0];
    *(a1 + 24) = v31;
    *(a1 + 40) = a3[2];
    *(a1 + 49) = *(a3 + 41);
    *(a1 + 65) = 1;
    v33 = v40;
    *a7 = v39;
    *(a7 + 16) = v33;
    *(a7 + 24) = v32;
  }

  return result;
}

__n128 sub_25F1D37C8(uint64_t a1, __int128 *a2, _OWORD *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(a1 + 128);
  v12 = *(a1 + 144);
  v25 = *(a1 + 136);
  v26 = *(a1 + 120);
  v27 = *(a1 + 16);
  v28 = *(a1 + 32);
  *v29 = *(a1 + 48);
  *&v29[9] = *(a1 + 57);
  v13 = *(a1 + 80);

  if (v13)
  {

    v15 = v13(v14);
    v13 = v16;
  }

  else
  {

    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_25F1D3F1C(a6, a4, a5);
  swift_allocError();
  *v17 = v26;
  *(v17 + 8) = v11;
  *(v17 + 16) = v25;
  *(v17 + 24) = v12;
  v19 = a2[1];
  v18 = a2[2];
  v20 = *a2;
  *(v17 + 73) = *(a2 + 41);
  *(v17 + 48) = v19;
  *(v17 + 64) = v18;
  *(v17 + 32) = v20;
  v21 = *(a3 + 41);
  v23 = a3[1];
  v22 = a3[2];
  *(v17 + 96) = *a3;
  *(v17 + 112) = v23;
  *(v17 + 128) = v22;
  *(v17 + 137) = v21;
  *(v17 + 176) = v28;
  *(v17 + 192) = *v29;
  *(v17 + 201) = *&v29[9];
  result = v27;
  *(v17 + 160) = v27;
  *(v17 + 224) = v15;
  *(v17 + 232) = v13;
  return result;
}

uint64_t (*AutoCancelling.wrappedValue.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;

  return sub_25F1D3978;
}

uint64_t AutoCancelling.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t AutoCancelling.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t AutoCancelling.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  v10 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 48);
    while (v4 < *(v1 + 16))
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AutoCancelling.swift";
      v13 = 126;
      v14 = 2;
      v15 = xmmword_25F3097F0;
      v16 = "deinit";
      v17 = 6;
      v18 = 2;
      v8 = *(v7 + 152);
      MEMORY[0x28223BE20](result);

      os_unfair_lock_lock(v8 + 19);
      sub_25F1D3DD4(&v8[4], &v11);
      os_unfair_lock_unlock(v8 + 19);
      if ((v11 & 1) == 0)
      {
        v6();
      }

      ++v4;

      v5 += 3;
      if (v10 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v9;
  }

  return result;
}

uint64_t AutoCancelling.__deallocating_deinit()
{
  AutoCancelling.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double AutoCancelling.projectedValue.getter@<D0>(uint64_t a1@<X8>)
{
  *&v5 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AutoCancelling.swift";
  *(&v5 + 1) = 126;
  v6 = 2;
  v7 = xmmword_25F309800;
  v8 = "projectedValue";
  v9 = 14;
  v10 = 2;

  CancellationToken.init(callsite:didCancel:)(&v5, sub_25F1D3DEC, v1, &v11);
  v3 = v12;
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F1D3C40(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = MEMORY[0x277D84F90];
  v7 = *(v1 + 16);
  if (!v7)
  {
  }

  v2 = 0;
  v3 = (v1 + 48);
  while (v2 < *(v1 + 16))
  {
    v4 = *(v3 - 2);
    v5 = *v3;
    v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AutoCancelling.swift";
    v10 = 126;
    v11 = 2;
    v12 = xmmword_25F309810;
    v13 = "projectedValue";
    v14 = 14;
    v15 = 2;
    v6 = *(v5 + 152);
    MEMORY[0x28223BE20](result);

    os_unfair_lock_lock(v6 + 19);
    sub_25F1D3F70(&v6[4], &v8);
    os_unfair_lock_unlock(v6 + 19);
    if ((v8 & 1) == 0)
    {
      v4();
    }

    ++v2;

    v3 += 3;
    if (v7 == v2)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1D3F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F1D3F88(uint64_t result, void *a2)
{
  v44 = *(result + 16);
  if (v44)
  {
    v2 = a2;
    v3 = 0;
    v43 = result + 32;
LABEL_5:
    v5 = *(v43 + 8 * v3);
    v45 = v3 + 1;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    v52 = *v2;
    *v2 = 0x8000000000000000;
    v47 = v5 + 64;
    v48 = v5;
    v8 = -1 << *(v5 + 32);
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v5 + 64);
    v46 = (63 - v8) >> 6;

    for (i = 0; ; i = v18)
    {
      v17 = v10;
      v18 = i;
      if (!v10)
      {
        break;
      }

LABEL_16:
      v4 = v7;
      v50 = isUniquelyReferenced_nonNull_native;
      v20 = __clz(__rbit64(v17)) | (v18 << 6);
      v21 = (*(v48 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(v48 + 56) + 24 * v20;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);

      sub_25F1B708C(v25, v26, v27);

      sub_25F1B708C(v25, v26, v27);

      sub_25F1D4C04(v25, v26, v27);
      if (!v22)
      {
LABEL_4:
        sub_25F1BF034(v48);

        v2 = a2;
        *a2 = v4;

        v3 = v45;
        if (v45 == v44)
        {
          return result;
        }

        goto LABEL_5;
      }

      v49 = v26;
      v28 = v27;
      v29 = v4;
      v30 = sub_25F219234(v23, v22);
      v32 = v4[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_28;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if ((v50 & 1) == 0)
        {
          v51 = v30;
          sub_25F21D8C8();
          v30 = v51;
        }
      }

      else
      {
        sub_25F219C5C(v35, v50 & 1);
        v30 = sub_25F219234(v23, v22);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_30;
        }
      }

      v10 = (v17 - 1) & v17;
      v7 = v52;
      if (v36)
      {
        v12 = v30;

        v13 = v52[7] + 24 * v12;
        v14 = *v13;
        v15 = *(v13 + 8);
        *v13 = v25;
        *(v13 + 8) = v49;
        v16 = *(v13 + 16);
        *(v13 + 16) = v28;
        sub_25F1D4C04(v14, v15, v16);
      }

      else
      {
        v52[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v52[6] + 16 * v30);
        *v38 = v23;
        v38[1] = v22;
        v39 = v52[7] + 24 * v30;
        *v39 = v25;
        *(v39 + 8) = v49;
        *(v39 + 16) = v28;
        v40 = v52[2];
        v34 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v34)
        {
          goto LABEL_29;
        }

        v52[2] = v41;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

    v19 = i;
    while (1)
    {
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v18 >= v46)
      {
        v4 = v7;
        goto LABEL_4;
      }

      v17 = *(v47 + 8 * v18);
      ++v19;
      if (v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_25F30665C();
    __break(1u);
  }

  return result;
}

uint64_t AnalyticsLogger.logEvent(identifierSuffix:makeFields:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3();
  (*(a6 + 8))(a1, a2, v10, a5, a6);
}

unint64_t sub_25F1D438C(uint64_t a1)
{
  v3 = sub_25F1B57B0(MEMORY[0x277D84F90]);
  sub_25F1D3F88(a1, &v3);
  return v3;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v10 = inited + 32;
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 5;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v11;
  *(inited + 56) = a4;
  *(inited + 64) = v12;

  v13 = sub_25F1B57B0(v9);
  swift_setDeallocating();
  sub_25F1D4B20(v10);
  return v13;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  if ((v5 & 0x100) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 5;
  }

  else
  {
    v9 = sub_25F305FFC();
    v11 = 0;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  v12 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v12;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v8 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v9 = inited + 32;
  if (v6 == 2)
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  *(inited + 40) = a2;
  *(inited + 48) = a3 & 1;
  *(inited + 56) = 0;
  *(inited + 64) = v10;

  v11 = sub_25F1B57B0(v8);
  swift_setDeallocating();
  sub_25F1D4B20(v9);
  return v11;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v10 = inited + 32;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (a4)
  {
    v12 = 5;
  }

  else
  {
    v12 = 2;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v11;
  *(inited + 56) = 0;
  *(inited + 64) = v12;

  v13 = sub_25F1B57B0(v9);
  swift_setDeallocating();
  sub_25F1D4B20(v10);
  return v13;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  result = swift_initStackObject();
  v9 = result;
  *(result + 16) = xmmword_25F3077D0;
  *(result + 32) = a1;
  v10 = result + 32;
  *(result + 40) = a2;
  if (a4)
  {
    *(result + 48) = 0;
    *(result + 56) = 0;
    v11 = 5;
LABEL_5:
    *(result + 64) = v11;

    v12 = sub_25F1B57B0(v9);
    swift_setDeallocating();
    sub_25F1D4B20(v10);
    return v12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    *(result + 48) = a3;
    *(result + 56) = 0;
    v11 = 2;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v10 = inited + 32;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (a4)
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v11;
  *(inited + 56) = 0;
  *(inited + 64) = v12;

  v13 = sub_25F1B57B0(v9);
  swift_setDeallocating();
  sub_25F1D4B20(v10);
  return v13;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;

  sub_25F1D4B88(a3, a4);
  sub_25F1D4B9C(a3, a4);
  *(inited + 32) = a1;
  if (a4 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v9;
  if (a4 >> 60 == 15)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  *(inited + 56) = v10;
  *(inited + 64) = v11;
  sub_25F1D4B88(a3, a4);
  v12 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v12;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;

  sub_25F1B708C(a3, a4, v5);
  sub_25F1D4C04(a3, a4, v5);
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_25F1B708C(a3, a4, v5);

  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 64) = v5;
  v11 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v11;
}

unint64_t static AnalyticsFieldBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  *(inited + 48) = sub_25F30685C();
  *(inited + 56) = v6;
  *(inited + 64) = 0;
  v7 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v7;
}

uint64_t sub_25F1D4B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53908, qword_25F30D670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1D4B88(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F1B70AC(result, a2);
  }

  return result;
}

uint64_t sub_25F1D4B9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F1D4BB0(a1, a2);
  }

  return a1;
}

uint64_t sub_25F1D4BB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25F1D4C04(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_25F1D4BB0(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t Ref.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F1D4D28(uint64_t a1)
{
  sub_25F30671C();
  Ref.hash(into:)();
  return sub_25F30676C();
}

uint64_t Set.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v2 = sub_25F30568C();
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t Set.remove<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_25F30569C();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t Set.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Ref(0, a3, a3, a4);
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  v4 = sub_25F3056BC();
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t Set.forEach<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Ref(255, a4, a3, a4);
  swift_getWitnessTable();
  sub_25F3056FC();
  swift_getWitnessTable();
  return sub_25F3051BC();
}

uint64_t sub_25F1D4FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t DepthFirstRecursiveIterator.init(rootElements:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecursiveIterator = type metadata accessor for DepthFirstRecursiveIterator(0, v14, v15, v14);
  *(a6 + *(RecursiveIterator + 36)) = 0;
  (*(v11 + 16))(v13, a1, a4);
  sub_25F3050DC();
  result = (*(v11 + 8))(a1, a4);
  v18 = (a6 + *(RecursiveIterator + 40));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t DepthFirstRecursiveIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  v60 = *(a1 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - v14;
  v68 = *(a1 + 24);
  v69 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v51 - v17;
  v18 = sub_25F305C1C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v66 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v65 = &v51 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v26 = *(a1 + 36);
  v27 = *(v2 + v26);
  v70 = v2;
  v64 = a1;
  v62 = v9;
  v53 = v27;
  v54 = v26;
  if (v27)
  {
    sub_25F305ECC();
  }

  else
  {
    (*(v16 + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  v28 = *(v19 + 16);
  v67 = a2;
  v28(v25, a2, v18);
  v63 = v16;
  v29 = *(v16 + 48);
  v71 = AssociatedTypeWitness;
  v30 = v29(v25, 1, AssociatedTypeWitness);
  v31 = *(v19 + 8);
  result = v31(v25, v18);
  if (v30 == 1)
  {
    v52 = v28;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v33 = v65;
    sub_25F305CDC();
    v34 = v67;
    v31(v67, v18);
    (*(v19 + 32))(v34, v33, v18);
    v35 = v66;
    v52(v66, v34, v18);
    if (v29(v35, 1, v71) == 1)
    {
      return v31(v35, v18);
    }

    else
    {
      v36 = v63;
      v37 = v61;
      (*(v63 + 32))(v61, v35, v71);
      v38 = v64;
      v39 = v70;
      v40 = v70 + *(v64 + 40);
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = v62;
      (*v40)(v37);
      v44 = v69;
      v45 = *(v69 - 8);
      if ((*(v45 + 48))(v43, 1, v69) == 1)
      {
        (*(v56 + 8))(v43, v57);
        return (*(v36 + 8))(v37, v71);
      }

      else
      {
        v46 = v55;
        Sequence.depthFirstRecursiveIterator(dataSource:)(v41, v42, v44, v68);
        (*(v45 + 8))(v43, v44);
        v47 = v60;
        v48 = v58;
        (*(v60 + 32))(v58, v46, v38);
        (*(v47 + 16))(v59, v48, v38);
        swift_getWitnessTable();
        v49 = v71;
        v50 = sub_25F305EEC();
        (*(v47 + 8))(v48, v38);
        (*(v36 + 8))(v37, v49);

        *(v39 + v54) = v50;
      }
    }
  }

  return result;
}

uint64_t BreadthFirstRecursiveIterator.init(rootElements:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecursiveIterator = type metadata accessor for BreadthFirstRecursiveIterator(0, v14, v15, v14);
  v17 = *(RecursiveIterator + 36);
  swift_getAssociatedTypeWitness();
  *(a6 + v17) = sub_25F3052DC();
  (*(v11 + 16))(v13, a1, a4);
  sub_25F3050DC();
  result = (*(v11 + 8))(a1, a4);
  v19 = (a6 + *(RecursiveIterator + 40));
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t BreadthFirstRecursiveIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v4 = *(a1 + 16);
  v54 = sub_25F305C1C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v55 = &v49 - v5;
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v49 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v69 = sub_25F305C1C();
  v61 = *(v69 - 8);
  v10 = MEMORY[0x28223BE20](v69);
  v12 = &v49 - v11;
  v58 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v49 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v68 = &v49 - v19;
  v20 = sub_25F305C1C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v59 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v49 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  v52 = v6;
  v56 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v76;
  v70 = v2;
  v66 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v73 = *(v21 + 16);
  v74 = v21 + 16;
  v73(v27, v29, v20);
  v30 = *(v60 + 48);
  v75 = AssociatedTypeWitness;
  v71 = v30;
  v72 = v60 + 48;
  v31 = v30(v27, 1, AssociatedTypeWitness);
  v77 = *(v21 + 8);
  v78 = v21 + 8;
  if (v31 == 1)
  {
    v32 = (v58 + 48);
    v64 = (v58 + 24);
    v65 = (v58 + 32);
    v62 = (v21 + 32);
    v63 = (v58 + 8);
    ++v61;
    while (1)
    {
      v77(v27, v20);
      v34 = a1;
      v35 = v70;
      v79 = *(v70 + *(a1 + 36));
      v36 = sub_25F30539C();
      swift_getWitnessTable();
      if (sub_25F30588C())
      {
        break;
      }

      Array.popFirst()(v36, v12);
      if ((*v32)(v12, 1, v9) == 1)
      {
        (*v61)(v12, v69);
        v33 = v76;
      }

      else
      {
        v37 = v35;
        v38 = v68;
        (*v65)(v68, v12, v9);
        (*v64)(v37, v38, v9);
        v39 = v67;
        sub_25F305CDC();
        (*v63)(v38, v9);
        v33 = v76;
        v77(v76, v20);
        (*v62)(v33, v39, v20);
      }

      v73(v27, v33, v20);
      if (v71(v27, 1, v75) != 1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v34 = a1;
    v77(v27, v20);
  }

  v40 = v59;
  v73(v59, v76, v20);
  v41 = v75;
  if (v71(v40, 1, v75) == 1)
  {
    return (v77)(v40, v20);
  }

  v43 = v60;
  v44 = v57;
  (*(v60 + 32))(v57, v40, v41);
  v45 = v55;
  (*(v70 + *(v34 + 40)))(v44);
  if ((*(*(v56 - 8) + 48))(v45, 1, v56) == 1)
  {
    (*(v53 + 8))(v45, v54);
  }

  else
  {
    v46 = v49;
    sub_25F3050DC();
    v47 = v58;
    v48 = v50;
    (*(v58 + 32))(v50, v46, v9);
    (*(v47 + 16))(v51, v48, v9);
    sub_25F30539C();
    sub_25F30533C();
    (*(v47 + 8))(v48, v9);
  }

  return (*(v43 + 8))(v44, v41);
}

uint64_t sub_25F1D6224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v5);

  return a5(v12, a1, a2, a3, a4);
}

uint64_t sub_25F1D6320(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_25F305EDC();
    result = sub_25F305C1C();
    if (v3 <= 0x3F)
    {
      result = sub_25F1D67AC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F1D6410(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_25F1D65B0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

unint64_t sub_25F1D67AC()
{
  result = qword_27FD53A10[0];
  if (!qword_27FD53A10[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27FD53A10);
  }

  return result;
}

unint64_t sub_25F1D67FC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_25F30539C();
    if (v3 <= 0x3F)
    {
      result = sub_25F1D67AC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F1D68B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_25F1D6A48(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = (a2 - 1);
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_25F1D6C6C(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  sub_25F1D6CC0(v6, a2, a3, v3, *(v3 + 80));
  return v8;
}

uint64_t sub_25F1D6CC0(_OWORD *a1, void (*a2)(uint64_t), uint64_t x2_0, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Future(0, a4, x2_0, a3);
  sub_25F1D6D74(a1, v8, v9, v10);
  v12 = v11;

  swift_dynamicCast();
  a2(v12);
}

uint64_t sub_25F1D6D74(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v14[0] = *a1;
  v14[1] = v5;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v6 = *(v4 + 80);
  type metadata accessor for PromiseFuture(0, v6, a3, a4);
  swift_allocObject();
  v10 = sub_25F1D6F1C(v14, v7, v8, v9);
  type metadata accessor for Promise(0, v6, v11, v12);
  *(swift_allocObject() + 16) = v10;
}

uint64_t static Future.create(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void (*a10)(uint64_t))
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v10 = sub_25F1D6D74(&v13, a2, a3, a4);
  a10(v11);

  return v10;
}

uint64_t sub_25F1D6EE8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25F1D6F1C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 200);
  v7 = type metadata accessor for FutureState(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v14 = type metadata accessor for FutureTermination(0, v6, v12, v13);
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = sub_25F203E0C(v10, v7);
  (*(v8 + 8))(v10, v7);
  v4[13] = v15;
  return sub_25F2E95EC(v20, v16, v17, v18);
}

uint64_t sub_25F1D7070(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FutureTermination(0, *(*v4 + 200), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v15 - v8);
  v10 = a1[1];
  *v9 = *a1;
  v9[1] = v10;
  v9[2] = a1[2];
  *(v9 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  sub_25F1D7174(v9, v11, v12, v13);
  return (*(v7 + 8))(v9, v6);
}

void sub_25F1D71EC(id a1, char a2)
{
  v4 = a1;
  if (a2)
  {
    a1 = a1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *&v9 = v4;
  v11[25] = v5;
  v6 = *(v2 + 104);
  MEMORY[0x28223BE20](a1);

  os_unfair_lock_lock((v6 + 76));
  sub_25F1D97F8((v6 + 16), &v8);
  os_unfair_lock_unlock((v6 + 76));
  v7 = v8;

  if (v7)
  {
    v12[0] = v9;
    v12[1] = v10;
    *v13 = *v11;
    *&v13[10] = *&v11[10];
    sub_25F1C0934(v12);
  }

  sub_25F1D9424(v4, a2 & 1);
}

uint64_t sub_25F1D7358(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v15 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - v7);
  sub_25F1D9220(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v8 = *v5;
  }

  else
  {
    sub_25F1D932C(v5, v8);
  }

  v9 = swift_storeEnumTagMultiPayload();
  v10 = *(v1 + 104);
  MEMORY[0x28223BE20](v9);
  *(&v15 - 2) = v8;
  v11 = *(*v10 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  sub_25F1D9290(v10 + v11, &v16);
  os_unfair_lock_unlock((v10 + v12));
  v13 = v16;

  if (v13)
  {
    sub_25F1C0AC8(v8);
  }

  return sub_25F1D92C4(v8);
}

void sub_25F1D75B4(void *a1, uint64_t a2, char a3)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v12[25] = a3 & 1;
  v7 = *(v3 + 104);
  sub_25F1D93AC(a1, a2, a3 & 1);

  os_unfair_lock_lock((v7 + 76));
  sub_25F1D9390((v7 + 16), &v9);
  os_unfair_lock_unlock((v7 + 76));
  v8 = v9;

  if (v8)
  {
    v13[0] = v10;
    v13[1] = v11;
    *v14 = *v12;
    *&v14[10] = *&v12[10];
    sub_25F1C0E30(v13);
  }

  sub_25F1D93BC(a1, a2, a3 & 1);
}

uint64_t sub_25F1D7710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FutureTermination(0, *(*v4 + 200), a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v9 = sub_25F30678C();
  sub_25F3020F8(v9, v8);
  sub_25F1D7174(v8, v10, v11, v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F1D782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FutureTermination(0, *(*v4 + 200), a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v9 = sub_25F30678C();
  sub_25F3020F8(v9, v8);
  sub_25F1D7960(v8, v10, v11, v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25F1D7960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v20 = v4[13];
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/PromiseFuture.swift";
  *(&v14 + 1) = 125;
  v15 = 2;
  v16 = xmmword_25F309AC0;
  v17 = "tryTransition(to:)";
  v18 = 18;
  v19 = 2;
  v12 = *(v7 + 200);
  v13 = a1;
  type metadata accessor for FutureState(255, v12, a3, a4);
  v8 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v14, sub_25F1D91EC, &v11, v8, MEMORY[0x277D839B0], WitnessTable);

  if (!v5 && v21 == 1)
  {
    return sub_25F2EA104(a1);
  }

  return result;
}

uint64_t sub_25F1D7AA4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, uint64_t a5@<X3>)
{
  v34 = a4;
  v35 = a2;
  v7 = type metadata accessor for FutureTermination(0, a3, a3, a5);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v18 = type metadata accessor for FutureState(0, a3, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  (*(v19 + 16))(&v32 - v20, a1, v18);
  if ((*(v8 + 48))(v21, 1, v7) == 1)
  {
    (*(v19 + 8))(a1, v18);
    (*(v8 + 16))(a1, v35, v7);
    result = (*(v8 + 56))(a1, 0, 1, v7);
    *v34 = 1;
  }

  else
  {
    v23 = v34;
    (*(v8 + 32))(v15, v21, v7);
    v24 = FutureTermination.isCompleted.getter(v7);
    v25 = v35;
    if (v24 && FutureTermination.isCompleted.getter(v7))
    {
      v26 = *(v8 + 16);
      v26(v13, v15, v7);
      v27 = v33;
      v26(v33, v25, v7);
      type metadata accessor for PromiseFuture.TransitionError(0, a3, v28, v29);
      swift_getWitnessTable();
      swift_allocError();
      sub_25F1D7E00(v13, v27, a3, v30, v31);
      swift_willThrow();
      return (*(v8 + 8))(v15, v7);
    }

    else
    {
      result = (*(v8 + 8))(v15, v7);
      *v23 = 0;
    }
  }

  return result;
}

uint64_t sub_25F1D7E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for FutureTermination(0, a3, a3, a5);
  v14 = *(*(v9 - 8) + 32);
  (v14)((v9 - 8), a4, a1, v9);
  v12 = a4 + *(type metadata accessor for PromiseFuture.TransitionError(0, a3, v10, v11) + 28);

  return v14(v12, a2, v9);
}

uint64_t sub_25F1D7EC8(uint64_t a1)
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001ELL, 0x800000025F317900);
  type metadata accessor for FutureTermination(0, *(a1 + 16), v2, v3);
  swift_getWitnessTable();
  sub_25F30654C();
  MEMORY[0x25F8D7130](544175136, 0xE400000000000000);
  sub_25F30654C();
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25F1D7FD0()
{
  v0 = Future.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t Promise.track(future:on:)(uint64_t result, uint64_t *a2)
{
  if (*(v2 + 16) != result)
  {
    v3 = result;
    v4 = a2[1];
    v6 = *a2;
    v5 = v6;
    v7 = v4;

    Future.observeCompletion(on:_:)(&v6, sub_25F1D8EEC, v2);

    v6 = v5;
    v7 = v4;

    Future.observeCancelation(on:_:)(&v6, sub_25F1D8F10, v2);

    v6 = v5;
    v7 = v4;

    Future.observeCancelation(on:_:)(&v6, sub_25F1D8F58, v3);
  }

  return result;
}

uint64_t Promise.cancel(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_25F1D7070(v6, a2, a3, a4);
}

uint64_t Promise.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Promise.succeed(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  (*(*(v3 - 8) + 16))(&v12 - v6, a1, v3);
  swift_storeEnumTagMultiPayload();
  sub_25F1D7710(v7, v8, v9, v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t Promise.fail(with:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = sub_25F30678C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  *(&v11 - v4) = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  sub_25F1D7710(v5, v7, v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Promise<A>.trySucceed()()
{
  v2 = *(v0 + 16);
  v9[25] = 0;
  v3 = *(v2 + 104);

  os_unfair_lock_lock((v3 + 76));
  sub_25F1D8FF8((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 76));
  if (v1)
  {
  }

  v5 = v6;

  if (v5)
  {
    v10[0] = v7;
    v10[1] = v8;
    v11[0] = *v9;
    *(v11 + 10) = *&v9[10];
    return sub_25F1C0934(v10);
  }

  return result;
}

uint64_t Promise.trySucceed(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  (*(*(v3 - 8) + 16))(v12 - v6, a1, v3);
  swift_storeEnumTagMultiPayload();
  sub_25F1D782C(v7, v8, v9, v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t Promise.tryFail(with:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = sub_25F30678C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  *(&v11 - v4) = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  sub_25F1D782C(v5, v7, v8, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Promise.fulfill(on:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_25F30490C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_25F1D9010;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  sub_25F30492C();
  v18[1] = MEMORY[0x277D84F90];
  sub_25F1D9034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  sub_25F305E5C();
  MEMORY[0x25F8D7C70](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_25F1D8ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v15 = v5;
  v16 = a2;
  v17 = a3;
  sub_25F1BFDA0(sub_25F1D9810, &v14[-v8]);
  sub_25F1D7710(v9, v10, v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_25F1D8C38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t Promise.fulfill(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v15 = v5;
  v16 = a1;
  v17 = a2;
  sub_25F1BFDA0(sub_25F1D90F0, &v14[-v8]);
  sub_25F1D7710(v9, v10, v11, v12);
  return (*(v7 + 8))(v9, v6);
}

BOOL sub_25F1D8DD4@<W0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  result = sub_25F2C10D0(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_25F1D8E28@<W0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F2C12EC(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_25F1D8E58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void (*a9)(uint64_t), uint64_t a10)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  sub_25F1D6CC0(&v12, a9, a10, v10, *(v10 + 80));
  return v19;
}

uint64_t sub_25F1D8EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  return sub_25F1D6D74(&v9, a2, a3, a4);
}

uint64_t sub_25F1D8F10(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_25F1D7070(v6, a2, a3, a4);
}

uint64_t sub_25F1D8F58(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return (*(*v1 + 192))(v4);
}

uint64_t sub_25F1D8FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  return sub_25F1D7070(&v9, a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F1D9034()
{
  result = qword_27FD53A98;
  if (!qword_27FD53A98)
  {
    sub_25F30490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53A98);
  }

  return result;
}

unint64_t sub_25F1D908C()
{
  result = qword_27FD53AA8[0];
  if (!qword_27FD53AA8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD53AA0, &qword_25F30C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD53AA8);
  }

  return result;
}

uint64_t sub_25F1D9220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_25F1D9290@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F2C12EC(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F1D92C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1D932C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_25F1D93AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_25F1D93BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

BOOL sub_25F1D93CC@<W0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v9[0] = v5[2];
  *(v9 + 10) = *(v5 + 42);
  result = sub_25F2C10D0(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_25F1D9424(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F1D9430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FutureTermination(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1D94A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x39)
  {
    v4 = 57;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = *(v3 + 80) & 0xF8 | 7;
  v6 = ((v4 + 1 + v5) & ~v5) + v4 + 1;
  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v4);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_25F1D95FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x39)
  {
    v6 = 57;
  }

  v7 = *(v5 + 80) & 0xF8 | 7;
  v8 = ((v6 + 1 + v7) & ~v7) + v6 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t BiMap.init(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v85 = a3;
  v63 = a6;
  v11 = sub_25F305C1C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v71 = v62 - v13;
  v68 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a2 - 8);
  MEMORY[0x28223BE20](v14);
  v84 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = sub_25F305C1C();
  v18 = *(v81 - 8);
  v19 = MEMORY[0x28223BE20](v81);
  v82 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v80 = v62 - v21;
  swift_getTupleTypeMetadata2();
  v22 = sub_25F3052DC();
  v73 = a4;
  v23 = sub_25F1CCBBC(v22, a2, a3, a4);

  *&v88 = v23;
  swift_getTupleTypeMetadata2();
  v24 = sub_25F3052DC();
  v74 = a5;
  v25 = sub_25F1CCBBC(v24, a3, a2, a5);

  *(&v88 + 1) = v25;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_25F30625C();
    v27 = 0;
    v28 = 0;
    v29 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v27 = a1 + 64;
    v28 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(a1 + 64);
  }

  v33 = 0;
  v34 = (v67 + 32);
  v35 = (v68 + 32);
  v36 = TupleTypeMetadata2;
  v78 = TupleTypeMetadata2 - 8;
  v62[1] = v28;
  v37 = (v28 + 64) >> 6;
  v66 = v67 + 16;
  v65 = v68 + 16;
  v76 = (v18 + 32);
  v70 = (v68 + 56);
  v72 = a2;
  v69 = a1;
  v79 = v27;
  v64 = (v67 + 32);
  while (1)
  {
    v77 = v29;
    v75 = v33;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_25F30626C())
    {
      sub_25F30655C();
      swift_unknownObjectRelease();
      v45 = v85;
      sub_25F30655C();
      swift_unknownObjectRelease();
      v39 = v33;
      v34 = v64;
      v86 = v29;
      v36 = TupleTypeMetadata2;
      goto LABEL_20;
    }

    v47 = 1;
    v61 = v29;
    v41 = v33;
    v86 = v61;
    v43 = v82;
    v36 = TupleTypeMetadata2;
LABEL_21:
    v48 = *(v36 - 8);
    (*(v48 + 56))(v43, v47, 1, v36);
    v49 = v80;
    (*v76)(v80, v43, v81);
    if ((*(v48 + 48))(v49, 1, v36) == 1)
    {
      result = sub_25F1BF034(a1);
      *v63 = v88;
      return result;
    }

    v50 = *(v36 + 48);
    v51 = v84;
    v52 = v49;
    v53 = v49;
    a2 = v72;
    (*v34)(v84, v52, v72);
    v54 = &v53[v50];
    v55 = a1;
    v56 = v16;
    v57 = v71;
    v58 = v85;
    (*v35)(v71, v54, v85);
    (*v70)(v57, 0, 1, v58);
    v87[0] = a2;
    v87[1] = v58;
    v87[2] = v73;
    v87[3] = v74;
    v59 = type metadata accessor for BiMap(0, v87);
    v60 = v57;
    v16 = v56;
    a1 = v55;
    v36 = TupleTypeMetadata2;
    result = BiMap.subscript.setter(v60, v51, v59);
    v33 = v41;
    v29 = v86;
    v27 = v79;
  }

  v38 = v29;
  v39 = v33;
  if (v29)
  {
LABEL_17:
    v86 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v39 << 6);
    (*(v67 + 16))(v84, *(a1 + 48) + *(v67 + 72) * v44, a2);
    v45 = v85;
    (*(v68 + 16))(v16, *(a1 + 56) + *(v68 + 72) * v44, v85);
LABEL_20:
    v46 = *(v36 + 48);
    v43 = v82;
    (*v34)();
    (*v35)(&v43[v46], v16, v45);
    v47 = 0;
    v41 = v39;
    a1 = v69;
    goto LABEL_21;
  }

  if (v37 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v37;
  }

  v41 = v40 - 1;
  v42 = v33;
  v43 = v82;
  while (1)
  {
    v39 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v39 >= v37)
    {
      v86 = 0;
      v47 = 1;
      goto LABEL_21;
    }

    v38 = *(v27 + 8 * v39);
    ++v42;
    if (v38)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t BiMap.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a1;
  v6 = a3[2];
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v52 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25F305C1C();
  v42 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v41 - v8;
  v10 = a3[3];
  v55 = sub_25F305C1C();
  v57 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v41 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = *(v10 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v43 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v53 = &v41 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - v23;
  v47 = a3[4];
  sub_25F304B8C();
  v49 = *(v18 + 48);
  v25 = v49(v17, 1, v10);
  v45 = v9;
  v46 = a3;
  v44 = v18;
  v54 = v3;
  if (v25 == 1)
  {
    v26 = v57;
    (*(v57 + 8))(v17, v55);
    v27 = v26;
  }

  else
  {
    (*(v18 + 32))(v24, v17, v10);
    sub_25F304B4C();
    sub_25F304A8C();
    (*(v42 + 8))(v9, v48);
    (*(v18 + 8))(v24, v10);
    v27 = v57;
  }

  v28 = v6;
  v42 = *(v58 + 16);
  (v42)(v52, a2, v6);
  v48 = a2;
  v29 = *(v27 + 16);
  v31 = v55;
  v30 = v56;
  v29(v50, v56, v55);
  sub_25F304B4C();
  v32 = v30;
  sub_25F304B9C();
  v33 = v51;
  v29(v51, v32, v31);
  if (v49(v33, 1, v10) == 1)
  {
    (*(v58 + 8))(v48, v6);
    v34 = *(v57 + 8);
    v34(v32, v31);
    return (v34)(v33, v31);
  }

  else
  {
    v36 = v44;
    v37 = v53;
    (*(v44 + 32))(v53, v33, v10);
    (*(v36 + 16))(v43, v37, v10);
    v38 = v45;
    v39 = v48;
    (v42)(v45, v48, v28);
    v40 = v58;
    (*(v58 + 56))(v38, 0, 1, v28);
    sub_25F304B4C();
    sub_25F304B9C();
    (*(v40 + 8))(v39, v28);
    (*(v57 + 8))(v56, v31);
    return (*(v36 + 8))(v53, v10);
  }
}

{
  sub_25F1DC648(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

{
  v58 = a1;
  v6 = a3[3];
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v57 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F305C1C();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = a3[2];
  v59 = sub_25F305C1C();
  v53 = *(v59 - 8);
  v12 = MEMORY[0x28223BE20](v59);
  v55 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v43 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = *(v11 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v44 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v56 = &v43 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v52 = v3 + 8;
  v49 = a3[5];
  sub_25F304B8C();
  v50 = *(v19 + 48);
  v51 = v19 + 48;
  v26 = v50(v18, 1, v11);
  v47 = a3;
  v48 = v3;
  v45 = v19;
  v46 = v10;
  if (v26 == 1)
  {
    v27 = v53;
    (*(v53 + 8))(v18, v59);
  }

  else
  {
    (*(v19 + 32))(v25, v18, v11);
    sub_25F304B4C();
    sub_25F304A8C();
    (*(v43 + 8))(v10, v8);
    (*(v19 + 8))(v25, v11);
    v27 = v53;
  }

  v28 = v11;
  v43 = *(v60 + 16);
  (v43)(v57, a2, v6);
  v53 = a2;
  v29 = *(v27 + 16);
  v31 = v58;
  v30 = v59;
  v29(v54, v58, v59);
  sub_25F304B4C();
  v32 = v27;
  sub_25F304B9C();
  v33 = v55;
  v29(v55, v31, v30);
  if (v50(v33, 1, v28) == 1)
  {
    (*(v60 + 8))(v53, v6);
    v34 = *(v32 + 8);
    v34(v31, v30);
    return (v34)(v33, v30);
  }

  else
  {
    v36 = v28;
    v37 = v45;
    v38 = v56;
    (*(v45 + 32))(v56, v33, v36);
    (*(v37 + 16))(v44, v38, v36);
    v39 = v46;
    v40 = v53;
    (v43)(v46, v53, v6);
    v41 = v6;
    v42 = v60;
    (*(v60 + 56))(v39, 0, 1, v41);
    sub_25F304B4C();
    sub_25F304B9C();
    (*(v42 + 8))(v40, v41);
    (*(v32 + 8))(v31, v30);
    return (*(v37 + 8))(v56, v36);
  }
}

uint64_t BiMap.subscript.getter(uint64_t a1, void *a2)
{
  return sub_25F304B8C();
}

{
  return sub_25F304B8C();
}

{
  return sub_25F304B8C();
}

uint64_t sub_25F1DA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 8);
  v18 = *(a3 + a4 - 24);
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v15 + 16))(&v18 - v13, a3, v6);
  (*(v9 + 16))(v12, a1, v8);
  v19 = v6;
  v20 = v18;
  v21 = v7;
  v16 = type metadata accessor for BiMap(0, &v19);
  return BiMap.subscript.setter(v12, v14, v16);
}

void (*BiMap.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_25F305C1C();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  v12 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v11);
  }

  v8[5] = v13;
  v14 = a3[2];
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  v17 = *(v15 + 64);
  if (v12)
  {
    v8[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v8[9] = v18;
  (*(v16 + 16))();
  sub_25F304B8C();
  return sub_25F1DA8DC;
}

{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_25F305C1C();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  v12 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v11);
  }

  v8[5] = v13;
  v14 = a3[3];
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  v17 = *(v15 + 64);
  if (v12)
  {
    v8[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v8[9] = v18;
  (*(v16 + 16))();
  sub_25F304B8C();
  return sub_25F1DB700;
}

uint64_t sub_25F1DA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v9[0] = *(a3 + a4 - 32);
  v9[1] = v6;
  v7 = type metadata accessor for BiMap(0, v9);
  return sub_25F1DC648(a1, a3, v7);
}

void (*BiMap.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_25F305C1C();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  v13 = a3[2];
  v8[6] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v8[7] = v14;
  if (v6)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v8[8] = v16;
  (*(v15 + 16))();
  sub_25F304B8C();
  return sub_25F1DABD0;
}

void sub_25F1DABD0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_25F1DC648(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_25F1DC648((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_25F1DAD20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a2 + a3 - 16);
  v10[0] = *(a2 + a3 - 32);
  v10[1] = v7;
  v10[2] = v6;
  v8 = type metadata accessor for BiMap(0, v10);
  return a4(a2, v8);
}

uint64_t sub_25F1DAD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 32);
  v8 = *(a3 + a4 - 8);
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v19 = *(v6 - 24);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a3);
  (*(v10 + 16))(v13, a1, v9);
  v20 = v7;
  v21 = v19;
  v22 = v8;
  v17 = type metadata accessor for BiMap(0, &v20);
  return BiMap.subscript.setter(v13, v15, v17);
}

void sub_25F1DB718(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[8];
  v6 = (*a1)[9];
  if (a2)
  {
    v7 = v4[7];
    v9 = v4[4];
    v8 = v4[5];
    v10 = v4[2];
    v11 = v4[3];
    v12 = *v4;
    v13 = v4[6];
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v13);
    a3(v9, v5, v12);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[4];
    v8 = v4[5];
    a3(v8, v6, *v4);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t sub_25F1DB86C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a2(*v3, a1[2], a1[3], a1[4]);
}

uint64_t BiMap.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_25F305C1C();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v36 - v14;
  v39 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v36 = *(v17 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v47 = &v36 - v18;
  v19 = sub_25F3052DC();
  v45 = a4;
  v20 = sub_25F1CCBBC(v19, a2, a3, a4);

  v49 = v20;
  swift_getTupleTypeMetadata2();
  v21 = sub_25F3052DC();
  v44 = a2;
  v46 = a5;
  v22 = sub_25F1CCBBC(v21, a3, a2, a5);

  v50 = v22;
  if (sub_25F30531C())
  {
    v23 = 0;
    v40 = *(TupleTypeMetadata2 + 48);
    v41 = (v17 + 16);
    v39 += 4;
    v37 = a6;
    v38 = a3 - 8;
    v24 = v44;
    while (1)
    {
      v25 = sub_25F3052FC();
      sub_25F30528C();
      if (v25)
      {
        (*(v17 + 16))(v47, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, TupleTypeMetadata2);
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v48[0] = result;
        (*v41)(v47, v48, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v20 = v49;
          v22 = v50;
          a6 = v37;
          goto LABEL_13;
        }
      }

      v27 = v17;
      v28 = v42;
      v29 = v47;
      (*v39)(v42, v47, v24);
      v30 = *(a3 - 8);
      v31 = &v29[v40];
      v32 = v43;
      (*(v30 + 32))(v43, v31, a3);
      (*(v30 + 56))(v32, 0, 1, a3);
      v48[0] = v24;
      v48[1] = a3;
      v48[2] = v45;
      v48[3] = v46;
      v33 = type metadata accessor for BiMap(0, v48);
      v34 = v28;
      v17 = v27;
      BiMap.subscript.setter(v32, v34, v33);
      ++v23;
      if (v26 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a6 = v20;
  a6[1] = v22;
  return result;
}

uint64_t BiMap.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  swift_getTupleTypeMetadata2();
  v10 = sub_25F3052DC();
  v11 = sub_25F1CCBBC(v10, a1, a2, a3);

  *a5 = v11;
  swift_getTupleTypeMetadata2();
  v12 = sub_25F3052DC();
  v13 = sub_25F1CCBBC(v12, a2, a1, a4);

  a5[1] = v13;
  return result;
}

uint64_t BiMap.makeIterator()@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v4 = sub_25F30625C();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = -1;
    v10 = -1 << *(v3 + 32);
    v6 = ~v10;
    v5 = v3 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v9 = ~(-1 << v11);
    }

    v7 = v9 & *(v3 + 64);
    v8 = *v1;
  }

  *a1 = v8;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v7;
}

uint64_t (*sub_25F1DBF7C(void *a1, uint64_t a2, void *a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = BiMap.subscript.modify(v6, a2, a3);
  return sub_25F1DC004;
}

void sub_25F1DC004(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_25F1DC04C@<D0>(uint64_t a1@<X8>)
{
  BiMap.makeIterator()(v4);

  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_25F1DC0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1DC0FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_25F1DC198@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_25F1DC1CC(uint64_t *a1, uint64_t a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_25F1DC3DC(v8, *a2, *(a2 + 8), *(a2 + 16), a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_25F1DC364;
}

void sub_25F1DC364(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_25F1DC3DC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, void *a5))()
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_25F304BAC();
  return sub_25F1DC510;
}

void sub_25F1DC510(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_25F1DC564@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = BiMap.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_25F1DC5A4(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = BiMap.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_25F1AC3CC(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_25F1DC648(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  (*(v7 + 16))(v10, a1, v6);
  return BiMap.subscript.setter(v10, v12, a3);
}

uint64_t sub_25F1DC7B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F1DC850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_witness_table_SHRzSHR_r0_lSD4KeysVyxq__GSlHPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void, void), uint64_t a3)
{
  a2(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t Range.fullyContains(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_25F304CEC())
  {
    return sub_25F304CEC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Dictionary.nextUniqueKeyUsing(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a2;
  v27 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_25F305C1C();
  v13 = *(v25 - 8);
  v14 = MEMORY[0x28223BE20](v25);
  v16 = &v22 - v15;
  v23 = a1;
  a1(v14);
  v24 = a4 - 8;
  v17 = (v13 + 8);
  v18 = (v10 + 8);
  for (i = (v10 + 32); ; (*i)(a6, v12, a3))
  {
    sub_25F304B8C();
    v20 = (*(*(a4 - 8) + 48))(v16, 1, a4);
    result = (*v17)(v16, v25);
    if (v20 == 1)
    {
      break;
    }

    v23(result);
    (*v18)(a6, a3);
  }

  return result;
}

uint64_t sub_25F1DCBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2;
  v18 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v16 - v13;
  result = a4(a3);
  if (!v7)
  {
    (*(v12 + 16))(v14, a3, TupleTypeMetadata2);
    (*(*(a7 - 8) + 32))(v17, &v14[*(TupleTypeMetadata2 + 48)], a7);
    return (*(*(v18 - 8) + 8))(v14);
  }

  return result;
}

uint64_t sub_25F1DCDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16[8] = a2;
  v16[9] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a1;
  v13 = sub_25F304B4C();
  WitnessTable = swift_getWitnessTable();
  return a10(a9, v16, v13, a6, a5, WitnessTable, a8);
}

uint64_t sub_25F1DCE84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v22 = a3;
  v25 = a8;
  v13 = sub_25F305C1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  result = a2(a1);
  if (!v8)
  {
    MEMORY[0x28223BE20](result);
    v18 = v23;
    *(&v21 - 6) = v22;
    *(&v21 - 5) = a4;
    *(&v21 - 4) = a5;
    *(&v21 - 3) = v18;
    *(&v21 - 2) = v24;
    *(&v21 - 1) = a1;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_25F20977C(sub_25F1DD21C, (&v21 - 8), MEMORY[0x277D84A98], TupleTypeMetadata2, v20, v25);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_25F1DD05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v17 - v13;
  v15 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a5 - 8) + 16))(a6, a1, a5);
  (*(v12 + 16))(v14, v18, TupleTypeMetadata2);
  (*(*(a4 - 8) + 32))(a6 + v15, &v14[*(TupleTypeMetadata2 + 48)], a4);
  return (*(*(a3 - 8) + 8))(v14, a3);
}

uint64_t SynchronousAccessProviding<>.peek(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v9[2] = a2;
  v9[3] = a3;
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v6(v10, sub_25F1DD6AC, v9, AssociatedTypeWitness, a2, a3);
}

uint64_t SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  return (*(a6 + 24))(v8, a2, a3, a5, a4);
}

uint64_t SynchronousAccessProviding<>.syncUpdate(callsite:to:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v7(v11, sub_25F1DD730, v10, AssociatedTypeWitness, a3, a4);
}

uint64_t SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  return (*(a6 + 16))(v8, a2, a3, a5, a4);
}

uint64_t SynchronousAccessProviding.syncSetValue<A>(at:to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v6 = *(v5 + *MEMORY[0x277D84308] + 8);
  v9[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SynchronousAccessProviding.swift";
  v9[1] = 138;
  v10 = 2;
  v11 = xmmword_25F309E80;
  v12 = "syncSetValue(at:to:)";
  v13 = 20;
  v14 = 2;
  return (*(a4 + 24))(v9, sub_25F1DD7F4, v8, v6, a3);
}

uint64_t sub_25F1DD544@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13[-v8];
  v10 = swift_readAtKeyPath();
  v11 = *(v7 + 16);
  v11(a4);
  v10(v13, 0);
  (v11)(v9, a3, v6);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_25F1DD730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 32))(a2, a1, AssociatedTypeWitness);
  return (*(v7 + 16))(a1, v5, AssociatedTypeWitness);
}

uint64_t Assertion.invalidationHandle.getter()
{
  sub_25F1DEEFC();
}

uint64_t Assertion.__allocating_init(_:description:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  Assertion.init(_:description:)(a1, a2, a3);
  return v6;
}

void *sub_25F1DD914(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for InvalidationHandle();
  v8 = swift_allocObject();
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v8 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v9 = swift_allocObject();
  *(v9 + 28) = 0;
  *(v9 + 16) = MEMORY[0x277D84F90];
  *(v9 + 24) = 0;
  *(v8 + 104) = v9;
  *(v8 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(v8 + 24) = 121;
  *(v8 + 32) = 2;
  *(v8 + 40) = xmmword_25F309F50;
  *(v8 + 56) = "Assertion";
  *(v8 + 64) = 9;
  *(v8 + 72) = 2;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  v3[2] = v8;
  v3[3] = a2;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D58, &qword_25F30A078);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = a1;
  v3[5] = v10;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_25F1DF0D0;
  *(v12 + 24) = v11;
  v24 = sub_25F1DF1A4;
  v25 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_25F1DEA90;
  v23 = &block_descriptor_13;
  v13 = _Block_copy(&aBlock);
  swift_retain_n();

  v14 = a1;

  [v14 setInvalidationHandler_];
  _Block_release(v13);

  v15 = *(*(*(v4 + 16) + 96) + 16);
  swift_retain_n();
  os_unfair_lock_lock((v15 + 32));
  sub_25F1DF0E4((v15 + 16), &aBlock);
  os_unfair_lock_unlock((v15 + 32));
  v16 = aBlock;
  if (aBlock)
  {
    v17 = v21;
    v18 = v22;
    sub_25F2FC288(&aBlock);

    sub_25F1DF100(v16, v17, v18);
  }

  else
  {
    if (v23)
    {
      sub_25F1DE3C4(v4);
    }
  }

  return v4;
}

void *Assertion.init(_:description:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *v3;
  type metadata accessor for InvalidationHandle();
  v10 = swift_allocObject();
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v10 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  *(v11 + 16) = MEMORY[0x277D84F90];
  *(v11 + 24) = 0;
  *(v10 + 104) = v11;
  *(v10 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(v10 + 24) = 121;
  *(v10 + 32) = 2;
  *(v10 + 40) = xmmword_25F309F50;
  *(v10 + 56) = "Assertion";
  *(v10 + 64) = 9;
  *(v10 + 72) = 2;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  v3[2] = v10;
  v3[3] = a2;
  v3[4] = a3;
  v18 = a1;
  v12 = *(v8 + 80);
  v13 = sub_25F305C1C();

  *(v4 + 40) = sub_25F203E0C(&v18, v13);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v4;
  v15 = *(v8 + 88);
  v16 = *(v15 + 8);

  v16(sub_25F1DEF04, v14, v12, v15);

  v18 = v4;

  Invalidatable.onInvalidation(_:)(sub_25F1DEF10, v4, v9, &protocol witness table for Assertion<A>);

  swift_unknownObjectRelease();
  return v4;
}

void sub_25F1DDE60(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v8 = sub_25F30479C();
  __swift_project_value_buffer(v8, qword_281561A40);

  v9 = a1;
  v10 = sub_25F30477C();
  v11 = sub_25F3059EC();

  if (os_log_type_enabled(v10, v11))
  {
    v19 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v20 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_25F1C53AC(a2, a3, &v20);
    *(v12 + 12) = 2080;
    v14 = 0xE000000000000000;
    if (a1)
    {
      *&v24 = 0;
      *(&v24 + 1) = 0xE000000000000000;
      MEMORY[0x25F8D7130](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30619C();
      v14 = *(&v24 + 1);
      v15 = v24;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_25F1C53AC(v15, v14, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_25F1A2000, v10, v11, "Assertion %{public}s invalidated%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v13, -1, -1);
    MEMORY[0x25F8D9510](v12, -1, -1);

    a4 = v19;
  }

  else
  {
  }

  v17 = *(a4 + 16);
  v20 = *(v17 + 80);
  memmove(v21, (v17 + 16), 0x39uLL);
  *&v22 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(&v22 + 1) = 121;
  LOBYTE(v23[0]) = 2;
  *(v23 + 8) = xmmword_25F309F60;
  *(&v23[1] + 1) = "init(_:description:)";
  *&v23[2] = 20;
  BYTE8(v23[2]) = 2;
  v18 = sub_25F1DF180(&v20);
  v30 = v23[0];
  v31[0] = v23[1];
  *(v31 + 9) = *(&v23[1] + 9);
  v26 = v21[1];
  v27 = v21[2];
  v28 = v21[3];
  v29 = v22;
  v24 = v20;
  v25 = v21[0];
  MEMORY[0x28223BE20](v18);
  sub_25F2FBF68(sub_25F1DF198);
}

uint64_t sub_25F1DE158(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v8 = sub_25F30479C();
  __swift_project_value_buffer(v8, qword_281561A40);

  v9 = a1;
  v10 = sub_25F30477C();
  v11 = sub_25F3059EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_25F1C53AC(a2, a3, &v16);
    *(v12 + 12) = 2080;
    if (a1)
    {
      MEMORY[0x25F8D7130](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30619C();
    }

    v14 = sub_25F1C53AC(0, 0xE000000000000000, &v16);

    *(v12 + 14) = v14;
    _os_log_impl(&dword_25F1A2000, v10, v11, "Assertion %{public}s invalidated%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v13, -1, -1);
    MEMORY[0x25F8D9510](v12, -1, -1);
  }

  return sub_25F2C3EFC("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift", 121, 2, 34, 28, "init(_:description:)", 20, 2, v7, &protocol witness table for Assertion<A>);
}

void sub_25F1DE3C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3[1] = 0;
  os_unfair_lock_lock((v1 + 24));
  sub_25F1DF144((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v3[0];
  [v3[0] invalidate];
}

uint64_t sub_25F1DE43C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1;
  v16 = a1[5];
  *&v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(&v10 + 1) = 121;
  v11 = 2;
  v12 = xmmword_25F309F70;
  v13 = "init(_:description:)";
  v14 = 20;
  v15 = 2;
  v9 = 0;
  v3 = *(v1 + 80);
  sub_25F305C1C();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  result = SynchronousAccessProviding<>.syncUpdate(callsite:to:)(&v10, &v9, v4, WitnessTable);
  if (v17)
  {
    v7 = *(v2 + 88);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v8(v3, v7);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

Swift::Void __swiftcall Assertion.acquire()()
{
  v1 = *v0;
  v2 = *v0;
  v12 = v0[5];
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(&v6 + 1) = 121;
  v7 = 2;
  v8 = xmmword_25F309F80;
  v9 = "acquire()";
  v10 = 9;
  v11 = 2;
  v3 = *(v1 + 80);
  sub_25F305C1C();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v6, v4, WitnessTable);
  if (v13)
  {
    (*(*(v2 + 88) + 24))(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
    *(&v6 + 1) = 121;
    v7 = 2;
    v8 = xmmword_25F309F90;
    v9 = "acquire()";
    v10 = 9;
    v11 = 2;
    sub_25F213F98(&v6);
  }
}

void *Assertion.deinit()
{

  return v0;
}

uint64_t Assertion.__deallocating_deinit()
{
  Assertion.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25F1DE91C()
{
  sub_25F1DEEFC();
}

id RBSAssertion.onInvalidation(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_25F1DEF18;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25F1DEA90;
    v9[3] = &block_descriptor_0;
    v7 = _Block_copy(v9);
    sub_25F1D2078(a1, a2);

    [v3 setInvalidationHandler_];
    _Block_release(v7);
    return sub_25F1AC3AC(a1, a2);
  }

  else
  {

    return [v2 setInvalidationHandler_];
  }
}

void sub_25F1DEA90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_25F1DEB48()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([v0 acquireWithError_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_25F3043FC();

  return swift_willThrow();
}

void *Assertion<>.init(pid:domain:name:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC8, &qword_25F309FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F309FA0;
  v11 = sub_25F304DDC();

  v12 = sub_25F304DDC();

  v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

  *(v10 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v15 = sub_25F304DDC();
  sub_25F1DEF5C();
  v16 = sub_25F30524C();

  v17 = [v14 initWithExplanation:v15 target:v9 attributes:v16];

  v18 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v18);

  MEMORY[0x25F8D7130](41, 0xE100000000000000);

  MEMORY[0x25F8D7130](10272, 0xE200000000000000);

  swift_allocObject();
  return sub_25F1DD914(v17, a6, a7);
}

uint64_t sub_25F1DEE28(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25F1DEE88(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F1DEF5C()
{
  result = qword_27FD53CD0[0];
  if (!qword_27FD53CD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD53CD0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_25F1DF100(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

id sub_25F1DF144@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = **(v2 + 16);
  v4 = *a1;
  *a1 = v3;
  *a2 = v4;
  return v3;
}

uint64_t sub_25F1DF180(uint64_t result)
{
  v1 = *(result + 96);
  *(result + 72) &= 0x1FFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t AgentSymbolTable.__allocating_init(dataProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_25F1A42F8(a1, v2 + 16);
  return v2;
}

uint64_t AgentSymbolTable.orderedSymbolAddresses.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

Swift::String __swiftcall AgentSymbolTable.symbolName(for:)(Swift::UInt64 a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 24))(a1, v3, v4);
  if (!v6)
  {
    v5 = 0x746164206461623CLL;
    v6 = 0xEA00000000003E61;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall AgentSymbolTable.symbolName(covering:)(Swift::UInt64 covering)
{
  v2 = v1;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = sub_25F1DF404(covering, v6);
  if (v8)
  {

LABEL_9:
    v7 = 0;
    v8 = 0;
    goto LABEL_15;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v6 + 8 * v7 + 32);

  if (covering <= v9 || (covering - v9) >> 20 != 0)
  {
    goto LABEL_9;
  }

  v11 = v2[5];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
  v7 = (*(v12 + 24))(v9, v11, v12);
  if (!v8)
  {
    v7 = 0x746164206461623CLL;
    v8 = 0xEA00000000003E61;
  }

LABEL_15:
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

unint64_t sub_25F1DF404(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = 0;
  v6 = v2 - 1;
  while (!__OFSUB__(v6, v5))
  {
    v7 = v5 + (v6 - v5) / 2;
    if (__OFADD__(v5, (v6 - v5) / 2))
    {
      goto LABEL_14;
    }

    if (v7 >= v2)
    {
      goto LABEL_15;
    }

    if (*(a2 + 32 + 8 * v7) > a1)
    {
      v6 = v7 - 1;
    }

    else
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

      result = v7;
    }

    if (v6 < v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t AgentSymbolTable.symbolCount.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AgentSymbolTable.augmentCrashReport(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  sub_25F1DF920(a1, a2);
  result = type metadata accessor for CrashReport(0);
  v53 = *(result + 48);
  v10 = *(a2 + v53);
  v55 = *(v10 + 16);
  if (!v55)
  {
  }

  v11 = result;
  v12 = 0;
  v13 = v8 + 32;
  v14 = 1;
  v50 = a2;
  v51 = v3;
  v49 = v8;
  v54 = result;
  while (1)
  {
    v15 = v14;
    v16 = 80 * v12;
    v17 = (v10 + 80 * v12);
    v19 = v17[4];
    v18 = v17[5];
    v20 = *(v17 + 89);
    v71 = v17[3];
    v21 = v17[2];
    *(v73 + 9) = v20;
    v72 = v19;
    v73[0] = v18;
    v70 = v21;
    v69 = v17[2];
    v23 = v17[4];
    v22 = v17[5];
    *(v68 + 9) = *(v17 + 89);
    v67 = v23;
    v68[0] = v22;
    if (*(&v71 + 1))
    {
      v63 = v69;
      v64 = v71;
      goto LABEL_21;
    }

    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    v24 = *(a2 + *(v11 + 44));
    if (v70 >= *(v24 + 16))
    {
      goto LABEL_47;
    }

    v25 = *(v24 + 72 * v70 + 64);
    v26 = __CFADD__(v25, *(&v70 + 1));
    v27 = v25 + *(&v70 + 1);
    if (v26)
    {
      goto LABEL_48;
    }

    v28 = *(v8 + 16);
    if (v28)
    {
      break;
    }

LABEL_20:
    v63 = v69;
    v64 = v71;
LABEL_21:
    v65 = v67;
    v66[0] = v68[0];
    *(v66 + 9) = *(v68 + 9);
    sub_25F1DF984(&v70, &v58);
    result = sub_25F1DF9E0(&v63);
LABEL_22:
    if (v15 == v55)
    {
    }

    v14 = v15 + 1;
    v12 = v15;
    if (v15 >= *(v10 + 16))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  result = 0;
  v29 = 0;
  v30 = v28 - 1;
  v31 = 1;
  do
  {
    while (1)
    {
      if (__OFSUB__(v30, v29))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v32 = v29 + (v30 - v29) / 2;
      if (__OFADD__(v29, (v30 - v29) / 2))
      {
        goto LABEL_43;
      }

      if (v32 >= v28)
      {
        goto LABEL_44;
      }

      if (v27 < *(v13 + 8 * v32))
      {
        break;
      }

      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_49;
      }

      v31 = 0;
      result = v32;
      if (v30 < v29)
      {
        goto LABEL_25;
      }
    }

    v30 = v32 - 1;
  }

  while ((v32 - 1) >= v29);
  v32 = result;
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_25:
  if (v32 >= v28)
  {
    goto LABEL_50;
  }

  v33 = *(v13 + 8 * v32);
  v34 = v27 > v33;
  v35 = (v27 - v33) >> 20;
  if (!v34 || v35 != 0)
  {
    v63 = v69;
    v64 = v71;
    v65 = v67;
    v66[0] = v68[0];
    *(v66 + 9) = *(v68 + 9);
    sub_25F1DF984(&v70, &v58);
    result = sub_25F1DF9E0(&v63);
LABEL_37:
    v11 = v54;
    goto LABEL_22;
  }

  v37 = v3[5];
  v38 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v37);
  v52 = *(v38 + 24);
  sub_25F1DF984(&v70, &v63);
  v39 = v52(v33, v37, v38);
  v41 = v40;

  if (!v41)
  {
    v39 = 0x746164206461623CLL;
    v41 = 0xEA00000000003E61;
  }

  v63 = v69;
  *&v64 = v39;
  *(&v64 + 1) = v41;
  v65 = v67;
  v66[0] = v68[0];
  *(v66 + 9) = *(v68 + 9);
  sub_25F1DF984(&v63, &v58);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F1E0B70(v10);
    v10 = result;
  }

  a2 = v50;
  v3 = v51;
  if (v12 < *(v10 + 16))
  {
    v42 = (v10 + v16);
    v56[0] = *(v10 + v16 + 32);
    v43 = *(v10 + v16 + 48);
    v44 = *(v10 + v16 + 64);
    v45 = *(v10 + v16 + 80);
    *&v57[9] = *(v10 + v16 + 89);
    v56[2] = v44;
    *v57 = v45;
    v56[1] = v43;
    v47 = v65;
    v46 = v66[0];
    v48 = v64;
    *(v42 + 89) = *(v66 + 9);
    v42[4] = v47;
    v42[5] = v46;
    v42[3] = v48;
    v42[2] = v63;
    sub_25F1DF9E0(v56);
    *(v50 + v53) = v10;
    v58 = v69;
    v59 = v39;
    v60 = v41;
    v61 = v67;
    v62[0] = v68[0];
    *(v62 + 9) = *(v68 + 9);
    result = sub_25F1DF9E0(&v58);
    v8 = v49;
    goto LABEL_37;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_25F1DF920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AgentSymbolTable.mappingSize.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AgentSymbolTable.swiftEntrySectionPointer.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t AgentSymbolTable.mappingSizeDescription.getter()
{
  v1 = v0;
  sub_25F305FAC();

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  (*(v3 + 8))(v2, v3);
  v4 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v4);

  MEMORY[0x25F8D7130](0x203A657A6973202CLL, 0xE800000000000000);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  (*(v6 + 32))(v5, v6);
  v7 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v7);

  return 0x3A736C6F626D7973;
}

uint64_t AgentSymbolTable.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t SwiftEntrySectionPayload.init(jsonPayload:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_25F3041CC();
  swift_allocObject();
  sub_25F3041BC();
  v7 = sub_25F1DFD80(a1, a2);
  v9 = v8;
  sub_25F1E0B84();
  sub_25F3041AC();

  result = sub_25F1D4BB0(v7, v9);
  if (!v3)
  {
    *a3 = v11;
  }

  return result;
}

uint64_t sub_25F1DFD80(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DD0, &qword_25F30A430);
  if (swift_dynamicCast())
  {
    sub_25F1A42F8(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_25F30434C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25F1E1B18(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25F30605C();
  }

  sub_25F1E113C(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25F1E1864(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_25F1E1204(sub_25F1E1B80, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25F30450C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25F2925C8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25F304FAC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25F304FFC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25F30605C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25F2925C8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25F304FBC();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_25F30451C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25F30451C();
    sub_25F1D4B9C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_25F1D4B9C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25F1B70AC(*&__src[0], *(&__src[0] + 1));

  sub_25F1D4BB0(v32, *(&v32 + 1));
  return v32;
}

char *SwiftEntrySectionPayload.jsonPayload.getter()
{
  v2 = sub_25F304E6C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_25F3041FC();
  swift_allocObject();
  sub_25F3041EC();
  v14[1] = v5;
  sub_25F1E0BD8();
  v6 = sub_25F3041DC();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    sub_25F304E4C();
    v4 = sub_25F304E2C();
    v11 = v10;
    sub_25F1D4BB0(v8, v9);
    if (!v11)
    {
      sub_25F1E0C2C();
      swift_allocError();
      *v13 = v4;
      v13[1] = 0;
      v13[2] = v4;
      v13[3] = 0;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_25F1E03E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F1E0414()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25F1E046C()
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](0);
  return sub_25F30676C();
}

uint64_t sub_25F1E04D8(uint64_t a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](0);
  return sub_25F30676C();
}

uint64_t sub_25F1E0538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x536E6F6974636573 && a2 == 0xEC00000074726174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F30659C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F1E05DC(uint64_t a1)
{
  v2 = sub_25F1E0C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F1E0618(uint64_t a1)
{
  v2 = sub_25F1E0C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SwiftEntrySectionPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D78, &qword_25F30A090);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F1E0C80();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SwiftEntrySectionPayload.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t SwiftEntrySectionPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D88, &qword_25F30A098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F1E0C80();
  sub_25F3067AC();
  if (!v2)
  {
    v9 = sub_25F30644C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F1E096C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D78, &qword_25F30A090);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F1E0C80();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25F1E0AA4()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t sub_25F1E0B18(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v2);
  return sub_25F30676C();
}

unint64_t sub_25F1E0B84()
{
  result = qword_27FD53D60;
  if (!qword_27FD53D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D60);
  }

  return result;
}

unint64_t sub_25F1E0BD8()
{
  result = qword_27FD53D68;
  if (!qword_27FD53D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D68);
  }

  return result;
}

unint64_t sub_25F1E0C2C()
{
  result = qword_27FD53D70;
  if (!qword_27FD53D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D70);
  }

  return result;
}

unint64_t sub_25F1E0C80()
{
  result = qword_27FD53D80;
  if (!qword_27FD53D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D80);
  }

  return result;
}

unint64_t sub_25F1E0CD8()
{
  result = qword_27FD53D90;
  if (!qword_27FD53D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D90);
  }

  return result;
}

uint64_t sub_25F1E0E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F1E0E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F1E0EE4(uint64_t a1)
{
  *(a1 + 8) = sub_25F1E0F14();
  result = sub_25F1E0F68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F1E0F14()
{
  result = qword_27FD53D98;
  if (!qword_27FD53D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53D98);
  }

  return result;
}

unint64_t sub_25F1E0F68()
{
  result = qword_27FD53DA0;
  if (!qword_27FD53DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DA0);
  }

  return result;
}

unint64_t sub_25F1E0FC0()
{
  result = qword_27FD53DA8;
  if (!qword_27FD53DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DA8);
  }

  return result;
}

unint64_t sub_25F1E1018()
{
  result = qword_27FD53DB0;
  if (!qword_27FD53DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DB0);
  }

  return result;
}

unint64_t sub_25F1E1070()
{
  result = qword_27FD53DB8;
  if (!qword_27FD53DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53DB8);
  }

  return result;
}

uint64_t *sub_25F1E113C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_25F1E17AC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25F30430C();
      swift_allocObject();
      v8 = sub_25F3042BC();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_25F3044FC();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_25F1E1204(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25F1D4BB0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25F1D4BB0(v7, v6);
    *v4 = xmmword_25F30A080;
    sub_25F1D4BB0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25F3042CC() && __OFSUB__(v7, sub_25F3042FC()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25F30430C();
      swift_allocObject();
      v14 = sub_25F3042AC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_25F1E16A8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_25F1D4BB0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25F30A080;
    sub_25F1D4BB0(0, 0xC000000000000000);
    sub_25F3044EC();
    result = sub_25F1E16A8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_25F1E15A8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25F1E17AC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25F1E1904(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25F1E1980(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25F1E163C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25F1E16A8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25F3042CC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25F3042FC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25F3042EC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25F1E175C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25F305FBC();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1E17AC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}