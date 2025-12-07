uint64_t sub_252DB2874(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DF8, &qword_252E600D8);
  v7 = sub_252E37984();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2529E6488(&qword_27F542C40, &qword_27F540A28, &qword_252E3DF80, MEMORY[0x277D5F440]);
      result = sub_252E36E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_252DB2B94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E00, &qword_252E600E0);
  result = sub_252E37984();
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
      v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
      sub_252E37EC4();
      HueSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 2 * v12) = v16;
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

uint64_t sub_252DB2DE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      sub_252E37EC4();
      MEMORY[0x2530AE390](v18);
      result = sub_252E37F14();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_252DB3000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E18, &qword_252E600F8);
  result = sub_252E37984();
  v5 = result;
  if (*(v3 + 16))
  {
    v42 = v2;
    v6 = 0;
    v43 = v3 + 56;
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
    v44 = v10;
    v45 = result;
    v46 = v3;
    while (1)
    {
      if (!v9)
      {
        v18 = v6;
        while (1)
        {
          v6 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_47;
          }

          if (v6 >= v10)
          {

            v2 = v42;
            goto LABEL_45;
          }

          v19 = *(v43 + 8 * v6);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v47 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }
      }

      v17 = __clz(__rbit64(v9));
      v47 = (v9 - 1) & v9;
LABEL_15:
      v20 = (*(v3 + 48) + ((v17 | (v6 << 6)) << 6));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[3];
      v57 = v20[2];
      v58 = v23;
      v55 = v22;
      v56 = v21;
      sub_252E37EC4();
      sub_252C76A80(&v55, v48);
      sub_252E37044();
      sub_252E37044();
      sub_252E37044();

      v24 = v58;
      sub_252E37044();

      sub_252E37EE4();
      if (v24)
      {
        sub_252E37044();
      }

      v3 = v46;
      v25 = *(&v58 + 1);
      if (*(&v58 + 1))
      {
        sub_252E37EE4();
        v26 = 1 << *(v25 + 32);
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v28 = v27 & *(v25 + 64);
        v29 = (v26 + 63) >> 6;

        v30 = 0;
        for (i = 0; v28; v30 ^= result)
        {
          v32 = i;
LABEL_27:
          v33 = *(*(v25 + 56) + 8 * (__clz(__rbit64(v28)) | (v32 << 6)));
          v28 &= v28 - 1;
          v48[2] = v52;
          v48[3] = v53;
          v49 = v54;
          v48[0] = v50;
          v48[1] = v51;

          sub_252E37044();

          if (v33 == 0.0)
          {
            v34 = 0.0;
          }

          else
          {
            v34 = v33;
          }

          MEMORY[0x2530AE3C0](*&v34);
          result = sub_252E37F14();
        }

        while (1)
        {
          v32 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v32 >= v29)
          {

            MEMORY[0x2530AE390](v30);
            v3 = v46;
            goto LABEL_34;
          }

          v28 = *(v25 + 64 + 8 * v32);
          ++i;
          if (v28)
          {
            i = v32;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      sub_252E37EE4();
LABEL_34:
      result = sub_252E37F14();
      v5 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v11 + 8 * (v36 >> 6))) == 0)
      {
        break;
      }

      v12 = __clz(__rbit64((-1 << v36) & ~*(v11 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v45 + 48) + (v12 << 6));
      v14 = v55;
      v15 = v56;
      v16 = v58;
      v13[2] = v57;
      v13[3] = v16;
      *v13 = v14;
      v13[1] = v15;
      ++*(v45 + 16);
      v10 = v44;
      v9 = v47;
    }

    v38 = 0;
    v39 = (63 - v35) >> 6;
    while (++v37 != v39 || (v38 & 1) == 0)
    {
      v40 = v37 == v39;
      if (v37 == v39)
      {
        v37 = 0;
      }

      v38 |= v40;
      v41 = *(v11 + 8 * v37);
      if (v41 != -1)
      {
        v12 = __clz(__rbit64(~v41)) + (v37 << 6);
        goto LABEL_7;
      }
    }

LABEL_48:
    __break(1u);
  }

  else
  {

LABEL_45:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_252DB3500(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_252E37984();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_252E37684();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_252DB370C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  result = sub_252E37984();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v16 = (*(v3 + 48) + 504 * (v13 | (v6 << 6)));
      memcpy(__src, v16, 0x1F8uLL);
      memcpy(__dst, v16, sizeof(__dst));
      sub_252E37EC4();
      sub_2529353AC(__src, v25);
      HomeAutomationIntent.hash(into:)(v26);
      result = sub_252E37F14();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = memcpy((*(v5 + 48) + 504 * v12), __src, 0x1F8uLL);
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

        v2 = v24;
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

uint64_t sub_252DB3974(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB39C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_252E359C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_252DB3A84(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2530ADDA0](result, a2, v7);
      a5(0);
      swift_dynamicCast();
      return v17;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (sub_252E378A4() == *(a4 + 36))
    {
      sub_252E378B4();
      a5(0);
      swift_dynamicCast();
      sub_252E37EC4();
      sub_252E32E84();
      sub_252DB4F00(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252E36E94();
      v8 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
      MEMORY[0x2530AE390](*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v9 = (v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      sub_252E37044();

      v10 = sub_252E37F14();
      v11 = -1 << *(a4 + 32);
      v12 = v10 & ~v11;
      if ((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = *(*(a4 + 48) + 8 * v12);

          if ((sub_252E32E54() & 1) != 0 && *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v17 + v8))
          {
            if (*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v9 && *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v9[1])
            {
              goto LABEL_26;
            }

            v16 = sub_252E37DB4();

            if (v16)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }

          v12 = (v12 + 1) & v13;
          if (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:

    __break(1u);
    goto LABEL_34;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_26:

LABEL_27:
  }
}

void *sub_252DB3DB4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB3E10(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_252DB3E60(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v81 - v15;
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v17 = result;
  v82 = v7;
  v83 = v11;
  [result attribute];
  if (qword_27F53F2A8 != -1)
  {
    swift_once();
  }

  v18 = off_27F541CD8;
  if (!*(off_27F541CD8 + 2) || (v19 = sub_252A488EC(), (v20 & 1) == 0))
  {

    return 0;
  }

  LOBYTE(v85) = *(v18[7] + v19);
  AttributeSemantic.rawValue.getter();
  sub_252E362F4();
  (*(v83 + 32))(v84, v14, v10);
  v21 = &off_279711000;
  v22 = [v17 value];
  if (!v22)
  {
    goto LABEL_34;
  }

  if ((sub_2529C61E4() & 1) == 0 && (sub_2529C6784() & 1) == 0)
  {
    v30 = [a1 userTask];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 attribute];

      v33 = v32 == 67;
      v21 = &off_279711000;
      if (v33)
      {
        v34 = [a1 taskOutcome];
        v35 = sub_2529FC1F0(&unk_2864A1628);
        LOBYTE(v34) = sub_252DA05B4(v34, v35);
        v21 = &off_279711000;

        if (v34)
        {
          v36 = [a2 userTask];
          v37 = [v36 value];

          v38 = [v37 cleaningJob];
          type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
          v39 = swift_allocObject();
          (*(v83 + 56))(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, 1, 1, v10);
          *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
          *(v39 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
          v40 = [a1 taskOutcome];
          v81 = v38;
          v41 = sub_252BEE270(v40, v38);

          type metadata accessor for HomeAutomationEntityStateValue(0);
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          v42 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
          swift_beginAccess();
          sub_252956C1C(v41 + v42, v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
          *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = *(v41 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
          LOBYTE(v42) = *(v41 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue);

          *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v42;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v43 = sub_252E36AD4();
          __swift_project_value_buffer(v43, qword_27F544D60);
          v85 = 0;
          v86 = 0xE000000000000000;
          sub_252E379F4();

          v85 = 0xD00000000000001BLL;
          v86 = 0x8000000252E9B890;
          sub_252956C1C(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
          v44 = sub_252E36F94();
          MEMORY[0x2530AD570](v44);

          v45 = v85;
          v46 = v86;
LABEL_26:
          sub_252CC3D90(v45, v46, 0xD00000000000008CLL, 0x8000000252E6E8A0);

LABEL_35:
          v29 = v83;
          goto LABEL_36;
        }
      }
    }

    v47 = [a1 userTask];
    if (v47)
    {
      v48 = v47;
      v49 = v21;
      v50 = [v47 attribute];

      v33 = v50 == 67;
      v21 = v49;
      if (v33)
      {
        v51 = [v17 v49 + 376];
        if (v51)
        {
          v52 = v51;
          v53 = [v51 cleaningJob];

          if (v53)
          {
            v54 = [a2 userTask];
            v55 = [v54 v21 + 376];

            v56 = [v55 cleaningJob];
            [v56 runState];

            type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
            v57 = swift_allocObject();
            (*(v83 + 56))(v57 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, 1, 1, v10);
            *(v57 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
            *(v57 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
            v81 = v53;
            v58 = sub_252BEEB34(v53);

            type metadata accessor for HomeAutomationEntityStateValue(0);
            v27 = swift_allocObject();
            *(v27 + 16) = 0;
            v59 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
            swift_beginAccess();
            sub_252956C1C(v58 + v59, v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
            *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = *(v58 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
            LOBYTE(v59) = *(v58 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue);

            *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v59;
            if (qword_27F53F4E8 != -1)
            {
              swift_once();
            }

            v60 = sub_252E36AD4();
            __swift_project_value_buffer(v60, qword_27F544D60);
            v85 = 0;
            v86 = 0xE000000000000000;
            sub_252E379F4();

            v85 = 0xD00000000000001BLL;
            v86 = 0x8000000252E9B870;
            sub_252956C1C(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
            v61 = sub_252E36F94();
            MEMORY[0x2530AD570](v61);

            v45 = v85;
            v46 = v86;
            goto LABEL_26;
          }
        }
      }
    }

    v62 = [a1 userTask];
    if (v62 && (v63 = v62, v64 = sub_2529C6FFC(), v66 = v65, v63, (v66 & 1) == 0))
    {
      v68 = [a1 userTask];
      v69 = [v68 v21[206]];

      [v69 setUnit_];
      v67 = [a1 userTask];
      if (v67)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v67 = [a1 userTask];
      if (v67)
      {
LABEL_32:
        v70 = v67;
        v71 = [v67 v21[206]];

        v29 = v83;
        if (v71)
        {
          v27 = sub_252D0842C();
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_36;
      }
    }

LABEL_34:
    v27 = 0;
    goto LABEL_35;
  }

  v23 = sub_2529C61E4();
  type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v26 = v83;
  (*(v83 + 56))(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, 1, 1, v10);
  type metadata accessor for HomeAutomationEntityStateValue(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  swift_beginAccess();
  v28 = v24 + v25;
  v29 = v26;
  sub_252956C1C(v28, v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = 0;
  swift_setDeallocating();
  sub_25293847C(v24 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue, &qword_27F540298, &unk_252E3C270);
  swift_deallocClassInstance();
  *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = (v23 & 1) != 0;
LABEL_36:
  type metadata accessor for HomeAutomationEntityState.Builder(0);
  v72 = swift_allocObject();
  v73 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute;
  v74 = v29;
  v75 = *(v29 + 56);
  v75(v72 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, 1, 1, v10);
  v76 = OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType;
  v75(v72 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, 1, 1, v10);
  (*(v74 + 16))(v9, v84, v10);
  v75(v9, 0, 1, v10);
  swift_beginAccess();
  sub_252956BAC(v9, v72 + v73);
  swift_endAccess();
  sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);

  [v17 taskType];
  if (qword_27F53F298 != -1)
  {
    swift_once();
  }

  if (*(off_27F541CC8 + 2) && (sub_252A488EC(), (v77 & 1) != 0))
  {

    sub_252E37024();

    (*(v83 + 8))(v84, v10);
    v78 = 0;
  }

  else
  {
    (*(v83 + 8))(v84, v10);

    v78 = 1;
  }

  v79 = v82;
  v75(v82, v78, 1, v10);
  swift_beginAccess();
  sub_252956BAC(v79, v72 + v76);
  swift_endAccess();
  sub_25293847C(v79, &qword_27F540298, &unk_252E3C270);
  type metadata accessor for HomeAutomationEntityState(0);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  sub_252956C1C(v72 + v73, v80 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
  *(v80 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v27;
  sub_252956C1C(v72 + v76, v80 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType);
  swift_setDeallocating();
  sub_25293847C(v72 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute, &qword_27F540298, &unk_252E3C270);

  sub_25293847C(v72 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType, &qword_27F540298, &unk_252E3C270);
  swift_deallocClassInstance();
  return v80;
}

void *sub_252DB4BA0(unint64_t a1)
{
  v23 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 entity];
        v11 = sub_252A44C9C(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_252DFEB3C(v14, 1);
          v4 = v23;
          v16 = sub_252A44C9C(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D50, &qword_252E3E868);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x2530AD700]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_252E3C130;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_252DB4E10(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_252DB4E64(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_252DB4EB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252DB4F00(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252DB4FB8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WaterSystemRequestHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252DB4FEC(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v6 = sub_252D6CA80(v6);
    v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v8 = sub_252E36F04();
    v9 = [v7 initWithIdentifier:0 displayString:v8];

    v10 = v9;
    [v10 setBoolValue_];
    [v10 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v11 = sub_252D6CC80(v10);
    swift_beginAccess();
    v6[4] = v11;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v12, v2);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_252E379F4();
  v27 = v24;
  v28 = v25;
  MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E9B9D0);
  if (v6)
  {
    swift_beginAccess();
  }

  else
  {
    v13 = 0;
  }

  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v14 = sub_252E36F94();
  MEMORY[0x2530AD570](v14);

  sub_252CC3D90(v27, v28, 0xD000000000000092, 0x8000000252E9B930);

  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v15 = sub_252D6CB58();
  }

  else
  {
    v15 = 0;
  }

  v16 = [a1 filters];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for HomeFilter();
    v18 = sub_252E37264();
  }

  else
  {
    v18 = 0;
  }

  v19 = [a1 time];
  v20 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v20 setUserTask_];
  if (v18)
  {
    type metadata accessor for HomeFilter();
    v21 = sub_252E37254();
  }

  else
  {
    v21 = 0;
  }

  [v20 setFilters_];

  [v20 setTime_];

  return v20;
}

id sub_252DB5424(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    goto LABEL_9;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_8:
    sub_252C515AC();
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 27)
  {
    v8 = [a1 userTask];
    if (!v8)
    {
      return sub_252DB4FEC(a1);
    }

    v9 = v8;
    v10 = [v8 value];

    if (!v10)
    {
      return sub_252DB4FEC(a1);
    }
  }

LABEL_9:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E8B110, 0xD000000000000092, 0x8000000252E9B930);
  return a1;
}

id sub_252DB559C()
{
  [v0 setCommandOutcome_];
  result = [v0 homeAutomationRequests];
  if (result)
  {
    v2 = result;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
LABEL_24:
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ([v6 homeAutomationRequestOutcome] == 2)
      {

LABEL_19:

        return [v0 setCommandOutcome_];
      }

      v8 = [v7 homeAutomationRequestOutcome];

      ++v5;
      if (v8 == 3)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

dispatch_semaphore_t sub_252DB575C()
{
  result = dispatch_semaphore_create(1);
  qword_27F575C60 = result;
  return result;
}

uint64_t sub_252DB5780()
{
  v1 = v0;
  v2 = sub_252E32E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32DF4();
  sub_252E32D44();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v7 * 1000.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v8 < 9.22337204e18)
  {
    v5 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v5 = sub_2529F7BA0(0, *(v5 + 2) + 1, 1, v5);
  *(v1 + 24) = v5;
LABEL_5:
  v11 = *(v5 + 2);
  v10 = *(v5 + 3);
  if (v11 >= v10 >> 1)
  {
    v5 = sub_2529F7BA0((v10 > 1), v11 + 1, 1, v5);
  }

  result = v8;
  *(v5 + 2) = v11 + 1;
  *&v5[8 * v11 + 32] = v8;
  *(v1 + 24) = v5;
  return result;
}

uint64_t sub_252DB5924()
{
  sub_252DB5780();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2 && (v3 = *(v1 + 8 * v2 + 24), v3 > 0) && (v4 = *(v0 + 16), v4 >= 1))
  {
    v5 = (v3 - v4) & ~((v3 - v4) >> 63);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = v6;

  return v5;
}

void *sub_252DB5990()
{
  v1 = MEMORY[0x277D84F90];
  v0[4] = MEMORY[0x277D84F90];
  type metadata accessor for MetricsService.StopWatch();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  v0[5] = v2;
  type metadata accessor for SiriKitEvent.HomeAutomationBuilder(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  v5 = *MEMORY[0x277D5BB10];
  v6 = sub_252E339A4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  v7 = v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType;
  strcpy((v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType), "INCurrentTask");
  *(v7 + 14) = -4864;
  v8 = (v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_app) = 0;
  v9 = (v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext) = 0;
  v10 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
  v11 = sub_252E33744();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = (v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription);
  *v12 = 0;
  v12[1] = 0;
  v0[2] = v3;
  _s7BuilderCMa_0();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v0[3] = v13;
  return v0;
}

uint64_t sub_252DB5B44()
{
  type metadata accessor for HomeStore(0);

  v1 = static HomeStore.shared.getter(v0);
  v2 = sub_2529D8DC0();

  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v4 = sub_252C78058(v3, 0);

  v6 = static HomeStore.shared.getter(v5);
  v7 = sub_2529D9D50();

  v47 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = v4;
    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v10, v7);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          v21 = v47;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v3 = sub_252E378C4();
          goto LABEL_3;
        }

        v11 = *(v7 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_21;
        }
      }

      v13 = [*(v11 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
      v14 = [v13 categoryType];

      v15 = sub_252E36F34();
      v17 = v16;

      if (v15 == sub_252E36F34() && v17 == v18)
      {
      }

      else
      {
        v20 = sub_252E37DB4();

        if ((v20 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_9:
      ++v10;
      if (v12 == v8)
      {
        goto LABEL_22;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    v22 = sub_252E378C4();
  }

  else
  {
    v22 = *(v21 + 16);
  }

  v23 = sub_252C781CC(v22, 0);

  v25 = static HomeStore.shared.getter(v24);
  v26 = sub_2529D9D50();

  if (v26 >> 62)
  {
    v27 = sub_252E378C4();
    if (v27)
    {
      goto LABEL_29;
    }

LABEL_51:
    v39 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_29:
  v46 = v23;
  v28 = 0;
  while ((v26 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x2530ADF00](v28, v26);
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_44;
    }

LABEL_36:
    v31 = [*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
    v32 = [v31 categoryType];

    v33 = sub_252E36F34();
    v35 = v34;

    if (v33 == sub_252E36F34() && v35 == v36)
    {
    }

    else
    {
      v38 = sub_252E37DB4();

      if ((v38 & 1) == 0)
      {

        goto LABEL_32;
      }
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_32:
    ++v28;
    if (v30 == v27)
    {
      goto LABEL_45;
    }
  }

  if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  v29 = *(v26 + 8 * v28 + 32);

  v30 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_36;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v39 = v9;
LABEL_52:

  if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
  {
    v40 = sub_252E378C4();
  }

  else
  {
    v40 = *(v39 + 16);
  }

  sub_252C7833C(v40, 0);

  v42 = static HomeStore.shared.getter(v41);
  v43 = sub_2529D9114();

  if (v43)
  {
  }

  sub_252C784AC(v43 != 0);
}

void *sub_252DB6088(uint64_t a1)
{
  result = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    memcpy(__dst, (v3 + 88), sizeof(__dst));
    v4 = __dst[63];
    sub_252938414(__dst, v29, &qword_27F545B08, &qword_252E5E730);
    [v4 lock];
    sub_252938414(__dst, v29, &qword_27F5404C8, &unk_252E3FD60);
    [v4 unlock];
    sub_25293847C(__dst, &qword_27F545B08, &qword_252E5E730);
    memcpy(v31, __dst, 0x1F8uLL);
    v5 = sub_252956B94(v31);
    if (v5 != 1)
    {
      sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
    }

    swift_beginAccess();
    v6 = *(v1 + 32);
    if (v6 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v27 = v6 & 0xC000000000000001;
      v24 = v6 & 0xFFFFFFFFFFFFFF8;
      v23 = v6 + 32;

      v8 = 0;
      v25 = i;
      v26 = v6;
      while (1)
      {
        if (v27)
        {
          v10 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *(v24 + 16))
          {
            goto LABEL_36;
          }

          v10 = *(v23 + 8 * v8);
        }

        v9 = v10;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        v12 = [v10 homeAutomationRequests];
        if (!v12)
        {
          goto LABEL_8;
        }

        v13 = v12;
        v28 = v9;
        sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
        v6 = sub_252E37264();

        if (!(v6 >> 62))
        {
          v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            break;
          }

          goto LABEL_7;
        }

        v14 = sub_252E378C4();
        if (v14)
        {
          break;
        }

LABEL_7:

        i = v25;
        v6 = v26;
        v9 = v28;
LABEL_8:

        if (v8 == i)
        {
        }
      }

      if (v14 >= 1)
      {
        v15 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x2530ADF00](v15, v6);
          }

          else
          {
            v17 = *(v6 + 8 * v15 + 32);
          }

          v18 = v17;
          v19 = [v17 homeAutomationRequestMetadata];
          if (v19)
          {
            v16 = v19;
            [v19 setIsIntentSelectionCacheHit_];
          }

          else
          {
            v20 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
            if (!v20)
            {
              if (qword_27F53F530 != -1)
              {
                swift_once();
              }

              v22 = sub_252E36AD4();
              __swift_project_value_buffer(v22, qword_27F544E38);
              sub_252CC4050(0xD000000000000020, 0x8000000252E8E7C0, 0xD00000000000008ELL, 0x8000000252E8E7F0, 0xD00000000000001FLL, 0x8000000252E8E960, 486);
              goto LABEL_21;
            }

            v21 = v20;
            [v20 setIsIntentSelectionCacheHit_];
            v16 = v21;
            [v18 setHomeAutomationRequestMetadata_];
          }

LABEL_21:
          ++v15;

          if (v14 == v15)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }
  }

  return result;
}

uint64_t sub_252DB649C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v75 = a1;
  v7 = sub_252E339A4();
  v76 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E78, &qword_252E601E8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  if (a3)
  {
    v21 = sub_252DB5B44();
    sub_252DB6088(v21);
  }

  swift_beginAccess();
  v22 = v4[4];
  if (v22 >> 62)
  {
    v23 = sub_252E378C4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Metrics/SELF/MetricsService.swift";
  v70 = v11;
  v73 = v15;
  if (!v23)
  {
    if (qword_27F53F530 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

  v25 = v4[3];
  v24 = v4[4];
  if ((v24 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x2530ADF00](0, v24);

    goto LABEL_9;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v24 + 32);

    v27 = v26;
LABEL_9:
    v28 = *(v25 + 24);
    *(v25 + 24) = v27;

    v29 = v4[4];
    if ((v29 & 0xC000000000000001) != 0)
    {

      v30 = MEMORY[0x2530ADF00](0, v29);

LABEL_12:
      v31 = [v30 commandOutcome];

      v32 = sub_252E33744();
      v33 = *(v32 - 8);
      v34 = (v33 + 56);
      if (v31 == 1)
      {
        v35 = MEMORY[0x277D5B950];
      }

      else
      {
        v35 = MEMORY[0x277D5B910];
      }

      (*(v33 + 104))(v20, *v35, v32);
      (*v34)(v20, 0, 1, v32);

      sub_252A42278(v20);

      v37 = sub_25293847C(v20, &qword_27F541C78, &unk_252E42170);
      v38 = a2;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
      goto LABEL_12;
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_15:
  v36 = sub_252E36AD4();
  __swift_project_value_buffer(v36, qword_27F544E38);
  sub_252CC4050(0xD00000000000006ALL, 0x8000000252E9BE40, 0xD000000000000071, (v24 - 32) | 0x8000000000000000, 0xD000000000000033, 0x8000000252E9BD80, 149);
  v38 = a2;
  if (a2)
  {
    goto LABEL_22;
  }

LABEL_19:
  v39 = *(sub_252B680FC(v37) + 136);

  if (!v39 || (v75 = sub_252E33694(), v38 = v40, , !v38))
  {
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F24();

    v75 = sub_252E33694();
    v38 = v41;
  }

LABEL_22:
  v71 = v7;
  v72 = v20;
  v42 = qword_27F53F530;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = sub_252E36AD4();
  __swift_project_value_buffer(v43, qword_27F544E38);
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_252E379F4();

  v77 = 0xD000000000000023;
  v78 = 0x8000000252E9BCD0;
  v44 = v75;
  v80 = v75;
  v81 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v45 = sub_252E36F94();
  MEMORY[0x2530AD570](v45);

  sub_252CC3D90(v77, v78, 0xD000000000000071, 0x8000000252E9BB90);

  v46 = sub_252A4246C(v44, v38);

  v47 = *(v4[3] + 24);
  v48 = v73;
  v49 = v76;
  if (v47)
  {
    v50 = [v47 commandType];
    v51 = 0xD000000000000014;
    if (v50 > 2)
    {
      if (v50 != 3)
      {
        if (v50 == 4)
        {
          v52 = "AdditionalMetrics:)";
          v51 = 0xD000000000000010;
          goto LABEL_36;
        }

LABEL_32:
        v52 = "event with taskId: ";
        v51 = 0xD000000000000016;
        goto LABEL_36;
      }

      v53 = "INDiscoverHomeIntent";
    }

    else
    {
      if (v50 != 1)
      {
        if (v50 == 2)
        {
          v52 = "INDiscoverHomeIntent";
          v51 = 0xD000000000000013;
LABEL_36:
          v54 = (v46 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType);
          *v54 = v51;
          v54[1] = v52 | 0x8000000000000000;

          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v53 = "INAutomateHomeIntent";
    }

    v52 = (v53 - 32);
    goto LABEL_36;
  }

LABEL_37:
  v55 = v71;
  (*(v49 + 104))(v17, *MEMORY[0x277D5BB90], v71);
  (*(v49 + 56))(v17, 0, 1, v55);
  sub_252DB8BC8(v17, v48);
  if ((*(v49 + 48))(v48, 1, v55) == 1)
  {

    sub_25293847C(v48, &qword_27F545E78, &qword_252E601E8);
  }

  else
  {
    v56 = v70;
    (*(v49 + 32))(v70, v48, v55);
    v57 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
    swift_beginAccess();
    (*(v49 + 40))(v46 + v57, v56, v55);
    swift_endAccess();
  }

  v58 = v72;

  v59 = sub_252C785FC();

  if (v59)
  {
    v60 = v4[2];
    v61 = objc_allocWithZone(MEMORY[0x277D57520]);
    v62 = v59;

    v63 = [v61 init];
    v64 = *(v60 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext);
    *(v60 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext) = v63;
    v65 = v63;

    [v65 setHomeAutomationContext_];
  }

  else
  {
    sub_252CC4050(0xD00000000000005CLL, 0x8000000252E9BD20, 0xD000000000000071, 0x8000000252E9BB90, 0xD000000000000033, 0x8000000252E9BD80, 165);
  }

  v66 = v4[2];
  sub_252E33804();
  v67 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  swift_beginAccess();
  (*(v76 + 16))(v74, v66 + v67, v55);
  v68 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
  swift_beginAccess();
  sub_252938414(v66 + v68, v58, &qword_27F541C78, &unk_252E42170);

  sub_252E337E4();
  sub_252CC3D90(0x20676E69646E6553, 0xEF7363697274656DLL, 0xD000000000000071, 0x8000000252E9BB90);
  sub_252E336C4();
  __swift_project_boxed_opaque_existential_1(&v77, v79);
  sub_252E336D4();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  sub_252DB6EE4();
}

uint64_t sub_252DB6EE4()
{
  v1 = v0;
  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E38);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E9BCB0, 0xD000000000000071, 0x8000000252E9BB90);
  type metadata accessor for SiriKitEvent.HomeAutomationBuilder(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  v5 = *MEMORY[0x277D5BB10];
  v6 = sub_252E339A4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  v7 = v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType;
  strcpy((v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType), "INCurrentTask");
  *(v7 + 14) = -4864;
  v8 = (v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_app) = 0;
  v9 = (v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext) = 0;
  v10 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
  v11 = sub_252E33744();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = (v3 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription);
  *v12 = 0;
  v12[1] = 0;
  v1[2] = v3;

  swift_beginAccess();
  v1[4] = MEMORY[0x277D84F90];

  _s7BuilderCMa_0();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v1[3] = v13;
}

void sub_252DB7138(void *a1)
{
  if (a1)
  {
    v2 = v1;
    swift_beginAccess();
    v4 = a1;
    MEMORY[0x2530AD700]();
    if (*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    swift_endAccess();
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E38);
    sub_252CC4050(0xD000000000000022, 0x8000000252E9BC60, 0xD000000000000071, 0x8000000252E9BB90, 0xD000000000000011, 0x8000000252E9BC90, 191);
  }
}

void *sub_252DB7280(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_252E32E84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 clientContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 metricIdentifier];

    sub_252E36F34();
    sub_252E32E14();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_25293847C(v5, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v13 = swift_beginAccess();
      v14 = *(v1 + 32);
      MEMORY[0x28223BE20](v13);
      *(&v18 - 2) = v9;

      v15 = sub_2529A1AB0(sub_252DB8B88, (&v18 - 4), v14);

      (*(v7 + 8))(v9, v6);
      result = v15;
      if (v15)
      {
        return result;
      }
    }
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544E38);
  sub_252CC4050(0xD000000000000025, 0x8000000252E9BC30, 0xD000000000000071, 0x8000000252E9BB90, 0x28646E616D6D6F63, 0xEE00293A68746977, 224);
  return 0;
}

uint64_t sub_252DB7594(id *a1, uint64_t a2)
{
  v3 = [*a1 homeAutomationRequests];
  if (v3)
  {
    v4 = v3;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v5 = sub_252E37264();

    MEMORY[0x28223BE20](v6);
    v9[2] = a2;
    v7 = sub_252A00B74(sub_252DB8BA8, v9, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_252DB767C(id *a1)
{
  v1 = [*a1 homeAutomationRequestId];
  v2 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v3 = sub_252E32E44();
  v4 = [v2 initWithNSUUID_];

  if (v1)
  {
    if (v4)
    {
      sub_25293F638(0, &qword_27F543150, 0x277D5AC78);
      v5 = sub_252E37694();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
    v1 = v4;
  }

  return v5 & 1;
}

uint64_t sub_252DB775C()
{

  return swift_deallocClassInstance();
}

id sub_252DB77AC(void *a1)
{
  v1 = a1;
  FLOWSchemaFLOWHomeAutomationCommand.description.getter();

  v2 = sub_252E36F04();

  return v2;
}

uint64_t FLOWSchemaFLOWHomeAutomationCommand.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  [v0 hash];
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E9BA10);
  v3 = [v0 commandId];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E68, &qword_252E60170);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0x7974202020200A2CLL, 0xEC000000203A6570);
  [v0 commandType];
  v5 = sub_252E37644();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9BA30);
  [v0 commandDuration];
  v6 = sub_252E37D94();
  MEMORY[0x2530AD570](v6);

  MEMORY[0x2530AD570](0x756F202020200A2CLL, 0xEF203A656D6F6374);
  [v0 commandOutcome];
  v7 = sub_252E37634();
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E9BA50);
  [v0 commandErrorReason];
  v8 = sub_252E37654();
  MEMORY[0x2530AD570](v8);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E9BA70);
  v9 = [v0 homeAutomationRequests];
  if (v9)
  {
    v10 = v9;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E70, &qword_252E60178);
  v11 = sub_252E36F94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_252DB7B98()
{
  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544E38);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E9BC10, 0xD000000000000071, 0x8000000252E9BB90);
  if (qword_27F53F750 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F545E60 = 0;

  return sub_252E37614();
}

void *sub_252DB7C84(uint64_t a1)
{
  sub_252D806C0(a1);
  sub_252D7ED58(0x537363697274654DLL, 0xEE00656369767265, sub_252DB7B98, 0, 15);

  if (qword_27F53F750 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = qword_27F545E60;
  if (qword_27F545E60)
  {
  }

  else
  {
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E9BB70, 0xD000000000000071, 0x8000000252E9BB90);
    type metadata accessor for MetricsService();
    swift_allocObject();
    v1 = sub_252DB5990();
    qword_27F545E60 = v1;
  }

  sub_252E37614();
  return v1;
}

uint64_t sub_252DB7E0C(char *a1)
{
  v1 = a1;
  v2 = [a1 runState];
  if (v2 != 2)
  {
    v87 = 1598248530;
    v88 = 0xE400000000000000;
    v15 = HomeAttributeStateType.description.getter(v2);
    goto LABEL_120;
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  if (qword_27F53F920 != -1)
  {
    goto LABEL_125;
  }

  while (1)
  {

    v4 = sub_252C7486C(v3);
    v86 = v1;
    v5 = [v1 cleanModes];
    v6 = sub_252E37264();

    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = (v6 + 32);
      v10 = MEMORY[0x277D84F90];
      do
      {
        v12 = *v9++;
        v11 = v12;
        if (v12 <= 0xF)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2529F7F9C(0, *(v10 + 2) + 1, 1, v10);
          }

          v14 = *(v10 + 2);
          v13 = *(v10 + 3);
          if (v14 >= v13 >> 1)
          {
            v10 = sub_2529F7F9C((v13 > 1), v14 + 1, 1, v10);
          }

          *(v10 + 2) = v14 + 1;
          *&v10[8 * v14 + 32] = v11;
        }

        --v7;
      }

      while (v7);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v1 = *(v10 + 2);
    if (v1)
    {
      v17 = 0;
      v18 = v4 + 56;
      v19 = MEMORY[0x277D84F90];
      do
      {
        if (v17 >= *(v10 + 2))
        {
          __break(1u);
          goto LABEL_122;
        }

        v22 = *&v10[8 * v17 + 32];
        if (*(v4 + 16) && (sub_252E37EC4(), MEMORY[0x2530AE390](v22), v23 = sub_252E37F14(), v24 = -1 << *(v4 + 32), v25 = v23 & ~v24, ((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
        {
          v26 = ~v24;
          while (*(*(v4 + 48) + 8 * v25) != v22)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA460(0, *(v19 + 16) + 1, 1);
            v19 = v89;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_2529AA460((v20 > 1), v21 + 1, 1);
            v19 = v89;
          }

          *(v19 + 16) = v21 + 1;
          *(v19 + 8 * v21 + 32) = v22;
        }

        ++v17;
      }

      while (v17 != v1);

      v8 = MEMORY[0x277D84F90];
      v28 = *(v19 + 16);
      if (!v28)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      v28 = *(MEMORY[0x277D84F90] + 16);
      if (!v28)
      {
LABEL_52:

        v30 = MEMORY[0x277D84F90];
        goto LABEL_53;
      }
    }

    v87 = v8;
    sub_2529AA3A0(0, v28, 0);
    v29 = 0;
    v30 = v87;
LABEL_30:
    if (v29 < *(v19 + 16))
    {
      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    swift_once();
  }

  v31 = *(v19 + 8 * v29 + 32);
  v1 = 0xE400000000000000;
  v32 = 1869903201;
  switch(v31)
  {
    case 0:
      v1 = 0xE700000000000000;
      v32 = 0x6E776F6E6B6E75;
      goto LABEL_47;
    case 1:
      v1 = 0xE600000000000000;
      v32 = 0x6D7575636176;
      goto LABEL_47;
    case 2:
      v1 = 0xE300000000000000;
      v32 = 7368557;
      goto LABEL_47;
    case 3:
      v1 = 0xE800000000000000;
      v32 = 0x6E6F697461636176;
      goto LABEL_47;
    case 4:
      v32 = 0x61656C4370656564;
      v1 = 0xE90000000000006ELL;
      goto LABEL_47;
    case 5:
      goto LABEL_47;
    case 6:
      v1 = 0xE500000000000000;
      v32 = 0x6B63697571;
      goto LABEL_47;
    case 7:
      v1 = 0xE500000000000000;
      v32 = 0x7465697571;
      goto LABEL_47;
    case 8:
      v1 = 0xE300000000000000;
      v32 = 7889261;
      goto LABEL_47;
    case 9:
      v32 = 1701736302;
      goto LABEL_47;
    case 10:
      v1 = 0xE900000000000079;
      v32 = 0x6772656E45776F6CLL;
      goto LABEL_47;
    case 11:
      v1 = 0xE500000000000000;
      v32 = 0x746867696ELL;
      goto LABEL_47;
    case 12:
      v1 = 0xE300000000000000;
      v32 = 7954788;
      goto LABEL_47;
    case 13:
      v1 = 0xE300000000000000;
      v32 = 7235949;
      goto LABEL_47;
    case 14:
      v1 = 0xE500000000000000;
      v32 = 0x7465736E75;
      goto LABEL_47;
    case 15:
      v1 = 0xE800000000000000;
      v32 = 0x6573696F4E776F6CLL;
LABEL_47:
      v87 = v30;
      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        sub_2529AA3A0((v33 > 1), v34 + 1, 1);
        v30 = v87;
      }

      ++v29;
      *(v30 + 2) = v34 + 1;
      v35 = &v30[16 * v34];
      *(v35 + 4) = v32;
      *(v35 + 5) = v1;
      if (v28 != v29)
      {
        goto LABEL_30;
      }

      break;
    default:
LABEL_128:
      v89 = v31;
      sub_252E37DF4();
      __break(1u);

      __break(1u);
      return result;
  }

LABEL_53:
  v87 = v30;

  sub_252AC841C(&v87);
  v85 = 0;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v83 = sub_2529508A0();
  v84 = v36;
  v37 = sub_252E36EA4();
  v39 = v38;

  MEMORY[0x2530AD570](v37, v39);

  v40 = [v86 cleanModes];
  v41 = sub_252E37264();

  v1 = *(v41 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v1)
  {
    v43 = (v41 + 32);
    do
    {
      v45 = *v43++;
      v44 = v45;
      if (v45 <= 0xF)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2529F7F9C(0, *(v42 + 2) + 1, 1, v42);
        }

        v47 = *(v42 + 2);
        v46 = *(v42 + 3);
        if (v47 >= v46 >> 1)
        {
          v42 = sub_2529F7F9C((v46 > 1), v47 + 1, 1, v42);
        }

        *(v42 + 2) = v47 + 1;
        *&v42[8 * v47 + 32] = v44;
      }

      --v1;
    }

    while (v1);
  }

  v48 = *(v42 + 2);
  if (v48)
  {
    v49 = 0;
    v50 = v42 + 32;
    v1 = (v4 + 56);
    v51 = MEMORY[0x277D84F90];
    while (v49 < *(v42 + 2))
    {
      if (*(v4 + 16))
      {
        v54 = *&v50[8 * v49];
        sub_252E37EC4();
        MEMORY[0x2530AE390](v54);
        v55 = sub_252E37F14();
        v56 = -1 << *(v4 + 32);
        v57 = v55 & ~v56;
        if ((*&v1[(v57 >> 3) & 0xFFFFFFFFFFFFFF8] >> v57))
        {
          v58 = ~v56;
          while (*(*(v4 + 48) + 8 * v57) != v54)
          {
            v57 = (v57 + 1) & v58;
            if (((*&v1[(v57 >> 3) & 0xFFFFFFFFFFFFFF8] >> v57) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          v59 = swift_isUniquelyReferenced_nonNull_native();
          v89 = v51;
          if ((v59 & 1) == 0)
          {
            sub_2529AA460(0, *(v51 + 16) + 1, 1);
            v51 = v89;
          }

          v53 = *(v51 + 16);
          v52 = *(v51 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_2529AA460((v52 > 1), v53 + 1, 1);
            v51 = v89;
          }

          *(v51 + 16) = v53 + 1;
          *(v51 + 8 * v53 + 32) = v54;
          v50 = v42 + 32;
        }
      }

LABEL_67:
      if (++v49 == v48)
      {

        goto LABEL_79;
      }
    }

    goto LABEL_123;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_79:
  v60 = *(v51 + 16);
  if (v60)
  {
    v87 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v60, 0);
    v61 = 0;
    v62 = v87;
    while (v61 < *(v51 + 16))
    {
      v31 = *(v51 + 8 * v61 + 32);
      v1 = 0xE400000000000000;
      v63 = 1869903201;
      switch(v31)
      {
        case 0:
          v1 = 0xE700000000000000;
          v63 = 0x6E776F6E6B6E75;
          break;
        case 1:
          v1 = 0xE600000000000000;
          v63 = 0x6D7575636176;
          break;
        case 2:
          v1 = 0xE300000000000000;
          v63 = 7368557;
          break;
        case 3:
          v1 = 0xE800000000000000;
          v63 = 0x6E6F697461636176;
          break;
        case 4:
          v63 = 0x61656C4370656564;
          v1 = 0xE90000000000006ELL;
          break;
        case 5:
          break;
        case 6:
          v1 = 0xE500000000000000;
          v63 = 0x6B63697571;
          break;
        case 7:
          v1 = 0xE500000000000000;
          v63 = 0x7465697571;
          break;
        case 8:
          v1 = 0xE300000000000000;
          v63 = 7889261;
          break;
        case 9:
          v63 = 1701736302;
          break;
        case 10:
          v1 = 0xE900000000000079;
          v63 = 0x6772656E45776F6CLL;
          break;
        case 11:
          v1 = 0xE500000000000000;
          v63 = 0x746867696ELL;
          break;
        case 12:
          v1 = 0xE300000000000000;
          v63 = 7954788;
          break;
        case 13:
          v1 = 0xE300000000000000;
          v63 = 7235949;
          break;
        case 14:
          v1 = 0xE500000000000000;
          v63 = 0x7465736E75;
          break;
        case 15:
          v1 = 0xE800000000000000;
          v63 = 0x6573696F4E776F6CLL;
          break;
        default:
          goto LABEL_128;
      }

      v87 = v62;
      v65 = *(v62 + 2);
      v64 = *(v62 + 3);
      if (v65 >= v64 >> 1)
      {
        sub_2529AA3A0((v64 > 1), v65 + 1, 1);
        v62 = v87;
      }

      ++v61;
      *(v62 + 2) = v65 + 1;
      v66 = &v62[16 * v65];
      *(v66 + 4) = v63;
      *(v66 + 5) = v1;
      if (v60 == v61)
      {

        goto LABEL_103;
      }
    }

    goto LABEL_124;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_103:
  v87 = v62;

  sub_252AC841C(&v87);

  v67 = v87;
  if (*(v87 + 16))
  {
    v87 = 58;
    v88 = 0xE100000000000000;
    v89 = v67;
    v68 = sub_252E36EA4();
    v70 = v69;

    MEMORY[0x2530AD570](v68, v70);

    MEMORY[0x2530AD570](v87, v88);
  }

  else
  {
  }

  v71 = [v86 targetMap];
  if (v71)
  {

    MEMORY[0x2530AD570](1885433183, 0xE400000000000000);
  }

  v72 = [v86 targetAreas];
  if (v72)
  {
    v73 = v72;
    type metadata accessor for HomeAttributeTargetArea();
    v74 = sub_252E37264();

    v75 = v74 >> 62 ? sub_252E378C4() : *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v75)
    {
      v76 = [v86 targetAreas];
      if (v76)
      {
        v77 = v76;
        v78 = sub_252E37264();

        if (v78 >> 62)
        {
          v79 = sub_252E378C4();
        }

        else
        {
          v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v79 < 2)
        {
          v80 = 0x616572615FLL;
          v81 = 0xE500000000000000;
        }

        else
        {
          v80 = 0x73616572615FLL;
          v81 = 0xE600000000000000;
        }

        MEMORY[0x2530AD570](v80, v81);
      }
    }
  }

  v87 = 1598248530;
  v88 = 0xE400000000000000;
  v15 = v90;
  v16 = v91;
LABEL_120:
  MEMORY[0x2530AD570](v15, v16);

  return v87;
}

uint64_t sub_252DB8BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545E78, &qword_252E601E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_252DB8C40(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v8)
  {
    v9 = v8;
    sub_252E32E14();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v12 = sub_252E32E44();
      v13 = [v11 initWithNSUUID_];

      [v9 setCommandId_];
      [v9 setCommandType_];
      (*(v5 + 8))(v7, v4);
      return v9;
    }

    sub_25293847C(v3, &unk_27F541F20, &qword_252E3C180);
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544E38);
  sub_252CC4050(0xD000000000000033, 0x8000000252E747E0, 0xD000000000000071, 0x8000000252E9BB90, 0xD000000000000019, 0x8000000252E9BEB0, 240);
  return 0;
}

id sub_252DB8EE4(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 userTask];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v10 = sub_252D6CA80(v9);
    v11 = *(v2 + 16);
    v12 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v13 = sub_252E36F04();
    v14 = [v12 initWithIdentifier:0 displayString:v13];

    v15 = v14;
    [v15 setDoubleValue_];
    [v15 setUnit_];
    [v15 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v16 = sub_252D6CC80(v15);
    swift_beginAccess();
    v10[4] = v16;
  }

  else
  {
    v10 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_27F544DA8);
  (*(v5 + 16))(v7, v17, v4);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_252E379F4();
  v30 = v27;
  v31 = v28;
  MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E9BF30);
  if (v10)
  {
    swift_beginAccess();
  }

  else
  {
    v18 = 0;
  }

  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  sub_252CC3D90(v30, v31, 0xD000000000000092, 0x8000000252E9BF80);

  (*(v5 + 8))(v7, v4);
  if (v10)
  {

    v20 = sub_252D6CB58();
  }

  else
  {
    v20 = 0;
  }

  v21 = [a1 filters];
  if (v21)
  {
    v22 = v21;
    type metadata accessor for HomeFilter();
    v23 = sub_252E37264();
  }

  else
  {
    v23 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v24 = sub_252D473EC(v20, v23);

  return v24;
}

uint64_t sub_252DB931C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultFanSpeedHandler();
  result = swift_allocObject();
  *(result + 16) = 0x4039000000000000;
  *a1 = result;
  return result;
}

BOOL sub_252DB9358(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 != 1 || (sub_252CCFCB8() & 1) != 0)
    {
      return 0;
    }

    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 11;
    }
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_252DB9404(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_252DB9428, 0, 0);
}

uint64_t sub_252DB9428(uint64_t a1)
{
  v2 = v1[9];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v21 = sub_252E338D4();
  v4 = __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v20 = sub_252E338F4();
  v6 = __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v8 = sub_252E33884();
  v9 = __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v11 = sub_252E338C4();
  v12 = __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);

  v13 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v14 = [v13 canEvaluatePolicy:2 error:0];

  LOBYTE(v13) = sub_252C4D664(5);
  v16 = v2[12];
  v15 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v21 & 1;
  *(v17 + 25) = v20 & 1;
  *(v17 + 26) = v8 & 1;
  *(v17 + 27) = v11 & 1;
  *(v17 + 28) = v14;
  *(v17 + 29) = v13 & 1;

  sub_252943B8C(sub_2529B10D4, v17, v16, v15);

  v18 = v1[1];

  return v18();
}

uint64_t sub_252DB96F4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*(a2 + v3) == 111)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252C2C2E4(0x16);
  }

  return v4 & 1;
}

uint64_t sub_252DB976C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252DB9404(a1, a2);
}

void *sub_252DB9818@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SecureAccessDeniedResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SceneResult(uint64_t a1)
{
  result = qword_27F545E90;
  if (!qword_27F545E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252DB9918()
{

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F30, &qword_252E60688);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F38, &qword_252E60690);
  v0 = sub_252E36F94();
  MEMORY[0x2530AD570](v0);

  return v2;
}

uint64_t sub_252DB9A0C(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F545E80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F20, &qword_252E60678);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F545E88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545F28, &qword_252E60680);
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252DB9B98()
{
}

uint64_t sub_252DB9BD8()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SceneOutcome(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SceneOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_252DB9CFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_252DB9D2C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_252DB9D68()
{
  result = qword_27F545EA0;
  if (!qword_27F545EA0)
  {
    result = swift_getWitnessTable(byte_252E60354, &type metadata for SceneOutcome, v0, v1);
    atomic_store(result, &qword_27F545EA0);
  }

  return result;
}

uint64_t sub_252DB9E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E604E0);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252DB9E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_252E60568, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252DB9EB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E604E0);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

unint64_t sub_252DB9F14()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 6))
  {
    v6 = 0x203A726F727265;
    v2 = &qword_27F544530;
    v3 = &unk_252E60660;
    goto LABEL_5;
  }

  if (v1 >> 6 == 1)
  {
    sub_252E379F4();

    v6 = 0xD000000000000013;
    v2 = &qword_27F541EE0;
    v3 = &qword_252E4D8A0;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    v4 = sub_252E36F94();
    MEMORY[0x2530AD570](v4);

    return v6;
  }

  return 0x73736563637573;
}

uint64_t sub_252DBA018(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "SceneOutcome.success";
  v4 = 0xD000000000000028;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000028;
  }

  if (v2 == 1)
  {
    v6 = "SceneOutcome.success";
  }

  else
  {
    v6 = "SceneOutcome.failure";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "rget_value";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v3 = "SceneOutcome.failure";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "rget_value";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DBA0EC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252DBA184(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252DBA208(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252DBA29C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252DBAEE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252DBA2CC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "SceneOutcome.success";
  v4 = 0xD000000000000028;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v3 = "SceneOutcome.failure";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "rget_value";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_252DBA324@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252DBA378()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544EE0);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C650, 0xD00000000000007FLL, 0x8000000252E9C0C0);
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      sub_252DBB00C();
      sub_252E36574();
      v5 = 0;
      v6 = 0xE000000000000000;
      sub_252E379F4();
      v7 = 0;
      v8 = 0xE000000000000000;
      MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E8C670);
      sub_252E36584();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544568, &qword_252E60670);
      sub_252E37AE4();
      __swift_destroy_boxed_opaque_existential_1(&v5);
      sub_252CC3D90(v7, v8, 0xD00000000000007FLL, 0x8000000252E9C0C0);
    }

    v9 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v5 = v1;
    LOBYTE(v6) = v2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    v7 = sub_252E37724();
    sub_252C468D0();
    sub_252DBAFB8();
    sub_252E366F4();
    sub_252DBB00C();
  }

  else
  {
    LOBYTE(v7) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252C45864();
    v5 = sub_252E37724();
    sub_252C468D0();
    sub_252DBAFB8();
    sub_252E366F4();
    sub_252DBB00C();
  }

  sub_252E36574();
}

void sub_252DBA758(uint64_t a3@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v9, v12);
  sub_252E364C4();
  v4 = sub_252E37B74();

  __swift_destroy_boxed_opaque_existential_1(&v9);
  if (v4 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    sub_252C467D8();
    sub_252E36594();
    if (v11)
    {
      v6 = 0;
    }

    else
    {
      v6 = v9;
    }

    if (v11)
    {
      v7 = -2;
    }

    else
    {
      v7 = v10 & 1 | 0x40;
    }

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252DBAF34();
    sub_252E36594();
    if (v9 == 24)
    {
      v6 = 0;
    }

    else
    {
      v6 = v9;
    }

    if (v9 == 24)
    {
      v7 = -2;
    }

    else
    {
      v7 = 0;
    }

LABEL_17:
    *a3 = v6;
    *(a3 + 8) = v7;
    return;
  }

  if (v4)
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544EE0);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E9C0A0, 0xD00000000000007FLL, 0x8000000252E9C0C0, 0xD000000000000010, 0x8000000252E6F060, 88);
    *a3 = 0;
    v5 = -2;
  }

  else
  {
    *a3 = 0;
    v5 = 0x80;
  }

  *(a3 + 8) = v5;
}

uint64_t sub_252DBA97C(uint64_t a1)
{
  sub_252DBB060();

  return sub_252E36514();
}

uint64_t sub_252DBA9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DBB060();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252DBAA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252DBB060();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252DBAA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DBB060();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252DBAAB8()
{
  result = qword_27F545EA8;
  if (!qword_27F545EA8)
  {
    result = swift_getWitnessTable(aQ5, &type metadata for SceneOutcome, v0, v1);
    atomic_store(result, &qword_27F545EA8);
  }

  return result;
}

unint64_t sub_252DBAB10()
{
  result = qword_27F545EB0;
  if (!qword_27F545EB0)
  {
    result = swift_getWitnessTable(byte_252E6032C, &type metadata for SceneOutcome, v0, v1);
    atomic_store(result, &qword_27F545EB0);
  }

  return result;
}

unint64_t sub_252DBAB68()
{
  result = qword_27F545EB8;
  if (!qword_27F545EB8)
  {
    result = swift_getWitnessTable(aU5, &type metadata for SceneOutcome, v0, v1);
    atomic_store(result, &qword_27F545EB8);
  }

  return result;
}

uint64_t sub_252DBAD5C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SceneResult(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_252DBADA0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v4 & 0xC0) == 0x40)
      {
        if (v2)
        {
          if (v4)
          {
            return 1;
          }
        }

        else if ((v4 & 1) == 0 && *a1 == v3)
        {
          return 1;
        }
      }
    }

    else
    {
      v5 = (v4 & 0xC0) == 0x80 && v3 == 0;
      if (v5 && v4 == 128)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4 >= 0x40)
  {
    return 0;
  }

  if (*a1 == 23)
  {
    return *a2 == 23;
  }

  if (*a2 == 23)
  {
    return 0;
  }

  v7 = HomeError.rawValue.getter();
  v9 = v8;
  if (v7 == HomeError.rawValue.getter() && v9 == v10)
  {

    return 1;
  }

  v11 = sub_252E37DB4();

  return (v11 & 1) != 0;
}

unint64_t sub_252DBAEE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252DBAF34()
{
  result = qword_27F544548;
  if (!qword_27F544548)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F544530, &unk_252E60660);
    v4[0] = sub_252C45864();
    result = swift_getWitnessTable(MEMORY[0x277CEB1A0], v3, v4);
    atomic_store(result, &qword_27F544548);
  }

  return result;
}

unint64_t sub_252DBAFB8()
{
  result = qword_27F545F08;
  if (!qword_27F545F08)
  {
    result = swift_getWitnessTable(byte_252E607BC, &type metadata for SceneOutcome.Identifiers, v0, v1);
    atomic_store(result, &qword_27F545F08);
  }

  return result;
}

unint64_t sub_252DBB00C()
{
  result = qword_27F545F10;
  if (!qword_27F545F10)
  {
    result = swift_getWitnessTable(byte_252E60784, &type metadata for SceneOutcome.TransientEntity, v0, v1);
    atomic_store(result, &qword_27F545F10);
  }

  return result;
}

unint64_t sub_252DBB060()
{
  result = qword_27F545F18;
  if (!qword_27F545F18)
  {
    result = swift_getWitnessTable(aU1, &type metadata for SceneOutcome, v0, v1);
    atomic_store(result, &qword_27F545F18);
  }

  return result;
}

unint64_t sub_252DBB0D8()
{
  result = qword_27F545F40;
  if (!qword_27F545F40)
  {
    result = swift_getWitnessTable(asc_252E606F4, &type metadata for SceneOutcome.Identifiers, v0, v1);
    atomic_store(result, &qword_27F545F40);
  }

  return result;
}

unint64_t sub_252DBB130()
{
  result = qword_27F545F48;
  if (!qword_27F545F48)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for SceneOutcome.TransientEntity, v0, v1);
    atomic_store(result, &qword_27F545F48);
  }

  return result;
}

uint64_t sub_252DBB18C(__int128 *a1)
{
  v2 = sub_252E36F84();
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = a1[1];
  v69 = *a1;
  v70 = v15;
  v71 = *(a1 + 4);
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v60 = v16;
  sub_252E36A84();
  v17 = *(v5 + 16);
  v62 = v12;
  v17(v10);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v17)(v61, v10, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = *(v5 + 32);
  v63 = v4;
  v20(v19 + v18, v10, v4);
  v21 = (v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_252ADD33C;
  v21[1] = 0;
  *&aBlock = 0xD000000000000027;
  *(&aBlock + 1) = 0x8000000252E80C30;
  MEMORY[0x2530AD570](v13, v14);
  v22 = *(&aBlock + 1);
  v59 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D30);

  v24 = sub_252E36AC4();
  v25 = sub_252E374C4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&aBlock = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_252BE2CE0(v59, v22, &aBlock);
    _os_log_impl(&dword_252917000, v24, v25, "Writting record to: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530AED00](v27, -1, -1);
    MEMORY[0x2530AED00](v26, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_252ADEECC();
  v28 = sub_252E329A4();
  v30 = v29;
  v57 = v19;

  sub_252E36F74();
  sub_252E36F54();
  v32 = v31;
  sub_25296464C(v28, v30);
  if (v32)
  {
    v33 = *(v5 + 8);
    v33(v61, v63);
    v34 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v35 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v44 = sub_252E35A14();
      v45 = qword_27F545F50;
      qword_27F545F50 = v44;
      v35 = v44;

      v34 = 0;
    }

    v46 = v34;
    v47 = sub_252E36F04();

    v48 = sub_252E36F04();

    v66 = sub_252DC0BEC;
    v67 = v57;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v65 = sub_2529E0210;
    *(&v65 + 1) = &block_descriptor_45;
    v49 = _Block_copy(&aBlock);

    [v35 setValue:v47 forKey:v48 completionHandler:v49];
    _Block_release(v49);

    v50 = v63;
  }

  else
  {

    v73[0] = *a1;
    v72 = *(a1 + 4);

    sub_252DBFEA4(v73, &aBlock);
    sub_252938414(&v72, &aBlock, &qword_27F540378, &unk_252E43ED0);

    sub_252DBFEA4(v73, &aBlock);
    sub_252938414(&v72, &aBlock, &qword_27F540378, &unk_252E43ED0);
    v36 = sub_252E36AC4();
    v37 = sub_252E374D4();
    sub_252A01B34(v73);

    sub_25293847C(&v72, &qword_27F540378, &unk_252E43ED0);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 136315138;
      v40 = a1[1];
      aBlock = *a1;
      v65 = v40;
      v66 = *(a1 + 4);
      v41 = sub_252E36F94();
      v43 = sub_252BE2CE0(v41, v42, &v68);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_252917000, v36, v37, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x2530AED00](v39, -1, -1);
      MEMORY[0x2530AED00](v38, -1, -1);
    }

    else
    {
      sub_252A01B34(v73);

      sub_25293847C(&v72, &qword_27F540378, &unk_252E43ED0);
    }

    v50 = v63;
    sub_2529318DC();
    v52 = swift_allocError();
    *v53 = 13;
    v54 = sub_252E375C4();
    v55 = v61;
    sub_252E36A74(v54, &dword_252917000, v60, "WriteRecord", 11, 2, v61, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252ADD33C(v52);

    v33 = *(v5 + 8);
    v33(v55, v50);
  }

  return (v33)(v62, v50);
}

uint64_t sub_252DBBCA0(__int128 *a1)
{
  v2 = sub_252E36F84();
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = a1[1];
  v69 = *a1;
  v70 = v15;
  v71 = *(a1 + 4);
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v60 = v16;
  sub_252E36A84();
  v17 = *(v5 + 16);
  v62 = v12;
  v17(v10);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v17)(v61, v10, v4);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = *(v5 + 32);
  v63 = v4;
  v20(v19 + v18, v10, v4);
  v21 = (v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_252ADD33C;
  v21[1] = 0;
  *&aBlock = 0xD000000000000023;
  *(&aBlock + 1) = 0x8000000252E81160;
  MEMORY[0x2530AD570](v13, v14);
  v22 = *(&aBlock + 1);
  v59 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D30);

  v24 = sub_252E36AC4();
  v25 = sub_252E374C4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&aBlock = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_252BE2CE0(v59, v22, &aBlock);
    _os_log_impl(&dword_252917000, v24, v25, "Writting record to: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530AED00](v27, -1, -1);
    MEMORY[0x2530AED00](v26, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_252CB0724();
  v28 = sub_252E329A4();
  v30 = v29;
  v57 = v19;

  sub_252E36F74();
  sub_252E36F54();
  v32 = v31;
  sub_25296464C(v28, v30);
  if (v32)
  {
    v33 = *(v5 + 8);
    v33(v61, v63);
    v34 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v35 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v44 = sub_252E35A14();
      v45 = qword_27F545F50;
      qword_27F545F50 = v44;
      v35 = v44;

      v34 = 0;
    }

    v46 = v34;
    v47 = sub_252E36F04();

    v48 = sub_252E36F04();

    v66 = sub_252DC0BEC;
    v67 = v57;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v65 = sub_2529E0210;
    *(&v65 + 1) = &block_descriptor_38;
    v49 = _Block_copy(&aBlock);

    [v35 setValue:v47 forKey:v48 completionHandler:v49];
    _Block_release(v49);

    v50 = v63;
  }

  else
  {

    v73[0] = *a1;
    v72 = *(a1 + 4);

    sub_252DBFEA4(v73, &aBlock);
    sub_252938414(&v72, &aBlock, &qword_27F540480, &qword_252E3C910);

    sub_252DBFEA4(v73, &aBlock);
    sub_252938414(&v72, &aBlock, &qword_27F540480, &qword_252E3C910);
    v36 = sub_252E36AC4();
    v37 = sub_252E374D4();
    sub_252A01B34(v73);

    sub_25293847C(&v72, &qword_27F540480, &qword_252E3C910);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 136315138;
      v40 = a1[1];
      aBlock = *a1;
      v65 = v40;
      v66 = *(a1 + 4);
      v41 = sub_252E36F94();
      v43 = sub_252BE2CE0(v41, v42, &v68);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_252917000, v36, v37, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x2530AED00](v39, -1, -1);
      MEMORY[0x2530AED00](v38, -1, -1);
    }

    else
    {
      sub_252A01B34(v73);

      sub_25293847C(&v72, &qword_27F540480, &qword_252E3C910);
    }

    v50 = v63;
    sub_2529318DC();
    v52 = swift_allocError();
    *v53 = 13;
    v54 = sub_252E375C4();
    v55 = v61;
    sub_252E36A74(v54, &dword_252917000, v60, "WriteRecord", 11, 2, v61, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252ADD33C(v52);

    v33 = *(v5 + 8);
    v33(v55, v50);
  }

  return (v33)(v62, v50);
}

uint64_t sub_252DBC7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v11 = qword_27F544F78;
  v12 = sub_252E375C4();
  sub_252E36A74(v12, &dword_252917000, v11, a5, a6, 2, a2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return a3(a1);
}

uint64_t sub_252DBC8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36F84();
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = swift_allocObject();
  v64 = a2;
  v65 = a3;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v77 = a1;
  v18 = qword_27F53F5F0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v63 = v19;
  sub_252E36A84();
  v20 = *(v9 + 16);
  v68 = v16;
  v20(v14, v16, v8);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v66, v14, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v14, v8);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_252DBE730;
  v23[1] = v17;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  aBlock = 0xD00000000000002ELL;
  v71 = 0x8000000252E80C90;
  v67 = v17;

  MEMORY[0x2530AD570](v24, v25);

  v26 = v71;
  v62 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544D30);

  v28 = sub_252E36AC4();
  v29 = sub_252E374C4();

  v30 = os_log_type_enabled(v28, v29);
  v69 = v8;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_252BE2CE0(v62, v26, &aBlock);
    _os_log_impl(&dword_252917000, v28, v29, "Writting record to: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x2530AED00](v32, -1, -1);
    MEMORY[0x2530AED00](v31, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  type metadata accessor for IntentSelectionCacheKeysRecord();
  sub_252DBE7E0(&qword_27F543190, type metadata accessor for IntentSelectionCacheKeysRecord, byte_252E4A928);
  v33 = sub_252E329A4();
  v35 = v34;
  v61 = v22;

  sub_252E36F74();
  sub_252E36F54();
  v37 = v36;
  sub_25296464C(v33, v35);
  if (v37)
  {
    v38 = *(v9 + 8);
    v38(v66, v69);
    v39 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v40 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v48 = sub_252E35A14();
      v49 = qword_27F545F50;
      qword_27F545F50 = v48;
      v40 = v48;

      v39 = 0;
    }

    v50 = v39;
    v51 = sub_252E36F04();

    v52 = sub_252E36F04();

    v74 = sub_252DC0BEC;
    v75 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v72 = sub_2529E0210;
    v73 = &block_descriptor_11_0;
    v53 = _Block_copy(&aBlock);

    [v40 setValue:v51 forKey:v52 completionHandler:v53];
    _Block_release(v53);

    v54 = v69;
  }

  else
  {

    v41 = sub_252E36AC4();
    v42 = sub_252E374D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v76 = a1;
      v45 = sub_252E36F94();
      v47 = sub_252BE2CE0(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_252917000, v41, v42, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x2530AED00](v44, -1, -1);
      MEMORY[0x2530AED00](v43, -1, -1);
    }

    else
    {
    }

    v56 = v66;
    sub_2529318DC();
    v57 = swift_allocError();
    *v58 = 13;
    v59 = sub_252E375C4();
    sub_252E36A74(v59, &dword_252917000, v63, "WriteRecord", 11, 2, v56, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252AFE770(v57, v64, v65);

    v38 = *(v9 + 8);
    v54 = v69;
    v38(v56, v69);
  }

  v38(v68, v54);
}

uint64_t sub_252DBD2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36F84();
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = swift_allocObject();
  v64 = a2;
  v65 = a3;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v77 = a1;
  v18 = qword_27F53F5F0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v63 = v19;
  sub_252E36A84();
  v20 = *(v9 + 16);
  v68 = v16;
  v20(v14, v16, v8);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v66, v14, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v14, v8);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_252DBE7D8;
  v23[1] = v17;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  aBlock = 0xD000000000000054;
  v71 = 0x8000000252E80CC0;
  v67 = v17;

  MEMORY[0x2530AD570](v24, v25);

  v26 = v71;
  v62 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544D30);

  v28 = sub_252E36AC4();
  v29 = sub_252E374C4();

  v30 = os_log_type_enabled(v28, v29);
  v69 = v8;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_252BE2CE0(v62, v26, &aBlock);
    _os_log_impl(&dword_252917000, v28, v29, "Writting record to: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x2530AED00](v32, -1, -1);
    MEMORY[0x2530AED00](v31, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  type metadata accessor for CacheInvalidationSignalRecord();
  sub_252DBE7E0(&qword_27F543180, type metadata accessor for CacheInvalidationSignalRecord, byte_252E4A8BC);
  v33 = sub_252E329A4();
  v35 = v34;
  v61 = v22;

  sub_252E36F74();
  sub_252E36F54();
  v37 = v36;
  sub_25296464C(v33, v35);
  if (v37)
  {
    v38 = *(v9 + 8);
    v38(v66, v69);
    v39 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v40 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v48 = sub_252E35A14();
      v49 = qword_27F545F50;
      qword_27F545F50 = v48;
      v40 = v48;

      v39 = 0;
    }

    v50 = v39;
    v51 = sub_252E36F04();

    v52 = sub_252E36F04();

    v74 = sub_252DC0BEC;
    v75 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v72 = sub_2529E0210;
    v73 = &block_descriptor_21;
    v53 = _Block_copy(&aBlock);

    [v40 setValue:v51 forKey:v52 completionHandler:v53];
    _Block_release(v53);

    v54 = v69;
  }

  else
  {

    v41 = sub_252E36AC4();
    v42 = sub_252E374D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v76 = a1;
      v45 = sub_252E36F94();
      v47 = sub_252BE2CE0(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_252917000, v41, v42, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x2530AED00](v44, -1, -1);
      MEMORY[0x2530AED00](v43, -1, -1);
    }

    else
    {
    }

    v56 = v66;
    sub_2529318DC();
    v57 = swift_allocError();
    *v58 = 13;
    v59 = sub_252E375C4();
    sub_252E36A74(v59, &dword_252917000, v63, "WriteRecord", 11, 2, v56, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252AFE9F8(v57, v64, v65);

    v38 = *(v9 + 8);
    v54 = v69;
    v38(v56, v69);
  }

  v38(v68, v54);
}

uint64_t sub_252DBDD08(uint64_t a1, uint64_t (*a2)(uint64_t a1))
{
  v4 = sub_252E36F84();
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v76 = a1;
  v15 = qword_27F53F5F0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v64 = v16;
  sub_252E36A84();
  v17 = *(v7 + 16);
  v66 = v14;
  v17(v12, v14, v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v65, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = *(v7 + 32);
  v68 = v6;
  v20(v19 + v18, v12, v6);
  v21 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_252DBE70C;
  v21[1] = a2;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  aBlock = 0xD000000000000029;
  v70 = 0x8000000252E80C60;

  MEMORY[0x2530AD570](v22, v23);

  v24 = v70;
  v63 = aBlock;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D30);

  v26 = sub_252E36AC4();
  v27 = sub_252E374C4();

  v28 = os_log_type_enabled(v26, v27);
  v67 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_252BE2CE0(v63, v24, &aBlock);
    _os_log_impl(&dword_252917000, v26, v27, "Writting record to: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2530AED00](v30, -1, -1);
    MEMORY[0x2530AED00](v29, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  type metadata accessor for IntentSelectionCacheEntry();
  sub_252DBE7E0(&qword_27F5431A0, type metadata accessor for IntentSelectionCacheEntry, byte_252E4AA34);
  v31 = sub_252E329A4();
  v33 = v32;
  v61 = v19;

  sub_252E36F74();
  sub_252E36F54();
  v35 = v34;
  sub_25296464C(v31, v33);
  if (v35)
  {
    v36 = *(v7 + 8);
    v36(v65, v68);
    v37 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v38 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v46 = sub_252E35A14();
      v47 = qword_27F545F50;
      qword_27F545F50 = v46;
      v38 = v46;

      v37 = 0;
    }

    v48 = v37;
    v49 = sub_252E36F04();

    v50 = sub_252E36F04();

    v73 = sub_252DBE714;
    v74 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_2529E0210;
    v72 = &block_descriptor_26;
    v51 = _Block_copy(&aBlock);

    [v38 setValue:v49 forKey:v50 completionHandler:v51];
    _Block_release(v51);

    v52 = v68;
    v53 = v66;
  }

  else
  {

    v39 = sub_252E36AC4();
    v40 = sub_252E374D4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      v75 = a1;
      v43 = sub_252E36F94();
      v45 = sub_252BE2CE0(v43, v44, &aBlock);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_252917000, v39, v40, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x2530AED00](v42, -1, -1);
      MEMORY[0x2530AED00](v41, -1, -1);
    }

    else
    {
    }

    v55 = v67;
    v52 = v68;
    v56 = v65;
    v53 = v66;
    sub_2529318DC();
    v57 = swift_allocError();
    *v58 = 13;
    v59 = sub_252E375C4();
    sub_252E36A74(v59, &dword_252917000, v64, "WriteRecord", 11, 2, v56, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252AFE3DC(v57, v55);

    v36 = *(v7 + 8);
    v36(v56, v52);
  }

  v36(v53, v52);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252DBE738(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_252DBC7C4(a1, v1 + v4, *v5, *(v5 + 8), "WriteRecord", 11);
}

uint64_t sub_252DBE7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252DBE828(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_252E36F84();
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36AB4();
  v78 = *(v8 - 8);
  v9 = v78[8];
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v16 = swift_allocObject();
  v70 = a2;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + 3);
  v72 = *(a1 + 2);
  v73 = v17;
  v18 = a1[7];
  v97 = a1[6];
  v98 = v18;
  v99 = *(a1 + 16);
  v19 = a1[1];
  v21 = a1[3];
  v20 = a1[4];
  v93 = a1[2];
  v94 = v21;
  v22 = a1[5];
  v95 = v20;
  v96 = v22;
  v91 = *a1;
  v92 = v19;
  v23 = qword_27F53F5F0;
  v71 = a3;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v69 = v24;
  sub_252E36A84();
  v25 = v78;
  v26 = v15;
  v27 = v78[2];
  v75 = v26;
  v27(v13);
  (v27)(v77, v13, v8);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v25[4];
  v76 = v8;
  v30(v29 + v28, v13, v8);
  v31 = (v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_252DBFF60;
  v31[1] = v16;
  *&v82 = 0xD000000000000026;
  *(&v82 + 1) = 0x8000000252E80E10;
  v74 = v16;

  v32 = v73;

  MEMORY[0x2530AD570](v72, v32);

  v33 = v82;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D30);

  v35 = sub_252E36AC4();
  v36 = sub_252E374C4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v82 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_252BE2CE0(v33, *(&v33 + 1), &v82);
    _os_log_impl(&dword_252917000, v35, v36, "Writting record to: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530AED00](v38, -1, -1);
    MEMORY[0x2530AED00](v37, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_252B5200C();
  v39 = sub_252E329A4();
  v41 = v40;

  sub_252E36F74();
  sub_252E36F54();
  v43 = v42;
  sub_25296464C(v39, v41);
  if (v43)
  {
    v73 = v29;
    v44 = v78[1];
    v44(v77, v76);
    v45 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v46 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v54 = sub_252E35A14();
      v55 = qword_27F545F50;
      qword_27F545F50 = v54;
      v46 = v54;

      v45 = 0;
    }

    v56 = v45;
    v57 = sub_252E36F04();

    v58 = sub_252E36F04();

    *&v84 = sub_252DC0BEC;
    *(&v84 + 1) = v73;
    *&v82 = MEMORY[0x277D85DD0];
    *(&v82 + 1) = 1107296256;
    *&v83 = sub_2529E0210;
    *(&v83 + 1) = &block_descriptor_65;
    v59 = _Block_copy(&v82);

    [v46 setValue:v57 forKey:v58 completionHandler:v59];
    _Block_release(v59);

    v61 = v75;
    v60 = v76;
  }

  else
  {

    v88 = v97;
    v89 = v98;
    v90 = v99;
    v84 = v93;
    v85 = v94;
    v86 = v95;
    v87 = v96;
    v82 = v91;
    v83 = v92;
    sub_252B5ADE8(&v82, v80);
    sub_252B5ADE8(&v82, v80);
    v47 = sub_252E36AC4();
    v48 = sub_252E374D4();
    sub_252B5AE20(&v82);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79 = v50;
      *v49 = 136315138;
      v80[6] = v88;
      v80[7] = v89;
      v81 = v90;
      v80[2] = v84;
      v80[3] = v85;
      v80[4] = v86;
      v80[5] = v87;
      v80[0] = v82;
      v80[1] = v83;
      v51 = sub_252E36F94();
      v53 = sub_252BE2CE0(v51, v52, &v79);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_252917000, v47, v48, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x2530AED00](v50, -1, -1);
      MEMORY[0x2530AED00](v49, -1, -1);
    }

    else
    {
      sub_252B5AE20(&v82);
    }

    v61 = v75;
    v64 = v77;
    v63 = v78;
    sub_2529318DC();
    v65 = swift_allocError();
    *v66 = 13;
    v67 = sub_252E375C4();
    sub_252E36A74(v67, &dword_252917000, v69, "WriteRecord", 11, 2, v64, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252B5263C(v65, v70, v71);

    v44 = v63[1];
    v60 = v76;
    v44(v64, v76);
  }

  v44(v61, v60);
}

uint64_t sub_252DBF330(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v83 = a5;
  v84 = a3;
  v8 = sub_252E36F84();
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36AB4();
  v86 = *(v10 - 8);
  v11 = v86[8];
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - v16;
  v18 = swift_allocObject();
  v77 = a2;
  *(v18 + 16) = a2;
  v19 = v83;
  *(v18 + 24) = v84;
  v20 = *(a4 + 112);
  *(v18 + 128) = *(a4 + 96);
  *(v18 + 144) = v20;
  v21 = *(a4 + 128);
  v22 = *(a4 + 48);
  *(v18 + 64) = *(a4 + 32);
  *(v18 + 80) = v22;
  v23 = *(a4 + 80);
  *(v18 + 96) = *(a4 + 64);
  *(v18 + 112) = v23;
  v24 = *(a4 + 16);
  *(v18 + 32) = *a4;
  *(v18 + 48) = v24;
  *(v18 + 160) = v21;
  *(v18 + 168) = v19;
  v25 = *(a1 + 3);
  v81 = *(a1 + 2);
  v79 = v25;
  v26 = a1[7];
  v105 = a1[6];
  v106 = v26;
  v107 = *(a1 + 16);
  v27 = a1[1];
  v29 = a1[3];
  v28 = a1[4];
  v101 = a1[2];
  v102 = v29;
  v30 = a1[5];
  v103 = v28;
  v104 = v30;
  v99 = *a1;
  v100 = v27;

  v78 = a4;
  sub_252B5ADE8(a4, &v90);
  v31 = qword_27F53F5F0;
  v76 = v19;
  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v75 = v32;
  sub_252E36A84();
  v33 = v86;
  v34 = v17;
  v35 = v86[2];
  v82 = v34;
  v35(v15);
  (v35)(v85, v15, v10);
  v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v33[4];
  v83 = v10;
  v38(v37 + v36, v15, v10);
  v80 = v37;
  v39 = (v37 + ((v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v39 = sub_252DBFE94;
  v39[1] = v18;
  *&v90 = 0xD000000000000026;
  *(&v90 + 1) = 0x8000000252E80E10;

  v40 = v79;

  MEMORY[0x2530AD570](v81, v40);

  v41 = v90;
  v81 = v18;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v42 = sub_252E36AD4();
  __swift_project_value_buffer(v42, qword_27F544D30);

  v43 = sub_252E36AC4();
  v44 = sub_252E374C4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v90 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_252BE2CE0(v41, *(&v41 + 1), &v90);
    _os_log_impl(&dword_252917000, v43, v44, "Writting record to: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x2530AED00](v46, -1, -1);
    MEMORY[0x2530AED00](v45, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_252B5200C();
  v47 = sub_252E329A4();
  v49 = v48;

  sub_252E36F74();
  sub_252E36F54();
  v51 = v50;
  sub_25296464C(v47, v49);
  if (v51)
  {
    v52 = v86[1];
    v52(v85, v83);
    v53 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v54 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v62 = sub_252E35A14();
      v63 = qword_27F545F50;
      qword_27F545F50 = v62;
      v54 = v62;

      v53 = 0;
    }

    v64 = v53;
    v65 = sub_252E36F04();

    v66 = sub_252E36F04();

    *&v92 = sub_252DC0BEC;
    *(&v92 + 1) = v80;
    *&v90 = MEMORY[0x277D85DD0];
    *(&v90 + 1) = 1107296256;
    *&v91 = sub_2529E0210;
    *(&v91 + 1) = &block_descriptor_31_1;
    v67 = _Block_copy(&v90);

    [v54 setValue:v65 forKey:v66 completionHandler:v67];
    _Block_release(v67);

    v68 = v83;
  }

  else
  {

    v96 = v105;
    v97 = v106;
    v98 = v107;
    v92 = v101;
    v93 = v102;
    v94 = v103;
    v95 = v104;
    v90 = v99;
    v91 = v100;
    sub_252B5ADE8(&v90, v88);
    sub_252B5ADE8(&v90, v88);
    v55 = sub_252E36AC4();
    v56 = sub_252E374D4();
    sub_252B5AE20(&v90);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v87 = v58;
      *v57 = 136315138;
      v88[6] = v96;
      v88[7] = v97;
      v89 = v98;
      v88[2] = v92;
      v88[3] = v93;
      v88[4] = v94;
      v88[5] = v95;
      v88[0] = v90;
      v88[1] = v91;
      v59 = sub_252E36F94();
      v61 = sub_252BE2CE0(v59, v60, &v87);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_252917000, v55, v56, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x2530AED00](v58, -1, -1);
      MEMORY[0x2530AED00](v57, -1, -1);
    }

    else
    {
      sub_252B5AE20(&v90);
    }

    v69 = v85;
    sub_2529318DC();
    v70 = swift_allocError();
    *v71 = 13;
    v72 = sub_252E375C4();
    sub_252E36A74(v72, &dword_252917000, v75, "WriteRecord", 11, 2, v69, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252B5377C(v70, v77, v84, v78, v76);

    v52 = v86[1];
    v68 = v83;
    v52(v69, v83);
  }

  v52(v82, v68);
}

uint64_t sub_252DBFFC0(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, id))
{
  v76 = a8;
  v71 = a7;
  v70 = a6;
  v80 = a5;
  v82 = a4;
  v10 = sub_252E36F84();
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v22 = *(a1 + 3);
  v77 = *(a1 + 2);
  v23 = a1[1];
  v88 = *a1;
  v89 = v23;
  v73 = a1;
  v90 = *(a1 + 4);
  v24 = qword_27F53F5F0;
  v75 = a2;
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  v74 = v25;
  sub_252E36A84();
  v26 = *(v13 + 16);
  v81 = v20;
  v26(v18, v20, v12);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26(v78, v18, v12);
  v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v28 = swift_allocObject();
  v79 = v13;
  v29 = *(v13 + 32);
  v82 = v12;
  v29(v28 + v27, v18, v12);
  v30 = (v28 + ((v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v80;
  v30[1] = v21;
  *&aBlock = 0xD00000000000002ALL;
  *(&aBlock + 1) = 0x8000000252E80BC0;

  MEMORY[0x2530AD570](v77, v22);
  v31 = aBlock;
  v80 = v21;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544D30);

  v33 = sub_252E36AC4();
  v34 = sub_252E374C4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_252BE2CE0(v31, *(&v31 + 1), &aBlock);
    _os_log_impl(&dword_252917000, v33, v34, "Writting record to: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x2530AED00](v36, -1, -1);
    MEMORY[0x2530AED00](v35, -1, -1);
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_252B5C1A4();
  v37 = sub_252E329A4();
  v39 = v38;

  sub_252E36F74();
  sub_252E36F54();
  v41 = v40;
  sub_25296464C(v37, v39);
  if (v41)
  {
    v77 = v28;
    v42 = *(v79 + 8);
    v43 = v82;
    v42(v78, v82);
    v44 = qword_27F545F50;
    if (qword_27F545F50)
    {
      v45 = qword_27F545F50;
    }

    else
    {
      sub_252E35A24();
      v55 = sub_252E35A14();
      v56 = qword_27F545F50;
      qword_27F545F50 = v55;
      v45 = v55;

      v44 = 0;
    }

    v57 = v44;
    v58 = sub_252E36F04();

    v59 = sub_252E36F04();

    v85 = v70;
    v86 = v77;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v84 = sub_2529E0210;
    *(&v84 + 1) = v71;
    v60 = _Block_copy(&aBlock);

    [v45 setValue:v58 forKey:v59 completionHandler:v60];
    _Block_release(v60);

    v61 = v81;
  }

  else
  {

    v46 = v73;
    v92[0] = *v73;
    v91 = *(v73 + 4);

    sub_252DBFEA4(v92, &aBlock);
    sub_252938414(&v91, &aBlock, &qword_27F540480, &qword_252E3C910);

    sub_252DBFEA4(v92, &aBlock);
    sub_252938414(&v91, &aBlock, &qword_27F540480, &qword_252E3C910);
    v47 = sub_252E36AC4();
    v48 = sub_252E374D4();
    sub_252A01B34(v92);

    sub_25293847C(&v91, &qword_27F540480, &qword_252E3C910);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87 = v50;
      *v49 = 136315138;
      v51 = v46[1];
      aBlock = *v46;
      v84 = v51;
      v85 = *(v46 + 4);
      v52 = sub_252E36F94();
      v54 = sub_252BE2CE0(v52, v53, &v87);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_252917000, v47, v48, "CoreKnowledgeStore unable to convert records data to String. Record: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x2530AED00](v50, -1, -1);
      MEMORY[0x2530AED00](v49, -1, -1);
    }

    else
    {
      sub_252A01B34(v92);

      sub_25293847C(&v91, &qword_27F540480, &qword_252E3C910);
    }

    v63 = v79;
    v64 = v78;
    sub_2529318DC();
    v65 = swift_allocError();
    *v66 = 13;
    v67 = sub_252E375C4();
    sub_252E36A74(v67, &dword_252917000, v74, "WriteRecord", 11, 2, v64, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v76(v65, v75);

    v42 = *(v63 + 8);
    v68 = v64;
    v43 = v82;
    v42(v68, v82);
    v61 = v81;
  }

  v42(v61, v43);
}

uint64_t sub_252DC0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[143] = v3;
  v4[142] = a3;
  v4[141] = a2;
  v4[140] = a1;
  v5 = sub_252E34014();
  v4[144] = v5;
  v4[145] = *(v5 - 8);
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DC0CC8, 0, 0);
}

uint64_t sub_252DC0CC8()
{
  v33 = v0;
  v1 = v0 + 138;
  v2 = MEMORY[0x277D84F90];
  v31 = v0[142];
  if (v31)
  {
    v3 = sub_252C31A30();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *v1 = v2;
  if (v3 >> 62)
  {
LABEL_30:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_7:
  v36 = v6;
  v0[148] = v6;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v10 = sub_252DA124C(0);

    ++v5;
    if (v10)
    {
      MEMORY[0x2530AD700]();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = *v1;
      v5 = v9;
      goto LABEL_7;
    }
  }

  v11 = v0[143];
  v12 = v0[142];
  v13 = v0[141];

  memcpy(v0 + 2, (v11 + 112), 0x1F8uLL);
  memcpy(__dst, (v11 + 112), 0x1F8uLL);
  v14 = v13;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v15 = v12;
  v16 = sub_252953488(v13, __dst, v12);
  v0[149] = v16;

  v17 = swift_allocObject();
  v0[150] = v17;
  v18 = v36;
  v17[2] = v11;
  v17[3] = v18;
  v17[4] = v16;

  if (v31)
  {
    v19 = v0[143];
    v20 = *(v19 + 48);
    v21 = v15;
    v22 = *__swift_project_boxed_opaque_existential_1((v19 + 24), v20);

    v23 = swift_task_alloc();
    v0[151] = v23;
    *v23 = v0;
    v23[1] = sub_252DC1134;

    return sub_252C0ECBC(0, v22, v18, v16);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v25 = v0[143];
    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v27 = v25[12];
    v28 = v25[13];
    __swift_project_boxed_opaque_existential_1(v25 + 9, v27);
    sub_252AD7CC4();
    v29 = swift_task_alloc();
    v0[157] = v29;
    *v29 = v0;
    v29[1] = sub_252DC14B4;
    v30 = v0[147];
    v35 = v28;

    return sub_252BDB88C((v0 + 128), &unk_252E608A8, v17, v30, 0, 0, 0, v27);
  }
}

uint64_t sub_252DC1134(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[152] = a1;
  v3[153] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252DC1420, 0, 0);
  }

  else
  {
    v5 = v3[142];
    v6 = swift_task_alloc();
    v3[154] = v6;
    *v6 = v4;
    v6[1] = sub_252DC1308;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252DC1308(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1240) = a1;
  *(v3 + 1248) = v1;

  if (v1)
  {
    v4 = sub_252DC1780;
  }

  else
  {
    v4 = sub_252DC1624;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252DC1420()
{
  v1 = *(v0 + 1136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DC14B4()
{
  v2 = *(*v1 + 1176);
  v3 = *(*v1 + 1160);
  v4 = *(*v1 + 1152);
  *(*v1 + 1264) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252DC1CEC;
  }

  else
  {
    v5 = sub_252DC1BB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DC1624()
{
  v1 = v0 + 139;
  v2 = v0[155];
  v3 = v0[152];
  v0[139] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[143];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[159] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[160] = v11;
  *v11 = v0;
  v11[1] = sub_252DC1820;
  v12 = v0[146];

  return sub_252BDB88C((v0 + 133), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252DC1780()
{
  v1 = *(v0 + 1136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DC1820()
{
  v2 = *(*v1 + 1168);
  v3 = *(*v1 + 1160);
  v4 = *(*v1 + 1152);
  *(*v1 + 1288) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252DC1AFC;
  }

  else
  {

    v5 = sub_252DC19A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DC19A0()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1128);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1240);
  v9 = *(v0 + 1216);
  v10 = *(v0 + 1136);
  (*(v4 + 112))(v7, v0 + 1064, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252DC1AFC()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252DC1BB8()
{
  v1 = v0[143];
  v2 = v0[141];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 128, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252DC1CEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252DC1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252DC1D9C, 0, 0);
}

uint64_t sub_252DC1D9C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252BCD050;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C0ECBC(0, v1, v3, v4);
}

uint64_t sub_252DC1EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252DC0BF0(a1, a2, a3);
}

void *sub_252DC1F5C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252DC1FC0(void *a1, uint64_t a2)
{
  v4 = [a1 userTask];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  if ([v4 taskType] == 4)
  {
  }

  else
  {
    v6 = [v5 taskType];

    if (v6 != 5)
    {
      return 0;
    }
  }

  v7 = [a1 userTask];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 attribute];

    if (v9 == 20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v10 = [a1 userTask];
  if (!v10)
  {
    sub_252C515AC();
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 attribute];

  if (v12 != 47)
  {
LABEL_13:
    v13 = [a1 userTask];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 attribute];

      if (v15 == 21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v19 = [a1 userTask];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 attribute];

      result = 0;
      if (v21 != 67 || !a2)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_24:
    sub_252C515AC();
    return 0;
  }

LABEL_15:
  if (!a2)
  {
    return 0;
  }

LABEL_16:
  v16 = sub_252C31A30();
  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v17 != 0;
}

uint64_t sub_252DC2194()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252DC1D78(v2, v3, v4);
}

uint64_t sub_252DC223C(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x61746C6564;
  if (a2 > 1u)
  {
    v5 = 0xE500000000000000;
    if (a2 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a1 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a1)
  {
    v3 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {

    v10 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();

    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_252DC2380(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x6E776F6E6B6E75;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a1 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a1)
  {
    v3 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC24E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0xEB00000000656D6FLL;
  v4 = 0x685F657669727261;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x657369726E7573;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7465736E7573;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (a2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a1 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a1)
  {
    v4 = 0x6F685F657661656CLL;
    v3 = 0xEA0000000000656DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2644(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x746E6563726570;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (a2)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a1 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a1)
  {
    v3 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC27D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E6563726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (v3)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a2 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a2)
  {
    v2 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D6FLL;
  v3 = 0x685F657669727261;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x657369726E7573;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7465736E7573;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a2 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6F685F657661656CLL;
    v2 = 0xEA0000000000656DLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a2 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a2)
  {
    v2 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252DC2C14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x61746C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    v5 = 0xE500000000000000;
    if (a1 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a2 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a2)
  {
    v2 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {

    v10 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();

    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_252DC2D54(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0xEB00000000656D6FLL;
  v4 = 0x685F657669727261;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x657369726E7573;
    }

    else
    {
      v6 = 0xE600000000000000;
      v5 = 0x7465736E7573;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (a2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a1 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a1)
  {
    v4 = 0x6F685F657661656CLL;
    v3 = 0xEA0000000000656DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC2EA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x746E6563726570;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (a2)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a1 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a1)
  {
    v3 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC3018(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x6E776F6E6B6E75;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a1 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a1)
  {
    v3 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252DC3168(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = 0x61746C6564;
  if (a2 > 1u)
  {
    v5 = 0xE500000000000000;
    if (a2 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a1 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a1)
  {
    v3 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t LimitSemantic.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65756C615678616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    v1 = 0x65756C61566E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

HomeAutomationInternal::LimitSemantic_optional __swiftcall LimitSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DC3390()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252DC3458(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252DC350C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252DC35DC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x65756C615678616DLL;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xEA0000000000796CLL;
  }

  if (*v1)
  {
    v3 = 0x65756C61566E696DLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_252DC3748(uint64_t a1, uint64_t a2)
{
  v4 = sub_252DC3A84();
  v5 = sub_252DC3AD8();
  v6 = sub_252DC3B2C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal13LimitSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (*a2 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (*a2)
  {
    v2 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (*a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252DC3908()
{
  result = qword_27F545F58;
  if (!qword_27F545F58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F545F58);
  }

  return result;
}

unint64_t sub_252DC3960()
{
  result = qword_27F545F60;
  if (!qword_27F545F60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F545F60);
  }

  return result;
}

unint64_t sub_252DC39B8()
{
  result = qword_27F545F68;
  if (!qword_27F545F68)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545F70, &qword_252E609C0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F545F68);
  }

  return result;
}

unint64_t sub_252DC3A20()
{
  result = qword_27F545F78;
  if (!qword_27F545F78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F545F78);
  }

  return result;
}

unint64_t sub_252DC3A84()
{
  result = qword_27F545F80;
  if (!qword_27F545F80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F545F80);
  }

  return result;
}

unint64_t sub_252DC3AD8()
{
  result = qword_27F545F88;
  if (!qword_27F545F88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F545F88);
  }

  return result;
}

unint64_t sub_252DC3B2C()
{
  result = qword_27F545F90;
  if (!qword_27F545F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F545F90);
  }

  return result;
}

uint64_t sub_252DC3B94()
{
  result = sub_252C759A0(&unk_2864A75E0);
  qword_27F575C78 = result;
  return result;
}

uint64_t sub_252DC3BC0(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252DC4B00(a1);
}

uint64_t sub_252DC3C68(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 136);
  v4 = *(a2 + 144);
  v5 = *(a2 + 168);
  LODWORD(v6) = *(a2 + 208);
  v90 = *(a2 + 152);
  memcpy(v91, (a2 + 209), sizeof(v91));
  v7 = sub_252A10F24();
  v8 = sub_252DF9098(v7);

  if (qword_27F53F520 != -1)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544E08);
    sub_252E379F4();

    v10 = sub_252C65520(v8);
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E77910, 0xD00000000000008FLL, 0x8000000252E9C1E0);

    v89 = a1;
    if (v6 == 9 || (sub_252A0D524(v6, 0) & 1) == 0)
    {
      goto LABEL_35;
    }

    if (*(v90 + 16) <= 1uLL && *(v5 + 16) <= 1uLL && *(v4 + 16) <= 1uLL && *(v3 + 16) < 2uLL)
    {
      if (a1 >> 62)
      {
        goto LABEL_151;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v71 = 0;
        v72 = a1 & 0xC000000000000001;
        v73 = a1 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v72)
          {
            MEMORY[0x2530ADF00](v71, a1);
            v12 = __OFADD__(v71++, 1);
            if (v12)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v71 >= *(v73 + 16))
            {
              goto LABEL_150;
            }

            v12 = __OFADD__(v71++, 1);
            if (v12)
            {
LABEL_134:
              __break(1u);
LABEL_135:

              goto LABEL_144;
            }
          }

          v74 = *(v8 + 16);
          if (v74)
          {
            break;
          }

LABEL_130:

          a1 = v89;
          if (v71 == i)
          {
            goto LABEL_71;
          }
        }

        a1 = 0;
        while (a1 < *(v8 + 16))
        {
          v75 = *(v8 + 32 + 8 * a1);
          v76 = sub_252CD9C58();
          v77 = *(v76 + 16);
          v78 = 32;
          if (v75 == 5)
          {
            do
            {
              if (!v77)
              {
                goto LABEL_115;
              }

              v79 = *(v76 + v78);
              v78 += 8;
              --v77;
            }

            while (v79 != 3);

            v80 = sub_252CD9C58();
            v81 = *(v80 + 16);
            v82 = 32;
            do
            {
              if (!v81)
              {
                goto LABEL_115;
              }

              v83 = *(v80 + v82);
              v82 += 8;
              --v81;
            }

            while (v83 != 4);

            v84 = sub_252CD9C58();
            v85 = *(v84 + 16);
            v86 = 32;
            while (v85)
            {
              v87 = *(v84 + v86);
              v86 += 8;
              --v85;
              if (v87 == 2)
              {
                goto LABEL_135;
              }
            }
          }

          else
          {
            while (v77)
            {
              v88 = *(v76 + v78);
              v78 += 8;
              --v77;
              if (v88 == v75)
              {
                goto LABEL_135;
              }
            }
          }

LABEL_115:
          ++a1;

          if (a1 == v74)
          {
            goto LABEL_130;
          }
        }

        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        ;
      }

      goto LABEL_71;
    }

    if (a1 >> 62)
    {
      v6 = sub_252E378C4();
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    v11 = 0;
    *&v90 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = v8 + 32;
LABEL_11:
    if (v90)
    {
      break;
    }

    if (v11 >= *(v5 + 16))
    {
      goto LABEL_139;
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_34;
    }

LABEL_14:
    v4 = *(v8 + 16);
    if (!v4)
    {
LABEL_72:

      return 1;
    }

    v13 = 0;
    while (v13 < *(v8 + 16))
    {
      v3 = *(a1 + 8 * v13);
      v14 = sub_252CD9C58();
      v15 = *(v14 + 16);
      v16 = 32;
      if (v3 == 5)
      {
        while (v15)
        {
          v17 = *(v14 + v16);
          v16 += 8;
          --v15;
          if (v17 == 3)
          {

            v18 = sub_252CD9C58();
            v19 = *(v18 + 16);
            v20 = 32;
            while (v19)
            {
              v21 = *(v18 + v20);
              v20 += 8;
              --v19;
              if (v21 == 4)
              {

                v22 = sub_252CD9C58();
                v23 = *(v22 + 16);
                v24 = 32;
                while (v23)
                {
                  v25 = *(v22 + v24);
                  v24 += 8;
                  --v23;
                  if (v25 == 2)
                  {
                    goto LABEL_30;
                  }
                }

                goto LABEL_16;
              }
            }

            break;
          }
        }
      }

      else
      {
        while (v15)
        {
          v26 = *(v14 + v16);
          v16 += 8;
          --v15;
          if (v26 == v3)
          {
LABEL_30:

            if (v11 != v6)
            {
              goto LABEL_11;
            }

            goto LABEL_144;
          }
        }
      }

LABEL_16:
      ++v13;

      if (v13 == v4)
      {
        goto LABEL_72;
      }
    }

LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    swift_once();
  }

  MEMORY[0x2530ADF00](v11, v89);
  v12 = __OFADD__(v11++, 1);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  if (*(v90 + 16) > 1uLL || *(v5 + 16) > 1uLL || *(v4 + 16) > 1uLL || *(v3 + 16) >= 2uLL)
  {
    if (a1 >> 62)
    {
      v6 = sub_252E378C4();
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_144;
      }
    }

    v27 = 0;
    *&v90 = v89 & 0xC000000000000001;
    v5 = v89 & 0xFFFFFFFFFFFFFF8;
    a1 = v8 + 32;
    while (1)
    {
      if (v90)
      {
        MEMORY[0x2530ADF00](v27, v89);
        v12 = __OFADD__(v27++, 1);
        if (v12)
        {
LABEL_69:
          __break(1u);
LABEL_70:

          goto LABEL_71;
        }
      }

      else
      {
        if (v27 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v12 = __OFADD__(v27++, 1);
        if (v12)
        {
          goto LABEL_69;
        }
      }

      v28 = *(v8 + 16);
      if (!v28)
      {
        goto LABEL_70;
      }

      v4 = 0;
      while (1)
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_137;
        }

        v3 = *(a1 + 8 * v4);
        v29 = sub_252CD95D8();
        v30 = *(v29 + 16);
        v31 = 32;
        if (v3 != 5)
        {
          break;
        }

        while (v30)
        {
          v32 = *(v29 + v31);
          v31 += 8;
          --v30;
          if (v32 == 3)
          {

            v33 = sub_252CD95D8();
            v34 = *(v33 + 16);
            v35 = 32;
            while (v34)
            {
              v36 = *(v33 + v35);
              v35 += 8;
              --v34;
              if (v36 == 4)
              {

                v37 = sub_252CD95D8();
                v38 = *(v37 + 16);
                v39 = 32;
                while (v38)
                {
                  v40 = *(v37 + v39);
                  v39 += 8;
                  --v38;
                  if (v40 == 2)
                  {
                    goto LABEL_42;
                  }
                }

                goto LABEL_48;
              }
            }

            break;
          }
        }

LABEL_48:
        ++v4;

        if (v4 == v28)
        {
          goto LABEL_70;
        }
      }

      do
      {
        if (!v30)
        {

          v42 = sub_252CD995C();
          v43 = *(v42 + 16);
          v44 = 32;
          while (v43)
          {
            v45 = *(v42 + v44);
            v44 += 8;
            --v43;
            if (v45 == v3)
            {
              goto LABEL_42;
            }
          }

          goto LABEL_48;
        }

        v41 = *(v29 + v31);
        v31 += 8;
        --v30;
      }

      while (v41 != v3);
LABEL_42:

      if (v27 == v6)
      {
        goto LABEL_144;
      }
    }
  }

  if (!(a1 >> 62))
  {
    v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_76;
    }

LABEL_71:

    return 1;
  }

  while (2)
  {
    v47 = sub_252E378C4();
    if (!v47)
    {
      goto LABEL_71;
    }

LABEL_76:
    v48 = 0;
    v49 = a1 & 0xC000000000000001;
    v50 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_77:
    if (v49)
    {
      MEMORY[0x2530ADF00](v48, a1);
      v12 = __OFADD__(v48++, 1);
      if (v12)
      {
        break;
      }

      goto LABEL_80;
    }

    if (v48 >= *(v50 + 16))
    {
      goto LABEL_146;
    }

    v12 = __OFADD__(v48++, 1);
    if (!v12)
    {
LABEL_80:
      a1 = *(v8 + 16);
      if (a1)
      {
        v51 = 0;
        while (v51 < *(v8 + 16))
        {
          v52 = *(v8 + 32 + 8 * v51);
          v53 = sub_252CD95D8();
          v54 = *(v53 + 16);
          v55 = 32;
          if (v52 == 5)
          {
            while (v54)
            {
              v56 = *(v53 + v55);
              v55 += 8;
              --v54;
              if (v56 == 3)
              {

                v57 = sub_252CD95D8();
                v58 = *(v57 + 16);
                v59 = 32;
                while (v58)
                {
                  v60 = *(v57 + v59);
                  v59 += 8;
                  --v58;
                  if (v60 == 4)
                  {

                    v61 = sub_252CD95D8();
                    v62 = *(v61 + 16);
                    v63 = 32;
                    while (v62)
                    {
                      v64 = *(v61 + v63);
                      v63 += 8;
                      --v62;
                      if (v64 == 2)
                      {
                        goto LABEL_106;
                      }
                    }

                    goto LABEL_82;
                  }
                }

                break;
              }
            }
          }

          else
          {
            while (v54)
            {
              v65 = *(v53 + v55);
              v55 += 8;
              --v54;
              if (v65 == v52)
              {
                goto LABEL_106;
              }
            }

            v66 = sub_252CD995C();
            v67 = *(v66 + 16);
            v68 = 32;
            while (v67)
            {
              v69 = *(v66 + v68);
              v68 += 8;
              --v67;
              if (v69 == v52)
              {
                goto LABEL_106;
              }
            }
          }

LABEL_82:
          ++v51;

          if (v51 == a1)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_146:
        __break(1u);
        continue;
      }

LABEL_101:

      a1 = v89;
      if (v48 == v47)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

    break;
  }

  __break(1u);
LABEL_106:

LABEL_144:

  return 0;
}

uint64_t sub_252DC4538(__int128 *a1)
{
  v2 = a1[7];
  v75 = a1[6];
  v76 = v2;
  v3 = *(a1 + 17);
  v77 = *(a1 + 16);
  v4 = a1[3];
  v71 = a1[2];
  v72 = v4;
  v5 = a1[5];
  v73 = a1[4];
  v74 = v5;
  v6 = a1[1];
  v69 = *a1;
  v70 = v6;
  v7 = *(a1 + 18);
  v8 = *(a1 + 19);
  memcpy(__dst, a1 + 10, sizeof(__dst));
  v9 = a1[7];
  v61 = a1[6];
  v62 = v9;
  v10 = *(a1 + 16);
  v11 = a1[3];
  v57 = a1[2];
  v58 = v11;
  v12 = a1[5];
  v59 = a1[4];
  v60 = v12;
  v13 = a1[1];
  v55 = *a1;
  v56 = v13;
  v63 = v10;
  v64 = v3;
  v65 = v7;
  v66 = v8;
  memcpy(v67, a1 + 10, sizeof(v67));
  v14 = *(sub_252A10F24() + 2);

  if (!v14)
  {
    return v14 & 1;
  }

  LOBYTE(v14) = 0;
  v15 = *(v3 + 16);
  if (!(*(v8 + 16) | v15) || v15 > 1)
  {
    return v14 & 1;
  }

  v16 = a1[7];
  v61 = a1[6];
  v62 = v16;
  v17 = *(a1 + 16);
  v18 = a1[3];
  v57 = a1[2];
  v58 = v18;
  v19 = a1[5];
  v59 = a1[4];
  v60 = v19;
  v20 = a1[1];
  v55 = *a1;
  v56 = v20;
  v63 = v17;
  v64 = v3;
  v52 = v7;
  v65 = v7;
  v66 = v8;
  memcpy(v67, a1 + 10, sizeof(v67));
  v21 = sub_252BAC7E4();
  v22 = type metadata accessor for HomeStore(0);
  v23 = static HomeStore.shared.getter(v22);
  v24 = HomeStore.services(matching:supporting:)(v21, 0);
  LOBYTE(v26) = v25;

  if (v26)
  {
    goto LABEL_50;
  }

  v27 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
    goto LABEL_49;
  }

  v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_50:
    sub_252929F10(v24, v26 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544E08);
    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E9C2A0, 0xD00000000000008FLL, 0x8000000252E9C1E0);
    goto LABEL_53;
  }

LABEL_7:
  v29 = 0;
  v53 = v28;
  v54 = v24 & 0xC000000000000001;
  do
  {
    if (v54)
    {
      v32 = MEMORY[0x2530ADF00](v29, v24);
      v33 = __OFADD__(v29++, 1);
      if (v33)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_48;
      }

      v32 = *(v24 + 32 + 8 * v29);

      v33 = __OFADD__(v29++, 1);
      if (v33)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v28 = sub_252E378C4();
        if (!v28)
        {
          goto LABEL_50;
        }

        goto LABEL_7;
      }
    }

    v34 = v27;
    if (qword_27F53F758 != -1)
    {
      swift_once();
    }

    v35 = qword_27F575C78;
    v36 = [*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v37 = sub_252E36F34();
    v39 = v38;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v26 = off_27F546230;
    if (*(off_27F546230 + 2) && (v40 = sub_252A44A10(v37, v39), (v41 & 1) != 0))
    {
      v42 = *(*(v26 + 7) + 8 * v40);
    }

    else
    {
      v42 = 0;
    }

    if (*(v35 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v42);
      v26 = &v55;
      v43 = sub_252E37F14();
      v44 = -1 << *(v35 + 32);
      v45 = v43 & ~v44;
      if ((*(v35 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (*(*(v35 + 48) + 8 * v45) != v42)
        {
          v45 = (v45 + 1) & v46;
          if (((*(v35 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

LABEL_30:
        sub_252929F10(v24, 0);
LABEL_53:
        LOBYTE(v14) = 0;
        return v14 & 1;
      }
    }

LABEL_8:

    v31 = v53;
    v27 = v34;
  }

  while (v29 != v53);
  v47 = 0;
  while (1)
  {
    if (v31 == v47)
    {
      v61 = v75;
      v62 = v76;
      v57 = v71;
      v58 = v72;
      v59 = v73;
      v60 = v74;
      v55 = v69;
      v56 = v70;
      v63 = v77;
      v64 = v3;
      v65 = v52;
      v66 = v8;
      memcpy(v67, __dst, sizeof(v67));
      LOBYTE(v14) = sub_252DC3C68(v24, &v55);
      sub_252929F10(v24, 0);
      return v14 & 1;
    }

    if (!v54)
    {
      break;
    }

    result = MEMORY[0x2530ADF00](v47, v24);
    v48 = result;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_55;
    }

LABEL_36:
    v14 = [*(v48 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
    if (!v14)
    {
      sub_252929F10(v24, 0);

      return v14 & 1;
    }

    type metadata accessor for Accessory(0);
    swift_allocObject();
    v49 = *(sub_252D4CE7C(v14) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

    if (v49 >> 62)
    {
      v50 = sub_252E378C4();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v47;
    v31 = v53;
    if (v50 <= 1)
    {
      goto LABEL_30;
    }
  }

  if (v47 >= *(v27 + 16))
  {
    goto LABEL_56;
  }

  v48 = *(v24 + 8 * v47 + 32);

  if (!__OFADD__(v47, 1))
  {
    goto LABEL_36;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_252DC4B00(void *__src)
{
  *(v1 + 520) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252DC4B74, 0, 0);
}

char *sub_252DC4B74()
{
  v45 = v0;
  memcpy(__dst, *(v0 + 520), 0x1F8uLL);
  v1 = sub_252BAC7E4();
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = HomeStore.accessories(matching:supporting:)(v1, 0);
  LOBYTE(v6) = v5;

  if (v6)
  {
    goto LABEL_36;
  }

  if (v4 >> 62)
  {
LABEL_35:
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_36:
    sub_252929F10(v4, v6 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544E08);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E9C1C0, 0xD00000000000008FLL, 0x8000000252E9C1E0);
    v18 = MEMORY[0x277D84F90];
LABEL_39:
    v40 = *(v0 + 8);

    return v40(v18);
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_36;
  }

LABEL_4:
  v43 = v0;
  v8 = 0;
  __dst[0] = MEMORY[0x277D84F90];
  v9 = v4 & 0xC000000000000001;
  v10 = (v4 + 32);
  while (!v9)
  {
    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v11 = *(v4 + 8 * v8 + 32);

    v0 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    v12 = (*(*v11 + 272))();

    v6 = __dst;
    sub_25297AEDC(v12);
    ++v8;
    if (v0 == v7)
    {
      goto LABEL_13;
    }
  }

  v11 = MEMORY[0x2530ADF00](v8, v4);
  v0 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v13 = sub_252C759A0(__dst[0]);

  if (*(v13 + 16) == 1)
  {
    sub_252929F10(v4, 0);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000029;
    __dst[1] = 0x8000000252E9C270;
    sub_25292A344();
    v15 = sub_252E373B4();
    v17 = v16;

    MEMORY[0x2530AD570](v15, v17);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008FLL, 0x8000000252E9C1E0);

    v18 = MEMORY[0x277D84F90];
    v0 = v43;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_252E3C290;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  memcpy(__dst, (v43 + 16), 0x1F8uLL);
  v19 = sub_252E1EBE8(__dst);

  if (!(v4 >> 62))
  {
    v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_27:
    sub_252929F10(v4, 0);
    v22 = MEMORY[0x277D84F90];
LABEL_33:
    v19[23] = v22;

    v38 = MEMORY[0x277D84F90];
    v19[21] = MEMORY[0x277D84F90];

    v19[19] = v38;

    v19[20] = v38;

    v19[40] = v38;

    v19[38] = v38;

    v19[41] = v38;

    sub_252E1E4F8(v42 + 32);

    v18 = v42;
    v0 = v43;
    goto LABEL_39;
  }

  v20 = sub_252E378C4();
  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_19:
  __dst[0] = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v41 = v19;
    v22 = __dst[0];
    if (v9)
    {
      v23 = 0;
      do
      {
        v24 = MEMORY[0x2530ADF00](v23, v4);
        v26 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v25 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
        __dst[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2529AA3A0((v27 > 1), v28 + 1, 1);
          v22 = __dst[0];
        }

        ++v23;
        *(v22 + 16) = v28 + 1;
        v29 = v22 + 16 * v28;
        *(v29 + 32) = v26;
        *(v29 + 40) = v25;
      }

      while (v20 != v23);
    }

    else
    {
      v30 = *(__dst[0] + 16);
      v31 = 16 * v30;
      do
      {
        v32 = (*v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v33 = *v32;
        v34 = v32[1];
        __dst[0] = v22;
        v35 = *(v22 + 24);
        v36 = v30 + 1;

        if (v30 >= v35 >> 1)
        {
          sub_2529AA3A0((v35 > 1), v36, 1);
          v22 = __dst[0];
        }

        *(v22 + 16) = v36;
        v37 = v22 + v31;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
        v31 += 16;
        ++v10;
        ++v30;
        --v20;
      }

      while (v20);
    }

    sub_252929F10(v4, 0);
    v19 = v41;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_252DC51D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C70);
  sub_252CC3D90(0xD00000000000004ALL, 0x8000000252E9C2C0, 0xD000000000000074, 0x8000000252E6D740);
  v11 = *(a5 + 8);

  return v11(a1, a2, a3, a4, a5);
}

uint64_t sub_252DC52D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);

  v10 = *(a5 + 8);

  return v10(a1, a2, a3, a4, a5);
}

BOOL sub_252DC534C()
{
  type metadata accessor for AsyncDefaultHandleDelegate();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for AsyncPollingHandleDelegate();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for AsyncScenesHandleDelegate();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_252DC53B0()
{
  result = sub_2529FC1F0(&unk_2864A1A48);
  qword_27F575C80 = result;
  return result;
}

uint64_t static FeatureFlagProvider.isFeatureEnabled(feature:)(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v4[4] = sub_252D46D38();
  LOBYTE(v4[0]) = v1;
  v2 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

const char *FeatureFlagProvider.SiriHomeFeatures.feature.getter()
{
  result = "remembers";
  switch(*v0)
  {
    case 1:
      result = "trial";
      break;
    case 2:
      result = "conversationalAreaButtonRFUseCases";
      break;
    case 3:
      result = "heaterCoolerForShowersAndSinks";
      break;
    case 4:
      result = "intentSelectionCache";
      break;
    case 5:
      result = "siriHelp";
      break;
    case 6:
      result = "conversationalContinuers";
      break;
    case 7:
      result = "asyncScenes";
      break;
    case 8:
      result = "asyncOutletSwitch";
      break;
    case 9:
      result = "asyncLights";
      break;
    case 0xA:
      result = "usoEntitySpan";
      break;
    case 0xB:
      result = "flashlightReformation";
      break;
    case 0xC:
      result = "flashlightReformationi18n";
      break;
    case 0xD:
      result = "appIntents";
      break;
    case 0xE:
      result = "rf2Snippets";
      break;
    case 0xF:
      result = "serverFlowByPass";
      break;
    case 0x10:
      result = "robotVacuumCleaners";
      break;
    case 0x11:
      result = "srrv2";
      break;
    case 0x12:
      result = "correction";
      break;
    case 0x13:
      result = "restrictedGuest";
      break;
    case 0x14:
      result = "protectedApps";
      break;
    case 0x15:
      result = "snippetSupression";
      break;
    case 0x16:
      result = "eagerSnippets";
      break;
    case 0x17:
      result = "rvcDisabledOnHomePod";
      break;
    case 0x18:
      result = "rvcDisabledOnWatch";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeatureFlagProvider.isSiriSuggestionsEnabled.getter()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 5;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 6;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_252DC56E0(uint64_t a1)
{
  v1 = a1;
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (sub_252E338F4())
  {
    v5[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v5[4] = sub_252D46D38();
    LOBYTE(v5[0]) = v1;
    v3 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

uint64_t FeatureFlagProvider.isRobotVacuumCleanersEnabled.getter()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 13;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 16;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_252DC58B4(char a1)
{
  v4[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v4[4] = sub_252D46D38();
  LOBYTE(v4[0]) = a1;
  v2 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t FeatureFlagProvider.SiriHomeFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252DC59F8()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 5;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 6;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return v2 & 1;
}

uint64_t sub_252DC5B24()
{
  v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v0 = sub_252D46D38();
  v6 = v0;
  LOBYTE(v4[0]) = 13;
  v1 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v1)
  {
    v5 = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    v6 = v0;
    LOBYTE(v4[0]) = 16;
    v2 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_252DC5C0C(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v6[4] = sub_252D46D38();
  LOBYTE(v6[0]) = a3;
  v4 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & 1;
}

uint64_t sub_252DC5C68(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
  v4[4] = sub_252D46D38();
  LOBYTE(v4[0]) = v1;
  v2 = sub_252E34214();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

BOOL _s22HomeAutomationInternal19FeatureFlagProviderV02isD7Enabled11featureName6domainSbSS_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() shared];
  v9 = sub_252E36F04();
  v10 = sub_252E36F04();
  v11 = [v8 stateForFeature:v9 domain:v10];

  if (v11)
  {
    v12 = [v11 value];
    v13 = v12 == 1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);

    v15 = sub_252E36AC4();
    v16 = sub_252E374C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_252BE2CE0(a3, a4, &v25);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_252BE2CE0(a1, a2, &v25);
      *(v17 + 22) = 2080;
      if (v12 == 1)
      {
        v19 = 0x64656C62616E65;
      }

      else
      {
        v19 = 0x64656C6261736964;
      }

      if (v12 == 1)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = sub_252BE2CE0(v19, v20, &v25);

      *(v17 + 24) = v21;
      _os_log_impl(&dword_252917000, v15, v16, "Feature flag %s/%s : %s", v17, 0x20u);
      swift_arrayDestroy();
      v22 = v18;
      v13 = v12 == 1;
      MEMORY[0x2530AED00](v22, -1, -1);
      MEMORY[0x2530AED00](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);
    sub_252E379F4();

    MEMORY[0x2530AD570](a3, a4);
    MEMORY[0x2530AD570](47, 0xE100000000000000);
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0x6173696420736920, 0xEC00000064656C62);
    sub_252CC3D90(0x3A65727574616546, 0xE900000000000020, 0xD00000000000007ALL, 0x8000000252E9C4F0);

    return 0;
  }

  return v13;
}

unint64_t sub_252DC6064()
{
  result = qword_27F545F98;
  if (!qword_27F545F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureFlagProvider.SiriHomeFeatures, &type metadata for FeatureFlagProvider.SiriHomeFeatures, v0, v1);
    atomic_store(result, &qword_27F545F98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlagProvider.SiriHomeFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlagProvider.SiriHomeFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DeltaQuantifierSemantic.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6777186;
  }
}

HomeAutomationInternal::DeltaQuantifierSemantic_optional __swiftcall DeltaQuantifierSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252DC62D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6777186;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x6C6C616D73;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6777186;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}