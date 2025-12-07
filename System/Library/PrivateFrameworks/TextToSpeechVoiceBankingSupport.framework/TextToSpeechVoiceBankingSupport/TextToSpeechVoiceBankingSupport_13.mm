uint64_t sub_233265534(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_23328E54C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_23328E54C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_23326575C(unint64_t a1, char *a2, char *a3, char *a4)
{
  result = sub_23328CF0C();
  v71 = *(result - 8);
  v9 = v71[9];
  if (!v9)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v10 = result;
  if (&a2[-a1] == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_73;
  }

  v11 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_74;
  }

  v12 = &a2[-a1] / v9;
  v77 = a1;
  v76 = a4;
  if (v12 >= v11 / v9)
  {
    v14 = v11 / v9 * v9;
    if (a4 < a2 || &a2[v14] <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    if (v14 < 1)
    {
      v36 = &a4[v14];
    }

    else
    {
      v34 = -v9;
      v63 = (v71 + 1);
      v64 = (v71 + 2);
      v35 = &a4[v14];
      v36 = &a4[v14];
      v70 = v10;
      v72 = -v9;
      v73 = a4;
      do
      {
        v61 = v36;
        v37 = &a2[v34];
        v74 = &a2[v34];
        v65 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v77 = a2;
            v75 = v61;
            goto LABEL_71;
          }

          v39 = a3;
          v62 = v36;
          v68 = &v60;
          v69 = v35;
          v40 = v71[8];
          v41 = MEMORY[0x28223BE20](result);
          v42 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
          v44 = *(v43 + 16);
          v66 = v45;
          v46 = v44(v42, v41);
          v67 = &v60;
          v47 = MEMORY[0x28223BE20](v46);
          (v44)(v42, v37, v10, v47);
          v48 = sub_23328CEAC();
          v50 = v49;
          v52 = v48 == sub_23328CEAC() && v50 == v51;
          v53 = v52 ? 0 : sub_23328E54C();

          v54 = &a3[v72];
          v55 = *v63;
          v56 = v70;
          (*v63)(v42, v70);
          result = v55(v42, v56);
          if (v53)
          {
            break;
          }

          v57 = v66;
          v36 = v66;
          v58 = v73;
          a3 = v54;
          if (v39 < v69 || v54 >= v69)
          {
            v10 = v70;
            result = swift_arrayInitWithTakeFrontToBack();
            v37 = v74;
          }

          else
          {
            v37 = v74;
            v10 = v70;
            if (v39 != v69)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v36;
          v38 = v57 > v58;
          a2 = v65;
          if (!v38)
          {
            goto LABEL_69;
          }
        }

        v59 = v73;
        a3 = v54;
        if (v39 < v65 || v54 >= v65)
        {
          a2 = v74;
          v10 = v70;
          result = swift_arrayInitWithTakeFrontToBack();
          v36 = v62;
        }

        else
        {
          a2 = v74;
          v10 = v70;
          v36 = v62;
          if (v39 != v65)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        v35 = v69;
        v34 = v72;
      }

      while (v69 > v59);
    }

LABEL_69:
    v77 = a2;
    v75 = v36;
  }

  else
  {
    v13 = v12 * v9;
    if (a4 < a1 || a1 + v13 <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v69 = &a4[v13];
    v75 = &a4[v13];
    if (v13 >= 1 && a2 < a3)
    {
      v16 = v71[2];
      v65 = v71[8];
      v66 = v16;
      v71 += 2;
      v64 = (v71 - 1);
      v67 = v9;
      v68 = a3;
      do
      {
        v72 = &v60;
        v17 = v65;
        v18 = MEMORY[0x28223BE20](result);
        v19 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = a2;
        v20 = v66;
        v21 = (v66)(v19, a2, v10, v18);
        v22 = MEMORY[0x28223BE20](v21);
        v73 = a4;
        (v20)(v19, a4, v10, v22);
        v23 = sub_23328CEAC();
        v24 = v10;
        v26 = v25;
        if (v23 == sub_23328CEAC() && v26 == v27)
        {

          v33 = *v64;
          (*v64)(v19, v24);
          result = (v33)(v19, v24);
          v10 = v24;
        }

        else
        {
          v29 = sub_23328E54C();

          v30 = *v64;
          (*v64)(v19, v24);
          result = (v30)(v19, v24);
          v10 = v24;
          if (v29)
          {
            v31 = v67;
            v32 = v68;
            a2 = v67 + v74;
            if (a1 < v74 || a1 >= a2)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v74)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            a4 = v73;
            goto LABEL_39;
          }
        }

        a2 = v74;
        v31 = v67;
        v32 = v68;
        a4 = v67 + v73;
        if (a1 < v73 || a1 >= a4)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v73)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v76 = a4;
          goto LABEL_39;
        }

        v76 = a4;
LABEL_39:
        a1 += v31;
        v77 = a1;
      }

      while (a4 < v69 && a2 < v32);
    }
  }

LABEL_71:
  sub_233265E30(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_233265E30(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23328CF0C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_233265F14(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23326606C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v28 = 0;
LABEL_25:
    *a1 = v4;
    a1[1] = v5;
    a1[2] = ~v6;
    a1[3] = v28;
    a1[4] = v8;
    return;
  }

  if (!a3)
  {
    v28 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v39 = a1;
    v40 = a4 + 56;
    v38 = v6;
    v11 = (63 - v6) >> 6;
    v12 = sub_23328CF0C();
    a1 = 0;
    v44 = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    v45 = a3;
    v46 = v14;
    v42 = v13 + 16;
    v43 = v13;
    v41 = v13 + 32;
    v15 = 1;
    while (1)
    {
      v50 = v10;
      MEMORY[0x28223BE20](a1);
      v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23.n128_f64[0] = MEMORY[0x28223BE20](v18);
      v24 = &v37 - v21;
      if (!v8)
      {
        break;
      }

      v47 = v20;
      v48 = v15;
      v49 = v19;
LABEL_15:
      v27 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v28 = v22;
      v29 = v4;
      v30 = *(v4 + 48);
      v31 = v43;
      v32 = v44;
      v33 = *(v43 + 72);
      (*(v43 + 16))(&v37 - v21, v30 + v33 * (v27 | (v22 << 6)), v44, v23);
      v34 = *(v31 + 32);
      v34(v17, v24, v32);
      v35 = v50;
      v34(v50, v17, v32);
      if (v48 == v45)
      {
        v6 = v38;
        a1 = v39;
        v4 = v29;
        v5 = v40;
        goto LABEL_25;
      }

      v10 = &v35[v33];
      a1 = v48;
      v15 = v48 + 1;
      v4 = v29;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v25 = v22;
    v5 = v40;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v11)
      {
        break;
      }

      v8 = *(v40 + 8 * v26);
      ++v25;
      if (v8)
      {
        v47 = v20;
        v48 = v15;
        v49 = v19;
        v22 = v26;
        goto LABEL_15;
      }
    }

    if (v11 <= v22 + 1)
    {
      v36 = v22 + 1;
    }

    else
    {
      v36 = v11;
    }

    v28 = v36 - 1;
    v8 = 0;
    v6 = v38;
    a1 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_233266384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3908, &qword_2332A0A50);
    v3 = sub_23328E35C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_233144260(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_233266484()
{
  result = qword_27DDE38D8;
  if (!qword_27DDE38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38D8);
  }

  return result;
}

unint64_t sub_2332664DC()
{
  result = qword_27DDE38E0;
  if (!qword_27DDE38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38E0);
  }

  return result;
}

unint64_t sub_233266534()
{
  result = qword_27DDE38E8;
  if (!qword_27DDE38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38E8);
  }

  return result;
}

unint64_t sub_23326658C()
{
  result = qword_27DDE38F0;
  if (!qword_27DDE38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38F0);
  }

  return result;
}

unint64_t sub_2332665E4()
{
  result = qword_27DDE38F8;
  if (!qword_27DDE38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE38F8);
  }

  return result;
}

void type metadata accessor for SFSpeechRecognitionTaskHint()
{
  if (!qword_27DDE3900)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DDE3900);
    }
  }
}

unint64_t sub_2332666C0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x44496563696F76;
      break;
    case 2:
      result = 0x44496C65646F6DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0x6E6F697461657263;
      break;
    case 6:
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6E6F6973726576;
      break;
    case 10:
    case 12:
      result = 0x676E696E69617274;
      break;
    case 11:
      result = 0x737574617473;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x6F6C6E776F447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_233266874@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23326A914(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2332668A8(uint64_t a1)
{
  v2 = sub_233266DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332668E4(uint64_t a1)
{
  v2 = sub_233266DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233266920(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3910, &qword_2332A0A58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233266DEC();
  sub_23328E69C();
  LOBYTE(v12) = 0;
  sub_23328E48C();
  if (!v2)
  {
    v9 = _s14ListModelsJsonVMa(0);
    LOBYTE(v12) = 1;
    sub_23328CE8C();
    sub_233267C00(&qword_27DDE1F80, MEMORY[0x28220C078], MEMORY[0x28220C0C0]);
    sub_23328E4DC();
    LOBYTE(v12) = 2;
    sub_23328E4DC();
    LOBYTE(v12) = 3;
    sub_23328E48C();
    LOBYTE(v12) = 4;
    sub_23328CE1C();
    sub_233267C00(&qword_27DDE2430, MEMORY[0x28220BF20], MEMORY[0x28220BFE8]);
    sub_23328E4DC();
    LOBYTE(v12) = 5;
    sub_23328E48C();
    LOBYTE(v12) = 6;
    sub_23328E46C();
    LOBYTE(v12) = 7;
    sub_23328E46C();
    LOBYTE(v12) = 8;
    sub_23328E46C();
    LOBYTE(v12) = 9;
    sub_23328E48C();
    LOBYTE(v12) = 10;
    sub_23328E48C();
    v12 = *(v3 + *(v9 + 60));
    v11[15] = 11;
    type metadata accessor for TTSVBVoiceStatus(0);
    sub_233267C48(&qword_27DDE2438, type metadata accessor for TTSVBVoiceStatus, &protocol conformance descriptor for TTSVBVoiceStatus);
    sub_23328E4DC();
    LOBYTE(v12) = 12;
    sub_23328E48C();
    LOBYTE(v12) = 13;
    sub_23328E4AC();
    LOBYTE(v12) = 14;
    sub_23328E47C();
    LOBYTE(v12) = 15;
    sub_23328E49C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_233266DEC()
{
  result = qword_27DE01808;
  if (!qword_27DE01808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE01808);
  }

  return result;
}

uint64_t sub_233266E40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3918, &qword_2332A0A60);
  v4 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v6 = &v81 - v5;
  v7 = _s14ListModelsJsonVMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233266DEC();
  v92 = v6;
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v90 = a1;
  LOBYTE(v95) = 0;
  v10 = v92;
  v11 = sub_23328E3CC();
  v86 = v4;
  v89 = v7;
  *v9 = v11;
  v9[1] = v13;
  v14 = sub_23328CE8C();
  v87 = 0;
  v15 = v14;
  v85 = &v81;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v82 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v81 - v82;
  LOBYTE(v95) = 1;
  sub_233267C00(&qword_27DDE21D0, MEMORY[0x28220C078], MEMORY[0x28220C0D8]);
  v19 = v87;
  sub_23328E41C();
  v88 = v9;
  v83 = v15;
  v84 = v16;
  if (v19)
  {
    (*(v86 + 8))(v10, v93);
    v20 = 0;
    LODWORD(v91) = 0;
    LODWORD(v92) = 0;
    LODWORD(v93) = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    __swift_destroy_boxed_opaque_existential_0(v90);

    v47 = 0;
    if (!v91)
    {
      goto LABEL_21;
    }

LABEL_8:

    if (v92)
    {
      goto LABEL_22;
    }

LABEL_9:
    v41 = v88;
    if (!v93)
    {
      goto LABEL_23;
    }

LABEL_10:

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_11:
    v42 = v89;
    if (!v22)
    {
      goto LABEL_25;
    }

LABEL_12:

    if (v23)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v24)
    {
      goto LABEL_27;
    }

LABEL_14:

    if (v25)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (!v20)
    {
      goto LABEL_29;
    }

LABEL_16:

    if (v47)
    {
      return sub_233126838(v41 + v42[18]);
    }

    return result;
  }

  v26 = v89;
  v27 = *(v16 + 32);
  v28 = v9 + v89[5];
  v87 = v16 + 32;
  v81 = v27;
  v29 = (v27)(v28, v18, v15);
  MEMORY[0x28223BE20](v29);
  v30 = &v81 - v82;
  LOBYTE(v95) = 2;
  sub_23328E41C();
  v81(v9 + v26[6], v30, v15);
  LOBYTE(v95) = 3;
  v31 = sub_23328E3CC();
  v32 = v26;
  v87 = 0;
  v33 = v26[7];
  *v33 = v31;
  v33[1] = v34;
  v35 = sub_23328CE1C();
  v85 = &v81;
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v95) = 4;
  v39 = sub_233267C00(&qword_27DDE23F8, MEMORY[0x28220BF20], MEMORY[0x28220C008]);
  sub_23328E41C();
  v82 = v39;
  (*(v36 + 32))(v32[8], v38, v35);
  LOBYTE(v95) = 5;
  v40 = sub_23328E3CC();
  v51 = v32[9];
  *v51 = v40;
  v51[1] = v52;
  LOBYTE(v95) = 6;
  v53 = sub_23328E3AC();
  v54 = v32[10];
  *v54 = v53;
  v54[1] = v55;
  LOBYTE(v95) = 7;
  v56 = sub_23328E3AC();
  v57 = v32[11];
  *v57 = v56;
  v57[1] = v58;
  LOBYTE(v95) = 8;
  v59 = sub_23328E3AC();
  v60 = (v88 + v89[12]);
  *v60 = v59;
  v60[1] = v61;
  LOBYTE(v95) = 9;
  v62 = sub_23328E3CC();
  v63 = (v88 + v89[13]);
  *v63 = v62;
  v63[1] = v64;
  LOBYTE(v95) = 10;
  v65 = sub_23328E3CC();
  v66 = (v88 + v89[14]);
  *v66 = v65;
  v66[1] = v67;
  type metadata accessor for TTSVBVoiceStatus(0);
  v94 = 11;
  sub_233267C48(&qword_27DDE2400, type metadata accessor for TTSVBVoiceStatus, &protocol conformance descriptor for TTSVBVoiceStatus);
  sub_23328E41C();
  *(v88 + v89[15]) = v95;
  LOBYTE(v95) = 12;
  v68 = sub_23328E3CC();
  LODWORD(v85) = 1;
  v87 = 0;
  v69 = (v88 + v89[16]);
  *v69 = v68;
  v69[1] = v70;
  LOBYTE(v95) = 13;
  v71 = v87;
  sub_23328E3EC();
  v87 = v71;
  if (v71 || (*(v88 + v89[17]) = v72, v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730), MEMORY[0x28223BE20](v73 - 8), v75 = &v81 - v74, LOBYTE(v95) = 14, v76 = v87, sub_23328E3BC(), (v87 = v76) != 0))
  {
    (*(v86 + 8))(v92, v93);
    LODWORD(v86) = 0;
  }

  else
  {
    sub_23315CA28(v75, v88 + v89[18]);
    LOBYTE(v95) = 15;
    v77 = v87;
    v78 = sub_23328E3DC();
    v87 = v77;
    if (!v77)
    {
      v79 = v78;
      (*(v86 + 8))(v92, v93);
      v80 = v88;
      *(v88 + v89[19]) = v79 & 1;
      sub_233269F90(v80, v91, _s14ListModelsJsonVMa);
      __swift_destroy_boxed_opaque_existential_0(v90);
      return sub_233269FF8(v80, _s14ListModelsJsonVMa);
    }

    (*(v86 + 8))(v92, v93);
    LODWORD(v86) = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v90);

  LODWORD(v90) = 1;
  LODWORD(v82) = 1;
  LODWORD(v93) = 1;
  LODWORD(v92) = 1;
  LODWORD(v91) = 1;
  v43 = v83;
  v44 = v88;
  v45 = v89;
  v46 = *(v84 + 8);
  v46(v88 + v89[5], v83);
  result = (v46)(v44 + v45[6], v43);
  v20 = v85;
  v25 = v90;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  v47 = v86;
  v21 = v82;
  if (v91)
  {
    goto LABEL_8;
  }

LABEL_21:
  if (!v92)
  {
    goto LABEL_9;
  }

LABEL_22:
  v48 = v89[8];
  v49 = sub_23328CE1C();
  v50 = v88 + v48;
  v41 = v88;
  result = (*(*(v49 - 8) + 8))(v50, v49);
  if (v93)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (!v21)
  {
    goto LABEL_11;
  }

LABEL_24:
  v42 = v89;

  if (v22)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v23)
  {
    goto LABEL_13;
  }

LABEL_26:

  if (v24)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_28:

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v47)
  {
    return sub_233126838(v41 + v42[18]);
  }

  return result;
}

uint64_t sub_233267C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233267C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233267C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v30 = _s14ListModelsJsonVMa(0);
  v31 = v30[5];
  v32 = sub_23328CE8C();
  v33 = *(*(v32 - 8) + 32);
  v33(&a9[v31], a3, v32);
  v33(&a9[v30[6]], a4, v32);
  v34 = &a9[v30[7]];
  *v34 = a5;
  *(v34 + 1) = a6;
  v35 = v30[8];
  v36 = sub_23328CE1C();
  (*(*(v36 - 8) + 32))(&a9[v35], a7, v36);
  v37 = &a9[v30[9]];
  *v37 = a8;
  *(v37 + 1) = a11;
  v38 = &a9[v30[10]];
  *v38 = a12;
  *(v38 + 1) = a13;
  v39 = &a9[v30[11]];
  *v39 = a14;
  *(v39 + 1) = a15;
  v40 = &a9[v30[12]];
  *v40 = a16;
  *(v40 + 1) = a17;
  v41 = &a9[v30[13]];
  *v41 = a18;
  *(v41 + 1) = a19;
  v42 = &a9[v30[14]];
  *v42 = a20;
  *(v42 + 1) = a21;
  *&a9[v30[15]] = a22;
  v43 = &a9[v30[16]];
  *v43 = a23;
  *(v43 + 1) = a24;
  *&a9[v30[17]] = a10;
  result = sub_23315CA28(a25, &a9[v30[18]]);
  a9[v30[19]] = a26;
  return result;
}

uint64_t sub_233267EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08BD8);
  __swift_project_value_buffer(v3, qword_27DE08BD8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23326804C()
{
  v1[6] = v0;
  v2 = type metadata accessor for TTSVBVoiceModel(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = _s14ListModelsJsonVMa(0);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233268174, 0, 0);
}

uint64_t sub_233268174()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 112) = *v1;
  v3 = *(*v2 + 200);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_233268304;

  return v6();
}

uint64_t sub_233268304(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_2332697AC;
  }

  else
  {
    v4 = sub_233268418;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233268418()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v2 = *(v0 + 128);
  v166 = v0;
  if (*(v0 + 144) != 1)
  {
    sub_23328D30C();
    sub_23328D27C();

    result = *(v0 + 128);
    v154 = *(v2 + 16);
    if (!v154)
    {
LABEL_49:

LABEL_52:

      v127 = v1[1];
      goto LABEL_53;
    }

    v56 = 0;
    v57 = *(v0 + 56);
    v150 = *(v0 + 64);
    v148 = result + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v146 = *(v0 + 72);
    v58 = *(v0 + 136);
    v165 = v57;
    v152 = v2;
    while (v56 < *(v2 + 16))
    {
      v161 = v58;
      v69 = v1[9];
      v163 = v56;
      sub_233269F90(v148 + *(v150 + 72) * v56, v69, type metadata accessor for TTSVBVoiceModel);
      sub_23328D30C();
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332AE900);
      MEMORY[0x23839B7E0](*v69, *(v146 + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE920);
      v70 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v70);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE940);
      v71 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v71);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE960);
      MEMORY[0x23839B7E0](*(v69 + v57[14]), *(v69 + v57[14] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE980);
      v72 = TTSVBVoiceModel.primarySpeakingLocales.getter();
      v73 = *(v72 + 16);
      if (v73)
      {
        v175 = MEMORY[0x277D84F90];
        sub_23312676C(0, v73, 0);
        v74 = v175;
        v75 = sub_23328CF0C();
        v76 = 0;
        v77 = *(v75 - 8);
        v172 = v72 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        do
        {
          v78 = swift_task_alloc();
          (*(v77 + 16))(v78, v172 + *(v77 + 72) * v76, v75);
          v79 = sub_23328CEAC();
          v81 = v80;
          (*(v77 + 8))(v78, v75);

          v83 = *(v175 + 16);
          v82 = *(v175 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_23312676C((v82 > 1), v83 + 1, 1);
          }

          ++v76;
          *(v175 + 16) = v83 + 1;
          v84 = v175 + 16 * v83;
          *(v84 + 32) = v79;
          *(v84 + 40) = v81;
        }

        while (v73 != v76);

        v1 = v166;
      }

      else
      {

        v74 = MEMORY[0x277D84F90];
      }

      v85 = v1[9];
      v86 = MEMORY[0x23839B960](v74, MEMORY[0x277D837D0]);
      v88 = v87;

      MEMORY[0x23839B7E0](v86, v88);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE9A0);
      v89 = sub_23328CD6C();
      v90 = *(v89 - 8);
      v91 = swift_task_alloc();
      sub_23328CD5C();
      v92 = sub_23328CD3C();
      v93 = *(v92 - 8);
      v94 = swift_task_alloc();
      sub_23328CD1C();
      v95 = sub_23328CDEC();
      v97 = v96;
      v169 = v92;
      v157 = *(v93 + 8);
      v157(v94, v92);
      v173 = v89;
      v155 = *(v90 + 8);
      v155(v91, v89);

      MEMORY[0x23839B7E0](v95, v97);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE9C0);
      MEMORY[0x23839B7E0](*(v85 + v165[8]), *(v85 + v165[8] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AE9E0);
      v98 = (v85 + v165[9]);
      if (v98[1])
      {
        v99 = *v98;
        v100 = v98[1];
      }

      else
      {
        v100 = 0xE500000000000000;
        v99 = 0x3E6C696E3CLL;
      }

      v101 = v166[9];

      MEMORY[0x23839B7E0](v99, v100);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA00);
      v102 = (v101 + v165[10]);
      if (v102[1])
      {
        v103 = *v102;
        v104 = v102[1];
      }

      else
      {
        v104 = 0xE500000000000000;
        v103 = 0x3E6C696E3CLL;
      }

      v105 = v166[9];

      MEMORY[0x23839B7E0](v103, v104);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA20);
      v106 = (v105 + v165[11]);
      if (v106[1])
      {
        v107 = *v106;
        v108 = v106[1];
      }

      else
      {
        v108 = 0xE500000000000000;
        v107 = 0x3E6C696E3CLL;
      }

      v109 = v166[9];

      MEMORY[0x23839B7E0](v107, v108);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA40);
      MEMORY[0x23839B7E0](*(v109 + v165[12]), *(v109 + v165[12] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA60);
      MEMORY[0x23839B7E0](*(v109 + v165[17]), *(v109 + v165[17] + 8));
      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEA80);
      v110 = *(v109 + v165[13]);
      v111 = TTSVBVoiceStatus.description.getter(v110);
      MEMORY[0x23839B7E0](v111);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEAA0);
      v112 = TTSVBVoiceTrainingStatus.description.getter(*(v109 + v165[15]));
      MEMORY[0x23839B7E0](v112);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEAC0);
      v113 = v166[9];
      v114 = 1.0;
      if (v110 != 7)
      {
        v114 = *(v113 + v165[16]);
      }

      *(v166 + 4) = v114;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A00, &unk_2332905E0);
      v116 = *(v115 - 8);
      v117 = swift_task_alloc();
      sub_23328CF0C();
      swift_task_alloc();
      sub_23328CEEC();
      sub_23312678C();
      sub_23328CA8C();

      sub_2331267E0();
      sub_23328D86C();
      (*(v116 + 8))(v117, v115);

      MEMORY[0x23839B7E0](v166[2], v166[3]);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEAE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v118 = swift_task_alloc();
      sub_23312712C(v113 + v165[18], v118);
      v119 = sub_23328CE1C();
      v120 = *(v119 - 8);
      if ((*(v120 + 48))(v118, 1, v119) == 1)
      {
        sub_233126838(v118);
        v59 = 0x3E656E6F6E3CLL;
        v60 = 0xE600000000000000;
      }

      else
      {
        v121 = swift_task_alloc();
        sub_23328CD5C();
        v122 = swift_task_alloc();
        sub_23328CD1C();
        v59 = sub_23328CDEC();
        v60 = v123;
        v157(v122, v169);
        v155(v121, v173);

        (*(v120 + 8))(v118, v119);
      }

      v56 = v163 + 1;
      v1 = v166;
      v61 = v166[9];

      MEMORY[0x23839B7E0](v59, v60);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEB00);
      *(swift_task_alloc() + 16) = v61;
      v58 = v161;
      v62 = sub_233125BDC(sub_23325C7F4);
      v64 = v63;

      if (v64)
      {
        v65 = v62;
      }

      else
      {
        v65 = 0x3E656E6F4E3CLL;
      }

      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0xE600000000000000;
      }

      MEMORY[0x23839B7E0](v65, v66);

      MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332AEB20);
      v57 = v165;
      if (*(v61 + v165[19]))
      {
        v67 = 7562585;
      }

      else
      {
        v67 = 28494;
      }

      if (*(v61 + v165[19]))
      {
        v68 = 0xE300000000000000;
      }

      else
      {
        v68 = 0xE200000000000000;
      }

      MEMORY[0x23839B7E0](v67, v68);

      sub_23328D27C();

      sub_23328D30C();
      sub_23328D27C();

      result = sub_233269FF8(v61, type metadata accessor for TTSVBVoiceModel);
      v2 = v152;
      if (v56 == v154)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v134 = *(v0 + 96);
    v135 = *(v0 + 104);
    v5 = *(v0 + 88);
    v133 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v174 = MEMORY[0x277D84F90];
    sub_23325C894(0, v3, 0);
    v4 = v174;
    v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v132 = *(v7 + 72);
    do
    {
      v168 = v3;
      v170 = v4;
      v9 = v1[10];
      v167 = v8;
      sub_233269F90(v8, v9, type metadata accessor for TTSVBVoiceModel);
      v160 = *v9;
      v10 = *(v133 + 8);
      v11 = v6[5];
      v12 = sub_23328CE8C();
      v13 = *(v12 - 8);
      v14 = swift_task_alloc();
      v142 = v13;
      v15 = *(v13 + 16);
      v164 = v14;
      v15(v14, v9 + v11, v12);
      v16 = v6[6];
      v162 = swift_task_alloc();
      v143 = v12;
      v15(v162, v9 + v16, v12);
      v17 = (v9 + v6[14]);
      v156 = *v17;
      v171 = v17[1];
      v18 = v6[7];
      v19 = sub_23328CE1C();
      v20 = *(v19 - 8);
      v21 = swift_task_alloc();
      v140 = v20;
      v22 = *(v20 + 16);
      v23 = v10;
      v159 = v21;
      v158 = v19;
      v22(v21, v9 + v18, v19);
      v24 = v6[9];
      v25 = (v9 + v6[8]);
      v26 = v25[1];
      v149 = *v25;
      v27 = *(v9 + v24 + 8);
      v153 = *(v9 + v24);
      v28 = v6[11];
      v29 = (v9 + v6[10]);
      v30 = v29[1];
      v144 = *v29;
      v145 = *(v9 + v28);
      v147 = *(v9 + v28 + 8);
      v31 = (v9 + v6[12]);
      v32 = *v31;
      v33 = v31[1];
      v34 = (v9 + v6[17]);
      v35 = v34[1];
      v138 = *v34;
      v139 = v32;
      v36 = *(v9 + v6[13]);
      v37 = *(v9 + v6[15]);

      v141 = v35;

      v151 = v26;

      v38 = TTSVBVoiceTrainingStatus.description.getter(v37);
      v137 = v39;
      v40 = v166[10];
      v41 = 1.0;
      if (v36 != 7)
      {
        v41 = *(v40 + v6[16]);
      }

      v42 = v166[13];
      sub_23312712C(v40 + v6[18], &v42[v5[18]]);
      v136 = *(v40 + v6[19]);
      sub_233269FF8(v40, type metadata accessor for TTSVBVoiceModel);
      *v42 = v160;
      *(v135 + 8) = v23;
      v43 = *(v142 + 32);
      v43(&v42[v5[5]], v164, v143);
      v43(&v42[v5[6]], v162, v143);
      v44 = &v42[v5[7]];
      *v44 = v156;
      *(v44 + 1) = v171;
      (*(v140 + 32))(&v42[v5[8]], v159, v158);
      v45 = &v42[v5[9]];
      *v45 = v149;
      *(v45 + 1) = v151;
      v46 = &v42[v5[10]];
      *v46 = v153;
      *(v46 + 1) = v27;
      v47 = &v42[v5[11]];
      *v47 = v144;
      *(v47 + 1) = v30;
      v48 = &v42[v5[12]];
      *v48 = v145;
      *(v48 + 1) = v147;
      v49 = &v42[v5[13]];
      *v49 = v139;
      *(v49 + 1) = v33;
      v50 = &v42[v5[14]];
      *v50 = v138;
      *(v50 + 1) = v141;
      *&v42[v5[15]] = v36;
      v51 = &v42[v5[16]];
      *v51 = v38;
      v51[1] = v137;
      *&v42[v5[17]] = v41;
      v42[v5[19]] = v136;

      v4 = v170;
      v53 = *(v170 + 16);
      v52 = *(v170 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_23325C894((v52 > 1), v53 + 1, 1);
        v4 = v170;
      }

      v54 = v166[13];
      *(v4 + 16) = v53 + 1;
      sub_23326A058(v54, v4 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v53);
      v8 = v167 + v132;
      v3 = v168 - 1;
      v1 = v166;
    }

    while (v168 != 1);
  }

  v124 = v1[17];
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  sub_23328C87C();
  swift_task_alloc();
  sub_23328C86C();
  sub_23328C88C();

  v1[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3768, &qword_23329FAA8);
  sub_23326A0BC();
  v125 = sub_23328C89C();
  if (!v124)
  {
    v128 = v125;
    v129 = v126;
    sub_23328D30C();
    sub_23328D9DC();
    swift_task_alloc();
    sub_23328D9CC();
    sub_23328D9AC();
    v131 = v130;

    if (v131)
    {

      sub_23328D27C();

      sub_233121870(v128, v129);
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  v127 = v1[1];
LABEL_53:

  return v127();
}

uint64_t sub_2332697AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233269834(uint64_t a1)
{
  v2 = sub_23326A190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233269870(uint64_t a1)
{
  v2 = sub_23326A190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2332698AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3920, &qword_2332A0A70);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = _s17ListModelsCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23326A190();
  v17 = v25;
  sub_23328E68C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = v15;
  }

  else
  {
    v18 = v23;
    sub_233126AC4();
    sub_23328E41C();
    (*(v24 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_233269F90(v15, v22, _s17ListModelsCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = v15;
  }

  return sub_233269FF8(v19, _s17ListModelsCommandVMa);
}

uint64_t sub_233269C38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326804C();
}

uint64_t sub_233269CC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233267C48(&qword_27DDE3928, _s17ListModelsCommandVMa, &unk_2332A0AF8);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233269DA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE01800 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08BD8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233269E60()
{
  v0 = sub_23328D4DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_233269F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_233269FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23326A058(uint64_t a1, uint64_t a2)
{
  v4 = _s14ListModelsJsonVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23326A0BC()
{
  result = qword_27DDE3770;
  if (!qword_27DDE3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3768, &qword_23329FAA8);
    sub_233267C48(&qword_27DDE3778, _s14ListModelsJsonVMa, &unk_2332A0AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3770);
  }

  return result;
}

unint64_t sub_23326A190()
{
  result = qword_27DE01810[0];
  if (!qword_27DE01810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01810);
  }

  return result;
}

void sub_23326A374(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_23328CE8C();
  if (v2 <= 0x3F)
  {
    sub_23328CE1C();
    if (v3 <= 0x3F)
    {
      sub_23326A554(319, &qword_280D3A260, v1, MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for TTSVBVoiceStatus(319);
        if (v5 <= 0x3F)
        {
          sub_23315D69C(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23326A4C4(uint64_t a1)
{
  sub_23326A554(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23326A554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s14ListModelsJsonV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14ListModelsJsonV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23326A708()
{
  result = qword_27DE01D40[0];
  if (!qword_27DE01D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01D40);
  }

  return result;
}

unint64_t sub_23326A760()
{
  result = qword_27DE01F50[0];
  if (!qword_27DE01F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE01F50);
  }

  return result;
}

unint64_t sub_23326A7B8()
{
  result = qword_27DE02060;
  if (!qword_27DE02060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE02060);
  }

  return result;
}

unint64_t sub_23326A810()
{
  result = qword_27DE02068[0];
  if (!qword_27DE02068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02068);
  }

  return result;
}

unint64_t sub_23326A868()
{
  result = qword_27DE020F0;
  if (!qword_27DE020F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE020F0);
  }

  return result;
}

unint64_t sub_23326A8C0()
{
  result = qword_27DE020F8[0];
  if (!qword_27DE020F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE020F8);
  }

  return result;
}

uint64_t sub_23326A914(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496C65646F6DLL && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002332A7220 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xED0000646C697542 || (sub_23328E54C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332A71B0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332A71D0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002332A71F0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEC00000065646F4DLL || (sub_23328E54C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEC00000070657453 || (sub_23328E54C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002332AEB40 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002332A7270 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F6C6E776F447369 && a2 == 0xEC00000064656461)
  {

    return 15;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_23326AE10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08BF0);
  __swift_project_value_buffer(v3, qword_27DE08BF0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23326AF74()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 296);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B0F0;

  return v6();
}

uint64_t sub_23326B0F0()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23326B898, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_23326B230()
{
  result = qword_27DDE3950;
  if (!qword_27DDE3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3950);
  }

  return result;
}

unint64_t sub_23326B288()
{
  result = qword_27DDE3958;
  if (!qword_27DDE3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3958);
  }

  return result;
}

uint64_t sub_23326B2F8()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 296);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B474;

  return v6();
}

uint64_t sub_23326B474()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23326B5B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23326B5B0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_23326B618()
{
  result = qword_27DDE3960;
  if (!qword_27DDE3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3960);
  }

  return result;
}

uint64_t sub_23326B66C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23326B230();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_23326B71C()
{
  result = qword_27DDE3968;
  if (!qword_27DDE3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3968);
  }

  return result;
}

uint64_t sub_23326B770@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02180 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08BF0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_23326B834()
{
  result = qword_27DDE3970;
  if (!qword_27DDE3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3970);
  }

  return result;
}

uint64_t sub_23326B89C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C08);
  __swift_project_value_buffer(v3, qword_27DE08C08);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23326B9F8()
{
  *(v0 + 176) = *(type metadata accessor for TTSVBInstalledVoiceModel(0) - 8);
  *(v0 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23326BAB0, 0, 0);
}

uint64_t sub_23326BAB0()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 192) = *v1;
  v3 = *(*v2 + 216);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_23326BC2C;

  return v6();
}

uint64_t sub_23326BC2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_23326CEC4;
  }

  else
  {
    v4 = sub_23326BD40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23326BD40(uint64_t a1)
{
  v2 = v1[26];
  sub_23328D30C();
  sub_23328D27C();

  v89 = *(v2 + 16);
  v90 = v2;
  if (v89)
  {
    v4 = 0;
    v88 = v1[22];
    v87 = v1[26] + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v95 = v1;
    while (v4 < *(v90 + 16))
    {
      sub_23326D050(v87 + *(v88 + 72) * v4, v1[23]);
      v31 = TTSVBInstalledVoiceModel.calculateOnDiskFileSize()();
      v98 = v4;
      if (v32)
      {

        v96 = 0;
      }

      else
      {
        v96 = v31;
      }

      sub_23328D30C();
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332AEC20);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v1[2], v1[3]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEC40);
      swift_getKeyPath();
      v33 = sub_23328CE8C();
      v34 = *(v33 - 8);
      v35 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v36 = sub_23328CE3C();
      v38 = v37;
      v39 = *(v34 + 8);
      v39(v35, v33);
      MEMORY[0x23839B7E0](v36, v38);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEC60);
      swift_getKeyPath();
      v40 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v41 = sub_23328CE3C();
      v43 = v42;
      v39(v40, v33);
      MEMORY[0x23839B7E0](v41, v43);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEC80);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v44 = v1[18];
      v45 = *(v44 + 16);
      if (v45)
      {
        v104 = MEMORY[0x277D84F90];
        sub_23312676C(0, v45, 0);
        v46 = v104;
        v47 = sub_23328CF0C();
        v48 = 0;
        v49 = *(v47 - 8);
        v103 = v44 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        do
        {
          v50 = v45;
          v51 = swift_task_alloc();
          (*(v49 + 16))(v51, v103 + *(v49 + 72) * v48, v47);
          v52 = sub_23328CEAC();
          v54 = v53;
          (*(v49 + 8))(v51, v47);

          v56 = *(v104 + 16);
          v55 = *(v104 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_23312676C((v55 > 1), v56 + 1, 1);
          }

          ++v48;
          *(v104 + 16) = v56 + 1;
          v57 = v104 + 16 * v56;
          *(v57 + 32) = v52;
          *(v57 + 40) = v54;
          v45 = v50;
        }

        while (v50 != v48);

        v1 = v95;
      }

      else
      {

        v46 = MEMORY[0x277D84F90];
      }

      v58 = MEMORY[0x23839B960](v46, MEMORY[0x277D837D0]);
      v60 = v59;

      MEMORY[0x23839B7E0](v58, v60);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AECA0);
      swift_getKeyPath();
      v61 = sub_23328CE1C();
      v100 = *(v61 - 8);
      v102 = v61;
      v62 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v63 = sub_23328CD6C();
      v64 = *(v63 - 8);
      v65 = swift_task_alloc();
      sub_23328CD5C();
      v66 = sub_23328CD3C();
      v67 = *(v66 - 8);
      v68 = swift_task_alloc();
      sub_23328CD1C();
      v99 = sub_23328CDEC();
      v70 = v69;
      v92 = *(v67 + 8);
      v92(v68, v66);
      v94 = v63;
      v91 = *(v64 + 8);
      v91(v65, v63);
      v93 = *(v100 + 8);
      v93(v62, v102);

      MEMORY[0x23839B7E0](v99, v70);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AECC0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v1[4], v1[5]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AECE0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v71 = v1[7];
      if (v71)
      {
        v72 = v1[6];
      }

      else
      {
        v72 = 0x3E6C696E3CLL;
      }

      if (v71)
      {
        v73 = v1[7];
      }

      else
      {
        v73 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v72, v73);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED00);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v74 = v1[9];
      if (v74)
      {
        v75 = v1[8];
      }

      else
      {
        v75 = 0x3E6C696E3CLL;
      }

      if (v74)
      {
        v76 = v1[9];
      }

      else
      {
        v76 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v75, v76);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED20);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v77 = v1[11];
      if (v77)
      {
        v78 = v1[10];
      }

      else
      {
        v78 = 0x3E6C696E3CLL;
      }

      if (v77)
      {
        v79 = v1[11];
      }

      else
      {
        v79 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v78, v79);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED40);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v1[12], v1[13]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED60);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](v1[14], v1[15]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AED80);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v80 = TTSVBVoiceStatus.description.getter(v1[19]);
      MEMORY[0x23839B7E0](v80);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEDA0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v81 = TTSVBVoiceTrainingStatus.description.getter(v1[20]);
      MEMORY[0x23839B7E0](v81);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEDC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v82 = swift_task_alloc();
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      if ((*(v100 + 48))(v82, 1, v102) == 1)
      {
        sub_233126838(v82);
        v5 = 0x3E656E6F6E3CLL;
        v6 = 0xE600000000000000;
      }

      else
      {
        v83 = swift_task_alloc();
        sub_23328CD5C();
        v84 = swift_task_alloc();
        sub_23328CD1C();
        v5 = sub_23328CDEC();
        v6 = v85;
        v92(v84, v66);
        v91(v83, v94);

        v93(v82, v102);
      }

      v97 = v98 + 1;
      v7 = v95[23];

      MEMORY[0x23839B7E0](v5, v6);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEDE0);
      swift_getKeyPath();
      v8 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      *(swift_task_alloc() + 16) = v7;
      v101 = v7;
      v9 = sub_233125BDC(sub_23326D2AC);
      v11 = v10;

      sub_233126838(v8);

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0x3E656E6F4E3CLL;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      MEMORY[0x23839B7E0](v12, v13);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEE00);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      if (*(v95 + 224))
      {
        v14 = 7562585;
      }

      else
      {
        v14 = 28494;
      }

      if (*(v95 + 224))
      {
        v15 = 0xE300000000000000;
      }

      else
      {
        v15 = 0xE200000000000000;
      }

      MEMORY[0x23839B7E0](v14, v15);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEE20);
      v95[21] = v96;
      v16 = sub_23328CA4C();
      v17 = *(v16 - 8);
      v18 = swift_task_alloc();
      v19 = sub_23328CA1C();
      v20 = *(v19 - 8);
      v21 = swift_task_alloc();
      (*(v20 + 104))(v21, *MEMORY[0x277CC8DE0], v19);
      v22 = sub_23328CA3C();
      v23 = *(v22 - 8);
      v24 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      (*(v23 + 8))(v24, v22);
      (*(v20 + 8))(v21, v19);

      sub_23312599C();
      sub_2331259F0();
      sub_233125A3C();
      sub_23328E0CC();
      (*(v17 + 8))(v18, v16);
      v1 = v95;

      MEMORY[0x23839B7E0](v95[16], v95[17]);

      MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AEE40);
      swift_getKeyPath();
      v25 = sub_23328CC9C();
      v26 = *(v25 - 8);
      v27 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v28 = sub_23328CC6C();
      v30 = v29;
      v4 = v97;
      (*(v26 + 8))(v27, v25);
      MEMORY[0x23839B7E0](v28, v30);

      sub_23328D27C();

      sub_23328D30C();
      sub_23328D27C();

      result = sub_23326D2D8(v101);
      if (v97 == v89)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_48:

    v86 = v1[1];

    return v86();
  }

  return result;
}

uint64_t sub_23326CEC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23326CF30@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v2 = sub_23328CE1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  sub_23328CD8C();
  (*(v3 + 8))(v5, v2);
  sub_23328E6BC();
  result = sub_23328E6AC();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_23326D050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23326D0B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326B9F8();
}

uint64_t sub_23326D140(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23326D338();
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23326D1EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02490 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23326D2D8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23326D338()
{
  result = qword_27DDE3978;
  if (!qword_27DDE3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3978);
  }

  return result;
}

unint64_t sub_23326D390()
{
  result = qword_27DDE3980;
  if (!qword_27DDE3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3980);
  }

  return result;
}

unint64_t sub_23326D3E8()
{
  result = qword_27DDE3988;
  if (!qword_27DDE3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3988);
  }

  return result;
}

unint64_t sub_23326D440()
{
  result = qword_27DDE3990;
  if (!qword_27DDE3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3990);
  }

  return result;
}

unint64_t sub_23326D498()
{
  result = qword_27DDE3998;
  if (!qword_27DDE3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3998);
  }

  return result;
}

uint64_t sub_23326D4FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C20);
  __swift_project_value_buffer(v3, qword_27DE08C20);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s21ScriptMetadataCommandVMa(uint64_t a1)
{
  result = qword_27DE02B30;
  if (!qword_27DE02B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23326D6C0()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[7] = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v3 = v0[2];
  v4 = v0[3];
  v0[8] = v4;
  _s21ScriptMetadataCommandVMa(0);
  sub_23328D5CC();
  v5 = v0[4];
  v6 = v0[5];
  v0[9] = v6;
  v9 = (*(*v2 + 400) + **(*v2 + 400));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_23326D8B8;

  return v9(v3, v4, v5, v6);
}

uint64_t sub_23326D8B8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23326DA0C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23326DA0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23326DA84()
{
  if (*v0)
  {
    return 0x7954747069726373;
  }

  else
  {
    return 0x4449656C61636F6CLL;
  }
}

uint64_t sub_23326DAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7954747069726373 && a2 == 0xEA00000000006570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23326DBA8(uint64_t a1)
{
  v2 = sub_23326E560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23326DBE4(uint64_t a1)
{
  v2 = sub_23326E560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23326DC20@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_23328D53C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23328D4DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v14 = 0x53552D6E65;
  v15 = 0xE500000000000000;
  sub_23328D3BC();
  v9 = sub_23328D3CC();
  v13[0] = *(*(v9 - 8) + 56);
  (v13[0])(v8, 0, 1, v9);
  v10 = sub_23328D42C();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  _s21ScriptMetadataCommandVMa(0);
  v14 = 0x746C7561666564;
  v15 = 0xE700000000000000;
  sub_23328D3BC();
  (v13[0])(v8, 0, 1, v9);
  v11(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_23326DF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v34 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE39A0, qword_2332A1350);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v34 - v6;
  v7 = sub_23328D53C();
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = _s21ScriptMetadataCommandVMa(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0x53552D6E65;
  v49 = 0xE500000000000000;
  sub_23328D3BC();
  v21 = sub_23328D3CC();
  v22 = *(v21 - 8);
  v43 = *(v22 + 56);
  v44 = v22 + 56;
  v43(v16, 0, 1, v21);
  v23 = sub_23328D42C();
  v41 = *(*(v23 - 8) + 56);
  v41(v13, 1, 1, v23);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v24 = *(v18 + 28);
  v48 = 0x746C7561666564;
  v49 = 0xE700000000000000;
  sub_23328D3BC();
  v43(v16, 0, 1, v21);
  v25 = v23;
  v26 = v47;
  v41(v13, 1, 1, v25);
  sub_23328D4CC();
  sub_23328D52C();
  v44 = v24;
  sub_23328D5EC();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_23326E560();
  v27 = v46;
  v28 = v50;
  sub_23328E68C();
  if (!v28)
  {
    v29 = v40;
    LOBYTE(v48) = 0;
    sub_23326E610();
    v30 = v38;
    v31 = v37;
    sub_23328E41C();
    v32 = *(v29 + 40);
    v40 = v29 + 40;
    v50 = v32;
    v32(v20, v39, v30);
    LOBYTE(v48) = 1;
    sub_23328E41C();
    (*(v36 + 8))(v27, v31);
    v50(&v20[v44], v35, v30);
    sub_23326E674(v20, v34);
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  return sub_23326E5B4(v20);
}

unint64_t sub_23326E560()
{
  result = qword_27DE02828[0];
  if (!qword_27DE02828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02828);
  }

  return result;
}

uint64_t sub_23326E5B4(uint64_t a1)
{
  v2 = _s21ScriptMetadataCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23326E610()
{
  result = qword_27DDE3420;
  if (!qword_27DDE3420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3400, &unk_23329DB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3420);
  }

  return result;
}

uint64_t sub_23326E674(uint64_t a1, uint64_t a2)
{
  v4 = _s21ScriptMetadataCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23326E740()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326D6A0();
}

uint64_t sub_23326E800(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23326E9F0(&qword_27DDE39A8, &unk_2332A1388);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23326E8FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02820 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C20);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23326E9F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s21ScriptMetadataCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23326EA78(uint64_t a1)
{
  sub_23322961C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23326EAF8()
{
  result = qword_27DE02C40[0];
  if (!qword_27DE02C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02C40);
  }

  return result;
}

unint64_t sub_23326EB50()
{
  result = qword_27DE02D50;
  if (!qword_27DE02D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE02D50);
  }

  return result;
}

unint64_t sub_23326EBA8()
{
  result = qword_27DE02D58[0];
  if (!qword_27DE02D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02D58);
  }

  return result;
}

uint64_t sub_23326EBFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C38);
  __swift_project_value_buffer(v3, qword_27DE08C38);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23326ED78()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[6] = *v1;
  v3 = sub_23328CE8C();
  v0[7] = v3;
  v0[8] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[9] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v7 = (*(*v2 + 440) + **(*v2 + 440));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_23326F02C;

  return v7(v4);
}

uint64_t sub_23326F02C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v3 = sub_23326F1BC;
  }

  else
  {

    v3 = sub_2331D4638;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23326F1BC()
{

  v1 = v0[11];
  sub_23328D30C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23839B7E0](0x203A726F727245, 0xE700000000000000);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  sub_23328D25C();

  v2 = v0[1];

  return v2();
}

uint64_t sub_23326F2C4(uint64_t a1)
{
  v2 = sub_23326F800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23326F300(uint64_t a1)
{
  v2 = sub_23326F800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23326F33C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE39D0, qword_2332A15E8);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = sub_23328D53C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23328D4DC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = _s32SynthesizeAudioForSamplesCommandVMa(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v17 = sub_23328D3CC();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  v18 = sub_23328D42C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23326F800();
  v19 = v27;
  sub_23328E68C();
  if (!v19)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v27 = &v25;
    v21 = *(v20 - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v25 - v22;
    sub_233226DD0();
    sub_23328E41C();
    (*(v26 + 8))(v5, v3);
    (*(v21 + 40))(v16, v23, v20);
    sub_23326F8B0(v16, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23326F854(v16);
}

uint64_t _s32SynthesizeAudioForSamplesCommandVMa(uint64_t a1)
{
  result = qword_27DE030F0;
  if (!qword_27DE030F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23326F800()
{
  result = qword_27DE02DE8[0];
  if (!qword_27DE02DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE02DE8);
  }

  return result;
}

uint64_t sub_23326F854(uint64_t a1)
{
  v2 = _s32SynthesizeAudioForSamplesCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23326F8B0(uint64_t a1, uint64_t a2)
{
  v4 = _s32SynthesizeAudioForSamplesCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23326F97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23326ED58();
}

uint64_t sub_23326FA3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23326FC2C(&qword_27DDE39D8, &unk_2332A1620);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23326FB38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE02DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C38);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23326FC2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s32SynthesizeAudioForSamplesCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23326FC70()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_23328D42C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_23326FEF8()
{
  result = qword_27DE03200[0];
  if (!qword_27DE03200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03200);
  }

  return result;
}

unint64_t sub_23326FF50()
{
  result = qword_27DE03310;
  if (!qword_27DE03310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE03310);
  }

  return result;
}

unint64_t sub_23326FFA8()
{
  result = qword_27DE03318[0];
  if (!qword_27DE03318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03318);
  }

  return result;
}

uint64_t sub_23326FFFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C50);
  __swift_project_value_buffer(v3, qword_27DE08C50);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233270170()
{
  sub_23328D20C();
  v1 = *sub_233237A1C();

  sub_23328D30C();
  v2 = sub_23328CC9C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  (*(*v1 + 176))();
  sub_23328CC6C();
  (*(v3 + 8))(v4, v2);
  sub_23328D27C();

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_23327030C()
{
  result = qword_27DDE3A00;
  if (!qword_27DDE3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A00);
  }

  return result;
}

unint64_t sub_233270364()
{
  result = qword_27DDE3A08;
  if (!qword_27DDE3A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A08);
  }

  return result;
}

unint64_t sub_2332703BC()
{
  result = qword_27DDE3A10;
  if (!qword_27DDE3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A10);
  }

  return result;
}

uint64_t sub_233270410(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327030C();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_2332704C0()
{
  result = qword_27DDE3A18;
  if (!qword_27DDE3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A18);
  }

  return result;
}

uint64_t sub_233270514@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE033A0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_2332705D8()
{
  result = qword_27DDE3A20;
  if (!qword_27DDE3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A20);
  }

  return result;
}

uint64_t sub_23327063C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C68);
  __swift_project_value_buffer(v3, qword_27DE08C68);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_2332707B0()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 416);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B0F0;

  return v6();
}

unint64_t sub_233270930()
{
  result = qword_27DDE3A28;
  if (!qword_27DDE3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A28);
  }

  return result;
}

unint64_t sub_233270988()
{
  result = qword_27DDE3A30;
  if (!qword_27DDE3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A30);
  }

  return result;
}

uint64_t sub_2332709F8()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 416);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B474;

  return v6();
}

unint64_t sub_233270B78()
{
  result = qword_27DDE3A38;
  if (!qword_27DDE3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A38);
  }

  return result;
}

uint64_t sub_233270BCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233270930();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_233270C7C()
{
  result = qword_27DDE3A40;
  if (!qword_27DDE3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A40);
  }

  return result;
}

uint64_t sub_233270CD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE036B0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_233270D94()
{
  result = qword_27DDE3A48;
  if (!qword_27DDE3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3A48);
  }

  return result;
}

uint64_t sub_233270DF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C80);
  __swift_project_value_buffer(v3, qword_27DE08C80);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s18ImportModelCommandVMa(uint64_t a1)
{
  result = qword_27DE03CD0;
  if (!qword_27DE03CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233270F98()
{
  v1[4] = v0;
  v2 = sub_23328D23C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233271058, 0, 0);
}

uint64_t sub_233271058()
{
  sub_23328D20C();
  v2 = v0[6];
  v1 = v0[7];
  v13 = v0[5];
  v3 = sub_233237A1C();
  v4 = *v3;
  v0[8] = *v3;
  v5 = sub_23328CE8C();
  v0[9] = v5;
  v0[10] = *(v5 - 8);
  v6 = swift_task_alloc();
  v0[11] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  _s18ImportModelCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v7 = v0[2];
  v8 = v0[3];
  v0[12] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  v9 = sub_23328CC9C();
  v0[13] = v9;
  v0[14] = *(v9 - 8);
  v10 = swift_task_alloc();
  v0[15] = v10;
  MEMORY[0x23839AF80]();
  (*(v2 + 8))(v1, v13);
  v14 = (*(*v4 + 280) + **(*v4 + 280));
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_23327138C;

  return v14(v6, v7, v8, v10);
}

uint64_t sub_23327138C()
{
  v2 = *v1;
  v11 = *v1;
  v2[17] = v0;

  v10 = v2[15];
  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  if (v0)
  {

    (*(v3 + 8))(v10, v4);
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_233271634, 0, 0);
  }

  else
  {

    (*(v3 + 8))(v10, v4);
    (*(v6 + 8))(v5, v7);

    v8 = v11[1];

    return v8();
  }
}

uint64_t sub_233271634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332716AC()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x4449656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2332716F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_233272C80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23327171C(uint64_t a1)
{
  v2 = sub_23327241C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233271758(uint64_t a1)
{
  v2 = sub_23327241C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233271794@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_23328D53C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23328D4DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_23328D3BC();
  v18 = sub_23328D3CC();
  v9 = *(v18 - 8);
  v10 = *(v9 + 56);
  v19 = v9 + 56;
  v10(v8, 0, 1, v18);
  v17 = v10;
  v11 = sub_23328D42C();
  v12 = *(*(v11 - 8) + 56);
  v16 = v11;
  v12(v5, 1, 1, v11);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v15 = *(_s18ImportModelCommandVMa(0) + 20);
  sub_23328D3BC();
  v13 = v18;
  v10(v8, 0, 1, v18);
  v12(v5, 1, 1, v11);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_2332728C0(&qword_27DDE3508, MEMORY[0x277CE66E8], MEMORY[0x277CE66E0]);
  sub_23328D5FC();
  sub_23328D3BC();
  v17(v8, 0, 1, v13);
  v12(v5, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5DC();
}

uint64_t sub_233271B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v38 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A50, qword_2332A1B30);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v36 - v5;
  v6 = sub_23328D53C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23328D4DC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v56 = (_s18ImportModelCommandVMa(0) - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v54 = sub_23328D3CC();
  v15 = *(v54 - 8);
  v53 = *(v15 + 56);
  v55 = v15 + 56;
  v53(v13, 0, 1, v54);
  v16 = sub_23328D42C();
  v47 = *(*(v16 - 8) + 56);
  v48 = v16;
  v47(v10, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v17 = *(v56 + 7);
  sub_23328D3BC();
  v53(v13, 0, 1, v54);
  v18 = v16;
  v19 = v47;
  v47(v10, 1, 1, v18);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_2332728C0(&qword_27DDE3508, MEMORY[0x277CE66E8], MEMORY[0x277CE66E0]);
  v20 = v52;
  v39 = v17;
  sub_23328D5FC();
  v21 = *(v56 + 8);
  sub_23328D3BC();
  v53(v13, 0, 1, v54);
  v19(v10, 1, 1, v48);
  sub_23328D4CC();
  sub_23328D52C();
  v22 = v50;
  sub_23328D5DC();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_23327241C();
  v23 = v49;
  v24 = v51;
  sub_23328E68C();
  if (!v24)
  {
    v55 = v21;
    v25 = v44;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v56 = &v36;
    v27 = *(v26 - 8);
    MEMORY[0x28223BE20](v26);
    v29 = &v36 - v28;
    v59 = 0;
    sub_233229170(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v30 = v46;
    sub_23328E41C();
    (*(v27 + 40))(v52, v29, v26);
    v58 = 1;
    sub_233229170(&qword_27DDE3518, &qword_27DDE3500, &qword_23329E2E8);
    v31 = v43;
    sub_23328E41C();
    v20 = v52;
    (*(v40 + 40))(&v52[v39], v25, v31);
    v57 = 2;
    sub_233229170(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v33 = v41;
    v34 = v30;
    v35 = v42;
    sub_23328E41C();
    (*(v45 + 8))(v23, v34);
    (*(v37 + 40))(v20 + v55, v33, v35);
    sub_2332724CC(v20, v38);
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return sub_233272470(v20);
}

unint64_t sub_23327241C()
{
  result = qword_27DE039C8[0];
  if (!qword_27DE039C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE039C8);
  }

  return result;
}

uint64_t sub_233272470(uint64_t a1)
{
  v2 = _s18ImportModelCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2332724CC(uint64_t a1, uint64_t a2)
{
  v4 = _s18ImportModelCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332725C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233270F98();
}

uint64_t sub_233272694(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_2332728C0(&qword_27DDE3A58, _s18ImportModelCommandVMa, &unk_2332A1B68);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332727B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE039C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C80);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332728C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23327290C()
{
  v0 = sub_23328D23C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  sub_23328D21C();
  return (*(v1 + 8))(v3, v0);
}

void sub_233272A4C(uint64_t a1)
{
  sub_233272B14(319, &qword_27DDE2D78, MEMORY[0x28220C088]);
  if (v1 <= 0x3F)
  {
    sub_233272B14(319, &qword_27DDE3548, MEMORY[0x277CE66E8]);
    if (v2 <= 0x3F)
    {
      sub_233231530(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_233272B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23328D60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_233272B7C()
{
  result = qword_27DE03DE0[0];
  if (!qword_27DE03DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03DE0);
  }

  return result;
}

unint64_t sub_233272BD4()
{
  result = qword_27DE03EF0;
  if (!qword_27DE03EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE03EF0);
  }

  return result;
}

unint64_t sub_233272C2C()
{
  result = qword_27DE03EF8[0];
  if (!qword_27DE03EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03EF8);
  }

  return result;
}

uint64_t sub_233272C80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_233272D90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08C98);
  __swift_project_value_buffer(v3, qword_27DE08C98);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s25ImportVoicePackageCommandVMa(uint64_t a1)
{
  result = qword_27DE04290;
  if (!qword_27DE04290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233272F5C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  v0[7] = *v1;
  v3 = sub_23328CC9C();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[10] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A80, &unk_2332A1DC0);
  sub_23328D35C();
  sub_23328CB7C();

  _s25ImportVoicePackageCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v5 = v0[4];
  v6 = v0[5];
  v0[11] = v6;
  v9 = (*(*v2 + 320) + **(*v2 + 320));
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2332731CC;

  return v9(v4, v5, v6);
}

uint64_t sub_2332731CC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2332733AC, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_2332733AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233273410()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_233273434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_233273510(uint64_t a1)
{
  v2 = sub_233273EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327354C(uint64_t a1)
{
  v2 = sub_233273EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233273588()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v15[1] = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23328D4DC();
  MEMORY[0x28223BE20](v2 - 8);
  v15[0] = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  sub_23328D3BC();
  v10 = sub_23328D3CC();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_23328D42C();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  sub_23328D37C();
  _s25ImportVoicePackageCommandVMa(0);
  sub_23328D3BC();
  v11(v9, 0, 1, v10);
  v13(v6, 1, 1, v12);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5DC();
}

uint64_t sub_233273868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v38 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A80, &unk_2332A1DC0);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A88, qword_2332A1DD8);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v50 = &v37 - v4;
  v5 = sub_23328D53C();
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D4DC();
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = _s25ImportVoicePackageCommandVMa(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v19 = sub_23328D3CC();
  v20 = *(v19 - 8);
  v46 = *(v20 + 56);
  v47 = v20 + 56;
  v46(v14, 0, 1, v19);
  v21 = sub_23328D42C();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 1, 1, v21);
  sub_23328D37C();
  v23 = *(v16 + 28);
  sub_23328D3BC();
  v46(v14, 0, 1, v19);
  v22(v11, 1, 1, v21);
  v24 = v51;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_233273EE8();
  v25 = v50;
  v26 = v52;
  sub_23328E68C();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
    v36 = v18;
  }

  else
  {
    v27 = v18;
    v28 = v41;
    v29 = v42;
    v54 = 0;
    sub_23315246C(&qword_27DDE3A90, &qword_27DDE3A80, &unk_2332A1DC0, MEMORY[0x277CEEA20]);
    v30 = v43;
    sub_23328E41C();
    v31 = *(v29 + 40);
    v52 = v27;
    v31(v27, v44, v45);
    v53 = 1;
    sub_23315246C(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570, MEMORY[0x277CEEA68]);
    v33 = v39;
    v32 = v40;
    sub_23328E41C();
    (*(v28 + 8))(v25, v30);
    v35 = v52;
    (*(v37 + 40))(v52 + v23, v33, v32);
    sub_233273F98(v35, v38);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v36 = v35;
  }

  return sub_233273F3C(v36);
}

unint64_t sub_233273EE8()
{
  result = qword_27DE03F88[0];
  if (!qword_27DE03F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE03F88);
  }

  return result;
}

uint64_t sub_233273F3C(uint64_t a1)
{
  v2 = _s25ImportVoicePackageCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233273F98(uint64_t a1, uint64_t a2)
{
  v4 = _s25ImportVoicePackageCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233274064()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233272F3C();
}

uint64_t sub_233274124(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233274314(&qword_27DDE3A98, &unk_2332A1E10);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233274220@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE03F80 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08C98);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233274314(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s25ImportVoicePackageCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23327439C(uint64_t a1)
{
  sub_233274420();
  if (v1 <= 0x3F)
  {
    sub_233231530(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_233274420()
{
  if (!qword_27DDE3AC0)
  {
    v0 = sub_23328D38C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3AC0);
    }
  }
}

unint64_t sub_233274484()
{
  result = qword_27DE043A0[0];
  if (!qword_27DE043A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE043A0);
  }

  return result;
}

unint64_t sub_2332744DC()
{
  result = qword_27DE044B0;
  if (!qword_27DE044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE044B0);
  }

  return result;
}

unint64_t sub_233274534()
{
  result = qword_27DE044B8[0];
  if (!qword_27DE044B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE044B8);
  }

  return result;
}

uint64_t sub_233274588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08CB0);
  __swift_project_value_buffer(v3, qword_27DE08CB0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s18CreateVoiceCommandVMa(uint64_t a1)
{
  result = qword_27DE04850;
  if (!qword_27DE04850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233274728()
{
  v1[21] = v0;
  _s19TrainingOptionGroupVMa(0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v2 = sub_23328D23C();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD0, &unk_2332A2070);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233274894, 0, 0);
}

uint64_t sub_233274894()
{
  sub_23328D20C();
  sub_23328D30C();
  sub_23328E24C();

  v62 = *sub_2331DEBE8();
  v1 = sub_23328CC9C();
  *(v0 + 264) = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  *(v0 + 272) = v2;
  *(v0 + 280) = *(v2 + 64);
  v4 = swift_task_alloc();
  v5 = v62;
  sub_23328CB8C();
  sub_2331E17B4(v4);
  v7 = v6;
  v56 = v3;
  v57 = v1;
  (*(v3 + 8))(v4, v1);

  *(v0 + 160) = v7;
  v8 = sub_23328CA4C();
  v9 = *(v8 - 8);
  v10 = swift_task_alloc();
  v11 = sub_23328CA1C();
  v12 = *(v11 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 104))(v13, *MEMORY[0x277CC8DE0], v11);
  v14 = sub_23328CA3C();
  v15 = *(v14 - 8);
  v16 = swift_task_alloc();
  sub_23328CA2C();
  sub_23328C82C();
  (*(v15 + 8))(v16, v14);
  (*(v12 + 8))(v13, v11);

  sub_233125A3C();
  sub_2331259F0();
  sub_23328E0BC();
  (*(v9 + 8))(v10, v8);

  MEMORY[0x23839B7E0](*(v0 + 16), *(v0 + 24));

  sub_23328D27C();

  VoiceCommandVMa = _s18CreateVoiceCommandVMa(0);
  *(v0 + 288) = VoiceCommandVMa;
  *(v0 + 156) = *(VoiceCommandVMa + 28);
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v18 = *(v0 + 40);
  *(v0 + 304) = *(v0 + 32);
  *(v0 + 312) = v18;
  v19 = sub_233237A1C();
  *(v0 + 320) = *v19;
  *(v0 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v59 = swift_task_alloc();
  *(v0 + 336) = v59;

  *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  *(v0 + 352) = *(v0 + 56);
  sub_23328D5CC();
  *(v0 + 360) = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  *(v0 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (*(v0 + 153) == 1)
  {
    v20 = *v19;
    *(v0 + 376) = *v19;
    v21 = *(*v20 + 504);

    v58 = v21 + *v21;
    v22 = swift_task_alloc();
    *(v0 + 384) = v22;
    *v22 = v0;
    v22[1] = sub_2332754E8;

    __asm { BRAA            X8, X16 }
  }

  v23 = *(v0 + 256);
  v25 = *(v0 + 208);
  v24 = *(v0 + 216);

  v26 = swift_task_alloc();
  v27 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  v28 = (*(v24 + 48))(v23, 1, v25);
  v29 = *(v0 + 256);
  if (v28 == 1)
  {
    sub_233121E04(*(v0 + 256), &qword_27DDE3AD0, &unk_2332A2070);

    (*(v56 + 56))(v59, 1, 1, v57);
  }

  else
  {
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    MEMORY[0x23839AF80]();
    (*(v30 + 8))(v29, v31);
    v32 = *(v56 + 32);
    v32(v26, v27, v57);

    v32(v59, v26, v57);
    (*(v56 + 56))(v59, 0, 1, v57);
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 264);
  v35 = *(v0 + 272);
  v36 = (*(v35 + 48))(v33, 1, v34);
  v37 = *(v0 + 320);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);
  if (v36 == 1)
  {
    sub_233121E04(v33, &qword_27DDE19A0, &unk_233290360);

    v40 = sub_23328CE8C();
    *(v0 + 512) = v40;
    *(v0 + 520) = *(v40 - 8);
    v41 = swift_task_alloc();
    *(v0 + 528) = v41;
    sub_23328D5CC();
    v43 = *(v0 + 80);
    v42 = *(v0 + 88);
    *(v0 + 536) = v42;
    v60 = (*(*v37 + 256) + **(*v37 + 256));
    v44 = swift_task_alloc();
    *(v0 + 544) = v44;
    *v44 = v0;
    v44[1] = sub_2332767A4;
    if (v38)
    {
      v45 = v39;
    }

    else
    {
      v45 = 0x53552D6E65;
    }

    if (v38)
    {
      v46 = v38;
    }

    else
    {
      v46 = 0xE500000000000000;
    }

    return v60(v41, v43, v42, v45, v46);
  }

  else
  {
    (*(v35 + 32))(*(v0 + 328), v33, v34);

    v48 = sub_23328CE8C();
    *(v0 + 400) = v48;
    *(v0 + 408) = *(v48 - 8);
    v49 = swift_task_alloc();
    *(v0 + 416) = v49;
    sub_23328D5CC();
    v51 = *(v0 + 112);
    v50 = *(v0 + 120);
    *(v0 + 424) = v50;
    v61 = (*(*v37 + 288) + **(*v37 + 288));
    v52 = swift_task_alloc();
    *(v0 + 432) = v52;
    *v52 = v0;
    v52[1] = sub_233275B84;
    if (v38)
    {
      v53 = v39;
    }

    else
    {
      v53 = 0x53552D6E65;
    }

    if (v38)
    {
      v54 = v38;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    v55 = *(v0 + 328);

    return v61(v49, v51, v50, v53, v54, v55);
  }
}

uint64_t sub_2332754E8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_233275A64;
  }

  else
  {

    v2 = sub_233275620;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233275620()
{
  (*(v0[34] + 56))(v0[42], 0, 1, v0[33]);
  v1 = v0[42];
  v2 = v0[33];
  v3 = v0[34];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[40];
  v7 = v0[38];
  v6 = v0[39];
  if (v4 == 1)
  {
    sub_233121E04(v1, &qword_27DDE19A0, &unk_233290360);

    v8 = sub_23328CE8C();
    v0[64] = v8;
    v0[65] = *(v8 - 8);
    v9 = swift_task_alloc();
    v0[66] = v9;
    sub_23328D5CC();
    v11 = v0[10];
    v10 = v0[11];
    v0[67] = v10;
    v24 = (*(*v5 + 256) + **(*v5 + 256));
    v12 = swift_task_alloc();
    v0[68] = v12;
    *v12 = v0;
    v12[1] = sub_2332767A4;
    if (v6)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0x53552D6E65;
    }

    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    return v24(v9, v11, v10, v13, v14);
  }

  else
  {
    (*(v3 + 32))(v0[41], v1, v2);

    v16 = sub_23328CE8C();
    v0[50] = v16;
    v0[51] = *(v16 - 8);
    v17 = swift_task_alloc();
    v0[52] = v17;
    sub_23328D5CC();
    v19 = v0[14];
    v18 = v0[15];
    v0[53] = v18;
    v25 = (*(*v5 + 288) + **(*v5 + 288));
    v20 = swift_task_alloc();
    v0[54] = v20;
    *v20 = v0;
    v20[1] = sub_233275B84;
    if (v6)
    {
      v21 = v7;
    }

    else
    {
      v21 = 0x53552D6E65;
    }

    if (v6)
    {
      v22 = v6;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = v0[41];

    return v25(v17, v19, v18, v21, v22, v23);
  }
}

uint64_t sub_233275A64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233275B84()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_233276ECC;
  }

  else
  {
    v2 = sub_233275CDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233275CDC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_233121E04(*(v0 + 248), &qword_27DDE3AD0, &unk_2332A2070);
    sub_23328D54C();
    if (*(v0 + 154) == 1)
    {
      v27 = *(v0 + 320);
      v5 = *(v0 + 192);
      v4 = *(v0 + 200);
      v6 = *(v0 + 176);
      v7 = *(v0 + 184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
      sub_23328D3DC();
      sub_233283AF0();
      sub_23327A100(v4, _s19TrainingOptionGroupVMa);
      v29 = sub_233248BBC();
      sub_23328D3DC();
      v8 = sub_233283B38();
      sub_23327A100(v5, _s19TrainingOptionGroupVMa);
      sub_23328D3DC();
      v9 = sub_233283BAC();
      sub_23327A100(v7, _s19TrainingOptionGroupVMa);
      sub_23328D3DC();
      v10 = sub_233283C00();
      v12 = v11;
      sub_23327A100(v6, _s19TrainingOptionGroupVMa);
      v28 = (*(*v27 + 360) + **(*v27 + 360));
      v13 = swift_task_alloc();
      *(v0 + 496) = v13;
      *v13 = v0;
      v13[1] = sub_233276560;
      v14 = *(v0 + 416);

      return v28(v14, v29, v8 & 1, v9 & 1, v10, v12 & 1, 0);
    }

    else
    {
      v23 = *(v0 + 408);
      v22 = *(v0 + 416);
      v24 = *(v0 + 400);
      v25 = *(v0 + 272);

      (*(v23 + 8))(v22, v24);
      (*(v25 + 8))(*(v0 + 328), *(v0 + 264));

      v26 = *(v0 + 8);

      return v26();
    }
  }

  else
  {
    v16 = *(v0 + 320);
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
    sub_23328D5CC();
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    *(v0 + 448) = v18;
    v19 = swift_task_alloc();
    *(v0 + 456) = v19;
    MEMORY[0x23839AF80]();
    v30 = (*(*v16 + 280) + **(*v16 + 280));
    v20 = swift_task_alloc();
    *(v0 + 464) = v20;
    *v20 = v0;
    v20[1] = sub_23327625C;
    v21 = *(v0 + 416);

    return v30(v21, v17, v18, v19);
  }
}

uint64_t sub_23327625C()
{
  v2 = *v1;
  v2[59] = v0;

  v3 = v2[57];
  v4 = v2[34];
  v5 = v2[33];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[74] = v6;
    v2[75] = v7;
    (v6)(v3, v5);

    v8 = sub_233276FD8;
  }

  else
  {
    v2[60] = v6;
    v2[61] = v7;
    v6();

    v8 = sub_23327641C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23327641C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  (*(v0 + 480))(*(v0 + 328), *(v0 + 264));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_233276560()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_233277130;
  }

  else
  {
    v2 = sub_233276674;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233276674()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[34];

  (*(v2 + 8))(v1, v3);
  (*(v4 + 8))(v0[41], v0[33]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2332767A4()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_233277258;
  }

  else
  {
    v2 = sub_2332768FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2332768FC()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[30];
    (*(v0[65] + 8))(v0[66], v0[64]);

    sub_233121E04(v4, &qword_27DDE3AD0, &unk_2332A2070);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[40];
    (*(v0[27] + 32))(v0[28], v0[30], v0[26]);
    sub_23328D5CC();
    v8 = v0[12];
    v9 = v0[13];
    v0[70] = v9;
    v10 = swift_task_alloc();
    v0[71] = v10;
    MEMORY[0x23839AF80]();
    v13 = (*(*v7 + 280) + **(*v7 + 280));
    v11 = swift_task_alloc();
    v0[72] = v11;
    *v11 = v0;
    v11[1] = sub_233276C08;
    v12 = v0[66];

    return v13(v12, v8, v9, v10);
  }
}

uint64_t sub_233276C08()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[34] + 8))(v2[71], v2[33]);

  if (v0)
  {
    v3 = sub_233277340;
  }

  else
  {

    v3 = sub_233276DA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233276DA0()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_233276ECC()
{
  v1 = v0[41];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_233276FD8()
{
  v1 = v0[74];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];
  v5 = v0[41];
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];

  (*(v9 + 8))(v7, v8);
  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_233277130()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[41];
  v5 = v0[33];
  v6 = v0[34];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_233277258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233277340()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_233277474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 121) = v12;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD0, &unk_2332A2070);
  *(v9 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23327752C, 0, 0);
}

uint64_t sub_23327752C()
{
  _s18CreateVoiceCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (*(v0 + 120) == 1)
  {
    v1 = sub_233237A1C();
    v2 = *v1;
    *(v0 + 96) = *v1;
    v3 = *(*v2 + 504);

    v18 = v3 + *v3;
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_2332778F4;

    __asm { BRAA            X8, X16 }
  }

  v5 = *(v0 + 88);
  v6 = sub_23328CC9C();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v9 = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  sub_23328D5CC();
  v10 = sub_23328D23C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5, 1, v10);
  v13 = *(v0 + 88);
  v14 = *(v0 + 16);
  if (v12 == 1)
  {
    sub_233121E04(*(v0 + 88), &qword_27DDE3AD0, &unk_2332A2070);

    (*(v7 + 56))(v14, 1, 1, v6);
  }

  else
  {
    MEMORY[0x23839AF80]();
    (*(v11 + 8))(v13, v10);
    v15 = *(v7 + 32);
    v15(v8, v9, v6);

    v15(v14, v8, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2332778F4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_233277AB8;
  }

  else
  {

    v2 = sub_233277A10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233277A10()
{
  v1 = *(v0 + 16);
  v2 = sub_23328CC9C();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_233277AB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233277B24()
{
  v0 = sub_23328D23C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v43 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD0, &unk_2332A2070);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v35 - v8;
  MEMORY[0x28223BE20](v9);
  v37 = &v35 - v10;
  MEMORY[0x28223BE20](v11);
  v39 = &v35 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  VoiceCommandVMa = _s18CreateVoiceCommandVMa(0);
  v20 = *(VoiceCommandVMa + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  v44 = v20;
  v45 = v21;
  sub_23328D5CC();
  v41 = v1;
  v22 = 1;
  v46 = *(v1 + 48);
  LODWORD(v20) = v46(v18, 1, v0);
  sub_233121E04(v18, &qword_27DDE3AD0, &unk_2332A2070);
  if (v20 == 1)
  {
    sub_23328D5CC();
    v22 = v46(v15, 1, v0) != 1;
    sub_233121E04(v15, &qword_27DDE3AD0, &unk_2332A2070);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (v22 && v49 || (v35 = VoiceCommandVMa, sub_23328D54C(), v24 = v0, v25 = v43, v48 == 1) && ((v26 = v39, sub_23328D5CC(), v27 = v46(v26, 1, v0), sub_233121E04(v26, &qword_27DDE3AD0, &unk_2332A2070), v27 == 1) && (sub_23328D54C(), (v47 & 1) == 0) || (v28 = v37, sub_23328D5CC(), v29 = v46(v28, 1, v0), sub_233121E04(v28, &qword_27DDE3AD0, &unk_2332A2070), v29 != 1)))
  {
    sub_23328D4AC();
    sub_23327A558(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  v30 = v40;
  sub_23328D5CC();
  if (v46(v30, 1, v24) == 1)
  {
    sub_233121E04(v30, &qword_27DDE3AD0, &unk_2332A2070);
    v31 = v41;
  }

  else
  {
    v31 = v41;
    (*(v41 + 32))(v25, v30, v24);
    v32 = v42;
    sub_23328D21C();
    if (v32)
    {
      return (*(v31 + 8))(v25, v24);
    }

    (*(v31 + 8))(v25, v24);
  }

  v33 = v38;
  sub_23328D5CC();
  if (v46(v33, 1, v24) == 1)
  {
    return sub_233121E04(v33, &qword_27DDE3AD0, &unk_2332A2070);
  }

  v34 = v36;
  (*(v31 + 32))(v36, v33, v24);
  sub_23328D21C();
  return (*(v31 + 8))(v34, v24);
}

uint64_t sub_2332781F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F43657361726870;
    v6 = 0x6172547472617473;
    if (a1 != 8)
    {
      v6 = 0x676E696E69617274;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7954747069726373;
    if (a1 != 5)
    {
      v7 = 0x44496563696F76;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0x7461446C65646F6DLL;
    v3 = 0x4449656C61636F6CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E696E69617274;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_233278360@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23327AAC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_233278394(uint64_t a1)
{
  v2 = sub_23327A0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332783D0(uint64_t a1)
{
  v2 = sub_23327A0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327840C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_23328D3AC();
  MEMORY[0x28223BE20](v1 - 8);
  v39 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23328D53C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D4DC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - v11;
  sub_23328D3BC();
  v13 = sub_23328D3CC();
  v14 = *(v13 - 8);
  v47 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v47(v12, 0, 1, v13);
  v16 = v15;
  v17 = sub_23328D42C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v21 = v17;
  v45 = v17;
  v19(v9, 1, 1);
  v46 = v19;
  sub_23328D4CC();
  v40 = v5;
  sub_23328D52C();
  sub_23328D5FC();
  VoiceCommandVMa = _s18CreateVoiceCommandVMa(0);
  v38 = *(VoiceCommandVMa + 20);
  sub_23328D3BC();
  v47(v12, 0, 1, v13);
  v42 = v16;
  (v19)(v9, 1, 1, v21);
  v22 = v20;
  sub_23328D4CC();
  sub_23328D52C();
  v37[2] = sub_23328D23C();
  v37[1] = sub_23327A558(&qword_27DDE3508, MEMORY[0x277CE66E8], MEMORY[0x277CE66E0]);
  sub_23328D5DC();
  v23 = VoiceCommandVMa;
  v38 = *(VoiceCommandVMa + 24);
  sub_23328D3BC();
  v24 = v44;
  v25 = v47;
  v47(v12, 0, 1, v44);
  v26 = v45;
  v27 = v46;
  v41 = v22;
  (v46)(v9, 1, 1, v45);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v38 = *(v23 + 28);
  sub_23328D3BC();
  v25(v12, 0, 1, v24);
  v27(v9, 1, 1, v26);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v28 = VoiceCommandVMa;
  sub_23328D3BC();
  v29 = v44;
  v30 = v47;
  v47(v12, 0, 1, v44);
  sub_23328D4CC();
  sub_23328D58C();
  v38 = *(v28 + 36);
  v31 = v28;
  v49 = 0x746C7561666564;
  v50 = 0xE700000000000000;
  sub_23328D3BC();
  v30(v12, 0, 1, v29);
  v32 = v45;
  v33 = v46;
  (v46)(v9, 1, 1, v45);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v38 = *(v31 + 40);
  sub_23328D3BC();
  v34 = v44;
  v35 = v47;
  v47(v12, 0, 1, v44);
  v33(v9, 1, 1, v32);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  sub_23328D3BC();
  v35(v12, 0, 1, v34);
  (v46)(v9, 1, 1, v45);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  sub_23328D3BC();
  v35(v12, 0, 1, v34);
  sub_23328D4CC();
  sub_23328D58C();
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_23327A558(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa, &unk_2332A3638);
  return sub_23328D3EC();
}

uint64_t sub_233278C6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v100 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v99 - v2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v104 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v99 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v103 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v99 - v6;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v114 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v109 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = &v99 - v9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = &v99 - v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v110 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v126 = &v99 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AE8, qword_2332A2090);
  v123 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v135 = &v99 - v16;
  v17 = sub_23328D3AC();
  MEMORY[0x28223BE20](v17 - 8);
  v132 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D53C();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_23328D4DC();
  MEMORY[0x28223BE20](v22 - 8);
  v131 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v99 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v99 - v28;
  v143 = (_s18CreateVoiceCommandVMa(0) - 8);
  MEMORY[0x28223BE20](v143);
  v146 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v141 = sub_23328D3CC();
  v31 = *(v141 - 8);
  v32 = *(v31 + 56);
  v142 = v31 + 56;
  (v32)(v29, 0, 1, v141);
  v139 = v32;
  v140 = sub_23328D42C();
  v33 = *(v140 - 8);
  v34 = *(v33 + 56);
  v35 = v33 + 56;
  v34(v26, 1, 1, v140);
  v136 = v34;
  v137 = v35;
  sub_23328D4CC();
  v138 = v21;
  sub_23328D52C();
  sub_23328D5FC();
  v36 = v143[7];
  sub_23328D3BC();
  v37 = v141;
  (v32)(v29, 0, 1, v141);
  v38 = v140;
  v34(v26, 1, 1, v140);
  sub_23328D4CC();
  sub_23328D52C();
  v129 = sub_23328D23C();
  v128 = sub_23327A558(&qword_27DDE3508, MEMORY[0x277CE66E8], MEMORY[0x277CE66E0]);
  v118 = v36;
  v39 = v26;
  sub_23328D5DC();
  v40 = v143[8];
  v41 = v143;
  sub_23328D3BC();
  (v139)(v29, 0, 1, v37);
  v42 = v26;
  v43 = v136;
  v136(v42, 1, 1, v38);
  sub_23328D4CC();
  sub_23328D52C();
  v115 = v40;
  v44 = v39;
  sub_23328D5DC();
  v45 = v41[9];
  sub_23328D3BC();
  v46 = v139;
  (v139)(v29, 0, 1, v141);
  v130 = v44;
  v43(v44, 1, 1, v140);
  sub_23328D4CC();
  sub_23328D52C();
  v129 = v45;
  sub_23328D5DC();
  v47 = v143;
  v48 = v143[10];
  sub_23328D3BC();
  v49 = v141;
  (v46)(v29, 0, 1, v141);
  sub_23328D4CC();
  v128 = v48;
  sub_23328D58C();
  v50 = v47[11];
  v144 = 0x746C7561666564;
  v145 = 0xE700000000000000;
  sub_23328D3BC();
  (v46)(v29, 0, 1, v49);
  v51 = v130;
  v52 = v140;
  v53 = v136;
  v136(v130, 1, 1, v140);
  sub_23328D4CC();
  sub_23328D52C();
  v108 = v50;
  sub_23328D5EC();
  v54 = v143;
  v55 = v143[12];
  sub_23328D3BC();
  (v139)(v29, 0, 1, v141);
  v53(v51, 1, 1, v52);
  sub_23328D4CC();
  sub_23328D52C();
  v105 = v55;
  sub_23328D5BC();
  v56 = v54[13];
  sub_23328D3BC();
  v57 = v141;
  v58 = v139;
  (v139)(v29, 0, 1, v141);
  v136(v51, 1, 1, v140);
  sub_23328D4CC();
  sub_23328D52C();
  v140 = v56;
  sub_23328D5DC();
  v59 = v143;
  v60 = v143[14];
  sub_23328D3BC();
  v61 = v57;
  v62 = v60;
  (v58)(v29, 0, 1, v61);
  sub_23328D4CC();
  v63 = v146;
  v64 = v134;
  sub_23328D58C();
  v65 = v59[15];
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_23327A558(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa, &unk_2332A3638);
  sub_23328D3EC();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  sub_23327A0AC();
  v66 = v133;
  sub_23328E68C();
  if (v66)
  {
    __swift_destroy_boxed_opaque_existential_0(v64);
    v98 = v63;
  }

  else
  {
    v143 = v65;
    v67 = v122;
    v68 = v125;
    LOBYTE(v144) = 0;
    v69 = sub_23315246C(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70, MEMORY[0x277CEEA68]);
    v70 = v124;
    sub_23328E41C();
    v71 = v70;
    v141 = v62;
    v142 = v69;
    v73 = v68 + 40;
    v72 = *(v68 + 40);
    v74 = v146;
    v72(v146, v126, v71);
    LOBYTE(v144) = 1;
    sub_23315246C(&qword_27DDE3AF0, &qword_27DDE3AC8, &qword_2332A2068, MEMORY[0x277CEEA68]);
    v75 = v121;
    sub_23328E41C();
    v139 = v72;
    v125 = v73;
    v77 = *(v120 + 40);
    v77(&v74[v118], v67, v75);
    LOBYTE(v144) = 2;
    v78 = v119;
    sub_23328E41C();
    v77(&v146[v115], v78, v75);
    LOBYTE(v144) = 3;
    sub_23315246C(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570, MEMORY[0x277CEEA68]);
    v79 = v116;
    v80 = v117;
    sub_23328E41C();
    v82 = v114 + 40;
    v81 = *(v114 + 40);
    v81(&v146[v129], v79, v80);
    LOBYTE(v144) = 4;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v83 = v112;
    v84 = v113;
    sub_23328E41C();
    v138 = v81;
    v114 = v82;
    v85 = *(v111 + 40);
    v85(&v146[v128], v83, v84);
    LOBYTE(v144) = 5;
    v86 = v110;
    v87 = v124;
    sub_23328E41C();
    v139(&v146[v108], v86, v87);
    LOBYTE(v144) = 6;
    v88 = v109;
    sub_23328E41C();
    v89 = v123;
    v138(&v146[v105], v88, v80);
    LOBYTE(v144) = 7;
    sub_23315246C(&qword_27DDE3430, &qword_27DDE3410, &qword_23329DB80, MEMORY[0x277CEEA68]);
    v90 = v106;
    v91 = v107;
    sub_23328E41C();
    v92 = v134;
    (*(v104 + 40))(&v146[v140], v90, v91);
    LOBYTE(v144) = 8;
    v93 = v103;
    v94 = v113;
    sub_23328E41C();
    v95 = v146;
    v85(&v146[v141], v93, v94);
    LOBYTE(v144) = 9;
    sub_23315246C(&qword_27DDE3AF8, &qword_27DDE3AD8, &qword_2332A2080, MEMORY[0x277CEEA38]);
    v96 = v127;
    v97 = v135;
    sub_23328E41C();
    (*(v89 + 8))(v97, v96);
    (*(v99 + 40))(v143 + v95, v101, v102);
    sub_23327A160(v95, v100, _s18CreateVoiceCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v92);
    v98 = v95;
  }

  return sub_23327A100(v98, _s18CreateVoiceCommandVMa);
}

unint64_t sub_23327A0AC()
{
  result = qword_27DE04548[0];
  if (!qword_27DE04548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04548);
  }

  return result;
}

uint64_t sub_23327A100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23327A160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23327A258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233274728();
}

uint64_t sub_23327A32C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327A558(&qword_27DDE3B00, _s18CreateVoiceCommandVMa, &unk_2332A20C8);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23327A450@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE04540 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CB0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327A558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23327A5FC(uint64_t a1)
{
  sub_23327A78C(319, &qword_27DDE3458, MEMORY[0x277D837D0], MEMORY[0x277CEEA60]);
  if (v1 <= 0x3F)
  {
    sub_23322966C(319, &qword_27DDE3B28, &qword_27DDE3AD0, &unk_2332A2070);
    if (v2 <= 0x3F)
    {
      sub_23322966C(319, &qword_27DDE3460, &qword_27DDE1A90, &unk_233290970);
      if (v3 <= 0x3F)
      {
        sub_23327A78C(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
        if (v4 <= 0x3F)
        {
          sub_23322966C(319, &qword_27DDE3468, &qword_27DDE3470, &qword_2332A2200);
          if (v5 <= 0x3F)
          {
            sub_23327A7DC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23327A78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23327A7DC(uint64_t a1)
{
  if (!qword_27DDE3B30)
  {
    _s19TrainingOptionGroupVMa(255);
    sub_23327A558(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa, &unk_2332A3638);
    v1 = sub_23328D3FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE3B30);
    }
  }
}

uint64_t _s18CreateVoiceCommandV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18CreateVoiceCommandV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23327A9C4()
{
  result = qword_27DE04960[0];
  if (!qword_27DE04960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04960);
  }

  return result;
}

unint64_t sub_23327AA1C()
{
  result = qword_27DE04A70;
  if (!qword_27DE04A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE04A70);
  }

  return result;
}

unint64_t sub_23327AA74()
{
  result = qword_27DE04A78;
  if (!qword_27DE04A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE04A78);
  }

  return result;
}

uint64_t sub_23327AAC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEC00000061746144 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446C65646F6DLL && a2 == 0xE900000000000061 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002332AF490 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954747069726373 && a2 == 0xEA00000000006570 || (sub_23328E54C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43657361726870 && a2 == 0xEB00000000746E75 || (sub_23328E54C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6172547472617473 && a2 == 0xED0000676E696E69 || (sub_23328E54C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEF736E6F6974704FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_23327AE24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08CC8);
  __swift_project_value_buffer(v3, qword_27DE08CC8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s23ListTrainingDataCommandVMa(uint64_t a1)
{
  result = qword_27DE04E10;
  if (!qword_27DE04E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23327AFEC()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 24) = *v1;
  v3 = sub_23328CE8C();
  *(v0 + 32) = v3;
  *(v0 + 40) = *(v3 - 8);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  _s23ListTrainingDataCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v5 = *(v0 + 72);
  v8 = (*(*v2 + 248) + **(*v2 + 248));
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_23327B228;

  return v8(v4, v5);
}

uint64_t sub_23327B228()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  if (v0)
  {
    v3 = sub_23327B400;
  }

  else
  {

    v3 = sub_23327B39C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23327B39C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23327B400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23327B470()
{
  if (*v0)
  {
    return 7762787;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23327B498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7762787 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23327B56C(uint64_t a1)
{
  v2 = sub_23327BF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327B5A8(uint64_t a1)
{
  v2 = sub_23327BF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327B5E4()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_23328D42C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  _s23ListTrainingDataCommandVMa(0);
  sub_23328D3BC();
  v9(v7, 0, 1, v8);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_23327B894@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v34 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3B38, qword_2332A2328);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v33 - v4;
  v5 = sub_23328D53C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23328D4DC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = _s23ListTrainingDataCommandVMa(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v17 = sub_23328D3CC();
  v39 = *(*(v17 - 8) + 56);
  (v39)(v12, 0, 1, v17);
  v18 = sub_23328D42C();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v19 = *(v14 + 28);
  sub_23328D3BC();
  (v39)(v12, 0, 1, v17);
  v20 = v41;
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_23327BF00();
  v21 = v40;
  v22 = v42;
  sub_23328E68C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    v32 = v16;
  }

  else
  {
    v42 = v16;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v39 = &v33;
    v24 = *(v23 - 8);
    MEMORY[0x28223BE20](v23);
    v26 = &v33 - v25;
    v44 = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80, MEMORY[0x277CEEA68]);
    v27 = v38;
    sub_23328E41C();
    (*(v24 + 40))(v42, v26, v23);
    v43 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v29 = v35;
    v28 = v36;
    sub_23328E41C();
    (*(v37 + 8))(v21, v27);
    v31 = v42;
    (*(v33 + 40))(&v42[v19], v29, v28);
    sub_23327BFB0(v31, v34);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v32 = v31;
  }

  return sub_23327BF54(v32);
}

unint64_t sub_23327BF00()
{
  result = qword_27DE04B08[0];
  if (!qword_27DE04B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04B08);
  }

  return result;
}

uint64_t sub_23327BF54(uint64_t a1)
{
  v2 = _s23ListTrainingDataCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23327BFB0(uint64_t a1, uint64_t a2)
{
  v4 = _s23ListTrainingDataCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23327C07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23327AFCC();
}

uint64_t sub_23327C13C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327C32C(&qword_27DDE3B40, &unk_2332A2360);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23327C238@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE04B00 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327C32C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s23ListTrainingDataCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23327C3C8()
{
  result = qword_27DE04F20[0];
  if (!qword_27DE04F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE04F20);
  }

  return result;
}

unint64_t sub_23327C420()
{
  result = qword_27DE05030;
  if (!qword_27DE05030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE05030);
  }

  return result;
}

unint64_t sub_23327C478()
{
  result = qword_27DE05038[0];
  if (!qword_27DE05038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE05038);
  }

  return result;
}

uint64_t sub_23327C4CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08CE0);
  __swift_project_value_buffer(v3, qword_27DE08CE0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23327C644()
{
  sub_23328D20C();
  v1 = *(**sub_233237A1C() + 424);

  v1(v2);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_23327C71C()
{
  result = qword_27DDE3B68;
  if (!qword_27DDE3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B68);
  }

  return result;
}

unint64_t sub_23327C774()
{
  result = qword_27DDE3B70;
  if (!qword_27DDE3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B70);
  }

  return result;
}

unint64_t sub_23327C7CC()
{
  result = qword_27DDE3B78;
  if (!qword_27DDE3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B78);
  }

  return result;
}

uint64_t sub_23327C820(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327C71C();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_23327C8D0()
{
  result = qword_27DDE3B80;
  if (!qword_27DDE3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B80);
  }

  return result;
}

uint64_t sub_23327C924@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE050C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CE0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_23327C9E8()
{
  result = qword_27DDE3B88;
  if (!qword_27DDE3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3B88);
  }

  return result;
}

uint64_t sub_23327CA4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08CF8);
  __swift_project_value_buffer(v3, qword_27DE08CF8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23327CBB0()
{
  sub_23328D20C();
  v1 = *sub_233237A1C();
  v2 = sub_23328CE8C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  (*(*v1 + 240))(v4);
  (*(v3 + 8))(v4, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23327CD2C(uint64_t a1)
{
  v2 = sub_23327D268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327CD68(uint64_t a1)
{
  v2 = sub_23327D268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327CDA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3B90, qword_2332A2708);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = sub_23328D53C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23328D4DC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = _s11OpenCommandVMa(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v17 = sub_23328D3CC();
  (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
  v18 = sub_23328D42C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23327D268();
  v19 = v27;
  sub_23328E68C();
  if (!v19)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v27 = &v25;
    v21 = *(v20 - 8);
    MEMORY[0x28223BE20](v20);
    v23 = &v25 - v22;
    sub_233226DD0();
    sub_23328E41C();
    (*(v26 + 8))(v5, v3);
    (*(v21 + 40))(v16, v23, v20);
    sub_23327D318(v16, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23327D2BC(v16);
}

uint64_t _s11OpenCommandVMa(uint64_t a1)
{
  result = qword_27DE056E0;
  if (!qword_27DE056E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23327D268()
{
  result = qword_27DE053D8[0];
  if (!qword_27DE053D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE053D8);
  }

  return result;
}

uint64_t sub_23327D2BC(uint64_t a1)
{
  v2 = _s11OpenCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23327D318(uint64_t a1, uint64_t a2)
{
  v4 = _s11OpenCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23327D418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327D608(&qword_27DDE3B98, &unk_2332A2740);
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23327D514@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE053D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08CF8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327D608(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s11OpenCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23327D64C()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_23328D42C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_23327D8D4()
{
  result = qword_27DE057F0[0];
  if (!qword_27DE057F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE057F0);
  }

  return result;
}

unint64_t sub_23327D92C()
{
  result = qword_27DE05900;
  if (!qword_27DE05900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE05900);
  }

  return result;
}

unint64_t sub_23327D984()
{
  result = qword_27DE05908[0];
  if (!qword_27DE05908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE05908);
  }

  return result;
}

uint64_t sub_23327D9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08D10);
  __swift_project_value_buffer(v3, qword_27DE08D10);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23327DB5C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 376);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B0F0;

  return v6();
}

unint64_t sub_23327DCDC()
{
  result = qword_27DDE3BC0;
  if (!qword_27DDE3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BC0);
  }

  return result;
}

unint64_t sub_23327DD34()
{
  result = qword_27DDE3BC8;
  if (!qword_27DDE3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BC8);
  }

  return result;
}

uint64_t sub_23327DDA4()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 376);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B474;

  return v6();
}

unint64_t sub_23327DF24()
{
  result = qword_27DDE3BD0;
  if (!qword_27DDE3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BD0);
  }

  return result;
}

uint64_t sub_23327DF78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327DCDC();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_23327E028()
{
  result = qword_27DDE3BD8;
  if (!qword_27DDE3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BD8);
  }

  return result;
}

uint64_t sub_23327E07C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE05990 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_23327E140()
{
  result = qword_27DDE3BE0;
  if (!qword_27DDE3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3BE0);
  }

  return result;
}

uint64_t sub_23327E1A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08D28);
  __swift_project_value_buffer(v3, qword_27DE08D28);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23327E2FC@<X0>(_BYTE *a3@<X8>)
{

  v4 = sub_23328E37C();

  if (v4 >= 4)
  {
    sub_23328E24C();

    v24 = MEMORY[0x277D84F90];
    sub_23312676C(0, 4, 0);
    v6 = v24;
    v8 = *(v24 + 16);
    v7 = *(v24 + 24);
    v9 = v8 + 1;
    if (v8 >= v7 >> 1)
    {
      sub_23312676C((v7 > 1), v8 + 1, 1);
      v6 = v24;
    }

    *(v6 + 16) = v9;
    v10 = v6 + 16 * v8;
    *(v10 + 32) = 0x746C7561666564;
    *(v10 + 40) = 0xE700000000000000;
    v11 = *(v6 + 24);
    v12 = v8 + 2;
    if (v9 >= v11 >> 1)
    {
      sub_23312676C((v11 > 1), v12, 1);
    }

    *(v6 + 16) = v12;
    v13 = v6 + 16 * v9;
    *(v13 + 32) = 0x64696F6964726163;
    *(v13 + 40) = 0xE800000000000000;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      sub_23312676C((v14 > 1), v15 + 1, 1);
    }

    *(v6 + 16) = v16;
    v17 = v6 + 16 * v15;
    *(v17 + 32) = 0x6964726163627573;
    *(v17 + 40) = 0xEB0000000064696FLL;
    v18 = *(v6 + 24);
    v19 = v15 + 2;
    if (v16 >= v18 >> 1)
    {
      sub_23312676C((v18 > 1), v19, 1);
    }

    *(v6 + 16) = v19;
    v20 = v6 + 16 * v16;
    *(v20 + 32) = 0x65726964696E6D6FLL;
    *(v20 + 40) = 0xEF6C616E6F697463;
    v21 = MEMORY[0x23839B960](v6, MEMORY[0x277D837D0]);
    v23 = v22;

    MEMORY[0x23839B7E0](v21, v23);

    sub_23328D4AC();
    sub_23327FF08(&qword_27DDE2D30, MEMORY[0x277CEEA40], MEMORY[0x277CEEA48]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  else
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_23327E5FC()
{
  sub_23328D20C();
  v1 = *sub_233237A1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BE8, &qword_2332A2AE0);
  sub_23328D35C();
  v2 = *(v0 + 24);
  if (*(v0 + 24) > 1u)
  {
    v3 = MEMORY[0x277CB8140];
    if (v2 != 2)
    {
      v3 = MEMORY[0x277CB8138];
    }
  }

  else
  {
    if (!*(v0 + 24))
    {
      goto LABEL_7;
    }

    v3 = MEMORY[0x277CB8130];
  }

  v2 = *v3;
  v4 = *v3;
LABEL_7:
  (*(*v1 + 488))(v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23327E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23327E7CC(uint64_t a1)
{
  v2 = sub_23327F9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23327E808(uint64_t a1)
{
  v2 = sub_23327F9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23327E844()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000037, 0x80000002332AF720);
  v28 = MEMORY[0x277D84F90];
  sub_23312676C(0, 4, 0);
  v6 = v28;
  v8 = *(v28 + 16);
  v7 = *(v28 + 24);
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    sub_23312676C((v7 > 1), v8 + 1, 1);
    v6 = v28;
  }

  *(v6 + 16) = v9;
  v10 = v6 + 16 * v8;
  *(v10 + 32) = 0x746C7561666564;
  *(v10 + 40) = 0xE700000000000000;
  v28 = v6;
  v11 = *(v6 + 24);
  v12 = v8 + 2;
  if (v9 >= v11 >> 1)
  {
    sub_23312676C((v11 > 1), v12, 1);
    v6 = v28;
  }

  *(v6 + 16) = v12;
  v13 = v6 + 16 * v9;
  *(v13 + 32) = 0x64696F6964726163;
  *(v13 + 40) = 0xE800000000000000;
  v28 = v6;
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    sub_23312676C((v14 > 1), v15 + 1, 1);
    v6 = v28;
  }

  *(v6 + 16) = v16;
  v17 = v6 + 16 * v15;
  *(v17 + 32) = 0x6964726163627573;
  *(v17 + 40) = 0xEB0000000064696FLL;
  v28 = v6;
  v18 = *(v6 + 24);
  v19 = v15 + 2;
  if (v16 >= v18 >> 1)
  {
    sub_23312676C((v18 > 1), v19, 1);
    v6 = v28;
  }

  *(v6 + 16) = v19;
  v20 = v6 + 16 * v16;
  *(v20 + 32) = 0x65726964696E6D6FLL;
  *(v20 + 40) = 0xEF6C616E6F697463;
  v21 = MEMORY[0x23839B960](v6, MEMORY[0x277D837D0]);
  v23 = v22;

  MEMORY[0x23839B7E0](v21, v23);

  v24 = sub_23328D3CC();
  sub_23327FF08(&qword_27DDE2D20, MEMORY[0x277CEEA28], MEMORY[0x277CEEA30]);
  sub_23328E57C();
  (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
  v25 = sub_23328D42C();
  (*(*(v25 - 8) + 56))(v2, 1, 1, v25);
  return sub_23328D36C();
}

uint64_t sub_23327EC10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BE8, &qword_2332A2AE0);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BF0, qword_2332A2AF0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = _s19PolarPatternCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000037, 0x80000002332AF720);
  v48 = MEMORY[0x277D84F90];
  sub_23312676C(0, 4, 0);
  v16 = v48;
  v18 = *(v48 + 16);
  v17 = *(v48 + 24);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    sub_23312676C((v17 > 1), v18 + 1, 1);
    v16 = v48;
  }

  *(v16 + 16) = v19;
  v20 = v16 + 16 * v18;
  *(v20 + 32) = 0x746C7561666564;
  *(v20 + 40) = 0xE700000000000000;
  v48 = v16;
  v21 = *(v16 + 24);
  v22 = v18 + 2;
  if (v19 >= v21 >> 1)
  {
    sub_23312676C((v21 > 1), v22, 1);
    v16 = v48;
  }

  *(v16 + 16) = v22;
  v23 = v16 + 16 * v19;
  *(v23 + 32) = 0x64696F6964726163;
  *(v23 + 40) = 0xE800000000000000;
  v48 = v16;
  v25 = *(v16 + 16);
  v24 = *(v16 + 24);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    sub_23312676C((v24 > 1), v25 + 1, 1);
    v16 = v48;
  }

  *(v16 + 16) = v26;
  v27 = v16 + 16 * v25;
  *(v27 + 32) = 0x6964726163627573;
  *(v27 + 40) = 0xEB0000000064696FLL;
  v48 = v16;
  v28 = *(v16 + 24);
  v29 = v25 + 2;
  if (v26 >= v28 >> 1)
  {
    sub_23312676C((v28 > 1), v29, 1);
    v16 = v48;
  }

  *(v16 + 16) = v29;
  v30 = v16 + 16 * v26;
  *(v30 + 32) = 0x65726964696E6D6FLL;
  *(v30 + 40) = 0xEF6C616E6F697463;
  v31 = MEMORY[0x23839B960](v16, MEMORY[0x277D837D0]);
  v33 = v32;

  MEMORY[0x23839B7E0](v31, v33);

  v34 = sub_23328D3CC();
  sub_23327FF08(&qword_27DDE2D20, MEMORY[0x277CEEA28], MEMORY[0x277CEEA30]);
  sub_23328E57C();
  (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
  v35 = sub_23328D42C();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_23328D36C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23327F9E4();
  v36 = v45;
  sub_23328E68C();
  if (!v36)
  {
    sub_23315246C(&qword_27DDE3BF8, &qword_27DDE3BE8, &qword_2332A2AE0, MEMORY[0x277CEEA20]);
    v38 = v43;
    v37 = v44;
    sub_23328E41C();
    (*(v42 + 8))(v6, v4);
    (*(v40 + 40))(v15, v38, v37);
    sub_23327FA94(v15, v41);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23327FA38(v15);
}

uint64_t sub_23327F238()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23327E5DC();
}

uint64_t sub_23327F2C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23327FF08(&qword_27DDE3C00, _s19PolarPatternCommandVMa, &unk_2332A2B28);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23327F3A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE05CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D28);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23327F49C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6964726163627573;
    }

    else
    {
      v4 = 0x65726964696E6D6FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xEB0000000064696FLL;
    }

    else
    {
      v5 = 0xEF6C616E6F697463;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64696F6964726163;
    }

    else
    {
      v4 = 0x746C7561666564;
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
  v7 = 0x6964726163627573;
  v8 = 0xEB0000000064696FLL;
  if (a2 != 2)
  {
    v7 = 0x65726964696E6D6FLL;
    v8 = 0xEF6C616E6F697463;
  }

  if (a2)
  {
    v2 = 0x64696F6964726163;
    v6 = 0xE800000000000000;
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
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_23327F608()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23327F6E0(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_23327F7A4(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

unint64_t sub_23327F878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23327F94C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23327F8A8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEB0000000064696FLL;
  v5 = 0x6964726163627573;
  if (*v1 != 2)
  {
    v5 = 0x65726964696E6D6FLL;
    v4 = 0xEF6C616E6F697463;
  }

  if (*v1)
  {
    v3 = 0x64696F6964726163;
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

unint64_t sub_23327F94C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23328E37C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t _s19PolarPatternCommandVMa(uint64_t a1)
{
  result = qword_27DE061B0;
  if (!qword_27DE061B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23327F9E4()
{
  result = qword_27DE05CA8[0];
  if (!qword_27DE05CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE05CA8);
  }

  return result;
}

uint64_t sub_23327FA38(uint64_t a1)
{
  v2 = _s19PolarPatternCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23327FA94(uint64_t a1, uint64_t a2)
{
  v4 = _s19PolarPatternCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23327FC64()
{
  result = qword_27DDE3C28;
  if (!qword_27DDE3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3C28);
  }

  return result;
}

void sub_23327FD24(uint64_t a1)
{
  sub_23327FD90();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23327FD90()
{
  if (!qword_27DDE3C40)
  {
    v0 = sub_23328D38C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3C40);
    }
  }
}

unint64_t sub_23327FE04()
{
  result = qword_27DE062C0[0];
  if (!qword_27DE062C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE062C0);
  }

  return result;
}

unint64_t sub_23327FE5C()
{
  result = qword_27DE063D0;
  if (!qword_27DE063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE063D0);
  }

  return result;
}

unint64_t sub_23327FEB4()
{
  result = qword_27DE063D8[0];
  if (!qword_27DE063D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE063D8);
  }

  return result;
}

uint64_t sub_23327FF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23327FF50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08D40);
  __swift_project_value_buffer(v3, qword_27DE08D40);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t _s25ScriptMetadataPathCommandVMa(uint64_t a1)
{
  result = qword_27DE06770;
  if (!qword_27DE06770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233280118()
{
  sub_23328D20C();
  v1 = sub_23328CC9C();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = sub_233237A1C();
  v4 = *v3;
  v0[10] = *v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v5 = v0[2];
  v6 = v0[3];
  v0[11] = v6;
  _s25ScriptMetadataPathCommandVMa(0);
  sub_23328D5CC();
  v7 = v0[4];
  v8 = v0[5];
  v0[12] = v8;
  v11 = (*(*v4 + 384) + **(*v4 + 384));
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_233280384;

  return v11(v2, v5, v6, v7, v8);
}

uint64_t sub_233280384()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23328057C;
  }

  else
  {

    v2 = sub_2332804B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2332804B4(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  sub_23328D30C();
  sub_23328CC6C();
  sub_23328D27C();

  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_23328057C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233280604(uint64_t a1)
{
  v2 = sub_233280FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233280640(uint64_t a1)
{
  v2 = sub_233280FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23328067C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_23328D53C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23328D4DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v14 = 0x53552D6E65;
  v15 = 0xE500000000000000;
  sub_23328D3BC();
  v9 = sub_23328D3CC();
  v13[0] = *(*(v9 - 8) + 56);
  (v13[0])(v8, 0, 1, v9);
  v10 = sub_23328D42C();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  _s25ScriptMetadataPathCommandVMa(0);
  v14 = 0x746C7561666564;
  v15 = 0xE700000000000000;
  sub_23328D3BC();
  (v13[0])(v8, 0, 1, v9);
  v11(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_2332809A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v34 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C48, qword_2332A2E70);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v34 - v6;
  v7 = sub_23328D53C();
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = _s25ScriptMetadataPathCommandVMa(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0x53552D6E65;
  v49 = 0xE500000000000000;
  sub_23328D3BC();
  v21 = sub_23328D3CC();
  v22 = *(v21 - 8);
  v43 = *(v22 + 56);
  v44 = v22 + 56;
  v43(v16, 0, 1, v21);
  v23 = sub_23328D42C();
  v41 = *(*(v23 - 8) + 56);
  v41(v13, 1, 1, v23);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v24 = *(v18 + 28);
  v48 = 0x746C7561666564;
  v49 = 0xE700000000000000;
  sub_23328D3BC();
  v43(v16, 0, 1, v21);
  v25 = v23;
  v26 = v47;
  v41(v13, 1, 1, v25);
  sub_23328D4CC();
  sub_23328D52C();
  v44 = v24;
  sub_23328D5EC();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_233280FBC();
  v27 = v46;
  v28 = v50;
  sub_23328E68C();
  if (!v28)
  {
    v29 = v40;
    LOBYTE(v48) = 0;
    sub_23326E610();
    v30 = v38;
    v31 = v37;
    sub_23328E41C();
    v32 = *(v29 + 40);
    v40 = v29 + 40;
    v50 = v32;
    v32(v20, v39, v30);
    LOBYTE(v48) = 1;
    sub_23328E41C();
    (*(v36 + 8))(v27, v31);
    v50(&v20[v44], v35, v30);
    sub_23328106C(v20, v34);
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  return sub_233281010(v20);
}

unint64_t sub_233280FBC()
{
  result = qword_27DE06468[0];
  if (!qword_27DE06468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06468);
  }

  return result;
}

uint64_t sub_233281010(uint64_t a1)
{
  v2 = _s25ScriptMetadataPathCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23328106C(uint64_t a1, uint64_t a2)
{
  v4 = _s25ScriptMetadataPathCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233281138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_2332800F8();
}

uint64_t sub_2332811F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_2332813E8(&qword_27DDE3C50, &unk_2332A2EA8);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332812F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06460 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D40);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332813E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s25ScriptMetadataPathCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_233281484()
{
  result = qword_27DE06880[0];
  if (!qword_27DE06880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06880);
  }

  return result;
}

unint64_t sub_2332814DC()
{
  result = qword_27DE06990;
  if (!qword_27DE06990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE06990);
  }

  return result;
}

unint64_t sub_233281534()
{
  result = qword_27DE06998[0];
  if (!qword_27DE06998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06998);
  }

  return result;
}

uint64_t sub_233281588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08D58);
  __swift_project_value_buffer(v3, qword_27DE08D58);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233281704()
{
  sub_23328D20C();
  v1 = *sub_233237A1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C78, &unk_2332A30F0);
  sub_23328D5CC();
  (*(*v1 + 496))(*(v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_233281814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233281898(uint64_t a1)
{
  v2 = sub_233281DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332818D4(uint64_t a1)
{
  v2 = sub_233281DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233281910@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C78, &unk_2332A30F0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C80, qword_2332A3100);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_23328D53C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _s21SetPhraseCountCommandVMa(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v19 = sub_23328D3CC();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  v20 = sub_23328D42C();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233281DBC();
  v21 = v29;
  sub_23328E68C();
  if (!v21)
  {
    v22 = v25;
    v23 = v27;
    sub_233281E6C();
    sub_23328E41C();
    (*(v26 + 8))(v7, v5);
    (*(v22 + 40))(v18, v28, v3);
    sub_233281ED0(v18, v23);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233281E10(v18);
}

uint64_t _s21SetPhraseCountCommandVMa(uint64_t a1)
{
  result = qword_27DE06D30;
  if (!qword_27DE06D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233281DBC()
{
  result = qword_27DE06A28[0];
  if (!qword_27DE06A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06A28);
  }

  return result;
}

uint64_t sub_233281E10(uint64_t a1)
{
  v2 = _s21SetPhraseCountCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_233281E6C()
{
  result = qword_27DDE3C88;
  if (!qword_27DDE3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3C78, &unk_2332A30F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3C88);
  }

  return result;
}

uint64_t sub_233281ED0(uint64_t a1, uint64_t a2)
{
  v4 = _s21SetPhraseCountCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233281FD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_2332821C0(&qword_27DDE3C90, &unk_2332A3138);
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332820CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06A20 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D58);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332821C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s21SetPhraseCountCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233282204()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D4DC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_23328D3BC();
  v8 = sub_23328D3CC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_23328D42C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5FC();
}

void sub_233282470(uint64_t a1)
{
  sub_2332824DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2332824DC()
{
  if (!qword_27DDE3CB8)
  {
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3CB8);
    }
  }
}

unint64_t sub_233282540()
{
  result = qword_27DE06E40[0];
  if (!qword_27DE06E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06E40);
  }

  return result;
}

unint64_t sub_233282598()
{
  result = qword_27DE06F50;
  if (!qword_27DE06F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE06F50);
  }

  return result;
}

unint64_t sub_2332825F0()
{
  result = qword_27DE06F58[0];
  if (!qword_27DE06F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE06F58);
  }

  return result;
}

uint64_t sub_233282648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v74 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE06FE8);
  __swift_project_value_buffer(v3, qword_27DE06FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE38B8, &unk_2332A08A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2332A3380;
  v5 = sub_233270B78();
  *(v4 + 32) = &_s20AnalyzeAccessCommandVN;
  *(v4 + 40) = v5;
  v6 = sub_23327C7CC();
  *(v4 + 48) = &_s23AnalyzeDatastoreCommandVN;
  *(v4 + 56) = v6;
  v7 = _s25CancelTrainingTaskCommandVMa(0);
  v8 = sub_2332837F0(&qword_27DDE3618, _s25CancelTrainingTaskCommandVMa, &unk_23329EDF0);
  *(v4 + 64) = v7;
  *(v4 + 72) = v8;
  v9 = _s16CloudSyncCommandVMa(0);
  v10 = sub_2332837F0(&qword_27DDE34B0, _s16CloudSyncCommandVMa, &unk_23329DE98);
  *(v4 + 80) = v9;
  *(v4 + 88) = v10;
  v11 = sub_2332703BC();
  *(v4 + 96) = &_s20ContainerPathCommandVN;
  *(v4 + 104) = v11;
  VoiceCommandVMa = _s18CreateVoiceCommandVMa(0);
  v13 = sub_2332837F0(&qword_27DDE3B10, _s18CreateVoiceCommandVMa, &unk_2332A2130);
  *(v4 + 112) = VoiceCommandVMa;
  *(v4 + 120) = v13;
  v14 = _s16DeleteAllCommandVMa(0);
  v15 = sub_2332837F0(&qword_27DDE34E8, _s16DeleteAllCommandVMa, &unk_23329E118);
  *(v4 + 128) = v14;
  *(v4 + 136) = v15;
  v16 = _s18DeleteModelCommandVMa(0);
  v17 = sub_2332837F0(&qword_27DDE33E8, _s18DeleteModelCommandVMa, &unk_23329D980);
  *(v4 + 144) = v16;
  *(v4 + 152) = v17;
  v18 = _s18DeleteVoiceCommandVMa(0);
  v19 = sub_2332837F0(&qword_27DDE3810, _s18DeleteVoiceCommandVMa, &unk_23329FF60);
  *(v4 + 160) = v18;
  *(v4 + 168) = v19;
  v20 = _s15DiagnoseCommandVMa(0);
  v21 = sub_2332837F0(&qword_27DDE3850, _s15DiagnoseCommandVMa, &unk_2332A01F8);
  *(v4 + 176) = v20;
  *(v4 + 184) = v21;
  v22 = sub_23327DF24();
  *(v4 + 192) = &_s27DiscardTrainingTasksCommandVN;
  *(v4 + 200) = v22;
  v23 = _s25ExportTrainingDataCommandVMa(0);
  v24 = sub_2332837F0(&qword_27DDE3648, _s25ExportTrainingDataCommandVMa, &unk_23329F078);
  *(v4 + 208) = v23;
  *(v4 + 216) = v24;
  v25 = _s25ExportVoicePackageCommandVMa(0);
  v26 = sub_2332837F0(&qword_27DDE3568, _s25ExportVoicePackageCommandVMa, &unk_23329E630);
  *(v4 + 224) = v25;
  *(v4 + 232) = v26;
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa(0);
  v28 = sub_2332837F0(&qword_27DDE3440, _s27GenerateTrainingDataCommandVMa, &unk_23329DC08);
  *(v4 + 240) = TrainingDataCommandVMa;
  *(v4 + 248) = v28;
  v29 = _s18ImportModelCommandVMa(0);
  v30 = sub_2332837F0(&qword_27DDE3A68, _s18ImportModelCommandVMa, &unk_2332A1BD0);
  *(v4 + 256) = v29;
  *(v4 + 264) = v30;
  v31 = _s25ImportTrainingDataCommandVMa(0);
  v32 = sub_2332837F0(&qword_27DDE3530, _s25ImportTrainingDataCommandVMa, &unk_23329E398);
  *(v4 + 272) = v31;
  *(v4 + 280) = v32;
  v33 = _s25ImportVoicePackageCommandVMa(0);
  v34 = sub_2332837F0(&qword_27DDE3AA8, _s25ImportVoicePackageCommandVMa, &unk_2332A1E78);
  *(v4 + 288) = v33;
  *(v4 + 296) = v34;
  v35 = sub_23328379C();
  *(v4 + 304) = &_s31InitializeCloudkitSchemaCommandVN;
  *(v4 + 312) = v35;
  v36 = sub_233266534();
  *(v4 + 320) = &_s18ListASRInfoCommandVN;
  *(v4 + 328) = v36;
  v37 = _s17ListModelsCommandVMa(0);
  v38 = sub_2332837F0(&qword_27DDE3938, _s17ListModelsCommandVMa, &unk_2332A0B60);
  *(v4 + 336) = v37;
  *(v4 + 344) = v38;
  v39 = sub_23326D3E8();
  *(v4 + 352) = &_s26ListInstalledModelsCommandVN;
  *(v4 + 360) = v39;
  v40 = _s23ListTrainingDataCommandVMa(0);
  v41 = sub_2332837F0(&qword_27DDE3B50, _s23ListTrainingDataCommandVMa, &unk_2332A23C8);
  *(v4 + 368) = v40;
  *(v4 + 376) = v41;
  v42 = _s17ListVoicesCommandVMa(0);
  v43 = sub_2332837F0(&qword_27DDE37C8, _s17ListVoicesCommandVMa, &unk_23329FBC8);
  *(v4 + 384) = v42;
  *(v4 + 392) = v43;
  v44 = _s32ListVoicesForSystemSpeechCommandVMa(0);
  v45 = sub_2332837F0(&qword_27DDE1A50, _s32ListVoicesForSystemSpeechCommandVMa, &unk_2332906D8);
  *(v4 + 400) = v44;
  *(v4 + 408) = v45;
  v46 = _s19LongTermLogsCommandVMa(0);
  v47 = sub_2332837F0(&qword_27DDE2770, _s19LongTermLogsCommandVMa, &unk_233298D30);
  *(v4 + 416) = v46;
  *(v4 + 424) = v47;
  v48 = _s11OpenCommandVMa(0);
  v49 = sub_2332837F0(&qword_27DDE3BA8, _s11OpenCommandVMa, &unk_2332A27A8);
  *(v4 + 432) = v48;
  *(v4 + 440) = v49;
  v50 = _s19PolarPatternCommandVMa(0);
  v51 = sub_2332837F0(&qword_27DDE3C10, _s19PolarPatternCommandVMa, &unk_2332A2B90);
  *(v4 + 448) = v50;
  *(v4 + 456) = v51;
  v52 = _s25ScriptMetadataPathCommandVMa(0);
  v53 = sub_2332837F0(&qword_27DDE3C60, _s25ScriptMetadataPathCommandVMa, &unk_2332A2F10);
  *(v4 + 464) = v52;
  *(v4 + 472) = v53;
  v54 = _s21ScriptMetadataCommandVMa(0);
  v55 = sub_2332837F0(&qword_27DDE39B8, _s21ScriptMetadataCommandVMa, &unk_2332A13F0);
  *(v4 + 480) = v54;
  *(v4 + 488) = v55;
  v56 = _s12SpeakCommandVMa(0);
  v57 = sub_2332837F0(&qword_27DDE35B8, _s12SpeakCommandVMa, &unk_23329E8E8);
  *(v4 + 496) = v56;
  *(v4 + 504) = v57;
  v58 = _s22SupplementModelCommandVMa(0);
  v59 = sub_2332837F0(&qword_27DDE2D60, _s22SupplementModelCommandVMa, &unk_23329AC48);
  *(v4 + 512) = v58;
  *(v4 + 520) = v59;
  v60 = _s32SynthesizeAudioForSamplesCommandVMa(0);
  v61 = sub_2332837F0(&qword_27DDE39E8, _s32SynthesizeAudioForSamplesCommandVMa, &unk_2332A1688);
  *(v4 + 528) = v60;
  *(v4 + 536) = v61;
  v62 = _s23SyncModelFuturesCommandVMa(0);
  v63 = sub_2332837F0(&qword_27DDE35E8, _s23SyncModelFuturesCommandVMa, &unk_23329EB60);
  *(v4 + 544) = v62;
  *(v4 + 552) = v63;
  v64 = _s17TrainModelCommandVMa(0);
  v65 = sub_2332837F0(&qword_27DDE3CF8, _s17TrainModelCommandVMa, &unk_2332A3738);
  *(v4 + 560) = v64;
  *(v4 + 568) = v65;
  v66 = sub_23326B618();
  *(v4 + 576) = &_s13RepairCommandVN;
  *(v4 + 584) = v66;
  v67 = _s12ResetCommandVMa(0);
  v68 = sub_2332837F0(&qword_27DDE2700, _s12ResetCommandVMa, &unk_233298900);
  *(v4 + 592) = v67;
  *(v4 + 600) = v68;
  v69 = _s21SetPhraseCountCommandVMa(0);
  v70 = sub_2332837F0(&qword_27DDE3CA0, _s21SetPhraseCountCommandVMa, &unk_2332A31A0);
  *(v4 + 608) = v69;
  *(v4 + 616) = v70;
  v71 = sub_2331BED3C();
  *(v4 + 624) = &_s31SendMockUserNotificationCommandVN;
  *(v4 + 632) = v71;
  v72 = sub_23328D4DC();
  (*(*(v72 - 8) + 56))(v2, 1, 1, v72);
  return sub_23328D50C();
}

uint64_t static VoiceBankingCommand.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static VoiceBankingCommand.configuration.setter(uint64_t a1)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static VoiceBankingCommand.configuration.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v1 = sub_23328D51C();
  __swift_project_value_buffer(v1, qword_27DE06FE8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_233283278@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233283338(uint64_t a1)
{
  if (qword_27DE06FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE06FE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

unint64_t sub_23328342C()
{
  result = qword_27DDE3CC0;
  if (!qword_27DDE3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CC0);
  }

  return result;
}

unint64_t sub_233283484()
{
  result = qword_27DDE3CC8;
  if (!qword_27DDE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CC8);
  }

  return result;
}

uint64_t sub_2332834D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233283748();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821389A8](a1, v4);
}

unint64_t sub_233283588()
{
  result = qword_27DDE3CD0;
  if (!qword_27DDE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CD0);
  }

  return result;
}

uint64_t sub_2332835DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23328342C();
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_23328368C()
{
  result = qword_27DDE3CD8;
  if (!qword_27DDE3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CD8);
  }

  return result;
}

unint64_t sub_2332836E4()
{
  result = qword_27DDE3CE0;
  if (!qword_27DDE3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CE0);
  }

  return result;
}

unint64_t sub_233283748()
{
  result = qword_27DDE3CE8;
  if (!qword_27DDE3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CE8);
  }

  return result;
}

unint64_t sub_23328379C()
{
  result = qword_27DDE3CF0;
  if (!qword_27DDE3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3CF0);
  }

  return result;
}

uint64_t sub_2332837F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233283838@<X0>(char *a2@<X8>)
{
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2332838A8(char *a1)
{
  v2 = sub_23328D47C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v12 = *a1;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000005BLL, 0x80000002332AF910);
  static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()(&v9 + 7);
  v6 = VoiceBankingCommand.Helper.TrainingMode.rawValue.getter();
  MEMORY[0x23839B7E0](v6);

  v7 = sub_23328D3CC();
  sub_233284F84(&qword_27DDE2D20, MEMORY[0x277CEEA28], MEMORY[0x277CEEA30]);
  sub_23328E57C();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  sub_23328D46C();
  sub_233283A9C();
  return sub_23328D57C();
}

unint64_t sub_233283A9C()
{
  result = qword_27DDE3D00;
  if (!qword_27DDE3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D00);
  }

  return result;
}

uint64_t sub_233283AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);

  return sub_23328D54C();
}

uint64_t sub_233283B38()
{
  _s19TrainingOptionGroupVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  return v1;
}

uint64_t sub_233283BAC()
{
  _s19TrainingOptionGroupVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  return v1;
}

uint64_t sub_233283C00()
{
  _s19TrainingOptionGroupVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  return v1;
}

unint64_t sub_233283C58()
{
  result = qword_27DDE3D10;
  if (!qword_27DDE3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D10);
  }

  return result;
}

unint64_t sub_233283CAC()
{
  v1 = 1701080941;
  v2 = 0x696C615670696B73;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_233283D54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_233286DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_233283D88(uint64_t a1)
{
  v2 = sub_233284D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233283DC4(uint64_t a1)
{
  v2 = sub_233284D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233283E00()
{
  v0 = sub_23328D53C();
  MEMORY[0x28223BE20](v0 - 8);
  v19 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v2 - 8);
  v18 = v17 - v3;
  v4 = sub_23328D47C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D4DC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = sub_23328D41C();
  MEMORY[0x28223BE20](v11 - 8);
  static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()(&v21);
  sub_2332838A8(&v21);
  v12 = _s19TrainingOptionGroupVMa(0);
  sub_23328D40C();
  sub_23328D3BC();
  v13 = sub_23328D3CC();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  sub_23328D4CC();
  v17[2] = v6;
  sub_23328D45C();
  sub_23328D59C();
  sub_23328D3BC();
  v14(v10, 0, 1, v13);
  sub_23328D4CC();
  sub_23328D58C();
  v17[1] = *(v12 + 28);
  sub_23328D3BC();
  v14(v10, 0, 1, v13);
  v15 = sub_23328D42C();
  (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v20 = 0;
  v14(v10, 1, 1, v13);
  sub_23328D46C();
  sub_233283C58();
  return sub_23328D57C();
}

uint64_t sub_233284240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v53 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D18, &qword_2332A34F8);
  v52 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v51 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v51 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D20, &qword_2332A3500);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v51 - v9;
  v10 = sub_23328D53C();
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v51 - v13;
  v14 = sub_23328D47C();
  MEMORY[0x28223BE20](v14 - 8);
  v76 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D4DC();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v51 - v18;
  v20 = sub_23328D41C();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = _s19TrainingOptionGroupVMa(0);
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static VoiceBankingCommand.Helper.TrainingMode.bestTrainingModeForDevice()(&v84);
  sub_2332838A8(&v84);
  v25 = v22[7];
  sub_23328D40C();
  sub_23328D3BC();
  v26 = sub_23328D3CC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v75 = (v27 + 56);
  v28(v19, 0, 1, v26);
  sub_23328D4CC();
  sub_23328D45C();
  v60 = v25;
  sub_23328D59C();
  v29 = v22[8];
  sub_23328D3BC();
  v28(v19, 0, 1, v26);
  sub_23328D4CC();
  v64 = v29;
  sub_23328D58C();
  v30 = v22[9];
  sub_23328D3BC();
  v28(v19, 0, 1, v26);
  v31 = sub_23328D42C();
  (*(*(v31 - 8) + 56))(v71, 1, 1, v31);
  sub_23328D4CC();
  sub_23328D52C();
  v54 = v30;
  sub_23328D5DC();
  v32 = v22[10];
  v83 = 0;
  v28(v19, 1, 1, v26);
  sub_23328D46C();
  sub_233283C58();
  sub_23328D57C();
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  sub_233284D84();
  v33 = v74;
  v34 = v73;
  sub_23328E68C();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_0(v77);
    v50 = v24;
  }

  else
  {
    v36 = v64;
    v35 = v65;
    v76 = v32;
    v37 = v66;
    v82 = 0;
    sub_23315246C(&qword_27DDE3D28, &qword_27DDE3D08, &unk_2332A34E8, MEMORY[0x277CEEA58]);
    v38 = v67;
    sub_23328E41C();
    v39 = *(v35 + 40);
    v75 = v24;
    v39(v24, v70, v38);
    v81 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0, MEMORY[0x277CEEA58]);
    v40 = v63;
    sub_23328E41C();
    v41 = *(v61 + 40);
    v41(&v75[v60], v37, v40);
    v80 = 2;
    v42 = v62;
    sub_23328E41C();
    v41(&v75[v36], v42, v40);
    v79 = 3;
    sub_23315246C(&qword_27DDE3430, &qword_27DDE3410, &qword_23329DB80, MEMORY[0x277CEEA68]);
    v44 = v58;
    v43 = v59;
    v45 = v69;
    sub_23328E41C();
    v47 = v75;
    (*(v55 + 40))(&v75[v54], v44, v43);
    v78 = 4;
    sub_23315246C(&qword_27DDE3D30, &qword_27DDE3D18, &qword_2332A34F8, MEMORY[0x277CEEA58]);
    v48 = v56;
    v49 = v57;
    sub_23328E41C();
    (*(v68 + 8))(v34, v45);
    (*(v52 + 40))(&v76[v47], v48, v49);
    sub_2332863C8(v47, v53, _s19TrainingOptionGroupVMa);
    __swift_destroy_boxed_opaque_existential_0(v77);
    v50 = v47;
  }

  return sub_233286368(v50, _s19TrainingOptionGroupVMa);
}

unint64_t sub_233284D84()
{
  result = qword_27DE07308;
  if (!qword_27DE07308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07308);
  }

  return result;
}

uint64_t sub_233284DF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08D70);
  __swift_project_value_buffer(v3, qword_27DE08D70);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233284F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233284FCC()
{
  v1[4] = v0;
  v1[5] = _s19TrainingOptionGroupVMa(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233285090, 0, 0);
}

uint64_t sub_233285090()
{
  v1 = v0;
  sub_23328D20C();
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v14 = *(v1 + 64);
  v16 = *(v1 + 56);
  v18 = *(v1 + 48);
  v4 = sub_233237A1C();
  v5 = *v4;
  *(v1 + 88) = *v4;
  v6 = sub_23328CE8C();
  *(v1 + 96) = v6;
  *(v1 + 104) = *(v6 - 8);
  v7 = swift_task_alloc();
  *(v1 + 112) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v21 = v7;
  sub_23328D5CC();
  _s17TrainModelCommandVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  sub_23328D3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);
  sub_23328D54C();
  sub_233286368(v2, _s19TrainingOptionGroupVMa);
  *(v1 + 26) = *(v1 + 25);
  v20 = sub_233248BBC();
  sub_23328D3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  sub_233286368(v3, _s19TrainingOptionGroupVMa);
  v17 = *(v1 + 27);
  sub_23328D3DC();
  sub_23328D54C();
  sub_233286368(v14, _s19TrainingOptionGroupVMa);
  v15 = *(v1 + 28);
  sub_23328D3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  sub_233286368(v16, _s19TrainingOptionGroupVMa);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_23328D3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D18, &qword_2332A34F8);
  sub_23328D54C();
  sub_233286368(v18, _s19TrainingOptionGroupVMa);
  if (*(v1 + 29))
  {
    v10 = 0x80000002332A7F50;
  }

  else
  {
    v10 = 0xEE0073676E696472;
  }

  if ((*(v1 + 29) & 1) != 0 || v10 != 0xEE0073676E696472)
  {
    v11 = sub_23328E54C();
  }

  else
  {
    v11 = 1;
  }

  v19 = (*(*v5 + 360) + **(*v5 + 360));
  v12 = swift_task_alloc();
  *(v1 + 120) = v12;
  *v12 = v1;
  v12[1] = sub_233285548;

  return v19(v21, v20, v17, v15, v8, v9, v11 & 1);
}

uint64_t sub_233285548()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    (*(v2[13] + 8))(v2[14], v2[12]);

    return MEMORY[0x2822009F8](sub_233285724, 0, 0);
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_233285724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2332857C8()
{
  if (*v0)
  {
    return 0x676E696E69617274;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_233285804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696E69617274 && a2 == 0xEF736E6F6974704FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2332858E0(uint64_t a1)
{
  v2 = sub_233286314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23328591C(uint64_t a1)
{
  v2 = sub_233286314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233285958()
{
  v0 = sub_23328D3AC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23328D53C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23328D4DC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_23328D3BC();
  v9 = sub_23328D3CC();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_23328D42C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  _s17TrainModelCommandVMa(0);
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_233284F84(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa, &unk_2332A3638);
  return sub_23328D3EC();
}

uint64_t sub_233285C48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v34 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D38, &qword_2332A3510);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = sub_23328D3AC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23328D53C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_23328D4DC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v15 = _s17TrainModelCommandVMa(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v19 = sub_23328D3CC();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  v20 = sub_23328D42C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  v21 = v40;
  sub_23328D5FC();
  v22 = *(v16 + 28);
  sub_23328D39C();
  _s19TrainingOptionGroupVMa(0);
  sub_233284F84(&qword_27DDE3AE0, _s19TrainingOptionGroupVMa, &unk_2332A3638);
  sub_23328D3EC();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_233286314();
  v23 = v5;
  v24 = v39;
  sub_23328E68C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v39 = &v33;
    v26 = *(v25 - 8);
    MEMORY[0x28223BE20](v25);
    v28 = &v33 - v27;
    v42 = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80, MEMORY[0x277CEEA68]);
    v29 = v38;
    sub_23328E41C();
    (*(v26 + 40))(v18, v28, v25);
    v41 = 1;
    sub_23315246C(&qword_27DDE3AF8, &qword_27DDE3AD8, &qword_2332A2080, MEMORY[0x277CEEA38]);
    v31 = v35;
    v30 = v36;
    sub_23328E41C();
    (*(v37 + 8))(v23, v29);
    (*(v33 + 40))(&v18[v22], v31, v30);
    sub_2332863C8(v18, v34, _s17TrainModelCommandVMa);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  return sub_233286368(v18, _s17TrainModelCommandVMa);
}

unint64_t sub_233286314()
{
  result = qword_27DE07310[0];
  if (!qword_27DE07310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07310);
  }

  return result;
}

uint64_t sub_233286368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2332863C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_233286430()
{
  result = qword_27DDE3D40;
  if (!qword_27DDE3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D40);
  }

  return result;
}

unint64_t sub_233286488()
{
  result = qword_27DDE3D48;
  if (!qword_27DDE3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D48);
  }

  return result;
}

uint64_t sub_2332865FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233284FCC();
}

uint64_t sub_2332866D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233284F84(&qword_27DDE3D68, _s17TrainModelCommandVMa, &unk_2332A36D0);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_2332867F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE07300 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D70);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

void sub_233286950(uint64_t a1)
{
  sub_233286A98(319, &qword_27DDE3D88, &type metadata for VoiceBankingCommand.Helper.TrainingMode);
  if (v1 <= 0x3F)
  {
    sub_233286A98(319, &qword_27DDE1A68, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_233286A34(319);
      if (v3 <= 0x3F)
      {
        sub_233286A98(319, &qword_27DDE3D90, &_s18TrainingDataSourceON);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_233286A34(uint64_t a1)
{
  if (!qword_27DDE3468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3470, &qword_2332A2200);
    v1 = sub_23328D60C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDE3468);
    }
  }
}

void sub_233286A98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23328D5AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_233286B0C(uint64_t a1)
{
  sub_2331D6598(319);
  if (v1 <= 0x3F)
  {
    sub_23327A7DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_233286BB4()
{
  result = qword_27DE07AC0[0];
  if (!qword_27DE07AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07AC0);
  }

  return result;
}

unint64_t sub_233286C0C()
{
  result = qword_27DE07CD0[0];
  if (!qword_27DE07CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07CD0);
  }

  return result;
}

unint64_t sub_233286C64()
{
  result = qword_27DE07DE0;
  if (!qword_27DE07DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07DE0);
  }

  return result;
}

unint64_t sub_233286CBC()
{
  result = qword_27DE07DE8[0];
  if (!qword_27DE07DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE07DE8);
  }

  return result;
}

unint64_t sub_233286D14()
{
  result = qword_27DE07E70;
  if (!qword_27DE07E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07E70);
  }

  return result;
}

unint64_t sub_233286D6C()
{
  result = qword_27DE07E78;
  if (!qword_27DE07E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE07E78);
  }

  return result;
}

uint64_t sub_233286DC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002332AFAC0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C615670696B73 && a2 == 0xEE006E6F69746164 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332AFAE0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002332AFB00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_233286F88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08D88);
  __swift_project_value_buffer(v3, qword_27DE08D88);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_233287104()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 272);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B0F0;

  return v6();
}

unint64_t sub_233287284()
{
  result = qword_27DDE3D98;
  if (!qword_27DDE3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3D98);
  }

  return result;
}

unint64_t sub_2332872DC()
{
  result = qword_27DDE3DA0;
  if (!qword_27DDE3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3DA0);
  }

  return result;
}

uint64_t sub_23328734C()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 272);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23326B474;

  return v6();
}

uint64_t sub_2332874CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233287284();
  *v3 = v1;
  v3[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v4);
}

unint64_t sub_23328757C()
{
  result = qword_27DDE3DA8;
  if (!qword_27DDE3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3DA8);
  }

  return result;
}

uint64_t sub_2332875D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE07F00 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08D88);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_233287694()
{
  result = qword_27DDE3DB0;
  if (!qword_27DDE3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3DB0);
  }

  return result;
}

uint64_t TTSVBVoice.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for TTSVBVoice(uint64_t a1)
{
  result = qword_280D3AC60;
  if (!qword_280D3AC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBVoice.localeID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBVoice(0) + 24));

  return v1;
}

uint64_t TTSVBVoice.init(name:voiceID:localeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for TTSVBVoice(0);
  v11 = *(v10 + 20);
  v12 = sub_23328CE8C();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t TTSVBVoice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3DB8, &qword_2332A3BC0);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for TTSVBVoice(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233287C2C();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v7;
  v36 = 0;
  v10 = v4;
  *v9 = sub_23328E3CC();
  v9[1] = v12;
  v28 = v12;
  v13 = sub_23328CE8C();
  v29 = &v26;
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 1;
  sub_233288398(&qword_27DDE21D0, MEMORY[0x28220C0D8]);
  sub_23328E41C();
  v27 = v9;
  (*(v30 + 32))(v9 + *(v31 + 20), v15, v13);
  v34 = 2;
  v16 = sub_23328E3AC();
  v18 = v17;
  v19 = v10;
  v20 = v33;
  if (v17)
  {
    v21 = v16;
  }

  else
  {
    v22 = sub_2331222A4();
    v21 = *v22;
    v18 = *(v22 + 1);

    v20 = v33;
  }

  v23 = v32;
  v24 = v27;
  (*(v20 + 8))(v6, v19);
  v25 = (v24 + *(v31 + 24));
  *v25 = v21;
  v25[1] = v18;
  sub_233287C80(v24, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233287CE4(v24);
}

unint64_t sub_233287C2C()
{
  result = qword_27DE08210[0];
  if (!qword_27DE08210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE08210);
  }

  return result;
}

uint64_t sub_233287C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233287CE4(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTSVBVoice.convertToData()()
{
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBVoice(0);
  sub_2332886BC(&qword_27DDE1998, &protocol conformance descriptor for TTSVBVoice);
  v0 = sub_23328C89C();

  return v0;
}

uint64_t TTSVBVoice.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_23328C85C();
  swift_allocObject();
  sub_23328C84C();
  type metadata accessor for TTSVBVoice(0);
  sub_2332886BC(&qword_27DDE1990, &protocol conformance descriptor for TTSVBVoice);
  sub_23328C83C();

  return sub_233121870(a1, a2);
}

uint64_t TTSVBVoice.qualifiedVoiceIdentifier.getter()
{
  v2 = sub_23328D98C();
  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  type metadata accessor for TTSVBVoice(0);
  v0 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v0);

  return v2;
}

uint64_t static TTSVBVoice.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TTSVBVoice(0);
  if ((sub_23328CE5C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_23328E54C();
}

uint64_t sub_233288038()
{
  v1 = 0x44496563696F76;
  if (*v0 != 1)
  {
    v1 = 0x4449656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23328808C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_233288A10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2332880B4(uint64_t a1)
{
  v2 = sub_233287C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332880F0(uint64_t a1)
{
  v2 = sub_233287C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBVoice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3DC0, &qword_2332A3BC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233287C2C();
  sub_23328E69C();
  v8[15] = 0;
  sub_23328E48C();
  if (!v1)
  {
    type metadata accessor for TTSVBVoice(0);
    v8[14] = 1;
    sub_23328CE8C();
    sub_233288398(&qword_27DDE1F80, MEMORY[0x28220C0C0]);
    sub_23328E4DC();
    v8[13] = 2;
    sub_23328E48C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TTSVBVoice.hash(into:)(uint64_t a1)
{
  sub_23328DA3C();
  type metadata accessor for TTSVBVoice(0);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98, MEMORY[0x28220C0C8]);
  sub_23328D8CC();

  return sub_23328DA3C();
}

uint64_t sub_233288398(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TTSVBVoice.hashValue.getter()
{
  sub_23328E61C();
  sub_23328DA3C();
  type metadata accessor for TTSVBVoice(0);
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98, MEMORY[0x28220C0C8]);
  sub_23328D8CC();
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2332884B4(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98, MEMORY[0x28220C0C8]);
  sub_23328D8CC();
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_233288554(uint64_t a1, uint64_t a2)
{
  sub_23328DA3C();
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98, MEMORY[0x28220C0C8]);
  sub_23328D8CC();

  return sub_23328DA3C();
}

uint64_t sub_2332885EC(uint64_t a1, uint64_t a2)
{
  sub_23328E61C();
  sub_23328DA3C();
  sub_23328CE8C();
  sub_233288398(&qword_27DDE1F98, MEMORY[0x28220C0C8]);
  sub_23328D8CC();
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2332886BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSVBVoice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233288728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_23328CE8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23328879C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23328E54C() & 1) == 0 || (sub_23328CE5C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_23328E54C();
}

uint64_t sub_23328887C(uint64_t a1)
{
  result = sub_23328CE8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23328890C()
{
  result = qword_27DE084A0[0];
  if (!qword_27DE084A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE084A0);
  }

  return result;
}

unint64_t sub_233288964()
{
  result = qword_27DE085B0;
  if (!qword_27DE085B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE085B0);
  }

  return result;
}

unint64_t sub_2332889BC()
{
  result = qword_27DE085B8[0];
  if (!qword_27DE085B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE085B8);
  }

  return result;
}

uint64_t sub_233288A10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_233288B2C()
{
  v0 = sub_23328D66C();
  __swift_allocate_value_buffer(v0, qword_27DE08648);
  __swift_project_value_buffer(v0, qword_27DE08648);
  return sub_23328D65C();
}

uint64_t sub_233288BAC()
{
  if (qword_27DE08640 != -1)
  {
    swift_once();
  }

  v0 = sub_23328D66C();

  return __swift_project_value_buffer(v0, qword_27DE08648);
}

uint64_t static TTSVBSignposter.download.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE08640 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D66C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08648);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *TTSVBCommonVoiceSampleMO.trainingValidity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v6 = (*(a2 + 328))();
  v7 = (*(a2 + 352))(a1, a2);
  v8 = (*(a2 + 400))(a1, a2);
  v9 = (*(a2 + 376))(a1, a2);
  v10 = (*(a2 + 424))(a1, a2);

  return static TTSVBVoiceSampleTrainingValidity.evaluate(userScore:spl:splThreshold:snr:snrThreshold:)(v6, a3, v7, v8, v9, v10);
}

uint64_t TTSVBCommonVoiceSampleMO.flags.getter@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = (*(a1 + 448))();

  return TTSVBVoiceSampleFlags.init(rawValue:)(v3, a2);
}

uint64_t sub_233288E34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = TTSVBCommonVoiceSampleMO.flags.getter(*(a1 + a2 - 8), &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_233288E7C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  v7 = *a1;
  return TTSVBCommonVoiceSampleMO.flags.setter(&v7, v5, v4);
}

uint64_t (*TTSVBCommonVoiceSampleMO.flags.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = (*(a3 + 448))(a2, a3);
  TTSVBVoiceSampleFlags.init(rawValue:)(v5, (a1 + 24));
  return sub_233288F40;
}

uint64_t TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328CC9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  TTSVBCommonVoiceSampleMO.url.getter(a1, a2, &v14 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_233121E04(v10, &qword_27DDE19A0, &unk_233290360);
    v11 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v15 = *sub_2331DEBE8();
    v12 = v15;
    v11 = _TTSVBFileManager.fileExists(_:)(v7);

    (*(v5 + 8))(v7, v4);
  }

  return v11 & 1;
}

uint64_t TTSVBCommonVoiceSampleMO.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = sub_23328D6EC();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328CE8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  (*(a2 + 472))(a1, a2, v15);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_233121E04(v17, &qword_27DDE19B0, &qword_233290370);
    v18 = sub_23328CC9C();
    v19 = *(*(v18 - 8) + 56);
    v20 = a3;
  }

  else
  {
    v47 = a3;
    (*(v11 + 32))(v13, v17, v10);
    v21 = (*(a2 + 208))(a1, a2);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v26 = &v9[*(v25 + 48)];
      v27 = &v9[*(v25 + 64)];
      (*(v11 + 16))(v9, v13, v10);
      *v26 = v23;
      *(v26 + 1) = v24;
      v28 = sub_2331C464C();
      v29 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v29;
      swift_storeEnumTagMultiPayload();
      v30 = v29;
      v31 = v47;
      TTSVBPath.url.getter(v47);
      sub_23316B91C(v9);
      (*(v11 + 8))(v13, v10);
      v32 = sub_23328CC9C();
      return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    }

    v34 = sub_233225440();
    v36 = v49;
    v35 = v50;
    v37 = v48;
    (*(v50 + 16))(v49, v34, v48);
    v38 = sub_23328D6CC();
    v39 = sub_23328DE3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315138;
      v42 = sub_23328E70C();
      v44 = sub_23311A8F4(v42, v43, &v51);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_233109000, v38, v39, "'sampleID' property on %s was unexpectedly nil", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23839CFD0](v41, -1, -1);
      MEMORY[0x23839CFD0](v40, -1, -1);

      (*(v50 + 8))(v49, v37);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
    }

    (*(v11 + 8))(v13, v10);
    v45 = v47;
    v18 = sub_23328CC9C();
    v19 = *(*(v18 - 8) + 56);
    v20 = v45;
  }

  return v19(v20, 1, 1, v18);
}

uint64_t TTSVBCommonVoiceSampleMO.displayPhrase.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 160))(a1);
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t TTSVBCommonVoiceSampleMO.immutableSample()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = (*(a2 + 208))();
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v41 - v11;
  TTSVBCommonVoiceSampleMO.url.getter(a1, a2, v41 - v11);
  v13 = (*(a2 + 184))(a1, a2);
  result = (*(a2 + 136))(a1, a2);
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  v16 = v14;
  result = (*(a2 + 160))(a1, a2);
  v53 = v17;
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  result = (*(a2 + 256))(a1, a2);
  v51 = v19;
  v52 = result;
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v49 = v18;
  v50 = v16;
  result = (*(a2 + 40))(a1, a2);
  v48 = result;
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v43 = v15;
  v44 = v12;
  v45 = v8;
  v46 = a3;
  v47 = v9;
  v22 = (*(a2 + 112))(a1, a2);
  v23 = (*(a2 + 232))(a1, a2);
  v24 = (*(a2 + 64))(a1, a2);
  result = (*(a2 + 88))(a1, a2);
  v42 = result;
  if (v25)
  {
    v26 = v25;
    v41[0] = v22;
    v27 = v23;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v41[1] = v41;
    v29 = MEMORY[0x28223BE20](v28 - 8);
    v31 = v41 - v30;
    (*(a2 + 304))(a1, a2, v29);
    v32 = (*(a2 + 280))(a1, a2);
    v34 = v33;
    v35 = (*(a2 + 328))(a1, a2);
    v36 = (*(a2 + 352))(a1, a2);
    v37 = (*(a2 + 376))(a1, a2);
    v38 = (*(a2 + 400))(a1, a2);
    v39 = (*(a2 + 424))(a1, a2);
    v40 = (*(a2 + 448))(a1, a2);
    TTSVBVoiceSampleFlags.init(rawValue:)(v40, v54);
    return TTSVBVoiceSample.init(sampleID:url:recordingDuration:phonemes:phrase:transcript:bookTitle:paragraphIndex:sentenceIndex:estimatedDuration:locale:recordingDate:userPhrase:userScore:spl:snr:splThreshold:snrThreshold:flags:)(v45, v47, v44, v43, v50, v49, v53, v52, v46, v13, v24, v36, v37, v38, v39, v51, v48, v21, v41[0], v27, v42, v26, v31, v32, v34, v35, v54);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t TTSVBCommonVoiceSampleMO.shallowUpdate(fromSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 16))(ObjectType, a2);
  (*(a4 + 24))(v8, a3, a4);
  v9 = (*(a2 + 40))(ObjectType, a2);
  (*(a4 + 48))(v9);
  (*(a2 + 64))(ObjectType, a2);
  (*(a4 + 72))(a3, a4);
  v10 = (*(a2 + 88))(ObjectType, a2);
  (*(a4 + 96))(v10);
  v11 = (*(a2 + 112))(ObjectType, a2);
  (*(a4 + 120))(v11, a3, a4);
  v12 = (*(a2 + 136))(ObjectType, a2);
  (*(a4 + 144))(v12);
  v13 = (*(a2 + 160))(ObjectType, a2);
  (*(a4 + 168))(v13);
  (*(a2 + 184))(ObjectType, a2);
  (*(a4 + 192))(a3, a4);
  v14 = (*(a2 + 208))(ObjectType, a2);
  (*(a4 + 216))(v14);
  v15 = (*(a2 + 232))(ObjectType, a2);
  (*(a4 + 240))(v15, a3, a4);
  v16 = (*(a2 + 256))(ObjectType, a2);
  (*(a4 + 264))(v16);
  v17 = (*(a2 + 280))(ObjectType, a2);
  (*(a4 + 288))(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v25 - v20;
  (*(a2 + 304))(ObjectType, a2, v19);
  (*(a4 + 312))(v21, a3, a4);
  v22 = (*(a2 + 328))(ObjectType, a2);
  (*(a4 + 336))(v22, a3, a4);
  (*(a2 + 352))(ObjectType, a2);
  (*(a4 + 360))(a3, a4);
  (*(a2 + 376))(ObjectType, a2);
  (*(a4 + 384))(a3, a4);
  (*(a2 + 400))(ObjectType, a2);
  (*(a4 + 408))(a3, a4);
  (*(a2 + 424))(ObjectType, a2);
  (*(a4 + 432))(a3, a4);
  v23 = (*(a2 + 448))(ObjectType, a2);
  return (*(a4 + 456))(v23, a3, a4);
}

void TTSVBCommonVoiceSampleMO.trainingScriptItem.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, TextToSpeechVoiceBankingSupport::TTSVBTrainingScriptItem *a3@<X8>)
{
  v6 = (*(a2 + 208))();
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v10 = (*(a2 + 256))(a1, a2);
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  phrase = (*(a2 + 160))(a1, a2);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v37 = (*(a2 + 136))(a1, a2);
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  transcript = v12;
  transcript_8 = v8;
  v35 = a3;
  v36 = v9;
  v18 = (*(a2 + 40))(a1, a2);
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v18;
  v21 = v19;
  v22 = (*(a2 + 112))(a1, a2);
  v23 = (*(a2 + 232))(a1, a2);
  v24 = (*(a2 + 64))(a1, a2);
  v25 = (*(a2 + 88))(a1, a2);
  if (v26)
  {
    locale._countAndFlagsBits = v25;
    locale._object = v26;
    bookTitle._countAndFlagsBits = v20;
    bookTitle._object = v21;
    v27._countAndFlagsBits = transcript_8;
    v27._object = v36;
    v28._countAndFlagsBits = v37;
    v29._countAndFlagsBits = transcript;
    v29._object = v13;
    v30._countAndFlagsBits = phrase;
    v30._object = v15;
    v28._object = v17;
    TTSVBTrainingScriptItem.init(id:transcript:phrase:phonemes:bookTitle:paragraphIndex:sentenceIndex:estimatedDuration:locale:)(v35, v27, v29, v30, v28, bookTitle, v22, v23, v24, locale);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t TTSVBVoiceTrainingStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x656E696665646E55;
    }

    if (a1 == 1)
    {
      return 0x65636F7270657250;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0xD000000000000017;
      case 3:
        return 0xD000000000000013;
      case 4:
        return 0x64656873696E6946;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t TTSVBVoiceTrainingStatus.localizedTitle.getter(uint64_t a1)
{
  v1 = sub_23328D95C();
  v2 = TTSVBSupportLocString(v1);

  v3 = sub_23328D98C();
  return v3;
}

uint64_t sub_23328A9D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSVBVoiceTrainingStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TTSVBCloudVoiceModelMO.findOrFetch(modelID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496C65646F6DLL;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBCloudVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBCloudVoiceModelMO);
  v8 = v7;

  return v8;
}

uint64_t static TTSVBCloudVoiceModelMO.requireModelWithID(_:moc:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_233297630;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2331527DC();
  *(v7 + 32) = 0x44496C65646F6DLL;
  *(v7 + 40) = 0xE700000000000000;
  v8 = sub_23328CE4C();
  *(v7 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v7 + 104) = sub_233152824();
  *(v7 + 72) = v8;
  v9 = sub_23328DDCC();
  v10 = type metadata accessor for TTSVBCloudVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v9, v10, &protocol witness table for TTSVBCloudVoiceModelMO);
  v12 = v11;

  if (!v12)
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 3;
    v13 = sub_23328CE8C();
    (*(*(v13 - 8) + 16))(v6, a1, v13);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for TTSVBError(0);
    sub_23328ADC8(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v17, v6, 0, v14);
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_23328ADC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_23328AE10()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_23328AEC0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_233121D34(a1, &v11 - v5, &qword_27DDE19B0, &qword_233290370);
  v7 = *a2;
  v8 = sub_23328CE8C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_23328CE4C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setModelID_];
}

void sub_23328B024(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_233121D34(a1, &v15 - v9, &qword_27DDE1A18, &unk_233297730);
  v11 = *a2;
  v12 = sub_23328CE1C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_23328CD9C();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_23328B160()
{
  v1 = [v0 files];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 allObjects];

    v4 = sub_23328DBFC();
    v5 = sub_23328B204(v4);

    if (v5)
    {
      return v5;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23328B204(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23328E2DC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v5);
    type metadata accessor for TTSVBCloudVoiceModelFileMO();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_23328B2F0(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    goto LABEL_5;
  }

  v11 = [v2 voice];
  if (v11)
  {
    v10 = v11;
LABEL_5:
    v12 = a1;
    v13 = [v10 name];
    if (v13)
    {
      v14 = v13;
      v15 = sub_23328D98C();
      v17 = v16;

      v18 = [v10 voiceID];
      v19 = sub_23328CE8C();
      v20 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v18)
      {
        sub_23328CE6C();

        v23 = type metadata accessor for TTSVBCloudVoiceModelMO();
        v25 = sub_23328ADC8(&qword_27DDE2358, v24, type metadata accessor for TTSVBCloudVoiceModelMO, &protocol conformance descriptor for TTSVBCloudVoiceModelMO);
        TTSVBCommonVoiceModelMO.immutableModel(voiceName:voiceID:)(v15, v17, v23, v25, a2);

        (*(v20 + 8))(v22, v19);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v26 = sub_233225440();
  (*(v6 + 16))(v9, v26, v5);
  v27 = sub_23328D6CC();
  v28 = sub_23328DE3C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_233109000, v27, v28, "Cannot return immutableModel. no related voice was found.", v29, 2u);
    MEMORY[0x23839CFD0](v29, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v30 = type metadata accessor for TTSVBVoiceModel(0);
  (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
}

id TTSVBCloudVoiceModelMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBCloudVoiceModelMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBCloudVoiceModelMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBCloudVoiceModelMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBCloudVoiceModelMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23328B77C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSVBCloudVoiceModelMO();
  result = sub_23328E25C();
  *a2 = result;
  return result;
}

uint64_t (*sub_23328B7F4(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23328B864(v2);
  return sub_233154AEC;
}

void (*sub_23328B864(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 creationDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_23328B9C4;
}

uint64_t (*sub_23328B9D0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FE88(v2);
  return sub_233153B3C;
}

uint64_t (*sub_23328BA40(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FFA4(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328BAB0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332200C0(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328BB20(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332201DC(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328BBC8(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23328BC38(v2);
  return sub_233154AEC;
}

void (*sub_23328BC38(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 modelID];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CE6C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE8C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE19B0, &qword_233290370);
  return sub_23328BD98;
}

void sub_23328BD98(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v3, v5, &qword_27DDE19B0, &qword_233290370);
    v6 = sub_23328CE8C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CE4C();
      (*(v7 + 8))(v5, v6);
      v3 = *(a1 + 16);
    }

    v9 = *(a1 + 24);
    [*a1 setModelID_];

    free(v9);
    sub_233121E04(v3, &qword_27DDE19B0, &qword_233290370);
    free(v3);
  }

  else
  {
    v10 = sub_23328CE8C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_23328CE4C();
      (*(v11 + 8))(v3, v10);
      v3 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    [*a1 setModelID_];

    free(v13);

    free(v3);
  }
}

uint64_t (*sub_23328C024(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23328C094(v2);
  return sub_233154AEC;
}

void (*sub_23328C094(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 trainingFinishedDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_23328C1F4;
}

void sub_23328C200(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v5, v7, &qword_27DDE1A18, &unk_233297730);
    v8 = sub_23328CE1C();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v10 = sub_23328CD9C();
      (*(v9 + 8))(v7, v8);
      v5 = *(a1 + 16);
    }

    v11 = *(a1 + 24);
    [*a1 *a3];

    free(v11);
    sub_233121E04(v5, &qword_27DDE1A18, &unk_233297730);
    free(v5);
  }

  else
  {
    v12 = sub_23328CE1C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_23328CD9C();
      (*(v13 + 8))(v5, v12);
      v5 = *(a1 + 16);
    }

    v15 = *(a1 + 24);
    [*a1 *a3];

    free(v15);

    free(v5);
  }
}

uint64_t (*sub_23328C450(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233220F44(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328C4C0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233221190(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23328C530(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332212AC(v2);
  return sub_233154AEC;
}

uint64_t sub_23328C5A0(uint64_t a1, uint64_t a2)
{
  result = sub_23328ADC8(&qword_27DDE2A38, a2, type metadata accessor for TTSVBCloudVoiceModelMO, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}