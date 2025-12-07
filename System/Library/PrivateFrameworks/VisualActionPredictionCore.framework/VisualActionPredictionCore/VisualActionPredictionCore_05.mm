uint64_t sub_22632D6D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v78 = a5;
  v74 = a3;
  v79 = type metadata accessor for RankedVisualAction(0);
  v8 = MEMORY[0x28223BE20](v79);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = (&v69 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v69 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v69 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_93;
  }

  v20 = v74 - a2;
  if (v74 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_94;
  }

  v21 = (a2 - a1) / v19;
  v82 = a1;
  v81 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v23;
    if (v23 >= 1)
    {
      v44 = -v19;
      v45 = a4 + v23;
      v72 = a4;
      v73 = v44;
      v46 = v74;
      do
      {
        v70 = v43;
        v47 = a2;
        a2 += v44;
        v77 = a2;
        v74 = v47;
        while (1)
        {
          if (v47 <= a1)
          {
            v82 = v47;
            v80 = v70;
            goto LABEL_91;
          }

          v48 = v46;
          v71 = v43;
          v49 = v45 + v44;
          v50 = v75;
          sub_22632EDC0(v45 + v44, v75, type metadata accessor for RankedVisualAction);
          v51 = v76;
          sub_22632EDC0(a2, v76, type metadata accessor for RankedVisualAction);
          v52 = *(v50 + *(v79 + 24));
          v53 = *v78;
          if (*(*v78 + 16) && (v54 = sub_22633941C(*v50, v50[1]), (v55 & 1) != 0))
          {
            v56 = *(*(v53 + 56) + 8 * v54);
          }

          else
          {
            v56 = 0;
          }

          v57 = sub_2262DBE60();
          v59 = v58;
          v60 = *(v51 + *(v79 + 24));
          v61 = *v78;
          if (*(*v78 + 16) && (v62 = sub_22633941C(*v51, v51[1]), (v63 & 1) != 0))
          {
            v64 = *(*(v61 + 56) + 8 * v62);
          }

          else
          {
            v64 = 0;
          }

          v65 = sub_2262DBE60();
          if (v52 == v60)
          {
            if (v56 == v64)
            {
              if (v65 == v57 && v66 == v59)
              {

                v67 = 0;
              }

              else
              {
                v67 = sub_226350C4C();
              }
            }

            else
            {

              v67 = v64 < v56;
            }
          }

          else
          {

            v67 = v60 < v52;
          }

          a2 = v77;
          v46 = v48 + v73;
          sub_22632EE90(v76, type metadata accessor for RankedVisualAction);
          sub_22632EE90(v75, type metadata accessor for RankedVisualAction);
          v68 = v72;
          if (v67)
          {
            break;
          }

          v43 = v49;
          if (v48 < v45 || v46 >= v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v48 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = v49;
          v44 = v73;
          v47 = v74;
          if (v49 <= v68)
          {
            a2 = v74;
            goto LABEL_90;
          }
        }

        if (v48 < v74 || v46 >= v74)
        {
          swift_arrayInitWithTakeFrontToBack();
          v43 = v71;
        }

        else
        {
          v43 = v71;
          if (v48 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v44 = v73;
      }

      while (v45 > v68);
    }

LABEL_90:
    v82 = a2;
    v80 = v43;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v76 = a4 + v22;
    v80 = a4 + v22;
    if (v22 >= 1 && a2 < v74)
    {
      v75 = v19;
      do
      {
        sub_22632EDC0(a2, v17, type metadata accessor for RankedVisualAction);
        sub_22632EDC0(a4, v14, type metadata accessor for RankedVisualAction);
        v25 = *(v17 + *(v79 + 24));
        v26 = *v78;
        v27 = *(*v78 + 16);
        v77 = a2;
        if (v27 && (v28 = sub_22633941C(*v17, v17[1]), (v29 & 1) != 0))
        {
          v30 = *(*(v26 + 56) + 8 * v28);
        }

        else
        {
          v30 = 0;
        }

        v31 = sub_2262DBE60();
        v33 = v32;
        v34 = *(v14 + *(v79 + 24));
        v35 = *v78;
        if (*(*v78 + 16) && (v36 = sub_22633941C(*v14, v14[1]), (v37 & 1) != 0))
        {
          v38 = *(*(v35 + 56) + 8 * v36);
        }

        else
        {
          v38 = 0;
        }

        v39 = sub_2262DBE60();
        if (v25 == v34)
        {
          if (v30 == v38)
          {
            if (v39 == v31 && v40 == v33)
            {

              sub_22632EE90(v14, type metadata accessor for RankedVisualAction);
              sub_22632EE90(v17, type metadata accessor for RankedVisualAction);
              a2 = v77;
              v41 = v75;
              goto LABEL_42;
            }

            v42 = sub_226350C4C();
          }

          else
          {

            v42 = v38 < v30;
          }
        }

        else
        {

          v42 = v34 < v25;
        }

        v41 = v75;
        sub_22632EE90(v14, type metadata accessor for RankedVisualAction);
        sub_22632EE90(v17, type metadata accessor for RankedVisualAction);
        a2 = v77;
        if (v42)
        {
          if (a1 < v77 || a1 >= v77 + v41)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v41;
          goto LABEL_50;
        }

LABEL_42:
        if (a1 < a4 || a1 >= a4 + v41)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v81 = a4 + v41;
        a4 += v41;
LABEL_50:
        a1 += v41;
        v82 = a1;
      }

      while (a4 < v76 && a2 < v74);
    }
  }

LABEL_91:
  sub_2262EA7A0(&v82, &v81, &v80);
  return 1;
}

unint64_t *sub_22632DE60(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = v5;
    v26 = v2;
    v24 = &v24;
    MEMORY[0x28223BE20](a1);
    v7 = &v24 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v27 = 0;
    v8 = 0;
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v5 = v13 | (v8 << 6);
      if (*(*v28 + 16))
      {
        v16 = (*(v3 + 48) + 16 * v5);
        v2 = *v16;
        v17 = v16[1];

        sub_22633941C(v2, v17);
        v19 = v18;

        if (v19)
        {
          continue;
        }
      }

      *&v7[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_22632E2C8(v7, v25, v27, v3);
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_22632E2C8(v7, v25, v27, v3);
      }

      v15 = *(v3 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_22632E240(v22, v5, v3, v28);

  MEMORY[0x22AA7D570](v22, -1, -1);
  return v23;
}

unint64_t *sub_22632E0D8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    if (*(*a4 + 16))
    {
      v16 = (*(a3 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];

      sub_22633941C(v17, v18);
      v20 = v19;

      if (v20)
      {
        continue;
      }
    }

    *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
LABEL_16:

      return sub_22632E2C8(v23, a2, v24, a3);
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22632E240(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22632E0D8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22632E2C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  result = sub_22635094C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_226350CEC();

    sub_2263504EC();
    result = sub_226350D0C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22632E4EC()
{
  result = qword_27D793B60;
  if (!qword_27D793B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793B60);
  }

  return result;
}

uint64_t sub_22632E540(uint64_t a1)
{
  v2 = sub_22634F34C();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v31[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2263500AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualAction.Kind(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VisualAction(0);
  sub_22632EDC0(a1 + *(v15 + 20), v14, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v30;
      (*(v30 + 32))(v4, v14, v2);
      sub_22634F33C();
      return (*(v21 + 8))(v4, v2);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = sub_22634FBEC();
      return (*(*(v17 - 8) + 8))(v14, v17);
    }

    v22 = sub_2262DAF10();
    strcpy(v31, "VisualSearch");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    sub_22635091C();
    if (*(v22 + 16))
    {
      sub_226339494(v32);
      if (v23)
      {
        goto LABEL_20;
      }
    }

LABEL_25:

    return sub_226315840(v32);
  }

  if (EnumCaseMultiPayload)
  {
    v24 = *(v14 + 1);
    v25 = *(v14 + 6);
    v26 = sub_2262DAF10();
    v27 = 0x69746E4565766173;
    if (!v24)
    {
      v27 = 0x6E65635365766173;
    }

    v28 = 0xEA00000000007974;
    if (!v24)
    {
      v28 = 0xE900000000000065;
    }

    v31[0] = v27;
    v31[1] = v28;
    sub_22635091C();
    if (*(v26 + 16))
    {
      sub_226339494(v32);
      if (v29)
      {

LABEL_20:
        sub_226315840(v32);
      }
    }

    goto LABEL_25;
  }

  sub_22632EE28(v14, v11, type metadata accessor for VisualAction.Kind.SystemTool);
  v19 = sub_2262DAF10();
  (*(v6 + 16))(v8, &v11[*(v9 + 20)], v5);
  sub_2262DB424();
  sub_22635091C();
  if (*(v19 + 16))
  {
    sub_226339494(v32);
    if (v20)
    {
      sub_226315840(v32);
      sub_22632EE90(v11, type metadata accessor for VisualAction.Kind.SystemTool);
    }
  }

  sub_226315840(v32);
  return sub_22632EE90(v11, type metadata accessor for VisualAction.Kind.SystemTool);
}

long double sub_22632EA30(double a1)
{
  result = 0.0;
  if (a1 >= 0.0)
  {
    v3 = a1 / 3600.0;
    if (a1 / 3600.0 >= 6.0)
    {
      if (v3 >= 24.0)
      {
        v9 = sub_22634A8A4();
        v10 = exp(v9 * -6.0);
        v11 = sub_22634A980();
        v6 = v10 * exp(v11 * -18.0);
        if (v3 >= 168.0)
        {
          v12 = sub_22634AA58();
          v6 = v6 * exp(v12 * -144.0);
          if (v3 + -168.0 <= 2190.0)
          {
            v7 = v3 + -168.0;
          }

          else
          {
            v7 = 2190.0;
          }

          v8 = sub_22634AB34();
        }

        else
        {
          v7 = v3 + -24.0;
          v8 = sub_22634AA58();
        }
      }

      else
      {
        v5 = sub_22634A8A4();
        v6 = exp(v5 * -6.0);
        v7 = v3 + -6.0;
        v8 = sub_22634A980();
      }

      return v6 * exp(-(v8 * v7));
    }

    else
    {
      v4 = -(sub_22634A8A4() * v3);

      return exp(v4);
    }
  }

  return result;
}

uint64_t sub_22632EB64(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (v26)
  {
    v1 = a1 + 32;
    v2 = *(*(a1 + 32) + 16);
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = sub_22635059C();
      *(v4 + 16) = v2;
      v28 = v4;
      v25 = v4 + 32;
      bzero((v4 + 32), 8 * v2);
      v5 = sub_22635059C();
      *(v5 + 16) = v2;
      v27 = v5;
      v23 = v5 + 32;
      bzero((v5 + 32), 8 * v2);
      v6 = 0;
      v24 = v2;
LABEL_4:
      v7 = v6 + 1;
      v8 = v3;
      v29 = v3;
      v9 = v26;
      sub_2263165F0(0, v26, 0);
      result = v29;
      v11 = v1;
      while (v6 < *(*v1 + 16))
      {
        v12 = *(*v1 + 8 * v6 + 32);
        v30 = result;
        v14 = *(result + 16);
        v13 = *(result + 24);
        if (v14 >= v13 >> 1)
        {
          sub_2263165F0((v13 > 1), v14 + 1, 1);
          result = v30;
        }

        *(result + 16) = v14 + 1;
        v15 = (result + 32);
        *(result + 32 + 8 * v14) = v12;
        v1 += 8;
        if (!--v9)
        {
          v16 = *v15;
          if (v14)
          {
            v17 = 0;
            v18 = v16;
            do
            {
              if (v18 < *(result + 40 + 8 * v17))
              {
                v18 = *(result + 40 + 8 * v17);
              }

              ++v17;
            }

            while (v14 != v17);
            v19 = (result + 40);
            v1 = v11;
            v3 = v8;
            do
            {
              v20 = *v19++;
              v21 = v20;
              if (v20 < v16)
              {
                v16 = v21;
              }

              --v14;
            }

            while (v14);
          }

          else
          {
            v18 = *v15;
            v1 = v11;
            v3 = v8;
          }

          if (v6 < *(v28 + 16))
          {
            *(v25 + 8 * v6) = v18;
            if (v6 < *(v27 + 16))
            {
              *(v23 + 8 * v6++) = v16;
              if (v7 != v24)
              {
                goto LABEL_4;
              }

              return v28;
            }

LABEL_29:
            __break(1u);
            return result;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_22632E4EC();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return v28;
}

uint64_t sub_22632EDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22632EE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22632EE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22632EF24()
{
  result = qword_27D793B68;
  if (!qword_27D793B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793B68);
  }

  return result;
}

uint64_t sub_22632EF78()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22632EFD4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_22634F41C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_22634F43C();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v6 = sub_22634F55C();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22632F158, v2, 0);
}

uint64_t sub_22632F158()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  sub_22634F59C();
  sub_22634F54C();
  sub_22632F450(&qword_28137E138, 255, MEMORY[0x277D78770], MEMORY[0x277D78778]);
  v5 = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = sub_22634F4BC();
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v0[8];
      v11 = *(v9 + 16);
      v10 = v9 + 16;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v21 = *(v10 + 56);
      v22 = v11;
      v13 = (v0[5] + 8);
      do
      {
        v14 = v0[9];
        v16 = v0[6];
        v15 = v0[7];
        v17 = v0[4];
        v22(v14, v12, v15);
        sub_22634F42C();
        (*(v10 - 8))(v14, v15);
        (*v13)(v16, v17);
        v12 += v21;
        --v8;
      }

      while (v8);
    }
  }

  v18 = v0[1];
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t sub_22632F354(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226316434;

  return sub_22632EFD4(a1, a2);
}

uint64_t sub_22632F3F8(uint64_t a1, uint64_t a2)
{
  result = sub_22632F450(qword_28137F948, a2, type metadata accessor for SystemToolActionProvider, &unk_226355444);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22632F450(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22632F498(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v22 = a3;
  v23 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_22634FF9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  swift_beginAccess();
  v17 = v3[14];
  if (*(v17 + 16) && (v18 = sub_22633941C(a1, a2), (v19 & 1) != 0))
  {
    (*(v11 + 16))(v16, *(v17 + 56) + *(v11 + 72) * v18, v10);
    (*(v11 + 32))(v22, v16, v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v20 = v24;
    sub_226330584(a1, a2, v14);
    if (!v20)
    {
      (*(v11 + 16))(v9, v14, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      swift_beginAccess();

      sub_2262DF948(v9, a1, a2);
      swift_endAccess();
      (*(v11 + 32))(v22, v14, v10);
    }
  }
}

void *sub_22632F740()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v2 - 8);
  v84 = &v65 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BD0, &qword_226355528);
  v4 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v6 = &v65 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
  v7 = *(v85 - 8);
  v8 = MEMORY[0x28223BE20](v85);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v74 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v65 - v21;
  v73 = v22;
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE8, &qword_226355530);
  MEMORY[0x28223BE20](v25 - 8);
  swift_defaultActor_initialize();
  v0[14] = MEMORY[0x277D84F98];
  sub_22634FD8C();
  sub_22634FB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BF0, &unk_226355538);
  swift_allocObject();
  v0[15] = sub_22634FB7C();
  v0[18] = MEMORY[0x277D84F90];
  v26 = *(v4 + 104);
  v68 = *MEMORY[0x277D85778];
  v27 = v86;
  v67 = v26;
  v26(v6);
  v80 = v24;
  sub_22635065C();
  v28 = *(v4 + 8);
  v69 = v6;
  v70 = v4 + 8;
  v66 = v28;
  v28(v6, v27);
  v29 = *(v7 + 16);
  v82 = v14;
  v30 = v85;
  v29(v12, v14, v85);
  v31 = type metadata accessor for AppWorkspaceObserver(0);
  v32 = objc_allocWithZone(v31);
  v29(&v32[OBJC_IVAR____TtC26VisualActionPredictionCore20AppWorkspaceObserver_continuation], v12, v30);
  v89.receiver = v32;
  v89.super_class = v31;
  v33 = objc_msgSendSuper2(&v89, sel_init);
  v34 = *(v7 + 8);
  v81 = v12;
  v83 = v7 + 8;
  v78 = v34;
  v34(v12, v30);
  v77 = v1;
  v1[16] = v33;
  v35 = objc_opt_self();
  v36 = v33;
  result = [v35 defaultWorkspace];
  if (result)
  {
    v38 = result;
    [result addObserver_];

    *(swift_allocObject() + 16) = v36;
    v65 = v36;
    v39 = v30;
    sub_22635066C();
    v40 = v69;
    v41 = v86;
    v67(v69, v68, v86);
    v42 = v79;
    v43 = v81;
    sub_22635065C();
    v66(v40, v41);
    v44 = v71;
    v29(v71, v43, v39);
    v45 = type metadata accessor for AppProtectionMonitor(0);
    v46 = objc_allocWithZone(v45);
    v29(&v46[OBJC_IVAR____TtC26VisualActionPredictionCore20AppProtectionMonitor_continuation], v44, v39);
    v88.receiver = v46;
    v88.super_class = v45;
    v47 = objc_msgSendSuper2(&v88, sel_init);
    v78(v44, v39);
    v48 = v77;
    v77[17] = v47;
    v49 = objc_opt_self();
    v86 = v47;
    v50 = [objc_msgSend(v49 subjectMonitorRegistry)];
    swift_unknownObjectRelease();
    v87 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BF8, &qword_226355548);
    swift_allocObject();
    v71 = sub_22634FD2C();

    sub_22635066C();
    v51 = sub_22635064C();
    (*(*(v51 - 8) + 56))(v84, 1, 1, v51);
    v53 = v75;
    v52 = v76;
    v54 = *(v75 + 16);
    v55 = v72;
    v54(v72, v80, v76);
    v56 = v74;
    v54(v74, v42, v52);
    v57 = *(v53 + 80);
    v58 = (v57 + 40) & ~v57;
    v59 = (v73 + v57 + v58) & ~v57;
    v60 = swift_allocObject();
    *(v60 + 2) = 0;
    *(v60 + 3) = 0;
    *(v60 + 4) = v48;
    v61 = *(v53 + 32);
    v61(&v60[v58], v55, v52);
    v61(&v60[v59], v56, v52);

    sub_2262FB4D4(0, 0, v84, &unk_226355558, v60);

    v62 = v85;
    v63 = v78;
    v78(v81, v85);
    v64 = *(v53 + 8);
    v64(v79, v52);
    v63(v82, v62);
    v64(v80, v52);
    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22633000C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    [v3 removeObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2263300B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2263300DC, a4, 0);
}

uint64_t sub_2263300DC()
{
  v1 = v0[4];
  sub_226330148(v0[3]);
  sub_226330148(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_226330148(uint64_t a1)
{
  v22 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  sub_22635062C();
  v11 = sub_22635064C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v4 + 32))(v15 + v13, v7, v3);
  *(v15 + v14) = v12;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v16 = sub_2262FB4D4(0, 0, v10, &unk_226355568, v15);
  swift_beginAccess();
  v17 = v1[18];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[18] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_2262DD0D0(0, v17[2] + 1, 1, v17);
    v1[18] = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_2262DD0D0((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v17[v20 + 4] = v16;
  v1[18] = v17;
  swift_endAccess();
}

uint64_t sub_226330448()
{
  swift_beginAccess();
  v1 = *(*(v0 + 144) + 16);
  if (v1)
  {

    v2 = 32;
    do
    {

      sub_2263506BC();

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_226330534()
{
  sub_226330448();

  return swift_defaultActor_deallocate();
}

void sub_226330584(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = sub_22634FE9C();
  MEMORY[0x28223BE20](v5 - 8);
  v75 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634FF2C();
  MEMORY[0x28223BE20](v7 - 8);
  v77 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930E0, &qword_226355500);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = v61 - v10;
  v11 = sub_22634FE2C();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v73 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22634FF7C();
  MEMORY[0x28223BE20](v13 - 8);
  v78 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22634FF9C();
  v74 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v61 - v19;
  v21 = sub_22634FF5C();
  v79 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (v61 - v25);
  v27 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v28 = v80;
  v29 = sub_226334098(a1, a2, 1);
  if (v28)
  {
    return;
  }

  v67 = v24;
  v68 = v26;
  v63 = v18;
  v64 = 0;
  v65 = v20;
  v66 = v15;
  v69 = v21;
  v80 = v29;
  v62 = [v29 compatibilityObject];
  v30 = [v62 applicationType];
  v61[1] = a1;
  if (!v30)
  {
    v36 = MEMORY[0x277D78D48];
    v38 = v68;
    v37 = v69;
    v35 = v79;
    goto LABEL_17;
  }

  v31 = v30;
  v32 = sub_22635046C();
  v34 = v33;

  v35 = v79;
  if (v32 == 0x6C616E7265746E49 && v34 == 0xE800000000000000)
  {

    v36 = MEMORY[0x277D78D60];
    v38 = v68;
    v37 = v69;
    goto LABEL_17;
  }

  v39 = sub_226350C4C();
  v37 = v69;
  if (v39)
  {

    v36 = MEMORY[0x277D78D60];
LABEL_16:
    v38 = v68;
    goto LABEL_17;
  }

  if (v32 == 0x6D6574737953 && v34 == 0xE600000000000000 || (sub_226350C4C() & 1) != 0 || v32 == 0xD000000000000014 && 0x8000000226357840 == v34 || (sub_226350C4C() & 1) != 0)
  {

    v36 = MEMORY[0x277D78D58];
    goto LABEL_16;
  }

  v60 = v68;
  *v68 = v32;
  v60[1] = v34;
  v38 = v60;
  v36 = MEMORY[0x277D78D50];
LABEL_17:
  (*(v35 + 104))(v38, *v36, v37);
  v40 = v80;
  [v80 isLaunchProhibited];
  v41 = [v40 appTags];
  sub_22635056C();

  (*(v35 + 16))(v67, v38, v37);
  sub_22634FF6C();
  v42 = [v40 localizedName];
  sub_22635046C();

  v43 = [v40 iTunesMetadata];
  v44 = [v43 genreIdentifier];

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v45 = v72;
    sub_22634FE1C();
    v46 = v70;
    v47 = v71;
    v48 = *(v70 + 48);
    if (v48(v45, 1, v71) == 1)
    {
      (*(v46 + 104))(v73, *MEMORY[0x277D78D10], v47);
      v49 = v48(v45, 1, v47) == 1;
      v50 = v45;
      v51 = v65;
      if (!v49)
      {
        sub_2262D67D8(v50, &qword_27D7930E0, &qword_226355500);
      }
    }

    else
    {
      (*(v46 + 32))(v73, v45, v47);
      v51 = v65;
    }

    sub_22634FE6C();
    sub_22634FE6C();

    sub_22634FEBC();
    v52 = [v80 applicationState];
    v53 = v63;
    sub_226331010(v51, v52, v63);

    v54 = v74;
    v55 = *(v74 + 8);
    v56 = v66;
    v55(v51, v66);
    (*(v54 + 32))(v51, v53, v56);
    v57 = objc_opt_self();
    v58 = sub_22635045C();
    v59 = [v57 applicationWithBundleIdentifier_];

    sub_22633149C(v51, v59, v76);
    v55(v51, v56);
    (*(v79 + 8))(v68, v69);
  }
}

uint64_t sub_226330DB4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 40);
    v10 = &unk_27D793BC0;
    do
    {
      v12 = *(v9 - 1);
      v13 = *v9;
      swift_beginAccess();

      v14 = sub_22633941C(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v2 + 112);
        v23 = v19;
        *(v2 + 112) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_226339D1C();
          v19 = v23;
        }

        v20 = *(v19 + 56);
        v21 = sub_22634FF9C();
        v22 = *(v21 - 8);
        (*(v22 + 32))(v7, v20 + *(v22 + 72) * v14, v21);
        sub_2262E23D0(v14, v19);
        *(v2 + 112) = v19;

        (*(v22 + 56))(v7, 0, 1, v21);
        v10 = v17;
      }

      else
      {
        v11 = sub_22634FF9C();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      }

      sub_2262D67D8(v7, v10, &qword_2263525D8);
      result = swift_endAccess();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_226331010@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27[5] = a1;
  v27[6] = a3;
  v4 = sub_22634FE2C();
  MEMORY[0x28223BE20](v4 - 8);
  v27[4] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634FE9C();
  MEMORY[0x28223BE20](v6 - 8);
  v27[3] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634FF7C();
  MEMORY[0x28223BE20](v8 - 8);
  v27[2] = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634FF2C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v27 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v27 - v18;
  v27[7] = MEMORY[0x277D84F90];
  sub_2263344A4(&unk_28137E068, MEMORY[0x277D78D30], MEMORY[0x277D78D40]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BA0, &qword_226355518);
  sub_226334174(&qword_28137E018, &unk_27D793BA0, &qword_226355518);
  sub_2263508CC();
  if ([a2 isValid])
  {
    sub_22634FE7C();
    sub_22633186C(v17, v14);
    v20 = *(v11 + 8);
    v20(v14, v10);
    v20(v17, v10);
  }

  if ([a2 isInstalled])
  {
    sub_22634FE8C();
    sub_22633186C(v17, v14);
    v21 = *(v11 + 8);
    v21(v14, v10);
    v21(v17, v10);
  }

  if ([a2 isPlaceholder])
  {
    sub_22634FEEC();
    sub_22633186C(v17, v14);
    v22 = *(v11 + 8);
    v22(v14, v10);
    v22(v17, v10);
  }

  if ([a2 isRestricted])
  {
    sub_22634FEDC();
    sub_22633186C(v17, v14);
    v23 = *(v11 + 8);
    v23(v14, v10);
    v23(v17, v10);
  }

  v24 = sub_22634FECC();
  v27[0] = v25;
  v27[1] = v24;
  sub_22634FF8C();
  (*(v11 + 16))(v17, v19, v10);
  sub_22634FEAC();
  sub_22634FE5C();
  sub_22634FF3C();
  sub_22634FEBC();
  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_22633149C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26[4] = a1;
  v26[6] = a3;
  v4 = sub_22634FE2C();
  MEMORY[0x28223BE20](v4 - 8);
  v26[5] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22634FF2C();
  MEMORY[0x28223BE20](v6 - 8);
  v26[3] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634FF7C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22634FE9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v27 = v26 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v26 - v16;
  v29 = MEMORY[0x277D84F90];
  sub_2263344A4(&qword_28137E080, MEMORY[0x277D78D18], MEMORY[0x277D78D28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793B78, &qword_226355508);
  sub_226334174(&qword_28137E020, &unk_27D793B78, &qword_226355508);
  v28 = v17;
  sub_2263508CC();
  if ([a2 isLocked])
  {
    sub_22634FE8C();
    v18 = v27;
    sub_226331B70(v27, v13);
    v19 = *(v10 + 8);
    v19(v13, v9);
    v19(v18, v9);
  }

  if ([a2 isHidden])
  {
    sub_22634FE7C();
    v20 = v27;
    sub_226331B70(v27, v13);
    v21 = *(v10 + 8);
    v21(v13, v9);
    v21(v20, v9);
  }

  v22 = sub_22634FECC();
  v26[1] = v23;
  v26[2] = v22;
  sub_22634FF8C();
  sub_22634FF4C();
  v24 = v28;
  (*(v10 + 16))(v27, v28, v9);
  sub_22634FE5C();
  sub_22634FF3C();
  sub_22634FEBC();
  return (*(v10 + 8))(v24, v9);
}

uint64_t sub_22633186C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BB0, &qword_226355520);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_22634FF2C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277D78D30];
  v25 = sub_2263344A4(&unk_28137E068, MEMORY[0x277D78D30], MEMORY[0x277D78D40]);
  sub_2263508AC();
  v17 = v16;
  v18 = v28;
  sub_2263344A4(&qword_28137E078, v17, MEMORY[0x277D78D38]);
  v26 = a2;
  v19 = sub_22635044C();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_2263508BC();
  }

  v22 = v29;
  sub_2262D6764(v7, v29, &unk_27D793BB0, &qword_226355520);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_226331B70(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B88, &qword_226355510);
  v4 = MEMORY[0x28223BE20](v28);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = sub_22634FE9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(v9 + 16);
  v27 = v2;
  v15(v12, v2, v8);
  v16 = MEMORY[0x277D78D18];
  v25 = sub_2263344A4(&qword_28137E080, MEMORY[0x277D78D18], MEMORY[0x277D78D28]);
  sub_2263508AC();
  v17 = v16;
  v18 = v28;
  sub_2263344A4(&unk_27D793B90, v17, MEMORY[0x277D78D20]);
  v26 = a2;
  v19 = sub_22635044C();
  v20 = *(v18 + 48);
  *v7 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v9 + 32))(&v7[v20], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v21 = v26;
    v15(&v7[v20], v26, v8);
    v15(v12, v21, v8);
    sub_2263508BC();
  }

  v22 = v29;
  sub_2262D6764(v7, v29, &qword_27D793B88, &qword_226355510);
  v23 = *v22;
  (*(v9 + 32))(v30, &v22[*(v18 + 48)], v8);
  return v23;
}

uint64_t sub_226331E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v7 = sub_22634FF9C();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v8 = sub_22635004C();
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v9 = sub_22634FD8C();
  v6[45] = v9;
  v6[46] = *(v9 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C00, &qword_226354420);
  v6[51] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793878, &qword_226354428);
  v6[52] = v10;
  v6[53] = *(v10 - 8);
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226332188, 0, 0);
}

uint64_t sub_226332188()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  sub_22635069C();
  swift_beginAccess();
  *(v0 + 600) = *MEMORY[0x277D78CB8];
  *(v0 + 604) = *MEMORY[0x277D78C98];
  *(v0 + 608) = *MEMORY[0x277D78CA0];
  *(v0 + 612) = *MEMORY[0x277D78CB0];
  *(v0 + 616) = *MEMORY[0x277D78CA8];
  *(v0 + 440) = 0;
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_2263322C0;
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2263322C0()
{

  return MEMORY[0x2822009F8](sub_2263323BC, 0, 0);
}

uint64_t sub_2263323BC()
{
  v125 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(*(v0 + 400), v1, v2);
    Strong = swift_weakLoadStrong();
    *(v0 + 456) = Strong;
    if (Strong)
    {
      v5 = Strong;
      v6 = *(v0 + 600);
      v8 = *(v0 + 392);
      v7 = *(v0 + 400);
      v9 = *(v0 + 360);
      v10 = *(v0 + 368);
      v11 = *(v10 + 16);
      *(v0 + 464) = v11;
      *(v0 + 472) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v11(v8, v7, v9);
      v12 = (*(v10 + 88))(v8, v9);
      if (v12 == v6)
      {
        v13 = *(v0 + 392);
        (*(*(v0 + 368) + 96))(v13, *(v0 + 360));
        v14 = *v13;
        sub_22634FFFC();

        v15 = sub_22635003C();
        v16 = sub_22635072C();

        v17 = os_log_type_enabled(v15, v16);
        v18 = *(v0 + 352);
        v20 = *(v0 + 296);
        v19 = *(v0 + 304);
        if (v17)
        {
          v119 = *(v0 + 352);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v124 = v22;
          *v21 = 136315138;
          v23 = MEMORY[0x22AA7C630](v14, MEMORY[0x277D837D0]);
          v25 = v24;

          v26 = sub_226345004(v23, v25, &v124);

          *(v21 + 4) = v26;
          _os_log_impl(&dword_2262B6000, v15, v16, "App Installed: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          MEMORY[0x22AA7D570](v22, -1, -1);
          MEMORY[0x22AA7D570](v21, -1, -1);

          (*(v19 + 8))(v119, v20);
        }

        else
        {

          (*(v19 + 8))(v18, v20);
        }

        goto LABEL_14;
      }

      if (v12 == *(v0 + 604))
      {
        v29 = *(v0 + 392);
        (*(*(v0 + 368) + 96))(v29, *(v0 + 360));
        v30 = *v29;
        *(v0 + 480) = *v29;
        sub_22634FFFC();

        v31 = sub_22635003C();
        v32 = sub_22635072C();

        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 344);
        v36 = *(v0 + 296);
        v35 = *(v0 + 304);
        if (v33)
        {
          v120 = *(v0 + 344);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v124 = v38;
          *v37 = 136315138;
          v39 = MEMORY[0x22AA7C630](v30, MEMORY[0x277D837D0]);
          v41 = sub_226345004(v39, v40, &v124);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_2262B6000, v31, v32, "App Uninstalled: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
          MEMORY[0x22AA7D570](v38, -1, -1);
          MEMORY[0x22AA7D570](v37, -1, -1);

          (*(v35 + 8))(v120, v36);
        }

        else
        {

          (*(v35 + 8))(v34, v36);
        }

        v64 = sub_226332FCC;
LABEL_22:
        v65 = v64;
        v66 = v5;
LABEL_39:

        return MEMORY[0x2822009F8](v65, v66, 0);
      }

      if (v12 == *(v0 + 608))
      {
        v51 = *(v0 + 392);
        (*(*(v0 + 368) + 96))(v51, *(v0 + 360));
        v52 = *v51;
        *(v0 + 488) = *v51;
        sub_22634FFFC();

        v53 = sub_22635003C();
        v54 = sub_22635072C();

        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v0 + 336);
        v58 = *(v0 + 296);
        v57 = *(v0 + 304);
        if (v55)
        {
          v121 = *(v0 + 336);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v124 = v60;
          *v59 = 136315138;
          v61 = MEMORY[0x22AA7C630](v52, MEMORY[0x277D837D0]);
          v63 = sub_226345004(v61, v62, &v124);

          *(v59 + 4) = v63;
          _os_log_impl(&dword_2262B6000, v53, v54, "App State Changed: %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x22AA7D570](v60, -1, -1);
          MEMORY[0x22AA7D570](v59, -1, -1);

          v47 = (*(v57 + 8))(v121, v58);
        }

        else
        {

          v47 = (*(v57 + 8))(v56, v58);
        }

        v80 = *(v52 + 16);
        *(v0 + 496) = v80;
        if (v80)
        {
          *(v0 + 504) = *(v0 + 440);
          *(v0 + 512) = 0;
          v81 = *(v0 + 488);
          if (v81[2])
          {
            v82 = *(v0 + 456);
            *(v0 + 520) = v81[4];
            *(v0 + 528) = v81[5];
            v83 = sub_226333044;
LABEL_38:
            v93 = v83;

            v65 = v93;
            v66 = v82;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        if (v12 != *(v0 + 612))
        {
          if (v12 != *(v0 + 616))
          {
            v94 = *(v0 + 400);
            v95 = *(v0 + 384);
            v96 = *(v0 + 360);
            sub_22634FFFC();
            v11(v95, v94, v96);
            v97 = sub_22635003C();
            v98 = sub_22635073C();
            v99 = os_log_type_enabled(v97, v98);
            v100 = *(v0 + 384);
            if (v99)
            {
              v101 = *(v0 + 368);
              v102 = *(v0 + 376);
              v103 = *(v0 + 360);
              v123 = *(v0 + 312);
              v117 = *(v0 + 304);
              v118 = *(v0 + 296);
              v104 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v124 = v116;
              *v104 = 136315138;
              v11(v102, v100, v103);
              v105 = sub_2263504CC();
              v106 = v98;
              v108 = v107;
              v109 = *(v101 + 8);
              v109(v100, v103);
              v110 = sub_226345004(v105, v108, &v124);

              *(v104 + 4) = v110;
              _os_log_impl(&dword_2262B6000, v97, v106, "Unknown App Event: %s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v116);
              MEMORY[0x22AA7D570](v116, -1, -1);
              MEMORY[0x22AA7D570](v104, -1, -1);

              (*(v117 + 8))(v123, v118);
            }

            else
            {
              v111 = *(v0 + 360);
              v112 = *(v0 + 368);
              v114 = *(v0 + 304);
              v113 = *(v0 + 312);
              v115 = *(v0 + 296);

              v109 = *(v112 + 8);
              v109(v100, v111);
              (*(v114 + 8))(v113, v115);
            }

            v109(*(v0 + 392), *(v0 + 360));
            goto LABEL_14;
          }

          sub_22634FFFC();
          v84 = sub_22635003C();
          v85 = sub_22635072C();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&dword_2262B6000, v84, v85, "LaunchServices Database Reset", v86, 2u);
            MEMORY[0x22AA7D570](v86, -1, -1);
          }

          v87 = *(v0 + 320);
          v88 = *(v0 + 296);
          v89 = *(v0 + 304);

          (*(v89 + 8))(v87, v88);
          v64 = sub_226333D90;
          goto LABEL_22;
        }

        v67 = *(v0 + 392);
        (*(*(v0 + 368) + 96))(v67, *(v0 + 360));
        v68 = *v67;
        *(v0 + 544) = *v67;
        sub_22634FFFC();

        v69 = sub_22635003C();
        v70 = sub_22635072C();

        v71 = os_log_type_enabled(v69, v70);
        v72 = *(v0 + 328);
        v74 = *(v0 + 296);
        v73 = *(v0 + 304);
        if (v71)
        {
          v122 = *(v0 + 328);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v124 = v76;
          *v75 = 136315138;
          v77 = MEMORY[0x22AA7C630](v68, MEMORY[0x277D837D0]);
          v79 = sub_226345004(v77, v78, &v124);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_2262B6000, v69, v70, "App Protection State Changed: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x22AA7D570](v76, -1, -1);
          MEMORY[0x22AA7D570](v75, -1, -1);

          v47 = (*(v73 + 8))(v122, v74);
        }

        else
        {

          v47 = (*(v73 + 8))(v72, v74);
        }

        v90 = *(v68 + 16);
        *(v0 + 552) = v90;
        if (v90)
        {
          v91 = *(v0 + 440);
          *(v0 + 568) = 0;
          *(v0 + 560) = v91;
          v92 = *(v0 + 544);
          if (v92[2])
          {
            v82 = *(v0 + 456);
            *(v0 + 576) = v92[4];
            *(v0 + 584) = v92[5];
            v83 = sub_2263336EC;
            goto LABEL_38;
          }

LABEL_48:
          __break(1u);
          return MEMORY[0x2822003E8](v47, v49, v50, v48);
        }
      }

LABEL_14:
      v42 = *(v0 + 440);
      v43 = *(v0 + 400);
      v44 = *(v0 + 368);
      v45 = *(v0 + 360);
      (*(v0 + 464))(*(v0 + 376), v43, v45);
      sub_22634FB8C();
      (*(v44 + 8))(v43, v45);

      *(v0 + 440) = v42;
      v46 = swift_task_alloc();
      *(v0 + 448) = v46;
      *v46 = v0;
      v46[1] = sub_2263322C0;
      v47 = *(v0 + 408);
      v48 = *(v0 + 416);
      v49 = 0;
      v50 = 0;

      return MEMORY[0x2822003E8](v47, v49, v50, v48);
    }

    (*(*(v0 + 368) + 8))(*(v0 + 400), *(v0 + 360));
  }

  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_226332FCC()
{
  sub_226330DB4(*(v0 + 480));

  return MEMORY[0x2822009F8](sub_2263344EC, 0, 0);
}

uint64_t sub_226333044()
{
  v1 = v0[57];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16) || (v3 = sub_22633941C(v0[65], v0[66]), (v4 & 1) == 0))
  {
    swift_endAccess();

    v19 = v0[63];
    goto LABEL_6;
  }

  v66 = v0[65];
  v67 = v0[66];
  v68 = v0[63];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[26];
  v10 = *(v2 + 56);
  v11 = v7[9];
  v12 = v7[2];
  v12(v5, v10 + v11 * v3, v8);
  v13 = v8;
  v14 = v7[4];
  v14(v6, v5, v13);
  swift_endAccess();
  sub_226333F30(v6, v66, v67, v9);
  if (v68)
  {
    v15 = v0[36];
    v16 = v0[27];
    v17 = v0[28];
    v18 = v0[26];

    (*(v17 + 8))(v15, v16);
    (*(v17 + 56))(v18, 1, 1, v16);
    sub_2262D67D8(v18, &unk_27D793BC0, &qword_2263525D8);
    v19 = 0;
    goto LABEL_6;
  }

  v69 = v11;
  v23 = v0[34];
  v24 = v0[27];
  v25 = v0[26];
  (*(v0[28] + 56))(v25, 0, 1, v24);
  v14(v23, v25, v24);
  sub_2263344A4(&unk_27D793C10, MEMORY[0x277D78D68], MEMORY[0x277D78D70]);
  v26 = sub_22635044C();
  v27 = v0[66];
  if (v26)
  {
    v28 = v0[36];
    v29 = v0[34];
    v30 = v0[27];
    v31 = v0[28];

    v32 = *(v31 + 8);
    v32(v29, v30);
    v32(v28, v30);
    v19 = 0;
    goto LABEL_6;
  }

  v33 = v0[65];
  v34 = v0[57];
  v36 = v0[33];
  v35 = v0[34];
  v37 = v0[27];
  swift_beginAccess();
  v12(v36, v35, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v34 + 112);
  v0[21] = v39;
  *(v34 + 112) = 0x8000000000000000;
  v20 = sub_22633941C(v33, v27);
  v40 = *(v39 + 16);
  v41 = (v21 & 1) == 0;
  v42 = __OFADD__(v40, v41);
  v43 = v40 + v41;
  if (v42)
  {
    __break(1u);
    goto LABEL_25;
  }

  v44 = v21;
  if (*(v39 + 24) >= v43)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = v20;
      sub_226339D1C();
      v20 = v49;
    }

    goto LABEL_19;
  }

  v45 = v0[66];
  v46 = v0[65];
  sub_226336374(v43, isUniquelyReferenced_nonNull_native);
  v20 = sub_22633941C(v46, v45);
  if ((v44 & 1) == (v47 & 1))
  {
LABEL_19:
    v50 = v0[66];
    v51 = v0[27];
    if (v44)
    {
      v52 = v0[33];
      v53 = v0[28];
      v54 = v20;

      v55 = v0[21];
      (*(v53 + 40))(v55[7] + v54 * v69, v52, v51);
LABEL_23:
      v61 = v0[36];
      v62 = v0[34];
      v63 = v0[27];
      v64 = v0[28];
      *(v0[57] + 112) = v55;

      swift_endAccess();
      v65 = *(v64 + 8);
      v65(v62, v63);
      v65(v61, v63);
      v19 = 0;
LABEL_6:
      v0[67] = v19;
      v20 = sub_22633353C;
      v21 = 0;
      v22 = 0;

      return MEMORY[0x2822009F8](v20, v21, v22);
    }

    v56 = v0[65];
    v57 = v0[33];
    v55 = v0[21];
    v55[(v20 >> 6) + 8] |= 1 << v20;
    v58 = (v55[6] + 16 * v20);
    *v58 = v56;
    v58[1] = v50;
    v20 = (v14)(v55[7] + v20 * v69, v57, v51);
    v59 = v55[2];
    v42 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (!v42)
    {
      v55[2] = v60;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  return sub_226350C8C();
}

uint64_t sub_22633353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 512) + 1;
  if (v5 == *(v4 + 496))
  {

    v6 = *(v4 + 536);
    v7 = *(v4 + 400);
    v8 = *(v4 + 368);
    v9 = *(v4 + 360);
    (*(v4 + 464))(*(v4 + 376), v7, v9);
    sub_22634FB8C();
    (*(v8 + 8))(v7, v9);

    *(v4 + 440) = v6;
    v10 = swift_task_alloc();
    *(v4 + 448) = v10;
    *v10 = v4;
    v10[1] = sub_2263322C0;
    a1 = *(v4 + 408);
    a4 = *(v4 + 416);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  *(v4 + 504) = *(v4 + 536);
  *(v4 + 512) = v5;
  v11 = *(v4 + 488);
  if (v5 >= *(v11 + 16))
  {
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v12 = *(v4 + 456);
  v13 = v11 + 16 * v5;
  *(v4 + 520) = *(v13 + 32);
  *(v4 + 528) = *(v13 + 40);

  return MEMORY[0x2822009F8](sub_226333044, v12, 0);
}

uint64_t sub_2263336EC()
{
  v1 = v0[57];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16) || (v3 = sub_22633941C(v0[72], v0[73]), (v4 & 1) == 0))
  {
    swift_endAccess();

    v19 = v0[70];
    goto LABEL_6;
  }

  v66 = v0[70];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v10 = *(v2 + 56);
  v11 = v7[9];
  v12 = v7[2];
  v12(v5, v10 + v11 * v3, v8);
  v13 = v8;
  v14 = v7[4];
  v14(v6, v5, v13);
  swift_endAccess();
  sub_226333FF0(v6, v9);
  if (v66)
  {
    v15 = v0[32];
    v16 = v0[27];
    v17 = v0[28];
    v18 = v0[25];

    (*(v17 + 8))(v15, v16);
    (*(v17 + 56))(v18, 1, 1, v16);
    sub_2262D67D8(v18, &unk_27D793BC0, &qword_2263525D8);
    v19 = 0;
    goto LABEL_6;
  }

  v67 = v11;
  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[25];
  (*(v0[28] + 56))(v25, 0, 1, v24);
  v14(v23, v25, v24);
  sub_2263344A4(&unk_27D793C10, MEMORY[0x277D78D68], MEMORY[0x277D78D70]);
  v26 = sub_22635044C();
  v27 = v0[73];
  if (v26)
  {
    v28 = v0[32];
    v29 = v0[30];
    v30 = v0[27];
    v31 = v0[28];

    v32 = *(v31 + 8);
    v32(v29, v30);
    v32(v28, v30);
    v19 = 0;
    goto LABEL_6;
  }

  v33 = v0[72];
  v34 = v0[57];
  v36 = v0[29];
  v35 = v0[30];
  v37 = v0[27];
  swift_beginAccess();
  v12(v36, v35, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v34 + 112);
  v0[20] = v39;
  *(v34 + 112) = 0x8000000000000000;
  v20 = sub_22633941C(v33, v27);
  v40 = *(v39 + 16);
  v41 = (v21 & 1) == 0;
  v42 = __OFADD__(v40, v41);
  v43 = v40 + v41;
  if (v42)
  {
    __break(1u);
    goto LABEL_25;
  }

  v44 = v21;
  if (*(v39 + 24) >= v43)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = v20;
      sub_226339D1C();
      v20 = v49;
    }

    goto LABEL_19;
  }

  v45 = v0[73];
  v46 = v0[72];
  sub_226336374(v43, isUniquelyReferenced_nonNull_native);
  v20 = sub_22633941C(v46, v45);
  if ((v44 & 1) == (v47 & 1))
  {
LABEL_19:
    v50 = v0[73];
    v51 = v0[27];
    if (v44)
    {
      v53 = v0[28];
      v52 = v0[29];
      v54 = v20;

      v55 = v0[20];
      (*(v53 + 40))(v55[7] + v54 * v67, v52, v51);
LABEL_23:
      v61 = v0[32];
      v62 = v0[30];
      v63 = v0[27];
      v64 = v0[28];
      *(v0[57] + 112) = v55;

      swift_endAccess();
      v65 = *(v64 + 8);
      v65(v62, v63);
      v65(v61, v63);
      v19 = 0;
LABEL_6:
      v0[74] = v19;
      v20 = sub_226333BDC;
      v21 = 0;
      v22 = 0;

      return MEMORY[0x2822009F8](v20, v21, v22);
    }

    v56 = v0[72];
    v57 = v0[29];
    v55 = v0[20];
    v55[(v20 >> 6) + 8] |= 1 << v20;
    v58 = (v55[6] + 16 * v20);
    *v58 = v56;
    v58[1] = v50;
    v20 = (v14)(v55[7] + v20 * v67, v57, v51);
    v59 = v55[2];
    v42 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (!v42)
    {
      v55[2] = v60;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  return sub_226350C8C();
}

uint64_t sub_226333BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 568) + 1;
  if (v5 == *(v4 + 552))
  {

    v6 = *(v4 + 592);
    v7 = *(v4 + 400);
    v8 = *(v4 + 368);
    v9 = *(v4 + 360);
    (*(v4 + 464))(*(v4 + 376), v7, v9);
    sub_22634FB8C();
    (*(v8 + 8))(v7, v9);

    *(v4 + 440) = v6;
    v10 = swift_task_alloc();
    *(v4 + 448) = v10;
    *v10 = v4;
    v10[1] = sub_2263322C0;
    a1 = *(v4 + 408);
    a4 = *(v4 + 416);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v11 = *(v4 + 592);
  *(v4 + 568) = v5;
  *(v4 + 560) = v11;
  v12 = *(v4 + 544);
  if (v5 >= *(v12 + 16))
  {
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v13 = *(v4 + 456);
  v14 = v12 + 16 * v5;
  *(v4 + 576) = *(v14 + 32);
  *(v4 + 584) = *(v14 + 40);

  return MEMORY[0x2822009F8](sub_2263336EC, v13, 0);
}

uint64_t sub_226333D90()
{
  v1 = *(v0 + 456);
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_226333E1C, 0, 0);
}

uint64_t sub_226333E1C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 400);
  v3 = *(v0 + 368);
  v4 = *(v0 + 360);
  (*(v0 + 464))(*(v0 + 376), v2, v4);
  sub_22634FB8C();
  (*(v3 + 8))(v2, v4);

  *(v0 + 440) = v1;
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_2263322C0;
  v6 = *(v0 + 408);
  v7 = *(v0 + 416);

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

void sub_226333F30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v10 = sub_226334098(a2, a3, 1);
  if (!v4)
  {
    v11 = v10;
    v12 = [v10 applicationState];
    sub_226331010(a1, v12, a4);
  }
}

void sub_226333FF0(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = objc_opt_self();
  v6 = sub_22635045C();
  v7 = [v5 applicationWithBundleIdentifier_];

  sub_22633149C(a1, v7, a3);
}

id sub_226334098(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22635045C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22634EDAC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_226334174(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_226334220(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2262FF0E0;

  return sub_2263300B8(a1, v9, v10, v11, v1 + v7, v1 + v8);
}

uint64_t sub_22633435C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2262D641C;

  return sub_226331E74(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_2263344A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2263344F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226316434;

  return v11(a1, a2, a3, a4);
}

uint64_t EngagementStream.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_22635046C();

  return v2;
}

void EngagementStream.init()(void *a1@<X8>)
{
  v2 = [objc_opt_self() atx:7257600.0 storeConfigWithMaxAge:?];
  type metadata accessor for VisualActionEvent();
  v3 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v4 = v2;
  v5 = sub_22635045C();
  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:v4 eventDataClass:swift_getObjCClassFromMetadata()];

  *a1 = v6;
}

void EngagementStream.init(config:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_opt_self() atx:7257600.0 storeConfigWithMaxAge:?];
  }

  type metadata accessor for VisualActionEvent();
  v5 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v6 = a1;
  v7 = v4;
  v8 = sub_22635045C();
  v9 = [v5 initWithPrivateStreamIdentifier:v8 storeConfig:v7 eventDataClass:swift_getObjCClassFromMetadata()];

  *a2 = v9;
}

void *EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v13 = *v7;
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F98];
  *(v14 + 16) = MEMORY[0x277D84F98];
  v57 = v14 + 16;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = v16 + 16;
  v67 = sub_22633BACC;
  v68 = 0;
  v61 = [v13 publisherFromStartTime_];
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22633BAE0;
  v66 = &block_descriptor_1;
  v18 = _Block_copy(&aBlock);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v14;
  v19[8] = v16;
  v67 = sub_226335258;
  v68 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22633BAE0;
  v66 = &block_descriptor_7;
  v20 = _Block_copy(&aBlock);

  v21 = [v61 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);

  v22 = *(a1 + 16);
  if (!v22)
  {

    v55 = MEMORY[0x277D84F98];
LABEL_31:

    return v55;
  }

  v23 = (a1 + 40);
  v62 = MEMORY[0x277D84F98];
  v24 = v14;
  v25 = v14 + 16;
  while (1)
  {
    v27 = *(v23 - 1);
    v26 = *v23;
    swift_beginAccess();
    v28 = *v17;
    v29 = *(*v17 + 16);

    if (!v29 || (v30 = sub_22633941C(v27, v26), (v31 & 1) == 0))
    {
      swift_endAccess();
LABEL_4:

      goto LABEL_5;
    }

    v32 = *(*(v28 + 56) + 8 * v30);
    swift_endAccess();
    swift_beginAccess();
    v33 = *v25;
    if (*(*v25 + 16) && (v34 = sub_22633941C(v27, v26), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
      if (v32 <= 0)
      {
        goto LABEL_4;
      }

      if (v36 <= 0 && v32 < a6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_endAccess();
      if (v32 < 1 || v32 < a6)
      {
        goto LABEL_4;
      }

      v36 = 0;
    }

    v59 = v36;
    v38 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v62;
    v40 = sub_22633941C(v27, v26);
    v42 = v62[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      break;
    }

    v46 = v41;
    if (v62[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = v40;
        sub_22633A104();
        v40 = v54;
      }
    }

    else
    {
      sub_226336994(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_22633941C(v27, v26);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_34;
      }
    }

    v24 = v38;
    v25 = v57;
    v48 = v59 / v32;
    if (v46)
    {
      v49 = v40;

      v62 = aBlock;
      *(aBlock[7] + 8 * v49) = v48;
    }

    else
    {
      v50 = aBlock;
      aBlock[(v40 >> 6) + 8] |= 1 << v40;
      v51 = (v50[6] + 16 * v40);
      *v51 = v27;
      v51[1] = v26;
      *(v50[7] + 8 * v40) = v48;
      v52 = v50[2];
      v44 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v44)
      {
        goto LABEL_33;
      }

      v62 = v50;
      v50[2] = v53;
    }

LABEL_5:
    v23 += 2;
    if (!--v22)
    {

      v55 = v62;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_226350C8C();
  __break(1u);
  return result;
}

id EngagementStream.publisher(fromStartTime:)()
{
  v1 = [*v0 publisherFromStartTime_];

  return v1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226334D2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v61 = a7;
  v15 = sub_22635004C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 eventBody];
  if (!v19)
  {
    sub_22634FFBC();
    v29 = sub_22635003C();
    v30 = sub_22635073C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2262B6000, v29, v30, "Failed to get eventBody from event. Unable to process this stream.", v31, 2u);
      MEMORY[0x22AA7D570](v31, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    return;
  }

  v20 = v19;
  v60 = a8;
  v21 = &v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  v22 = *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8];
  v63[0] = *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  v63[1] = v22;
  MEMORY[0x28223BE20](v19);
  *(&v59 - 2) = v63;

  v23 = sub_22633B9A8(sub_22633BA54, (&v59 - 4), a2);

  if ((v23 & 1) == 0 || a4 && ((v24 = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8]) == 0 || (*&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel] == a3 ? (v25 = v24 == a4) : (v25 = 0), !v25 && (sub_226350C4C() & 1) == 0)) || a6 && ((v26 = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8]) == 0 || (*&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel] == a5 ? (v27 = v26 == a6) : (v27 = 0), !v27 && (sub_226350C4C() & 1) == 0)))
  {

    return;
  }

  if (v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome])
  {
    v28 = 0;
  }

  else
  {
    v32 = *v21;
    v28 = v21[1];
    v33 = v61;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v33 + 16);
    v35 = v62;
    *(v33 + 16) = 0x8000000000000000;
    v36 = sub_22633941C(v32, v28);
    v38 = v35[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      __break(1u);
      goto LABEL_47;
    }

    LOBYTE(a4) = v37;
    if (v35[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_2263366F4(v41, isUniquelyReferenced_nonNull_native);
      v35 = v62;
      v36 = sub_22633941C(v32, v28);
      if ((a4 & 1) != (v42 & 1))
      {
        goto LABEL_35;
      }
    }

    while (1)
    {
      *(v61 + 16) = v35;
      if ((a4 & 1) == 0)
      {
        v43 = v36;
        sub_2262E3118(v36, v32, v28, 0, v35);

        v36 = v43;
      }

      v44 = v35[7];
      v45 = *(v44 + 8 * v36);
      v40 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (!v40)
      {
        break;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      v58 = v36;
      sub_226339F9C();
      v36 = v58;
      v35 = v62;
    }

    *(v44 + 8 * v36) = v46;
    swift_endAccess();

    v28 = sub_2262B7EB0;
  }

  v32 = *v21;
  v33 = v21[1];
  v21 = v60;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v21[2];
  v35 = v62;
  v21[2] = 0x8000000000000000;
  v47 = sub_22633941C(v32, v33);
  v49 = v35[2];
  v50 = (v48 & 1) == 0;
  v40 = __OFADD__(v49, v50);
  v51 = v49 + v50;
  if (v40)
  {
    __break(1u);
    goto LABEL_43;
  }

  LOBYTE(a4) = v48;
  if (v35[3] >= v51)
  {
    goto LABEL_36;
  }

  sub_2263366F4(v51, isUniquelyReferenced_nonNull_native);
  v35 = v62;
  v47 = sub_22633941C(v32, v33);
  if ((a4 & 1) != (v52 & 1))
  {
LABEL_35:
    v47 = sub_226350C8C();
    __break(1u);
LABEL_36:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v21[2] = v35;
  if (a4)
  {
    goto LABEL_39;
  }

LABEL_38:
  v53 = v47;
  sub_2262E3118(v47, v32, v33, 0, v35);

  v47 = v53;
LABEL_39:
  while (1)
  {
    v54 = v35[7];
    v55 = *(v54 + 8 * v47);
    v40 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (!v40)
    {
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v57 = v47;
    sub_226339F9C();
    v47 = v57;
    v35 = v62;
    v60[2] = v62;
    if ((a4 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  *(v54 + 8 * v47) = v56;
  swift_endAccess();

  sub_22633BAAC(v28, 0);
}

void sub_22633526C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Double_optional __swiftcall EngagementStream.getEngagementRate(from:actionId:majorLabel:minorLabel:minimumSampleCount:)(Swift::Double from, Swift::String actionId, Swift::String_optional majorLabel, Swift::String_optional minorLabel, Swift::Int minimumSampleCount)
{
  object = minorLabel.value._object;
  countAndFlagsBits = majorLabel.value._countAndFlagsBits;
  v25 = minorLabel.value._countAndFlagsBits;
  v7 = majorLabel.value._object;
  v8 = actionId._object;
  v23 = actionId._countAndFlagsBits;
  v10 = *v5;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = [v10 publisherFromStartTime_];
  v30 = sub_22633BACC;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22633BAE0;
  v29 = &block_descriptor_14;
  v14 = _Block_copy(&aBlock);
  v15 = swift_allocObject();
  v15[2] = v23;
  v15[3] = v8;
  v15[4] = countAndFlagsBits;
  v15[5] = v7;
  v15[6] = v25;
  v15[7] = object;
  v15[8] = v11;
  v15[9] = v12;
  v30 = sub_22633A26C;
  v31 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22633BAE0;
  v29 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);

  swift_beginAccess();
  v18 = *(v12 + 16);
  if (v18 < 1)
  {

LABEL_6:
    LOBYTE(v21) = 0;
    goto LABEL_7;
  }

  swift_beginAccess();
  v19 = *(v11 + 16);

  if (v19 <= 0 && v18 < minimumSampleCount)
  {
    goto LABEL_6;
  }

  v20 = v19 / v18;
  *&v21 = v20;
LABEL_7:
  result.value = v20;
  result.is_nil = v21;
  return result;
}

id sub_226335584(void *a1)
{
  v2 = sub_22635004C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v7 = result;
    sub_22634FFBC();
    v8 = v7;
    v9 = sub_22635003C();
    v10 = sub_22635073C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2262B6000, v9, v10, "Could not stream the visual action event stream: %@", v11, 0xCu);
      sub_22633B940(v12);
      MEMORY[0x22AA7D570](v12, -1, -1);
      MEMORY[0x22AA7D570](v11, -1, -1);
    }

    else
    {
      v13 = v9;
      v9 = v8;
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_22633574C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a6;
  v15 = sub_22635004C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 eventBody];
  if (v19)
  {
    v20 = v19;
    v21 = *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId] == a2 && *&v19[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8] == a3;
    if (v21 || (v40 = v19, v22 = sub_226350C4C(), v20 = v40, (v22 & 1) != 0))
    {
      if (!a5 || (v23 = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8]) != 0 && (*&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel] == a4 ? (v24 = v23 == a5) : (v24 = 0), v24 || (v40 = v20, v25 = sub_226350C4C(), v20 = v40, (v25 & 1) != 0)))
      {
        if (!a7 || (v26 = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8]) != 0 && (*&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel] == v42 ? (v27 = v26 == a7) : (v27 = 0), v27 || (v40 = v20, v28 = sub_226350C4C(), v20 = v40, (v28 & 1) != 0)))
        {
          v29 = v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome];

          if (!v29)
          {
            v30 = v41;
            swift_beginAccess();
            v31 = *(v30 + 16);
            v32 = __OFADD__(v31, 1);
            v33 = v31 + 1;
            if (v32)
            {
LABEL_34:
              __break(1u);
              return;
            }

            *(v30 + 16) = v33;
          }

          swift_beginAccess();
          v34 = *(a9 + 16);
          v32 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (!v32)
          {
            *(a9 + 16) = v35;
            return;
          }

          __break(1u);
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    sub_22634FFBC();
    v36 = sub_22635003C();
    v37 = sub_22635073C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2262B6000, v36, v37, "Failed to get eventBody from event. Unable to process this stream.", v38, 2u);
      MEMORY[0x22AA7D570](v38, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
  }
}

void EngagementStream.sendEvent(_:)(uint64_t a1)
{
  v3 = [*v1 source];
  [v3 sendEvent_];
}

id EngagementStream.source()()
{
  v1 = [*v0 source];

  return v1;
}

id EngagementStream.publisher(withStartTime:endTime:maxEvents:lastN:reversed:)(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v29 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C20, &unk_226351F80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v28 = *v5;
  [a1 doubleValue];
  sub_22634EE4C();
  v16 = sub_22634EECC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v15, 0, 1, v16);
  [a2 doubleValue];
  sub_22634EE4C();
  v18(v13, 0, 1, v16);
  v19 = [a3 integerValue];
  v20 = [a4 integerValue];
  v21 = *(v17 + 48);
  v22 = 0;
  if (v21(v15, 1, v16) != 1)
  {
    v22 = sub_22634EE8C();
    (*(v17 + 8))(v15, v16);
  }

  if (v21(v13, 1, v16) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_22634EE8C();
    (*(v17 + 8))(v13, v16);
  }

  v24 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v25 = [v24 initWithStartDate:v22 endDate:v23 maxEvents:v19 lastN:v20 reversed:v29 & 1];

  v26 = [v28 publisherWithOptions_];
  return v26;
}

Swift::Void __swiftcall EngagementStream.clearAllData()()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  aBlock[4] = sub_2262BA3D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226335F70;
  aBlock[3] = &block_descriptor_23;
  v6 = _Block_copy(aBlock);

  [v5 pruneWithPredicateBlock_];
  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    sub_22634FFBC();
    v7 = sub_22635003C();
    v8 = sub_22635071C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2262B6000, v7, v8, "VisualActionPredictionFeedback stream cleared.", v9, 2u);
      MEMORY[0x22AA7D570](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_226335F70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_226335FCC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_226336018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Analytics.Interval(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C90, &qword_226355658);
  v36 = v4;
  result = sub_226350A8C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_22633B8D8(v24, v37, type metadata accessor for Analytics.Interval);
      }

      else
      {
        sub_22633B870(v24, v37, type metadata accessor for Analytics.Interval);
      }

      sub_226350CEC();
      MEMORY[0x22AA7CDB0](v22);
      result = sub_226350D0C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_22633B8D8(v37, *(v9 + 56) + v23 * v17, type metadata accessor for Analytics.Interval);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_226336374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22634FF9C();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C58, &qword_226355640);
  v42 = v4;
  result = sub_226350A8C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2263366F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793848, &unk_226355680);
  v34 = v4;
  result = sub_226350A8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226336994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793840, &unk_226354360);
  v33 = v4;
  result = sub_226350A8C();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226336CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v57 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v46 - v12;
  v13 = sub_22634EEFC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v10;
  v17 = v16;
  result = sub_226350A8C();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v13;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v6;
    v47 = (v14 + 16);
    v48 = v16;
    v49 = v14;
    v53 = (v14 + 32);
    v26 = result + 64;
    v27 = v52;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v32 = v29 | (v20 << 6);
      v33 = *(v17 + 48);
      v54 = *(v49 + 72);
      v34 = v33 + v54 * v32;
      if (v51)
      {
        (*v53)(v27, v34, v55);
        v35 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_22633B8D8(v35 + v36 * v32, v56, v57);
      }

      else
      {
        (*v47)(v27, v34, v55);
        v37 = *(v17 + 56);
        v36 = *(v50 + 72);
        sub_22633B870(v37 + v36 * v32, v56, v57);
      }

      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v38 = -1 << *(v19 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v27 = v52;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v26 + 8 * v40);
          if (v44 != -1)
          {
            v28 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v27 = v52;
LABEL_7:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v53)((*(v19 + 48) + v54 * v28), v27, v55);
      result = sub_22633B8D8(v56, *(v19 + 56) + v36 * v28, v57);
      ++*(v19 + 16);
      v17 = v48;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v45 = 1 << *(v17 + 32);
    v9 = v46;
    if (v45 >= 64)
    {
      bzero(v21, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v45;
    }

    *(v17 + 16) = 0;
  }

LABEL_34:
  *v9 = v19;
  return result;
}

uint64_t sub_226337124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793CB0, &qword_226355678);
  v39 = v4;
  result = sub_226350A8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226337500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793830, &qword_226355650);
  v35 = v4;
  result = sub_226350A8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2263377E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VisualAction(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C30, &unk_226355620);
  v40 = v4;
  result = sub_226350A8C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22633B8D8(v28, v41, type metadata accessor for VisualAction);
      }

      else
      {
        sub_22633B870(v28, v41, type metadata accessor for VisualAction);
      }

      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22633B8D8(v41, *(v9 + 56) + v27 * v17, type metadata accessor for VisualAction);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_226337B58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_22634F10C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634F0EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C70, &unk_226354340);
  v47 = v4;
  result = sub_226350A8C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_22633B828(&qword_27D793C78, MEMORY[0x277D78248], MEMORY[0x277D78250]);
      result = sub_22635040C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_226338000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_22634EEFC();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634F34C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C98, &qword_226355660);
  v47 = v4;
  result = sub_226350A8C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_22633B828(&unk_27D793220, MEMORY[0x277D78638], MEMORY[0x277D78640]);
      result = sub_22635040C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2263384A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_22634FDDC();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634EEFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793828, &unk_226354330);
  v47 = v4;
  result = sub_226350A8C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_226338950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C60, &qword_226355648);
  v34 = v4;
  result = sub_226350A8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226338BF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C48, &qword_226355630);
  v39 = v4;
  result = sub_226350A8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226338FD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C50, &qword_226355638);
  v39 = v4;
  result = sub_226350A8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22635040C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_2263393B0(uint64_t a1)
{
  v1 = a1;
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](v1);
  v2 = sub_226350D0C();

  return sub_226339754(v1, v2);
}

unint64_t sub_22633941C(uint64_t a1, uint64_t a2)
{
  sub_226350CEC();
  sub_2263504EC();
  v4 = sub_226350D0C();

  return sub_2263397C4(a1, a2, v4);
}

unint64_t sub_226339494(uint64_t a1)
{
  v2 = sub_2263508FC();

  return sub_22633987C(a1, v2);
}

unint64_t sub_2263394D8(uint64_t a1)
{
  sub_22634EEFC();
  v2 = MEMORY[0x277CC95F0];
  sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22635040C();
  return sub_226339944(a1, v3, MEMORY[0x277CC95F0], &qword_28137FA40, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2263395AC(uint64_t a1)
{
  sub_22634F34C();
  v2 = MEMORY[0x277D78638];
  sub_22633B828(&unk_27D793220, MEMORY[0x277D78638], MEMORY[0x277D78640]);
  v3 = sub_22635040C();
  return sub_226339944(a1, v3, MEMORY[0x277D78638], &qword_27D793C40, v2, MEMORY[0x277D78648]);
}

unint64_t sub_226339680(uint64_t a1)
{
  sub_22634F0EC();
  v2 = MEMORY[0x277D78248];
  sub_22633B828(&qword_27D793C78, MEMORY[0x277D78248], MEMORY[0x277D78250]);
  v3 = sub_22635040C();
  return sub_226339944(a1, v3, MEMORY[0x277D78248], &unk_27D793C80, v2, MEMORY[0x277D78258]);
}

unint64_t sub_226339754(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2263397C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_226350C4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22633987C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22633B7CC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA7C9C0](v9, a1);
      sub_226315840(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226339944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_22633B828(v23, v24, v25);
      v19 = sub_22635044C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_226339AE4()
{
  v1 = v0;
  v2 = type metadata accessor for Analytics.Interval(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C90, &qword_226355658);
  v4 = *v0;
  v5 = sub_226350A7C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_22633B870(*(v4 + 56) + v23, v26, type metadata accessor for Analytics.Interval);
        v24 = v28;
        *(*(v28 + 48) + v20) = v21;
        result = sub_22633B8D8(v22, *(v24 + 56) + v23, type metadata accessor for Analytics.Interval);
      }

      while (v15);
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

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_226339D1C()
{
  v1 = v0;
  v35 = sub_22634FF9C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C58, &qword_226355640);
  v3 = *v0;
  v4 = sub_226350A7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_226339F9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793848, &unk_226355680);
  v2 = *v0;
  v3 = sub_226350A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_22633A104()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793840, &unk_226354360);
  v2 = *v0;
  v3 = sub_226350A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_22633A2A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22633A2E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_22633A3AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = a4;
  v7 = v4;
  v8 = a1(0);
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v37 - v9;
  v44 = sub_22634EEFC();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_226350A7C();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v48 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v48;
    v40 = v49 + 32;
    v41 = v49 + 16;
    v42 = v11;
    v24 = v49;
    v25 = v47;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = *(v24 + 72) * v29;
        v32 = v43;
        v31 = v44;
        (*(v24 + 16))(v43, *(v11 + 48) + v30, v44);
        v33 = *(v11 + 56);
        v34 = v45;
        v35 = *(v46 + 72) * v29;
        sub_22633B870(v33 + v35, v45, v25);
        (*(v24 + 32))(*(v23 + 48) + v30, v32, v31);
        v36 = v34;
        v11 = v42;
        result = sub_22633B8D8(v36, *(v23 + 56) + v35, v25);
        v21 = v50;
      }

      while (v50);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v48;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v50 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

void sub_22633A6C4()
{
  v1 = v0;
  v33 = sub_22634EEFC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793CB0, &qword_226355678);
  v3 = *v0;
  v4 = sub_226350A7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

id sub_22633A944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793830, &qword_226355650);
  v2 = *v0;
  v3 = sub_226350A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_22633AAEC()
{
  v1 = v0;
  v2 = type metadata accessor for VisualAction(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C30, &unk_226355620);
  v4 = *v0;
  v5 = sub_226350A7C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_22633B870(v21 + v27, v32, type metadata accessor for VisualAction);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_22633B8D8(v26, *(v28 + 56) + v27, type metadata accessor for VisualAction);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

char *sub_22633AE00(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v48 = a1(0);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v9;
  v46 = a2(0);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *v4;
  v12 = sub_226350A7C();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v8;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v8 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v13;
  }

  return result;
}

void sub_22633B15C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C60, &qword_226355648);
  v2 = *v0;
  v3 = sub_226350A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

char *sub_22633B2CC()
{
  v1 = v0;
  v33 = sub_22634EEFC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C48, &qword_226355630);
  v3 = *v0;
  v4 = sub_226350A7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_unknownObjectRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_22633B54C()
{
  v1 = v0;
  v33 = sub_22634EEFC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C50, &qword_226355638);
  v3 = *v0;
  v4 = sub_226350A7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_22633B828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22633B870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22633B8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22633B940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793CC0, qword_226352A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22633B9A8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22633BA54(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226350C4C() & 1;
  }
}

uint64_t sub_22633BAAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for PBVisualActionEvent(uint64_t a1)
{
  result = qword_27D793CC8;
  if (!qword_27D793CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22633BB58(uint64_t a1)
{
  sub_22634F1AC();
  if (v1 <= 0x3F)
  {
    sub_22633BC44(319, &qword_28137E030, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22633BC44(319, &qword_27D793CD8, &type metadata for PBVisualActionEvent.VisualActionOutcomeType);
      if (v3 <= 0x3F)
      {
        sub_22633BC44(319, &qword_27D793CE0, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22633BC44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22635085C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PBVisualActionEvent.VisualActionOutcomeType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PBVisualActionEvent.VisualActionOutcomeType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22633BCE0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22633BCFC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_22633BD3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22633BD6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22633BD94(uint64_t a1, uint64_t a2)
{
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

uint64_t sub_22633BE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22633D050();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22633BE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

unint64_t sub_22633BEB8()
{
  result = qword_27D793CE8;
  if (!qword_27D793CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793CE8);
  }

  return result;
}

unint64_t sub_22633BF10()
{
  result = qword_27D793CF0;
  if (!qword_27D793CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793CF8, qword_2263557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793CF0);
  }

  return result;
}

unint64_t sub_22633BF78()
{
  result = qword_27D793D00;
  if (!qword_27D793D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793D00);
  }

  return result;
}

unint64_t sub_22633BFD0()
{
  result = qword_27D793D08;
  if (!qword_27D793D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793D08);
  }

  return result;
}

uint64_t sub_22633C024()
{
  v0 = sub_22634F30C();
  __swift_allocate_value_buffer(v0, qword_27D793EF0);
  __swift_project_value_buffer(v0, qword_27D793EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D38, &qword_2263559C0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D40, &qword_2263559C8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226355690;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "actionId";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22634F2EC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "outcome";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "majorLabel";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "minorLabel";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "timestamp";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  return sub_22634F2FC();
}

uint64_t sub_22633C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22634F22C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for PBVisualActionEvent(0);
        v4 = 0;
        sub_22634F25C();
      }

      else if (result == 6)
      {
        type metadata accessor for PBVisualActionEvent(0);
        sub_22634F24C();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_22633C42C(a1, v5, a2, a3);
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_22633C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBVisualActionEvent(0);
  sub_22633D050();
  return sub_22634F23C();
}

uint64_t sub_22633C4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22633C570(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22633C5E8(v3, a1, a2, a3);
    sub_22633C68C(v3, a1, a2, a3);
    sub_22633C704(v3, a1, a2, a3);
    sub_22633C77C(v3, a1, a2, a3);
    sub_22633C7F4(v3, a1, a2, a3);
    return sub_22634F18C();
  }

  return result;
}

uint64_t sub_22633C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBVisualActionEvent(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBVisualActionEvent(0);
  if ((*(a1 + *(result + 24) + 9) & 1) == 0)
  {
    sub_22633D050();
    return sub_22634F2BC();
  }

  return result;
}

uint64_t sub_22633C68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBVisualActionEvent(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBVisualActionEvent(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBVisualActionEvent(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PBVisualActionEvent(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_22634F2CC();
  }

  return result;
}

uint64_t sub_22633C86C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22634F19C();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_22633C900@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22634F1AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22633C968(uint64_t a1)
{
  v3 = sub_22634F1AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22633CA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22633D328(&qword_27D793D28, type metadata accessor for PBVisualActionEvent, &unk_226355910);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22633CAC8(uint64_t a1)
{
  v2 = sub_22633D328(&qword_27D793270, type metadata accessor for PBVisualActionEvent, &unk_226355948);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22633CB34(uint64_t a1, uint64_t a2)
{
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

uint64_t sub_22633CB8C(uint64_t a1, uint64_t a2)
{
  sub_22633D328(&qword_27D793270, type metadata accessor for PBVisualActionEvent, &unk_226355948);

  return sub_22634F2AC();
}

uint64_t sub_22633CC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

uint64_t sub_22633CC60()
{
  v0 = sub_22634F30C();
  __swift_allocate_value_buffer(v0, qword_27D793F08);
  __swift_project_value_buffer(v0, qword_27D793F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D38, &qword_2263559C0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D40, &qword_2263559C8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2263556A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Conversion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22634F2EC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Rejection";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Abandon";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_22634F2FC();
}

uint64_t sub_22633CE94@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22634F30C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_22633D050()
{
  result = qword_27D793D30;
  if (!qword_27D793D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793D30);
  }

  return result;
}

uint64_t sub_22633D0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBVisualActionEvent(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_226350C4C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 9);
  if (v15)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v26 = *v14;
    v27 = *v16;
    if (v16[1])
    {
      if (v27)
      {
        if (v27 == 1)
        {
          if (v26 != 1)
          {
            return 0;
          }
        }

        else if (v26 != 2)
        {
          return 0;
        }
      }

      else if (v26)
      {
        return 0;
      }
    }

    else if (v26 != v27)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v4;
      v25 = sub_226350C4C();
      v4 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v28 = v4[8];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v34 = v4;
      v35 = sub_226350C4C();
      v4 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v36 = v4[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_49;
    }

    return 0;
  }

  if (!v40)
  {
    return 0;
  }

  if (*v37 != *v39 || v38 != v40)
  {
    v41 = v4;
    v42 = sub_226350C4C();
    v4 = v41;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_49:
  v43 = v4[10];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  sub_22634F1AC();
  sub_22633D328(&qword_27D793D48, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22635044C() & 1;
}

uint64_t sub_22633D328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22633D3A8()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager);
  }

  else
  {
    type metadata accessor for ToolManager();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = 1;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22633D460(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = v4;
    a2();
    swift_allocObject();
    v7 = a4();
    *(v9 + v5) = v7;
  }

  return v7;
}

uint64_t sub_22633D4F0()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase);
  }

  else
  {
    v2 = sub_22633D558();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22633D558()
{
  v22 = sub_22634EE0C();
  v0 = *(v22 - 8);
  v1 = MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v21 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BD0, &qword_226355528);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  sub_22633D370();
  (*(v10 + 104))(v12, *MEMORY[0x277D85778], v9);
  sub_22634FB5C();
  (*(v10 + 8))(v12, v9);

  v16 = [objc_opt_self() appPredictionDirectory];
  sub_22635046C();

  sub_22634EDCC();

  sub_22634EDEC();
  v17 = *(v0 + 8);
  v18 = v3;
  v19 = v22;
  v17(v18, v22);
  sub_22634EDBC();
  v17(v6, v19);
  type metadata accessor for VectorDatabase(0);
  swift_allocObject();
  return sub_226300688(v8, 512, 51, 0xE100000000000000, v15);
}

id sub_22633D864@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream;
  v4 = *(v1 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream);
  }

  else
  {
    v6 = [objc_opt_self() atx:7257600.0 storeConfigWithMaxAge:?];
    type metadata accessor for VisualActionEvent();
    v7 = objc_allocWithZone(MEMORY[0x277CF1B30]);
    v8 = v6;
    v9 = sub_22635045C();
    v10 = [v7 initWithPrivateStreamIdentifier:v9 storeConfig:v8 eventDataClass:swift_getObjCClassFromMetadata()];

    v11 = *(v1 + v3);
    *(v1 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  *a1 = v5;

  return v4;
}

uint64_t sub_22633D988()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider);
  }

  else
  {
    type metadata accessor for RemoteCustomActionProvider();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_22633DA00()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for RemoteCustomActionExecutor();
    v2 = swift_allocObject();

    swift_defaultActor_initialize();
    v2[14] = MEMORY[0x277D84F98];
    v2[15] = &unk_226355A50;
    v2[16] = v3;

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22633DAD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22633DAF4, 0, 0);
}

uint64_t sub_22633DAF4()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC0, &qword_226355A58);
  *v5 = v0;
  v5[1] = sub_22633DC48;

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD00000000000001ALL, 0x8000000226357C90, sub_2263459B4, v4, v6);
}

uint64_t sub_22633DC48()
{

  return MEMORY[0x2822009F8](sub_22633DD7C, 0, 0);
}

void sub_22633DD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v7, v4);
    sub_22634FB1C();
  }

  else
  {
    v12[1] = 0;
    v12[2] = 0;
    sub_2263505EC();
  }
}

uint64_t sub_22633DF3C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);
  return sub_2263505EC();
}

uint64_t sub_22633DF8C()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider);
  }

  else
  {
    v3 = sub_22633D3A8();
    type metadata accessor for SystemToolActionProvider();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_22633E014()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor))
  {
    v6 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor);
  }

  else
  {
    v7 = sub_22633D3A8();
    v8 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager);

    v9 = sub_22633DF8C();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    type metadata accessor for SystemToolActionExecutor(0);
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    v6[14] = v7;
    v6[15] = v8;
    v6[16] = v9;
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC26VisualActionPredictionCore24SystemToolActionExecutor_featureConfiguration, v4, v1);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_22633E19C()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider))
  {
    v6 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider);
  }

  else
  {
    v7 = sub_22633D428();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    type metadata accessor for VisualSearchActionProvider(0);
    swift_allocObject();
    v6 = sub_22631F6D8(v7, v4);

    *(v0 + v5) = v6;
  }

  return v6;
}

void *sub_22633E2E8()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor))
  {
    v6 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor);
  }

  else
  {
    v7 = sub_22633D3A8();
    v8 = sub_22633D428();
    v9 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager);

    v10 = sub_22633E19C();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    type metadata accessor for VisualSearchActionExecutor(0);
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    v6[14] = v7;
    v6[15] = v8;
    v6[16] = v9;
    v6[17] = v10;
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionExecutor_featureConfiguration, v4, v1);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_22633E478()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor))
  {
    v6 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor);
  }

  else
  {
    v7 = sub_22633D3A8();
    v8 = sub_22633D428();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    type metadata accessor for OpenEntityExecutor(0);
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v6 + 112) = v7;
    *(v6 + 120) = v8;
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC26VisualActionPredictionCore18OpenEntityExecutor_featureConfiguration, v4, v1);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_22633E5E0()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker))
  {
    v6 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker);
  }

  else
  {
    v7 = sub_22633D370();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    type metadata accessor for ActionEligibilityChecker(0);
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v6 + 112) = v7;
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC26VisualActionPredictionCore24ActionEligibilityChecker_featureConfiguration, v4, v1);
    *(v0 + v5) = v6;
  }

  return v6;
}

id Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Server.init()()
{
  v1 = sub_22634FCDC();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22635004C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22635076C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22635078C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22635037C();
  MEMORY[0x28223BE20](v10 - 8);
  v37 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue;
  v11 = sub_22633EE60();
  v38 = "nversion";
  v39 = v11;
  v12 = v0;
  sub_22635036C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v6);
  v47 = MEMORY[0x277D84F90];
  sub_2263462E8(&qword_28137DFD0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793D58, &qword_2263559D0);
  v13 = v40;
  sub_226334174(&qword_28137E000, &unk_27D793D58, &qword_2263559D0);
  v14 = v36[1];
  v15 = v37;
  sub_2263508CC();
  *(v14 + v15) = sub_2263507AC();
  v16 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager;
  type metadata accessor for ResourceManager();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  v18 = MEMORY[0x277D84F98];
  *(v17 + 112) = MEMORY[0x277D84F98];
  *&v12[v16] = v17;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___appManager] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___linkManager] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___linkActionProvider] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___LinkActionExecutor] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker] = 0;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap] = v18;
  *&v12[OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap] = v18;
  sub_22634FFEC();
  v19 = v12;
  v20 = sub_22635003C();
  v21 = sub_22635071C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315394;
    swift_getObjectType();

    v24 = sub_226350D6C();
    v26 = sub_226345004(v24, v25, &v47);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_226345004(0x292874696E69, 0xE600000000000000, &v47);
    _os_log_impl(&dword_2262B6000, v20, v21, "%s.%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v23, -1, -1);
    MEMORY[0x22AA7D570](v22, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v13, v42);
  sub_22634F95C();
  v27 = *(v14 + v15);
  sub_2263462E8(&unk_28137E0B8, MEMORY[0x277D78888], MEMORY[0x277D78880]);
  v28 = v27;
  v29 = sub_22634FBFC();

  *&v19[OBJC_IVAR___ATXVisualActionPredictionCoreServer_serviceListener] = v29;
  sub_22634FD7C();
  v30 = *(v14 + v15);
  sub_2263462E8(&unk_28137E098, MEMORY[0x277D78C40], MEMORY[0x277D78C38]);
  v31 = v30;
  v32 = sub_22634FBFC();

  *&v19[OBJC_IVAR___ATXVisualActionPredictionCoreServer_executionResourceRetrievalListener] = v32;
  v33 = v43;
  sub_22634FC9C();
  (*(v44 + 32))(&v19[OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration], v33, v45);
  v34 = type metadata accessor for Server(0);
  v46.receiver = v19;
  v46.super_class = v34;
  return objc_msgSendSuper2(&v46, sel_init);
}

unint64_t sub_22633EE60()
{
  result = qword_28137DFC8;
  if (!qword_28137DFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28137DFC8);
  }

  return result;
}

uint64_t type metadata accessor for Server(uint64_t a1)
{
  result = qword_28137E608;
  if (!qword_28137E608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22633EF1C(uint64_t a1)
{
  v3 = sub_22635004C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2263503AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v1[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_2263503CC();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_22634FFEC();
    v14 = v1;

    v15 = sub_22635003C();
    v16 = sub_22635071C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v3;
      v19 = v18;
      v29 = v18;
      *v17 = 136315650;
      swift_getObjectType();
      v20 = sub_226350D6C();
      v22 = sub_226345004(v20, v21, &v29);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_226345004(0x6D7261776572705FLL, 0xEE00293A726F6628, &v29);
      *(v17 + 22) = 2080;
      v27 = 0x286E6F6973736553;
      v28 = 0xE800000000000000;
      sub_22634EEFC();
      sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226350C1C();
      MEMORY[0x22AA7C5B0](v23);

      MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
      v24 = sub_226345004(v27, v28, &v29);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_2262B6000, v15, v16, "%s.%s %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v19, -1, -1);
      MEMORY[0x22AA7D570](v17, -1, -1);

      (*(v4 + 8))(v6, v26);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_22633D428();

    sub_22633D3A8();

    sub_22633D4F0();
    v25 = sub_22633D370();
    sub_2263083FC(v25);

    return sub_22634414C(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22633F338()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793D90, qword_2263559D8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_22634FCEC();
  sub_2263462E8(&qword_28137E0A8, MEMORY[0x277D78B88], MEMORY[0x277D78B80]);
  v8 = v5;
  sub_22634FB4C();
  sub_22634FB3C();
  v9 = *(v2 + 8);
  v9(v4, v1);

  sub_22634FB4C();
  sub_22634FB3C();
  return (v9)(v4, v1);
}

uint64_t sub_22633F548(uint64_t a1, uint64_t a2, void *a3)
{
  v158 = a3;
  v165 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v126 - v4;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE0, &qword_226355A90);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98);
  v159 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v9;
  MEMORY[0x28223BE20](v8);
  v12 = v126 - v11;
  v147 = sub_22635034C();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22635037C();
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22635004C();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v156 = v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DF0, &qword_226355AA0);
  MEMORY[0x28223BE20](v16 - 8);
  v161 = v126 - v17;
  v18 = sub_22634FCDC();
  v160 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22634EEFC();
  v166 = *(v21 - 8);
  v167 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v162 = v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v155 = v126 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v126 - v27;
  v157 = v29;
  MEMORY[0x28223BE20](v26);
  v31 = v126 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_22634FACC();
  }

  v33 = Strong;
  v138 = v10;
  v152 = v5;
  v153 = v12;
  v154 = v7;
  v163 = v31;
  sub_22634FABC();
  v34 = (v166 + 2);
  v164 = v166[2];
  v139 = v28;
  v164(v28, v31, v167);
  v134 = sub_22633D3A8();
  v133 = sub_22633D4F0();
  sub_22633D864(&v176);
  v132 = [objc_allocWithZone(MEMORY[0x277CEBBE0]) init];
  v130 = sub_22633D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DF8, &qword_226355AA8);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2263556A0;
  v36 = sub_22633DF8C();
  v37 = sub_2263462E8(&qword_28137F940, type metadata accessor for SystemToolActionProvider, "\t$b]P<");
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  v38 = sub_22633D988();
  v39 = sub_2263462E8(&qword_28137F7B8, type metadata accessor for RemoteCustomActionProvider, "y,b]0B");
  *(v35 + 48) = v38;
  *(v35 + 56) = v39;
  v40 = sub_22633E19C();
  v41 = sub_2263462E8(&qword_28137F0D0, type metadata accessor for VisualSearchActionProvider, &unk_226354E40);
  *(v35 + 64) = v40;
  *(v35 + 72) = v41;
  v131 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E08, &qword_226355AB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_226351C80;
  v43 = sub_22633E014();
  v44 = sub_2263462E8(&qword_28137FA20, type metadata accessor for SystemToolActionExecutor, &unk_226354240);
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  v45 = sub_22633DA00();
  v46 = sub_2263462E8(&qword_28137F888, type metadata accessor for RemoteCustomActionExecutor, &unk_2263551B8);
  *(v42 + 48) = v45;
  *(v42 + 56) = v46;
  v47 = sub_22633E2E8();
  v48 = sub_2263462E8(&qword_28137F1D0, type metadata accessor for VisualSearchActionExecutor, &unk_226354C90);
  *(v42 + 64) = v47;
  *(v42 + 72) = v48;
  v49 = sub_22633E478();
  v50 = sub_2263462E8(&qword_28137E7D8, type metadata accessor for OpenEntityExecutor, &unk_226355D28);
  *(v42 + 80) = v49;
  *(v42 + 88) = v50;
  v129 = v42;
  v127 = sub_22633E5E0();
  v51 = *&v33[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor];
  v52 = *(v160 + 2);
  v135 = v20;
  v136 = v18;
  v52(v20, &v33[OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration], v18);
  v53 = v176;
  v170 = &type metadata for EngagementStream;
  v171 = &off_283979CE8;
  aBlock[0] = v176;
  type metadata accessor for Session(0);
  v54 = swift_allocObject();
  v55 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, &type metadata for EngagementStream);
  v126[1] = v126;
  MEMORY[0x28223BE20](v55);
  v57 = (v126 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = *v57;
  v174 = &type metadata for EngagementStream;
  v175 = &off_283979CE8;
  *&v173 = v59;
  v128 = v51;

  v60 = v53;
  swift_defaultActor_initialize();
  sub_22634EEAC();
  v61 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_eventMultiplexer;
  sub_22634FB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793E10, &qword_226355AB8);
  swift_allocObject();
  *(v54 + v61) = sub_22634FB7C();
  v62 = MEMORY[0x277D84F98];
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap) = MEMORY[0x277D84F98];
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap) = v62;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults) = v62;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap) = v62;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap) = v62;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting) = 0;
  v63 = v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting;
  *v63 = 0;
  *(v63 + 8) = 1;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_kMaxCacheSize) = 1000;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_kTwelveWeeksInSeconds) = 0x415BAF8000000000;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_bundleRankingThreshold) = 0x3FE0000000000000;
  sub_22634FFEC();
  v64 = v139;
  v161 = v34;
  v164(v155, v139, v167);
  v65 = sub_22635003C();
  v66 = sub_22635075C();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v163;
  if (v67)
  {
    v69 = swift_slowAlloc();
    v126[0] = swift_slowAlloc();
    v168 = v126[0];
    *v69 = 136315138;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v70 = v155;
    v71 = v68;
    v72 = v167;
    v73 = sub_226350C1C();
    v75 = v74;
    v76 = v166[1];
    v137 = (v166 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77 = v72;
    v68 = v71;
    v76(v70, v77);
    v78 = sub_226345004(v73, v75, &v168);
    v64 = v139;

    *(v69 + 4) = v78;
    _os_log_impl(&dword_2262B6000, v65, v66, "Session %s created", v69, 0xCu);
    v79 = v126[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v126[0]);
    MEMORY[0x22AA7D570](v79, -1, -1);
    MEMORY[0x22AA7D570](v69, -1, -1);
  }

  else
  {

    v81 = v166[1];
    v137 = (v166 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81(v155, v167);
  }

  v140[1](v156, v141);

  v82 = v166 + 4;
  v83 = v166[4];
  v84 = v167;
  v83(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id, v64);
  v85 = v83;
  v140 = v83;
  v86 = v82;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_toolManager) = v134;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase) = v133;
  sub_2262FB3D4(&v173, v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream);
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appInFocusStream) = v132;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager) = v130;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionProviders) = v131;
  *(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors) = v129;
  v87 = (v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionEligibilityChecker);
  v88 = sub_2263462E8(&qword_28137F348, type metadata accessor for ActionEligibilityChecker, &unk_226356058);
  *v87 = v127;
  v87[1] = v88;
  v89 = (v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_customActionRegister);
  v90 = sub_2263462E8(&qword_28137F880, type metadata accessor for RemoteCustomActionExecutor, &unk_2263551D4);
  *v89 = v128;
  v89[1] = v90;
  (*(v160 + 4))(v54 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration, v135, v136);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = v162;
  v164(v162, v68, v84);
  v166 = v86;
  v139 = *(v86 + 48);
  v156 = (v139 | 7);
  v93 = (v139 + 24) & ~v139;
  v155 = v93;
  v94 = (v157 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v141 = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = v91;
  v85(v95 + v93, v92, v84);
  *(v95 + v94) = v54;
  v171 = sub_226345AF4;
  v172 = v95;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22634107C;
  v170 = &block_descriptor_61;
  v96 = _Block_copy(aBlock);
  v160 = v33;

  v97 = v142;
  sub_22635035C();
  *&v173 = MEMORY[0x277D84F90];
  sub_2263462E8(&unk_28137E058, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DB0, &qword_226355A40);
  sub_226334174(&unk_28137E008, &unk_27D793DB0, &qword_226355A40);
  v98 = v144;
  v99 = v147;
  sub_2263508CC();
  MEMORY[0x22AA7C850](0, v97, v98, v96);
  _Block_release(v96);
  (*(v146 + 8))(v98, v99);
  (*(v143 + 8))(v97, v145);

  sub_22634F6FC();
  sub_2263462E8(&qword_28137E118, MEMORY[0x277D787C8], MEMORY[0x277D787C0]);

  sub_22634FAAC();

  sub_22634F6DC();
  sub_2263462E8(&qword_28137E120, MEMORY[0x277D787B8], MEMORY[0x277D787B0]);

  sub_22634FAAC();

  sub_22634F78C();
  sub_2263462E8(&qword_28137E108, MEMORY[0x277D787E8], MEMORY[0x277D787E0]);

  sub_22634FAAC();

  sub_22634F72C();
  sub_2263462E8(&qword_28137E110, MEMORY[0x277D787D8], MEMORY[0x277D787D0]);

  sub_22634FAAC();

  sub_22634F68C();
  sub_2263462E8(&qword_28137E128, MEMORY[0x277D787A8], MEMORY[0x277D787A0]);

  sub_22634FAAC();

  sub_22634F60C();
  sub_2263462E8(&qword_28137E130, MEMORY[0x277D78788], MEMORY[0x277D78780]);

  sub_22634FAAC();

  sub_22634F7EC();
  sub_2263462E8(&unk_28137E0F8, MEMORY[0x277D787F8], MEMORY[0x277D787F0]);

  sub_22634FAAC();

  sub_22634F80C();
  sub_2263462E8(&qword_28137E0F0, MEMORY[0x277D78808], MEMORY[0x277D78800]);

  sub_22634FAAC();

  sub_22634F93C();
  sub_2263462E8(&unk_28137E0C8, MEMORY[0x277D78868], MEMORY[0x277D78860]);

  sub_22634FAAC();

  sub_22634F88C();
  sub_2263462E8(&unk_28137E0E0, MEMORY[0x277D78828], MEMORY[0x277D78820]);

  sub_22634FAAC();

  sub_22634F91C();
  sub_2263462E8(&qword_28137E0D8, MEMORY[0x277D78848], MEMORY[0x277D78840]);

  sub_22634FAAC();

  v100 = v149;
  v101 = v148;
  v102 = v150;
  (*(v149 + 104))(v148, *MEMORY[0x277D85778], v150);
  v103 = v153;
  sub_22634FB5C();
  (*(v100 + 8))(v101, v102);
  v104 = sub_22635064C();
  (*(*(v104 - 8) + 56))(v152, 1, 1, v104);
  v150 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = v159;
  v106 = v138;
  v107 = v154;
  (*(v159 + 16))(v138, v103, v154);
  v108 = v167;
  v164(v162, v163, v167);
  v109 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v110 = (v151 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v139 + v111 + 8) & ~v139;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  *(v113 + 24) = 0;
  (*(v105 + 32))(v113 + v109, v106, v107);
  *(v113 + v110) = v150;
  v114 = v158;
  *(v113 + v111) = v158;
  v115 = v113 + v112;
  v116 = v162;
  v117 = v108;
  v118 = v140;
  v119 = v166;
  (v140)(v115, v162, v108);
  v158 = v114;
  v120 = sub_2262FB4D4(0, 0, v152, &unk_226355B78, v113);
  v121 = swift_allocObject();
  v122 = v160;
  swift_unknownObjectWeakInit();

  v123 = v116;
  v164(v116, v163, v117);
  v124 = v141;
  v125 = swift_allocObject();
  *(v125 + 16) = v121;
  (v118)(&v155[v125], v123, v117);
  *(v125 + v124) = v120;

  sub_22634FA9C();

  (*(v159 + 8))(v153, v154);
  (*(v119 - 3))(v163, v117);
}

void sub_226340F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v9 = sub_22634F96C();
    v10 = v7;
    MEMORY[0x22AA7C5B0](0x6E6F69737365732ELL, 0xE90000000000002ELL);
    sub_22634EEFC();
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_226350C1C();
    MEMORY[0x22AA7C5B0](v8);

    sub_2263434E8(a2, v9, v10);

    sub_226342BD0(a3);
  }
}

uint64_t sub_22634107C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2263410C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262BADA4(a1, a2);
}

uint64_t sub_22634116C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262BB364(a1, a2);
}

uint64_t sub_226341218(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262C3288(a1, a2);
}

uint64_t sub_2263412C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262C9CC4(a1, a2);
}

uint64_t sub_226341370(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CDB7C(a1, a2);
}

uint64_t sub_22634141C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262D641C;

  return sub_2262CE3AC(a1, a2);
}

uint64_t sub_2263414C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CEEE4(a1, a2);
}

uint64_t sub_226341574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CF7E0(a1, a2);
}

uint64_t sub_226341620(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CFE60(a1, a2);
}

uint64_t sub_2263416CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262D0460(a1, a2);
}

uint64_t sub_226341778(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262D0AC4(a1, a2);
}

uint64_t sub_226341824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_22635034C();
  v7[16] = v8;
  v7[17] = *(v8 - 8);
  v7[18] = swift_task_alloc();
  v9 = sub_22635037C();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = sub_22634EEFC();
  v7[22] = v10;
  v11 = *(v10 - 8);
  v7[23] = v11;
  v7[24] = *(v11 + 64);
  v7[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E20, &qword_226355B80);
  v7[26] = v12;
  v7[27] = *(v12 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226341A10, 0, 0);
}

uint64_t sub_226341A10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98);
  sub_22635069C();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_226341AF8;
  v2 = *(v0 + 208);

  return MEMORY[0x2822003E8](v0 + 240, 0, 0, v2);
}

uint64_t sub_226341AF8()
{

  return MEMORY[0x2822009F8](sub_226341BF4, 0, 0);
}

uint64_t sub_226341BF4(__n128 a1)
{
  if ((*(v1 + 240) & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208), a1);

    v13 = *(v1 + 8);

    return v13();
  }

  else
  {
    v3 = Strong;
    v4 = *(v1 + 200);
    v6 = *(v1 + 176);
    v5 = *(v1 + 184);
    v19 = *(v1 + 160);
    v20 = *(v1 + 152);
    v16 = *(v1 + 168);
    v17 = *(v1 + 144);
    v7 = *(v1 + 128);
    v18 = *(v1 + 136);
    (*(v5 + 16))(v4, *(v1 + 120), v6);
    v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    (*(v5 + 32))(v9 + v8, v4, v6);
    *(v1 + 48) = sub_226346630;
    *(v1 + 56) = v9;
    *(v1 + 16) = MEMORY[0x277D85DD0];
    *(v1 + 24) = 1107296256;
    *(v1 + 32) = sub_22634107C;
    *(v1 + 40) = &block_descriptor_88;
    v10 = _Block_copy((v1 + 16));
    v15 = v3;
    sub_22635035C();
    *(v1 + 88) = MEMORY[0x277D84F90];
    sub_2263462E8(&unk_28137E058, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DB0, &qword_226355A40);
    sub_226334174(&unk_28137E008, &unk_27D793DB0, &qword_226355A40);
    sub_2263508CC();
    MEMORY[0x22AA7C850](0, v16, v17, v10);
    _Block_release(v10);

    (*(v18 + 8))(v17, v7);
    (*(v19 + 8))(v16, v20);

    v11 = swift_task_alloc();
    *(v1 + 232) = v11;
    *v11 = v1;
    v11[1] = sub_226341AF8;
    v12 = *(v1 + 208);

    return MEMORY[0x2822003E8](v1 + 240, 0, 0, v12);
  }
}

void sub_226341F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_226343000(a3);
    sub_226343A04(a3);
    sub_2263506BC();
  }
}

uint64_t sub_226341FF0(uint64_t a1, uint64_t a2)
{
  sub_22634FD5C();
  sub_2263462E8(&unk_27D793DD0, MEMORY[0x277D78C30], MEMORY[0x277D78C28]);

  sub_22634FAAC();
}

uint64_t sub_2263420A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22634FD5C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22635004C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263421D0, 0, 0);
}

uint64_t sub_2263421D0(uint64_t a1)
{
  v30 = v1;
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v5 = v1[3];
  sub_22635002C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22635003C();
  v7 = sub_22635072C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[11];
  v10 = v1[8];
  v11 = v1[9];
  v13 = v1[6];
  v12 = v1[7];
  v14 = v1[5];
  if (v8)
  {
    v26 = v7;
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136315138;
    v16 = sub_22634FD4C();
    v17 = sub_22634EEFC();
    v27 = v10;
    v28 = v9;
    v18 = MEMORY[0x22AA7C630](v16, v17);
    v20 = v19;

    (*(v13 + 8))(v12, v14);
    v21 = sub_226345004(v18, v20, &v29);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2262B6000, v6, v26, "Client requested for resources with IDs %s...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x22AA7D570](v25, -1, -1);
    MEMORY[0x22AA7D570](v15, -1, -1);

    v22 = *(v11 + 8);
    v22(v28, v27);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v22 = *(v11 + 8);
    v22(v9, v10);
  }

  v1[12] = v22;
  v23 = v1[4];
  v1[13] = sub_22634FD4C();

  return MEMORY[0x2822009F8](sub_2263423F8, v23, 0);
}

uint64_t sub_2263423F8()
{
  *(v0 + 112) = sub_2262E1420(*(v0 + 104));

  return MEMORY[0x2822009F8](sub_226342474, 0, 0);
}

uint64_t sub_226342474(uint64_t a1)
{
  v29 = v1;
  sub_22635002C();

  v2 = sub_22635003C();
  v3 = sub_22635072C();

  if (os_log_type_enabled(v2, v3))
  {
    v26 = v3;
    v4 = v1[14];
    v5 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v5 = 136315138;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = v1[14];
      v8 = sub_2262DD844(v6, 0);
      v9 = *(sub_22634EEFC() - 8);
      v24 = sub_2262DF254(&v28, &v8[(*(v9 + 80) + 32) & ~*(v9 + 80)], v6, v7);
      v10 = v28;

      result = sub_2262D66F4(v10);
      if (v24 != v6)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v15 = v1[12];
    v16 = v1[10];
    v17 = v1[8];
    v18 = sub_22634EEFC();
    v19 = MEMORY[0x22AA7C630](v8, v18);
    v21 = v20;

    v22 = sub_226345004(v19, v21, &v27);

    *(v5 + 4) = v22;
    _os_log_impl(&dword_2262B6000, v2, v26, "Responding to client with resources with IDs %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x22AA7D570](v25, -1, -1);
    MEMORY[0x22AA7D570](v5, -1, -1);

    v15(v16, v17);
  }

  else
  {
    v12 = v1[12];
    v13 = v1[10];
    v14 = v1[8];

    v12(v13, v14);
  }

  sub_22634FD6C();

  v23 = v1[1];

  return v23();
}

id Server.__deallocating_deinit()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFEC();
  v5 = v0;
  v6 = sub_22635003C();
  v7 = sub_22635071C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    swift_getObjectType();
    v10 = sub_226350D6C();
    v12 = sub_226345004(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_226345004(0x74696E696564, 0xE600000000000000, &v16);
    _os_log_impl(&dword_2262B6000, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v9, -1, -1);
    MEMORY[0x22AA7D570](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);

  sub_22634FB2C();

  sub_22634FB2C();

  v13 = type metadata accessor for Server(0);
  v17.receiver = v5;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

uint64_t sub_226342BD0(uint64_t a1)
{
  v3 = sub_22635004C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2263503AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v1[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_2263503CC();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_22634FFEC();
    v14 = v1;

    v15 = sub_22635003C();
    v16 = sub_22635071C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v3;
      v30 = v18;
      v19 = v18;
      *v17 = 136315650;
      swift_getObjectType();
      v20 = sub_226350D6C();
      v22 = sub_226345004(v20, v21, &v30);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_226345004(0x737365536464615FLL, 0xEF293A5F286E6F69, &v30);
      *(v17 + 22) = 2080;
      v31 = 0x286E6F6973736553;
      v32 = 0xE800000000000000;
      sub_22634EEFC();
      sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_226350C1C();
      MEMORY[0x22AA7C5B0](v23);

      MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
      v24 = sub_226345004(v31, v32, &v30);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_2262B6000, v15, v16, "%s.%s %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v19, -1, -1);
      MEMORY[0x22AA7D570](v17, -1, -1);

      (*(v4 + 8))(v6, v29);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v25 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
    v26 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *&v14[v26];
    *&v14[v26] = 0x8000000000000000;
    sub_2262E4608(a1, a1 + v25, isUniquelyReferenced_nonNull_native);
    *&v14[v26] = v30;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_226343000(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_22634EEFC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = sub_22635004C();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2263503AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v2[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_2263503CC();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap;
    swift_beginAccess();
    if (*(*&v2[v19] + 16))
    {

      sub_2263394D8(v43);
      v21 = v20;

      if (v21)
      {
        v39 = v7;
        sub_22634FFEC();
        v40 = *(v4 + 16);
        v40(v9, v43, v3);
        v22 = v2;
        v23 = sub_22635003C();
        v24 = sub_22635071C();

        v38 = v24;
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37[1] = (v4 + 16);
          v26 = v25;
          v27 = swift_slowAlloc();
          v44[0] = v27;
          *v26 = 136315650;
          swift_getObjectType();
          v28 = sub_226350D6C();
          v37[0] = v23;
          v30 = sub_226345004(v28, v29, v44);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_226345004(0xD000000000000014, 0x8000000226357C70, v44);
          *(v26 + 22) = 2080;
          sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v31 = sub_226350C1C();
          v33 = v32;
          (*(v4 + 8))(v9, v3);
          v34 = sub_226345004(v31, v33, v44);

          *(v26 + 24) = v34;
          v35 = v37[0];
          _os_log_impl(&dword_2262B6000, v37[0], v38, "%s.%s %s", v26, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AA7D570](v27, -1, -1);
          MEMORY[0x22AA7D570](v26, -1, -1);
        }

        else
        {

          (*(v4 + 8))(v9, v3);
        }

        (*(v41 + 8))(v12, v42);
        v36 = v39;
        v40(v39, v43, v3);
        swift_beginAccess();
        sub_2262E0300(0, v36);
        swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2263434E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v5 = sub_22635004C();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22634EEFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v44[-v11];
  v13 = sub_2263503AC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *&v3[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_2263503CC();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    sub_2263504DC();
    v20 = os_transaction_create();

    if (v20)
    {
      v21 = v8;
      v22 = *(v8 + 16);
      v23 = v47;
      v22(v12, v47, v7);
      v24 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap;
      swift_beginAccess();
      v25 = swift_unknownObjectRetain();
      v46 = v24;
      sub_2262E0140(v25, v12);
      swift_endAccess();
      sub_22634FFEC();
      v26 = v48;
      v22(v48, v23, v7);
      v27 = v4;
      swift_unknownObjectRetain();
      v28 = v27;
      v29 = sub_22635003C();
      v30 = sub_22635071C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = v26;
        v32 = v21;
        v33 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v53[0] = v47;
        *v33 = 136315650;
        swift_getObjectType();
        v45 = v30;
        v52 = v20;
        swift_unknownObjectRetain();
        v34 = sub_2263504CC();
        v36 = sub_226345004(v34, v35, v53);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v37 = v31;
        v38 = sub_226350C1C();
        v40 = v39;
        (*(v32 + 8))(v37, v7);
        v41 = sub_226345004(v38, v40, v53);

        *(v33 + 14) = v41;
        *(v33 + 22) = 2048;
        v42 = *(*&v4[v46] + 16);

        *(v33 + 24) = v42;
        _os_log_impl(&dword_2262B6000, v29, v45, "Acquired OS transaction %s. (uuid = %s, count = %ld)", v33, 0x20u);
        v43 = v47;
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v43, -1, -1);
        MEMORY[0x22AA7D570](v33, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v21 + 8))(v26, v7);
      }

      return (*(v49 + 8))(v51, v50);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226343A04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22635004C();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v64 - v7;
  v72 = sub_22634EEFC();
  v9 = *(v72 - 8);
  v10 = MEMORY[0x28223BE20](v72);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v67 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  v17 = sub_2263503AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v2[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_2263503CC();
  result = (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v24 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (!*(v25 + 16))
  {
    goto LABEL_7;
  }

  v26 = sub_2263394D8(a1);
  if ((v27 & 1) == 0)
  {

LABEL_7:
    v68 = v24;
    v50 = v71;
    sub_22634FFEC();
    v51 = v9;
    v52 = v72;
    (*(v9 + 16))(v12, a1, v72);
    v53 = v2;
    v54 = sub_22635003C();
    v55 = sub_22635073C();
    if (!os_log_type_enabled(v54, v55))
    {

      (*(v9 + 8))(v12, v52);
      return (*(v69 + 8))(v50, v70);
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v74[0] = v57;
    *v56 = 136315394;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v58 = sub_226350C1C();
    v59 = v52;
    v61 = v60;
    (*(v51 + 8))(v12, v59);
    v62 = sub_226345004(v58, v61, v74);

    *(v56 + 4) = v62;
    *(v56 + 12) = 2048;
    v63 = *(*&v2[v68] + 16);

    *(v56 + 14) = v63;
    _os_log_impl(&dword_2262B6000, v54, v55, "Unable to relinquish OS transaction because it no longer exists. (uuid = %s, count = %ld)", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x22AA7D570](v57, -1, -1);
    MEMORY[0x22AA7D570](v56, -1, -1);

    return (*(v69 + 8))(v71, v70);
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  swift_unknownObjectRetain();

  v66 = v9;
  v29 = *(v9 + 16);
  v30 = v72;
  v29(v16, a1, v72);
  swift_beginAccess();
  sub_2262E0140(0, v16);
  swift_endAccess();
  sub_22634FFEC();
  v31 = v67;
  v29(v67, a1, v30);
  v32 = v2;
  swift_unknownObjectRetain();
  v33 = v32;
  v71 = v8;
  v34 = sub_22635003C();
  v35 = sub_22635071C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v31;
    v37 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v74[0] = v65;
    *v37 = 136315650;
    swift_getObjectType();
    v73 = v28;
    swift_unknownObjectRetain();
    v38 = sub_2263504CC();
    v40 = sub_226345004(v38, v39, v74);
    v68 = v24;
    v41 = v40;

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v42 = v36;
    v43 = v72;
    v44 = sub_226350C1C();
    v46 = v45;
    (*(v66 + 8))(v42, v43);
    v47 = sub_226345004(v44, v46, v74);

    *(v37 + 14) = v47;
    *(v37 + 22) = 2048;
    v48 = *(*&v2[v68] + 16);

    *(v37 + 24) = v48;
    _os_log_impl(&dword_2262B6000, v34, v35, "Relinquished OS transaction %s. (uuid = %s, count = %ld)", v37, 0x20u);
    v49 = v65;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v49, -1, -1);
    MEMORY[0x22AA7D570](v37, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v66 + 8))(v31, v72);
  }

  return (*(v69 + 8))(v71, v70);
}